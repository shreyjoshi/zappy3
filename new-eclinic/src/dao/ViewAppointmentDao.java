package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.Appointment;
import db.DBConnector;

public class ViewAppointmentDao {
	public ArrayList<Appointment> getAppointment(String username)
    {
		String dname="";
		ArrayList<Appointment> list=new ArrayList<>();
        int i=0;
        Connection con=DBConnector.getConnection();
       // System.out.println(username+" in daoooo");
        try
        {
        	PreparedStatement pst=con.prepareStatement("select dname from doctor where demail=?");
        	pst.setString(1, username);
            ResultSet rs1=pst.executeQuery();
            if(rs1.next())
            {
            	dname=rs1.getString("dname");
            }
         // System.out.println(dname+" kdncedsnc");
            PreparedStatement pst1=con.prepareStatement("select * from appointment where dname=?");
            pst1.setString(1, dname);
            ResultSet rs=pst1.executeQuery();
            while(rs.next())
            {
            	Appointment ad=new Appointment();
	            ad.setPname(rs.getString("pname"));
	            ad.setDname(rs.getString("dname"));
	            ad.setDcategory(rs.getString("dcategory"));
	            ad.setAppdate(rs.getString("appdate"));
	            ad.setApptime(rs.getDouble("apptime"));
	            ad.setAppno(rs.getInt("appno"));
	            list.add(ad);
            
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }

        return list;
    }
}
