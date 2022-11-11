package model;

/**
 *
 * @author elll
 */
public class OrderLine {

    private int orderID;
    private String bookID;
    private int orderQuantity;

    public OrderLine() {
    }

    public OrderLine(int orderID, String bookID, int orderQuantity) {
        this.orderID = orderID;
        this.bookID = bookID;
        this.orderQuantity = orderQuantity;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getBookID() {
        return bookID;
    }

    public void setBookID(String bookID) {
        this.bookID = bookID;
    }

    public int getOrderQuantity() {
        return orderQuantity;
    }

    public void setOrderQuantity(int orderQuantity) {
        this.orderQuantity = orderQuantity;
    }


    
}
