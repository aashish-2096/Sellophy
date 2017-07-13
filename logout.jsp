<%
out.println("Thank you");
session.invalidate();
response.sendRedirect("index1.jsp");
%>