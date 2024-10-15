package com.payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.paymentDBUtil;


/**
 * Servlet implementation class paymentviewservlet
 */
@WebServlet("/paymentviewservlet")
public class paymentviewservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String cardno = request.getParameter("cardno");
		
		boolean isTrue;
		
		isTrue =paymentDBUtil.validate(cardno);
		
		if(isTrue == true) {
			
			 List<payment> paymentDetails = paymentDBUtil.getPaymentDetails2(cardno);
		     request.setAttribute("paymentDetails", paymentDetails);
			
			//navigate to another page
			RequestDispatcher dis = request.getRequestDispatcher("paymentdetailsview.jsp");
			dis.forward(request, response);
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.print("alert('Your payment is incorrect');");
			out.println("location = 'paymentdetailsearch.jsp'");
			out.println("</script>");
		}
		
	}

}