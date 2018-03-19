<%@ page import="java.sql.*" %>

<html>
<head><title>Insert course</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=148><div align="center"><img src="Images\custcare.gif" width="162" height="101"></div></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td>
<td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
        	<tr><td colspan="3" height=29 bgcolor="orange">&nbsp;<a href="admincourse.jsp"><font size=3 face="Maiandra GD" color="#000000"><b>Back</b></a></font>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></a></font></td></tr>
</table>

<table border=0 height=10% width=100% ><tr><td align=center colspan=3 height=10%><font size=6 face="Maiandra GD" color="Navy">INSERT A NEW COURSE
	</font></td>
</tr></table>


<BODY BGCOLOR="#F4F4F4" text="#000000">
<CENTER>
<BR><BR>
<b>
<%
   Connection conn = null;
   try
   {

          String C_code = request.getParameter("C_code");
          String C_name = request.getParameter("C_name");
          String C_prerequisite = request.getParameter("C_prerequisite");
          String C_duration = request.getParameter("C_duration");
          String C_lump_fee = request.getParameter("C_lump_fee");
          String C_ins_first = request.getParameter("C_ins_first");
          String C_ins_second = request.getParameter("C_ins_second");
          String C_syllabus = request.getParameter("C_syllabus");  

  

          Class.forName("com.mysql.jdbc.Driver");
	        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");

     String query = "insert into course_details values (  '"+C_code+"','"+C_name+"','"+C_prerequisite+"','"+C_duration+"','"+C_lump_fee+"','"+C_ins_first+"','"+C_ins_second+"','"+C_syllabus+"')"; 


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
