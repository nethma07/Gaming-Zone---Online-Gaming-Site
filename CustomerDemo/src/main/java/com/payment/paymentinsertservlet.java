package com.payment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.paymentDBUtil;


/**
 * Servlet implementation class paymentinsertservlet
 */
@WebServlet("/paymentinsertservlet")
public class paymentinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		    
		 	String cardno = request.getParameter("cardno");
		 	String name = request.getParameter("name");
		 	String cvc = request.getParameter("cvc");
			String exdate = request.getParameter("exdate");
			
		
		boolean isTrue;//catch the return value by the variable
		
		isTrue = paymentDBUtil.insertpayment(cardno,name,cvc,exdate);
		
		if(isTrue == true) {//check the database connection success or not
			 out.println("<script type=\"text/javascript\">");
			    out.println("alert(' Payment successfull!');");
			    out.println("window.location.href = 'paymentinsert.jsp';"); 
			    out.println("</script>");
		} else {
		   
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert('Payment Unsuccessfull!');");
		    out.println("window.location.href = 'paymentinsert.jsp';"); 
		    out.println("</script>");
		}
	}

}