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
import model.Product_Detail;

public class Product_DetailDAO extends DBContext {
    
    public List<Product_Detail> getListProduct(int ProID) {
        List<Product_Detail> list = new ArrayList<>();
        try {
            String SQL = "select * from Product_Detail where ProID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, ProID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                int Quantity = rs.getInt("Quantity");
                double Price = rs.getDouble("Price");
                String Image = rs.getString("Image");
                String Color = rs.getString("Color");
                list.add(new Product_Detail(ID, ProID, Quantity, Price, Image, Color));
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Product_Detail getProductDetail(int proDetailID) {
        try {
            String SQL = "select * from Product_Detail where ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, proDetailID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int ProID = rs.getInt("ProID");
                int Quantity = rs.getInt("Quantity");
                double Price = rs.getDouble("Price");
                String Image = rs.getString("Image");
                String Color = rs.getString("Color");
                ps.close();
                rs.close();
                return new Product_Detail(proDetailID, ProID, Quantity, Price, Image, Color);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Product_Detail getColor(int ProID, String color) {
        try {
            String SQL = "select * from Product_Detail where ProID = ? and Color = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, ProID);
            ps.setString(2, color);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int ID = rs.getInt("ID");
                int Quantity = rs.getInt("Quantity");
                double Price = rs.getDouble("Price");
                String Image = rs.getString("Image");
                String Color = rs.getString("Color");
                ps.close();
                rs.close();
                return new Product_Detail(ID, ProID, Quantity, Price, Image, Color);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public String getName(int proDetailID) {
        try {
            String SQL = "select p.Name from Product_Detail pdt\n"
                    + "join Product p on pdt.ProID = p.ID\n"
                    + "where pdt.ID=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, proDetailID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String name = rs.getString("Name");
                ps.close();
                rs.close();
                return name;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "Unknown";
    }

    //Get list price of all option of a product
    public List<Double> getPrices(int ProID) {
        List<Double> list = new ArrayList<>();
        try {
            String SQL = "select Price from Product_Detail where ProID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, ProID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getDouble("Price"));
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
