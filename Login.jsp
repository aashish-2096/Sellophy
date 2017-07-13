
<!DOCTYPE html>
<html>
<head>
<title>Sellophy</title>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
     <link rel="stylesheet" href="css/login.css" text="text/css">
</head>
</head>
<body>

<div class ="jumbotron text-center container-fluid">
<h1 style="font-size: 80px ">Sellophy</h1>
    <p>The Ultimate sharing platform</p>

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
          
       </div>
</nav>



<div class="row">

<div class="col-sm-2 col-md-2">
</div>

<div class="col-sm-3 col-md-3">
<div class="container-fluid abc">
<h3> Register Here</h3>
<br>
<form method=POST action=signup.jsp>
	<div class="form-group">
     <input type="text" class="form-control" id= "username" placeholder="Username " name="username">
     </div>
     <div class="form-group">
     <input type="email" class="form-control" id= "email" placeholder="Email Address" name="email">
     </div>   
     <div class="form-group">
	<input type="password" class="form-control" id= "number" placeholder="Password" name="password">
     </div>

     <div class ="forn-group">
    <button type="submit" class="btn btn-default">SignUp</button>
    </div>
</form>
</div>
</div>

<div class="col-sm-2 col-md-2">
</div>


<div class="col-sm-3 col-md-3">
<div class="container-fluid abc">
<h3> Login Here</h3>
<br>
<form method=POST action=login1.jsp>  
     <div class="form-group">
     <input type="text" class="form-control" id= "username1" placeholder="Username" name="username1">
     </div>
     <div class="form-group">
 
     <input type="password" class="form-control" id= "password1" placeholder="Password" name="password1">
     </div>

     <div class ="forn-group">
    <button type="submit" class="btn btn-default">Login</button>
    </div>
</form>
<br>
<% String s=request.getParameter("validation");
if(s!=null)
{
%>
<button class="btn btn-default"><%=request.getParameter("validation")%></button>
<%}%>

</div>
</div>

<div class="col-sm-2col-md-2">
</div>
</div>
<br>
<br>
<br>
<footer class="container-fluid text-center">
<h3>&copy;Sellophy2017</h3>
</footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>

</html>

