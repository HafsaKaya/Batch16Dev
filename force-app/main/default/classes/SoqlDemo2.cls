public class SoqlDemo2 {
    public static void projectSOQL1(){
        list<salesforce_project__c> sp = [select id, name, project_name__c, status__c from salesforce_project__c where status__c = 'New'];

        for (Salesforce_project__c eachSP : sp ){
            system.debug('project name is ' + eachSp.project_name__c + ' , its status is ' + eachSP.status__c);
        }
    }


    public static void projectSOQL1(string status){
        list<salesforce_project__c> sp = [select id, name, project_name__c, status__c from salesforce_project__c where status__c = : status];

        for (Salesforce_project__c eachSP : sp ){
            system.debug('project name is ' + eachSp.project_name__c + ' , its status is ' + eachSP.status__c);
        }
    }


    public static void childToParentSOQL1() {
        list<Opportunity> listOPP = [select id, name, amount, closedate, account.annualrevenue, account.name from opportunity];

        for (Opportunity eachOpp : listOPP) {
            system.debug('opp name and amount is ' + eachOpp.Name + ' - ' + eachOpp.Amount);
            system.debug('acc name and its revenue is ' + eachOpp.account.Name + ' - ' + eachOpp.Account.AnnualRevenue);
            system.debug('-----');
        }
    }
}