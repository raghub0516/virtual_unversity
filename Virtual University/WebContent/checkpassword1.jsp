<%@ page import="java.sql.*" %>
<html>
<head><title>Password Protection - Check Password</title></head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>


<%! 
    String user,pass,sql,man,man1,out1,in1;
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
String username= new String(request.getParameter("login"));
String password = new String(request.getParameter("password"));
/*user= new String(request.getParameter("login"));
pass = new String(request.getParameter("password"));


StringBuffer name = new StringBuffer(user);

int i = name.length();
name.reverse();
int z = i-2;
name.insert(z,"mesu");

String username = new String(name);

StringBuffer word = new StringBuffer(pass);

int y = word.length();
word.reverse();
int k = y-2;
word.insert(k,"xewk");
String password = new String(word);
*/
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtualuniv","root","admin");


if (checkEmptyField(username))
{

  if (checkEmptyField(password))
  {
    	sql="SELECT login,password FROM userlogin WHERE login=? AND password=?";  
    	System.out.println(username);
    	System.out.println(".........................."+password);
    	
      	pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1,username);
        pstmt.setString(2,password);
      	rs=pstmt.executeQuery();
           while ( rs.next() )
	   {
              man = new String ( rs.getString(1) );
              man1 =new String ( rs.getString(2) );
	    } 
		
		        %>
			<% 
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
<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><h6 align="center"><img src="Images\custcare.gif" width="168" height="109"></h6></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>  </h6></td><td width=15% align="center"><h6><img src="Images\bestwith.gif"></h6></td>
</tr>
<b><p>
         	
        	<tr>
        	  <td colspan="3" height=30 bgcolor="orange"><a href="imp.html"><font size=3 face="Maiandra GD" color="black"><b>Home</b></font></a> </td>
        	</tr>
		<tr><td colspan="1"  align="center"> 

<tr><td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="145" height="44">
  <param name="BGCOLOR" value="">
  <param name="movie" value="button13.swf">
  <param name="quality" value="high">
  <embed src="button13.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="145" height="44" ></embed>
</object>
<hover></hover></td><td Colspan=2 rowspan=9 valign="center"><font size=3 face="Verdana" color="Red"> <div align="justify"><b><font color="#000000" size="5" face="Maiandra GD">Vision Infotech Pvt Ltd</font>.</b><font color="#000000" size="3" face="Maiandra GD">Founded in 2006, with the mission of "Bringing People and   Computers Together...Successfully," We are available on phone, fax, email or you can write to us   if you prefer. We would be delighted to give you more information or simply hear   your thoughts on how we could help you reach your goal. </font>
</div>
<p>&nbsp;</p></td></tr>
<tr><td> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="150" height="36">
  <param name="movie" value="button14.swf">
  <param name="quality" value="high">
  <embed src="button14.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="150" height="36" ></embed>
</object>
  <hover></hover></td></tr>
<tr><td> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="148" height="36">
  <param name="movie" value="button15.swf">
  <param name="quality" value="high">
  <embed src="button15.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="148" height="36" ></embed>
</object>
  <hover></hover></td></tr>
<tr><td> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="151" height="41">
  <param name="movie" value="button16.swf">
  <param name="quality" value="high">
  <embed src="button16.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="151" height="41" ></embed>
</object>
  <hover></hover></td></tr>
<tr><td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="152" height="42">
  <param name="movie" value="button17.swf">
  <param name="quality" value="high">
  <embed src="button17.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="152" height="42" ></embed>
</object>
  <hover></hover></td></tr>

<tr><td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="153" height="41">
  <param name="BGCOLOR" value="">
  <param name="movie" value="button18.swf">
  <param name="quality" value="high">
  <embed src="button18.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="153" height="41" ></embed>
</object> 
  <hover></hover></td></tr>

<tr><td> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="155" height="42">
  <param name="movie" value="button19.swf">
  <param name="quality" value="high">
  <embed src="button19.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="155" height="42" ></embed>
</object>
  <hover></hover></td></tr>

<tr><td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="153" height="40">
    <param name="movie" value="button20.swf">
    <param name="quality" value="high">
    <embed src="button20.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="153" height="40" ></embed>
  </object>
  </td>
</tr>
<tr><td> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="152" height="41">
  <param name="movie" value="button21.swf">
  <param name="quality" value="high">
  <embed src="button21.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="152" height="41" ></embed>
</object>
  <hover></hover></td></tr>
</body>

<tr><td></td></tr>
<tr><td></td></tr>		
<tr><td></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3"><img src="Images\Line.jpg"></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3"><font size=1 face="Verdana" color="Navy">Copyright © Reserved by Vision Infotech 2000-2005<br>All rights Reserved.
</td></tr>

</table>		    	
<%	}
	else
	{
		HttpSession ViewProtectedPage = request.getSession(true);

		ViewProtectedPage.putValue("password","incorrect");

%>
<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
<b><p>
	<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>

	<tr><td colspan="3" height=10 bgcolor="red"><a href="imp.html"><font size=1 face=verdana color="white"><b>Home</b></font></a></td></tr>
<tr><td colspan="3" height=10 bgcolor="black"></td></tr>
	<tr><td colspan=3 align="center" width="50%"> 

	<font size=2 face=verdana color="blue"><b>
	Invalid Username and Password <br>
	Click <a href="imp.html">here</a> to login again 	</td></tr>
	<tr><td></td></tr>
<tr><td></td></tr>		
<tr><td></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3"><img src="Images\Line.jpg"></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3"><font size=1 face="Verdana" color="Navy">Copyright © Reserved by Vision Infotech 2000-2005<br>All rights Reserved.
</td></tr>
	</b></font>
	</body></table>
<%
	}
    }


    else
    {
    %>
<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
<b><p>
    <tr><td colspan="3" height=10 bgcolor="orange"></td></tr>

    <tr><td colspan="3" height=10 bgcolor="red"><a href="imp.html"><font size=1 face=verdana color="white"><b>Home</b></font></a></td></tr>
    <tr><td colspan="3" height=10 bgcolor="black"></td></tr>
    <tr><td colspan=3 align="center" width="50%"> 
    
    
<font size=2 face=verdana color="blue"><b>
Please enter the password	    	<br>
Click <a href="imp.html">here</a> to login again 	</td></tr>
<tr><td></td></tr>
<tr><td></td></tr>		
<tr><td></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3"><img src="Images\Line.jpg"></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3"><font size=1 face="Verdana" color="Navy">Copyright © Reserved by Vision Infotech 2000-2005<br>All rights Reserved.
</td></tr>
</body></table>
<%
    }
}

else
{
%>
<table border=0 width=100% height=100%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
<b><p>
<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>

<tr><td colspan="3" height=10 bgcolor="red"><a href="imp.html"><font size=1 face=verdana color="white"><b>Home</b></font></a></td></tr>
<tr><td colspan="3" height=10 bgcolor="black"></td></tr>
<tr><td colspan=3 align="center" height=50%> 
<font size=2 face=verdana color="blue"><b>
Please enter the username	    	<br>
Click <a href="imp.html">here</a> to login again 	</td></tr>
<tr><td></td></tr>
<tr><td></td></tr>		
<tr><td></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3"><img src="Images\Line.jpg"></td></tr>
<tr><td width=25% bgcolor="#ffffff" align="center" height="10%" colspan="3"><font size=1 face="Verdana" color="Navy">Copyright © Reserved by Vision Infotech 2000-2005<br>All rights Reserved.
</td></tr>

</body></table>
<%
}



%>
</b>
</p>
</table>
</body>
</html>
