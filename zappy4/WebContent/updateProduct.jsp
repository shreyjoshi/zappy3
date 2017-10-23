<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Update</title>
</head>
<body>
<center>${updateinfo}</center>
<h1><a href="AdminHome.jsp">dashboard</a></h1><br/><br/><br/>

<%@page import="java.util.ArrayList,beans.ProductView" %>
<%
ArrayList<ProductView> list=(ArrayList)request.getAttribute("LIST");
if(!list.isEmpty())
{
%>
<center>
<table border="6">
<% int i=0;
for(ProductView cc:list)
{
	if(i%4==0)
	{
%>
<tr>
<td>
</center>
<pre>
	<form action="UpdateImage" method="post" enctype="multipart/form-data">
		<input type="hidden" name="pid" value="<%=cc.getPid() %>" required/><br/>
		<image src="images/<%=cc.getImage() %>" height="200" width="200"	/>
		<input type="file" name="file" accept=".jpg" value="<%=cc.getImage() %>" /><br/><br/>
		 <input type="submit" value="change image" /><br/>
	</form>	
	<form action="UpdateData" method="post">
		<input type="text" name="pid" value="<%=cc.getPid() %>" required/><br/>
		<input type="text" name="pname" value="<%=cc.getPname() %>" required/><br/>
		<input type="text" name="price" value="<%=cc.getPrice() %>" title="Only numeric allow" pattern="^\d+(?:\.\d{2})" required/><br/>
		<input type="text" name="pweight" value="<%=cc.getWeight() %>"	 title="Only numeric allow" pattern="^[0-9]*$" required placeholder="in grams" /><br/>
		<input type="text" name="pdesc" value="<%=cc.getDesc() %>" required/><br/><br/>
	  <input type="submit" value="update data" />
	</form>
</pre>
</td>
<%	}
	else{ %>
<td>
<center>
	<form action="UpdateImage" method="post" enctype="multipart/form-data">
	<input type="text" name="pid" value="<%=cc.getPid() %>" required/><br/>
	<image src="images/<%=cc.getImage() %>" height="200" width="200"	/>
	<input type="file" name="file" accept=".jpg" value="<%=cc.getImage() %>" /><br/><br/>
	 <input type="submit" value="change image" />
	</form>
	
<pre>	
	<form action="UpdateData" method="post">
		<input type="text" name="pid" value="<%=cc.getPid() %>" required/><br/>
		<input type="text" name="pname" value="<%=cc.getPname() %>"  required/><br/>
		<input type="text" name="price" value="<%=cc.getPrice() %>" title="Only numeric allow" pattern="^\d+(?:\.\d{2})" required/><br/>
		<input type="text" name="pweight" value="<%=cc.getWeight() %>"	 title="Only numeric allow" pattern="^[0-9]*$" required placeholder="in grams" /><br/>
		<input type="text" name="pdesc" value="<%=cc.getDesc() %>" required/><br/><br/>
	  <input type="submit" value="update data" />
	</form>
</pre>
</center>
</td>
<%
if(i%4==3)
{%>
</tr>
<%}
}
	i++; %>
<%
}%>
</table>
</center>
<%
}
else{
%>
<h2>product not found</h2>
<%} %>
</body>
</html>