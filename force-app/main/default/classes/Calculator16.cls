public class Calculator16{

    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }

    public void add(decimal a, decimal b){
        system.debug(a+b);
    }

    public integer add(integer x, integer y, integer z){
        return (x+y+z);

        
    }
    public boolean leapYearCheck(date dt){
        integer yr = dt.year();
        
        boolean isLeap = date.isLeapYear(yr);
        return isLeap;
    }
}