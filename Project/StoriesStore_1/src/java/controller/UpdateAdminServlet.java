package controller;

import dal.AdminDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Admin;
import model.Customer;

/**
 *
 * @author elll
 */
public class UpdateAdminServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateAdminServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateAdminServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        AdminDAO adminDAO = new AdminDAO();
        Admin admin = adminDAO.getAdminByUser(username);
        Customer customer = adminDAO.getCustomerByUser(username);
        request.setAttribute("admin", admin);
        request.setAttribute("customer", customer);
        request.getRequestDispatcher("UpdateAdmin.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");
        String newpass = request.getParameter("newpass");
        String renewpass = request.getParameter("renewpass");

        if (!newpass.equals(renewpass)) {
            request.setAttribute("errorUpdateAdmin2", "Newpassword not same Renewpassword. Please re-enter Password & Repassword");
            request.getRequestDispatcher("UpdateAdmin.jsp").forward(request, response);
        } else {
            AdminDAO ad = new AdminDAO();
            Admin a = ad.getAdminByUser(user);
            Customer c = ad.getCustomerByUser(user);
            if (a != null || c != null) {
//                user đã tồn tại được update
                Admin a1 = new Admin(user, newpass);
                Customer c1 = new Customer(user, newpass);
                ad.updateAdmin(a1);
                ad.updateCustomer(c1);
                request.setAttribute("errorUpdateAdmin3", "Update password successful. Please Login");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            } else {
                request.setAttribute("errorUpdateAdmin4", "Username does not exist. Please re-enter Username");
                request.getRequestDispatcher("UpdateAdmin.jsp").forward(request, response);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
