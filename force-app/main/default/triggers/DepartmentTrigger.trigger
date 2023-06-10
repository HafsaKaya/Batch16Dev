trigger DepartmentTrigger on Department__c (before insert) {
    if (Trigger.isAfter && Trigger.isInsert) {
        DepartmentTriggerHandler.createDefaultEmpFuture(Trigger.newMap.keyset());
        
    }

}