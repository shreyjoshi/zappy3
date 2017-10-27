<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>booked appointment</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<style>
.bg-1 { 
    background-color: #428bca;
    color: #ffffff;
}
</style>
  <div class="container-fluid bg-1 text-center">
    <h3>Welcome To E-CLINIC!</h3>
     <img src="image/doc.jpg" alt="Bird">
    <h3>We're happy to help you...</h3>
  </div>
  
<body>
<center>
<h1>${bookedmsg}</h1>
<%@page import="java.util.ArrayList,beans.Appointment" %>
<% ArrayList<Appointment> list=(ArrayList)request.getAttribute("bookedappointments");
	if(!list.isEmpty())
	{
		for(Appointment a:list)
		{
%>	
<strong>
			<%=a.getAppno() %><br/>
			<%=a.getPname() %><br/>
			<%=a.getDname() %><br/>
			<%=a.getDcategory() %><br/>
			<%=a.getAppdate() %><br/>
			<%if(a.getApptime()%1.0==0.0)
				{
					%>
					<%=a.getApptime() %>0
					<%
				}else{
					double x=a.getApptime()-0.2;
					%>
					<%=x %>0
					<%
				}
				%><br/>
</strong>
<%
		}
	}else{
%>
	<div class="container-narrow" style="width:400px">
            <form action="BookedAppointment" class="BookedAppointment" method="post"> 
                <br>
                <h2 class="form-signin-heading">Please enter patient name</h2>
                <br><br>
                <label for="inputName" class="sr-only">Name</label> 
                <input type="text" name="pname" id="inputName" class="form-control" placeholder="patient's name" required autofocus>
                <br><br>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Search</button>
                <br>
                <button type="button"  class="btn btn-success"><a href="booking.jsp">New Appointment</a> </button> 
            </form>

    </div> 
    <%} %>
</center>
  </body>
</html>
