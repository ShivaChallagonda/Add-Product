<!doctype html>
<%@page import="org.hibernate.Query"%>
<%@page import="com.utility.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="com.app.*"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="jscss.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h2>Provide the details to add product.</h2>
		<%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>

		<%
		String id = request.getParameter("id");
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String dbName = "ecom";
		String userId = "root";
		String password = "root";

		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		%>
	
		<table class="table">
			<tr>

			</tr>
			<tr >
				<td><b>Product ID</b></td>
				<td><b>Name</b></td>
				<td><b>Price</b></td>
				<td><b>Brand</b></td>
			</tr>
			<%
			try {
				connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
				statement = connection.createStatement();
				String sql = "SELECT * FROM product";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
			%>
			<tr>

				<td><%=resultSet.getString("id")%></td>
				<td><%=resultSet.getString("name")%></td>
				<td><%=resultSet.getString("price")%></td>
				<td><%=resultSet.getString("brand")%></td>

			</tr>

			<%
			}

			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</table>
	</div>

</body>
</html>