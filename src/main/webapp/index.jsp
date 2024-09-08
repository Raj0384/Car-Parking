<%@page import="com.org.dao.AdminDaoImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Parking</title>
    <style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(to bottom, #3498db, #e74c3c);
}

header {
    background-color: background: linear-gradient(to bottom, #3498db, #e74c3c);;
    color: #fff;
    padding: 29px;
    text-align: center;
}

header h1 {
    margin: 0;
    margin-left: -1160px;
}
}

nav ul {
    list-style: none;
    padding: 0;
    margin: 10px 0;
}

nav ul li {
    display: inline-block;
    margin-right: 20px;
}

nav ul li a {
    text-decoration: none;
    color: #fff;
}

.hero {
    background-image: url('carparking.jpg');
    background-size: cover;
    background-position: center;
    height: 548px;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #fff;
    text-align: center;
}

.hero-content {
    max-width: 800px;
    padding: 20px;
}

.hero h2 {
    font-size: 40px;
    margin-bottom: 20px;
}

.login-buttons {
    margin-top: 30px;
}

.login-buttons a {
    display: inline-block;
    text-decoration: none;
    padding: 12px 24px;
    border-radius: 5px;
    font-size: 16px;
    transition: background-color 0.3s ease;
}

.admin-btn {
    background-color: #e74c3c;
    color: #fff;
    margin-right: 10px;
}

.admin-btn:hover {
    background-color: #c0392b;
}

.user-btn {
    background-color: #2ecc71;
    color: #fff;
    margin-right: 10px;
}

.user-btn:hover {
    background-color: #27ae60;
}

.register-btn {
    display: inline-block;
    background-color: #2ecc71;
    color: #fff;
    text-decoration: none;
    padding: 12px 24px;
    border-radius: 5px;
    font-size: 16px;
    transition: background-color 0.3s ease;
}

.register-btn:hover {
    background-color: #27ae60;
}

.service-provider {
    background-color: #007bff;
    color: #fff;
    padding: 11px 0;
    text-align: center;
}

.service-provider-details h3 {
    margin-bottom: 20px;
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
<%-- <%
      AdminDaoImpl adi = new AdminDaoImpl();
      List<Admin> admin = adi.fetchAllAdmin();
%> --%>
    <header>
        <h1>CARPARKING.COM</h1>
    </header>

    <section class="hero">
        <div class="hero-content">
            <h2>Welcome to CarParking.com</h2>
            <p>Book your parking slot now!</p>
            <div class="login-buttons">
                <a href="adminlogin.jsp" class="admin-btn">Admin Login</a>
                <a href="userlogin.jsp" class="user-btn">User Login</a>
                <a href="register.jsp" class="register-btn">Register</a>
            </div>
        </div>
    </section>

    <%-- <section class="service-provider">
        <div class="service-provider-details">
            <h3>Service Provider Details</h3>
           <c:forEach var="a" items="<%=admin %>">
            <p><strong>Name:</strong> ${a.getAname()}</p>
            <p><strong>Email:</strong> ${a.getAemail()}</p>
            <p><strong>Phone:</strong> ${a.getAphone()}</p>
            </c:forEach>
        </div>
    </section> --%>

    <footer>
        <p>&copy;All rights reserved.</p>
    </footer>
</body>
</html>