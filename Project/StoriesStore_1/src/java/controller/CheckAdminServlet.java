package controller;

import dal.BookDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Admin;
import model.Book;
import model.Cart;
import model.Item;

/**
 *
 * @author elll
 */
public class CheckAdminServlet extends HttpServlet {

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
            out.println("<title>Servlet CheckAdminServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckAdminServlet at " + request.getContextPath() + "</h1>");
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
        String action = request.getParameter("action");
        HttpSession session = request.getSession(true);
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            request.setAttribute("errorCart", "Please Enter Login");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            if (action.equals("buy")) {
                Cart cart = null;
                Object o = session.getAttribute("cart");
                //co roi
                if (o != null) {
                    cart = (Cart) o;
                } else {
                    cart = new Cart();
                }
                String tnum = request.getParameter("num");
                String tid = request.getParameter("id");
                int num;
                try {
                    num = Integer.parseInt(tnum);
                    BookDAO pdb = new BookDAO();
                    Book p = pdb.getBookByID(tid);
                    //gia ban
                    double price = p.getBookPrice() * 1.3;
                    Item t = new Item(p, num, price);
                    cart.addItem(t);
                } catch (NumberFormatException e) {
                    num = 1;
                }

                List<Item> list = cart.getItems();
                session.setAttribute("cart", cart);
                session.setAttribute("size", list.size());
                request.getRequestDispatcher("Cart.jsp").forward(request, response);
            }
        }
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
        processRequest(request, response);
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
