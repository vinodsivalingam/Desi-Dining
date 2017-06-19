<?php session_start(); // Starting Session ?>
<!DOCTYPE html>
<html lang="en-US">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>DesiDining - We Serve You Better</title>
      <link rel="icon" href="img/Desiicon.jpg">
      <link rel="stylesheet" href="css/components.css">
      <link rel="stylesheet" href="css/responsee.css">
      <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="owl-carousel/owl.theme.css">
      <!-- CUSTOM STYLE -->
      <link rel="stylesheet" href="css/template-style.css">
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
      <script type="text/javascript" src="js/modernizr.js"></script>
      <script type="text/javascript" src="js/responsee.js"></script>
      <script type="text/javascript" src="js/template-scripts.js"></script> 
      <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>                 
      <!--[if lt IE 9]>
	      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
      <![endif]-->
   </head>
   <body class="size-1140">
      <!-- TOP NAV WITH LOGO -->
      <header>
         <div id="topbar">
            <div class="line">
               <div class="s-12 m-6 l-6">
                  <p>CONTACT US: <strong>contact@desidining.com</strong></p>
               </div>
               <div class="s-12 m-6 l-6">
                  <div class="social right">
                    <p><?php 
					if (isset($_SESSION['email'])){ 
						echo "You are logged in as : ";  echo $_SESSION['email']; echo "&nbsp;|<a href='logout.php' style='color:#ffffff;'>Logout</a>";
					}else { }
				?></p>
                   <!--  <a><i class="icon-facebook_circle"></i></a> <a><i class="icon-twitter_circle"></i></a> <a><i class="icon-google_plus_circle"></i></a> <a><i class="icon-instagram_circle"></i></a>-->
                  </div>
               </div>
            </div>  
         </div> 
         <nav>
            <div class="line">
               <div class="s-12 l-2">
                  <p class="logo"><img src="img/Desi-logo.png" width="371" height="128"></p>
              </div>
               <div class="top-nav s-12 l-10">
                  <p class="nav-text">Custom menu text</p>
                  <ul class="right">
                     <li ><a href="index.php">Home</a></li>
                     <li><a href="about.php">About Us</a></li>
                     <li><a href="cities.php">Cities</a></li>
                     <li><a href="contact.php">Contact</a></li>
                     <li class="active-item"><a href="login.php">Log In</a></li>
                  </ul>
               </div>
            </div>
         </nav>
      </header>
      <div style="height:100px;">
      </div>  
	<body></br></br>
    <!-- Sign Up section-->																					
		<div class="container">
			<section id="content1">
				<form name="passform" action="loginpost.php" method="post" onsubmit="return checkPassword(this);">																				
					<h1>Registration Form</h1>
                    
						<div>
							<input name="fname" type="text" placeholder="Full Name" required="" id="fullname" />
						</div>
                        <div>
							<input name="eaddr" type="email" placeholder="Email Address" required="" id="emailaddress" />
						</div>
						<div>
							<input name="pnumb" type="number" placeholder="Phone Number" required="" id="phonenumber" />
						</div>
                        <div>
							<input name="addr" type="text" placeholder="Address" required="" id="address" />
						</div>
						<div>
							<input name="pass" type="password" placeholder="Password" required="" id="password" />
						</div>
						<div>
							<input name="cpass" type="password" placeholder="Confirm Password" required="" id="confirmpassword" />
						</div>
						<div>
							<input id="register" type="submit" value="Register" />   
             <div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">×</span>
    <p>Registration Success !!!</p>
  </div>
						</div>
				</form><!-- form -->
			</section>
			</div>
        <div></div>
		<!-- Log In section -->
        <div class="container">
			<section id="content">
				<form action="log.php" method="post">			
					<h1>Login</h1>
						<div>
							<input name="email" type="text" placeholder="Username" required="" id="username" />
						</div>
						<div>
							<input name="password" type="password" placeholder="Password" required="" id="password" />
						</div>
						<div>
							<input type="submit" value="Log in" />	    
						</div>
				</form>
			</section>
        </div>
	</body> 
</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
	
      <!-- FOOTER -->
     <footer>
         <div class="line">
            <div class="s-12 l-6">
               <p>Copyright 2015, COEN 276 - Web Programming</p>
              
            </div>
            <div class="s-12 l-6">
               <a class="right" href="about.php" title="Team">Design and coding<br> Desi Dining Team</a>
            </div>
         </div>
      </footer>
      <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
      <script type="text/javascript">
         jQuery(document).ready(function($) {
            var theme_slider = $("#owl-demo");
            $("#owl-demo").owlCarousel({
                navigation: false,
                slideSpeed: 300,
                paginationSpeed: 400,
                autoPlay: 6000,
                addClassActive: true,
             // transitionStyle: "fade",
                singleItem: true
            });
            $("#owl-demo2").owlCarousel({
                slideSpeed: 300,
                autoPlay: true,
                navigation: true,
                navigationText: ["&#xf007","&#xf006"],
                pagination: false,
                singleItem: true
            });
        
            // Custom Navigation Events
            $(".next-arrow").click(function() {
                theme_slider.trigger('owl.next');
            })
            $(".prev-arrow").click(function() {
                theme_slider.trigger('owl.prev');
            })     
        }); 
		
		function checkPassword(form)
		{
			if(form.pass.value != form.cpass.value)
			{
				alert("Error: Passwords do not match!");
        		form.pass.focus();
        		return false;
			}

		}
      </script>


<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("register");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {

  var fname=document.getElementById("fullname");
  var eaddress=document.getElementById("emailaddress");
  var pno=document.getElementById("phonenumber");
  var address=document.getElementById("address");
  var pwd=document.getElementById("password");
  var cpwd=document.getElementById("confirmpassword");
  if((fname.value!='')||(eaddress.value!='')||(pno.value!='')||(address.value!='')||(pwd.value!='')||(cpwd.value!='')){
    modal.style.display = "block";
    

}
else
{
   alert("Please fill out the fields!!!");
}
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>


   </body>
</html>
