 <%@ page import="java.sql.*" %>

<HTML>
<HEAD><TITLE>Simple Oracle Example
</TITLE></HEAD>
<font color="33cc33">

<center> <B> <u> CREATING A TABLE </u></B> </center>
</font>

<BODY BGCOLOR="#FFFFFF" text="blue">
<CENTER>
<BR><BR>
<B>
<%
   Connection conn = null;
   try
   {
	   Class.forName("com.mysql.jdbc.Driver");
	   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");

      String sql="CREATE TABLE customers2 ( name char(30) )";

      PreparedStatement pstm=conn.prepareStatement(sql);
			
               int a=pstm.executeUpdate();
               out.println("Table Created");

   }

   catch(SQLException e)
   {
      out.println("SQLException: " + e.getMessage() + 
"<BR>");

      while((e = e.getNextException()) != null)
         out.println(e.getMessage() + "<BR>");
   }

   catch(ClassNotFoundException e)
   {
      out.println("ClassNotFoundException: " + 
e.getMessage() + "<BR>");
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
</B>
</CENTER>
</BODY>

</HTML>
