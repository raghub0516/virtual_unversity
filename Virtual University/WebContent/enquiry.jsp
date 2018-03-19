<%@ page import="java.sql.*" %>

<html>
<head><title>Password Protection - Check Password</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><h6 align="center"><img src="Images\custcare.gif" width="170" height="105"></h6></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>
  </h6></td><td width=15% align="center"><h6><img src="Images\bestwith.gif"></h6></td>
</tr>

        	<tr><td colspan="3" height=30 bgcolor="orange">&nbsp;<a href="imp.html"><font size=3 face="Maiandra GD"color="black"><b>Home</b></a></font></td></tr>
		
		<tr><td colspan=3 align="center"><h3><font face="Maiandra GD">
	    <table border=0 height=100% width=100% bgcolor="#bcdeff">
	    </font>
		  </h3>
		  <tr><td align=center colspan=3 height=10%><h3><font size=6 face="Maiandra GD" color="Navy"><u>Enquiry</u>
	      </font></h3></td></tr>


          <h3></font>
          </h3>
		</body>

<%
   Connection conn = null;
   try
   {

          String E_name = request.getParameter("E_name");
          String E_email = request.getParameter("E_email");
          String E_sub = request.getParameter("E_sub");
          String E_content = request.getParameter("E_content");


          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");

     String query = "insert into enquiry values (?,?,?,?)";


      PreparedStatement pstm=conn.prepareStatement(query);

      pstm.setString(1,E_name);
      pstm.setString(2,E_email);
      pstm.setString(3,E_sub);
      pstm.setString(4,E_content);

        int a=pstm.executeUpdate();
%>
<tr><td></td></tr>
<tr><td align="center" height="10%"><font size=3 face="verdana" color="Navy"><center>The answer to your question will be send to your mail-id within two days</td></tr>
<tr><td></td></tr>
<tr><td align="center" height="10%"><font size=3 face="verdana" color="Navy">Thank you!!!</td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td align="right" height="10%"><b><font size=3 face="verdana" color="Navy"><a href=enquiry.html>More Questions </a></b></font></td></tr>
<%
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
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3"><img src="Images\Line.jpg"></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3" valign=top><font size=1 face="Verdana" color="Navy">Copyright © 2000-2005 Reserved by Vision Infotech <br>All rights Reserved.

</table>
</body>
</html>