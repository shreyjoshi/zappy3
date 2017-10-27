package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.Appointment;
import db.DBConnector;

public class BookedAppointmentDao {

	public ArrayList<Appointment> checkPreviousAppointment(String pid,String pname)
	{
		System.out.println(pid+" andnddnd "+pname);
		ArrayList<Appointment> list=new ArrayList<>();
		Connection con=DBConnector.getConnection();
		try 
		{
			PreparedStatement ps=con.prepareStatement("select a.* from appointment a,patient p where a.pname=? and p.pemail=?");
			ps.setString(1, pname);
			ps.setString(2, pid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Appointment a=new Appointment();
				a.setAppno(rs.getInt("a.appno"));
				a.setPname(rs.getString("a.pname"));
				a.setDname(rs.getString("a.dname"));
				a.setDcategory(rs.getString("a.dcategory"));
				a.setAppdate(rs.getString("a.appdate"));
				a.setApptime(rs.getDouble("a.apptime"));
				list.add(a);
			}
		}catch(SQLException e)
		{
			System.out.println(e);
		}
		return list;
		
	}
}
