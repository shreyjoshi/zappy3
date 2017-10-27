<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>search booked appointment</title>
</head>
<body>
<style>
.bg-1 { 
    background-color: #428bca;
    color: #ffffff;
}
</style>
  <div class="container-fluid bg-1 text-center">
    <h3>Welcome To E-CLINIC!</h3>
    <center><img src="image/doc.jpg" alt="Bird"></center> 
    <h3>We're happy to help you...</h3>
  </div>
<center>
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
</center>
  </body>
</html>