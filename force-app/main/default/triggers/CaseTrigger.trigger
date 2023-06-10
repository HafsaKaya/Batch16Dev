trigger CaseTrigger on Case (before insert) {
    system.debug('Before insert case trigger');

    CaseTriggerHandler.countRecords += Trigger.size;
    system.debug('number of records processed: ' + CaseTriggerHandler.countRecords);
    
}