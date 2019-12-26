<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
</head>
<body>
	<form action="LoginController" method="post">

		<center>
			<table style="background-color: skyblue; margin-left: 20px;">
			
			<tr>
					<td><h2 style="color: red;">${Errormessage}</h2>
						<h2 style="color: green;">${successMessage}</h2></td>
				</tr>

				<tr>
					<td><h2>Expenditure Sign Up Page!</h2></td>
				</tr>

				<tr>
					<td>IC No :</td>
					<td><input type="text" name="icno"></td>
				</tr>


				<tr>
					<td>UserName :</td>
					<td><input type="text" name="username"></td>
				</tr>

				<tr>
					<td>Password :</td>
					<td><input type="text" name="password"></td>
				</tr>
			</table>

			<input type="submit" name="submit" value="signup"> <input type="reset" value="Reset">
			<a href="login.jsp">Login</a>
		</center>

	</form>
</body>
</html>