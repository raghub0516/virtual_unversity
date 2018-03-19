<%@ page import="java.sql.*" %>

<HTML>
<head><Title>Delete the project</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>

<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>

<tr><td colspan="3" height=10 bgcolor="red"><a href="administrator.html"><font size=1 face=verdana color="white"><b>Home</b></font></a>&nbsp;<a href="administrator.html"><font size=1 face=verdana color="white"><b>Sign out</b></font></a></td></tr>
<tr><td colspan="3" height=10 bgcolor="black"></td></tr>
<tr><td colspan=3 align="center"><table border=0 height=100% width=100% bgcolor="#ffbabf"><tr><td align=center colspan=3 height=10%><font size=4 face="Verdana" color="Navy">DELETE THE PROJECT
	</font></td></tr>


<%!

        Connection conn = null;

%>

<%
  
   try
   {
          
      String code=request.getParameter("P_code");  

      Class.forName("com.mysql.jdbc.Driver");
      conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");

      PreparedStatement pstmt=conn.prepareStatement("DELETE FROM project_details WHERE P_code=?");
	
      pstmt.setString(1,code);

	int status=pstmt.executeUpdate();
	
        if(status==1)
%>
<tr><td align="center"><b><font size=3 face="verdana">Successfully Deleted</font></b></td></tr>
<%	  else
%>
<tr><td align="center"><b><font size=3 face="verdana">Cannot delete the project</font></b></td></tr>
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
