/*
 *     DuyDuc94
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

public class ProductDAO extends DBContext {

    //Return all product of selected Category
    public List<Product> getProducts(String categoryName) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select * from Product where cateID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            CategoryDAO cateDAO = new CategoryDAO();
            Category category = cateDAO.search(categoryName);
            ps.setInt(1, category.getID());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, category.getName());
                list.add(temp);
            }
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Product getProducts(int ID) {
        CategoryDAO cateDAO = new CategoryDAO();
        try {
            String SQL = "select * from Product where ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, ID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                return new Product(ID, Name, Description, Image, Price, Sold, cateDAO.search(CateID).getName());
            }
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //Return list of product of a category has sold > numberTopSell
    public List<Product> getTopSellProducts(String categoryName) {
        List<Product> list = new ArrayList<>();
        int numberTopSell = 1;
        try {
            String SQL = "select * from Product where cateID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            CategoryDAO cateDAO = new CategoryDAO();
            Category category = cateDAO.search(categoryName);
            ps.setInt(1, category.getID());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                if (Sold > numberTopSell) {
                    Product temp = new Product(ID, Name, Description, Image, Price, Sold, category.getName());
                    list.add(temp);
                }
            }
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    //Return the price range of a product
    public String calculatePrice(int ProID) {
        Product_DetailDAO proDetailDAO = new Product_DetailDAO();
        List<Double> prices = proDetailDAO.getPrices(ProID);
        if (!prices.isEmpty()) {
            Collections.sort(prices);
            return prices.get(0) + "-" + prices.get(prices.size() - 1);
        }
        return "Unknown";
    }
}
