<%@ include file="connection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Sellophy</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
     <link rel="stylesheet" href="css/book.css" text="text/css">
</head>
<body data-spy="scroll" data-target=".navbar" data-offset=>


<div class ="jumbotron text-center container-fluid">


    <h1 style="font-size: 120px">Books</h1>
    <p>Our best companion </p>
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
                       <li><a href="#COURSE">Course</a></li>
                       <li><a href="#COMPETITIVE">Competitive</a></li>
                       <li><a href="#NOVELS">Novels</a></li>
					   <%
					   String s=request.getParameter("username");
					   if(s==null)
					   {%>
                       <li><a href="add.jsp">Add</a></li>
					   <li><a href="Stationary.jsp">Stationary</a></li>
					   <li><a href="accessories.jsp">Accessories</a></li>
					   <li><a href="profile.jsp"><span class="glyphicon glyphicon-shopping-cart " aria-hidden="true"></span></a></li>
					   <li><a href="Login.jsp">Login/Register</a></li>
					   <%}
					   else
					   {%>
						<li><a href="add.jsp?username=<%=request.getParameter("username")%>">Add</a></li>
						<li><a href="Stationary.jsp?username=<%=request.getParameter("username")%>">Stationary</a></li>
						<li><a href="accessories.jsp?username=<%=request.getParameter("username")%>">Accessories</a></li>
						<li><a href="profile.jsp?username=<%=request.getParameter("username")%>"><span class="glyphicon glyphicon-shopping-cart " aria-hidden="true"></span></a></li>
					   <li><a href="logout.jsp">LOGOUT</a></li>
					   <%}%>
                       
                </ul>
          </div>
       </div>
</nav>

<div class="container-fluid" id="COURSE" >
<div class= "row text-center">
  <div class="col-sm-12 col-md-12">
  <hr>
  <h2><strong>COURSE</strong></h2>
  <hr>
  <br>
  </div>
  </div>

<div>
<%
	rs=null;
	try
	{
	rs=stat.executeQuery("select * from books where subcategory=\'course\'");
	
	for(int i=1;rs.next();i++)
	{	if(i%4==0&&i>0)
		{%>
		<div class ="row text-center">
		 <div class="col-sm-3 col-md-3">
      <div class="card ">
         <img class= "card-img-top" src="img/<%=rs.getString("image")%>" alt="cardimg" height="200" width="150">
         <div class="card-block">
         <h4 class="card-title"><%=rs.getString("bookname")%></h4>
         <p class="card-text"> Author <%=rs.getString("author")%></p>
         <p class="card-text">Price <b> INR <%=rs.getString("price")%></b></p>
		 <%
		 if(request.getParameter("username")==null)
		 {
		 }
		 else
		 {
		 %>
          <a href="buy.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Buy</a>
		  <a href="wishlist.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Add to wishlist</a>
		 <%}%>
         </div>
     </div>
     </div>
	 </div>
		<%
		}
		else
		{
			%>
		
		 <div class="col-sm-3 col-md-3">
      <div class="card ">
         <img class= "card-img-top" src="img/<%=rs.getString("image")%>" alt="cardimg" height="200" width="150">
         <div class="card-block">
         <h4 class="card-title"><%=rs.getString("bookname")%></h4>
         <p class="card-text"> Author <%=rs.getString("author")%></p>
         <p class="card-text">Price <b> INR <%=rs.getString("price")%></b></p>
          <%
		 if(request.getParameter("username")==null)
		 {
		 }
		 else
		 {
		 %>
          <a href="buy.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Buy</a>
		  <a href="wishlist.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Add to wishlist</a>
		 <%}%>
		  </div>
     </div>
     </div>
	 
		<%
		}
	}
	}catch(Exception e)
	{
		out.println("Error"+e);
	}
%>
</div>
<div class="container-fluid" id="COMPETITIVE" >
<div class= "row text-center">
  <div class="col-sm-12 col-md-12">
  <hr>
  <h2><strong>COMPETITIVE</strong></h2>
  <hr>
  <br>
  </div>
  </div>


