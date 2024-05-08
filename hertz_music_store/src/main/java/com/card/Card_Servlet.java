package com.card;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Card_Servlet")
public class Card_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieve a list of cards
		List<Card> card = CardDBUtil.selectallcards(1);
		request.setAttribute("listcard",card);
		//redirect to card_index page
		RequestDispatcher dispatcher = request.getRequestDispatcher("cards_index.jsp");
		dispatcher.forward(request, response);
	}
}