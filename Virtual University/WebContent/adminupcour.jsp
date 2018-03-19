<%@ page import="java.sql.*" %>


<html>
<head>
<title>Update Record Form</title>
</head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>

<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>
        	<tr><td colspan="3" height=10 bgcolor="red">&nbsp;<a href="administrator.html"><font size=1 face=verdana color="white"><b>Home</b></a></font>&nbsp;<a href="administrator.html"><font size=1 face=verdana color="white"><b>Sign out</b></a></font></td></tr>
		<tr><td colspan="3" height=10 bgcolor="black"></td></tr>


<tr><td colspan=3 align="center"></table><table border=0 height=70% width=100% bgcolor="#ffffcf"><tr><td></td></tr><tr><td align=center colspan=3 height=10%><font size=4 face="Verdana" color="Navy">UPDATE THE COURSE
	</font></td></tr>


<%
try{

    Connection conn = null; 
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
    String query = "update course_details set C_name=?, C_prerequisite=?, C_duration=?, C_lump_fee=?, C_ins_first=?, C_ins_second=?, C_syllabus=? WHERE C_code=?";
       PreparedStatement statement = conn.prepareStatement(query);

       statement.setString(1,request.getParameter("C_name"));
       statement.setString(2,request.getParameter("C_prerequisite"));
       statement.setString(3,request.getParameter("C_duration"));
       statement.setInt(4,Integer.parseInt(request.getParameter("C_lump_fee")));
       statement.setInt(5,Integer.parseInt(request.getParameter("C_ins_first")));
       statement.setInt(6,Integer.parseInt(request.getParameter("C_ins_second")));
       statement.setString(7,request.getParameter("C_syllabus"));
       statement.setString(8,request.getParameter("C_code"));
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

