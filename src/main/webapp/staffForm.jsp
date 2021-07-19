<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <h1>Admin Login</h1>
      </div>
      <ul class="nav">
        <li><a href="#">Home</a></li>
       
		
        
      </ul>
    </div>
  </div>
</div>
<div class="box1">
  <div class="in-box1">
    <h1>Enter Your New Staff Details!</h1>
    
	<div align="center">
		<c:if test="${staff != null}">
			<form action="update" method="post">
		</c:if>
		<table form= "class" align="center" cellpadding="15px" cellspacing="5" border="3">
			<caption>
				<h2>
					<c:if test="${staff != null}">
                        Update Staff
                    </c:if>
				</h2>
			</caption>
			<c:if test="${staff != null}">
				<input type="hidden" name="id" value="<c:out value='${staff.id}' />" />
			</c:if>
			<tr>
				<th>Name:</th>
				<td><input type="text" name="name" size="45"
					value="<c:out value='${staff.name}' />" /></td>
			</tr>
			<tr>
				<th>Email:</th>
				<td><input type="text" name="email" size="45"
					value="<c:out value='${staff.email}' />" /></td>
			</tr>
			<tr>
				<th>Phone:</th>
				<td><input type="text" name="phone" size="45"
					value="<c:out value='${staff.phone}' />" /></td>
			</tr>
			<tr>
				<th>User Name:</th>
				<td><input type="text" name="username" size="45"
					value="<c:out value='${staff.username}' />" /></td>
			</tr>
			<tr>
				<th>Password:</th>
				<td><input type="text" name="password" size="45"
					value="<c:out value='${staff.password}' />" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Save" name="saveBtn" /> <input type="submit" value="cancel" name="cancelBtn"/></td>
			</tr>
		</table>
		</form>
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