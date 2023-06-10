@isTest
public class SoqlDemo3Test {
    @TestSetup
    static void makeData(){
        // List<Integer> listInt = new List<Integer>{1,5,9,50};
        list<account> listAcc = new list<account>{
            new account(name = 'May', phone = '3456789889', Industry = 'Energy'),
            new account (name = 'June'),
            new account(name = 'Sunday', Industry = 'Energy')
        };
        insert listAcc;

        list<contact> listContacts = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact(LastName = 'test con ' + i);
            if (i < 100) {
                c.AccountId = listAcc[0].id;
            }else if(i < 200){
                c.AccountId = listAcc[1].id;
            }else{
                c.AccountId = listAcc[2].id;
            }
            listContacts.add(c);
        }
        insert listContacts;
    }

    @isTest 
    public static void testSOQL1(){
        SoqlDemo3.childToParentQuery();
        // List<Account> allAcc = [select id, name, industry from account];
        // for (account a : allAcc) {
        //     a.Industry = 'Finance';
        // }
        // update allAcc;
    
    }

    @isTest 
    private static void testSOQL2(){
        List<Account> allAcc = [select id, name, industry from account];

        List<Opportunity> listOpp = new List<Opportunity>();
        Opportunity opp = new Opportunity(name = 'Test Opp', CloseDate = date.today(), StageName = 'New', Amount = 5000);
        listOpp.add(opp);
        Opportunity opp1 = new Opportunity(name = 'Test Opp 2', CloseDate = date.today(), StageName = 'New', Amount = 10000);
        listOpp.add(opp1);
        insert listOpp;
        SoqlDemo3.childToParentSOQL1();
    }
}