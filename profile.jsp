<%@ include file="connection.jsp"%>
<%
String s=request.getParameter("username");
if(s==null)
{
	response.sendRedirect("Login.jsp");
}
else
{
%>
<!DOCTYPE html>
<html>
<head>
<title>Sellophy</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
     <link rel="stylesheet" href="css/profile.css" text="text/css">
</head>
<body data-spy="scroll" data-target=".navbar" data-offset=>


<div class ="jumbotron text-center container-fluid">


    <h1 style="font-size: 120px">Hii <%= request.getParameter("username")%></h1>
    <p>All your contents </p>
</div>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigationbar">
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
                             
           </button>
          <%
		   String s1=request.getParameter("username");
		   if(s1==null)
		   {%>
          <a class="navbar-brand" href="index1.jsp"><span class="glyphicon glyphicon-home icon-color" aria-hidden="true"></span></a>
		   <%}
		   else
		   {%>
			<a class="navbar-brand" href="index1.jsp?username=<%=request.getParameter("username")%>"><span class="glyphicon glyphicon-home icon-color" aria-hidden="true"></span></a>
		   <%}%>
    </div>
          <div class ="collapse navbar-collapse" id ="navigationbar">
                 <ul class="nav navbar-nav navbar-right">
						<li><a href="book.jsp?username=<%=request.getParameter("username")%>">BOOKS</a></li>
						<li><a href="accessories.jsp?username=<%=request.getParameter("username")%>">GADGETS</a></li>
						<li><a href="Stationary.jsp?username=<%=request.getParameter("username")%>">STATIONARY</a></li>
                       <li><a href="add.jsp?username=<%=request.getParameter("username")%>">ADD</a></li>
                       <li><a href="profile.jsp?username=<%=request.getParameter("username")%>"><span class="glyphicon glyphicon-shopping-cart " aria-hidden="true"></span></a></li>
                       <li><a href="logout.jsp">LOGOUT</a></li>
						
                </ul>
          </div>
       </div>
</nav>



<!--<div class ="container-fluid text-center align"  >
  <img src="img/icon.png" id ="icon">
  <h3> UserName</h3>
  <p> Address</p>
</div>
-->
<div class = "container text-center">
<hr>
 <h3  class ="heading"> Orders</h3>
 <hr>
 <br>
 <table class="table table-hover table-bordered">
 <thead>

 <tr>
  <th colspan="1.5">Article</th>
   <th colspan="1.5"> Description </th>
   <th colspan="1.5"> Price </th>
   <th colspan="1.5">Remove </th>
   
</tr>
 </thead>
 <tbody>
 <%
 try{
String user=request.getParameter("username");
 rs=null;
 rs=stat.executeQuery("select * from buy where username=\'"+user+"\'");
 while(rs.next())
 {
%>
	<tr>
   <td><%=rs.getString("name")%></td>
   <td><%=rs.getString("description")%></td>
   <td> <b>INR</b><%=rs.getString("price")%></td>
   <td><a href="removeorder.jsp?username=<%=rs.getString("username")%>&name=<%=rs.getString("name")%>&description=<%=rs.getString("description")%>&price=<%=rs.getString("price")%>">remove</a></td>
 </tr>
<%
 }
 }
 catch(Exception e)
 {
	 out.println("Error"+e);
 }
 %>
</tbody>
</table>
 <div class="col-sm-12 text-right">
      <a href="#" class="btn btn-info btn-lg " role="button"> <span class="glyphicon glyphicon-hand-right"> Order Now</span> </a>

   </div>
</div>


<div class = "container text-center">
<hr>
 <h3 class="heading"> Wishlist</h3>
 <hr>
 <table class="table table-hover table-bordered">
 <thead>

 <tr>
  <th colspan="1.5">Article </th>
  <th colspan="1.5">Description</th>
   <th colspan="1.5"> Price </th>
   <th colspan="1.5">Add </th>
   
</tr>
 </thead>

 <br>
 <tbody>
 <%
 try{
String user=request.getParameter("username");
 rs=null;
 rs=stat.executeQuery("select * from wishlist where username=\'"+user+"\'");
 while(rs.next())
 {
%>
	<tr>
   <td><%=rs.getString("name")%></td>
   <td><%=rs.getString("description")%></td>
   <td> <b>INR</b><%=rs.getString("price")%></td>
   <td><a href="buy.jsp?username=<%=rs.getString("username")%>&name=<%=rs.getString("name")%>&description=<%=rs.getString("description")%>&price=<%=rs.getString("price")%>">add</a></td>
 </tr>
<%
 }
 }
 catch(Exception e)
 {
	 out.println("Error"+e);
 }
 %>
</tbody>
</table>

<div>
 <div class="col-sm-12 text-right">
      <a href="clearwishlist.jsp?username=<%=request.getParameter("username")%>" class="btn btn-info btn-lg " role="button"> <span class="glyphicon glyphicon-trash"> Clear </span> </a>

   </div>

</div>
</div>

<div>
<footer class="container-fluid text-center">
<h3>&copy;Sellophy2017</h3>
</footer>
</div>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
<%
}
%>