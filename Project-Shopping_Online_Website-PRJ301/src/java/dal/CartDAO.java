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
import model.Cart_Item;

/**
 * @author duy20
 */
public class CartDAO extends DBContext {
    
    public List<Cart_Item> getCart(int userID){
        List<Cart_Item> list = new ArrayList<>();
        try {
            String SQL = "select * from Cart_Item where UserID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                int ID = rs.getInt("ID");
                int proDetailID = rs.getInt("ProDetailID");
                int quantity = rs.getInt("Quantity");
                list.add(new Cart_Item(ID, userID, proDetailID, quantity));
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean addToCart(int userID, int proDetailID, int quantity) {
        try {
            String SQL = "insert into Cart_Item values(?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userID);
            ps.setInt(2, proDetailID);
            ps.setInt(3, quantity);
            ps.executeUpdate();
            ps.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean isInCart(int userID, int proDetailID) {
        try {
            String SQL = "select * from Cart_Item where UserID=? and ProDetailID=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userID);
            ps.setInt(2, proDetailID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                ps.close();
                rs.close();
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
