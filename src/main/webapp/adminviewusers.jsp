<%@page import="com.org.dao.UserDaoImpl"%>
<%@page import="com.org.dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
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

.user-section {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 77vh;
    padding: 20px;
    box-sizing: border-box;
}

.user-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    width: 600px;
    max-width: 90%;
}

.user-table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

.user-table th,
.user-table td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

.user-table th {
    background-color: #0066cc;
    color: #fff;
}

.user-table tr:nth-child(even) {
    background-color: #f2f2f2;
}

.user-table tr:hover {
    background-color: #e6e6e6;
}

.delete-btn {
    background-color: #ff3333;
    color: #fff;
    padding: 5px 10px;
    border: none;
    border-radius: 5px;
    font-size: 12px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.delete-btn:hover {
    background-color: #cc0000;
}

.home-btn {
    text-align: center;
    margin-top: 20px;
}

.home-btn a {
    background-color: #0066cc;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    font-size: 14px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.home-btn a:hover {
    background-color: #0052a3;
}

footer {
    background-color: #333;
    color: #fff;
    padding: 14px;
    text-align: center;
}
    </style>
</head>
<body>
<%
     UserDaoImpl udi = new UserDaoImpl();
     List<User> users = udi.fetchAllUser();
%>
    <header>
        <h1>CARPARKING.COM</h1>
    </header>

    <section class="user-section">
        <div class="user-container">
            <table class="user-table">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Phone</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="u" items="<%=users %>">
                <tr>
                    <td>${u.getUid()}</td>
                    <td>${u.getUname()}</td>
                    <td>${u.getUemail()}</td>
                    <td>${u.getUgender()}</td>
                    <td>${u.getUphone()}</td>
                    <td><a href="deleteuser?uid=${u.getUid()}" class="delete-btn">Delete</a></td>
                </tr>
                 </c:forEach>
            </table>
            <div class="home-btn">
                <a href="adminhome.jsp">Home</a>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy;All rights reserved.</p>
    </footer>
</body>
</html>