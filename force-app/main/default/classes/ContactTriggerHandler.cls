public class ContactTriggerHandler {
   public static void validate1(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap) {
        //validate.
        //if leadsource is ALREADY partner referral, then DON't ALLOW user to update record.

        //addError method to add validation or throw error in trigger.
            //we can use addError method in ONE record of trigger.new or trigger.newMap
            //we cannot use addError method on trigger.old or trigger.oldMap
        
        for (Contact newContact : cTriggerNew) {
            //if old leadsource is partner referral.
            Contact oldContact = cTriggerOldMap.get(newContact.Id);
            if (oldContact.leadsource == 'Partner Referral') {
                newContact.addError('Cannot update contact if lead source is partner referral');
            }

        }
   }

    public static void validate2(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap) {
        for (contact newContact : cTriggerNew) {
            Contact oldContact = cTriggerOldMap.get(newContact.Id);
            if (newContact.LeadSource != cTriggerOldMap.get(newContact.id).LeadSource) {
                newContact.LeadSource.addError('Cannot update lead source!');
            }
        }

    }
}