<%-- 
    Document   : changepassword
    Created on : May 3, 2016, 7:50:25 PM
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
<h1><b>Change Your Password</b></h1>
</center>
<div>
    <form action="UpdatepPasswordUser" method="post">
  <br>
  

    <label for=""><b>Old Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
    <input type="password"  name="currentPassword">
	<br>

    <label for=""><b>New Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
    <input type="password"  name="newPassword">
	<br>

	 <label for=""><b>Confirm Password:</b></label>
    <input type="password"  name="cPassword">
	<br>
	
  
    <input type="submit" value="Change">
	
    <input type="submit" value="Discard">
  </form>
  </center>
</div>

</body>
</html>

