<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="./css/payment.css" rel="stylesheet">
<link href="./css/home.css" rel="stylesheet">
<title>Pay</title>
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
	
	<br><br>
	<h1>Select Card to pay</h1>
	<br><br>
	
	<div class="container">
	<c:forEach var="pcard" items="${pcardlist}">
	
		<div class="fill">
		
		<form action="paid" method="post">
			<div>
			<c:out value="${pcard.card_name}"/><br><br>
			<c:out value="${pcard.card_number}"/><br><br>		
			
			<input type="submit" name="pay" value="Pay">
			</div>
		</form>
		</div>
		
	</c:forEach>
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