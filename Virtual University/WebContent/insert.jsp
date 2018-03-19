<%@ page import="java.sql.*" %>

<HTML>
<head>
<title>Booking Form</title>
</head>
<font color="red">
<u> <center> <H2>Booking Form</H2> </center> </u>
</font>

<b>
<body text="black" bgColor="white">
<CENTER>
<BR><BR>
<b>
<%!  String query1; %>
<%
   Connection conn = null;
   PreparedStatement pstm,pstm1;
   ResultSet rs=null;
   try
   {
         
          String B_fname = request.getParameter("B_fname");
          String B_lname = request.getParameter("B_lname");
          String B_dob1 = request.getParameter("date");
          String B_dob2 = request.getParameter("month");
          String B_dob3 = request.getParameter("year");
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

  System.out.println("fname="+B_fname+"lname="+B_lname+"dob="+B_dob1+B_dob2+B_dob3+"sex="+B_sex+"address="+B_address);
	String B_dob4=B_dob1.concat(B_dob2);
	String B_dob=B_dob4.concat(B_dob3);
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");

     String query = "insert into Booking values (booking1.nextval ,'"+B_fname+"','"+B_lname+"','"+B_dob+"','"+B_sex+"','"+B_address+"','"+B_city+"','"+B_pincode+"','"+B_phno+"','"+B_mobile+"','"+B_email+"','"+B_quali+"','"+B_joining+"','"+B_selcode+"')"; 

       pstm=conn.prepareStatement(query);
        int a=pstm.executeUpdate();

      query1 ="select booking1.currval from dual";       
       pstm1=conn.prepareStatement(query1);
       rs=pstm1.executeQuery();
	rs.next();
%>

       <center>
Your Booking number : <input type="textarea" name="B_code" value="<%=rs.getString(1)%>"> 
</center>

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

</b>
</CENTER>
</BODY>

</HTML>
