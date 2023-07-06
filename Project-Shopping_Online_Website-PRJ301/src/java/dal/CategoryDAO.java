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

public class CategoryDAO extends DBContext {

    public String getName(int cateID) {
        try {
            String SQL = "select * from Category where ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, cateID);
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

    public int getID(String categoryName) {
        try {
            String SQL = "select * from Category where Name = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, categoryName);
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

    public List<Category> getCategories() {
        List<Category> list = new ArrayList<>();
        try {
            String SQL = "select * from Category";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                list.add(new Category(ID, Name));
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //Search Category with Name
    public Category search(String categoryName) {
        try {
            String SQL = "select * from Category where name=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, categoryName);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                ps.close();
                rs.close();
                return new Category(ID, Name);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //Search Category with ID
    public Category search(int ID) {
        try {
            String SQL = "select * from Category where ID=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, ID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String Name = rs.getString("Name");
                ps.close();
                rs.close();
                return new Category(ID, Name);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
