public class AccountTriggerHandler {
    public static void updateAccDescription(List<account> accTriggerNew, List<account> accTriggerOld,
             Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldmap
    ) {
         for (Account newAcc : accTriggerNew) {
             //boolean flag to maintain if we want to update description field
             boolean updaAccFields = false;
             //check insert
             if (Trigger.isInsert && newAcc.active__c == 'Yes') {
                 //update description field
                 //set new field value
                 //newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
                 updaAccFields = true;
             }
 
             //check if update
             if(Trigger.isUpdate){
                 //if active field is changed, and active field new value is 'yes'
                     //old acc active field != new acc active field AND new acc active field == yes
                 if(newAcc.Active__c != accTriggerOldMap.get(newAcc.id).Active__c
                 && newAcc.Active__c == 'Yes'){
                     //newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
                     updaAccFields = true;
                 }
             }
 
             if(updaAccFields){
                 newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
                 // newAcc.Rating = 'Warm';
                 // newAcc.AnnualRevenue = 600000;
                 // newAcc.BillingCountry = 'USA';
                 // newAcc.CustomerPriority__c = 'High';
             }
 
         }
    }
 
     public static void updateVIPContacts(List<account> accTriggerNew, List<account> accTriggerOld,
             Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldmap
    ) {
         
         set<id> accIds = new set<id>();
         for (account newAcc : accTriggerNew) {
             
             if (newAcc.vip__c != accTriggerOldMap.get(newAcc.id).vip__c) {
                 accIds.add(newAcc.Id);
             }
         }
         if(!accIds.isEmpty()){
             
             list<contact> listContacts = [select id, name, vip__c, accountid from contact where accountid in :accIds and leadsource != 'Partner Referral'];
 
            
             for (contact eachContact : listcontacts) {
               
                 id accId = eachContact.accountid; 
                 account newAccount = accTriggerNewMap.get(accId);
 
                 eachContact.vip__c = newAccount.vip__c;
             }
             update listContacts;
         }
    }

    public static void validateAccDelete(list<account> accTriggerOld) {
        for (account oldAcc : accTriggerOld) {
            if (oldAcc.active__c  == 'Yes') {
                oldAcc.addError('Cannot delete active account.');
            }
        }
   }

    public static void sendAccEmail(List<Account> accTriggerNew){
        list<Messaging.SingleEmailMessage> listEmailMsg = new list<Messaging.SingleEmailMessage>();
        for (Account newAcc : accTriggerNew) {
            list<string> emailAddresses = new list<string> ();
            emailAddresses.add(UserInfo.getUserEmail());

            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            //to address
            msg.setToAddresses(emailAddresses);
            //subject
            msg.setSubject('Account Restored Succesfully: ' + newAcc.name);
            //body
            msg.setPlainTextBody('Hello, account succesfully UNDELETED!');

            listEmailMsg.add(msg);
        }
        Messaging.sendEmail(listEmailMsg);

   }
}