public class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsite (list<id> accIds){
        list<Account> listAcc = [select id, website from account where id in :accIds];

        for (Account eachAcc : listAcc) {
            eachAcc.website = 'www.softinnovasBatch16.com';
        }
        update listAcc;
    }
}