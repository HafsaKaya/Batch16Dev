DatetimeMethodsDemo d1 = new DatetimeMethodsDemo();
d1.printOfferEndDatetime();
d1.printSubscriptionEndDate();
d1.calculateAgeInDays();
d1.calculateAgeInMonths();

datetime birtDate= datetime.newInstance(1995, 2, 1);
long longBirthDate = birtDate.getTime();
system.debug('long birth date ==> ' +longBirthDate);