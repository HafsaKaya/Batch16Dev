account a = new account();
a.name = 'acc trigger 06';
insert a;




  list<account> listAcc = new list<account>();

        for (Integer i = 0; i < 5; i++) {
            account ac = new account();
            ac.Name = 'test trigger' + i;
           

            listAcc.add(ac);
        }

        insert listAcc;

        