<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="./css/card_index.css" rel="stylesheet">
<link href="./css/home.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Card Management</title>
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
	<h1>Saved Cards</h1>
	<br><br>
	<!-- creating table -->		
	<table class="table table-bordered">
		<!-- table head -->
		<thead>
			<tr>
				<th>Card Name</th>
				<th>Card Number</th>
				<th>Expire Month / Year</th>
			</tr>
				
		</thead>
		<!-- table body -->
		<tbody>
			<!-- foreach loop to retrieve all the data from the list -->	
			<c:forEach var="card" items="${listcard}">
				<!-- set retrieved data in to variables -->
				<c:set var="id" value="${card.cardid}"/>
				<c:set var="name" value="${card.card_name}"/>
				<c:set var="number" value="${card.card_number}"/>
				<c:set var="cvv" value="${card.cvv}"/>
				<c:set var="month" value="${card.month}"/>
				<c:set var="year" value="${card.year}"/>
				
				<tr>
					<!-- print retrieved data -->
					<td><c:out value="${card.card_name}" /></td>
					<td><c:out value="${card.card_number}" /></td>
					<td><c:out value="${card.month} / " /><c:out value="${card.year}" /></td>
					<td>	
						<!-- pass the values to the card_edit page using the url -->					
						<c:url value="card_edit.jsp" var="card_edit">
							<!-- set values to the parameters to send it through the url -->
							<c:param name="id" value="${id}"/>
							<c:param name="name" value="${name}"/>
							<c:param name="number" value="${number}"/>
							<c:param name="cvv" value="${cvv}"/>
							<c:param name="month" value="${month}"/>
							<c:param name="year" value="${year}"/>
			
						</c:url>
						<!-- button to activate the card_edit c:url -->
						<a href="${card_edit}">
							<input type="button" id="edit" name="edit" value="Edit Card">
						</a>
						<!-- pass the values to the card_delete page using the url -->	
						<c:url value="card_delete.jsp" var="card_delete">
							<!-- set values to the parameters to send it through the url -->
							<c:param name="id" value="${id}"/>
							<c:param name="name" value="${name}"/>
							<c:param name="number" value="${number}"/>
							<c:param name="cvv" value="${cvv}"/>
							<c:param name="month" value="${month}"/>
							<c:param name="year" value="${year}"/>
						
						</c:url>
						<!-- button to activate the card_delete c:url -->
						<a href="${card_delete}">
							&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="delete" name="deletecard" value="Delete">
						</a>
					
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- button to redirect into card_add page -->	
	<a id="add2" href="card_add.jsp">
		<input type="button" name="add_card" id="add" value="+   Add Card">
	</a>
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