package com.cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Pay_Servlet")
public class Pay_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//call seletecallPcards method to retrieve card data
	    List<com.card.Pcard> pcardlist =  com.card.CardDBUtil.selectallPcards(1);
	    request.setAttribute("pcardlist",pcardlist);
	    //redirect into the payment.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("payment.jsp");
		dispatcher.forward(request, response);
		
		
	}
}
