trigger CaseTrigger on Case (before insert) {
    System.debug('Before insert case trigger');
    CaseTriggerHandler.countRecords += Trigger.size;
    System.debug(' number of records' + CaseTriggerHandler.countRecords);
}