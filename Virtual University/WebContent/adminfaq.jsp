<%@ page import="java.sql.*"%>

<html>
<head><Title>FAQ Details</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><h6 align="center"><img src="Images\custcare.gif" width="150" height="99"></h6></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>
  </h6></td><td width=15% align="center"><h6><img src="Images\bestwith.gif"></h6></td>
</tr>



<tr><td colspan="3" height=30 bgcolor="orange"><a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Home</b></font></a>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></a></font></td></tr>
<tr><td colspan="3" height=5 bgcolor="black">&nbsp;&nbsp;<a href="insertfaqad.html"><font size=2 face="Maiandra GD" color="white"><b>Insert </b></a></font>&nbsp;&nbsp;<a href="adminupfaq.jsp"><font size=2 face="Maiandra GD" color="white"><b>Update </b></a></font>&nbsp;&nbsp;<a href="adminfaqdelete.jsp"><font size=3 face="Maiandra GD" color="white"><b>Delete</b></a></font>&nbsp;</td></tr>
<tr><td colspan=3 align="center"><h3><font face="Maiandra GD">
  <table border=0 height=100% width=100% bgcolor="#bcdeff">
  </font>
</h3>
  <tr><td align=center><h3><font color="black" size=5 face="Maiandra GD"><u>Frequently Asked Questions</u></font><font size=5 color="black"><u></u>
    </font>
          <%! java.sql.Connection connection;  java.sql.Statement statement;java.sql.ResultSet RS;%>
    
          <%
  try {
	    Class.forName("com.mysql.jdbc.Driver");
	      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
statement = connection.createStatement();
 RS = statement.executeQuery("select * from FAQ");
     }
  catch(Exception e)
  { out.println(e);}
%>
    
  </h3>
  <tr><td colspan=3 align="center" valign="top">
<table BORDER=0 WIDTH="90%" bgcolor="#00bebc"><tr><td><table BORDER=1 WIDTH="100%" bgcolor="white">
<tr>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="black"><b>FAQ_Code</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="#000000"><b>FAQ_ques</b></td>
	<td bgcolor="orange"><font size=3 face="Maiandra GD" color="#000000"><b>FAQ_ans</b></td>
</tr>

<%
  try {
while(RS.next())
	{


%>
<tr>
	<td><font size=2 face="Times New Roman, Times, serif" color="#0B0000"><%=RS.getString(1) %></td>
	<td><font size=2 face="Times New Roman, Times, serif" color="#0B0000"><%=RS.getString(2) %></td>
	<td><font size=2 face="Times New Roman, Times, serif" color="#0B0000"><%=RS.getString(3) %></td>
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

