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
                     <li class="active-item"><a href="about.php">About Us</a></li>
                     <li><a href="cities.php">Cities</a></li>
                     <li><a href="contact.php">Contact</a></li>
                     <li><a href="login.php">Log In</a></li>
                  </ul>
               </div>
            </div>
         </nav>
      </header> 
    
      <section>
            <div class="space"> </div>         
          <div class="space"></div>  
              
             <!-- ABOUT US -->
         <div id="about-us">
         
              
            <div class="s-12 m-12 l-6 media-container">
               <img src="img/square.jpg" width="550" height="560" alt="">
            </div>
            <article class="s-12 m-12 l-6">
               <h2>We tell You<br> what's deliciously <br> fun around you!</h2>
               <p>We are a group of students from Santa Clara University who are connoisseur of exotic Indian Cuisine.
               Our goal is to provide a one stop portal to help you indulge your spicy cravings.
               </p>
               <!--div class="about-us-icons">
                  <i class="icon-paperplane_ico"></i> <i class="icon-trophy"></i> <i class="icon-clock"></i>
               </div-->
            </article>
         </div>
 
      </section>
      <div class="space"></div>
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
      </script>
   </body>
</html>