<div>
<%	rs=null;
	try
	{
	rs=stat.executeQuery("select * from books where subcategory=\'competative\'");
	for(int i=1;rs.next();i++)
	{	if(i%4==0&&i>0)
		{%>
		<div class ="row text-center">
		 <div class="col-sm-3 col-md-3">
      <div class="card ">
         <img class= "card-img-top" src="img/<%=rs.getString("image")%>" alt="cardimg" height="200" width="150">
         <div class="card-block">
         <h4 class="card-title"><%=rs.getString("bookname")%></h4>
         <p class="card-text"> Author <%=rs.getString("author")%></p>
         <p class="card-text">Price <b> INR <%=rs.getString("price")%></b></p>
          <%
		 if(request.getParameter("username")==null)
		 {
		 }
		 else
		 {
		 %>
          <a href="buy.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Buy</a>
		  <a href="wishlist.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Add to wishlist</a>
		 <%}%>
		  </div>
     </div>
     </div>
	 </div>
		<%
		}
		else
		{
			%>
		
		 <div class="col-sm-3 col-md-3">
      <div class="card ">
         <img class= "card-img-top" src="img/<%=rs.getString("image")%>" alt="cardimg" height="200" width="150">
         <div class="card-block">
         <h4 class="card-title"><%=rs.getString("bookname")%></h4>
         <p class="card-text"> Author <%=rs.getString("author")%></p>
         <p class="card-text">Price <b> INR <%=rs.getString("price")%></b></p>
          <%
		 if(request.getParameter("username")==null)
		 {
		 }
		 else
		 {
		 %>
          <a href="buy.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Buy</a>
		  <a href="wishlist.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Add to wishlist</a>
		 <%}%>
		  </div>
     </div>
     </div>
	 
		<%
		}
	}
	}
	catch(Exception e)
	{
		out.println("Error"+e);
	}
%>
</div>
<div class="container-fluid" id="NOVELS" >
<div class= "row text-center">
  <div class="col-sm-12 col-md-12">
  <hr>
  <h2><strong>NOVELS</strong></h2>
  <hr>
  <br>
  </div>
  </div>
<div>
<%
	rs=null;
	try
	{	
	rs=stat.executeQuery("select * from books where subcategory=\'novel\'");
	for(int i=1;rs.next();i++)
	{	if(i%4==0&&i>0)
		{%>
		<div class ="row text-center">
		 <div class="col-sm-3 col-md-3">
      <div class="card ">
         <img class= "card-img-top" src="img/<%=rs.getString("image")%>" alt="cardimg" height="200" width="150">
         <div class="card-block">
         <h4 class="card-title"><%=rs.getString("bookname")%></h4>
         <p class="card-text"> Author <%=rs.getString("author")%></p>
         <p class="card-text">Price <b> INR <%=rs.getString("price")%></b></p>
          <%
		 if(request.getParameter("username")==null)
		 {
		 }
		 else
		 {
		 %>
          <a href="buy.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Buy</a>
		  <a href="wishlist.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Add to wishlist</a>
		 <%}%>
		  </div>
     </div>
     </div>
	 </div>
		<%
		}
		else
		{
			%>
		
		 <div class="col-sm-3 col-md-3">
      <div class="card ">
         <img class= "card-img-top" src="img/<%=rs.getString("image")%>" alt="cardimg" height="200" width="150">
         <div class="card-block">
         <h4 class="card-title"><%=rs.getString("bookname")%></h4>
         <p class="card-text"> Author <%=rs.getString("author")%></p>
         <p class="card-text">Price <b> INR <%=rs.getString("price")%></b></p>
          <%
		 if(request.getParameter("username")==null)
		 {
		 }
		 else
		 {
		 %>
          <a href="buy.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Buy</a>
		  <a href="wishlist.jsp?username=<%=request.getParameter("username")%>&name=<%=rs.getString("bookname")%>&description=<%=rs.getString("author")%>&price=<%=rs.getString("price")%>" class="btn btn-primary">Add to wishlist</a>
		 <%}%>
		  </div>
     </div>
     </div>
	 
		<%
		}
	}
	}
	catch(Exception e)
	{
		out.println("Error"+e);
	}
%>
</div>
<%
for(int j=0;j<25;j++)
{
	%>
	<br>
	<%
}
	
%>
<div>
<footer class="container-fluid text-center">
<h3>&copy;Sellophy</h3>
</footer>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>