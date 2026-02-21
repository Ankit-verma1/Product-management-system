<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Management System</title>

<style>
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background-color: #f1f2f6;
    }

    /* Navbar container */
    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background: linear-gradient(90deg, #273c75, #40739e);
        padding: 0 30px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    /* Logo */
    .logo {
        color: #fbc531;
        font-size: 22px;
        font-weight: bold;
        letter-spacing: 1px;
    }

    /* Menu */
    .menu {
        display: flex;
        gap: 10px;
    }

    .menu a {
        position: relative;
        padding: 14px 18px;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        transition: all 0.3s ease;
    }

    /* Hover effect */
    .menu a:hover {
        background-color: rgba(255, 255, 255, 0.2);
        transform: translateY(-2px);
    }

    /* Underline animation */
    .menu a::after {
        content: "";
        position: absolute;
        left: 50%;
        bottom: 5px;
        width: 0%;
        height: 2px;
        background-color: #fbc531;
        transition: all 0.3s ease;
        transform: translateX(-50%);
    }

    .menu a:hover::after,
    .menu a.active::after {
        width: 70%;
    }

    /* Active menu */
    .menu a.active {
        background-color: rgba(0, 0, 0, 0.2);
        font-weight: 600;
    }
</style>

</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <div class="logo">PMS</div>

    <div class="menu">
        <a href="home.jsp" class="active">Home</a>
        <a href="saveProduct.jsp">Save Product</a>
        <a href="show-products.jsp">Show Products</a>
        <a href="edit-Product.jsp">Edit Product</a>
        <a href="search-product.jsp">Search Product</a>
        <a href="delete-product.jsp">Delete Product</a>
    </div>
</div>




</body>
</html>
