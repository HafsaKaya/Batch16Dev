List<account> listAcc = new list<account>{
    new account(name = 'May', phone = '7775556666', Industry = 'Energy'), //good guy
    new account(name = 'June', Active__c = 'Yes'), //good guy
    new account(name = 'Sunday', Industry = 'Energy', Active__c = 'Yes'), //good guy
    new account() //bad guy
};

Database.insert(listAcc, false); //this will insert good ones, and NOT INSERT bad ones - NOT THROW any error.s
