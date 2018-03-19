<%@ page import="java.sql.*"%>

<html>
<head><Title>Course Details</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><div align="center">
  <p>&nbsp;</p>
  <p><img src="Images\custcare.gif" width="165" height="94"></p>
</div></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td>
<td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>



<tr><td colspan="3" height=30 bgcolor="orange"><p><a href="imp.html"><font size=3 face="Maiandra GD" color="black"><b>Home</b></font></a>&nbsp;</p>
    </td>
</tr>
<tr>
  <td colspan=3 align="l" color="black">
    <table border=0 height=100% width=100% bgcolor="#bcdeff">
    <tr><td align=center><h5><font color="#000000" size=6 face="Maiandra GD"><u>Course Information</u>
      </font>
          <font color="#000000" size="6" face="Maiandra GD">
          <%! java.sql.Connection connection;  java.sql.Statement statement;java.sql.ResultSet RS;%>
          </font>
      
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
      
    </h5>
    <tr><td colspan=3 align="center" valign="top">
<table BORDER=0 WIDTH="90%" bgcolor="#2f2f4f"><tr><td><table BORDER=0 WIDTH="100%" bgcolor="white">
<tr>
	<td bgcolor="#2f2f4f"><font size=3 face="Maiandra GD" color="white"><b>Course Code</b></td>
	<td bgcolor="#2f2f4f"><font size=3 face="Maiandra GD" color="white"><b>Course Name</b></td>
	<td bgcolor="#2f2f4f"><font size=3 face="Maiandra GD" color="white"><b>Pre-requisity</b></td>
	<td bgcolor="#2f2f4f"><font size=3 face="Maiandra GD" color="white"><b>Duration</b></td>
	<td bgcolor="#2f2f4f"><font size=3 face="Maiandra GD" color="white"><b>Lump fee</b></td>
	<td bgcolor="#2f2f4f"><font size=3 face="Maiandra GD" color="white"><b>First installment</b></td>
	<td bgcolor="#2f2f4f"><font size=3 face="Maiandra GD" color="white"><b>Second installment</b></td>
	<td bgcolor="#2f2f4f"><font size=3 face="Maiandra GD" color="white"><b>Syllabus</b></td>
</tr>

<%
  try {
while(RS.next())
	{


%>
<tr>
	<td><font size=3 face="Times New Roman" color="black"><%=RS.getString(1) %></td>
	<td><font size=3 face="Times New Roman" color="black"><%=RS.getString(2) %></td>
	<td><font size=3 face="Times New Roman" color="black"><%=RS.getString(3) %></td>
	<td><font size=3 face="Times New Roman"color="black"><%=RS.getString(4) %></td>
	<td><font size=3 face="Times New Roman"color="black"><%=RS.getString(5) %></td>
	<td><font size=3 face="Times New Roman" color="black"><%=RS.getString(6) %></td>
	<td><font size=3 face="Times New Roman" color="black"><%=RS.getString(7) %></td>
	<td><font size=3 face="Times New Roman" color="black"><%=RS.getString(8) %></td>
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
</body>
</html>

