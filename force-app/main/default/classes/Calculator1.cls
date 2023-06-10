public class Calculator1 {
    public decimal dynamicCalulationMethod(decimal a, decimal b, string operation){
        //decimal x;
        if (operation == 'division'){
            return a/b;
        } else if  (operation == 'subtraction'){
            return a-b;
        }else if (operation == 'addition'){
            return a+b;
        }else if (operation == 'multiplication'){
            return a*b;
        } else {
            return null;
        }

        //system.debug(x);     
    }
    public decimal calculateDiscount (decimal totalPrice){
        decimal Discount;
        if (totalPrice >= 1000){
            Discount = 0.25;
        }else if (totalPrice < 1000 && totalPrice >= 800){
            Discount = 0.15;
        }else if(totalPrice < 800 && totalPrice >= 500 ){
            Discount = 0.10;
        }else if (totalPrice < 500 && totalPrice >= 100){
            Discount = 0.05;
        }else {
            system.debug('No Discount');
        }
        system.debug(Discount);
        return Discount;
    }
    public decimal calculateNetPrice (integer quantity, decimal rate){
        decimal TotalPrice = quantitiy*rate;
        decimal discPrice = TotalPrice*discPrice;
        system.debug(TotalPrice);
        system.debug(discPrice);
        
    }



}
