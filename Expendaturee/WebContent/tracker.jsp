<%@ page import="java.sql.*;" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tracker</title>
</head>
<%
	int id = Integer.parseInt(request.getParameter("id"));

	String driverName = "com.mysql.jbdc.Driver";
	String connectionUrl ="jdbc:mysql://localhost:3306/expand";
	String dbName = "expand";
	String userId="root";
	String password = "1234";
	
	try{
		Class.forName(driverName);
	}	catch (ClassNotFoundException e){
		e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultset = null;
		
	%>
<body>
	<%
		try
	{
			connection =DriverManager.getConnection(connectionUrl+dbName, userId, password);
			Statement st = connection.createStatement();
			String sql = ("select * from expenditures where ic=" + id + ";");
			resultset = st.executeQuery(sql);
	%>
	<table border=1 align="center">
		<thead>
			<tr>
				<th>No.</th>
				<th>Amount</th>
				<th>Type</th>
				<th>Date of expenditure</th>

			</tr>
		</thead>
		<tbody>
			<%
				int i = 0;
					while (resultset.next()) {
			%>
			<tr>
				<td><%=i++%></td>
				<td>RM <%=resultset.getDouble("amount")%></td>
				<td><%=resultset.getString("ex_type")%></td>
				<td><%=resultset.getDate("ex_date")%></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>

	<%
		} catch (Exception e) {
			out.print(e.getMessage());
	%><br>
	<%
		}


	%>
</body>
</html>