<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Update Staff</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto|Roboto+Slab:300,400"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="loginStyle.css">
</head>
<body>

	<h2>Update Staff</h2>

	<div align="center">
		<table border="1" cellpadding="5">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>email</th>
				<th>phone</th>
				<th>user name</th>
				<th>password</th>
				<th>Action</th>
			</tr>
			<c:forEach var="book" items="${staffList}">
				<tr>
					<td><c:out value="${book.id}" /></td>
					<td><c:out value="${book.name}" /></td>
					<td><c:out value="${book.email}" /></td>
					<td><c:out value="${book.phone}" /></td>
					<td><c:out value="${book.username}" /></td>
					<td><c:out value="${book.password}" /></td>
					<td><a href="/OnlineStaffManagementSystem/edit?id=<c:out value='${book.id}' />">Update</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>