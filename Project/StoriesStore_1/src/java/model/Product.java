package model;

/**
 *
 * @author elll
 */
public class Product {
    private int productID;
    private String bookID;
    private String cententBook;

    public Product() {
    }

    public Product(int productID, String bookID, String cententBook) {
        this.productID = productID;
        this.bookID = bookID;
        this.cententBook = cententBook;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getBookID() {
        return bookID;
    }

    public void setBookID(String bookID) {
        this.bookID = bookID;
    }

    public String getCententBook() {
        return cententBook;
    }

    public void setCententBook(String cententBook) {
        this.cententBook = cententBook;
    }
    
    
}
