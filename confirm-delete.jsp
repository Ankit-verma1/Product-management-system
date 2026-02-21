<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<html>
<head>
<title>Confirm Product</title>

<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f4f6f8;
	}

	.box {
		width: 450px;
		margin: 80px auto;
		background: white;
		padding: 20px;
		border-radius: 8px;
		box-shadow: 0 0 10px rgba(0,0,0,0.1);
	}

	table {
		width: 100%;
		border-collapse: collapse;
		margin-top: 10px;
	}

	td {
		padding: 8px;
		border-bottom: 1px solid #ddd;
	}

	td:first-child {
		font-weight: bold;
		width: 40%;
	}

	h2 {
		text-align: center;
		color: #333;
	}

	.error {
		color: red;
		text-align: center;
	}

	button {
		margin-top: 15px;
		padding: 10px 20px;
		background-color: #dc3545;
		color: white;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		font-size: 15px;
	}

	button:hover {
		background-color: #b52a37;
	}

	.center {
		text-align: center;
	}
</style>
</head>

<body>

<div class="box">
<%
	String cpId = request.getParameter("pId");

	try {
		PreparedStatement pConfirm =(PreparedStatement)application.getAttribute("Confirm");
		pConfirm.setString(1, cpId);

		ResultSet rConfirm = pConfirm.executeQuery();

		if (rConfirm.next()) {
%>
	<h2>Product Found</h2>

<%
			do {
%>
	<table>
		<tr>
			<td>Product ID</td>
			<td><%= rConfirm.getString(1) %></td>
		</tr>
		<tr>
			<td>Product Name</td>
			<td><%= rConfirm.getString(2) %></td>
		</tr>
		<tr>
			<td>Product Brand</td>
			<td><%= rConfirm.getString(3) %></td>
		</tr>
		<tr>
			<td>Product Price</td>
			<td><%= rConfirm.getString(4) %></td>
		</tr>
	</table>
<%
			} while (rConfirm.next());
%>

	<div class="center">
		<form action="do-delete.jsp" method="post">
			<input type="hidden" name="confirmpId" value="<%= cpId %>">
			<button type="submit">Confirm Delete</button>
		</form>
	</div>

<%
	} else {
%>
	<h2 class="error">No Product found with this ID</h2>
<%
	}
	} catch (Exception ex) {
%>
	<h2 class="error"><%= ex.getMessage() %></h2>
<%
	}
%>
</div>

</body>
</html>
