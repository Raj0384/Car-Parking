<%@page import="com.org.dto.User"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Home</title>
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

.user-home-section {
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 77vh;
    padding: 20px;
    box-sizing: border-box;
}

.user-details {
    background-color: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
    text-align: center;
    margin-bottom: 20px;
}

.user-details h2 {
    margin-top: 0;
    font-size: 24px;
    margin-bottom: 20px;
}

.user-details p {
    margin: 5px;
}

.userupdate-btn {
    background-color: #0066cc;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    /* display: block; */
    margin-bottom: 10px
px
;
}

.userupdate-btn:hover {
    background-color: #0052a3;
    transform: translateY(-2px);
}

.user-actions {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.view-parking-button{
    background-color: #0066cc;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    margin-bottom: 10px;
}

.logout-button {
    background-color: #cc0000; /* Red color */
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    margin-bottom: 10px;
}

.view-parking-button:hover {
    background-color: #0052a3;
    transform: translateY(-2px);
}

.logout-button:hover{
    background-color: #a30000; /* Darker red on hover */
    transform: translateY(-2px);
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
      List<User> user = udi.fetchAllUser();
%>
    <header>
        <h1>CARPARKING.COM</h1>
    </header>

    <section class="user-home-section">
        <div class="user-details">
            <h2>User Details</h2>
           <%-- <c:forEach var="u" items="${user }"> --%>
            <p><strong>Name:</strong>${user.getUname()}</p>
            <p><strong>Email:</strong>${user.getUemail()}</p>
            <p><strong>Gender:</strong>${user.getUgender()}</p>
            <p><strong>Phone:</strong>${user.getUphone()}</p>
           <%-- </c:forEach> --%>
           <a href="edituser?uid=${user.getUid()}">
                <button class="userupdate-btn">Update Details</button>
           </a>
           <a href="fetchbooking?uname=${user.getUname()}">
                <button class="userupdate-btn">bookings</button>
           </a>
        </div>

        <div class="user-actions">
            <a href="userbookparking.jsp" class="view-parking-button">Book</a>
            <a href="index.jsp" class="logout-button">Logout</a>
        </div>
    </section>

    <footer>
        <p>&copy;All rights reserved.</p>
    </footer>
</body>
</html>