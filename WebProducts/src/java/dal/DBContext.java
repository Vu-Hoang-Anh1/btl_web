
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    protected Connection connection;

    public DBContext() {
        try{
//            String url = "jdbc:sqlserver://localhost:1433;databaseName=DatabaseWeb1";
//            String username = "sa";
//            String password = "123456";
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            String url = "jdbc:mysql://localhost:3306/DatabaseWeb";
            String username = "root";
            String password = "123456";
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
    
}
