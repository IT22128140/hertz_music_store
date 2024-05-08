package com.cart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Paid_Servlet")
public class Paid_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//call the buy music function in LibraryDBUtil
		boolean issuccess = com.Library.LibraryDBUtil.buymusic(1) ;
		
		if(issuccess == true) {
			//print the java script to show a popup success to the user
			out.println("<script type='text/javascript'>");
			out.println("alert('Payment Success');");
			out.println("location='playlist.jsp'");
			out.println("</script>");
		}else {	
			//print the java script to show a popup error to the user
			out.println("<script type='text/javascript'>");
			out.println("alert('Payment failed');");
			out.println("location='home.jsp'");
			out.println("</script>");
		}
	}

}
