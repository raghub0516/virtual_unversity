<%@ page import="java.sql.*"%>

<html>
<head><Title>FAQ Details</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><div align="center"><img src="Images\custcare.gif" width="149" height="98"></div></td><td width=60% align="Center">
  <font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><p align="center">&nbsp;</p>
  <p><img src="Images\bestwith.gif"></p>
  <p>&nbsp;</p></td>
</tr>



<tr><td colspan="3" height=30 bgcolor="orange">&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Home</b></font></a>&nbsp;<a href="adminfaq.jsp"><font size=3 face="Maiandra GD" color="#000000"><b>Back</b></font></a>&nbsp;<a href="administrator.html"><font size=3  face="Maiandra GD" color="
8"><b>Sign out</b></font></a></td></tr>

<tr><td colspan=3 align="center"><table border=0 height=100% width=100% bgcolor="#bcdeff"><tr><td align=center colspan=3 height=10%><h3><font size=5 face="Maiandra GD" color="Navy">UPDATE THE FAQ
</font></h3></td>
</tr>
    <p>
      <%! java.sql.Connection connection;  java.sql.Statement statement;java.sql.ResultSet RS;%>
      
      <%
  try {
	    Class.forName("com.mysql.jdbc.Driver");
	      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
 statement = connection.createStatement();
 RS = statement.executeQuery("select * from faq");
     }
  catch(Exception e)
  { out.println(e);}
%>
    </p>
    <tr><td colspan=3 align="center" valign="top">
<table BORDER=0 WIDTH="90%" bgcolor="#00bebc"><tr><td><table BORDER=0 WIDTH="100%" bgcolor="white">
<tr>
	
	<td bgcolor="orange"><font color="#000000" size="3" face="Maiandra GD"><b>--</b></font></td>
	<td bgcolor="orange"><font color="#000000" size="3" face="Maiandra GD"><b>Question</b></font></td>
	<td bgcolor="orange"><font color="#000000" size="3" face="Maiandra GD"><b>Answer</b></font></td>
</tr>

<%
  try {
String ID = "";
while(RS.next())
	{
	ID = RS.getString(1);



%>
<tr>
	<td><a href="UpdateRecordfaq.jsp?code=<%=ID %> ">Update</a></td>
	<td><font size=2 face=verdana color="black"><%=RS.getString(2) %></td>
	<td><font size=2 face=verdana color="black"><%=RS.getString(3) %></td>
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

