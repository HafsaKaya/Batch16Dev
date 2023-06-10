public class StringAssignment {
    public void Assignment (){
        string Localstring = 'Thanks for the session on the string';

        integer l1 = Localstring.length();
        system.debug(l1);

        string l2 = Localstring.toUpperCase();
        system.debug(l2);

        boolean l3 = Localstring.contains('session');
        system.debug('session is present in localstring? ' + l3);

        boolean l4 = Localstring.contains('sessions');
        system.debug('sessions is present in localstring? ' + l4);

        boolean l5 = Localstring.contains('SESSION');
        system.debug('SESSION is present in localstring? ' + l5);

        integer l6 = Localstring.indexOf('for');
        system.debug(l6);

        integer l7 = Localstring.indexOf('an');
        system.debug(l7);

        string l8 = Localstring.remove('the');
        system.debug(l8);



    }

    }
