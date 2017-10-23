<%-- 
    Document   : doctorregistration
    Created on : May 3, 2016, 8:45:30 PM
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
	background-image:url("image/hmm.jpg");
    padding: 40px;
	font: Berlin Sans FB Demi;
	font: s0px;
    }`
h1
   {
   font-family: "Bodoni MT Black";
   font-size:30px;
   }	
</style>
<body>
<center>
<h1><b>Please sign up here..</b></h1>
</center>
<div>
    <center>    
  <form action="AddDoctor" method="post">
     
     <br>
  

    <label for=""><b>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></label>
    <input type="text" id="fname" name="Name"/>
	<br>

	 <label for=""><b>Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
    <input type="radio" name="gender" value="male" > Male
	<input type="radio" name="gender" value="Female"/> Female<br>
	<br>
	
	<label for=""><b>Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
     <select id="categ" name="category">
     					<option value="null">---select---</option>
                            <option>cardiologists</option>
                            <option>dentists</option>
                            <option>dermatologists</option>
                            <option>gastroenterologists</option>   
                            <option>gynaecologists</option>
                            <option>orthopedic</option>
                            <option>general surgeon</option>
                        </select><br/>
	<label for=""><b>Qualification:</b></label>
    <input type="text" id="lname" name="qualification"/>
	<br>
  
    <label for=""><b>Mobile No.:&nbsp;&nbsp;&nbsp;</b></label>
    <input type="text" id="lname" name="Mobile No."/>
	<br>
	
	<label for=""><b>Email Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
    <input type="text" id="lname" name="Email Id"/>
	<br>
	
	<label for=""><b>Password:&nbsp;&nbsp;&nbsp;</b></label>
    <input type="text" id="lname" name="Password"/>
	<br>
	
    <input type="submit" value="Sign Up"/>
	
  </form>
  </center>
</div>

</body>
</html>
