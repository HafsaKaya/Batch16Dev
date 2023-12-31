public class StringMethodsDemo {
    public void stringMethod1(){
        string sd = 'learning string method in apex language.';
        integer lenghtOfStr = sd.length();
        system.debug ('length of string is ' + lenghtOfStr);

        boolean checkApex = sd.contains('apex');
        system.debug ('string contains apex? ' + checkApex);

        string temp = 'apex';
        boolean checkApex2 = sd.contains(temp); //yes
        system.debug('string contains apex?  ' + checkApex2);

        boolean checkApex3 = sd.CONTAINS('Apex');
        system.debug('string contains Apex?  ' + checkApex3); //false

        //containsIgnoreCase
        boolean checkApex4 = sd.containsIgnoreCase('APEX');
        system.debug('string containsIgnoreCase ApEX?  ' + checkApex4); //true


        string sdUP = sd.toUpperCase(); //it returns a string by converting to uppercase
        system.debug(sdUP);
        system.debug('original string: ' + sd);//original is unchanged
    }

public void stringMethod2(){
    //trim
    string username = '   hafsa k  ';
        system.debug('oringial length ==> ' + username.length());//
        string usernameTrim = username.trim();
        system.debug(usernameTrim);
        system.debug('after trim length ==> ' + usernameTrim.length());//
    }

public void stringMethod3(){
     string username = 'hafsa k';
     string username2 = 'hafsa';

    //check if username and username2 are equal or not
    //we will use equals method -> case sensitive
    boolean check = username.equals(username2);
    system.debug('username and username2 are equal? ' + check);

    string username3 = 'Hafsa K';
    boolean check2 = username.equals(username3);
    system.debug('username and username3 are equal? ' + check2);

    boolean check3 = username.equalsIgnoreCase(username3);
    system.debug('username and username3 are equalIgnoreCase? ' + check3);
}

public void stringMethod4(){
    string s = 'Salesforce';
    //length -> 10
    //inddex -> count like computer, start from 0
    //S -> 0
    //a -> 1
    //l -> 2
    //e -> 3
    integer indexOfo = s.indexOf ('o');
    system.debug(indexOfo);

    integer indexOfS = s.indexOf('S');//0

    integer indexOfe = s.indexOf('e');//3

    integer indexOfz = s.indexOf('z');//-1

    string str = 'My name is Bond. James Bond';
    integer indexOfBond = str.indexOf('Bond');
    system.debug('index of Bond ' + indexOfBond);

    integer indexOfbond2 = str.indexOf('bond');
    system.debug('indx of bond ' + indexOfbond2);
}
public void stringMethod5(){
    string s1 = 'Welcome to Softinnovas bootcamp. Ready to learn?';
    
    string s2 = s1.remove('to');
    system.debug('s2 is ' + s2);
    system.debug('s1 is ' + s1);
    
    string s3 = s1.removeEnd('earn?');//it will remove the substring FROM END if it exisits.
    system.debug('s3 is ' + s3);
}


}



