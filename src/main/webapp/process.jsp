<%@ page import="java.lang.Math" %>
<%@ page import="java.util.StringTokenizer" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>String and Armstrong Checker Result</title>
</head>
<body>
    <%!
        // Method to check if the given number is Armstrong or not
        boolean isArmstrong(int num) {
            int originalNumber, remainder, result = 0, n = 0;
            originalNumber = num;
            for (;originalNumber != 0; originalNumber /= 10, ++n);
            originalNumber = num;
            for (;originalNumber != 0; originalNumber /= 10) {
                remainder = originalNumber % 10;
                result += Math.pow(remainder, n);
            }
            return result == num;
        }
    %>

    <%
        // Get parameters from the form
        int number = Integer.parseInt(request.getParameter("number"));
        String string1 = request.getParameter("string1");
        String string2 = request.getParameter("string2");

        // Check if the given number is Armstrong or not
        boolean isArmstrongNumber = isArmstrong(number);
    %>

    <h2>Results:</h2>
    <p>Number <%= number %> is <%= isArmstrongNumber ? "an Armstrong" : "not an Armstrong" %> number.</p>

    <h3>String Manipulations:</h3>
    <p>String 1: <%= string1 %></p>
    <p>String 2: <%= string2 %></p>

    <p>Join: <%= string1 + string2 %></p>
    <p>Remove 'a' from String 1: <%= string1.replaceAll("a", "") %></p>
    <p>Replace 'o' with '0' in String 2: <%= string2.replace("o", "0") %></p>
    <p>Length of String 1: <%= string1.length() %></p>
    <p>Tokenize String 2: 
        <%
            StringTokenizer tokenizer = new StringTokenizer(string2);
            while (tokenizer.hasMoreTokens()) {
                out.print(tokenizer.nextToken() + " ");
            }
        %>
    </p>
</body>
</html>
