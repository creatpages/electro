/*
 * DuyDuc94
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Brand;
import model.Product;

/**
 * @author duy20
 */
public class BrandDAO extends DBContext {

    public String getName(int brandID) {
        try {
            String SQL = "select * from Brand where ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, brandID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String Name = rs.getString("Name");
                ps.close();
                rs.close();
                return Name;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "Unknown";
    }

    public int getID(String brandName) {
        try {
            String SQL = "select * from Brand where Name = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, brandName);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int ID = rs.getInt("ID");
                ps.close();
                rs.close();
                return ID;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public Brand search(String brandName) {
        try {
            String SQL = "select * from Brand where Name = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, brandName);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                ps.close();
                rs.close();
                return new Brand(ID, Name);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Brand> getBrandsByCategory(String categoryName) {
        List<Brand> list = new ArrayList<>();
        try {
            String SQL = "select * from Brand where cateID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            CategoryDAO cateDAO = new CategoryDAO();
            ps.setInt(1, cateDAO.getID(categoryName));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                Brand temp = new Brand(ID, Name);
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
}
