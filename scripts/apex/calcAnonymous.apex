Calculator calc = new Calculator();
integer sum1 = calc.add(879, 645);
system.debug('Sum1 is ' + sum1);

integer sum2 = calc.add(5,15,55);
system.debug('sum2 is ' + sum2);

calc.add(10.10, 15.15);

Calculator calc = new Calculator();
date bd = date.newInstance(1990, 10, 9);
boolean lp = calc.leapYearCheck(bd);
system.debug('birthdate in leap year? ' + lp);