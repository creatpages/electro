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
    public List<Product> getProductsByCategory(String categoryName) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select * from Product where cateID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            CategoryDAO cateDAO = new CategoryDAO();
            ps.setInt(1, cateDAO.getID(categoryName));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                list.add(temp);
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Product getProductsByProID(int ID) {
        CategoryDAO cateDAO = new CategoryDAO();
        try {
            String SQL = "select * from Product where ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, ID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                ps.close();
                rs.close();
                return new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getProductsByBrand(String brandName) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select * from Product where BrandID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            BrandDAO brandDAO = new BrandDAO();
            ps.setInt(1, brandDAO.getID(brandName));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                list.add(temp);
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getProductsByCategoryAndBrand(String categoryName, String brandName) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select * from Product where cateID = ? and brandID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            CategoryDAO cateDAO = new CategoryDAO();
            BrandDAO brandDAO = new BrandDAO();
            ps.setInt(1, cateDAO.getID(categoryName));
            ps.setInt(2, brandDAO.getID(brandName));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                list.add(temp);
            }
            ps.close();
            rs.close();
            return list;
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
            ps.setInt(1, cateDAO.getID(categoryName));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                if (Sold > numberTopSell) {
                    Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                    list.add(temp);
                }
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
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
