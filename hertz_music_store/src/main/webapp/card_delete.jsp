<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Card</title>
<link href="./css/card_a_e.css" rel="stylesheet">
<link href="./css/home.css" rel="stylesheet">
</head>
<body>

<!-- retrieve card data from the card_index using url -->
<%
		
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String number = request.getParameter("number");
	int cvv = Integer.parseInt(request.getParameter("cvv"));
	int month = Integer.parseInt(request.getParameter("month"));
	int year = Integer.parseInt(request.getParameter("year"));
		
%>
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
	<h1>Delete Card</h1>
	<br><br>
	<div class="fill">
	<!-- delete card form -->
	<form action="delete" method="post">
	
		
		<!--hide card id because user don't need it -->
		<input type="hidden" name="card_id" value="<%=id%>" ><br>
		<!--show card name before delete -->
		<div class="form-row">
			<label for="card_name">Card Name</label>
			<input type="text" id="card_name" name="card_name" value="<%=name%>" readonly><br>
		</div>
		<!--show card number before delete -->
		<div class="form-row">
			<label for="card_number">Card Number</label>
			<input type="text" id="card_number" name="card_number" value="<%=number%>" readonly><br>
		</div>
		<!--show card cvv before delete -->
		<div class="form-row">
			<label for="cvv">Card CVV</label>
			<input type="text" id="cvv" name="cvv" value="<%=cvv%>" readonly><br>
		</div>
		<!--show card expire month/year before delete -->
		<div class="form-row">
			<label for="expire_month">Card Expire Month / Year</label>
			<input type="text" id="expire_month" name="expire_month" value="<%=month%>" readonly> / 
			<input type="text" id="expire_year" name="expire_year" value="<%=year%>" readonly><br>
		</div>
		<!-- submit button to delete card -->
		<input type="submit" id="delete" name="card_delete" value="Delete Card">

	</form>
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
		            <h2> <i class="fa fa-envelope" aria-hidden="true"></i>  hertzmusic@gamil.com@</h2>
		            
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