<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "staffmanagement";
String userId = "root";
String password = "Sunila@jayanthim0";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

  
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="UTF-8">
<title>Display Employees</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto|Roboto+Slab:300,400" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="loginStyle.css">
</head>
<body>
 <div id="page-container">
   <div id="content-wrap">
   <div class="hold">
  <div class="header">
    <div class="container">
      <div id="logoname">
        <h1>Display Employees</h1>
      </div>
      <ul class="nav">
        <li><a href="adminDashboard.jsp">Back</a></li>
       
		
        
      </ul>
    </div>
  </div>
</div>
<div class="box1">
  <div class="in-box1">
    <h1>Department Details</h1>
    <table form= "class" align="center" cellpadding="15px" cellspacing="10" border="1">

<tr bgcolor="#ADD8E6">
<td><b>ID</b></td>
<td><b>Name</b></td>
<td><b>Employee Count</b></td>
<td><b>Phone</b></td>
<td><b>Email</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM staff";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#E0FFFF">

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
  </div>
</div>
 </div>
   <footer id="footer">
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
   </footer>
 </div>
   
</body>
</html>