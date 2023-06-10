map<string, integer>map2 = new map<string, integer>();
map2.put('one', 101);
map2.put('two', 202);
map2.put('three', 303);

set<string>allKeys = map2.keySet();

integer i1 = map2.get('one');
integer i2 = map2.get('two');

for(string eachKey: allKeys){
    system.debug('each key is ' + eachKey);

    integer eachValue = map2.get(eachKey);
    system.debug('each value is ' + eachValue);
    system.debug('----');


for (string eKey: allKeys){
    system.debug('key is ' + eKey);
    integer i = map2.get(eKey);
    system.debug('value is ' + i);
}
}