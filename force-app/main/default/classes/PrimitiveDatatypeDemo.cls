public class PrimitiveDatatypeDemo {
    

    //access modifier -->public
    //return type --> void
    //method name --> print1
    public void print1(){
        string batchName = 'Batch 16';
        integer totalCandidates = 45;
        boolean isAdminCompleted = true;

        string batchDescription = batchName + ' has ' +totalCandidates + ' candidates. Admin completed: ' + isAdminCompleted;
        system.debug(batchDescription);
    }

    public void print2(){
        Decimal d1 = 88987.65445;
        system.debug('decimal d1 ==> ' + d1);

        long l1 = 987654321L;
        system.debug('long l1 ==> ' + l1);

        id accId = '001Dp0000045jfKIAQ';//valid sf id???
        system.debug('acc id is ' + accId);

        double dd1 = 884.54;
        system.debug('double ==> ' + dd1 );

        //we use object when we integrate salesforce with external system.
        object obj1 = 'anything';
        object obj2 = 99; 
        object obj3 = 8794.55;
        object obj4 = l1;
        object obj5 = accid;
        object obj6 = dd1;
        system.debug(obj1);
        system.debug(obj2);
        system.debug(obj3);
        system.debug(obj4);
        system.debug(obj5);
        system.debug(obj6);
    }


    }
