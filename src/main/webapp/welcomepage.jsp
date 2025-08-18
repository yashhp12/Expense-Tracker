<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome - Expense Tracker</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f4f8;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.welcome-container {
	background-color: #ffffff;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	text-align: center;
	width: 400px;
}

h1 {
	margin-bottom: 30px;
	color: #007bff;
}

a {
	display: inline-block;
	margin: 10px;
	padding: 12px 24px;
	background-color: #007bff;
	color: white;
	text-decoration: none;
	border-radius: 8px;
	font-weight: bold;
}

h1 {
	font-size: 24px;
	margin-bottom: 20px;
}

a:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div class="welcome-container">
		<h1>hello ${username},</h1>
		<h1>Welcome to Expense Tracker</h1>
		<h1>${msg}</h1>
		<a href="addexpense">Add Expense</a> <a href="expenselist">Expense
			List</a> <a href="logout" style="background-color: #dc3545;">Logout</a>
			<button onclick="history.back()" style="margin-top: 20px; padding: 10px 20px; background-color: #6c757d; color: white; border: none; border-radius: 8px; cursor: pointer;">
    ⬅ Back
</button>
	</div>
</body>
</html>
