<%@page import="com.org.dto.User"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.org.dto.Booking"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dao.BookingDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Parking Slot</title>
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
	text-align: center;
	padding: 1rem;
}

h1 {
	margin: 0;
	margin-left: -1280px;
}

.booking-section {
	padding: 2rem;
	text-align: center;
}

.booking-form {
	max-width: 400px;
	margin: 44px auto;
}

.form-group {
	margin-bottom: 1rem;
}

label {
    margin-top: 20px;
	display: block;
	font-weight: bold;
}

input[type="date"], select, input[type="number"], input[type="text"] {
	width: 100%;
	padding: 0.5rem;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.slots {
	display: flex;
	gap: 1rem;
}

.book-button {
	background-color: #4CAF50;
	color: #fff;
	border: none;
	padding: 8px 16px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin-top: 1rem;
	cursor: pointer;
	border-radius: 4px;
	width: 100%;
}

footer {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 1rem;
}
</style>
</head>
<body>
	<%
    
	BookingDaoImpl bdi = new BookingDaoImpl();
	List<Booking> list = bdi.fetchAllBooking();
	User user = (User)session.getAttribute("user");
	String name = user.getUname();
	System.out.println(user);
%>
	<header>
		<h1>CARPARKING.COM</h1>
	</header>

	<section class="booking-section">
		<h2>Book Parking Slot</h2>
		<form action="addbooking" class="booking-form">
		<input type ="text" name="name" value="<%=name%>" readonly="readonly">
			<div class="form-group">
				<label for="date">Select Date:</label> <input type="date" id="date"
					name="date" required>
			</div>
			<div class="form-group">
				<label for="parking-time">Select Parking Time:</label> <input
					type="time" id="parking-time" name="time" required>
			</div>
			<div class="form-group">
				<label for="parking-hours">Enter Parking Hours:</label> <input
					type="number" id="parking-hours" name="parkingHours" min="1"
					max="24" required>
			</div>
			<div class="form-group">
				<label>Select Slot:</label>
				
				
				<%
					if(list.size() == 0)
					{
						for(int i = 1; i <= 5;i++)
						{
							%>
							
						 <input type="radio" name="slot" value="<%= i %>">slot <%= i %>
							
							<%
						}
					}
					else{
				    
				    	 for(int j=1; j<=5 ; j++)
				    	 {
						boolean flag = true;
				    		 for(int i = 0; i < list.size();i++)
				    		 	if(list.get(i).getSlot() == j )
				    		 	{
				    		 		flag = false;
				    		 		break;
				    		 	}
				    		 if(!flag)
				    			 continue;
				 %>
				 <input type="radio" name="slot" value="<%= j %>">slot <%= j %>
				 <% 
				    		
				 		}
				    	
				     
					}
				%>           
            </div>
			<div class="form-group">
				<label for="parking-cost">Parking Cost:</label>
				<%-- <c:forEach var="b" items="${booking}">
				<p>${b.getPrice()}</p>
				</c:forEach> --%>
			</div>
			<button type="submit" class="book-button">Book</button>
		</form>
	</section>

	<footer>
		<p>&copy;All rights reserved.</p>
	</footer>
</body>
</html>