<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="connection.jsp"%> <!-- to connect a database-->
 
<%
String username=null;
String fullname=null;
String email=null;
String contact_no=null;
String category=null;
String article=null;
String price=null;
try
{
String ImageFile="";
String itemName = "";
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart)
{
}
else
{
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;
try
{
items = upload.parseRequest(request);
}
catch (FileUploadException e)
{
e.getMessage();
}
 
Iterator itr = items.iterator();
while (itr.hasNext())
{
FileItem item = (FileItem) itr.next();
if (item.isFormField())
{
if(item.getFieldName().equals("names"))
{
fullname=item.getString();
}
if(item.getFieldName().equals("user"))
{
username=item.getString();
} 
if(item.getFieldName().equals("emails"))
{
email=item.getString();
} 
if(item.getFieldName().equals("contact"))
{
contact_no=item.getString();
}
if(item.getFieldName().equals("category"))
{
category=item.getString();
}
if(item.getFieldName().equals("article"))
{
article=item.getString();
}  
if(item.getFieldName().equals("price"))
{
price=item.getString();
}  
}
else
{
try
{
itemName = item.getName();
File savedFile =  new File(config.getServletContext().getRealPath("/")+"image\\"+itemName);
item.write(savedFile);
}
catch (Exception e)
{
out.println("Error"+e.getMessage());
}
}
}
try
{
stat.executeUpdate("insert into uploadadd values ('"+username+"','"+fullname+"','"+email+"','"+contact_no+"','"+category+"','"+itemName+"','"+article+"','"+price+"')");
 
}
catch(Exception el)
{
out.println("Inserting error"+el.getMessage());
}
}
}
catch (Exception e){
out.println(e.getMessage());
}
response.sendRedirect("profile.jsp?username="+username);
%>