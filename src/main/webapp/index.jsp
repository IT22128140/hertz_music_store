<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--Dewpura D.A.M.M.-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<footer>, initial-scale=1.0">
    <title>UNIQUE Advertising Agency - Home</title>
    <link href="./css/home.css" rel="stylesheet" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sriracha&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">

</head>

<body>
    <?php include 'header.php';?>

    <div id="slideshow1" class="slideshow-container">

        <div class="mySlides fade">
            <img src="./images/slide1.png" style="width:100%">
        </div>

        <div class="mySlides fade">
            <img src="./images/slide2.png" style="width:100%">
        </div>

        <div class="mySlides fade">
            <img src="./images/slide3.png" style="width:100%">
        </div>

        <div class="mySlides fade">
            <img src="./images/slide4.png" style="width:100%">
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
            <a href="./requirement.php">
                <button id="pbutton" >Submit Your Proposal Now</button>
            </a>
        </div>
    </div>
    <div class="pbutton_container">
        <div class="center">
            <a href="./publication.php">
                <button id="pbutton" >Submit Your Advertiesment Now</button>
            </a>
        </div>
    </div>
    
    <br><br><br><br>

    <div class="partner">

        <h1>Our Partners</h1>

    </div>

    <br><br><br><br><br><br>

    <div id="slideshow2" class="slideshow-container">

        <div class="mySlides fade">
            <img src="./images/meta.jpg" class="jpg">
        </div>

        <div class="mySlides fade">
            <img src="./images/google_ads.jpg" class="jpg">
        </div>

        <div class="mySlides fade">
            <img src="./images/amazon.jpg" class="jpg">
        </div>

        <div class="mySlides fade">
            <img src="./images/twitter.jpg" class="jpg">
        </div>

        <div class="mySlides fade">
            <img src="./images/reddit.jpg" class="jpg">
        </div>
        
      <br><br>
        
        <div style="text-align:center">

            <a class="prev" onclick="plusSlides(-1, slideshow2)">&#10094;</a>
            
            <span class="dot" onclick="currentSlide(1, slideshow2)"></span> 
            <span class="dot" onclick="currentSlide(2, slideshow2)"></span> 
            <span class="dot" onclick="currentSlide(3, slideshow2)"></span>
            <span class="dot" onclick="currentSlide(4, slideshow2)"></span> 
            <span class="dot" onclick="currentSlide(5, slideshow2)"></span> 

            <a class="next" onclick="plusSlides(1, slideshow2)">&#10095;</a>

        </div>
    </div>

    <br><br><br><br>

    <div class="pbutton_container">
        <div class="center">
            <a href="./offers.php">
                <button id="pbutton">See Offers</button>
            </a>
        </div>
    </div>

    <br><br><br><br><br>

    <hr>

    <div class="rate">

        <br><br><br>

        <div id="slideshow3" class="slideshow-container">

            <div class="mySlides fade">
                <img src="./images/rev1.png" style="width:100%">
            </div>

            <div class="mySlides fade">
                <img src="./images/rev2.png" style="width:100%">
            </div>

            <div class="mySlides fade">
                <img src="./images/rev3.png" style="width:100%">
            </div>

            <div class="mySlides fade">
                <img src="./images/rev4.png" style="width:100%">
            </div>

            <div class="mySlides fade">
                <img src="./images/rev5.png" style="width:100%">
            </div>

            <br>

            <div style="text-align:center">

                <a class="prev"c id="prev3" onclick="plusSlides(-1, slideshow3)">&#10094;</a>

                <span class="dot" onclick="currentSlide(1, slideshow2)"></span> 
                <span class="dot" onclick="currentSlide(2, slideshow2)"></span> 
                <span class="dot" onclick="currentSlide(3, slideshow2)"></span>
                <span class="dot" onclick="currentSlide(4, slideshow2)"></span>
                <span class="dot" onclick="currentSlide(5, slideshow2)"></span> 

                <a class="next" id="next3" onclick="plusSlides(1, slideshow3)">&#10095;</a>

            </div>

            <script src="./js/home.js"></script>

        </div>

        <br><br><br>
    </div>

    <hr>

    <br><br><br><br>
    
    <div class="para1">

        <div class="para2">

            <h2>Monthly Reporting</h2>
            <p>We report to you on a monthly basis what we have done, what results we are achieving, and what we plan to work on next. We will keep you involved every step of the way.</p>
        
        </div>

        <div class="para3">

            <h2>Increase Sales</h2>
            <p>Watch as your business grows and expands from all the new leads, inquiries and traffic. We drive wallet-in-hand consumers to you!</p>
            <br><br>
        </div>
        
        <div class="para4">

            <h2>Grow Your Customer Base</h2>
            <p>We help drive more traffic, customers, and sales to your business than any other Traditional or Digital Marketing Agency.</p>
        
        </div>

    </div>

    <div class="footer2">

    <?php include 'footer.php';?>

    </div>
    
</body>