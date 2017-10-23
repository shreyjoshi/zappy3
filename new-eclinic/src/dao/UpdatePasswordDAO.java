/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import db.DBConnector;
import java.sql.SQLException;
import java.sql.Statement;

public class UpdatePasswordDAO 
{
    public int changePassword(String userid,String password, String currentPassword)
    {
        int i=0;
        Statement st=DBConnector.getStatement();
        try
        {
            String query="update patient set ppass='"+password+"' where pemail='"+userid+"' and ppass='"+currentPassword+"'";
            
            i=st.executeUpdate(query);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return (i);
    }
}
