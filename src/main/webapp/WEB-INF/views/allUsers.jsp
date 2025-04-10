<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.batch.entity.User"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All User List</title>
<style>
table{
border: 1px solid black;
border-collapse: collapse;
}
th,td{
border: 1px solid black;
width:100px;
}
</style>
</head>
<body>
	<h1>All Users</h1>
	<hr>
	<a href="new"><button>Create New Users</button></a>
	<div>
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Email</th>
					<th>Name</th>
					<th>Action options</th>
				</tr>
			</thead>
			<tbody>
			<%
			int sn=1;
			List<User> users = (List<User>) request.getAttribute("userlist");
			
			if(users == null || users.isEmpty()){
			%>
			<tr> <td colspan="3">Nothings Here</td> </tr>
			
			<% 
			}else{
				
				for (User user : users) {
				%>
				<tr>
					<td><%= sn++ %></td>
					<td><%= user.getEmail() %></td>
					<td><%= user.getName() %></td>
					<td>
					<a href="/update/<%= user.getId() %>">Update</a> | <a href="/delete/<%= user.getId() %>">Delete</a>
					</td>
				</tr>
				<%
				}
			}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>