package com.payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.paymentDBUtil;

@WebServlet("/paymentdeleteservlet")
public class paymentdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String payid = request.getParameter("payid");
		boolean isTrue;
		
		isTrue = paymentDBUtil.deletepayment(payid);
		
		if (isTrue == true) {
			 request.getSession().invalidate(); 
			 
			// Display a JavaScript message
			    response.setContentType("text/html");
			    PrintWriter out = response.getWriter();
			    out.println("<html><body>");
			    out.println("<script type='text/javascript'>");
			    out.println("alert('Payment Details deleted. Please add new payment details.');");
			    out.println("window.location.href='paymentinsert.jsp';"); // Redirect to the login page
			    out.println("</script>");
			    out.println("</body></html>");
		}
		else {
			
			List<payment> paymentDetails = paymentDBUtil.getPaymentDetails(payid);
			request.setAttribute("paymentDetails", paymentDetails);
			
			// Display a JavaScript error message
		    response.setContentType("text/html");
		    PrintWriter out = response.getWriter();
		    out.println("<html><body>");
		    out.println("<script type='text/javascript'>");
		    out.println("alert('Cannot delete .');");
		    out.println("window.location.href='paymentdetailsview.jsp';"); // Redirect to the user profile page
		    out.println("</script>");
		    out.println("</body></html>");
		}
	}

}