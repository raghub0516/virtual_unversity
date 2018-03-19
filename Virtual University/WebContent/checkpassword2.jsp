<%@ page import="java.sql.*" %>
<html>
<head><title>ADMINISTRATOR -- HOME PAGE</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><h6 align="center"><img src="Images\custcare.gif" width="141" height="97"></h6></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td><td width=15% align="center"><h6><img src="Images\bestwith.gif"></h6></td>
</tr>
<b><p>
<%! 
    String username,password,sql,man,man1,out1,in1;
    Connection conn = null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
public boolean checkEmptyField(String fieldValue)
{
	if (fieldValue.length()==0)	return false;
	else    return true;
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
    	sql="SELECT login,password FROM administrator WHERE login=? AND password=?";    
      	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,username);
        pstmt.setString(2,password);
      	rs=pstmt.executeQuery();
           while ( rs.next() )
	   {
              man = new String ( rs.getString(1) );
              man1 =new String ( rs.getString(2) );
	    }          
	if(username.equals(man)   &&   password.equals(man1))
	{
		HttpSession ViewProtectedPage = request.getSession(true);
		ViewProtectedPage.putValue("password","correct");
		out1=new String(request.getParameter("outgoing"));
		in1=new String(request.getParameter("incoming"));
		getServletConfig().getServletContext().setAttribute("user",username);
		getServletConfig().getServletContext().setAttribute("pass",password);
		getServletConfig().getServletContext().setAttribute("Answers",out1);
		getServletConfig().getServletContext().setAttribute("Name",in1);

%>
         	
        	<tr><td colspan="3" height=30 bgcolor="orange"><a href="administrator.html"><font size=3 face="Maiandra GD" color="black"><b>Home</b></a></font>&nbsp;<a href="administrator.html"><font size=3 face="Maiandra GD" color="black"><b>Sign out</b></a></font></td></tr>
		
<tr><td> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="151" height="47">
  <param name="BGCOLOR" value="">
  <param name="movie" value="button22.swf">
  <param name="quality" value="high">
  <embed src="button22.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="151" height="47" ></embed>
</object>
<hover></hover></td><td Colspan=2 rowspan=6 valign="center"><font size=3 face="Verdana" color="Red">
  <div align="justify"> <strong><font color="#000000" size="6" face="Maiandra GD">Vision Infotech Pvt   Ltd.</font></strong><font color="#000000" size="3" face="Maiandra GD"> Founded in 2006, with the mission of "Bringing   People and Computers Together...Successfully," We are available on phone, fax, email   or you can write to us if you prefer. We would be delighted to give you more   information or simply hear your thoughts on how we could help you reach your   goal. </font></div></td></tr>
<tr>
  <td> <div align="justify"><font color="#000000">
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="151" height="35">
      <param name="BGCOLOR" value="">
      <param name="movie" value="button28.swf">
      <param name="quality" value="high">
      <embed src="button28.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="151" height="35" ></embed>
    </object>
  </font></div></td>
  <td>&nbsp;</td>
</tr>
<tr><td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="154" height="43">
  <param name="BGCOLOR" value="">
  <param name="movie" value="button24.swf">
  <param name="quality" value="high">
  <embed src="button24.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="154" height="43" ></embed>
</object> 
  <hover></hover></td></tr>
<tr><td> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="154" height="45">
  <param name="BGCOLOR" value="">
  <param name="movie" value="button26.swf">
  <param name="quality" value="high">
  <embed src="button26.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="154" height="45" ></embed>
</object>
  <hover></hover></td></tr>
<tr><td> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="156" height="45">
  <param name="BGCOLOR" value="">
  <param name="movie" value="button23.swf">
  <param name="quality" value="high">
  <embed src="button23.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="156" height="45" ></embed>
</object></td></tr>
<tr><td> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="155" height="44">
  <param name="movie" value="button29.swf">
  <param name="quality" value="high">
  <embed src="button29.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="155" height="44" ></embed>
</object>
  </td></tr>
		


		    	
<%	}
	else
	{
		HttpSession ViewProtectedPage = request.getSession(true);

		ViewProtectedPage.putValue("password","incorrect");

%>
	<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>

	<tr><td colspan="3" height=10 bgcolor="red"><a href="administrator.html"><font size=2 face=verdana color="white"><b>Home</b></font></a></td></tr>
<tr><td colspan="3" height=10 bgcolor="black"></td></tr>
	<tr><td colspan=3 align="center">
	<font size=3 face=Trebuchet MS color="blue"><b>
	Invalid Username and Password <br>
	Click <a href="administrator.html">here</a> to login again 	
	</b></font>

<%
	}
    }


    else
    {
    %>
    <tr><td colspan="3" height=10 bgcolor="orange"></td></tr>


    <tr><td colspan="3" height=10 bgcolor="red"><a href="administrator.html"><font size=2 face=verdana color="white"><b>Home</b></font></a></td></tr>
    <tr><td colspan="3" height=10 bgcolor="black"></td></tr>
    <tr><td colspan=3 align="center"> <font size=2 face=verdana color="green"><b>
Please enter the password	    	<br>
Click <a href="administrator.html">here</a> to login again 	
<%
    }
}

else
{
%>
<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>
<tr><td colspan="3" height=10 bgcolor="red"><a href="administrator.html"><font size=2 face=verdana color="white"><b>Home</b></font></a></td></tr>
<tr><td colspan="3" height=10 bgcolor="black"></td></tr>
<tr><td colspan=3 align="center"> 
</font>
<tr><td colspan=3 align="center"><font size=2 face="verdana" color="green"><b>
Please enter the username	    	<br>
Click <a href="administrator.html">here</a> to login again 	
<%
}



%>

</b>
<tr><td></TD><TR>
<tr><td></TD><TR>
<tr><td></TD><TR>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3"><img src="Images\Line.jpg"></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3" valign=top><font size=1 face="Verdana" color="Navy">Copyright © 2000-2005 Reserved by Vision Infotech <br>All rights Reserved.
</td></tr>
</p>
</body>
</html>
