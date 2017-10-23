<%-- 
    Document   : searchdoctor
    Created on : May 3, 2016, 4:11:14 PM
    Author     : shrey
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="beans.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search doctor here...</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <a href="searchhome.jsp" class="btn btn-info btn-lg">
                    <span class="glyphicon glyphicon-home" align="left"></span> go back
                </a> 
        <body>
       <center>     
            <%
            	ArrayList<UserDTO> list=new ArrayList<>();
                String category = (String) request.getParameter("category"); 
                try 
                {
                    int count1 = 0 ;
                    Statement st = DBConnector.getStatement();
                    ResultSet rs1 = st.executeQuery("select * from doctor where category='"+category+"'");
                    while (rs1.next()) 
                    {
                        count1++;
                        UserDTO ud=new UserDTO();
                        ud.setDname(rs1.getString("dname"));
                        ud.setDgender(rs1.getString("dgender"));
                        ud.setCategory(rs1.getString("category"));
                        ud.setDqual(rs1.getString("dqual"));
                        ud.setDmobno(rs1.getString("dmobno"));
                        ud.setDemail(rs1.getString("demail"));
                        list.add(ud);
                    }   
                    
                    System.out.println("Count1 = "+count1);
                  
                    
                    %>
        <h1>view doctor based on desired category</h1> 
                  <%
                         if (!list.isEmpty()&&count1>0) {
                        	 for(UserDTO ud:list){
                  %>
                   <h2>Doctor Information:</h2>
                            <table width="338" border="0">
                                <tr>
                                    <td height="40"><div class="style3">doctor name:</div></td>
                                    <td>
                                        <input type="text" disabled="disabled" value="<%=ud.getDname()%>" name="rNumber" />
                                    </td>

                                </tr>
                                <tr>
                                    <td height="40"><div class="style3">doctor gender:</div></td>
                                    <td><input type="text" disabled="disabled" name="vNumber" value="<%=ud.getDgender()%>" /></td>
                                </tr>                                    
                                <tr>
                                    <td height="40"><div class="style3">category:</div></td>
                                    <td>
                                        <input type="text" disabled="disabled" value="<%=ud.getCategory()%>" name="fullName" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40"><div class="style3">qualification:</div></td>
                                    <td><input type="text" disabled="disabled" value="<%=ud.getDqual()%>" name="engineNumber" /></td>
                                </tr>
                                <tr>
                                    <td height="40"><div class="style3">contact no:</div></td>
                                    <td><input type="text" disabled="disabled" value="<%=ud.getDmobno()%>" name="chassisNumber" /></td>
                                </tr>

                                <tr>
                                    <td height="40"><div class="style3">E-Mail ID:</div></td>
                                    <td><input type="text" disabled="disabled" value="<%=ud.getDemail()%>" name="mailid" /></td>
                                </tr>
                               
                            </table>
                            <%
                                }
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
 
      </center>
    </body>
   
</html>
