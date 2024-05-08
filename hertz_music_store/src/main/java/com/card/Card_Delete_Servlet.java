package com.card;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Card_Delete_Servlet")
public class Card_Delete_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Initialise a PrintWriter for sending responses to the client
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//get data from the web page and covert into integer
		int id = Integer.parseInt(request.getParameter("card_id"));
		
		boolean isTrue;
		//pass the id into the deletecard function in CardDBUtil
		isTrue = CardDBUtil.deletecard(id);
		
		//redirect when data insertion success or failed
		if(isTrue == true) {
			// Retrieve a list of cards after deleting card
			List<Card> card = CardDBUtil.selectallcards(1);
			request.setAttribute("listcard",card);
			//redirect to cards_index when data delete success
			RequestDispatcher dispatcher = request.getRequestDispatcher("cards_index.jsp");
			dispatcher.forward(request, response);
		}else {
			//print the java script to show a popup error to the user
			out.println("<script type='text/javascript'>");
			out.println("alert('Delete failed');");
			out.println("location='card_delete.jsp'");
			out.println("</script>");
	
		}
	
	
	}

}
