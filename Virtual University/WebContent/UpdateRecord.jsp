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
        	<tr><td colspan="3" height=10 bgcolor="red">&nbsp;<a href="administrator.html"><font size=1 face=verdana color="white"><b>Home</b></a></font>&nbsp;<a href="adminupcourse.jsp"><font size=1 face=verdana color="white"><b>Back</b></a></font>&nbsp;<a href="administrator.html"><font size=1 face=verdana color="white"><b>Sign out</b></a></font></td></tr>
		<tr><td colspan="3" height=10 bgcolor="black"></td></tr>


<tr><td colspan=3 align="center"><table border=0 height=100% width=100% bgcolor="#ffffcf"><tr><td align=center colspan=3 height=10%><font size=4 face="Verdana" color="Navy">UPDATE THE COURSE
	</font></td></tr>

<%!
    Connection conn = null; 
    ResultSet rs = null;

    PreparedStatement pstmt;
%>  


<%
   
   try
   {
	   Class.forName("com.mysql.jdbc.Driver");
	   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
       String query = "SELECT * FROM course_details WHERE C_code = ?";
       pstmt=conn.prepareStatement(query);
               pstmt.setString(1,request.getParameter("code")); 

	 rs = pstmt.executeQuery();


%>



<%
while(rs.next())
	{
%>


<form method="Post" action="adminupcour.jsp">
<tr><td><table align="center" width="50%" height="50%" border=0>
  <input type="hidden" name="C_code" value="<%=rs.getString(1) %>">
  <tr> 
    <td width="30%">Course Name:</td>
    <td width="70%"><input type="text" name="C_name" size=40 value="<%=rs.getString(2) %>"></td>
  </tr>
  <tr> 
    <td width="30%">Prerequisite:</td>
    <td width="70%"><input type="text" name="C_prerequisite" size=40 value="<%=rs.getString(3) %>"></td>
  </tr>
  <tr> 
    <td width="30%">Duration:</td>
    <td width="70%"><input type="text" name="C_duration" size=40 value="<%=rs.getString(4) %>"></td>
  </tr>
  <tr> 
    <td width="30%">Lump fee:</td>
    <td width="70%"><input type="text" name="C_lump_fee" size=40 value="<%=rs.getString(5) %>"></td>
  </tr>
  <tr> 
    <td width="30%">First installment:</td>
    <td width="70%"><input type="text" name="C_ins_first" size=40 value="<%=rs.getString(6) %>"></td>
  </tr>
  <tr> 
    <td width="30%">Second installment:</td>
    <td width="70%"><input type="text" name="C_ins_second" size=40 value="<%=rs.getString(7) %>"></td>
  </tr>
  <tr> 
    <td width="30%">Syllabus:</td>
    <td width="70%"><input type="text" name="C_syllabus" size=40 value="<%=rs.getString(8) %>"></td>
  </tr>
</td></tr>  
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
</table>
<tr><td ><table align="center" width="10%" height="10%" border=0>

<input type="submit" name="Update" value="Update Record"></td></tr>
</form>
</table>

<% } // End of while loop 


   }  // End of try block

   catch(SQLException e)
   {
      out.println("SQLException: " + e.getMessage() + "<BR>");
      while((e = e.getNextException()) != null)
         out.println(e.getMessage() + "<BR>");
   }

   catch(ClassNotFoundException e)
   {
      out.println("ClassNotFoundException: " + e.getMessage() + "<BR>");
   }

   finally
   {
      //Clean up resources, close the connection.
      if(conn != null)
      {
         try
         {
            rs.close();
            pstmt.close();
            conn.close();
         }
         catch (Exception ignored) {}
      }
   }

%>

</b>

</CENTER>

<br>



</table>

</table>
</font>
</body>
</html>
