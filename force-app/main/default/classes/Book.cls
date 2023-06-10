public class Book {
    string title;
    string author;
    decimal price;

    
    public Book(string title, string author, decimal price) {
        
        this.title = title;
        this.author = author;
        this.price = price;
    }
    public void printDetails(){
        system.debug('book name is ' + this.title);
        system.debug('author name is ' + this.author);
        system.debug('price is ' + this.price);
    }
 
    public string getTitle(){
        return this.title;
    }
    public void setTitle(string title){
        this.title = title;
    }

    public string getAuthor(){
        return this.author;//this is valid.
    }
    public void setAuthor(string author){
        this.author = author;
    }

    public decimal getPrice(){
        return this.price;
    }

    public void setPrice(decimal price){
        this.price = price;
    }
}