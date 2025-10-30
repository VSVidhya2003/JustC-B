<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Movie Display Page</title>
  <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" />
  
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      background-color: #111;
      color: white;
    }

    /* Navbar */
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #1e1e1e;
      padding: 15px 40px;
      position: fixed;
      top: 0;
      width: 100%;
      z-index: 1000;
    }

    .logo {
      font-size: 24px;
      font-weight: bold;
      font-family: "Lobster", cursive;
    }

    .nav-links {
      list-style: none;
      display: flex;
      gap: 30px;
    }

    .nav-links a {
      color: white;
      text-decoration: none;
      font-size: 18px;
      transition: color 0.3s ease;
    }

    .nav-links a:hover {
      color: #00bfff;
    }

    .search-container {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .search-container input[type="text"] {
      padding: 8px 12px;
      border: none;
      border-radius: 4px;
      outline: none;
      font-size: 16px;
      width: 180px;
    }

    .search-container button {
      background-color: #fffb00;
      color: rgb(15, 14, 14);
      border: none;
      border-radius: 4px;
      padding: 8px 12px;
      cursor: pointer;
      font-size: 16px;
      transition: background-color 0.3s;
      font-weight: bold;
    }

    .search-container button:hover {
      background-color: #009fd1;
      color: white;
    }

    /* Content */
    .content {
      padding: 120px 40px;
      text-align: center;
    }

    /* Filter */
    .filter-bar {
      margin-bottom: 20px;
      text-align: center;
    }

    .filter-bar select {
      padding: 8px 12px;
      border-radius: 4px;
      border: none;
      font-size: 16px;
    }

    /* Movie Cards */
    .movie-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 30px;
      padding:40px;
      justify-items: center;
    }

    .movie-card {
      background-color: #222;
      border-radius: 15px;
      overflow: hidden;
      text-align: center;
      box-shadow:0 4px 15px rgba(0,0,0,0.4);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .movie-card:hover {
      transform: scale(1.05);
      box-shadow: 0 6px 20px rgba(255, 165, 0, 0.3);
    }

    .movie-card img {
      width: 100%;
      height: 300px;
      object-fit: cover;
    }

    .movie-card h3 {
      padding: 10px;
      font-size: 18px;
    }
  


 
.movie-container a {
    color: #ffcc00;       /* bright yellow color */
    text-decoration: none; /* remove underline */
    margin-right: 15px;    /* spacing between links */
    font-weight: bold;
    transition: color 0.3s ease;
     font-family: "Lobster", cursive;
   
}

.movie-container a:hover {
    color: #00bfff;       /* change on hover */
}
    

    /* Responsive Padding */
    @media (max-width: 600px) {
      .content {
        padding: 100px 20px;
      }
      .navbar {
        flex-direction: column;
        gap: 10px;
        text-align: center;
      }
      
    }
  </style>
</head>

<body>
  <!-- Navbar -->
  
  <nav class="navbar">
    <div class="logo">JUST C & B</div>
    <ul class="nav-links">
      <li><a href="home">Home</a></li>
      <li><a href="spotlightMovies">SpotLight Movies</a></li>
      <li><a href="upcomingMovies">UpComing Movies</a></li>
      <li><a href="profile">Profile</a></li>
      
    </ul>
    <div class="search-container">
      <input list="movies" type="text" placeholder="Search movies..." />
      <datalist id="movies">
        <option value="Avengers: Endgame" />
        <option value="Inception" />
        <option value="KGF Chapter 2" />
        <option value="Interstellar" />
      </datalist>
      <button type="submit">Search</button>
    </div>
  </nav>

  <!-- Movies Section -->
  <div class="content">
    <div class="filter-bar">
      <label for="language">Filter by Language: </label>
      <select id="language">
        <option value="all">All</option>
        <option value="english">English</option>
        <option value="tamil">Tamil</option>
        <option value="telugu">Telugu</option>
        <option value="hindi">Hindi</option>
      </select>
    </div>
    

    <div class="movie-container">
      <div class="movie-card">
        <img src="https://m.media-amazon.com/images/I/71niXI3lxlL._AC_SY679_.jpg" alt="Avengers Endgame" />
       
        <h3><a href="Avengers : Endgame">Avengers : Endgame</a></h3>
      </div>

      <div class="movie-card">
        <img src="https://m.media-amazon.com/images/I/81p+xe8cbnL._AC_SY679_.jpg" alt="Inception" />
       
         <h3><a href="Inception">Inception</a></h3>
      </div>

      <div class="movie-card">
        <img src="https://m.media-amazon.com/images/I/81aA7hEEykL._AC_SY679_.jpg" alt="KGF Chapter 2" />
        
         <h3><a href="KGF Chapter 2">KGF Chapter 2</a></h3>
      </div>

      <div class="movie-card">
        <img src="https://m.media-amazon.com/images/I/71niXI3lxlL._AC_SY679_.jpg" alt="Interstellar" />
        
         <h3><a href="Interstellar">Interstellar</a></h3>
      </div>
    </div>
  </div>
</body>
</html>
    