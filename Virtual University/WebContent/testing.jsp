<%@ page import="java.sql.*" %>
<html>
<head><title>Password Protection - Check Password</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>


<b>
<p>

<%! 

    String username; 
    String password;
    String sql; 
    String man;
    String man1;

    Connection conn = null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;

public boolean checkEmptyField(String fieldValue)
{
	if (fieldValue.length()==0)
		return false;
	else
		return true;
}
%>



<%

username= new String(request.getParameter("login"));


password = new String(request.getParameter("password"));


Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");


if (checkEmptyField(username))
{
  if (checkEmptyField(password))
  {

    if ((username!=null)&&(username.length()>0)&&(password!=null)&&(password.length()>0))
    {

	sql="SELECT login,password FROM admin WHERE login=? AND password=?";
      
      	pstmt=conn.prepareStatement(sql);
	
      	pstmt.setString(1,username);
      
        pstmt.setString(2,password);
 
      	rs=pstmt.executeQuery();


           while ( rs.next() )
	   {
              man = new String ( rs.getString(1) );

                 man1 =new String ( rs.getString(2) );
                 
	    }          
    
	if (username.equals(man)   &&   password.equals(man1))
	{

		HttpSession ViewProtectedPage = request.getSession(true);

		ViewProtectedPage.putValue("password","correct");
%>
<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>

<tr><td colspan="3" height=10 bgcolor="red"><a href="imp.html"><font size=2 face=verdana color="white"><b>Home</b></font></a> <a href="imp.html"><font size=2 face=verdana color="white"><b>Sign out</b></font></a> </td></tr>
<tr><td colspan=3 align="center"> 
</font>
</body></table>

hiiiiiiiiiii	    	
<%	}
	else
	{
		HttpSession ViewProtectedPage = request.getSession(true);

		ViewProtectedPage.putValue("password","incorrect");

%>
<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>

<tr><td colspan="3" height=10 bgcolor="red"><a href="imp.html"><font size=2 face=verdana color="white"><b>Home</b></font></a></td></tr>
<tr><td colspan=3 align="center"> 

<font size=3 face=Trebuchet MS color="blue"><b>

Invalid Username and Password <br>
Click <a href="imp.html">here</a> to login again 	
</b></font>
</body></table>
<%
	
     }
    }
     else
      {
   %>
<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>

<tr><td colspan="3" height=10 bgcolor="red"><a href="imp.html"><font size=2 face=verdana color="white"><b>Home</b></font></a></td></tr>
<tr><td colspan=3 align="center"> 
</font>
</body></table>

haaaaaaaaaaaaiiiiiiiiiii	    	
<%
      }
  }
      else
      {
   %>
<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>

<tr><td colspan="3" height=10 bgcolor="red"><a href="imp.html"><font size=2 face=verdana color="white"><b>Home</b></font></a></td></tr>
<tr><td colspan=3 align="center"> 
</font>
</body></table>

haaaaaaaaaaaaiiiiiiiiiii	    	
<%
      }


}


%>
</b>
</p>
</body>
</html>
