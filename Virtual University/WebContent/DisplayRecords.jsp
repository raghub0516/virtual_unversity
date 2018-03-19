<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>Displaying Records</title>
</head>
<body>
<h3>Displaying Records</h3>
<P>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
java.sql.Statement statement = connection.createStatement();
java.sql.ResultSet RS = statement.executeQuery("SELECT * FROM EMPLOYEE");
%>
<table BORDER WIDTH="100%" >
<tr>
	<td><b>ID</b></td>
	<td><b>First Name</b></td>
	<td><b>Surname</b></td>
	<td><b>Position</b></td>
	<td><b>Phone</b></td>
	<td><b>Email</b></td>
</tr>

<%
while(RS.next())
	{
%>

<tr>
	<td><%=RS.getString("EmployeeID") %></td>
	<td><%=RS.getString("FirstName") %></td>
	<td><%=RS.getString("Surname") %></td>
	<td><%=RS.getString("Position") %></td>
	<td><%=RS.getString("Phone") %></td>
	<td><%=RS.getString("Email") %></td>
</tr>

<% 
	} 
RS.close();
connection.close();
%>
</table>
</body>
</html>

