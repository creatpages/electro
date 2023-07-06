/*
 *     DuyDuc94
 */
package controller;

import dal.BrandDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Brand;
import model.Product;

/**
 * @author duy20
 */
public class SearchServlet extends HttpServlet {

    //response.setContentType("text/html;charset=UTF-8");
    //request.setCharacterEncoding("UTF-8");
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String category = request.getParameter("category");
        String brand = request.getParameter("brand");
        String info = request.getParameter("info");
        ProductDAO proDAO = new ProductDAO();
        BrandDAO brandDAO = new BrandDAO();
        List<Brand> listBrands = new ArrayList<>();
        List<Product> listProducts = new ArrayList<>();
        if (category != null) {
            listProducts = proDAO.getProductsByCategory(category);
            listBrands = brandDAO.getBrandsByCategory(category);
            if (brand != null) {
                listProducts = proDAO.getProductsByCategoryAndBrand(category, brand);
            }
        }
        request.setAttribute("categoryChecked", category);
        request.setAttribute("brandChecked", brand);
        request.setAttribute("listBrands", listBrands);
        request.setAttribute("listProducts", listProducts);
        request.getRequestDispatcher("store.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SeachServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SeachServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

}
