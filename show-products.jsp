<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Products</title>

<style>
body {
	margin: 0;
	font-family: "Segoe UI", Arial, sans-serif;
	background-color: #f1f2f6;
}

.container {
	width: 85%;
	margin: 60px auto;
	background: white;
	padding: 25px;
	border-radius: 10px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
}

h2 {
	text-align: center;
	color: #273c75;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	font-size: 15px;
}

th {
	background-color: #273c75;
	color: white;
	padding: 12px;
}

td {
	padding: 10px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background-color: #f5f6fa;
}

.no-data {
	text-align: center;
	color: #c0392b;
	font-size: 18px;
	padding: 20px;
}

.btn {
	display: inline-block;
	margin-top: 15px;
	padding: 10px 18px;
	background-color: #273c75;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	transition: background-color 0.3s;
}

.btn:hover {
	background-color: #40739e;
}
</style>

</head>
<body>

	<!-- Include Navbar -->
	<jsp:include page="navbar.jsp" />

	<div class="container">
		<h2>All Products</h2>

		<%
		try {

			Statement st = (Statement) application.getAttribute("Show");
			ResultSet rst = st.executeQuery("SELECT * FROM products");

			if (rst.next()) {
		%>
		<table>
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Brand</th>
				<th>Price</th>
			</tr>
			<%
			do {
			%>
			<tr>
				<td><%=rst.getString(1)%></td>
				<td><%=rst.getString(2)%></td>
				<td><%=rst.getString(3)%></td>
				<td><%=rst.getString(4)%></td>
			</tr>
			<%
			} while (rst.next());
			%>
		</table>
		<%
		} else {
		%>
		<div class="no-data">No products available</div>
		<div style="text-align: center;">
			<a href="saveProduct.jsp" class="btn">Add Product</a>
		</div>
		<%
		}
		} catch (Exception e) {
		%>
		<div class="no-data"><%=e.getMessage()%></div>
		<%
		}
		%>

	</div>
</body>
</html>
