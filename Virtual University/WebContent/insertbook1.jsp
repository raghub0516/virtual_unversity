<%@ page import="java.sql.*" %>

<HTML>
<HTML>
<head>
<title>Registration Form</title>
</head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>

<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>
        	<tr><td colspan="3" height=10 bgcolor="red">&nbsp;<a href="imp.html"><font size=1 face=verdana color="white"><b>Home</b></a></font></td></tr>
		<tr><td colspan="3" height=10 bgcolor="black"></td></tr>
</table>
<tr>
	<td align="center" colspan="3"><table border=0 width=100% height=100% bgcolor="#70aadb" ><tr><td height=2%></td></tr><tr><td align="center"><table border=0 width=80% height="80%" bgcolor="white">
	<tr><td align="center"  bgcolor="#2f2f6f" colspan=7 height="5%"><font face="Arial"  size="3" color="white"><b>Booking Form</b></font></td></tr>

<%!  String query1,b; %>
<%
   Connection conn = null;
   PreparedStatement pstm,pstm1;
   ResultSet rs=null;
   try
   {
          String b="B";
         
          String B_fname = request.getParameter("B_fname");
          String B_lname = request.getParameter("B_lname");
          String B_dob1 = request.getParameter("date");
          String B_dob2 = request.getParameter("month");
          String B_dob3 = request.getParameter("year");
          String B_dob4=B_dob1.concat(B_dob2);
          String B_dob=B_dob4.concat(B_dob3);
          String B_sex = request.getParameter("B_sex");
          String B_address = request.getParameter("B_address");
          String B_city = request.getParameter("B_city");
          String B_pincode = request.getParameter("B_pincode");  
          String B_phno = request.getParameter("B_phno");
          String B_mobile = request.getParameter("B_mobile");
          String B_email = request.getParameter("B_email");
          String B_quali = request.getParameter("B_quali");
          String B_joining = request.getParameter("B_joining");
          String B_selcode = request.getParameter("B_selcode");


          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");


	String query2="select booking1.nextval from dual";
	pstm1=conn.prepareStatement(query2);
	int c=pstm1.executeUpdate();
       String no=b.concat("c");
System.out.println(no);

     String query = "insert into Booking values ('"+no+"','"+B_fname+"','"+B_lname+"','"+B_dob+"','"+B_sex+"','"+B_address+"','"+B_city+"','"+B_pincode+"','"+B_phno+"','"+B_mobile+"','"+B_email+"','"+B_quali+"','"+B_joining+"','"+B_selcode+"')"; 

       pstm=conn.prepareStatement(query);
        int a=pstm.executeUpdate();

      query1 ="select booking1.currval from dual";       
       pstm1=conn.prepareStatement(query1);
       rs=pstm1.executeQuery();
	rs.next();
%>
<tr><td height="10%"></td></tr>
 <tr><td height=5% align="center"><font face="verdana"  size="2" color="black"><b>
Your Booking number  is <%=rs.getString(1)%>
</b></font></td></tr>
 <tr><td height=5% align="center"><font face="verdana"  size="2" color="blue"><b>

</b></font></td></tr>
<tr><td height="20%"></td></tr>
</td></tr>
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

</table>
</table>
</font>
</body>
</HTML>
