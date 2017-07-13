<%@ include file="connection.jsp"%>
<%
	String username1=request.getParameter("username1");
	String password1=request.getParameter("password1");
	String query2=new String("SELECT * FROM user_info WHERE username='"+username1+"'AND password='"+password1+"'");
	try{
	rs=stat.executeQuery(query2);
	if(rs.next())
	{
		session.setAttribute("username",username1);
		response.sendRedirect("profile.jsp?username="+username1);
	}
	else
	{	request.setAttribute("Error","Sorry! Username or Password Error. Plz Enter Correct Detail ");
		response.sendRedirect("Login.jsp?validation=Incorrect username or password");	
	}
	}
	catch(Exception e)
	{
		out.println("Error"+e);
	}
	
%>                 