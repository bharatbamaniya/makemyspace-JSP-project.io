package databaseConnection;
import java.sql.*;
public class databaseConnection {
    public static Connection initializeDatabase() throws SQLException, ClassNotFoundException 
    {

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/getrooms","root","");
        return conn;
    }
}