<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Product Result</title>

<style>
body {
	margin: 0;
	font-family: "Segoe UI", Arial, sans-serif;
	background-color: #f1f2f6;
}

.result-container {
	width: 450px;
	margin: 80px auto;
	background: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
	text-align: center;
}

.success {
	color: #27ae60;
	font-size: 24px;
	margin-bottom: 10px;
}

.error {
	color: #c0392b;
	font-size: 22px;
	margin-bottom: 10px;
}

.message {
	font-size: 15px;
	color: #555;
	margin-bottom: 20px;
}

.btn {
	display: inline-block;
	padding: 10px 18px;
	margin: 5px;
	background-color: #273c75;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	transition: background-color 0.3s, transform 0.2s;
}

.btn:hover {
	background-color: #40739e;
	transform: translateY(-2px);
}
</style>

</head>
<body>

	<!-- Include Navbar -->
	<jsp:include page="navbar.jsp" />

	<div class="result-container">

		<%
		String pId = request.getParameter("pId");
		String pName = request.getParameter("pName");
		String pBrand = request.getParameter("pBrand");
		String pPrice = request.getParameter("pPrice");

		try {
			PreparedStatement ps = (PreparedStatement) application.getAttribute("Insert");
			ps.setString(1, pId);
			ps.setString(2, pName);
			ps.setString(3, pBrand);
			ps.setString(4, pPrice);

			int flag = ps.executeUpdate();

			if (flag >= 1) {
		%>
		<div class="success">✔ Product Saved Successfully</div>
		<div class="message">Your product has been added to the system.</div>

		<a href="saveProduct.jsp" class="btn">Add Another Product</a> <a
			href="show-products.jsp" class="btn">View Products</a>

		<%
		} else {
		%>
		<div class="error">✖ Product Not Saved</div>
		<div class="message">Something went wrong. Please try again.</div>

		<a href="saveProduct.jsp" class="btn">Go Back</a>

		<%
		}
		} catch (Exception e) {
		%>
		<div class="error">⚠ Error Occurred</div>
		<div class="message"><%=e.getMessage()%></div>

		<a href="saveProduct.jsp" class="btn">Try Again</a>
		<%
		}
		%>

	</div>

</body>
</html>
