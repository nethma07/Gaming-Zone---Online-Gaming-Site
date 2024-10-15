package Review;

//Controller

 import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username"); // pass this value to reviewDButil
		String review = request.getParameter("name"); // pass this value to reviewDButil
		
		boolean isTrue;
		
		isTrue = ReviewDButil.insertreview(review, username); //return as boolean value
		
		//we need a variable to catch the value of the result
		
		if (isTrue == true) { 	//if the database connection is succesful
			List<retirveStore> insertDetails = ReviewDButil.getdetails(username);
			request.setAttribute("insertDetails", insertDetails);
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp"); //Navigate to this page if true
			//REquestDispatcher is used to navigate to other page
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
