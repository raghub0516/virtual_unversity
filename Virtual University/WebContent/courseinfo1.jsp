<%@ include file="imp.html" %>
<%@page import="java.sql.*" %>
<html>
<body text="red" bgColor="cyan">
<font color="#ff3366">
<br></br>
<center>Course Information</center>
<P>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
java.sql.Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
java.sql.ResultSet RS = statement.executeQuery("SELECT * FROM COURSE_DETAILS");
%>
<table BORDER WIDTH="100%" >
<tr>
	<td><b>Course Code:</b></td>
	<td><b>Course Name:</b></td>
	<td><b>Pre-requisity:</b></td>
	<td><b>Duration:</b></td>
	<td><b>Lump fee:</b></td>
	<td><b>First installment:</b></td>
	<td><b>Second installment:</b></td>
	<td><b>Syllabus:</b></td>
</tr>

<%
while(RS.next())
	{
%>

<tr>
	<td><%=RS.getString("C_code") %></td>
	<td><%=RS.getString("C_name") %></td>
	<td><%=RS.getString("C_prerequisite") %></td>
	<td><%=RS.getString("C_duration") %></td>
	<td><%=RS.getString("C_lump_fee") %></td>
	<td><%=RS.getString("C_ins_first") %></td>
	<td><%=RS.getString("C_ins_second") %></td>
	<td><%=RS.getString("C_syllabus") %></td>
</tr>

<% 
	} 
RS.close();
connection.close();
%>
</table>
</font>
</body>
</html>

