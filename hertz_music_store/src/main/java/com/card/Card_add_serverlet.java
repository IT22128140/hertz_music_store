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

@WebServlet("/Card_add_serverlet")
public class Card_add_serverlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Initialise a PrintWriter for sending responses to the client
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//get data from the web page
		String card_name = request.getParameter("card_name");
		String card_number = request.getParameter("card_number");
		int cvv = Integer.parseInt(request.getParameter("cvv"));
		int expire_month = Integer.parseInt(request.getParameter("expire_month"));
		int expire_year = Integer.parseInt(request.getParameter("expire_year"));
		
		boolean isTrue;
		//pass the data into the card_add function in CardDBUtil
		isTrue = CardDBUtil.card_add(1,card_name, card_number, cvv, expire_month, expire_year);
		
		if(isTrue == true) {
			// Retrieve a list of cards after adding a new card
			List<Card> card = CardDBUtil.selectallcards(1);
			request.setAttribute("listcard",card);
			//redirect to cards_index when data insertion success
			RequestDispatcher dispatcher = request.getRequestDispatcher("cards_index.jsp");
			dispatcher.forward(request, response);
		}else {
			//print the java script to show a popup error to the user and redirect
			out.println("<script type='text/javascript'>");
			out.println("alert('Card add failed');");
			out.println("location='card_add.jsp'");
			out.println("</script>");
		}
	}
}