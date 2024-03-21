<%@ page import="java.lang.Math" %>
<%@ page import="java.util.StringTokenizer" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>String and Armstrong Checker</title>
    <style>
        /* Add custom CSS styles here */
        body {
            font-family: Arial, sans-serif;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            font-size: 18px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body><br><br><br><br><br><br>
    <form action="process.jsp" method="post">
        Enter a number: <input type="text" name="number"><br>
        Enter the first string: <input type="text" name="string1"><br>
        Enter the second string: <input type="text" name="string2"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
