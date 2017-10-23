<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sign up</title>
</head>
<body>
<h2><a href="Home.jsp">home</a></h2>
<center>
<font color="green">
<%
String m=(String)request.getAttribute("msg");
if(m!=null)
	out.println(m);
%>
<pre>
</font>
<h2>Enter your Details </h2>

<form action="SignUpController" method="post">
email id: 	<input type="email" name="cid" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" required/>
<br/>
Name:		<input type="text" name="cname" title="Only Alphabets allow" pattern="[a-zA-Z][a-zA-Z ]{4,}" required/>
<br/>
Password :	<input type="text" name="cpass" required/>
<br/>
Mobile no:	<input type="text" name="cmob"  maxlength="10" title="Only numeric allow" pattern="[0-9]{10}" required/>
<br/>
Address:	<textarea name="cadd" required ></textarea>
<br/>
	<input type="submit" value="create Account" />
</form>
</pre>
</center>
</body>
</html>