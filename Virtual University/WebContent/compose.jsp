<%-- compose.jsp  --%>
<%@ page language="java" errorPage="errorpage.jsp"%>
<html>
<head><title>vision infotech.com : Compose a message</title></head>

<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>

<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>
        	<tr><td colspan="3" height=10 bgcolor="red">&nbsp;<a href="imp.html"><font size=1 face=verdana color="white"><b>Home</b></a></font>&nbsp;<a href="signout.jsp"><font size=1 face=verdana color="white"><b>Sign out</b></a></font></td></tr>
		<tr><td colspan="3" height=10 bgcolor="black"></td></tr>

</table>
<table border=0 width=100% height=10% align="center">
<tr><td height="10%" align="center"><font size=3 face=verdana color="#658875"><b>Compose a message</b></font></td></tr>
</table>
<form method="post" action="sendmail.jsp">
<table border=0 width=80% height=20% align="center">
<tr>
	<td><b>To:</b></td>
	<td><input type="text" name="to" size="50" /></td>
</tr>
<tr>
	<td><b>cc:</b></td>
	<td><input type="text" name="cc" size="50" /></td>
</tr>
<tr>
	<TD><b>bcc:</b></TD>
	<td><input type="text" name="bcc" size="50" /></td>
</tr>
<tr>
	<td><b>Subject:</b></td>
	<td><input type="text" name="subject" size="50" /></td>
</tr>
<tr>
	<td colspan="2"><textarea name="body" rows="20" cols="60">Enter message here.</textarea></td>
</tr>

<tr>
	<td align=center colspan=4><input type="submit" name="sub" value="Send" >&nbsp;&nbsp;
	<input type=reset name=res value="Reset"></td></tr>
</td></tr>
</form>
</table>
</body>
</html>
