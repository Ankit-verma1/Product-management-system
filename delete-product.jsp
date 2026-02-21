<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Product</title>

<style>
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background-color: #f1f2f6;
    }

    .container {
        width: 40%;
        margin: 80px auto;
        background: #ffffff;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 8px 18px rgba(0,0,0,0.15);
    }

    h2 {
        text-align: center;
        color: #c0392b;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        font-size: 15px;
    }

    td {
        padding: 10px;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        border-radius: 5px;
        border: 1px solid #ccc;
        outline: none;
    }

    input[type="text"]:focus {
        border-color: #e74c3c;
    }

    button {
        background-color: #e74c3c;
        color: white;
        padding: 10px 18px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.2s;
    }

    button:hover {
        background-color: #c0392b;
        transform: translateY(-2px);
    }

    .note {
        margin-top: 12px;
        text-align: center;
        color: #555;
        font-size: 13px;
    }
</style>
</head>

<body>

<!-- Include navbar if available -->
<jsp:include page="navbar.jsp"/>

<div class="container">
    <h2>Delete Product</h2>

    <form action="confirm-delete.jsp">
        <table>
            <tr>
                <td>Enter Product ID:</td>
                
                <td>
                    <input type="text" name="pId" required
                           placeholder="Enter Product ID">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit">Delete</button>
                </td>
            </tr>
        </table>
    </form>

    <div class="note">
        ⚠ This action cannot be undone
    </div>
</div>
</body>
</html>
