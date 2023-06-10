public class MethodsDemo2 {
    //return type + parameterized methods
    public string returnMessage(string name){
        system.debug('code reached inside method');
        string returnStr = 'Hi ' + name + ', nice to meet you';
        return returnStr;
    }
   
    public integer returnMessage2(string name){
        string printStr = 'Hi ' + name + ', nice to meet you';
        system.debug(printStr);
        integer l = printStr.length();
        return l;
    }

    public boolean nameContainsA(string name){
        boolean checkA = name.containsIgnoreCase('a');
        return checkA;
    }
}