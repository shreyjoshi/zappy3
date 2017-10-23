package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import db.DBConnector;


public class AddPatientDAO 
{
    public int insertPatient(String pname,String pgender,String paddress,String pdob,String pmobno,String pemail,String ppass)
    {
        int i=0;
        Connection con=DBConnector.getConnection();
        try
        {
            PreparedStatement pst=con.prepareStatement("insert into patient values(?,?,?,?,?,?,?)");
            pst.setString(1, pname);
            pst.setString(2, pgender);
            pst.setString(3, paddress);         
            pst.setString(4, pdob);
            pst.setString(5, pmobno);
            pst.setString(6, pemail);
            pst.setString(7, ppass);
                       
            i=pst.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }

        return i;
    }
}

