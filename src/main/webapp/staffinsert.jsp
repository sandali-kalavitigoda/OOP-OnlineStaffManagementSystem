<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="UTF-8">
<title>Insert Staff</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto|Roboto+Slab:300,400" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="loginStyle.css">
</head>
<body>
<div class="hold">
  <div class="header">
    <div class="container">
      <div id="logoname">
        <h1>Insert Staff</h1>
      </div>
      <ul class="nav">
        <li><a href="adminDashboard.jsp">Back</a></li>
   		
		
        
      </ul>
    </div>
  </div>
</div>
      
<div class="box1">
  <div class="in-box1">
 
    <form class="form" action="insert" method="post">
        <input type="text" name="name" placeholder="Enter employee name">
      	<input type="text" name="email" placeholder="Enter employee email">
      	<input type="text" name="phone" placeholder="Enter employee phone">
      	<input type="text" name="uid" placeholder="Enter user name">
      	<input type="password" name="psw" placeholder="Enter Password">
      <button type="submit" id="login-button" name="submit" value="create employee">Create Employee</button>
    </form>
  </div>
</div>
<div class="section">
  <div class="footer">
    <div class="container white">
      <div class="col three">
        <h1>Get in Touch</h1>
        <p>Terms and Conditions</p>
        <p>Privacy Policy</p>
        <p>FAQ</p>
      </div>
      <div class="col three">
        <h1>Follow Us</h1>
        <p>Facebook</p>
        <p>Instagram</p>
        <p>Twitter</p>
      </div>
      <div class="col three">
        <h1>Contact Us</h1>
        <p>Contact No : 0710710701</p>
        <p>Email : email@example.com</p>
        <p>Address : 123/B, Flower Road, Colombo 07</p>
      </div>
      <div class="group"></div>
    </div>
  </div>
</div>
<script src="script.js"></script>
<script src="loginScript.js"></script>
</body>
</html>