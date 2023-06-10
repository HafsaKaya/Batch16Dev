public class SetDemo {
    public static void citySet(){
        set<string>cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('LISBON');

        system.debug('Set of cities ' + cities);
    }

    public static void randomIntegerSet(){
        Set<integer> intSet = new Set<integer>();
        intSet.add(15);
        intSet.add(21);
        intSet.add(10);
        intSet.add(15);
        intSet.add(15);
        intSet.add(10);
     
        system.debug('int set ==> ' + intSet);
    }

    public static void setFormList(){
        list<integer>l1 = new list<integer>{10,15,77,55,99,10,77,55};
        system.debug('l1 ==> ' +l1);

        set<integer>s1 = new set<integer>();
        s1.addAll(l1);
        system.debug('s1 ==> ' +s1);
    }
    
    public static set<integer>setFromList(list<integer> l1){
        system.debug('l1 from parameter => ' + l1);
        set<integer>s1 = new set<integer>();
        s1.addAll(l1);
        return s1;
    }
}