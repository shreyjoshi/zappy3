<%@page import="java.util.ArrayList,beans.UserDTO" %>
<% ArrayList <UserDTO> list=(ArrayList)request.getAttribute("LIST");
if(!list.isEmpty()){
	for(UserDTO ud:list)
	{
		System.out.println(ud.getUsername());
		%>
		
		<option><%=ud.getUsername()%></option>
		<%
	}
}
%>