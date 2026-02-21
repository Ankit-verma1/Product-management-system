<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Product</title>

<style>
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background-color: #f1f2f6;
    }

    /* Form container */
    .form-container {
        width: 400px;
        margin: 80px auto;
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

    /* Input field */
    input[type="text"] {
        width: 100%;
        padding: 8px 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: all 0.3s ease;
    }

    input[type="text"]:focus {
        border-color: #40739e;
        box-shadow: 0 0 6px rgba(64,115,158,0.6);
        outline: none;
    }

    /* Button */
    button {
        width: 100%;
        padding: 10px;
        background-color: #0097e6;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 15px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.2s;
    }

    button:hover {
        background-color: #00a8ff;
        transform: translateY(-2px);
    }

    button:active {
        transform: translateY(0);
    }
</style>

</head>
<body>

<!-- Include Navbar -->
<jsp:include page="navbar.jsp"/>

<div class="form-container">
    <h2>Search Product</h2>

    <form action="do-search.jsp" method="get">
        <table>
            <tr>
                <td>Product ID</td>
                <td><input type="text" name="pId" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit">Search</button>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
