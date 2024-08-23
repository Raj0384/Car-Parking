<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Admin</title>
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

.update-admin-section {
	display: flex;
	flex-direction: column;
	align-items: center;
	min-height: 77vh;
	padding: 20px;
	box-sizing: border-box;
}

.update-admin-container {
	background-color: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	max-width: 500px;
	width: 100%;
}

h2 {
	margin-top: 0;
	font-size: 24px;
	text-align: center;
	margin-bottom: 20px;
}

.update-admin-form {
	display: flex;
	flex-direction: column;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	font-weight: bold;
}

.form-group input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
}

button[type="submit"] {
	background-color: #0066cc;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 100%;
}

button[type="submit"]:hover {
	background-color: #0052a3;
	transform: translateY(-2px);
}

.home-button {
	background-color: #0066cc;
	color: #fff;
	padding: 5px 10px;
	border: none;
	border-radius: 5px;
	text-decoration: none;
	margin-top: 20px;
}

.home-button:hover {
	background-color: #0052a3;
	transform: translateY(-2px);
}

footer {
	background-color: #333;
	color: #fff;
	padding: 14px;
	text-align: center;
}

@media ( max-width : 768px) {
	.update-admin-container {
		padding: 20px;
	}
}
</style>
</head>
<body>
	<header>
		<h1>CARPARKING.COM</h1>
	</header>

	<section class="update-admin-section">
		<div class="update-admin-container">
			<h2>Update Admin Details</h2>
			<form:form action="updateadmin" modelAttribute="ad"
				class="update-admin-form">
					<form:input type="hidden"  path="aid"/>
				<div class="form-group">
					<label for="name">Name:</label>
 					<form:input path="aname"/>
 					
 				</div>
				<div class="form-group">
					<label for="email">Email:</label>
					<form:input path="aemail"/>
				</div>
				<div class="form-group">
					<label for="phone">Phone:</label>
					<form:input path="aphone"/>
				</div>
				<div class="form-group">
					<label for="password">Password:</label>
					<form:input path="apwd"/>
				</div>
				<form:button>Update Details</form:button>
			</form:form> 
		</div>

		<a href="adminhome.jsp" class="home-button">Home</a>
	</section>

	<footer>
		<p>&copy;All rights reserved.</p>
	</footer>
</body>
</html>
