package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import model.Cart;
import model.Item;

/**
 *
 * @author elll
 */
public class OrderDAO extends DBContext {

    public void addOrder(Cart cart) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        try {
            //add vào Bảng Order
            String sql = "insert into Orders values (?, ?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date);
            st.setDouble(2, cart.getTotalMoney());
            st.executeUpdate();

            //Lấy ra Order_ID  vừa add
            String sql1 = "select top 1 Order_ID from [Orders] order by Order_ID desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();

            //Add vào bảng OrderLine
            if (rs.next()) {
                int oid = rs.getInt(1);
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into OrdersLine values (?, ?, ?, ?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setString(2, i.getProduct().getBookID());
                    st2.setInt(3, i.getQuantity());
                    st2.setDouble(4, i.getPrice());
                    st2.executeUpdate();
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
