<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f4f8;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	background-color: #ffffff;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	width: 350px;
}

h2 {
	text-align: center;
	margin-bottom: 25px;
}

label {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
}

input[type="text"], input[type="password"], input[type="email"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 8px;
}

input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	color: white;
	border: none;
	border-radius: 8px;
	font-weight: bold;
	cursor: pointer;
}

a {
	display: block;
	text-align: center;
	margin-top: 10px;
	color: #007bff;
	text-decoration: none;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
h4 {
	text-align: center;
	color: #ff0000;
}
</style>
</head>
<body>
	<div class="form-container">
		<h2>Register</h2>
		<%-- Display error message if any --%>
		<h4> ${message}</h4>
		<form action="register" method="post">
			<label for="fullname">Full Name:</label> <input type="text"
				id="fullname" name="name" required> <label for="email">Email:</label>
			<input type="email" id="email" name="email" required> <label
				for="username">Username:</label> <input type="text" id="username"
				name="username" required> <label for="password">Password:</label>
			<input type="password" id="password" name="password" required>

			<input type="submit" value="Register">
			 <a href="/">Already
				have an account? Login here</a>
		</form>
	</div>
</body>
</html>
