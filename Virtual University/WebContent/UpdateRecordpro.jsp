<%@ page import="java.sql.*" %>



<html>
<head>
<title>Update Record Form</title>
</head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><div align="center"><img src="Images\custcare.gif" width="162" height="97"></div></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>
  </h6></td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
        	<tr><td colspan="3" height=30 bgcolor="orange">&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Home</b></a></font>&nbsp;<a href="adminupproject.jsp"><font size=3 face="Maiandra GD" color="#000000"><b>Back</b></a></font>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></a></font></td></tr>


<tr><td colspan=3 align="center"><table border=0 height=100% width=100% bgcolor="#bcdeff">
  <tr><td align=center colspan=3 height=20%><h3><font size=5 face="Maiandra GD" color="#000000">UPDATE THE PROJECT
  </font></h3></td>
  </tr>

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
String query = "SELECT * FROM project_details WHERE P_code = ?";
       pstmt=conn.prepareStatement(query);
               pstmt.setString(1,request.getParameter("code")); 

	 rs = pstmt.executeQuery();


%>



<%
while(rs.next())
	{
%>


<form method="Post" action="adminuppro.jsp">
<tr><td><table align="center" width="50%" height="50%" border=0>
  <input type="hidden" name="P_code" value="<%=rs.getString(1) %>">
  <tr> 
    <td width="30%"><b>Project Name:</b></td>
    <td width="70%"><input type="text" name="P_name" size=40 value="<%=rs.getString(2) %>"></td>
  </tr>
  <tr> 
    <td width="30%"><b>Prerequisite:</b></td>
    <td width="70%"><input type="text" name="P_prerequisite" size=40 value="<%=rs.getString(3) %>"></td>
  </tr>
  <tr> 
    <td width="30%"><b>Duration:</b></td>
    <td width="70%"><input type="text" name="P_duration" size=40 value="<%=rs.getString(4) %>"></td>
  </tr>
  <tr> 
    <td width="30%"><b>Lump fee:</b></td>
    <td width="70%"><input type="text" name="P_lump_fee" size=40 value="<%=rs.getString(5) %>"></td>
  </tr>
  <tr> 
    <td width="30%"><b>First installment:</b></td>
    <td width="70%"><input type="text" name="P_ins_first" size=40 value="<%=rs.getString(6) %>"></td>
  </tr>
  <tr> 
    <td width="30%"><b>Second installment:</b></td>
    <td width="70%"><input type="text" name="P_ins_second" size=40 value="<%=rs.getString(7) %>"></td>
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
