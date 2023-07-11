/*
 * DuyDuc94
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Address;

/**
 * @author duy20
 */
public class AddressDAO extends DBContext {

    public List<Address> getAddressList(int userID) {
        List<Address> list = new ArrayList<>();
        try {
            String SQL = "select ad.ID, ad.Address, ad.City, ua.IsDefault from Address ad\n"
                    + "join User_Address ua on ad.ID = ua.AddressID\n"
                    + "where ua.UserID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String address = rs.getString("Address");
                String city = rs.getString("City");
                boolean isDefault = rs.getBoolean("IsDefault");
                list.add(new Address(ID, address, city, userID, isDefault));
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Address getFullAddress(int addressID) {
        try {
            String SQL = "select ad.ID, ad.Address, ad.City, ua.UserID, ua.IsDefault from Address ad\n"
                    + "join User_Address ua on ad.ID = ua.AddressID\n"
                    + "where ad.ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, addressID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String address = rs.getString("Address");
                String city = rs.getString("City");
                int userID = rs.getInt("UserID");
                boolean isDefault = rs.getBoolean("IsDefault");
                return new Address(addressID, address, city, userID, isDefault);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void addAddress(String address, String city, int userID) {
        try {
            String SQL = "insert into Address values(?,?)";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setNString(1, address);
            ps.setNString(2, city);
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                int addressID = rs.getInt(1);
                rs.close();
                ps.close();
                String xSQL = "";
                if(isFirstAddress(userID)){
                    xSQL = "insert into User_Address values(?, ?, 1)";
                }else{
                    xSQL = "insert into User_Address values(?, ?, 0)";
                }
                PreparedStatement xps = con.prepareStatement(xSQL);
                xps.setInt(1, userID);
                xps.setInt(2, addressID);
                xps.executeUpdate();
                xps.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean isFirstAddress(int userID) {
        try {
            String SQL = "select * from User_Address where UserID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                rs.close();
                ps.close();
                return false;
            }
            rs.close();
            ps.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public void updateAddress(int addressID, String address, String city) {
        try {
            String SQL = "update Address set Address = ?, City = ?\n"
                    + "where ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setNString(1, address);
            ps.setNString(2, city);
            ps.setInt(3, addressID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean removeAddress(int addressID) {
        try {
            String SQL = "delete from User_Address\n"   //Tách ra làm 2 statement nếu lỗi
                    + "where AddressID = ?\n"
                    + "delete from Address\n"
                    + "where ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, addressID);
            ps.setInt(2, addressID);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean removeDefault(int oldAddressID, int newAddressID) {
        if (changeDefault(oldAddressID, newAddressID)) {
            if (removeAddress(oldAddressID)) {
                return true;
            }
        }
        return false;
    }

    public boolean setDefault(int addressID) {
        try {
            String SQL = "update User_Address set IsDefault = 1\n"
                    + "where AddressID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, addressID);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean removeDefault(int addressID) {
        try {
            String SQL = "update User_Address set IsDefault = 0\n"
                    + "where AddressID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, addressID);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean changeDefault(int oldAddressID, int newAddressID) {
        if (removeDefault(oldAddressID)) {
            if (setDefault(newAddressID)) {
                return true;
            }
        }
        return false;
    }
}
