public class DecimalDemoClass {
    public void practice1(){
        decimal myMoney = 554.89456123;

        decimal myMoney2 = myMoney.setScale(2);
        system.debug('myMoney 2 --> ' + myMoney);

        string myMoney2Str = myMoney2.toPlainString();
        system.debug(myMoney2Str);

        decimal myMoney3 = decimal.valueOf(myMoney2Str);
        system.debug(myMoney3);

    }

    }