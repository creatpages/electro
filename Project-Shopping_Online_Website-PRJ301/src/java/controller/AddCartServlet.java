package controller;

/*
 * DuyDuc94
 */
import dal.CartDAO;
import dal.Product_DetailDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lib.MyHttpServletRequest;
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
        if (user == null) {
            request.setAttribute("message", "Please login to add to cart");
            request.setAttribute("url-request", request.getHeader("referer"));
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("view-product");
        MyHttpServletRequest myRequest = new MyHttpServletRequest(request, "POST");

        int proID = Integer.parseInt(request.getParameter("proID"));
        Product_DetailDAO proDetailDAO = new Product_DetailDAO();
        CartDAO cartDAO = new CartDAO();
        Product_Detail proDetail = new Product_Detail();
        boolean canAddToCart = true;
        int proDetailID = -1;
        try {
            proDetailID = Integer.parseInt(request.getParameter("proDetailID"));
            proDetail = proDetailDAO.getProductDetail(proDetailID);
        } catch (NumberFormatException e) {
        }

        if (proDetailID == -1) {
            request.setAttribute("colorMessage", "Please select color!");
            canAddToCart = false;
        }
        String selectedColor = request.getParameter("color");

        int quantity = Integer.parseInt(request.getParameter("quantity"));
        if (quantity > 0) {
            if (canAddToCart && quantity > proDetail.getQuantity()) {
                request.setAttribute("quantityMessage", "We only have " + proDetail.getQuantity() + " products left");
                canAddToCart = false;
            }
        } else {
            request.setAttribute("quantityMessage", "Please choose quantity<br>greater than 0");
            canAddToCart = false;
        }

        if (canAddToCart) {
            if (cartDAO.isInCart(user.getID(), proDetailID)) {
                if (!cartDAO.canAddMore(user.getID(), proDetailID, quantity)) {
                    request.setAttribute("quantityMessage", "There are " + cartDAO.getCartItem(user.getID(), proDetailID).getQuantity() + " products in your cart");
                } else {
                    cartDAO.addToCart(user.getID(), proDetailID, quantity);
                    request.setAttribute("addToCartMessage", "Add to cart successfully");
                }
            }
        }
        request.setAttribute("proID", proID);
        request.setAttribute("color", selectedColor);
        dispatcher.forward(myRequest, response);
    }

}
