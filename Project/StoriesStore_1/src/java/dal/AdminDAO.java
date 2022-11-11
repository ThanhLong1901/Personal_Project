package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Admin;
import model.Customer;

/**
 *
 * @author elll
 */
public class AdminDAO extends DBContext {

    private PreparedStatement st;
    private ResultSet rs;

    public Admin getAdmin(String user, String pass) {
        String sql = "select * from Admin where username = ? and password = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            rs = st.executeQuery();
            if (rs.next()) {
                return new Admin(rs.getString("username"), rs.getString("password"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public Admin getAdminByUser(String username) {
        String sql = "select * from Admin where username = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, username);
            rs = st.executeQuery();
            if (rs.next()) {
                return new Admin(rs.getString(1), rs.getString(2));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void insertAdmin(Admin admin) {
        String sql = "insert into Admin values(?, ?)";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, admin.getUsername());
            st.setString(2, admin.getPassword());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void updateAdmin(Admin admin) {
        String sql = "update Admin set password = ? where username = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, admin.getPassword());
            st.setString(2, admin.getUsername());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public Customer getCustomer(String user, String pass) {
        String sql = "select * from Customer where username = ? and password = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            rs = st.executeQuery();
            if (rs.next()) {
                return new Customer(rs.getString("username"), rs.getString("password"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public Customer getCustomerByUser(String username) {
        String sql = "select * from Customer where username = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, username);
            rs = st.executeQuery();
            if (rs.next()) {
                return new Customer(rs.getString(1), rs.getString(2));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void insertCustomer(Customer customer) {
        String sql = "insert into Customer values(?, ?)";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, customer.getUsername());
            st.setString(2, customer.getPassword());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void updateCustomer(Customer customer) {
        String sql = "update Customer set password = ? where username = ?";
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, customer.getPassword());
            st.setString(2, customer.getUsername());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
}
