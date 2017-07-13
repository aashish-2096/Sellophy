<%@ page import="java.sql.*"%>
<%!
Connection con;
Statement stat;
ResultSet rs;
%>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","arvind");
stat=con.createStatement();
}
catch(Exception e)
{
out.println(""+e);
}
%>