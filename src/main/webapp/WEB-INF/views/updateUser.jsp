<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.batch.entity.User"%>
<%
User user = (User) request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
	<h1>Update User</h1>
	<hr>
	<form action="/save" method="post">
		<label>Enter Email:</label> 
		<input hidden type="number" name="id" value="<%= user.getId() %>">
		<input type="email" name="email"
			id="email" value="<%= user.getEmail() %>"> <br> <br> <label>Enter
			Name:</label> <input type="text" name="name" id="name" value="<%= user.getName() %>">
		<br> <br> <input type="submit"><input type="reset">

	</form>
</body>
</html> 	