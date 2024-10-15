<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Payment Details</title>

<link rel="stylesheet" type="text/css" href="css/paySer.css">
<link rel="stylesheet" type="text/css" href="css/styles.css">

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






<div class="container01">
    <form action="viewpayment" method="post">
        <div class="view">
            <label for="cardno">Credit Card Number (16 digits):</label>
            <input type="text" id="cardno" name="cardno" required pattern="^\d{16}$" title="Credit card number must be 16 digits" placeholder="Enter a 16-digit card number">
            <div id="validationMessage"></div>
            <button type="submit" class="btn btn-primary btn-block btn-large">Show Payment details</button>
        </div>
    </form>
</div>

<script>
function validateCardNumber() {
    const cardNumberInput = document.getElementById("cardno");
    const validationMessage = document.getElementById("validationMessage");
    const cardNumberPattern = /^\d{16}$/;

    if (cardNumberPattern.test(cardNumberInput.value)) {
        validationMessage.textContent = "Credit Card Number Correct";
        validationMessage.style.color = "green";
    } else {
        validationMessage.textContent = "Credit card number must be 16 digits";
        validationMessage.style.color = "red";
    }
}

document.getElementById("cardno").addEventListener("input", validateCardNumber);
</script>


<br><br><br><br><br><br><br><br><br><br><br><br>






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
