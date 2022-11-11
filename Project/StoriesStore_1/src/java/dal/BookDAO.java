package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Book;
import model.Order;
import model.OrderLine;
import model.Product;
import model.Quantity;
import model.Types;

/**
 *
 * @author elll
 */
public class BookDAO extends DBContext {

    private PreparedStatement st;
    private ResultSet rs;

//    ===============Gọi tất cả sản phẩm=============== DesignProductServlet
    public List<Book> getAllBook() {
        String sql = "select * from Book";
        List<Book> list = new ArrayList<>();
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Book book = new Book();
                book.setBookID(rs.getString("Book_ID"));
                book.setBookName(rs.getString("Book_Name"));
                book.setBookImage(rs.getString("Book_Image"));
                book.setBookPrice(rs.getDouble("Book_Price"));
                book.setBookAuthor(rs.getString("Book_Author"));
                book.setBookPublisher(rs.getString("Book_Publisher"));
                book.setBookTypes(rs.getInt("Book_Types"));
                book.setBookStore(rs.getString("Book_Store"));
                book.setBookEvaluate(rs.getString("Book_Evaluate"));
                list.add(book);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

//    ===============Gọi tất cả Types=============== TabServlet
    public List<Types> getAllTypes() {
        List<Types> list = new ArrayList<>();
        String sql = "select * from [Types]";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Types(rs.getInt("Types_ID"), rs.getString("Types_Name")));
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    ===============Gọi tất cả sản phẩm theo Types=============== TabServlet
    public List<Book> getBookByTypes(int Types_ID) {
        List<Book> list = new ArrayList<>();
        String sql = "select b.Book_ID, b.Book_Name, b.Book_Image, b.Book_Price,"
                + " b.Book_Author, b.Book_Publisher, b.Book_Store, b.Book_Evaluate,"
                + " t.Types_ID as Types_ID, t.Types_Name as Book_Types from Book b"
                + " inner join [Types] t on b.Book_Types = t.Types_ID";
        if (Types_ID != 0) {
            sql += " where Types_ID = " + Types_ID;
        }
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                Book s = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"));
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    ===============Gọi tất cả sản phẩm khi join Book vs Types=============== HomeServlet
    public List<Book> getBookByBookID() {
        List<Book> list = new ArrayList<>();
        String sql = "select b.Book_ID, b.Book_Name, b.Book_Image, b.Book_Price,"
                + " b.Book_Author, b.Book_Publisher, b.Book_Store, b.Book_Evaluate,"
                + " t.Types_ID as Types_ID, t.Types_Name as Book_Types from Book b"
                + " inner join [Types] t on b.Book_Types = t.Types_ID";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                Book s = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"));
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//===============Gọi Số Lượng Sách Đã Bán Của Mỗi Loại Truyện===============    HomeServlet
    public List<Book> getAllTypesQuantity() {
        List<Book> list = new ArrayList<>();
        String sql = "select * from Book b inner join Quantity q on"
                + " b.Book_ID = q.Book_ID inner join [Types] t"
                + " on b.Book_Types = t.Types_ID";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Quantity q = new Quantity(rs.getString("Book_ID"), rs.getInt("Quantity_Sold"), rs.getInt("Quantity_Stock"));

                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                Book b = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"),
                        q);
                list.add(b);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    ===============Tính số sản phẩm=============== HomeServlet + SearchServlet + TabServlet
    public List<Book> getListByPage(List<Book> list, int start, int end) {
        ArrayList<Book> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

//    ===============Search sản phẩm theo Book_Name=============== SearchServlet  
    public List<Book> searchBookByName(String key) {
        List<Book> list = new ArrayList<>();
        String sql = "select b.Book_ID, b.Book_Name, b.Book_Image, b.Book_Price,"
                + " b.Book_Author, b.Book_Publisher, b.Book_Store, b.Book_Evaluate,"
                + " t.Types_ID as Types_ID, t.Types_Name as Book_Types from Book b"
                + " inner join [Types] t on b.Book_Types = t.Types_ID where b.Book_Name like ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, "%" + key + "%");
            rs = st.executeQuery();
            while (rs.next()) {
                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                Book s = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

//    ===============Gọi tất cả sản phẩm=============== TabServlet
    public List<Book> checkBox(int[] id) {
        List<Book> list = new ArrayList<>();
        String sql = "select b.Book_ID, b.Book_Name, b.Book_Image, b.Book_Price,"
                + " b.Book_Author, b.Book_Publisher, b.Book_Store, b.Book_Evaluate,"
                + " t.Types_ID as Types_ID, t.Types_Name as Book_Types from Book b"
                + " inner join [Types] t on b.Book_Types = t.Types_ID where 1=1 ";
        if (id != null) {
            sql += "and t.Types_ID in(";
            for (int i = 0; i < id.length; i++) {
                sql += id[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                Book s = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"));
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    ===============Update sản phẩm=============== UpdateServlet
    public void updateBook(Book book) {
        String sql = "update Book set Book_Name = ?, Book_Image = ?,"
                + " Book_Price= ?, Book_Author = ?, Book_Publisher = ?,"
                + " Book_Types = ?, Book_Store = ?, Book_Evaluate = ?"
                + " where Book_ID = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, book.getBookName());
            st.setString(2, book.getBookImage());
            st.setDouble(3, book.getBookPrice());
            st.setString(4, book.getBookAuthor());
            st.setString(5, book.getBookPublisher());
            st.setInt(6, book.getBookTypes());
            st.setString(7, book.getBookStore());
            st.setString(8, book.getBookEvaluate());
            st.setString(9, book.getBookID());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
//    ===============Xóa sản phẩm=============== DeleteProductServlet

    public void deleteBook(String Book_ID) {
        String sql = "delete from Book where Book_ID = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, Book_ID);
            st.executeUpdate();
        } catch (SQLException e) {
        }

    }

//    ===============Insert sản phẩm=============== AddProductServlet
    public void insertBook(Book book) {
        String sql = "insert into Book values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, book.getBookID());
            st.setString(2, book.getBookName());
            st.setString(3, book.getBookImage());
            st.setDouble(4, book.getBookPrice());
            st.setString(5, book.getBookAuthor());
            st.setString(6, book.getBookPublisher());
            st.setInt(7, book.getBookTypes());
            st.setString(8, book.getBookStore());
            st.setString(9, book.getBookEvaluate());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

//    ===============Gọi tất cả sản phẩm theo Book_ID=============== UpdateServlet   
    public Book getBookByID(String Book_ID) {
        String sql = "select * from Book where Book_ID = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, Book_ID);
            rs = st.executeQuery();
            if (rs.next()) {
                Book book = new Book(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9));
                return book;
            }
        } catch (SQLException e) {
        }
        return null;
    }

//===============Sort sản phẩm giảm dần theo số lượng sản phẩm đã bán===============    SoldHotServlet
    public List<Book> getTopBuyHot() {
        List<Book> list = new ArrayList<>();
        String sql = "select top 10 * from Book b inner join Quantity q on"
                + " b.Book_ID = q.Book_ID inner join [Types] t on"
                + " b.Book_Types = t.Types_ID order by q.Quantity_Sold desc";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Quantity q = new Quantity(rs.getString("Book_ID"), rs.getInt("Quantity_Sold"), rs.getInt("Quantity_Stock"));

                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                Book b = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"),
                        q);
                list.add(b);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//===============Top 5 Truyện Bán Chạy===============    SoldHotServlet
    public List<Book> getTopBuyHotHome() {
        List<Book> list = new ArrayList<>();
        String sql = "select top 5 * from Book b inner join Quantity q on"
                + " b.Book_ID = q.Book_ID inner join [Types] t on"
                + " b.Book_Types = t.Types_ID order by q.Quantity_Sold desc";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Quantity q = new Quantity(rs.getString("Book_ID"), rs.getInt("Quantity_Sold"), rs.getInt("Quantity_Stock"));

                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                Book b = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"),
                        q);
                list.add(b);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    ===============Sort sản phẩm theo điểm đánh giá khi join Book vs Types=============== HomeServlet
    public List<Book> getTopReadHot() {
        List<Book> list = new ArrayList<>();
        String sql = "select top 10 b.Book_ID, b.Book_Name, b.Book_Image, b.Book_Price,"
                + " b.Book_Author, b.Book_Publisher, b.Book_Store, b.Book_Evaluate,"
                + " t.Types_ID as Types_ID, t.Types_Name as Book_Types from Book b"
                + " inner join [Types] t on b.Book_Types = t.Types_ID"
                + " order by b.Book_Evaluate desc";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                Book s = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"));
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    ===============Gọi 5 sản phẩm  khi join Book vs Types=============== HomeServlet
    public List<Book> getTopReadHotHome() {
        List<Book> list = new ArrayList<>();
        String sql = "select top 5 b.Book_ID, b.Book_Name, b.Book_Image, b.Book_Price,"
                + " b.Book_Author, b.Book_Publisher, b.Book_Store, b.Book_Evaluate,"
                + " t.Types_ID as Types_ID, t.Types_Name as Book_Types from Book b"
                + " inner join [Types] t on b.Book_Types = t.Types_ID"
                + " order by b.Book_Evaluate desc";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                Book s = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"));
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    ===============Gọi tất cả sản phẩm khi join Book vs Types vs Product vs Quantity===============     
    public List<Book> getAllBookP() {
        List<Book> list = new ArrayList<>();
        String sql = "select b.Book_ID, b.Book_Name, b.Book_Image, b.Book_Price, b.Book_Author, b.Book_Store, "
                + "t.Types_Name as Types_Name, b.Book_Evaluate, p.Centent_Book, q.Quantity_Sold "
                + "from Book b inner join Product p on b.Book_ID = p.Book_ID "
                + "inner join [Types] t on b.Book_Types = t.Types_ID "
                + "inner join Quantity q on q.Book_ID = b.Book_ID";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Quantity q = new Quantity(rs.getString("Book_ID"), rs.getInt("Quantity_Sold"), rs.getInt("Quantity_Stock"));

                Product p = new Product(rs.getInt("Product_ID"),
                        rs.getString("Book_ID"),
                        rs.getString("Centent_Book"));

                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                Book b = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"),
                        q,
                        p);
                list.add(b);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    ===============Gọi tất cả sản phẩm khi join Book vs Types vs Product vs Quantity===============     
    public Book getBookPByID(String bookID) {
        String sql = "select * from Book b inner join [Types] t on b.Book_Types = t.Types_ID\n"
                + " inner join Quantity q on q.Book_ID = b.Book_ID\n"
                + " inner join Product p on p.Book_ID = b.Book_ID where b.Book_ID = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, bookID);
            rs = st.executeQuery();
            while (rs.next()) {
                Quantity q = new Quantity(rs.getString("Book_ID"), rs.getInt("Quantity_Sold"), rs.getInt("Quantity_Stock"));

                Product p = new Product(rs.getInt("Product_ID"),
                        rs.getString("Book_ID"),
                        rs.getString("Centent_Book"));

                Types t = new Types(rs.getInt("Types_ID"), rs.getString("Book_Types"));

                return new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        t,
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"),
                        q,
                        p);
            }
        } catch (SQLException e) {
        }
        return null;
    }

//    =============== Thống kê sản phẩm đã bán theo ngày bán=============== 
    public List<Book> getStaticDate() {
        List<Book> list = new ArrayList<>();
            String sql = "select * from Book b inner join OrdersLine ol on b.Book_ID = ol.Book_ID "
                    + "inner join Quantity q on q.Book_ID = b.Book_ID "
                    + "inner join Orders o on o.Order_ID = ol.Order_ID "
                    + "order by o.Order_Date desc";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Quantity q = new Quantity(rs.getString("Book_ID"),
                        rs.getInt("Quantity_Sold"),
                        rs.getInt("Quantity_Stock"));

                Order o = new Order(
                        rs.getInt("Order_ID"),
                        rs.getString("Order_Date"),
                        rs.getDouble("TotalMoney"));

                OrderLine ol = new OrderLine(rs.getInt("Order_ID"),
                        rs.getString("Book_ID"),
                        rs.getInt("Order_Quantity"));
                Book s = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        rs.getInt("Book_Types"),
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"),
                        q,
                        o,
                        ol);
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    =============== Thống kê sản phẩm theo số lượng sách bán=============== 
    public List<Book> getStaticSold() {
        List<Book> list = new ArrayList<>();
            String sql = "select * from Book b inner join OrdersLine ol on b.Book_ID = ol.Book_ID "
                    + "inner join Quantity q on q.Book_ID = b.Book_ID "
                    + "inner join Orders o on o.Order_ID = ol.Order_ID "
                    + "order by q.Quantity_Sold desc";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Quantity q = new Quantity(rs.getString("Book_ID"),
                        rs.getInt("Quantity_Sold"),
                        rs.getInt("Quantity_Stock"));

                Order o = new Order(
                        rs.getInt("Order_ID"),
                        rs.getString("Order_Date"),
                        rs.getDouble("TotalMoney"));

                OrderLine ol = new OrderLine(rs.getInt("Order_ID"),
                        rs.getString("Book_ID"),
                        rs.getInt("Order_Quantity"));
                Book s = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        rs.getInt("Book_Types"),
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"),
                        q,
                        o,
                        ol);
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    =============== Thống kê sản phẩm theo tiền sách bán được=============== 
    public List<Book> getStaticPrice() {
        List<Book> list = new ArrayList<>();
            String sql = "select * from Book b inner join OrdersLine ol on b.Book_ID = ol.Book_ID "
                    + "inner join Quantity q on q.Book_ID = b.Book_ID "
                    + "inner join Orders o on o.Order_ID = ol.Order_ID "
                    + "order by o.TotalMoney desc";
        try {
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();
            while (rs.next()) {
                Quantity q = new Quantity(rs.getString("Book_ID"),
                        rs.getInt("Quantity_Sold"),
                        rs.getInt("Quantity_Stock"));

                Order o = new Order(
                        rs.getInt("Order_ID"),
                        rs.getString("Order_Date"),
                        rs.getDouble("TotalMoney"));

                OrderLine ol = new OrderLine(rs.getInt("Order_ID"),
                        rs.getString("Book_ID"),
                        rs.getInt("Order_Quantity"));
                Book s = new Book(rs.getString("Book_ID"),
                        rs.getString("Book_Name"),
                        rs.getString("Book_Image"),
                        rs.getDouble("Book_Price"),
                        rs.getString("Book_Author"),
                        rs.getString("Book_Publisher"),
                        rs.getInt("Book_Types"),
                        rs.getString("Book_Store"),
                        rs.getString("Book_Evaluate"),
                        q,
                        o,
                        ol);
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public static void main(String[] args) {
        BookDAO bd = new BookDAO();
        List<Book> list = bd.getBookByBookID();
        List<Book> list1 = bd.getStaticDate();
        System.out.println(list.get(0).getBookID());
        System.out.println(list1.get(0).getBookID());

    }
}
