<%@ page import="java.sql.*" %>


<html>
<head><Title>Delete the faq</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=155><div align="center"><img src="Images\custcare.gif" width="142" height="92"></div></td>
<td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font></h6></td>
<td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>



<tr><td colspan="3" height=26 bgcolor="orange"><a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Home</b></font></a>&nbsp;<a href="adminfaqdelete.jsp"><font size=3 face="Maiandra GD" color="#000000"><b>Back</b></font></a>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></font></a></td>
</tr>

<tr><td colspan=3 align="center"><table border=0 height=100% width=100% bgcolor="#bcdeff"><tr><td align=center colspan=3 height=10%><h3><font size=5 face="Maiandra GD" color="Navy">DELETE THE FAQ
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
  String query = "SELECT * FROM faq WHERE FAQ_code = ?";
      pstmt=conn.prepareStatement(query);
      pstmt.setString(1,request.getParameter("code")); 
	rs = pstmt.executeQuery();

%>

<%
while(rs.next())
	{
%>
<tr><td height="20%"></td></tr>
<form method="post" action="adminfaqdel.jsp">
<tr><td align="center"><table width="50%"  border="1" align="center" >
  <input type="hidden" name="FAQ_code" value="<%=rs.getString("FAQ_code") %>">
  <tr> 
    <td width="30%">Question</td>
    <td width="70%"><%=rs.getString("FAQ_ques") %></td>
  </tr>
  <tr> 
    <td width="30%">Answer</td>
    <td width="70%"><%=rs.getString("FAQ_ans") %></td>
  </tr>
  
</table>

<table border=0 height=20% width=100% bgcolor="#bcdeff">
<tr><td height="20%"></td></tr>
<tr><td align="center" height="20%" width="20%"><input type="submit" name="Delete" value="Delete Record"></td></tr>

</table>
</td></tr>
</form>

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
</table>

</table>

</body>
</html>
