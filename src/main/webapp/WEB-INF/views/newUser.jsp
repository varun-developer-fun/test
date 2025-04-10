<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.project.batch.entity.User" %>
	<% User user = (User)request.getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New User</title>
</head>
<body>
	<h1>New User</h1>
	<hr>
	<hr>
	<form action="save" method="post">
		<label>Enter Email:</label> 
		<input type="email" name="email" id="email"> <br> <br> 
			<label>Enter Name:</label> <input
			type="text" name="name" id="name"> <br> <br> 
			<input type="submit"><input type="reset">

	</form>
</body>
</html>