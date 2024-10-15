<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Payment Details</title>
    <link rel="stylesheet" type="text/css" href="css/payInsert.css">
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
    <h1>Payment Details</h1>
    <form id="payment-form" action="insertpayment" method="post" onsubmit="return validateForm()">
                <label for="cardno">Card Number:</label>
            <input type="text" id="cardno" name="cardno" placeholder="Card Number" required>

            <label for="name">Cardholder's Name:</label>
            <input type="text" id="name" name="name" placeholder="Name on Card" required>

            <label for="cvc">CVC:</label>
            <input type="text" id="cvc" name="cvc" placeholder="CVC" required>

            <label for="exdate">Expiration Date:</label>
            <input type="text" id="exdate" name="exdate" placeholder="MM/YY" required>

            <div class="error" id="error-message"></div>

            <div class="button-container">
                <button type="submit" name="submit" id="submit-button" class="button">Save Payment</button>
                <button type="reset" name="reset" class="button">Reset</button>
                <a href="paymentdetailsearch.jsp">
                    <button type="button" name="view" class="button">View Payment Details</button>
                </a>
            </div>
    </form>
</div>

<script>
    function validateForm() {
        const cardno = document.getElementById("cardno").value;
        const name = document.getElementById("name").value;
        const cvc = document.getElementById("cvc").value;
        const exdate = document.getElementById("exdate").value;
        
        const errorMessage = document.getElementById("error-message");

        // Basic validation (you should implement more robust validation)
        if (!cardno || !name || !cvc || !exdate) {
            errorMessage.textContent = "Please fill in all fields.";
            return false;
        } else if (!/^\d{16}$/.test(cardno)) {
            errorMessage.textContent = "Invalid card number. It should be 16 digits.";
            return false;
        } else if (!/^[A-Za-z\s]+$/.test(name)) {
            errorMessage.textContent = "Invalid name.";
            return false;
        } else if (!/^\d{3}$/.test(cvc)) {
            errorMessage.textContent = "Invalid CVC. It should be 3 digits.";
            return false;
        } else if (!/^\d{2}\/\d{2}$/.test(exdate)) {
            errorMessage.textContent = "Invalid expiration date. It should be in MM/YY format.";
            return false;
        } 

        return true;
    }
</script>

<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  
  
  
  
  
  
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
