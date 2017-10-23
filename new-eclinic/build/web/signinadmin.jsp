<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <title>patient login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
     <img src="image/doc.jpg" alt="Bird">
    <h3>We're happy to help you...</h3>
  </div>
<center>
	<div class="container-narrow" style="width:400px">
            <form action="AdminLogin" class="container-narrow" method="post"> 
                <br>
                <h2 class="form-signin-heading">....ADMIN Please sign in....</h2>
                <br><br>
                <label for="inputEmail" class="sr-only">Email address</label> 
                <input type="text" name="username" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                <br><br>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                <br>
                <button type="button"  class="btn btn-success"><a href="adminregistration.jsp">New User  </a></button>
            </form>

    </div> 

</center>
  </body>
</html>

