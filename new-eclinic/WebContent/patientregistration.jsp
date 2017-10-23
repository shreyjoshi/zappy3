<%-- 
    Document   : patientregistration
    Created on : May 3, 2016, 7:59:29 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
input[type=text], select {
    width: 40%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 10px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}


div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 40px;
    }
h3
   {
   font-family: "Times New Roman", Times, serif;
   font-size: 14px;
   }	
</style>
<body>
<center>
<h1><b>Please sign up here..</b></h1>
</center>
<div>
    <form action="AddPatient" method="post">
   <center>
   <br>
  

    <label for=""><b>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
    <input type="text" id="fname" name="Name">
	<br>

    <label for=""><b>Address:&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
    <input type="text" id="lname" name="Address">
	<br>

	 <label for=""><b>Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
    <input type="radio" id="lname" name="Gender" value="male" /> male &nbsp;
    <input type="radio" id="lname" name="Gender" value="female"/> female
	<br>
	
	<label for=""><b>DOB:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
    <input type="text" id="lname" name="DOB">
	<br>
  
    <label for=""><b>Mobile No.:</b></label>
    <input type="text" id="lname" name="Mobile No.">
	<br>
	
	<label for=""><b>Email Id:&nbsp;&nbsp;&nbsp;</b></label>
    <input type="text" id="lname" name="Email Id">
	<br>
	
	<label for=""><b>Password:&nbsp;</b></label>
    <input type="password" id="lname" name="Password">
	<br>
	
        <input type="submit" value="Sign Up">
	
 </form>
     </center>
    </div>
 </form>
</body>
</html>


