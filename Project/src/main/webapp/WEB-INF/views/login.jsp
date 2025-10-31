<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<style>
 body {
        background-image:url("movie-camera-light-beam-video-260nw-2161740781.jpg") /* light yellow */
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* full viewport height */
        margin: 0;
    }

    /* Form container */
    form {
        background-color: #fff8e1; /* slightly lighter yellow */
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        width: 300px;
    }

    /* Form elements */
    input[type="text"], 
    input[type="email"], 
    input[type="password"] {
        width: 100%;
        padding: 8px;
        margin: 8px 0 15px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #ffeb3b;
        border: none;
        padding: 10px;
        width: 100%;
        border-radius: 5px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #fdd835;
    }

    /* Message styling */
    p {
        text-align: center;
        color: green;
        font-weight: bold;
    
</style>

<form action="login" method="post">
    Email: <input type="email" name="email"><br>
    Password: <input type="password" name="password"><br>
    <input type="submit" value="Login">
</form>
<p>${msg}</p>


</body>
</html>