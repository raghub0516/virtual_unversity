<%@ page import="java.sql.*" %>

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
	<td align="center" colspan="3"><table border=0 width=100% height=100% bgcolor="#2f2f4f" ><tr><td height=2%></td></tr><tr><td align="center"><table border=0 width=80% height="80%" bgcolor="white">
	<tr><td align="center"  bgcolor="#2f2f6f" colspan=7 height="5%"><font face="Arial"  size="3" color="white"><b>Registration Form</b></font></td></tr>


<%!  String query1,sql,man,sql1,man1; %>
<%
   Connection conn = null;
   PreparedStatement pstm=null,pstm1=null,pstmt=null;
   ResultSet rs=null;
   try
   {
         
          String R_fname = request.getParameter("R_fname");
          String R_lname = request.getParameter("R_lname");
          String R_Tcode= new String(request.getParameter("R_Tcode"));
          String R_Bcode = request.getParameter("R_Bcode");
          String R_dob1 = request.getParameter("date");
          String R_dob2 = request.getParameter("month");
          String R_dob3 = request.getParameter("year");
          String R_dob4=R_dob1.concat(R_dob2);
          String R_dob=R_dob4.concat(R_dob3);
          String R_sex = request.getParameter("R_sex");
          String R_address = request.getParameter("R_address");
          String R_city = request.getParameter("R_city");
          String R_pincode = request.getParameter("R_pincode");  
          String R_phno = request.getParameter("R_phno");
          String R_mobile = request.getParameter("R_mobile");
          String R_email = request.getParameter("R_email");
          String R_quali = request.getParameter("R_quali");
          String R_joining = request.getParameter("R_joining");
          String R_selcode = request.getParameter("R_selcode");
          String R_install = request.getParameter("R_install");
          String R_payment = request.getParameter("R_payment");
          String R_payno = request.getParameter("R_payno");
          String R_bankname = request.getParameter("R_bankname");
		  
		  String reg = "Reg ";

		  Class.forName("com.mysql.jdbc.Driver");
		  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
	 
	 conn.setAutoCommit(false);
	 Statement st = conn.createStatement();
	 ResultSet rs1 = st.executeQuery("select count(*) from Registration1 ");

if (rs1.next())
{
reg = reg+rs1.getString(1);
System.out.println("shankar");
}

sql="SELECT T_code FROM tests WHERE T_code=? ";    
      	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,R_Tcode);
      	rs=pstmt.executeQuery();
           while ( rs.next() )
	   {
              man = new String ( rs.getString(1) );
              	    }          
	if(R_Tcode.equals (man) )
	{
	sql1="SELECT B_code FROM booking WHERE B_code=? ";    
      	pstmt=conn.prepareStatement(sql1);
	pstmt.setString(1,R_Bcode);
      	rs=pstmt.executeQuery();
           while ( rs.next() )
	   {
           man1 = new String ( rs.getString(1) );
              	    }          
System.out.println("a="+R_Bcode+"b="+man1);
	         if ((R_Bcode.length()==0) || (R_Bcode.equals(man1)))
	       {
	   			
     String query = "insert into Registration1 values ('"+reg+"' ,'"+R_fname+"','"+R_lname+"','"+R_dob+"','"+R_Tcode+"','"+R_Bcode+"','"+R_sex+"','"+R_address+"','"+R_city+"','"+R_pincode+"','"+R_phno+"','"+R_mobile+"','"+R_email+"','"+R_quali+"','"+R_joining+"','"+R_selcode+"','"+R_install+"','"+R_payment+"','"+R_payno+"','"+R_bankname+"')"; 

       pstm=conn.prepareStatement(query);
        int a=pstm.executeUpdate();

    //  query1 ="select register.currval from dual";       
     //  pstm1=conn.prepareStatement(query1);
      // rs=pstm1.executeQuery();
	// rs.next();
%>

<tr><td height="10%"></td></tr>
 <tr><td height=5% align="center"><font face="verdana"  size="2" color="blue"><b>
Your Registration number  is <%=reg%>
</b></font></td></tr>
 <tr><td height=5% align="center" ><font face="verdana"  size="2" color="blue"><b>
Your login id and password will be sent to your mail-id within 2 days.
</b></font></td></tr>
<tr><td height="20%"></td></tr>
</td></tr>
<%
   	}
	else
	{
	%>
<tr><td height="10%"></td></tr>
 <tr><td height=20% align="center" valign="top"><font face="verdana"  size="2" color="blue"><b>
Please enter a valid Booking code.
</b></font></td></tr>
<%     	
	}
   }
    else
     {
%>
<tr><td height="10%"></td></tr>
 <tr><td height=20% align="center" valign="top"><font face="verdana"  size="2" color="blue"><b>
Please enter a valid Test code.
</b></font></td></tr>
<%      }
conn.setAutoCommit(true);
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
