package db;
import java.sql.*;

public class DBConnector 
{
    static Connection con=null;
    static Statement st=null;

    public DBConnector() 
    {
        
    }
    static
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Loaded");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-clinic","root","");
            System.out.println("Connected");
            st=con.createStatement();
        }
        catch(ClassNotFoundException e)
        {
            System.out.println(e);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    }

    public static Connection getConnection() 
    {
        return con;
    }

    public static Statement getStatement() 
    {
        return st;
    }
    
}

