<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//$("#reviewbox").hide();
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
	$("#userid").change(function(){
		$("#reviewbox").show();
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
	<head><h1>product Information</h1></head>
<body>
<h2><a href="ProductCustomerView">home</a></h2>
<%@ page import="java.util.ArrayList,beans.ProductView" %>
<%
	ArrayList<ProductView> list=(ArrayList)request.getAttribute("productinfo");
	if(!list.isEmpty()){
		out.println("<table border=3>");
		for(ProductView cc:list){
%>

<%int j=1;%>
<form action="AddToCart" method="post">
	<td>
		<input type="hidden" name="pid" value="<%=cc.getPid() %>" /><br/>
		<image src="images/<%=cc.getImage() %>" height="200" width="200" /><br/>
  	 	<%=cc.getPname() %><br/>
  	 	<input type="text" name="price" value="<%=cc.getPrice() %>" id="price<%=j%>" readonly /><br/>
  	 	<%=cc.getWeight() %> <br/>
  		<%=cc.getDesc() %><br/>
  		<input type="number" name="quantity" value="1" min="1" id="quantity<%=j%>" onChange="calcTotal(<%=j%>)" /><br/>
  		<input type="number" name="totalamount" value="<%=cc.getPrice() %>" id="ta<%=j%>" required readonly/><br/>
  	 	<input type="submit" value="add to cart" id="addtocart"/><br/>
		</form>
		</td>	
<%			
		}
		out.println("</table>");
	}
	if(session.getAttribute("cid")!=null)
	{
	String userid=(String)session.getAttribute("cid");
	
%>
<br/><br/><br/><br/><br/><br/>
<input type="hidden" id="userid" value="<%=userid%>" readonly/>
<div id="reviewbox">
<form action="AddReview">
review: <textarea rows="5" cols="25" name="review"></textarea><br/><br/>
rating:<input type="radio" name="rating" value="5"/>
		<input type="radio" name="rating" value="4"/>
		<input type="radio" name="rating" value="3"/>
		<input type="radio" name="rating" value="2"/>
		<input type="radio" name="rating" value="1"/><br/><br/>
	<input type="submit" value="post review"/>
</form>
</div>
<%} %>
</body>
</center>
</html>