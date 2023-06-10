trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {

    if (Trigger.isBefore && Trigger.isUpdate){
        ContactTriggerHandler.validate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.validate2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }




// if (Trigger.isBefore){
//     system.debug('Contact Before Trigger');

//     if (Trigger.isInsert){
//         system.debug('Contact before insert trigger');
//     }
//     if (Trigger.isUpdate){
//         system.debug('Contact before update trigger');
//     }

//     if (Trigger.isAfter){
//     system.debug('Contact After Trigger');

//     if (Trigger.isInsert){
//         system.debug('Contact after insert trigger');
//     }
//     if (Trigger.isUpdate){
//         system.debug('Contact after update trigger');
//     }
//     }

//     }
}