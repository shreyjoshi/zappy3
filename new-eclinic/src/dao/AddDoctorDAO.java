/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import db.DBConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "AddDoctorDAO", urlPatterns = {"/AddDoctorDAO"})

public class AddDoctorDAO 
{
    public int insertDoctor(String dname,String dgender,String category,String dqual,String dmobno,String demail,String dpass)
    {
        int i=0;
        Connection con=DBConnector.getConnection();
        try
        {
            PreparedStatement pst=con.prepareStatement("insert into doctor(dname,dgender,category,dqual,dmobno,demail,dpass) values(?,?,?,?,?,?,?)");
            pst.setString(1, dname);
            pst.setString(2, dgender);
            pst.setString(3, category);
            pst.setString(4, dqual);
            pst.setString(5, dmobno);
            pst.setString(6, demail);
            pst.setString(7, dpass);
             
            i=pst.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }

        return i;
    }
}

