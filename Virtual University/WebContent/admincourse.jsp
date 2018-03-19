<%@ page import="java.sql.*"%>

<html>
<head><Title>Course Details</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><h6 align="center"><img src="Images\custcare.gif" width="158" height="98"></h6></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td><td width=15% align="center"><h6><img src="Images\bestwith.gif"></h6></td>
</tr>



<tr><td colspan="3" height=30 bgcolor="orange"><a href="administrator.html"><font size=3 face="Maiandra GD" color="Black"><b>Home</b></font></a>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="black"><b>Sign out</b></a></font></td></tr>
<tr><td colspan="3" height=20 bgcolor="black">&nbsp;&nbsp;<a href="insertcoursead.html"><font size=2 face="Maiandra GD" color="white"><font size="3"><b><font face="Maiandra GD">Insert Course</font></b></font></a><font size="3" face="Maiandra GD"></font>&nbsp;&nbsp;<a href="adminupcourse.jsp"><font size=2 face="Maiandra GD" color="white"><b>Update Course</b></a></font>&nbsp;&nbsp;<a href="adminupdelete.jsp"><font size=2 face="Maiandra GD" color="white"><b>Delete Course</b></a></font></font>&nbsp;</td>
</tr>
<tr><td colspan=3 align="center"><table border=0 height=100% width=100% bgcolor="#bcdeff"><tr><td align=center><h5>&nbsp;</h5>
  <h5><font color="BLACk" size=6 face="Maiandra GD"><u>Course Information</u>
    </font>
    
      <%! java.sql.Connection connection;  java.sql.Statement statement;java.sql.ResultSet RS;%>
    
      <%
  try {
      Class.forName("com.mysql.jdbc.Driver");
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
// connection = java.sql.DriverManager.getConnection("jdbc:odbc:project");
 statement = connection.createStatement();
 RS = statement.executeQuery("select * from course_details");
     }
  catch(Exception e)
  { out.println(e);}
%>
    
  </h5>
<tr><td colspan=3 align="center" valign="top">
<table BORDER=0 WIDTH="90%" bgcolor="black"><tr><td><table BORDER=0 WIDTH="100%" bgcolor="white">
<tr>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="black"><b>Course Code</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="black"><b>Course Name</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="black"><b>Pre-requisity</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="black"><b>Duration</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="black"><b>Lump fee</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="black"><b>First installment</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="black"><b>Second installment</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="black"><b>Syllabus</b></td>
</tr>

<%
  try {
while(RS.next())
	{


%>
<tr>
	<td><font size=2 face=verdana color="black"><%=RS.getString(1) %></td>
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

