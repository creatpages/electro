/*
 *     DuyDuc94
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {
    public Connection con;
    public DBContext(){
        try {
            //Change the username password and url to connect your own database
            String username = "sa";
            String password = "sa";                                   
            String xServer = "localhost";
            String xPort = "1433";
            String xDbName = "PRJ_ShoppingOnlineWebsite";
            String url = "jdbc:sqlserver://" + xServer + ":" + xPort + ";databaseName=" + xDbName;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
