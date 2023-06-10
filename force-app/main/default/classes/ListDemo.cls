public class ListDemo {
    public static void candidateList(){
         List<string> listC = new list<string>();
         system.debug('before : ' + listC);
 
         //add values or elements or items in list
         listC.add('Marc');  //0
         listC.add('Steve'); //1
         listC.add('Kunal'); //2
         listC.add('Marc');  //3
         listC.add('Marc');  //4
         system.debug('after : ' + listC);
    }
 
    //requirement: pass index number, it will return value at that index.
    public static string candidateList(integer i) {
         List<string> listC = new list<string>();
         system.debug('before : ' + listC);
 
         //add values or elements or items in list
         listC.add('Marc');  //0
         listC.add('Steve'); //1
         listC.add('Kunal'); //2
         listC.add('Marc');  //3
         listC.add('Marc');  //4
         system.debug('after : ' + listC);

         boolean check = listC.ontains(str);
         return check;
 
         string returnValue = '';
         integer size = listC.size(); //5, max index => 4
         if(i >= 0 && i < size){
             returnValue = listC.get(i);
         } else {
             returnValue = 'No such value';
         }
         return returnValue;
    }
 
    public static void randomIntList(){
         list<integer> l1 = new list<integer>();
         l1.add(77);//0
         l1.add(15);//1
         l1.add(21);//2
         l1.add(99);//3
         l1.add(77);//4
         l1.add(77);//5
         system.debug('list of integer ' + l1);
 
       
         integer i3 = l1.get(3);
         
         integer i33 = l1[3]; 
         system.debug('i3 is ' + i3);
         system.debug('i33 is ' + i33);
 
 
         integer size = l1.size();
         system.debug('SIZE of l1 is ' + size);
    }
 }