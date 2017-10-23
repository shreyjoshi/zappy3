package dao;

import beans.UserDTO;
import db.DBConnector;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DoctorLoginDAO 
{
    Statement st=DBConnector.getStatement();
    public void loginVerify(UserDTO user) throws SQLException
    {
        String query="select dpass from doctor where demail='"+user.getUsername()+"'";

        ResultSet rs=st.executeQuery(query);
       
        if(rs.next())
        {
            if(rs.getString(1).equals(user.getPassword()))
            {
                user.setLogin(true);
            }
            else
            {
                user.setLogin(false);
            }
        }
    }
    
}
