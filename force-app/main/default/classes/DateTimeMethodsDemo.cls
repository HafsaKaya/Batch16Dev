public class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        system.debug('We will calculate our age in months');
        date todayDate = date.today();
        date HafsaBirthDate = date.newInstance(1995, 2, 1);

        integer HafsaAgeInMonths = HafsaBirthDate.monthsBetween(todayDate);
        system.debug('hafsa\'s age in months ' + HafsaAgeInMonths);
    }

    public void calculateAgeInDays(){
        date todayDate = date.today();
        date HafsaBirthDate = date.newInstance(1995, 2, 1);

        integer HafsaAgeInDays = HafsaBirthDate.daysBetween(todayDate);
        system.debug('hafsa\'s age in days ' + HafsaAgeInDays);
    }

    public void printSubscriptionEndDate(){
        date startDate1 =date.today();
        date endDate1 = startDate1.addDays(1000);
        system.debug('Subscription ends on ' + endDate1);

        date endDate2 = date.today();
        date startDate2 = endDate2.addDays(-1000);
        system.debug('Subscription start date2 is ' + startDate2);

        integer startYear = startDate2.year();
        system.debug('start year of subscription was ' + startYear);

        integer startMonth = startDate2.month();
        system.debug('start month of subscription was ' + startMonth);
    }

    public void printOfferEndDatetime(){
        datetime offerStartDT = datetime.now();
        datetime offerEndDT = offerStartDT.addHours(51);
        system.debug('Offer end datetime is ' +offerEndDT);
    }
}