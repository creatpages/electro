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
import model.User_Account;

/**
 * @author duy20
 */

public class RegisterServlet extends HttpServlet {

    //response.setContentType("text/html;charset=UTF-8");
    //request.setCharacterEncoding("UTF-8");
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        HttpSession session = request.getSession(true);
        if (session.getAttribute("user") == null) {
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            response.sendRedirect("homepage");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("password");
        boolean canRegister = true;
        User_AccountDAO userDAO = new User_AccountDAO();
        
        //Check legit of name
        if (!MyValidated.isLegitName(name)) {
            request.setAttribute("usernameMessage", "Username has exist!");
            canRegister = false;
        }

        //Check exist of username
        if (userDAO.search(username) != null) {
            request.setAttribute("usernameMessage", "Username has exist!");
            canRegister = false;
        }else{
            if(!MyValidated.isLegitUsername(username)){
                request.setAttribute("usernameMessage", "Username can only contain alphabet and digit!");
                canRegister = false;
            }
        }
        
        //Check phone
        if (!MyValidated.isLegitPhone(phone)) {
            request.setAttribute("phoneMessage", "Phone only contain number!");
            canRegister = false;
        }
        
        //Check email
        if (!MyValidated.isLegitEmail(email)) {
            request.setAttribute("emailMessage", "Email is not valid!");
            canRegister = false;
        }
        
        //Check confirm password
        if (password.compareTo(confirmPassword) != 0) {
            request.setAttribute("comfirmPasswordMessage", "Password not match!");
            canRegister = false;
        }

        if (canRegister) {
            HttpSession session = request.getSession(true);
            User_Account newUser = userDAO.registerAccount(username, password, name, phone, email);
            session.setAttribute("user", newUser);
            response.sendRedirect("homepage");
            return;
        }
        
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

}