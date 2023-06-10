public class SetDemo2 {
   public static void setToUpperCase(){
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

        set<string>citiesUP = new set<string>();

        for (string eachCity : cities) {
            string temp = eachCity.toUpperCase();
            citiesUP.add(temp);
            citiesUP.add(eachCity.toUpperCase());
        }
        system.debug('uppercase cities => ' + citiesUP);
   }

   public static void setInteger2(){
    set<integer>setInt = new set<integer>{1,4,5,6,7,8,9,10};
    for (integer i : setInt) {
        system.debug(i +5);
    }
   }
}