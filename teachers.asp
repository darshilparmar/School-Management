

<html>
<head>
	<title>R.N. Shah High School</title>
	 <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	  <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
	  <style>
#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}
#nav {
    line-height:30px;
    background-color:black;
    height:70px;
    width:100px;
    float:left;
    padding:5px; 
}

}
</style>
  
</head>
<body background="images/background.jpg">

        <!-- CONTAINS ################################################################################################################################## -->
		 <!-- Navbar goes here -->

    <!-- Page Layout here -->
	<div id="header">
<h1>Teachers Zone</h1>
</div><hr>

<div id="nav">

<font color="white"><a href="#teachers">Teachers</a></font><br>
</div>



<!-- ENd layout -->
<br><br><br><hr>
<!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content">
  <li><a href="">Student attendance</a></li>
  <li><a href="suddetails.html">Student Details</a></li>
   <li><a href="">Add Students attendance</a></li>

</ul>
<!-- MOdal -->
<script>
  $(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
  });
   $('#modal1').closeModal();
  </script>
 <div id="modal1" class="modal">
    <div class="modal-content">
      <h4>Are you sure ??</h4>
      
    </div>
    <div class="modal-footer">
	<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cancel</a>
      <a href="Home.html" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
	  
    </div>
      
    
  </div>
<ul id="dropdown2" class="dropdown-content">
  <li><a class=" modal-trigger" href="#modal1">Logout</a></li>
  <li><a href="#!">Cancel</a></li>
 
</ul>
<ul id="dropdown3" class="dropdown-content">
  <li><a href="#">Add Marks</a></li>
  <li><a href="#">Add Assignments</a></li>
 
</ul>
<nav>
  <div class="nav-wrapper">
    <a href="#!" class="brand-logo">Teachers zone</a>
	
    <ul class="right hide-on-med-and-down">
      <li><a class="dropdown-button" href="#!" data-activates="dropdown2">Home<i class="material-icons right">arrow_drop_down</i></a></li>
      
      <!-- Dropdown Trigger -->
      <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Student info<i class="material-icons right">arrow_drop_down</i></a></li>
	  <li><a class="dropdown-button" href="#!" data-activates="dropdown3">Exams Info<i class="material-icons right">arrow_drop_down</i></a></li>
	
    </ul>
  </div>
</nav>



    
      
		
		
      


 

</body>
</html>