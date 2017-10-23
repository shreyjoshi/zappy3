/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import db.DBConnector;
import dto.UserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SearchByNameDAO {
     Statement st=DBConnector.getStatement();
     public void findDoctor(UserDTO user) throws SQLException
             {
            String query="select * from doctor where demail='"+user.getUsername()+"'";

           ResultSet rs=st.executeQuery(query);
       
        if(rs.next())
        {
                    String name = rs.getString(1);
                    String gender = rs.getString(2);
                    String category = rs.getString(3);
                    String qual = rs.getString(4);
                    String mobile = rs.getString(5);
                    String mailid = rs.getString(6);
        }
    }
}
