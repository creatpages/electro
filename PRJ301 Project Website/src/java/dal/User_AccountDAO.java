/*
 *     DuyDuc94
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

public class User_AccountDAO extends DBContext {

    String tableName = "User_Account";

    public User_Account checkLogin(String username, String password) {
        try {
            String SQL = "Select * from " + tableName + " where username=? and password=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int ID = rs.getInt("ID");
                String Username = rs.getString("username");
                String Password = rs.getString("password");
                boolean Role = rs.getBoolean("role");
                boolean Status = rs.getBoolean("status");
                String Phone = rs.getString("phone");
                String Email = rs.getString("Email");
                return new User_Account(ID, Username, Password, Role, Status, Phone, Email);
            }
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
