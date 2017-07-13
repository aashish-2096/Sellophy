<%@ include file="connection.jsp"%>
<%
try
{
if(request.getParameter("username")=="null")
{
	response.sendRedirect("Login.jsp");
}
else
{
String username=request.getParameter("username");
String name=request.getParameter("name");
String description=request.getParameter("description");
String price=request.getParameter("price");
String query=new String("insert into buy values ('"+name+"','"+description+"','"+price+"','"+username+"')");
stat.executeUpdate(query);
response.sendRedirect("profile.jsp?username="+username);
}
}
catch(Exception e)
{
	out.println("Error"+e);
}
%>