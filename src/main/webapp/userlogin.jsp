<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
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

.login-section {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 77vh;
}

.login-container {
    background-color: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    width: 400px;
    max-width: 90%;
}

.login-container h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #0066cc;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
    color: #333;
}

.form-group input[type="email"],
.form-group input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.login-btn {
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

.login-btn:hover {
    background-color: #0052a3;
}

.register-option {
    text-align: center;
    margin-top: 15px;
}

.register-option p {
    font-size: 14px;
}

.register-option a {
    color: #0066cc;
    text-decoration: none;
}

.register-option a:hover {
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

    <section class="login-section">
        <div class="login-container">
            <h2>User Login</h2>
            <form action="loginuser" method="post">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="uemail" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="upwd" required>
                </div>
                <button type="submit" class="login-btn">Login</button>
            </form>
            <div class="register-option">
                <p>Don't have an account? <a href="register.jsp">Register here</a></p>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy;All rights reserved.</p>
    </footer>
</body>
</html>