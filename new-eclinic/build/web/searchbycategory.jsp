<%-- 
    Document   : searchdoctor
    Created on : May 3, 2016, 4:11:14 PM
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
        <title>search doctor here...</title>
    </head>
    <center>
        <body>
            
            <%
                String category = (String) request.getParameter("category");
                String mailid ="";
                String name ="";
                String gender="";
                String qual="";
                String mobile = "";
                String password = "";  
                try 
                {
                    int count1 = 0 ;
                    Statement st = DBConnector.getStatement();
                    ResultSet rs1 = st.executeQuery("select * from doctor where category='"+category+"'");
                    if (rs1.next()) 
                    {
                        count1++;
                        name = rs1.getString(1);
                        gender = rs1.getString(2);
                        category = rs1.getString(3);
                        qual = rs1.getString(4);
                        mobile = rs1.getString(5);
                        mailid = rs1.getString(6);
                    }   
                    
                    System.out.println("Count1 = "+count1);
                  
                    
                    %>
        <h1>view doctor based on desired category</h1> 
                  <%
                         if (count1>0) {
                  %>
                   <h2>Doctor Information:</h2>
                            <table width="338" border="0">
                                <tr>
                                    <td height="40"><div class="style3">doctor name:</div></td>
                                    <td>
                                        <input type="text" disabled="disabled" value="<%=name%>" name="rNumber" />
                                    </td>

                                </tr>
                                <tr>
                                    <td height="40"><div class="style3">doctor gender:</div></td>
                                    <td><input type="text" disabled="disabled" name="vNumber" value="<%=gender%>" /></td>
                                </tr>                                    
                                <tr>
                                    <td height="40"><div class="style3">category:</div></td>
                                    <td>
                                        <input type="text" disabled="disabled" value="<%=category%>" name="fullName" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40"><div class="style3">qualification:</div></td>
                                    <td><input type="text" disabled="disabled" value="<%=qual%>" name="engineNumber" /></td>
                                </tr>
                                <tr>
                                    <td height="40"><div class="style3">contact no:</div></td>
                                    <td><input type="text" disabled="disabled" value="<%=mobile%>" name="chassisNumber" /></td>
                                </tr>

                                <tr>
                                    <td height="40"><div class="style3">E-Mail ID:</div></td>
                                    <td><input type="text" disabled="disabled" value="<%=mailid%>" name="mailid" /></td>
                                </tr>
                               
                            </table>
                            <%
                                }
                                else
                                {
                            %>
                                <h2>No Such doctor Found:</h2>
                            <%
                                }
                               
                            
                                  }   catch (SQLException e) 
                                           {
                                    System.out.println(e);
                                }

                            %>
 
    
    </body>
     </center>
</html>
