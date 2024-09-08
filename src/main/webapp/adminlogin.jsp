<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
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
    margin-left: -1160px
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

.form-group input {
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

    <section class="login-section">
        <div class="login-container">
            <h2>Admin Login</h2>
            <form action="loginadmin" method="get">
                <div class="form-group">
                    <label for="username">Email</label>
                    <input type="email" id="username" name="aemail" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="apwd" required>
                </div>
                <button type="submit" class="login-btn">Login</button>
            </form>
        </div>
    </section>

    <footer>
        <p>&copy;All rights reserved.</p>
    </footer>
</body>
</html>