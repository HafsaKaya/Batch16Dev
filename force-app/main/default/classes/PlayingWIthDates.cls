public class PlayingWIthDates {
    public void printDateOutput(){
        date TodayDate = date.today();
        date dateOne = date.newInstance(2789, 11, 5);
        system.debug(dateOne);
        date dateTwo =date.newInstance(1459, 3, 4);
        system.debug(dateTwo);
        integer dayInt = 15;
        integer monthInt = 8;
        integer yearInt = 2004;

        date newdate = date.newInstance(yearInt, monthInt, dayInt);
        system.debug(newdate);
    }
    /*public string getMonthName(date dt){
        integer monthName = dt.month();
        string myMonth;
        switch on monthName{
            when 1 {
              myMonth = 'Jan';
            }
            when 2 {
                myMonth = 'Feb';

            }
            when 3 {
                myMonth = 'March';

            }
            when 4 {
                myMonth = 'April';

            }
            when 5 {
              
                myMonth = 'May';
            }
            when 6 {
                myMonth = 'June';

            }
            when 7 {
                myMonth = 'July';

            }
            when 8 {
                myMonth = 'August';

            }
            when 9 {
                myMonth = 'Sep';

            }
            when 10 {
                myMonth = 'Oct';

            }
            when 11 {
                myMonth = 'Nov';

            }

            when else {
                myMonth = 'Dec';
            }
        }
        system.debug(myMonth);
        return myMonth;
    }*/

    public string getMonthName2(date dt){
        integer monthNumber = dt.month();
        string myMonth;
        if (monthNumber == 1){
            myMonth = 'Jan';
        }else if (monthNumber == 2){
            myMonth = 'Feb';
        }else {
            myMonth = 'Dec';
        }
        system.debug(myMonth);
        return myMonth;
    }
}