<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="UTF-8">
<title>Araliya Transport System - Home</title>
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
        <h1>Admin Dashboard</h1>
      </div>
      <ul class="nav">
        <li><a href="home.jsp">Log Out</a></li>
   		
		
        
      </ul>
    </div>
  </div>
</div>
<div class="box1">
  <div class="in-box1">
    <h1>Enter Your New Department details!</h1>
    <form class="form"  method="post">
    <button type="submit" name="enter" formaction="http://localhost:8090/OnlineStaffManagementSystem/staffinsert.jsp">Insert</button><br><br>
    <button type="submit" name="enter" formaction="http://localhost:8090/OnlineStaffManagementSystem/list">Update</button><br><br>
    <button type="submit" name="enter" formaction="http://localhost:8090/OnlineStaffManagementSystem/deletestaff.jsp">Delete</button><br><br>
    <button type="submit" name="enter" formaction="http://localhost:8090/OnlineStaffManagementSystem/DisplayStaffDetails.jsp">Select</button><br><br>
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