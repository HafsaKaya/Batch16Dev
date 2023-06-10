public class SoqlDemo {
    public static void accountSOQL1() {
        list<account> listAcc = [select id, name, phone from account];
        system.debug('listAcc: ' + listAcc);

        list<contact> listCon = [select id, name, phone from contact];
        system.debug('listCon: ' + listCon);
    }
    public static void accountSOQLOneRecord(){
        account acc = [select id, name, phone, createddate from account order by createddate desc limit 1];
        system.debug('Acc Record ' + acc);

        string accountName = acc.Name;
        system.debug('acc name is ' + acc.Name);
        system.debug('phone is ' + acc.Phone);
        system.debug('ID is ' + acc.Id);
    }

    public static void accountSOQL_3(){
        list<account> listAcc = [select id, name, accountnumber, phone from account order by createddate desc];

        for (account eachAcc : listAcc){
            system.debug('Each Account ' + eachAcc);
            system.debug('Acc name is ' + eachacc.Name);
            system.debug('Acc phone is ' + eachacc.phone);
            system.debug('Acc number is ' + eachacc.accountnumber);
            system.debug('--------' );
        }
    }
}