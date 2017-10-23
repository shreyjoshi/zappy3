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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
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
        <script type="text/javascript">
        	$(document).ready(function(){
        		$("#time-slot").hide();
        		$("#categ").change(function(){
        			var data= "category="+$("#categ").val();
        			//alert(data);
            		$.ajax({
            			url:'FetchDoctor',
            			data:data,
            			type:'post',
            			success:function(result){
            				//alert(result);
            				$("#dname").empty().append(result);
            			}
            		});
        		});
        		$("#appdate").change(function(){
        			$("#time-slot").show();
        			var data="appdate="+$("#appdate").val()+"&dname="+$("#dname").val();
        			//var data1="dname="+$("#dname").val();
        			//alert(data+" aur "+data1);
        			$.ajax({
        				url:'FetchApptime',
        				data:data,
        				//data:data1,
        				type:'post',
        				success:function(result){
        					alert(result);
        					$("#apptime").empty().append(result);
        				}
        			});
        		});
        	});
        </script>
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
                            <td>  <input type="text" name="pname" required/></td> 
                        <br><br>
                        </tr>
                         <tr>
                           <td height="40"> <strong>Add doctor's category : </strong></div><br></td>    
                          <td > <!-- <input list="category" name="category" id="category" required/> -->
                            <select id="categ" name="category">
                            <option>cardiologists</option>
                            <option>dentists</option>
                            <option>dermatologists</option>
                            <option>gastroenterologists</option>   
                            <option>gynaecologists</option>
                            <option>orthopedic</option>
                            <option>general surgeon</option>
                        </select><br></td> 
                        </tr>
                        <tr>
                            <td height="40"> <strong>Add doctor's name: </strong></div><br> </td>  
                            <td>  <select name="dname" id="dname" required>
                            		<option value=null>---select---</option>
                            	  </select>
                           	</td> 
                        <br/><br/>
                        </tr>
                        <tr>
                            <td height="40">  <strong>Add date(in dd-mm-yyyy): </strong></div><br> </td>          
                            <td >  <input type="date" name="appdate" id="appdate" required/></td> 
                        <br><br>
                        </tr>
                        
                   <div id="time-slot">
                     <tr>
                         <td height="40">  <strong>Available time: </strong></div><br> </td>          
                         <td >  <select name="apptime" id="apptime">
                         			<option value=null>---select---</option>
                         		</select>	
                         </td> 
                     <br/><br/>
                     </tr>
                    </div>
                         
                            <tr>
                                <td>  <input type="submit" value="book now"/></td>
                               
                            </tr>
                        </div>
             </div>                      
               </table>                 
          </form>
           <td><li><a href="patientprofile.jsp"><input type="submit" value="discard"></a></li>     
           
    </body>
</html>
