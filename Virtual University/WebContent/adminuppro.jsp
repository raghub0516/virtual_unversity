<%@ page import="java.sql.*" %>


<html>
<head>
<title>Update Record Form</title>
</head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=37%>
<tr><td width=25% height=152><div align="center"><img src="Images\custcare.gif" width="156" height="93"></div></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td>
<td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
        	<tr><td colspan="3" height=27 bgcolor="orange">&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Home</b></a></font>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></a></font></td></tr>


<tr><td colspan=3 align="center"></table>
<table border=0 height=70% width=100% bgcolor="#bcdeff"><tr><td></td></tr><tr><td align=center colspan=3 height=10%><font size=4 face="Verdana" color="Navy">UPDATE THE PROJECT
	</font></td></tr>


<%
try{

    Connection conn = null; 
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
    String query = "update project_details set P_name=?, P_prerequisite=?, P_duration=?, P_lump_fee=?, P_ins_first=?, P_ins_second=?  WHERE P_code=?";
       PreparedStatement statement = conn.prepareStatement(query);

       statement.setString(1,request.getParameter("P_name"));
       statement.setString(2,request.getParameter("P_prerequisite"));
       statement.setString(3,request.getParameter("P_duration"));
       statement.setInt(4,Integer.parseInt(request.getParameter("P_lump_fee")));
       statement.setInt(5,Integer.parseInt(request.getParameter("P_ins_first")));
       statement.setInt(6,Integer.parseInt(request.getParameter("P_ins_second")));
      statement.setString(7,request.getParameter("P_code"));
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

