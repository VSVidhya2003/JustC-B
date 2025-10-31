<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SpotLight Movies</title>
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

<header>🎥 SpotLight Movies 🎞️</header>

<div class="movie-container">
    <%-- Example Movie Cards --%>
    <div class="movie-card">
        <img src="https://img.onmanorama.com/content/dam/mm/en/archive/entertainment/entertainment-news/images/2025/10/9/dude-trailer-a.jpg?w=1120&h=583" alt="Movie 1">
        <div class="movie-info">
            <h3>Dude</h3>
           
        </div>
    </div>

    <div class="movie-card">
        <img src="https://content.tupaki.com/h-upload/2025/01/15/659170-whatsappimage2025-01-15at44223pm.jpg" alt="Movie 2">
        <div class="movie-info">
            <h3>Mirai</h3>
           
        </div>
    </div>

    <div class="movie-card">
        <img src="https://static.toiimg.com/thumb/msid-123528558,width-1280,height-720,resizemode-4/123528558.jpg" alt="Movie 3">
        <div class="movie-info">
            <h3>Bahubali The Epic</h3>
           
        </div>
    </div>

    <div class="movie-card">
        <img src="https://i.ytimg.com/vi/1DgBqtU2NKU/maxresdefault.jpg" alt="Movie 4">
        <div class="movie-info">
            <h3>Maass Jathara</h3>
            
        </div>
    </div>
</div>

<footer>
    © 2025 MovieWorld | Designed by Mis. Vidhya
</footer>

</body>
</html>