<%-- 
    Document   : booking
    Created on : May 3, 2016, 8:53:36 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>book your appointment...</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style type="text/css">            
            #columnCenter{
                width: 370px;
                background: url(images/bg.jpg) top left;
                height: 400px;
                padding: 32px 20px 14px 20px;
            }

            .style3 {
                color: #FFFF00;
                font-weight: bold;
                font-size: 16px;
            }
        </style>
    </head>
    <body>
               
        <div class="container">
            <div class="page-header">
                <img src="image/ECLINICLOGO.jpg" class="img-rounded" alt="welcome" width="100%" height="220">
            </div>
        
         <h1>Welcome to booking page</h1>
           <div id="columncenter">
               <h2>add new appointment:</h2>
               <form action="AddAppointment" method="post">
                   <table width="338" border="0">
                      
                         <tr>
                            <td height="40"> <strong>Add patient's name: </strong></div><br> </td>  
                            <td>  <input type="text" name="pname" /></td> 
                        <br><br>
                        </tr>
                         <tr>
                           <td height="40"> <strong>Add doctor's category : </strong></div><br></td>    
                          <td > <input list="category" name="category"/>
                            <datalist id="category">
                            <option value="Cardiologists">
                            <option value="Dentists">
                            <option value="Dermatologists">
                            <option value="Gastroenterologists">   
                            <option value="Gynaecologists">
                            <option value="Orthopedic">
                            <option value=" General surgeon">
                        </datalist><br></td> 
                        </tr>
                        <tr>
                            <td height="40"> <strong>Add doctor's name: </strong></div><br> </td>  
                            <td>  <input type="text" name="dname" /></td> 
                        <br><br>
                        </tr>
                        <tr>
                            <td height="40">  <strong>Add date(in dd-mm-yyyy): </strong></div><br> </td>          
                            <td >  <input type="text" name="appdate" /></td> 
                        <br><br>
                        </tr>
                            <tr>
                                <td>  <input type="submit" value="book now"/></td>
                                <td><li><a href="patientprofile.jsp"><input type="submit" value="discard"></a></li>
                            </tr>
                        </div>
             </div>   
         
                       
               </table>                 
              
          </form>
               
           
    </body>
</html>
