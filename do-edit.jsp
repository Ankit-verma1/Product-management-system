<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product Result</title>

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
		String uName = request.getParameter("pName");
		String uBrand = request.getParameter("pBrand");
		String uPrice = request.getParameter("pPrice");
		String pId = request.getParameter("pId");

		try {
			PreparedStatement pUpdate = (PreparedStatement) application.getAttribute("Edit");
			pUpdate.setString(1, uName);
			pUpdate.setString(2, uBrand);
			pUpdate.setString(3, uPrice);
			pUpdate.setString(4, pId);

			int flagUpdate = pUpdate.executeUpdate();

			if (flagUpdate >= 1) {
		%>
		<div class="success">Product Updated Successfully</div>
		<div class="message">Product details have been updated.</div>
		<a href="edit-Product.jsp" class="btn">Update Another</a> 
		<a href="show-products.jsp" class="btn">View Products</a>
		<%
		} else {
		%>
		<div class="error">Update Failed</div>
		<div class="message">No product found with given ID.</div>

		<a href="edit-Product.jsp" class="btn">Try Again</a>
		<%
		}

		} catch (Exception ex) {
		%>
		<div class="error">Error Occurred</div>
		<div class="message"><%=ex.getMessage()%></div>

		<a href="edit-Product.jsp" class="btn">Go Back</a>
		<%
		}
		%>

	</div>

</body>
</html>
