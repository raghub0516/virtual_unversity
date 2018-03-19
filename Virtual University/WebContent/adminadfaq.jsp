<%@ page import="java.sql.*" %>
<!-- That one i will commit and will push the same in branch  -->
<html>
<head><title>Insert FAQ</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=147><div align="center"><img src="Images\custcare.gif" width="153" height="88"></div></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td>
<td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
        	<tr><td colspan="3" height=24 bgcolor="orange">&nbsp;<a href="adminfaq.jsp"><font size=3 face="Maiandra GD" color="#000000"><b>Back</b></a></font>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></a></font></td></tr>
</table>

<table border=0 height=10% width=100% ><tr><td align=center colspan=3 height=10% bgcolor="#bb0000"><h6><font size=5 face="Maiandra GD" color="white">INSERT A FAQ
</font></h6></td>
</tr></table>


<BODY BGCOLOR="#F4F4F4" text="#aa0000">
<CENTER>
<BR><BR>
<b>
<%
   Connection conn = null;
   try
   {

          String FAQ_code = request.getParameter("FAQ_code");
          String FAQ_ques = request.getParameter("FAQ_ques");
          String FAQ_ans = request.getParameter("FAQ_ans");

  

          Class.forName("com.mysql.jdbc.Driver");
	        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");

     String query = "insert into faq values ('"+FAQ_code+"','"+FAQ_ques+"','"+FAQ_ans+"')"; 


      PreparedStatement pstm=conn.prepareStatement(query);
			
        int a=pstm.executeUpdate();

         out.println("Insertion Success");


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

</b>
</CENTER>
</BODY>

</HTML>
