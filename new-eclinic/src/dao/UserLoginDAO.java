/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.sql.ResultSet;

import beans.UserDTO;
import db.DBConnector;

import java.sql.SQLException;
import java.sql.Statement;

public class UserLoginDAO 
{
    Statement st=db.DBConnector.getStatement();
    public void loginVerify(UserDTO user) throws SQLException
    {
        String query="select ppass from patient where pemail='"+user.getUsername()+"'";

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
