<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
	<link rel="stylesheet" type="text/css" href="css/viewDetails.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo-hexashop.css">

    <link rel="stylesheet" href="css/style.css">

    
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-OSmPvj5/PDq7qR1G5p5Oy5F5QlR0E63fbbh7AIu7in5C5KtOZ9nvlC2xQfa3z9lP" crossorigin="anonymous">

   
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-OSmPvj5/PDq7qR1G5p5Oy5F5QlR0E63fbbh7AIu7in5C5KtOZ9nvlC2xQfa3z9lP" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
   

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-OSmPvj5/PDq7qR1G5p5Oy5F5QlR0E63fbbh7AIu7in5C5KtOZ9nvlC2xQfa3z9lP" crossorigin="anonymous">
    

    <!-- Bootstrap CSS (if not already included) -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
</head>
<body>

<script type="text//javascript" src="scripts/script.js"></script>
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
  <script src="scripts/script.js"></script>
  <br><br><br><br>






<div class="container01">
    <div class="row">
        <div class="col-md-8">
            <div class="user mt-5">
                <h1 class="text-center">Player Details</h1>
                <table class="table">
                 <c:forEach var="payment" items="${paymentDetails}">
                            <!-- Define your JSTL variables for payment details -->
                            <c:set var="payid" value="${payment.payid}" />
                            <c:set var="cardno" value="${payment.cardno}" />
                            <c:set var="name" value="${payment.name}" />
                            <c:set var="cvc" value="${payment.cvc}" />
                            <c:set var="exdate" value="${payment.exdate}" />

                            <!-- Your payment details table rows here -->
                            <tr>
                                <td>Payment ID</td>
                                <td>${payment.payid}</td>
                            </tr>
                            <tr>
                                <td>Card Number</td>
                                <td>${payment.cardno}</td>
                            </tr>
                            <tr>
                                <td>Cardholder's Name</td>
                                <td>${payment.name}</td>
                            </tr>
                            <tr>
                                <td>CVC</td>
                                <td>${payment.cvc}</td>
                            </tr>
                            <tr>
                                <td>Expiration Date</td>
                                <td>${payment.exdate}</td>
                            </tr>

                            <!-- Add more rows for other payment details -->
                        </c:forEach>
                    </table>
                <br>
                <c:url value="paymentupdate.jsp" var="paymentUpdate">
            <!-- navigate to the payment update page and show these details -->
            <c:param name="payid" value="${payid}"/>
            <c:param name="cardno" value="${cardno}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="cvc" value="${cvc}"/>
            <c:param name="exdate" value="${exdate}"/>
        </c:url>
            </div>
        </div>
        <div class="col-md-4" style="margin-top: 50px;">
            <div class="side-section mt-5" >
                 <h3 class="mt-3">Actions</h3>
                    <a href="${paymentUpdate}" class="btn btn-info btn-edit">Edit Payment</a>
                
    <c:url value="paymentdelete.jsp" var="paymentdelete">
    		<c:param name="payid" value="${payid}"/>
            <c:param name="cardno" value="${cardno}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="cvc" value="${cvc}"/>
            <c:param name="exdate" value="${exdate}"/>
	</c:url>
               
    	 <a href="${paymentdelete}" name="delete" class="btn btn-danger btn-block">Delete</a>
    				
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
