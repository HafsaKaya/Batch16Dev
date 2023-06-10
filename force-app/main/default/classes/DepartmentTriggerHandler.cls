public class DepartmentTriggerHandler {
    @future
    public static void createDefaultEmpFuture(set<id> depIds) {
        List<employee__c> newEmployees = new List<employee__c>();

        for (Id eachId : depIds) {
            employee__c e = new employee__c(First_Name__c = 'Shapshik', Department__c = eachId);
            newEmployees.add(e);
        }
        insert newEmployees;
    }
}