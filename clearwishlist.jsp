<%@include file="connection.jsp"%>
<%
try{
String username=request.getParameter("username");
String query=new String("delete from wishlist where username=\'"+username+"\'");
stat.executeQuery(query);
response.sendRedirect("profile.jsp?username="+username);
}
catch(Exception e)
{
	out.println("Error"+e);
}
%>