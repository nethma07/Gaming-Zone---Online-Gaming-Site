<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/styles.css"> 
    <link rel="stylesheet" href="css/register.css"> 
    <meta name="viewport" content="width=device-width">
    <script src="scripts/script.js"></script>  
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<meta charset="ISO-8859-1">
<title>Update Account</title>
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

  <div class="SignUpcontainer">	
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName= request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	

 //creating customer update form
	<form action = "update" method = "post">
	
		<div class="form-group">
        	<label for="id"> Player ID </label>
        	<input type = "text" name = "cusid" value = "<%= id%>"readonly><br>
        </div>
        
        <div class="form-group">
        	<label for="name"> Player Name </label>
        	<input type = "text" name = "name" value = "<%= name%>"><br>
        </div>
        
        <div class="form-group">
        	<label for="email"> Email </label>
        	<input type = "text" name = "email" value = "<%=email%>"><br>
        </div>
        
        <div class="form-group">
        	<label for="phone"> Phone No</label>
        	<input type = "text" name = "phone" pattern="[0-9]{10}" value = "<%= phone%>"><br>
        </div>
        
        <div class="form-group">
        	<label for="username"> User Name </label>
        	<input type = "text" name = "uname" value = "<%=userName%>"><br>
        </div>
        
        <div class="form-group">
        	<label for="password"> Password </label>
        	<input type = "password" name = "pass" value = "<%=password%>"><br>
        </div>
        
         
        <div class="form-group">
        	
        	<input type = "submit" name ="submit" value = "Update My Data"><br>
        </div>
	
	</form>
</div>
	<br><br><br>
	
	
	
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