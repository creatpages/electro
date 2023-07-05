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
import model.Product;

public class WishlistDAO extends DBContext {

    public List<Product> getWishlist(int UserID) {
        List<Product> list = new ArrayList<>();
        ProductDAO proDAO = new ProductDAO();
        try {
            String SQL = "select * from Wishlist where UserID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, UserID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ProID = rs.getInt("ProID");
                list.add(proDAO.getProducts(ProID));
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list.isEmpty() ? null : list;
    }

    //True if add to wishlist success
    public boolean addToWishlist(int userID, int proID) {
        try {
            //Check if wishlist is exist
            String SQL = "select * from Wishlist where UserID = ? and ProID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userID);
            ps.setInt(2, proID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return false;
            } else {
                //Add wishlist to database
                String xSQL = "insert into Wishlist values(?, ?)";
                ps = con.prepareStatement(xSQL);
                ps.setInt(1, userID);
                ps.setInt(2, proID);
                ps.executeUpdate();
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(User_AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public void removeWishlist(int userID, int proID){
        try {
            String SQL = "delete from Wishlist where UserID = ? and ProID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userID);
            ps.setInt(2, proID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(WishlistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
