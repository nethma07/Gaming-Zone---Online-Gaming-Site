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
 * Servlet implementation class paymentupdateservlet
 */
@WebServlet("/paymentupdateservlet")
public class paymentupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		//save the details that entered by player
		 String payid = request.getParameter("payid");
		 String cardno = request.getParameter("cardno");
		 String name = request.getParameter("name");
		 String cvc = request.getParameter("cvc");
		 String exdate = request.getParameter("exdate");
			
		
		boolean isTrue;
		
		isTrue = paymentDBUtil.updatepayment(payid,cardno,name,cvc,exdate);
		
		 if (isTrue) {
	            List<payment> paymentDetails = paymentDBUtil.getPaymentDetails(payid);
	            request.setAttribute("paymentDetails", paymentDetails);
	            // JavaScript message for success
	            out.println("<script>alert('Update successful!');</script>");
	            // Include the JSP page with the message
	            RequestDispatcher dis = request.getRequestDispatcher("paymentdetailsview.jsp");
	            dis.include(request, response);
	        } else {
	        	List<payment> paymentDetails = paymentDBUtil.getPaymentDetails(payid);
	            request.setAttribute("paymentDetails", paymentDetails);
	            // JavaScript message for failure
	            out.println("<script>alert('Update unsuccessful. Please try again.');</script>");
	 
	            RequestDispatcher dis = request.getRequestDispatcher("paymentdetailsview.jsp");
	            dis.forward(request, response);
	        }
	}

}