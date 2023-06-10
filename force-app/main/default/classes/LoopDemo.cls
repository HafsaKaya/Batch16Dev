public class LoopDemo {
    public void print1(){
        integer i =1;
        while (i<=10){
            system.debug(1);
            i++;
        }
    }

    public void print_int_while(){
        integer i =1;
        while (i <= 25){
            system.debug(i);
            i++;
        }
    } 

    public void printHello(){
         for(integer i = 0; i < 10; i++){
            system.debug('Hello');
         }
    }

    public void print_N_numbers(integer n){
        for (Integer i = 1; i <= n; i++) {
            system.debug(i);
        }
    }

    public void print_N_numbers2(integer n){
        string printN = '';
        for (Integer i = 1; i <= n; i++) {
            string temp = i + ',';
            printN += temp;
            system.debug('inside for printN ==>' + printN);
        }
        system.debug(printN);
    }

    public void printOddNumbers(integer startInt, integer endInt){
        for (Integer i = startInt; i < endInt; i++) {
            integer remainder = math.mod(i, 2);
            if (remainder == 1){
                system.debug(i);
            }
        }
    }
}