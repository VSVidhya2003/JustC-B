<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Select Theater</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #0d0d0d;
        color: #fff;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start;
        min-height: 100vh;
        margin: 0;
        padding-top: 70px;
        background-image: linear-gradient(to bottom right, #0f2027, #203a43, #2c5364);
    }

    h1 {
        font-size: 2.5rem;
        margin-bottom: 20px;
        font-family: "Lobster", cursive;
        color: #ffcc00;
    }

    .theater-list {
        display: flex;
        flex-direction: column;
        gap: 15px;
        width: 80%;
        max-width: 600px;
    }

    .theater-card {
        background-color: #1c1c1c;
        border: 2px solid transparent;
        border-radius: 10px;
        padding: 20px;
        transition: all 0.3s ease;
        box-shadow: 0 4px 10px rgba(0,0,0,0.3);
    }

    .theater-card:hover {
        border-color: #ffcc00;
        transform: scale(1.02);
        box-shadow: 0 6px 20px rgba(255, 204, 0, 0.3);
    }

    .theater-card h3 {
        margin-bottom: 5px;
    }

    .theater-card p {
        margin: 0;
        font-size: 14px;
        color: #ccc;
    }

    .theater-card a {
        display: block;
        color: #ffcc00;       
        text-decoration: none;
        font-weight: bold;
        font-size: 1.2rem;
        margin-bottom: 8px;
        transition: color 0.3s ease;
    }

    .theater-card a:hover {
        color: #00bfff;  
    }

    .button-container {
        margin-top: 30px;
    }

    .proceed-btn {
        background-color: #ffcc00;
        color: #111;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
        font-weight: bold;
        text-decoration: none;
    }

    .proceed-btn:hover {
        background-color: #00bfff;
        color: white;
    }
</style>
</head>
<body>

    <h1>Select Your Theater</h1>

    <div class="theater-list">

        <div class="theater-card">
            <h3><a href="PVR Cinemas">PVR Cinemas</a></h3>
            <p>Express Avenue Mall,Simhachalm</p>
            <p>Show Times: 10:00 AM | 1:30 PM | 5:00 PM | 8:30 PM</p>
        </div>

        <div class="theater-card">
            <h3><a href="INOX">INOX</a></h3>
            <p>Forum Vijaya Mall, Vizag</p>
            <p>Show Times: 9:00 AM | 12:30 PM | 4:00 PM | 7:30 PM</p>
        </div>

        <div class="theater-card">
            <h3><a href="AGS Cinemas">AGS Cinemas</a></h3>
            <p>Villivakkam, Dwaraka Nagar</p>
            <p>Show Times: 11:00 AM | 2:30 PM | 6:00 PM | 9:30 PM</p>
        </div>

        <div class="theater-card">
            <h3><a href="SPI Sathyam">SPI Sathyam</a></h3>
            <p>Royapettah, NSTL</p>
            <p>Show Times: 10:30 AM | 2:00 PM | 5:30 PM | 9:00 PM</p>
        </div>

    </div>

</body>
</html>
    