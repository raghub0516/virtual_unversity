<%@ page import="java.sql.*" %>

<html>
<head><title>Insert project</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=166><div align="center"><img src="Images\custcare.gif" width="165" height="101"></div></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td>
<td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
        	<tr><td colspan="3" height=32 bgcolor="orange">&nbsp;<a href="imp.html"><font size=3 face="Maiandra GD" color="#000000"><b>Back</b></a></font>&nbsp;<a href="signout.html"><font size=3 face="Maiandra GD" color="#000000"><b>Sign out</b></a></font></td>
        	</tr>
</table>

<table border=0 height=10% width=100% ><tr>
  <td align=center colspan=3 height=10%><font size=5 face="Maiandra GD" color="Navy">You have successfully Registered !
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

          String log = request.getParameter("login");
          String pass = request.getParameter("password");
          String first = request.getParameter("first");
          String last = request.getParameter("last");
          String email = request.getParameter("email");
          String mnum = request.getParameter("mnum");

  

          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");
/*
StringBuffer login = new StringBuffer(log);

int i = login.length();
login.reverse();
int k = i-2;
login.insert(k,"mesu");

StringBuffer password = new StringBuffer(pass);

int y = password.length();
password.reverse();
int q = y-2;
password.insert(q,"xewk");


*/
     
	 String query = "insert into userlogin values ('"+log+"','"+pass+"','"+first+"','"+last+"','"+email+"','"+mnum+"')"; 


//       PreparedStatement pstm=conn.prepareStatement(query);
		Statement st =conn.createStatement();
		
        int res=st.executeUpdate(query);
        if(res>1)
        {
        	System.out.println("inserted sucessfully");
        }else
        {
        	System.out.println("not inserted sucessfully");
        }
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
