package model;

/**
 *
 * @author elll
 */
public class Quantity {
    private String bookID;
    private int sold;
    private int stock;

    public Quantity() {
    }

    public Quantity(String bookID, int sold, int stock) {
        this.bookID = bookID;
        this.sold = sold;
        this.stock = stock;
    }

    public String getBookID() {
        return bookID;
    }

    public void setBookID(String bookID) {
        this.bookID = bookID;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    
    
}
