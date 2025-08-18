<%@page import="com.ExpenseTrackerApplication.entity.Expense"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expense List</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f4f8;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 50px;
}

.table-container {
	background-color: #ffffff;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	width: 80%;
	max-width: 800px;
}

h2 , h3 {
	text-align: center;
	margin-bottom: 20px;
	color: #007bff;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 12px 16px;
	border: 1px solid #ccc;
	text-align: left;
}

th {
	background-color: #007bff;
	color: white;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #f1f1f1;
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
	<div class="table-container">
		<h2>Expense List</h2>
		<h3> ${msg} </h3>
		<table>
			<thead>
				<tr>
					<th>Expense Name</th>
					<th>Amount</th>
					<th>Description</th>
					<th>Created Date</th>
					<th>Updated Date</th>
					<th>Update</th>
					<th>Remove</th>
				</tr>
			</thead>
			<tbody>
				<%
				List<Expense> expList = (List<Expense>) request.getAttribute("expenses");

				for (Expense expense : expList) {
				%>

				<tr>
					<td><%=expense.getName()%></td>
					<td><%=expense.getAmount()%></td>
					<td><%=expense.getDescription()%></td>
					<td><%=expense.getCreatedDate()%></td>
					<td><%=expense.getUpdatedDate()%></td>
					<td><a href="updateExpense?eid=<%=expense.getEid()%>">Update</a></td>
					<td><a href="deleteExpense?eid=<%=expense.getEid()%>">Delete</a></td>
				</tr>

				<%
				}
				%>

			</tbody>
		</table>
	<div class="button-container">
		<button class="back-button" onclick="history.back()">⬅ Back</button>
	</div>
	</div>
</body>
</html>
