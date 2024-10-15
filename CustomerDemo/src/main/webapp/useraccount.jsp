

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account</title>

    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/acc.css">
    <meta name="viewport" content="width=device-width, initial-scale=l.e">
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    
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
  

	

	<c:forEach var ="cus" items ="${cusDetails}">
	
	<c:set var="id" value = "${cus.id}"/>
	<c:set var="name" value = "${cus.name}"/>
	<c:set var="email" value = "${cus.email}"/>
	<c:set var="phone" value = "${cus.phone}"/>
	<c:set var="username" value = "${cus.userName}"/>
	<c:set var="password" value = "${cus.password}"/>
	
//create my account page	
	
<div class="content">
  <div class="box">
    <div class="form">	

     
    <center> <h2> Player Details </h2> </center> <br>
    
		
     <span>  Player ID: </span> ${cus.id}  <br>	<br>
     <span>  Player Name: </span> ${cus.name}  <br> <br>
     <span>  Email: </span> ${cus.email}  <br> <br>
     <span>  Phone No:</span> ${cus.phone}  <br> <br>
     <span>  User Name: </span> ${cus.userName}  <br> <br>
     <span>  Password: </span>${cus.password}  <br> <br>
  
  	
   </c:forEach>


	
	<c:url value ="updatecustomer.jsp" var = "cusupdate">
		<c:param name="id" value = "${id}"/>
		<c:param name="name" value = "${name}"/>
		<c:param name="email" value = "${email}"/>
		<c:param name="phone" value = "${phone}"/>
		<c:param name="uname" value = "${username}"/>
		<c:param name="pass" value = "${password}"/>
	</c:url>
    
	
	<div class="buttons">
      <button><a href="${cusupdate}"> Update my data</a></button><br><br>
    </div>
	
	
	
	
	<c:url value="deletecustomer.jsp" var ="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value ="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	
	 
	</c:url>
	
	
	
	<div class="buttons">
      <button> <a href="${cusdelete}"> Delete my Account </a> </button>
    </div>
    
	</div>
  </div>
 </div>	
	
	
	
	
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