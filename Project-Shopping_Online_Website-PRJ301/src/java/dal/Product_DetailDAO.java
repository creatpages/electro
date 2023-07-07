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

public class Product_DetailDAO extends DBContext {

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
