<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Home</title>
	<link href="./css/home.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Sriracha&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>

<body>
<div class="header">
    <img src="./images/logo.png" alt="logo" class="logo">
    <span class="topic">Hertz Music Store</span>
    <div class="button1">
	    <form action="#" method="post">
				<input type="submit" value="Profile" id="button">
		</form>
	    <button>Logout</button>
    </div>
</div>

<div class="navbar">
  <a href="#" class="active1">Home</a>
  <a class="active2">About Us</a>
  <a class="active3">Contact Us</a>
  <input type="text" placeholder="Search..">
</div>

<br>
 		<div id="slideshow1" class="slideshow-container">

        <div class="mySlides fade">
            <img src="./images/slide3.jpeg" style="width:100%">
        </div>

        <div class="mySlides fade">
            <img src="./images/slide2.png" style="width:100%">
        </div>

        <div class="mySlides fade">
            <img src="./images/slide1.png" style="width:100%">
        </div>

        <div class="mySlides fade">
            <img src="./images/slide4.jpg" style="width:100%">
        </div>

        <br>

        <div style="text-align:center">

            <a class="prev" onclick="plusSlides(-1,slideshow1)">&#10094;</a>

            <span class="dot" onclick="currentSlide(1, slideshow1)"></span> 
            <span class="dot" onclick="currentSlide(2, slideshow1)"></span> 
            <span class="dot" onclick="currentSlide(3, slideshow1)"></span>
            <span class="dot" onclick="currentSlide(4, slideshow1)"></span>  
        
            <a class="next" onclick="plusSlides(1, slideshow1)">&#10095;</a>

        </div>
    </div>

    <br><br><br><br>
    
    <div class="pbutton_container">
        <div class="center">
        	<form action="addedCards" method="post">
				<input type="submit" value="Your Cards" id="pbutton">
			</form>
            
        </div>
    </div>
    <div class="pbutton_container">
        <div class="center">
            <form action="payment" method="post">
				<input type="submit" value="Pay" id="pbutton">
			</form>
        </div>
    </div>
    <script src="./js/home.js"></script>

    <br><br><br>


    <hr>

    <br><br><br><br>
    
    <div class="para1">

        <div class="para2">

            <h2>Explore a Vast Catalog</h2>
            <br>
            <p>Browse our extensive catalog of music instruments, sheet music, audio gear, and more. Find your perfect instrument or accessory, from acoustic guitars to synthesizers, all in one place.</p>
        
        </div>

        <div class="para3">

            <h2>Premium Sound Quality</h2>
            <br>
            <p>Elevate your listening experience with our premium audio equipment. From headphones and speakers to recording gear, we offer the tools you need to enjoy and create music like never before.</p>
            
        </div>
        
        <div class="para4">

            <h2>Exclusive Offers</h2>
            <br>
            <p>Don't miss out on our exclusive promotions and limited-time offers. We're committed to bringing you the best deals and discounts, ensuring you get the most value for your money.</p>
        
        </div>

    </div>

    <div class="footer2">

		<footer>
		        <div  class="row">
		            <div class="col">
		                <div class="para">
		               		<h3>
		               		ABOUT US&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                    <br><br>
		                    ARTISTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                    <br><br>
		                    ADVERTISING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                    <br><br>
		                    WEB PLAYER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                    <br><br>
		                    JOBS
		                    </h3> 
		                </div>
		                <div class="para">
		               		<h3>
		               		SUPPORT	
		                    <br><br>
		                    DEVELOPERS
		                    <br><br>
		                    INVESTING
		                    <br><br>
		                    MOBILE APP
		                    <br><br>
		                    FOR THE RECORDS
		                    </h3> 
		                </div>
		                
		            </div>
		         
		            <div class="col">
		
		            <img src="./images/logo.png" alt="logo" class="logo2">
		
		            </div>
		            
		           
		           <div class="col">
		            <h2><i class="fa fa-volume-control-phone" aria-hidden="true"></i> 011-7491821</h2>
		            <h2> <i class="fa fa-envelope" aria-hidden="true"></i>  hertzmusic@gamil.com</h2>
		            
		               <div class="social-icons">
		                <h2>Follow us on</h2>
		                <a href="https://www.facebook.com"><i class="fa fa-facebook-official" aria-hidden="true"></i></a>
		                <a href="https://www.instagram.com"><i class="fa fa-instagram" aria-hidden="true"></i></a>
		                <a href="https://www.twitter.com"><i class="fa fa-twitter" aria-hidden="true"></i></a>
		                <a href="https://www.pinterest.com"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
		
		               </div>
		           </div>
		          
		        </div>
   		</footer>
    </div>   

</body>
</html>