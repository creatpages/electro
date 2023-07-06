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

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select * from Product";
            PreparedStatement ps = con.prepareStatement(SQL);
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

    public List<Product> search(String info) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select p.ID, p.CateID, p.BrandID, p.Name, p.Description, p.Image, p.Sold from Product p\n"
                    + "join Brand b on p.BrandID = b.ID\n"
                    + "where p.Name like ? or b.Name like ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, "%" + info + "%");
            ps.setString(2, "%" + info + "%");
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

    public List<Product> searchProOfCate(String cateName, String info) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select p.ID, p.CateID, p.BrandID, p.Name, p.Description, p.Image, p.Sold from Product p\n"
                    + "join Category c on p.CateID = c.ID\n"
                    + "where p.Name like ? and c.Name = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, "%" + info + "%");
            ps.setString(2, cateName);
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

    //Return all product of selected Category
    public List<Product> getListProOfCate(String categoryName) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select p.ID, p.CateID, p.BrandID, p.Name, p.[Description], p.[Image], p.Sold from Product p\n"
                    + "join Category c on p.CateID = c.ID\n"
                    + "where c.Name = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, categoryName);
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

    public Product getProductsByID(int ID) {
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

    public List<Product> getListProOfBrand(String brandName) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select p.ID, p.CateID, p.BrandID, p.Name, p.[Description], p.[Image], p.Sold from Product p\n"
                    + "join Brand b on p.BrandID = b.ID\n"
                    + "where b.Name = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, brandName);
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

    public List<Product> getListProOfBrandInCate(String categoryName, String brandName) {
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
