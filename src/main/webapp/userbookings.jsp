<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.org.dto.User"%>
<%@page import="com.org.dto.Booking"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dao.BookingDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking History</title>
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
    margin-left: -1160px
    font-size: 24px;
}

.booking-section {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 77vh;
    padding: 20px;
    box-sizing: border-box;
}

.booking-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    width: 800px;
    max-width: 90%;
    overflow-x: auto;
}

.booking-table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

.booking-table th,
.booking-table td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

.booking-table th {
    background-color: #0066cc;
    color: #fff;
}

.booking-table tr:nth-child(even) {
    background-color: #f2f2f2;
}

.booking-table tr:hover {
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
    padding: 1px;
    text-align: center;
}
    </style>
</head>
<body>
<%
    BookingDaoImpl bdi = new BookingDaoImpl();
    List<Booking> booking =bdi.fetchBookingByName(((User)session.getAttribute("user")).getUname());
    System.out.println(booking.toString());
%>
    <header>
        <h1>CARPARKING.COM</h1>
    </header>

    <section class="booking-section">
        <div class="booking-container">
        <% if(booking.size() == 0)
        {
        	
        	%>
        	<h2 style="text-align: center">No bookings</h2>
        <%
        }
        else{ 
        	        
        %>
        
        
            <table class="booking-table">
                <tr>
                    <th>User</th>
                    <th>Parking Date</th>
                    <th>Parking Time</th>
                    <th>Parking Hour</th>
                    <th>Slot</th>
                    <!-- <th>Parking Cost</th> -->
                </tr>
                <c:forEach var="b" items="<%=booking %>">
                <tr>
                    <td>${b.getName()} </td>
                    <td>${b.getDate()}</td>
                    <td>${b.getTime()}</td>
                    <td>${b.getParkingHours()}</td>
                    <td>${b.getSlot()}</td>
                    <%-- <td>${b.getCost()}</td> --%>
                </tr>
                </c:forEach>
            </table>
            <%
            
            }%>
            <div class="home-btn">
                <a href="userhome.jsp">Home</a>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy;All rights reserved.</p>
    </footer>
</body>
</html>