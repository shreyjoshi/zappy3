<%-- 
    Document   : searchbyname
    Created on : May 3, 2016, 6:50:43 PM
    Author     : shrey
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-clinic</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search doctor here...</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <a href="searchhome.jsp" class="btn btn-info btn-lg">
                    <span class="glyphicon glyphicon-home" align="left"></span> go back
                </a> 
    </head>
    <body>
        <%
            String dname = (String) request.getParameter("dname");
            try 
            {
                Statement st = DBConnector.getStatement();
                ResultSet rs = st.executeQuery("select * from doctor where dname='"+dname+"'");
                if(rs.next())
                {
           %>       
           <h1>doctor's available with us are :</h1>
              <table width="338" border="0">
                                    <tr>
                                        <td height="40"><div class="style3">Doctor Name:</div></td>
                                        <td>
                                            <input type="text" disabled="disabled" value="<%=rs.getString(1)%>" name="dname" />
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td height="40"><div class="style3">Doctor's Category:</div></td>
                                        <td><input type="text" disabled="disabled" name="category" value="<%=rs.getString(3)%>" /></td>
                                    </tr>                                    
                                    <tr>
                                        <td height="40"><div class="style3">Doctor's qualification:</div></td>
                                        <td>
                                            <input type="text" disabled="disabled" value="<%=rs.getString(4)%>" name="dqual" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40"><div class="style3">doctor's mobile no.:</div></td>
                                        <td><input type="text" disabled="disabled" value="<%=rs.getString(5)%>" name="dmobno" /></td>
                                    </tr>
                                    <tr>
                                        <td height="40"><div class="style3">doctor's email:</div></td>
                                        <td><input type="text" disabled="disabled" value="<%=rs.getString(6)%>" name="demail" /></td>
                                    </tr>
              </table>    
                   <%   }
                
                else
                {                                      
                   %>
                           <h2>No Such doctor found :</h2>
                            <h2>Please Recheck the name :</h2>
             <%                                    
                        }
                    } 
                    catch (SQLException e) 
                    {
                        System.out.println(e);
                    }

               %>
    </body>
</html>
