<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Product</title>

<style>
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background-color: #f1f2f6;
    }

    /* Form container */
    .form-container {
        width: 420px;
        margin: 60px auto;
        background: white;
        padding: 25px 30px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    }

    .form-container h2 {
        text-align: center;
        color: #273c75;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
    }

    td {
        padding: 10px 5px;
        font-size: 14px;
    }

    /* Input fields */
    input[type="text"] {
        width: 100%;
        padding: 8px 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: all 0.3s ease;
    }

    /* Focus effect */
    input[type="text"]:focus {
        border-color: #40739e;
        box-shadow: 0 0 6px rgba(64,115,158,0.6);
        outline: none;
    }

    /* Button */
    button {
        width: 100%;
        padding: 10px;
        background-color: #273c75;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 15px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.2s;
    }

    button:hover {
        background-color: #40739e;
        transform: translateY(-2px);
    }

    button:active {
        transform: translateY(0);
    }
</style>

</head>
<body>

<!-- Optional: Include navbar -->
<jsp:include page="navbar.jsp"/>

<div class="form-container">
    <h2>Save Product</h2>

    <form action="save-records.jsp" method="post">
        <table>
            <tr>
                <td>Product ID</td>
                <td><input type="text" name="pId" required></td>
            </tr>

            <tr>
                <td>Product Name</td>
                <td><input type="text" name="pName" required></td>
            </tr>

            <tr>
                <td>Product Brand</td>
                <td><input type="text" name="pBrand" required></td>
            </tr>

            <tr>
                <td>Product Price</td>
                <td><input type="text" name="pPrice" required></td>
            </tr>

            <tr>
                <td colspan="2">
                    <button type="submit">Save Product</button>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
