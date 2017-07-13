<%@include file="connection.jsp"%>
<%
try{
String username=request.getParameter("username");
String name=request.getParameter("name");
String description=request.getParameter("description");
String price=request.getParameter("price");
String query=new String("delete from buy where username=\'"+username+"\' and name=\'"+name+"\' and description=\'"+description+"\' and price=\'"+price+"\'");
stat.executeQuery(query);
response.sendRedirect("profile.jsp?username="+username);
}
catch(Exception e)
{
	out.println("Error"+e);
}
%>