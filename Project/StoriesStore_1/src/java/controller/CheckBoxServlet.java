package controller;

import dal.BookDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Book;
import model.Types;

/**
 *
 * @author elll
 */
public class CheckBoxServlet extends HttpServlet {

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
            out.println("<title>Servlet CheckBoxServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckBoxServlet at " + request.getContextPath() + "</h1>");
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
        String[] id_raw = request.getParameterValues("id");
        int[] id = null;
        if(id_raw != null){
            id = new int[id_raw.length];
            for (int i = 0; i < id.length; i++) {
                id[i] = Integer.parseInt(id_raw[i]);
            }
        }
        BookDAO bd = new BookDAO();
        List<Book> list = bd.checkBox(id);
        request.setAttribute("listBook", list);
        
        List<Types> clist = bd.getAllTypes();
        boolean[] cid = new boolean[clist.size()];
        for (int i = 0; i < cid.length; i++) {
            if(ischeck(clist.get(i).getTypesID(), id))
                cid[i] = true;
            else
                cid[i] = false;
        }
        request.setAttribute("cats", clist);
        request.setAttribute("cid", cid);
        request.getRequestDispatcher("HomeTab.jsp").forward(request, response);
    }
    
    private boolean ischeck(int d, int[] id){
        if(id == null)
            return false;
        else{
            for (int i = 0; i < id.length; i++) {
                if(id[i] == d)
                    return true;  
            }
            return false;
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
