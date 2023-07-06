/*
 *     DuyDuc94
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

public class User_AccountDAO extends DBContext {

    //Search user account by Username
    public User_Account search(String username) {
        try {
            String SQL = "select * from User_Account where username = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int ID = rs.getInt("ID");
                String Password = rs.getString("password");
                boolean Role = rs.getBoolean("role");
                boolean Status = rs.getBoolean("status");
                String Name = rs.getString("name");
                String Phone = rs.getString("phone");
                String Email = rs.getString("Email");
                ps.close();
                rs.close();
                return new User_Account(ID, username, Password, Role, Status, Name, Phone, Email);
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //Search user account by ID
    public User_Account search(int ID) {
        try {
            String SQL = "select * from User_Account where ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, ID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String Username = rs.getString("username");
                String Password = rs.getString("password");
                boolean Role = rs.getBoolean("role");
                boolean Status = rs.getBoolean("status");
                String Name = rs.getString("name");
                String Phone = rs.getString("phone");
                String Email = rs.getString("Email");
                ps.close();
                rs.close();
                return new User_Account(ID, Username, Password, Role, Status, Name, Phone, Email);
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //Search user account by Email
    public boolean searchByEmail(String email) {
        try {
            String SQL = "select * from User_Account where email = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                ps.close();
                rs.close();
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public User_Account checkLogin(String username, String password) {
        try {
            String SQL = "Select * from User_Account where username=? and password=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int ID = rs.getInt("ID");
                boolean Role = rs.getBoolean("role");
                boolean Status = rs.getBoolean("status");
                String Name = rs.getString("name");
                String Phone = rs.getString("phone");
                String Email = rs.getString("Email");
                ps.close();
                rs.close();
                return new User_Account(ID, username, password, Role, Status, Name, Phone, Email);
            }
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //Add new user to Database
    public User_Account registerAccount(String username, String password, String name, String phone, String email) {
        try {
            String SQL = "insert into User_Account(username, password, name, phone, email)"
                    + " values(?, ?, N'" + name + "', ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.executeUpdate();
            ps.close();
            return search(username);
        } catch (SQLException ex) {
            Logger.getLogger(User_AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
