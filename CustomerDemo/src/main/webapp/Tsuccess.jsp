<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<link rel="stylesheet" href="css/Star.css">
 <link rel="stylesheet" href="css/styles.css">
<style type="text/css">
	table,th,td{
		border:1px solid  black;
	}

</style>
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




<div class="star">
	<h1>Success</h1>

<c:forEach var="ret" items="${insertDetails}">	

<div class ="form-group button">
	<a href="<c:url value='Updatetournament.jsp'>
		<c:param name='playername' value='${ret.playername}'/>
		<c:param name='gamename' value="${ret.gamename}"/>
	</c:url>">
	<button type="button" name="update">Update My Details</button>
	</a>
	</div>
	
<div class ="form-group-button1 button">
	<a href="<c:url value='Deletetournament.jsp'>
		<c:param name='playername' value='${ret.playername}'/>
		<c:param name='gamename' value="${ret.gamename}"/>
	</c:url>">
	<button type="button" name="delete">Delete My Details</button>
	</a>
	</div>
	</div>
	
</div>	

	</c:forEach>
	
</body>
</html>