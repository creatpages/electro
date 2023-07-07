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
        BrandDAO brandDAO = new BrandDAO();
        ProductDAO proDAO = new ProductDAO();
        List<Brand> listBrands = new ArrayList<>();
        List<Product> listProducts = new ArrayList<>();
        if (category != null) {
            if (category.compareTo("All") != 0) {
                if (info == null) {
                    listProducts = proDAO.getListProOfCate(category);
                    listBrands = brandDAO.getBrandsByCategory(category);
                    if (brand != null) {
                        listProducts = proDAO.getListProOfBrandInCate(category, brand);
                    }
                }else{
                    listProducts = proDAO.searchProOfCate(category, info);
                }
            } else {
                if (info == null) {
                    listProducts = proDAO.getAllProducts();
                } else {
                    listProducts = proDAO.search(info);
                }
            }
        }else{
            response.sendRedirect("homepage");
            return;
        }
        request.setAttribute("categoryChecked", category);
        request.setAttribute("brandChecked", brand);
        request.setAttribute("listBrands", listBrands);
        request.setAttribute("listProducts", listProducts);
        request.getRequestDispatcher("view-store.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

    }
}
