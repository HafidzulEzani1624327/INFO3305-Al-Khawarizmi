<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expenditure Tracker</title>
</head>
<body>

<center>
<table style="background-color: #FFA07A; margin-left: 20px;">
<tr><td><h1>Expenditure Tracker</h1></td></tr>
<tr>
<td><h2>Welcome ${message} !</h2></td>
</tr>

<tr>
<td><h2>ID: ${id}</h2></td>
</tr>

<tr><td><h3>Click to navigate:</h3></td></tr>

<tr><td><a href="expenditures.jsp?id=${id}">Enter New Expenditure</a></td></tr>
<tr><td><a href="tracker.jsp?id=${id}">Track Previous Expenditures</a></td></tr>
</table>
</center>

</body>
</html>