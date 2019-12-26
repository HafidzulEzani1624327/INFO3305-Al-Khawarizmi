<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expenditures Tracker</title>
</head>


<body>
	<form method="POST" action="ExpenseController">

		<center>
			<%
				String id = request.getParameter("id");
			%>

			<table style="background-color: lightgreen; margin-left: 20px;">

				<tr>
					<td>User ID: <%=id%></td>
				</tr>

				<tr>
					<td>Amount RM: </td>
					<td><input type="text" name="amount"></td>
				</tr>

				<tr>
					<td>Expenditure type:</td>
					<td><select name="type">
							<option value="bills">Bills</option>
							<option value="groceries">Groceries</option>
							<option value="other">Other</option>
					</select>
					</td>
				</tr>

				<tr>
					<td>Date of Expenditure:</td>
					<td><input type=date name="date"></td>
				</tr>

				<tr>
					<td><input type="hidden" name="id" value="<%=id%>"></td>
				</tr>
			</table>


			<input type=submit value="SUBMIT">

		</center>
	</form>

</body>
</html>