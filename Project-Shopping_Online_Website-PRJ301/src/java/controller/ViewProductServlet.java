package controller;

/*
 * DuyDuc94
 */
import dal.ProductDAO;
import dal.Product_DetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Product;
import model.Product_Detail;

/**
 * @author duy20
 */
public class ViewProductServlet extends HttpServlet {

    //response.setContentType("text/html;charset=UTF-8");
    //request.setCharacterEncoding("UTF-8");
    //PrintWriter out = response.getWriter();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        int proID = Integer.parseInt(request.getParameter("proID"));
        ProductDAO proDAO = new ProductDAO();
        Product mainProduct = proDAO.getProductsByID(proID);
        List<Product> listRelatedProduct = proDAO.getRelatedProduct(mainProduct.getBrandID());
        Product_DetailDAO proDetDAO = new Product_DetailDAO();
        List<Product_Detail> listProductDetail = proDetDAO.getListProduct(proID);
        Product_Detail proDetail = null;

        String color = request.getParameter("color");
        if (color != null) {
            proDetail = proDetDAO.getColor(proID, color);
        }
        
        request.setAttribute("mainProduct", mainProduct);
        request.setAttribute("listProductDetail", listProductDetail);
        request.setAttribute("listRelatedProduct", listRelatedProduct);
        request.setAttribute("proDetail", proDetail);
        request.getRequestDispatcher("view-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        ProductDAO proDAO = new ProductDAO();
        int proID =  (int) request.getAttribute("proID");
        Product mainProduct = proDAO.getProductsByID(proID);
        List<Product> listRelatedProduct = proDAO.getRelatedProduct(mainProduct.getBrandID());
        Product_DetailDAO proDetDAO = new Product_DetailDAO();
        List<Product_Detail> listProductDetail = proDetDAO.getListProduct(proID);

        String color = (String) request.getAttribute("color");
        Product_Detail proDetail = proDetDAO.getColor(proID, color);

        request.setAttribute("mainProduct", mainProduct);
        request.setAttribute("listProductDetail", listProductDetail);
        request.setAttribute("listRelatedProduct", listRelatedProduct);
        request.setAttribute("proDetail", proDetail);
        request.setAttribute("colorMessage", request.getAttribute("colorMessage"));
        request.setAttribute("quantityMessage", request.getAttribute("quantityMessage"));
        request.setAttribute("addToCartMessage", request.getAttribute("addToCartMessage"));
        request.getRequestDispatcher("view-product.jsp").forward(request, response);
    }

}
