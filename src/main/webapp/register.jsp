<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Registration</title>
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

header h1 {
	margin: 0;
	margin-left: -1280px;
}

.registration-section {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 77vh;
	padding: 20px;
	box-sizing: border-box;
}

.registration-container {
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	width: 280px;
	max-width: 90%;
}

.registration-container h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #0066cc;
}

input[type="text"], input[type="email"], input[type="tel"], input[type="password"],
	select {
	width: 91%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.register-btn {
	display: block;
	width: 100%;
	background-color: #0066cc;
	color: #fff;
	padding: 12px 24px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.register-btn:hover {
	background-color: #0052a3;
}

.login-option {
	text-align: center;
	margin-top: 10px;
}

.login-option p {
	font-size: 14px;
}

.login-option a {
	color: #0066cc;
	text-decoration: none;
}

.login-option a:hover {
	text-decoration: underline;
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
	<header>
		<h1>CARPARKING.COM</h1>
	</header>

	<section class="registration-section">
		<div class="registration-container">
			<h2>User Registration</h2>
			<form action="adduser" onclick="validateEmail">
				<input type="text" id="name" name="uname" placeholder="Name"
					required> <input type="email" id="email" name="uemail"
					placeholder="Email" required> <select name="ugender"
					id="gender" required>
					<option value="male">Male</option>
					<option value="female">Female</option>
					<option value="other">Other</option>
				</select> <input type="tel" id="phone" name="uphone" placeholder="Phone"
					pattern="[0-9]{10}" required> <input type="password"
					id="password" name="upwd" placeholder="Password" required>
				<button type="button" onclick="togglePasswordVisibility()">show/hide</button>
				<button type="submit" class="register-btn">Register</button>
			</form>
			<div class="login-option">
				<p>
					Already have an account? <a href="userlogin.jsp">Login here</a>
				</p>
			</div>
		</div>
	</section>
	<footer>
		<p>&copy;All rights reserved.</p>
	</footer>
	<script>
    function togglePasswordVisibility(){
        let pass = document.getElementById("password")
        if(pass.type=="password")
             pass.type="text"
        else
             pass.type="password"
    }
    </script>
</body>
</html>
