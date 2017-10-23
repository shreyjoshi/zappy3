<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#custid").change(function(){
		$.ajax({
			url:'fetchCartValue.jsp',
			type:'post',
			success:function(result){
				var obj=JSON.parse(result);
				("#quant").val(g.cquant);
				("#sumamount").val(g.sumamount);
			}
		});
	});
});

function calcTotal(j)
	{
		var q=document.getElementById("quantity"+j).value;
		var p=document.getElementById("price"+j).value;
		var ta=p*q;
		document.getElementById("ta"+j).value=ta;
		
	
	}
</script>
<center>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zappy-Home </title>
<img src="images/logo1.jpg" />
<font color="orange"><h1>Welcome ${msg} view what all we have for you</h1></font><br/>
<h3>${msgsignup} <font color="green">${cartmsg}${buystatus}</font></h3>
</head>
<body>
<p align="right"><a href="index.jsp">admin login</a></p>

${session.getAttribute("cid")}

<%@
 page import="java.util.ArrayList,beans.ProductView,beans.Customer" 
%>
	<h2><a href="Home.jsp">home</a>&nbsp;&nbsp;&nbsp;
<%
	if(session.getAttribute("cid")==null)
	{
%>
			<a href="customerLogin.jsp">Log in</a>
			</h2>
<%	}
	else
	{
%>	
	<a href="customerHome.jsp">your profile</a>&nbsp;
	<a href="logout.jsp">Log out</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<!-- <a href="checkout.jsp?cid=<%=session.getAttribute("cid")%>">checkout</a> -->
	 <font color="purple">
	 <div id="cartvalue">
	 <%
	ArrayList<Customer> list2=(ArrayList)request.getAttribute("LIST2");
	if(!list2.isEmpty())
	{
		for(Customer c:list2)
		{
			int x=c.getCquant();
%>
		 <p align="right">total no of products is <font color="red"><%=x%><br/></font> and cart value is <font color="red"><%=c.getSumamount()%></font> <br/>
		 	 <a href="ViewCartController"> view cart</a><br/>
		 	 <%if(x>0){ %>
		 	  <a href="CheckoutController?cid=<%=session.getAttribute("cid")%>">checkout</a>
		 	 <%} %>
		 </p>
	 </div>
	 </font>
	 </h2>
<%
		}
	}
	}	
%>
<br/>
<%
	ArrayList<ProductView> list=(ArrayList)request.getAttribute("LIST");
	if(!list.isEmpty())
	{
%>
<table border="6">
<!-- <tr><th>pid</<th><th>image</th><th>Pname</th><th>price</th><th>weight</th><th>Details</th><th>quantity</th><th>total amount</th></tr> -->
<%
int i=0,j=1;
	for(ProductView cc:list)
	{
		if(i%4==0)
		{
%>

<tr>

<form action="AddToCart" method="post">
<td>	
		<input type="hidden" name="pid" value="<%=cc.getPid() %>" /><br/>
		<image src="images/<%=cc.getImage() %>" height="200" width="200" /><br/>
  	 	<%=cc.getPname() %><br/>
  	 	<input type="text" name="price" value="<%=cc.getPrice() %>" id="price<%=j%>" readonly /><br/>
  	 	<%=cc.getWeight() %> <br/>
  		<%=cc.getDesc() %><br/>
  		<input type="number" name="quantity" value="1" min="1" id="quantity<%=j%>" onChange="calcTotal(<%=j%>)"/><br/>
  		<input type="number" name="totalamount" value="<%=cc.getPrice() %>" id="ta<%=j%>" required readonly/>(in Rs)<br/>
  	 	<input type="submit" value="add to cart" id="addtocart" />  	
</form>
		<form action="ProductInfo" method="post">
					<input type="hidden" name="pid" value="<%=cc.getPid()%>" /><br/>
					<input type="submit" value="view details"/>
			</form>
 </td>
<%j++;	}
		else{  
%>	
	<td>	
<form action="AddToCart" method="post">

		<input type="hidden" name="pid" value="<%=cc.getPid() %>" /><br/>
		<image src="images/<%=cc.getImage() %>" height="200" width="200" /><br/>
  	 	<%=cc.getPname() %><br/>
  	 	<input type="text" name="price" value="<%=cc.getPrice() %>" id="price<%=j%>" readonly /><br/>
  	 	<%=cc.getWeight() %> <br/>
  		<%=cc.getDesc() %><br/>
  		<input type="number" name="quantity" value="1" min="1" id="quantity<%=j%>" onChange="calcTotal(<%=j%>)" /><br/>
  		<input type="number" name="totalamount" value="<%=cc.getPrice() %>" id="ta<%=j%>" required readonly/>(in Rs)<br/>
  	 	<input type="submit" value="add to cart" id="addtocart"/>
</form>
		<form action="ProductInfo" method="post">
				<input type="hidden" name="pid" value="<%=cc.getPid()%>" /><br/>
				<input type="submit" value="view details"/>
		</form>
	</td>		
<%if(i%4==3){
%></tr><%	
} 
j++;
}
i++;
		}
	}
	else{
%>
<h1><font color="red">no products to display</font></h1>
<%} %>
</table>
</body>
</center>
</html>