<%-- 
    Document   : index
    Created on : May 3, 2016, 2:35:39 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <title>e-clinic</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">            
  <img src="image/ECLINICLOGO.jpg" class="img-rounded" alt="logo" width="100%" height="150"> 
</div>

<nav class="navbar navbar-inverse">

  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.html">Home</a>
    </div>

 
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Doctors' with us</a>
    </div>


    <ul class="nav navbar-nav navbar-right">
      <li><a href="contactus.html"><span class="glyphicon glyphicon-user"></span>Contact us</a></li>
      <li><a href="aboutus.html"><span class="glyphicon glyphicon-log-in"></span>About us</a></li>
    </ul>
  </div>
</nav>


 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 40%;
      margin: auto;
  }
  </style>
</head>


<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="image/image1.jpg" alt="image" width="100" height="150">
      </div>
	  
    
      <div class="item">
        <img src="image/b.jpg" alt="image" width="100" height="150">
      </div>
    
      <div class="item">
        <img src="image/h.jpg" alt="image" width="100" height="150">
      </div>

      <div class="item">
        <img src="image/a.jpg" alt="image" width="100" height="150">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div class="container-fluid">
<br>
<br><br>

<div class="row">

<div class="col-sm-4">

<center>
<a href="signindoc.jsp">

	<i class="fa fa-user-md fa-5x" style="color:black"></i>
      <h4 style="color:black">Doctor Login</h4></a>
	  </center>
    </div>

<div class="col-sm-4">
         <center>
	    <a href="signinpatient.jsp"> <i class="fa fa-user fa-5x" style="color:black"></i>
            <h4 style="color:black">Patient Login</h4></a>
	  </center>
    </div>
<div class="col-sm-4">
<center>
<a href="searchhome.jsp">
      <i class="fa fa-search fa-5x" style="color:black"></i>
      <h4 style="color:black">Search</h4></a>
	  </center>
    </div>
<div class="col-sm-6">
</div>


</div>
</body>
</html>






