<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>

<body>
	<form action="LoginController" method="post">

		<center>
			<table style="background-color: lightgreen; margin-left: 20px;">

				<tr>
					<td><h2 style="color: red;">${Errormessage}</h2>
						<h2 style="color: green;">${successMessage}</h2></td>
				</tr>


				<tr>
					<td><h2>Expenditure Login Page!</h2></td>
				</tr>

				<tr>
					<td>Enter UserName :</td>
					<td><input type="text" name="username"></td>
				</tr>

				<tr>
					<td>Enter Password :</td>
					<td><input type="password" name="password"></td>
				</tr>
			</table>

			<input type="submit" name="submit" value="Login"> <input type="reset"
				value="Reset"> <a href="signup.jsp">Sign Up</a>
		</center>

	</form>

</body>
</html>