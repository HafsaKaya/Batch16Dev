list<case> listCase = new list<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new Case(Subject = 'There is a bug ' + i, Origin = 'Web ' , Status = 'New ' , Description = 'Resolve it.');
    listCase.add(c);
}
insert listCase;