<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Expense</title>
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
	width: 400px;
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

input[type="text"], input[type="number"], textarea {
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

input[type="submit"]:hover {
	background-color: #0056b3;
}

.button-container {
	text-align: center;
	margin-top: 20px;
}

.back-button {
	padding: 10px 24px;
	background-color: #6c757d;
	color: white;
	border: none;
	border-radius: 8px;
	font-weight: bold;
	cursor: pointer;
}

.back-button:hover {
	background-color: #5a6268;
}
</style>
</head>
<body>
	<div class="form-container">
		<h2>Add Expense</h2>
		<form action="addexpense" method="post">
			<label for="name">Expense Name:</label> <input type="text" id="name"
				name="name" required> <label for="amount">Amount:</label> <input
				type="number" id="amount" name="amount" step="10" required>

			<label for="description">Description:</label>
			<textarea id="description" name="description" rows="4" required></textarea>

			<input type="submit" value="Add Expense">
			<div class="button-container">
				<button class="back-button" onclick="history.back()">⬅ Back</button>
			</div>
		</form>
	</div>
</body>
</html>
