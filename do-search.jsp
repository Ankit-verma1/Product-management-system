<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Product Result</title>

<style>
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background-color: #f1f2f6;
    }

    .container {
        width: 80%;
        margin: 70px auto;
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
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
        background-color: #0097e6;
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
        transition: background-color 0.3s, transform 0.2s;
    }

    .btn:hover {
        background-color: #40739e;
        transform: translateY(-2px);
    }

    .btn-container {
        text-align: center;
    }
</style>

</head>
<body>

<!-- Include Navbar -->
<jsp:include page="navbar.jsp"/>

<div class="container">
    <h2>Search Result</h2>

<%
    String pId = request.getParameter("pId");

    try {
    

        PreparedStatement pSearch =(PreparedStatement)application.getAttribute("Search");
        pSearch.setString(1, pId);

        ResultSet rst = pSearch.executeQuery();

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
                <td><%= rst.getString(1) %></td>
                <td><%= rst.getString(2) %></td>
                <td><%= rst.getString(3) %></td>
                <td><%= rst.getString(4) %></td>
            </tr>
<%
            } while (rst.next());
%>
        </table>

        <div class="btn-container">
            <a href="search-product.jsp" class="btn">Search Again</a>
            <a href="show-products.jsp" class="btn">View All Products</a>
        </div>

<%
        } else {
%>
        <div class="no-data">No product found with this ID</div>

        <div class="btn-container">
            <a href="search-product.jsp" class="btn">Try Again</a>
            <a href="saveProduct.jsp" class="btn">Add Product</a>
        </div>
<%
        }
    } catch (Exception ex) {
%>
        <div class="no-data"><%= ex.getMessage() %></div>
<%
    }
%>

</div>

</body>
</html>
