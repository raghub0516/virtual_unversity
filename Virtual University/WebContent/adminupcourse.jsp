<%@ page import="java.sql.*"%>

<html>
<head><Title>Course Details</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><h6 align="center"><img src="Images\custcare.gif" width="172" height="112"></h6></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>
  </h6></td><td width=15% align="center"><h6><img src="Images\bestwith.gif"></h6></td>
</tr>

<tr><td colspan="3" height=30 bgcolor="orange">&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Home</b></font></a>&nbsp;<a href="admincourse.jsp"><font size=3 face="Maiandra GD" color="black"><b>Back</b></font></a>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></font></a></td></tr>

<tr><td colspan=3 align="center"><h3><font face="Maiandra GD">
  <font size="5">
    <table border=0 height=100% width=100% bgcolor="#bcdeff">
    </font></font>
</h3>
  <tr><td align=center colspan=3 height=10%><h3><font size=5 face="Maiandra GD" color="#000000">UPDATE THE COURSE
  </font></h3></td></tr>
  <h3>
    <font color="#000000" size="5" face="Maiandra GD">
    <%! java.sql.Connection connection;  java.sql.Statement statement;java.sql.ResultSet RS;%>
    
      <%
  try {
	    Class.forName("com.mysql.jdbc.Driver");
	      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
statement = connection.createStatement();
 RS = statement.executeQuery("select * from course_details");
     }
  catch(Exception e)
  { out.println(e);}
%>
    </font></h3>
  <tr><td colspan=3 align="center" valign="top">
<table BORDER=0 WIDTH="90%" bgcolor="#2f2f4f"><tr><td><table BORDER=1 WIDTH="100%" bgcolor="white">
<tr>
	
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="#000000"><b>--</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="#000000"><b>Course Name</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="#000000"><b>Pre-requisity</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="#000000"><b>Duration</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="#000000"><b>Lump fee</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="#000000"><b>First installment</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="#000000"><b>Second installment</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="#000000"><b>Syllabus</b></td>
</tr>

<%
  try {
String ID = "";
while(RS.next())
	{
	ID = RS.getString(1);



%>
<tr>
	<td><a href="UpdateRecord.jsp?code=<%=ID %>">Update</a></td>
	<td><font size=2 face=verdana color="black"><%=RS.getString(2) %></td>
	<td><font size=2 face=verdana color="black"><%=RS.getString(3) %></td>
	<td><font size=2 face=verdana color="black"><%=RS.getString(4) %></td>
	<td><font size=2 face=verdana color="black"><%=RS.getString(5) %></td>
	<td><font size=2 face=verdana color="black"><%=RS.getString(6) %></td>
	<td><font size=2 face=verdana color="black"><%=RS.getString(7) %></td>
	<td><font size=2 face=verdana color="black"><%=RS.getString(8) %></td>
</tr>

<% 

	}
}catch(Exception e)
{ e.printStackTrace();}
   %>


<%
   try {
RS.close();
connection.close();
} catch(Exception e) { e.printStackTrace();}
%>
</table>
</font>
</body>
</html>

