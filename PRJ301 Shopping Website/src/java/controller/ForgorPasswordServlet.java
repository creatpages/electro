/*
 *     DuyDuc94
 */
package controller;

import dal.User_AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lib.MyValidated;

/**
 *
 * @author duy20
 */
//@WebServlet(name = "", urlPatterns = {""})
public class ForgorPasswordServlet extends HttpServlet {

    //response.setContentType("text/html;charset=UTF-8");
    //request.setCharacterEncoding("UTF-8");
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        HttpSession session = request.getSession(true);
        if (session.getAttribute("user") == null) {
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("homepage.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String email = request.getParameter("email");
        if (MyValidated.isLegitEmail(email)) {
            User_AccountDAO userDAO = new User_AccountDAO();
            if (userDAO.searchByEmail(email)) {
                request.setAttribute("emailMessage", "A email has been sent to " + email);
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            } else {
                request.setAttribute("emailMessage", "Email is not registered!");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("emailMessage", "Invalid email! Try again!");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ForgorPasswordServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgorPasswordServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

}