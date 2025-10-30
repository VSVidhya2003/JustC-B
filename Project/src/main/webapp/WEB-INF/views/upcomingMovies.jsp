<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upcoming Movies</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #111;
        color: #fff;
        margin: 0;
        padding: 0;
    }

    header {
        background-color: #1c1c1c;
        text-align: center;
        padding: 20px 0;
        font-size: 32px;
        font-weight: bold;
        color: #f39c12;
        letter-spacing: 2px;
    }

    .movie-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 30px;
        padding: 40px;
    }

    .movie-card {
        background-color: #222;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 4px 15px rgba(0,0,0,0.4);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .movie-card:hover {
        transform: scale(1.05);
        box-shadow: 0 6px 20px rgba(255, 165, 0, 0.3);
    }

    .movie-card img {
        width: 100%;
        height: 350px;
        object-fit: cover;
    }

    .movie-info {
        padding: 20px;
        text-align: center;
    }

    .movie-info h3 {
        margin: 10px 0 5px;
        font-size: 22px;
        color: #f1c40f;
    }

    .movie-info p {
        color: #bbb;
        font-size: 16px;
    }

    footer {
        background-color: #1c1c1c;
        text-align: center;
        padding: 15px;
        color: #aaa;
        font-size: 14px;
        margin-top: 20px;
    }
</style>
</head>
<body>

<header>🎥 Upcoming Movies 🎞️</header>

<div class="movie-container">
    <%-- Example Movie Cards --%>
    <div class="movie-card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpGrGz7NU4ZgnZxAIgDArdhoih-vLCSx3AeQ&s" alt="Movie 1">
        <div class="movie-info">
            <h3>Avatar 3</h3>
            <p>Release Date: December 19, 2025</p>
        </div>
    </div>

    <div class="movie-card">
        <img src="https://m.media-amazon.com/images/I/71mdXDSD0EL.jpg" alt="Movie 2">
        <div class="movie-info">
            <h3>Deadpool & Wolverine</h3>
            <p>Release Date: November 15, 2025</p>
        </div>
    </div>

    <div class="movie-card">
        <img src="https://m.media-amazon.com/images/S/pv-target-images/7390f647a1edb3cd152bda26e4b57a3be4e96dc603af64519a79273ab9850cd6.jpg" alt="Movie 3">
        <div class="movie-info">
            <h3>Inside Out 2</h3>
            <p>Release Date: June 20, 2025</p>
        </div>
    </div>

    <div class="movie-card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpQikt_UK79QFozxJz5DwuEp4JWwHzaIz5Eg&s" alt="Movie 4">
        <div class="movie-info">
            <h3>Spider-Man: Beyond the Spider-Verse</h3>
            <p>Release Date: March 28, 2026</p>
        </div>
    </div>
</div>

<footer>
    © 2025 MovieWorld | Designed by Mis. Vidhya
</footer>

</body>
</html>