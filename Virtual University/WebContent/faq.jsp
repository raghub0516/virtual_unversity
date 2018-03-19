<%@page import="java.sql.DriverManager"%>
<html>
<head><title>Password Protection - Check Password</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20% >
<tr><td width=25% height=152><div align="center"><img src="Images\custcare.gif" width="175" height="99"></div></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td>
<td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
        	<tr><td colspan="3" height=25 bgcolor="orange">&nbsp;<a href="imp.html"><font size=3 face="Maiandra GD" color="#000000"><b>Home</b></a></font></td></tr>
</table>
<table border=0 width=100% height=20% > 
  <TR>
    <TD height=10% valign="center" width=100% BGCOLOR="#800000">
<h2 align="center" style="center"><b><font color="#FFFFFF" face="Maiandra GD" size="5">FAQ</font></b><font face="Maiandra GD"><span style="Verdana;
color:#FF9933"><br>
</span><u><font size="3" color="#ffff00">Frequently Asked
Questions</font></u>
</font></h2></td>
</table>

<%! java.sql.Connection connection;  java.sql.Statement statement;java.sql.ResultSet RS;%>

<%
  try {Class.forName("com.mysql.jdbc.Driver");
  connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");

 statement = connection.createStatement();
 RS = statement.executeQuery("select * from faq");
     }
  catch(Exception e)
  { out.println(e);}
%>

<table border=0 align="center" width=80% height=100% > 
<%
  try {
while(RS.next())
	{


%>

<tr>
	<td bgcolor="ffffff"  align="left"  width="8%" height="5%" ><font size=10 color="800000"><b>.&nbsp;</b></font><b><font size=2 face=verdana color="Brown"><%=RS.getString(2) %></b></font><br>
	<font size=2 face=verdana color="Brown"><%=RS.getString(3) %></font></td>
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



<tr><td width=25% bgcolor="#ffffff" align="center" height="5%" colspan="3"><img src="Images\Line.jpg"></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="5%" colspan="3" valign=top><font size=1 face="Verdana" color="Navy">Copyright © 2000-2005 Reserved by Vision Infotech <br>All rights Reserved.    
</td></tr>
</table>
</font>
</body>
</html>