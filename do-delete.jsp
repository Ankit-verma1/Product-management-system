<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>

<html>
<head>
<title>Delete Product</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f6f8;
}

.box {
	width: 400px;
	margin: 100px auto;
	background: white;
	padding: 25px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

h1 {
	margin-bottom: 20px;
}

.success {
	color: green;
}

.error {
	color: red;
}

a {
	display: inline-block;
	margin-top: 15px;
	text-decoration: none;
	padding: 8px 15px;
	background: #007bff;
	color: white;
	border-radius: 5px;
}

a:hover {
	background: #0056b3;
}
</style>
</head>

<body>

	<div class="box">
		<%
		String pId = request.getParameter("confirmpId");
		try {
			PreparedStatement pConfirm = (PreparedStatement) application.getAttribute("Delete");
			pConfirm.setString(1, pId);
			int flag = pConfirm.executeUpdate();
			if (flag > 0) {
		%>
		<h1 class="success">Deleted Successfully!</h1>
		<a href="do-search.jsp">Go Back</a>
		<%
		} else {
		%>
		<h1 class="error">No Product Found to Delete</h1>
		<a href="delete-product.jsp">Try Again</a>
		<%
		}
		} catch (Exception ex) {
		%>
		<h1 class="error"><%=ex.getMessage()%></h1>
		<a href="do-search.jsp">Go Back</a>
		<%
		}
		%>
	</div>

</body>
</html>
