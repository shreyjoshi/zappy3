<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eclinic search home</title>
          <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body>
          <div class="container">
             <div class="page-header">
               <img src="image/ECLINICLOGO.jpg" class="img-rounded" alt="welcome" width="100%" height="180">
            </div>
      
              <a href="patientprofile.jsp" class="btn btn-info btn-lg">
                    <span class="glyphicon glyphicon-home" align="left"></span> go back
                </a>
          </div>
        <center>
        <h1>Welcome to e-clinic search page</h1>
        <fieldset> 
            <div id="column1">
           <strong>search by doctor's category : </strong><br>
           <form action="searchbycategory.jsp" method="post">
                <input list="category" name="category">
                 <datalist id="category">
                      <option value="Cardiologists">
                      <option value="Dentists">
                      <option value="Dermatologists">
                      <option value="Gastroenterologists">   
                      <option value="Gynaecologists">
                      <option value="Neurologists">
                      <option value=" General surgeon">
                </datalist><br><br>
                <input type="submit" value="SEARCH">
          </form>
           </div>
            <div id="column2">
           <strong>search by doctor's name: </strong><br>
           <form action="searchbyname.jsp" method="post">
               <input type="text" name="dname" >
                               <br><br>
               <input type="submit" value="SEARCH">
           </form>
           </div>
        </fieldset>
        </center>
    </body>
</html>
