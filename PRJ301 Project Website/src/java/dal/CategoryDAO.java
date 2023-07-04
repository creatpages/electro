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

public class CategoryDAO extends DBContext{
    
    //Search Category with Name
    public Category search(String categoryName){
        try {
            String SQL = "select * from Category where name=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, categoryName);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                return new Category(ID, Name);
            }
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }
}
