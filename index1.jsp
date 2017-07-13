<!DOCTYPE html>
<html>
<head>
    <title>Sellophy</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css" text="text/css">
</head>

<body id= "top" data-spy="scroll" data-target=".navbar" data-offset="100">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigationbar">
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
                             
           </button>
          <a class="navbar-brand" href="#top"><span class="glyphicon glyphicon-home icon-color" aria-hidden="true"></span></a>
    </div>
          <div class ="collapse navbar-collapse" id ="navigationbar">
                 <ul class="nav navbar-nav navbar-right">
                       <li><a href="#AboutUs">About Us</a></li>
                       <li><a href="#Explore">Explore </a></li>
                       <li><a href="#Add">Add</a></li>
                       <li><a href="#ContactUs">Contact Us</a></li>
					   <%String b=request.getParameter("username");
					   if(b==null)
					   {%>
                       <li><a href="Login.jsp">Login/Register</a></li>
					   <%}
					   else
					   {%>
					   <li><a href="logout.jsp">Logout</a></li>
					   <%}%>
                </ul>
          </div>
       </div>
</nav>
 



<div class ="jumbotron text-center container-fluid">


    <h1 style="font-size: 120px">Sellophy</h1>
    <p>The ultimate sharing platfrom</p>


<form class= "just">
   <div class="input-group col-md-7">
       <input type ="text" class="form-control" placeholder="Search your content" required >
            <div class="input-group-btn ">
                      <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
            </div>
   </div>
</form>
</div>



<div id="AboutUs" class ="container-fluid text-center">
   <div class="row" >
      <div class="col-sm-12 col-md-12">
      <hr >
          <h2> <strong>ABOUT US</strong></h2>
          <hr>
          <p align="left">IndiaMART is India’s largest online marketplace, connecting buyers with suppliers. The online channel focuses on providing a platform to SMEs, large enterprises as well as individuals.
Founded in 1996, the company’s mission is ‘to make doing business easy’. Keeping this mission in mind, we come up with appropriate initiatives from time to time. Recently, we have launched a payment protection program called IndiaMART PayX.</p>



      </div>
<div class="h-divider">
</div>
    </div>
</div>

    <!-- Carousel part -->


 <div  id ="Explore" class= "container-fluid text-center" >
    <div class="row">
       <div class="col-md-12 col-sm-12">
        <hr >
           <h2><strong>EXPLORE  </strong></h2>
           <hr>
           <br>
           <p align ="left">
           	IndiaMART is India’s largest online marketplace, connecting buyers with suppliers. The online channel focuses on providing a platform to SMEs, large enterprises as well as individuals.
Founded in 1996, the company’s mission is ‘to make doing business easy’. Keeping this mission in mind, we come up with appropriate initiatives from time to time. Recently, we have launched a payment protection program called IndiaMART PayX
           </p>
        </div>
     </div> 
</div>


    <div class ="row">
      <div class =" col-sm-4">
    <div id ="mycarousel" class="carousel slide" data-ride="carousel">
    

       <ol class="carousel-indicators">
         <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
         <li data-target="#mycarousel" data-slide-to="1" ></li>
         <li data-target="#mycarousel" data-slide-to="2" ></li>
       </ol>
       


       <div class="carousel-inner" >
           <div class ="item active">
               <center><img  src="img/DS.jpg" height="400" width="350" alt="Books" ></center>

            </div>

             <div class ="item">
               <center><img  src="img/comp1.jpg" alt="Stationaries" height="400" width="350"></center>

            </div>
             <div class ="item">
               <center><img src="img/novel1.jpg" alt="Accessories" height="400" width="350"></center>
               <!--<div class="carousel-caption">
                      <h3>Accessories</h3>
                      <p>Techie stuff!</p>
                </div>-->

            </div>

       </div>   


      <a class=" left carousel-control" href="#mycarousel" role="button " data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>

      </a>

      <a class=" right carousel-control" href="#mycarousel" role="button"   data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>

      </a>

</div> 
</div>



     <div class =" col-sm-4">
    <div id ="mycarousel2" class="carousel slide" data-ride="carousel">

       <ol class="carousel-indicators">
         <li data-target="#mycarousel2" data-slide-to="0" class="active"></li>
         <li data-target="#mycarousel2" data-slide-to="1" ></li>
         <li data-target="#mycarousel2" data-slide-to="2" ></li>
       </ol>
       


       <div class="carousel-inner" >
           <div class ="item active">
               <img  src="img/1.jpg" alt="Books" >

            </div>

             <div class ="item">
               <img  src="img/2.jpg" alt="Stationaries" >
               <div class="carousel-caption">
                      <h3>Books</h3>
                      <p>Drafters and all</p>
                </div>

            </div>
             <div class ="item">
               <img src="img/3.jpg" alt="Accessories" >

            </div>


       </div>  



      <a class=" left carousel-control" href="#mycarousel2" role="button " data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>

      </a>

      <a class=" right carousel-control" href="#mycarousel2" role="button"   data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>

      </a>

</div> 
</div>



     
     <div class =" col-sm-4">
    <div id ="mycarousel3" class="carousel slide" data-ride="carousel">

       <ol class="carousel-indicators">
         <li data-target="#mycarousel3" data-slide-to="0" class="active"></li>
         <li data-target="#mycarousel3" data-slide-to="1" ></li>
         <li data-target="#mycarousel3" data-slide-to="2" ></li>
       </ol>
       


       <div class="carousel-inner" >
           <div class ="item active">
               <img  src="img/1.jpg" alt="Books" >
               <div class="carousel-caption">
                      <h3>Books</h3>
                      <p>We love reading!</p>
                </div>

            </div>

             <div class ="item">
               <img  src="img/2.jpg" alt="Stationaries" >



            </div>
             <div class ="item">
               <img src="img/3.jpg" alt="Accessories" >

            </div>

       </div>   


      <a class=" left carousel-control" href="#mycarousel3" role="button " data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>

      </a>

      <a class=" right carousel-control" href="#mycarousel3" role="button"   data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>

      </a>

