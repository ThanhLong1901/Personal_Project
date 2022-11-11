package model;

/**
 *
 * @author elll
 */
public class Book {
    private String bookID;
    private String bookName;
    private String bookImage;
    private double bookPrice;
    private String bookAuthor;
    private String bookPublisher;
    private int bookTypes;
    private Types types;
    private String bookStore;
    private String bookEvaluate;
    private Quantity q;
    private Product p;
    private Order o;
    private OrderLine ol;

    
    public Book() {
    }

//    Book
    public Book(String bookID, String bookName, String bookImage, double bookPrice, String bookAuthor, String bookPublisher, int bookTypes, String bookStore, String bookEvaluate) {
        this.bookID = bookID;
        this.bookName = bookName;
        this.bookImage = bookImage;
        this.bookPrice = bookPrice;
        this.bookAuthor = bookAuthor;
        this.bookPublisher = bookPublisher;
        this.bookTypes = bookTypes;
        this.bookStore = bookStore;
        this.bookEvaluate = bookEvaluate;
    }
    
//    Book + Types
    public Book(String bookID, String bookName, String bookImage, double bookPrice, String bookAuthor, String bookPublisher, Types types, String bookStore, String bookEvaluate) {
        this.bookID = bookID;
        this.bookName = bookName;
        this.bookImage = bookImage;
        this.bookPrice = bookPrice;
        this.bookAuthor = bookAuthor;
        this.bookPublisher = bookPublisher;
        this.types = types;
        this.bookStore = bookStore;
        this.bookEvaluate = bookEvaluate;
    }
    
////    Book + Types + Quantity
    public Book(String bookID, String bookName, String bookImage, double bookPrice, String bookAuthor, String bookPublisher, Types types, String bookStore, String bookEvaluate, Quantity q) {
        this.bookID = bookID;
        this.bookName = bookName;
        this.bookImage = bookImage;
        this.bookPrice = bookPrice;
        this.bookAuthor = bookAuthor;
        this.bookPublisher = bookPublisher;
        this.types = types;
        this.bookStore = bookStore;
        this.bookEvaluate = bookEvaluate;
        this.q = q;
    }
    
//    Book + Types + Product + Quantity
    public Book(String bookID, String bookName, String bookImage, double bookPrice, String bookAuthor, String bookPublisher, Types types, String bookStore, String bookEvaluate, Quantity q, Product p) {
        this.bookID = bookID;
        this.bookName = bookName;
        this.bookImage = bookImage;
        this.bookPrice = bookPrice;
        this.bookAuthor = bookAuthor;
        this.bookPublisher = bookPublisher;
        this.types = types;
        this.bookStore = bookStore;
        this.bookEvaluate = bookEvaluate;
        this.q = q;
        this.p = p;
    }
//    Book + Quantity + Orders + OrdersLine

    public Book(String bookID, String bookName, String bookImage, double bookPrice, String bookAuthor, String bookPublisher, int bookTypes, String bookStore, String bookEvaluate, Quantity q, Order o, OrderLine ol) {
        this.bookID = bookID;
        this.bookName = bookName;
        this.bookImage = bookImage;
        this.bookPrice = bookPrice;
        this.bookAuthor = bookAuthor;
        this.bookPublisher = bookPublisher;
        this.bookTypes = bookTypes;
        this.bookStore = bookStore;
        this.bookEvaluate = bookEvaluate;
        this.q = q;
        this.o = o;
        this.ol = ol;
    }



    
    public String getBookID() {
        return bookID;
    }

    public void setBookID(String bookID) {
        this.bookID = bookID;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookImage() {
        return bookImage;
    }

    public void setBookImage(String bookImage) {
        this.bookImage = bookImage;
    }

    public double getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(double bookPrice) {
        this.bookPrice = bookPrice;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public String getBookPublisher() {
        return bookPublisher;
    }

    public void setBookPublisher(String bookPublisher) {
        this.bookPublisher = bookPublisher;
    }

    public int getBookTypes() {
        return bookTypes;
    }

    public void setBookTypes(int bookTypes) {
        this.bookTypes = bookTypes;
    }

    public String getBookStore() {
        return bookStore;
    }

    public void setBookStore(String bookStore) {
        this.bookStore = bookStore;
    }

    public String getBookEvaluate() {
        return bookEvaluate;
    }

    public void setBookEvaluate(String bookEvaluate) {
        this.bookEvaluate = bookEvaluate;
    }

    public Types getTypes() {
        return types;
    }

    public void setTypes(Types types) {
        this.types = types;
    }

    public Quantity getQ() {
        return q;
    }

    public void setQ(Quantity q) {
        this.q = q;
    }

    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }

    public Order getO() {
        return o;
    }

    public void setO(Order o) {
        this.o = o;
    }

    public OrderLine getOl() {
        return ol;
    }

    public void setOl(OrderLine ol) {
        this.ol = ol;
    }
    
    
}
