<%@ page import="java.sql.*"%>

<html>
<head><Title>Enquiry Details</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><h6 align="center"><img src="Images\custcare.gif" width="154" height="100"></h6></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>
  </h6></td><td width=15% align="center"><h6><img src="Images\bestwith.gif"></h6></td>
</tr>



<tr><td colspan="3" height=30 bgcolor="orange"><a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Home</b></font></a>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></a></font></td></tr>

<tr><td colspan=3 align="center"><h3><font face="Maiandra GD">
  <font size="6">
    <table border=0 height=100% width=100% bgcolor="#bcdeff">
    </font></font>
</h3>
  <tr><td align=center><h3><font size=6 face=Maiandra GD GD color="#000000"><u>Enquiry</u></font>
    
          <%! java.sql.Connection connection;  java.sql.Statement statement;java.sql.ResultSet RS;%>
    
          <%
  try {
	  Class.forName("com.mysql.jdbc.Driver");
	  connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");

 statement = connection.createStatement();
 RS = statement.executeQuery("select * from enquiry");
     }
  catch(Exception e)
  { out.println(e);}
%>
    
  </h3>
  <tr><td colspan=3 align="center" valign="top">
<table BORDER=0 WIDTH="90%" bgcolor="fuschia"><tr><td><table BORDER=0 WIDTH="100%" bgcolor="#7093db">
<tr><!-- 
	<td bgcolor="#2f2f4f"><font size=2 face=verdana color="white"><b>--</b></td> 
	<td bgcolor="#2f2f4f"><font size=2 face=verdana color="white"><b>Code</b></td>-->
	<td bgcolor="#2f2f4f"><font size=2 face=verdana color="white"><b>Name</b></td>
	<td bgcolor="#2f2f4f"><font size=2 face=verdana color="white"><b>E-mail</b></td>
	<td bgcolor="#2f2f4f"><font size=2 face=verdana color="white"><b>Subject</b></td>
	<td bgcolor="#2f2f4f"><font size=2 face=verdana color="white"><b>Content</b></td>
</tr>

<%
  try {
while(RS.next())
	{


%>
<tr><!-- 
	<td><a href="replyad.jsp">Reply</a></td> -->
	<td><font size=2 face=verdana color="white"><%=RS.getString(1) %></td>
	<td><font size=2 face=verdana color="white"><%=RS.getString(2) %></td>
	<td><font size=2 face=verdana color="white"><%=RS.getString(3) %></td>
	<td><font size=2 face=verdana color="white"><%=RS.getString(4) %></td>
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

