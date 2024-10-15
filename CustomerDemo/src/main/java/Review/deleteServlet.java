package Review;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteServlet
 */
@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("username");
		
		boolean result;
		
		result = ReviewDButil.deletereviews(username);
		
		if(result == true) {
			
			List<retirveStore>insertDetails = ReviewDButil.getdetails(username);
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
