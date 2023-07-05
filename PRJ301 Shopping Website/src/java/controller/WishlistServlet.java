/*
 *     DuyDuc94
 */
package controller;

import dal.*;
import dal.User_AccountDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User_Account;

/**
 *
 * @author duy20
 */
//@WebServlet(name = "", urlPatterns = {""})
public class WishlistServlet extends HttpServlet {

    //response.setContentType("text/html;charset=UTF-8");
    //request.setCharacterEncoding("UTF-8");
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("wishlist.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        HttpSession session = request.getSession(true);
        User_AccountDAO userDAO = new User_AccountDAO();
        User_Account user = (User_Account) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("login");
        }
        int proID = Integer.parseInt(request.getParameter("proID"));
        WishlistDAO wishlistDAO = new WishlistDAO();
        boolean isAddToWishlist = wishlistDAO.addToWishlist(user.getID(), proID);
        if (isAddToWishlist) {
            request.getRequestDispatcher("wishlist.jsp").forward(request, response);
        } else {
            //Message that add to wishlist failed
            request.getRequestDispatcher("homepage").forward(request, response);
        }
    }
}
