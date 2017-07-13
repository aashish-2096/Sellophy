<%@ include file="connection.jsp"%>
<%
	
	String username=request.getParameter("username");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String query1=new String("INSERT INTO user_info VALUES('"+username+"','"+email+"','"+password+"')");
	try{
	stat.executeUpdate(query1);
	
	response.sendRedirect("Login.jsp");
	}
	catch(Exception e)
	{
		out.println("Error"+e);
	}
%>