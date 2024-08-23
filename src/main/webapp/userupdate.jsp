<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User Details</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(to bottom, #3498db, #e74c3c);
}

header {
    background-color: linear-gradient(to bottom, #3498db, #e74c3c);
    color: #fff;
    padding: 29px;
    text-align: center;
}

h1 {
    margin: 0;
    margin-left: -1280px;
    font-size: 24px;
}

.update-user-section {
    background-color: #fff;
    padding: 24px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    margin: 20px auto;
}

h2 {
    margin-top: 0;
    font-size: 24px;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input,
select {
    width: 94%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    background-color: #0066cc;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    display: block;
    width: 100%;
}

button:hover {
    background-color: #0052a3;
    transform: translateY(-2px);
}

footer {
    background-color: #333;
    color: #fff;
    padding: 1px;
    text-align: center;
}
    </style>
</head>
<body>
    <header>
        <h1>CARPARKING.COM</h1>
    </header>

    <section class="update-user-section">
        <h2>Update User Details</h2>
        <c:form action="updateuser" modelAttribute="us">
        <c:input type="hidden" path="uid"/>
            <div class="form-group">
                <label for="name">Name:</label>
                <c:input path="uname"/>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <c:input path="uemail"/>
            </div>
            <div class="form-group">
                <label for="gender">Gender:</label>
                <c:input path="ugender"/>
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <c:input path="uphone"/>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <c:input path="upwd"/>
            </div>
            <c:button>Update</c:button>
        </c:form>
    </section>

    <footer>
        <p>&copy;All rights reserved.</p>
    </footer>
</body>
</html>