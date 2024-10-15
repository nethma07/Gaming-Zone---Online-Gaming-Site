
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
	<html>
	<head>
	 <link rel="stylesheet" href="css/styles.css">
	<meta charset="ISO-8859-1">
	<title>Display Tournament details</title>
	</head>
	<body>
	
	<nav>
   
    <div class="logo">
      <a href="index.php"><img  src="images/newicon.jpg" height= "150" width= "150" alt= "logo" title= "shopping cart">  Gaming Zone</a>   
    </div>
    
    <div class="menu-icon">&#9776;</div>
  

    <ul class="menu">
      <li><a href="index.jsp" >Home</a></li>
      <li><a href="contact.jsp">Contact Us</a></li>
      <li><a href="play.jsp">Play</a></li>
      <li><a href="login.jsp"  ><button id="loginButton">Login</button></a></li>
      
    </ul>
    
  </nav>  
  
  <br><br><br><br>
	
	
	
	

		<table>
		<tr>
			<th>Player Name</th>
			<th>Game Name</th>
		
		
		</tr>
		<%
			try{
				
				Connection con = null;
				Statement stat = null;
				ResultSet rs = null;

				Class.forName("com.mysql.jdbc.Driver");
			 	con =DriverManager.getConnection("jdbc:mysql://localhost:3306/online_gaming_site", "root", "Ashen123");
				stat = con.createStatement();
				
				String sql = "select * from tournament";
			 	rs = stat.executeQuery(sql);
			 	
			 	while(rs.next()){
			 			out.print("<h1>"+rs.getString(2)+rs.getString(1)+"</h1>");
			 	}
			
			}catch(Exception e){}
			%>
			
		</table>
		
		
		
		<footer class="footer">
  
  <div class="container">

    <div class="raw">

      <div class="footer-col">
        <hr>
        <h4>About Us</h4>
        <p style="color: #fff;">"At 'Gaming Hub', we provides you a platform to access thousand of online games
            ,ranging from simple to complex,to Test,Buy,Play and have fun with friends and family."</p>
      </div>

        <div class="footer-col">
        <hr>
        <h4 id="Usefull-Links"> Usefull Links</h4>
        <ul>
          <li><a href="paymentinsert.jsp">Payment Details</a></li>
          <li><a href="play.jsp">Play Online</a></li>
          <li><a href="contact.jsp">Contact us</a></li>
          <li><a href="InsertReview.jsp">Review</a></li>
        </ul>
      </div>

      <div class="footer-col">
        <hr>
        <h4>Get In Touch</h4>
          <div class="social-links">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>           
          </div>
      </div>
      
          <div class="footer-col">
            <h4>©2023 All Right Reserved</h4>       
          </div>

    </div>
  </div>
</footer>
		

	</body>
	</html>