</div> 
</div>
</div>
</div>
<% String p=request.getParameter("username");
if(p==null)
{%>
<div  class="container-fluid">
   <div class="row">
   <div class="col-md-1">
          </div> 
      <div class="col-md-2"  id ="buttonstoggle ">
		
          <a href="book.jsp" class="btn btn-info btn-lg center-block " role="button">Books</a>
      </div>
      <div class="col-md-2">
          
      </div>  
       <div class="col-md-2">
          <a href="accessories.jsp" class="btn btn-info btn-lg center-block" role="button">Accessories</a>
      </div>   
      <div class="col-md-2">
         
      </div> 
       <div class="col-md-2">
          <a href="Stationary.jsp" class="btn btn-info btn-lg center-block " role="button">Stationaries</a>

      </div>   
      <div class="col-md-1">
         
      </div>   
    </div>
    <br>
    <br>
    </div>
<%}
else
{%>
<div  class="container-fluid">
   <div class="row">
   <div class="col-md-1">
          </div> 
      <div class="col-md-2"  id ="buttonstoggle ">
		
          <a href="book.jsp?username=<%=request.getParameter("username")%>" class="btn btn-info btn-lg center-block " role="button">Find</a>
      </div>
      <div class="col-md-2">
          
      </div>  
       <div class="col-md-2">
          <a href="accessories.jsp?username=<%=request.getParameter("username")%>" class="btn btn-info btn-lg center-block" role="button">Find</a>
      </div>   
      <div class="col-md-2">
         
      </div> 
       <div class="col-md-2">
          <a href="Stationary.jsp?username=<%=request.getParameter("username")%>" class="btn btn-info btn-lg center-block " role="button">Find</a>

      </div>   
      <div class="col-md-1">
         
      </div>   
    </div>
    <br>
    <br>
    </div>
<%}%>
</div>    

<div id ="Add" class="container-fluid text-center">
   <div class="row">

        <div class="col-sm-12 col-md-12">
          <hr>
             <h2><strong>ADD</strong></h2>
             <hr>
             <br>
             <p align="left">IndiaMART is India’s largest online marketplace, connecting buyers with suppliers. The online channel focuses on providing a platform to SMEs, large enterprises as well as individuals.
Founded in 1996, the company’s mission is ‘to make doing business easy’. Keeping this mission in mind, we come up with appropriate initiatives from time to time. Recently, we have launched a payment protection program called IndiaMART PayX</p>
<br>
        </div>   
   </div>
   </div>

   <div  id="AddHere" class="col-sm-12 text-center">
   <%String a=request.getParameter("username");
   if(a==null)
   {
   %>
      <a href="add.jsp" class="btn btn-info btn-lg " role="button">Add Here</a>
	<%}
	else
	{%>
	<a href="add.jsp?username=<%=request.getParameter("username")%>" class="btn btn-info btn-lg " role="button">Add Here</a>
	<%}%>

   </div>





<div id="ContactUs" class="container-fluid">
   <div class="row" >
      <div class="col-sm-12 text-center">
        <hr>
          <h2><strong>CONTACT US</strong></h2>
          <hr>
         
          <br>
          <br>

   </div>
   </div>
 <div class="container " id="architects" >
   <div class="row" id="internal">
       <div class="col-sm-3  col-md-3 ">
          <img src="img/aashish.jpg" class= "img-default img-responsive" alt="Aashish"  width="300" height="300">
         
         <div>
          <h3><strong>AASHISH KUMAR</strong></h3>
          <h4>Frontend Development</h4>
          </div>

       </div>
       <div class="col-md-6">

       </div>
       
       <div class="col-sm-3 col-md-3 " >
          <img src="img/arv.jpg" class= "img-default img-responsive" alt="Arvind" width="300" height="300"> 
         <div >
          <h3><strong>ARVIND BHAGAT</strong></h3>
          <h4>Backend  Development</h4>
         </div>  

          
       </div>
  </div>
  <br>
</div>
<div class ="row mapatr">

 <div class="col-md-7">
<div id="mapsrc" class7="container-fluid" style="height:200px"></div>
   <script >
   	 function mapLocation()

   	 {
       var location = new google.maps.LatLng(21.2497, 81.6050);
       var prop= { center:location, zoom:18,draggable:false, scrollwheel:false,mapTypeId:google.maps.MapTypeId.ROADMAP};
       var map= new google.maps.Map(document.getElementById("mapsrc"),prop);
       var mark = new google.maps.Marker({position:location});
       mark.setMap(map);
   	 }
   </script>
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD45gTwkxafchfmZZSogrP0mT17MALEyDU&callback=mapLocation"></script>

</div>

<div class= "col-md-5">
  <p>Contact and we would try getting back to you asap.</p>
  <p><span class="glyphicon glyphicon-user">  XYX</span></p>
  <p><span class="glyphicon glyphicon-map-marker"> NIT Raipur</span></p>
   <p><span class="glyphicon glyphicon-envelope"> abc@gmail.com</span></p>
	 <p><span class="glyphicon glyphicon-earphone"> 9111080364</span></p>
	
</div>
<br>

</div>

<footer class="container-fluid text-center ">
  <div >
  <a href="#top" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <h3>Sellophy</h3>
  <p>The ultimate selling platform</p>
  <p><span class="glyphicon glyphicon-link">Website Link</span></p>
 

  </div>
</footer>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
<html>