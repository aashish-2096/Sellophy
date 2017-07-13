<%
String str=request.getParameter("username");
if(str==null)
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
     <link rel="stylesheet" href="css/form.css" text="text/css">
</head>
</head>
<body>


<div class ="jumbotron text-center container-fluid">


    <h1 style="font-size: 120px">Add</h1>
    <p>Sell your products here </p>
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
                       <li><a href="logout.jsp">LOGOUT</a></li>
                    
          </div>
       </div>
</nav>

<div class="container">

<h3 style="margin-bottom: 50px">Submit the details</h3>
<form method=POST action=uploadadd.jsp enctype="multipart/form-data">
<div class="form-group">
<input type="text" class="form-control" id="user" placeholder="<%=request.getParameter("username")%>" value="<%=request.getParameter("username")%>" name="user" readonly>
</div>
 <div class="form-group">
     <input type="text" class="form-control" id= "name" placeholder="Name " name="names">
 </div>

 <div class="form-group">
     <input type="text" class="form-control" id= "email" placeholder="Email Address" name="emails">
 </div>   
<div class="form-group">
     <input type="number" class="form-control" id= "number" placeholder="Contact Number " name="contact" maxlength="11">
     </div>

<div class="form-group">
     <label for ="typep">Type </label>
     <select name="category">
     	<option value="books">Books</option>
     	<option value="accessories">Accessories</option>
     	<option value="others">Others</option>
     </select>
</div>
<div class="form-group">
	<label for="image">Image</label>
	<input type="file" id="image" name="fileupload" accept="image/*" />
</div>
<div class="form-group">
 
     <input type="text" class="form-control" id= "number" placeholder="Article Name" name="article">
     </div>

<div class="form-group">
     <input type="number" class="form-control" id= "number" placeholder="Price INR" name="price" maxlength="5">
     </div>


     <div class ="forn-group">
      <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>

<br>
</form>
</div>
</ul>
</div>
</div>
</nav>




<footer class="container-fluid text-center">
<h3>&copy;Sellophy2017</h3>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
<%
}
%>