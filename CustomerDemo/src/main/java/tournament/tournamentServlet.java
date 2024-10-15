package tournament;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/tournamentServlet")
public class tournamentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String playername = request.getParameter("playername"); // pass this value to reviewDButil
		String gamename = request.getParameter("gamename"); // pass this value to reviewDButil
		
		boolean isTrue;
		
		isTrue = tournamentDBtil.insertreview(gamename, playername); //return as boolean value
		
		//we need a variable to catch the value of the result
		
		if (isTrue == true) { 	//if the database connection is succesful
			List<tournamentStore> insertDetails = tournamentDBtil.getdetails(playername);
			request.setAttribute("insertDetails", insertDetails);
			RequestDispatcher dis = request.getRequestDispatcher("Tsuccess.jsp"); //Navigate to this page if true
			//REquestDispatcher is used to navigate to other page
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Tunsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
