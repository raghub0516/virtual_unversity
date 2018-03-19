<%@ page import="java.sql.*" %>


<html>
<head>
<title>Update FAQ</title>
</head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=153><div align="center"><img src="Images\custcare.gif" width="158" height="100"></div></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font> </h6></td>
<td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
        	<tr><td colspan="3" height=30 bgcolor="orange">&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Home</b></a></font>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></a></font></td></tr>


<tr><td height="8" colspan=3 align="center"></table>
<table border=0 height=70% width=100% bgcolor="#bcdeff"><tr><td></td></tr><tr><td align=center colspan=3 height=10%><h3><font size=5 face="Maiandra GD" color="Navy">UPDATE THE FAQ
</font></h3></td>
</tr>


<%
try{

    Connection conn = null; 
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
   String query = "update faq set FAQ_ques=?, FAQ_ans=? WHERE FAQ_code=?";
       PreparedStatement statement = conn.prepareStatement(query);

       statement.setString(1,request.getParameter("FAQ_ques").trim());
       statement.setString(2,request.getParameter("FAQ_ans").trim());
       statement.setString(3,request.getParameter("FAQ_code"));
       statement.executeUpdate();      
	
        conn.close();
}

catch ( SQLException e )
{
 out.println("SQL Exception Caught " + e );
}

catch ( Exception e )
{
 out.println("Exception Caught" + e);
}

%>
<tr><td align="center"><b><font size=3 face="verdana">The Record has been updated.</font></b></td></tr>

</table>
</body>
</html>

