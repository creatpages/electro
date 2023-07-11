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

    public List<Cart_Item> getCart(int userID) {
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

    public Cart_Item getCartItem(int userID, int proDetailID) {
        try {
            String SQL = "select * from Cart_Item where UserID = ? and ProDetailID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userID);
            ps.setInt(2, proDetailID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int ID = rs.getInt("ID");
                int quantity = rs.getInt("Quantity");
                ps.close();
                rs.close();
                return new Cart_Item(ID, userID, proDetailID, quantity);
            }
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

    public boolean updateToCart(int userID, int proDetailID, int quantity) {
        try {
            String SQL = "update Cart_Item set Quantity = ?\n"
                       + "where UserID = ? and ProDetailID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, quantity);
            ps.setInt(2, userID);
            ps.setInt(3, proDetailID);
            ps.executeUpdate();
            ps.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public int canAddMore(int userID, int proDetailID, int quantity) {
        try {
            String SQL = "select ci.Quantity as 'quanInCart', pdt.Quantity as 'quanRemain' from Cart_Item ci\n"
                    + "join Product_Detail pdt on ci.ProDetailID = pdt.ID\n"
                    + "where ci.UserID = ? and ci.ProDetailID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userID);
            ps.setInt(2, proDetailID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int quanInCart = rs.getInt("quanInCart");
                int quanRemain = rs.getInt("quanRemain");
                if ((quanRemain - quanInCart) >= quantity) {
                    ps.close();
                    rs.close();
                    return quanInCart + quantity;   //New quantity
                }else{
                    return -1;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
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
    
    public boolean removeAllCart(int userID){
        try {
            String SQL = "delete from Cart_Item where UserID=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userID);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Failed at remove all cart of UsedID = "+userID);
        return false;
    }
    
    public void removeCart(int cartID){
        try {
            String SQL = "delete from Cart_Item where ID=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, cartID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getImage(int cartID) {
        try {
            String SQL = "select p.Image from Cart_Item ci\n"
                    + "join Product_Detail pdt on ci.ProDetailID = pdt.ID\n"
                    + "join Product p on pdt.ProID = p.ID\n"
                    + "where ci.ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, cartID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String image = rs.getString("Image");
                ps.close();
                rs.close();
                return image;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "Unknown";
    }
}
