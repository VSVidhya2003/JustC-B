<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Select Your Seats</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #111;
        color: #fff;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start;
        min-height: 100vh;
        margin: 0;
        padding-top: 60px;
    }

    h1 {
        margin-bottom: 10px;
        font-family: "Lobster", cursive;
        color: #ffcc00;
    }

    .screen {
        background-color: #fff;
        height: 30px;
        width: 70%;
        margin: 20px 0;
        border-radius: 10px;
        text-align: center;
        color: black;
        line-height: 30px;
        font-weight: bold;
    }

    .seats {
        display: grid;
        grid-template-columns: repeat(10, 1fr);
        gap: 10px;
        justify-items: center;
        margin: 20px;
    }

    input[type="checkbox"] {
        display: none;
    }

    label {
        width: 30px;
        height: 30px;
        background-color: #444451;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        display: inline-block;
    }

    label:hover {
        background-color: #00bfff;
    }

    input[type="checkbox"]:checked + label {
        background-color: #00bfff;
    }

    .occupied + label {
        background-color: #ff4d4d;
        cursor: not-allowed;
        pointer-events: none;
    }

    .legend {
        display: flex;
        gap: 20px;
        justify-content: center;
        margin: 20px;
    }

    .legend div {
        display: flex;
        align-items: center;
        gap: 5px;
    }

    .legend span {
        width: 20px;
        height: 20px;
        display: inline-block;
        border-radius: 4px;
    }

    .available { background-color: #444451; }
    .selected { background-color: #00bfff; }
    .occupied-color { background-color: #ff4d4d; }

    .proceed-btn {
        background-color: #ffcc00;
        color: #111;
        border-radius: 5px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 20px;
        transition: background-color 0.3s;
        font-weight: bold;
        text-decoration: none;
        display: inline-block;
    }

    .proceed-btn:hover {
        background-color: #00bfff;
        color: white;
    }
</style>
</head>
<body>

<h1>Select Your Seats</h1>
<div class="screen">SCREEN</div>

<div class="seats">
    <% 
        // Generate 50 seats dynamically using JSP
        for(int i = 1; i <= 50; i++) {
            String seatId = "S" + i;
    %>
        <input type="checkbox" id="<%= seatId %>" name="seat" value="<%= seatId %>">
        <label for="<%= seatId %>"></label>
    <% 
        } 
    %>
</div>

<div class="legend">
    <div><span class="available"></span> Available</div>
    <div><span class="selected"></span> Selected</div>
    <div><span class="occupied-color"></span> Occupied</div>
</div>

<a href="booking" class="proceed-btn">Proceed to Book</a>

</body>
</html>
