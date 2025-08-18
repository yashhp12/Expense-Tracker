<%@page import="com.ExpenseTrackerApplication.entity.Expense"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Expense</title>
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
	background-color: #28a745;
	color: white;
	border: none;
	border-radius: 8px;
	font-weight: bold;
	cursor: pointer;
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

input[type="submit"]:hover {
	background-color: #218838;
}
</style>
</head>
<body>
	<div class="form-container">
		<h2>Update Expense</h2>
		<form action="/updateExpense" method="post">
			<label for="eid">Expense ID:</label> <input type="number" readonly="readonly" name="eid"
				value="${expense.eid}"> <label for="name">Expense
				Name:</label> <input type="text" id="name" name="name"
				value="${expense.name}" required> <label for="amount">Amount:</label>
			<input type="number" id="amount" name="amount" step="10"
				value="${expense.amount}" required> <label for="description">Description:</label>
			<textarea id="description" name="description" rows="4" required>${expense.description}</textarea>

			<input type="submit" value="Update Expense">
		</form>
		<div class="button-container">
			<button class="back-button" onclick="history.back()">⬅ Back</button>
		</div>
	</div>
</body>
</html>
