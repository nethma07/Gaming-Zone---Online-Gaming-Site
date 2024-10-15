<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head> 
  <title> Gaming Zone  | Home </title> 

    <link rel="stylesheet" href="css/styles.css"> 
    <link rel="stylesheet" href="css/home.css"> 
    <meta name="viewport" content="width=device-width, initial-scale=l.e">
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     </head> 
 
 <body>
  
  //nav bar create
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




<br><br><br><br>

<section class="gallery">
  <div class="slider-wrapper">
    <div class="slider">
      <img id="slide-1" src="images/division.jpg" />

      <img id="slide-2" src="images/c359c792c5ef8e8e7523da802d0e021d.jpg" />

      <img id="slide-3" src="images/aabf83c0de8d657f54fe2e369f3294fa.jpg" />
    </div>
    <div class="slider-nav">
      <a href="#slide-1"></a>
      <a href="#slide-2"></a>
      <a href="#slide-3"></a>
    </div>
  </div>
</section>


<br><br><br><br>

<div class="chooseus">
  <img class="" src="images/play.jpeg" alt="">

      <div class="discrition">
          <h4 class="">Why Choose Us?</h4><br>
          <h1 class="display-4 mb-4"><span class="text-primary">We Have The Best Games On The</span> Internet</h1><br><br>
          <p >"you can play all the online games and play with your friends together.And you can  join to our tournaments and increase your gaming skills"</p>
          
          <br><br>
          <div class="row ">
              <div class="col">
                <h5 class="text-truncate m-0">Online support </h5>
                <img  src="images/onlinesupport.jpeg" height= "80" width= "80" alt= "logo">
                      
              </div>

              <div class="col">
                <h5 class="text-truncate m-0">Daily updated</h5>
                <img  src="images/dailyupdate.jpeg" height= "80" width= "80" alt= "logo">
                    
            </div>

            <div class="col">
              <h5 class="text-truncate m-0">Easiest way to play a game</h5> 
              <img  src="images/easiestwaytoplay.jpeg" height= "80" width= "80" alt= "logo">
                 
          </div>

          <div class="col">
            <h5 class="text-truncate m-0">Free to Play</h5>  
            <img  src="images/freetoplay.jpeg" height= "80" width= "80" alt= "logo">
              
        </div>
             
          </div>
       </div>
    </div>



    <br><br><br><br>
    <div class="buttontext">
      <h2 style="text-align:center;"> Quicly Register into a Tournament Right here! </h2> 
      <div style="text-align:center;">
        <button class="Register-button"> <a href="Inserttournament.jsp"> Register</a></button>
      </div>
    </div>
    <br><br><br><br>





<div class="services" id="services">
      <div class="servicesheading" >       
          <h1 >Our Excellent Gaming Services</h1>
      </div>
      
         
          <div class="service-box">
              <div class="service-item">
                  
                  <div>
                      <h5 class="text-uppercase ">Payment Details</h5>
                      <img  src="images/72e64325f89b0339e667523e3a1ddf48.jpg" height= "150" width= "150" alt= "logo" title= "shopping cart">
                      <p>"Now you can save your payment details in our site and save your valuable time."</p>
                      <a class="text-primary text-uppercase" href="paymentinsert.jsp">Save Details</a>
                  </div>
              </div>
          </div>

          <div class="service-box">
              <div class="service-item ">
                  
                  <div>
                      <h5 class="text-uppercase ">Play Online</h5>
                      <img  src="images/playgames.jpg" height= "150" width= "150" alt= "logo" title= "shopping cart">
                      <p>"At 'Gaming Hub', we provides you a platform to access thousand of online games
                        ,ranging from simple to complex,to Test,Buy,Play and have fun with friends and family."</p>
                      <a class="text-primary text-uppercase" href="play.jsp">Play Online</a>
                  </div>
              </div>
          </div>

          <div class="service-box">
              <div class="service-item ">
                  <div>
                      <h5 class="text-uppercase ">contact us</h5>
                      <img  src="images/sasasassas.jpg" height= "150" width= "150" alt= "logo" title= "shopping cart">
                      <p>"If you have any questions, feedback, or need assistance with our online gaming platform,
              please don't hesitate to reach out. Our dedicated support team is here to help you 24/7."</p>
                      <a class="text-primary text-uppercase" href="contact.jsp">Contact Us</a>
                  </div>
              </div>
          </div>

          <div class="service-box">
              <div class="service-item ">
                  <div>
                      <h5 class="text-uppercase ">review</h5>
                      <img  src="images/PETCARE TIPS.png" height= "150" width= "150" alt= "logo" title= "shopping cart">
                      <p>"Your Reviews are important for us to develope our site, so please kindly drop a review for us.Thank you !!"</p>
                      <a class="text-primary text-uppercase" href="InsertReview.jsp">Add Review</a>
                  </div>
              </div>
          </div>
        
      
</div><br><br><br><br>


//creating the footer
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