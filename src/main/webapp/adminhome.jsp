<%@page import="com.org.dao.AdminDaoImpl"%>
<%@page import="com.org.dto.User"%>
<%@page import="com.org.dto.Admin"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
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
    margin-left: -1280px;
}

.admin-section {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 77vh;
    padding: 20px;
    box-sizing: border-box;
}

.admin-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    width: 400px;
    max-width: 90%;
}

.admin-details h2,
.admin-options h2 {
    color: #0066cc;
    margin-bottom: 20px;
}

.admin-details p {
    margin-bottom: 10px;
}

.update-btn {
    background-color: #0066cc;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-size: 14px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.update-btn:hover {
    background-color: #0052a3;
}

.admin-options ul {
    list-style: none;
    padding: 0;
}

.admin-options li {
    margin-bottom: 10px;
}

.admin-options a {
    color: #0066cc;
    text-decoration: none;
    font-size: 16px;
    transition: color 0.3s ease;
}

.admin-options a:hover {
    color: #0052a3;
}

.logout-btn {
    text-align: center;
    margin-top: 20px;
}

.logout-btn a {
    background-color: #ff6666;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    font-size: 14px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.logout-btn a:hover {
    background-color: #e63939;
}

footer {
    background-color: #333;
    color: #fff;
    padding: 10px;
    text-align: center;
}
    </style>
</head>
<body>
<%
           AdminDaoImpl adi = new AdminDaoImpl();
           List<Admin> admin = adi.fetchAllAdmin();
%>
    <header>
        <h1>CARPARKING.COM</h1>
    </header>

    <section class="admin-section">
        <div class="admin-container">
            <div class="admin-details">
                <h2>Admin Details</h2>
                <c:forEach var="a" items= "<%=admin %>">
                <p>Name: ${a.getAname()}</p>
                <p>Email: ${a.getAemail()}</p>
                <p>Phone: ${a.getAphone()}</p>
                <a href="editadmin?aid=${a.getAid()}">
                <button class="update-btn">Update Details</button>
                </a>
                </c:forEach>
                
            </div>
            <div class="admin-options">
                <h2>Admin Options</h2>
                <ul>
                    <!-- <li><a href="adminupdateparking.jsp?id=1">Update Parking</a></li> -->
                    <li><a href="adminviewusers.jsp">View Users</a></li>
                    <li><a href="adminviewbookings.jsp">View Bookings</a></li>
                </ul>
            </div>
            <div class="logout-btn">
                <a href="index.jsp">Logout</a>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy;All rights reserved.</p>
    </footer>
</body>
</html>