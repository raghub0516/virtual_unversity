<%@ page import="java.sql.*" %>

<HTML>
<head><Title>Delete the faq</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=183><img src="Images\custcare.gif" width="139" height="98"></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td>
<td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>

<tr><td colspan="3" height=28 bgcolor="orange"><a href="administrator.html"><font size=3 face="Maiandra GD" color="black"><b>Home</b></font></a>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></font></a></td></tr>
<tr><td colspan=3 align="center"><table border=0 height=100% width=100% bgcolor="#bcdeff"><tr><td align=center colspan=3 height=10%><h3><font size=5 face="Maiandra GD" color="Navy">DELETE THE FAQ
</font></h3></td></tr>


<%!

        Connection conn = null;

%>

<%
  
   try
   {
          
      String code=request.getParameter("FAQ_code");  

      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");

      PreparedStatement pstmt=conn.prepareStatement("DELETE FROM faq WHERE FAQ_code=?");
	
      pstmt.setString(1,code);

	int status=pstmt.executeUpdate();
	
        if(status==1)
%>
<tr><td align="center"><b><font size=3 face="verdana">Successfully Deleted</font></b></td></tr>
<%	  else
%>
<tr><td align="center"><b><font size=3 face="verdana">Cannot delete the course</font></b></td></tr>
<%
	
	
	pstmt.close();

     
   }

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
            conn.close();
         }
         catch (Exception ignored) {}
      }
   }

%>
</table>
</table>
</BODY>

</HTML>
