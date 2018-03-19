<%@ page import="java.sql.*" %>

<html>
<head><title>Insert project</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=159><div align="center"><img src="Images\custcare.gif" width="150" height="98"></div></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td>
<td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
        	<tr><td colspan="3" height=30 bgcolor="orange">&nbsp;<a href="adminproject.jsp"><font size=3 face="Maiandra GD" color="black"><b>Back</b></a></font>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></a></font></td></tr>
</table>

<table border=0 height=10% width=100% ><tr><td align=center colspan=3 height=10%><font size=5 face="Maiandra GD" color="#000000">INSERT A NEW PROJECT
	</font></td>
</tr></table>


<BODY BGCOLOR="#F4F4F4" text="#003366">
<CENTER>
<BR><BR>
<b>
<%
   Connection conn = null;
   try
   {

          String P_code = request.getParameter("P_code");
          String P_name = request.getParameter("P_name");
          String P_prerequisite = request.getParameter("P_prerequisite");
          String P_duration = request.getParameter("P_duration");
          String P_lump_fee = request.getParameter("P_lump_fee");
          String P_ins_first = request.getParameter("P_ins_first");
          String P_ins_second = request.getParameter("P_ins_second");
  

          Class.forName("com.mysql.jdbc.Driver");
	        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");

     String query = "insert into project_details values (  '"+P_code+"','"+P_name+"','"+P_prerequisite+"','"+P_duration+"','"+P_lump_fee+"','"+P_ins_first+"','"+P_ins_second+"')"; 


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
