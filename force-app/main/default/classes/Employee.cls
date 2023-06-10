public class Employee {
    private string name;
    private decimal salary;

    public void details(){
        system.debug(name);
        system.debug(salary);
    }
    //set method
    public void setName(string name){
        this.name = name;
    }
    //get method
    public string getName(){
        return this.name;
    }

    //set method name for salary vairable
    public void setSalary(Decimal s){
        this.salary = s;
    }
    public decimal getSalary(){
        return this.salary;
    }
}