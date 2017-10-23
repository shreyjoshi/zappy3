package dao;

import db.DBConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddAppointmentDAO 
{
    public int insertAppointment(String pname,String dname,String category,String date,double apptime)
    {
        int i=0;
        Connection con=DBConnector.getConnection();
        try
        {
            PreparedStatement pst=con.prepareStatement("insert into appointment(pname,dname,dcategory,appdate,apptime) values(?,?,?,?,?)");
            pst.setString(1, pname);
            pst.setString(2, dname);
            pst.setString(3, category);
            pst.setString(4, date);
            pst.setDouble(5,apptime);
            i=pst.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }

        return i;
    }
}
