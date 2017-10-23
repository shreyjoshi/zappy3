<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>E-clinic</title>
  <meta charset="utf-8">
  <meta name="viewport"content="width=device-width, initial-scale=1">
  <link rel="stylesheet"href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<style>
#mypage{
background-image:url(image/profile.jpg);

width=100%;
height:auto;
margin:auto;
background-size:cover;
background-repeat:no-repeat;
background-size: 1400px 680px;

}

</style>
<body id="mypage">

 
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
 
    </div>
    <ul class="nav navbar-nav">
     
      <li class="active" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"  href="#">Home <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="doctorprofile.jsp">View Profile</a></li>
          <li><a href="changepassword.jsp">Change Password</a></li>
        
        </ul>
      </li>
	   <ul class="nav navbar-nav">
      <li class="active"><a href="viewappointment1.jsp">Appointments</a></li>


    
    <ul class="nav navbar-nav navbar-right">
  
      <li class="active"><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
    </ul>
   </div>
         </nav>
     <div id="column_box">

                        <div id="columnCenter">
                            <h2>View an Existing Registration:</h2>
                            <table width="338" border="0">
                                <form action="viewappointment1.jsp" method="post">
                                    <tr>
                                        <td height="40"><div class="style3">Patient name:</div></td>
                                        <td><input type="text" name="pname" /></td>
                                    </tr>
                                    <tr>
                                        <td height="40"><div class="style3">Doctor name:</div></td>
                                        <td><input type="text" name="dname" /></td>
                                    </tr>
                                    <tr>
                                        <td height="40">&nbsp;</td>
                                        <td><input type="submit" value="Submit" /></td>
                                    </tr>  
                                </form>
                        </div>
                            </table>
                                
    
                        </body>
</html>
    
    
    
    
    
    
    
    
    