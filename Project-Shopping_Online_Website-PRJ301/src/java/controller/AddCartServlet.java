package controller;

/*
 * DuyDuc94
 */
import dal.CartDAO;
import dal.Product_DetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Product_Detail;
import model.User_Account;

/**
 * @author duy20
 */
public class AddCartServlet extends HttpServlet {

    //response.setContentType("text/html;charset=UTF-8");
    //request.setCharacterEncoding("UTF-8");
    //PrintWriter out = response.getWriter();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.sendRedirect("homepage");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        HttpSession session = request.getSession();
        User_Account user = (User_Account) session.getAttribute("user");
        int proID = Integer.parseInt(request.getParameter("proID"));
        String color = request.getParameter("color");
        int proDetailID = Integer.parseInt(request.getParameter("proDetailID")==null?"-1":request.getParameter("proDetailID"));
        int quantity = Integer.parseInt(request.getParameter("quantity")==null?"-1":request.getParameter("quantity"));
        Product_DetailDAO proDetailDAO = new Product_DetailDAO();
        CartDAO cartDAO = new CartDAO();
        Product_Detail proDetail = proDetailDAO.getProductDetail(proDetailID);
        String message = "";
        if (user == null) {
            request.setAttribute("message", color);
            request.getRequestDispatcher("login").forward(request, response);
        }
        if (color == null) {
            message += "Please select color!<br>";
        }
        if (quantity > proDetail.getQuantity()) {
            message += "We only have " + proDetail.getQuantity() + " products left<br>";
        }
        if(message.isEmpty()){
            if(!cartDAO.isAddToCart(user.getID(), proDetailID)){
                cartDAO.addToCart(user.getID(), proDetailID, quantity);
                message += "Add to cart successfully<br>";
            }else{
                message += "The product already exists in your cart<br>";
            }
        }
        request.setAttribute("proID", proID);
        request.setAttribute("color", color);
        request.setAttribute("quantity", quantity);
        request.setAttribute("message", message);
        request.getRequestDispatcher("view-product").forward(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddToCartServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddToCartServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
