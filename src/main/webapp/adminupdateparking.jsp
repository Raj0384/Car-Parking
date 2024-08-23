<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CarParking.com - Parking Prices</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: linear-gradient(to bottom, #3498db, #e74c3c);
}

header {
    background-color: #0066cc;
    color: #fff;
    padding: 12px;
    text-align: center;
}

h1 {
    margin: 0;
    font-size: 24px;
}

.parking-section {
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 83vh;
    padding: 20px;
    box-sizing: border-box;
}

.parking-container {
    display: flex;
    justify-content: space-between;
    max-width: 1000px;
    flex-wrap: nowrap;
}

.parking-place {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    width: calc(33.33% - 20px);
    margin: 10px;
}

h2 {
    margin-top: 0;
    font-size: 20px;
}

.price-form {
    display: flex;
    align-items: center;
    margin-top: 20px;
}

.price-form label {
    margin-right: 10px;
}

.price-form input {
    width: 100px;
    padding: 5px;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.price-form button {
    background-color: #0066cc;
    color: #fff;
    padding: 5px 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.price-form button:hover {
    background-color: #0052a3;
}

footer {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #333;
    color: #fff;
    padding: 10px;
    text-align: center;
}

.home-button {
    background-color: #0066cc;
    color: #fff;
    padding: 5px 10px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
}

.home-button:hover {
    background-color: #0052a3;
    transform: translateY(-2px);
}

@media (max-width: 768px) {
    .parking-place {
        width: calc(50% - 20px);
    }
}
    </style>
</head>
<body>
    <header>
        <h1>CarParking.com</h1>
    </header>

    <section class="parking-section">
        <div class="parking-container">
            <div class="parking-place">
                <h2>Update Price</h2>
                <form class="updatebooking">
                <input type="hidden" name="bid" value="${id}">
                    <label for="priceA">Price:</label>
                    <input type="number" name="cost" id="priceA" min="0" step="0.01">
                    <button type="submit">Update</button>
                </form>
            </div>
        </div>

        <a href="adminhome.jsp" class="home-button">Home</a>
    </section>

    <footer>
        <p>&copy;All rights reserved.</p>
    </footer>
</body>
</html>