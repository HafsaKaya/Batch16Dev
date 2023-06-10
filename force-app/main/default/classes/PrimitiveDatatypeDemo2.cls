public class PrimitiveDatatypeDemo2 {
    public void printNewDate(){
        system.debug('create new date instance');

        date newDate = date.newInstance(1992, 6, 3);
        system.debug('newDate is ' + newDate);

        date newDate2 = date.newInstance(2023, 1, 15);
        system.debug('newDate2 is ' + newDate2);

        date todayDate = date.today();
        system.debug('today\'s date is ' + todayDate);
    }


    public void printNewTime(){
        //newinstance(hour, minute, second, millisecond)
        time myTime1 = time.newInstance(10, 15, 20, 500);
        system.debug('mytime1 ' + myTime1);

        time myTime2 = time.newInstance(25, 80, 30, 100);
        system.debug('myTime 2 ==> ' + myTime2);
    }

    public void printNewDateTime(){
        date newDate = date.newInstance(1992, 6, 3);
        time myTime1 = time.newInstance(10, 15, 20, 500);

        Datetime dt1 = datetime.newInstance(newDate, myTime1);
        system.debug(dt1);

        datetime dt2 = Datetime.newInstance(2020, 5, 12);
        system.debug('dt2 is ' + dt2);

        datetime dt3 = Datetime.newInstance(2005, 1, 18, 8, 30, 55);
        system.debug('dt3 ' + dt3);

        datetime dt6 = Datetime.now();
        system.debug('current datetime : ' + dt6);

        datetime dt4 = datetime.newInstance(0);
        system.debug('dt4 id ' + dt4);

        long longtime = 9198784512113l;
        datetime dt44 = datetime.newInstance(longtime);
        system.debug('dt44 is ' + dt44);

        datetime dt5 = datetime.newInstanceGmt(2023, 4, 1, 10, 15, 30);
        system.debug('dt5 is ' + dt5);  
    }
}
