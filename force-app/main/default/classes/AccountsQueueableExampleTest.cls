@isTest 
public class AccountsQueueableExampleTest {
    @isTest 
    private static void testQueueable1(){
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 10; i++) {
            Account acc = new Account(Name = 'Test Account ' + i);
            accounts.add(acc);
        }
        insert accounts;

        Test.startTest();
        AccountsQueueableExample aq = new AccountsQueueableExample();
        aq.listAcc = accounts;
        system.enqueueJob(aq);
        Test.stopTest();

        list<account> lisstAcc = [select id, name from account where name like '% --SI%'];
        assert.areEqual(500, lisstAcc.size());
    }

}