public class DmlDemo2 {
    //Create one employee for latest created department
    public static void employeeDepartment() {
        //write SOQL to fetch latest created department (only 1)
        department__c d =[select id, name__c, createddate from department__c order by createddate desc limit 1];

        //create employee for d

        //create new instance for employee
        Employee__c emp1 = new Employee__c();
        //set field names
        emp1.First_Name__c = 'Don';
        emp1.Last_Name__c = 'Carolina';
        //set date
        emp1.JoinDate__c = date.newInstance(2023, 03, 01);
        //emp1.isHuman__c = true;
        emp1.Salary__c = 500000;
        emp1.Country__c = 'Mexico';
        //relationship field
        //emp1.Department__c = 'a02Dp000001dk2zIAA';
        emp1.Department__c = d.Id;

        insert emp1;

    }

    //strictly DON'T DO THIS.
    public static void dmlInsertDemo1() {
        account ac = new account();
        ac.Name = 'test acc 1';
        insert ac;

        account ac1 = new account();
        ac1.Name = 'test acc 2';
        insert ac1;

    }
     //strictly DON'T DO THIS.
    public static void dmlInsertDemo2() {
        account ac = new account();
        ac.Name = 'test acc 3';
        insert ac;

        account ac1 = new account();
        ac1.Name = 'test acc 4';
        insert ac1;

    }

     public static void dmlInsertDemoWrong() {

        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            //DO NOT WRITE DML inside LOOPS. EVER. NOT Allowed. 
            insert ac;
        }

        
    }

    //DO this at home, office, cafe, park, car
    public static void dmlInsertDemoRight1() {

        list<account> listAcc = new list<account>();

        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            //DO NOT WRITE DML inside LOOPS. EVER. NOT Allowed. 
            //insert ac;

            listAcc.add(ac);
        }

        insert listAcc;//155 record. Number of dmls? 1.
        
    }


    //how NOT to update all the accounts in the org.
    public static void dmlUpdateWrong(){
        list<account> allAccounts = [select id, name from account];
        for (account eachAcc : allaccounts){
            eachAcc.name = eachAcc.name + ' v5';
            update eachAcc;
        }
    
    }

    public static void dmlBulkUpdateRight1(){
        list<account> allAccounts = [select id, name from account where createddate = TODAY];
        for(account eachAcc : allAccounts){
            eachAcc.Rating = 'Hot';
        }
        update allAccounts;
    }
}