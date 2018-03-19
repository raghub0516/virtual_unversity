<%-- signout.jsp  --%>
<%@ page language="java" errorPage="errorpage.jsp"%>
<html>
<head>
	<title>Thank you for using vision infotech.com</title>
</head>

<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>

<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>
        	<tr><td colspan="3" height=10 bgcolor="red">&nbsp;<a href="administrator.html"><font size=1 face=verdana color="white"><b>Home</b></a></font></td></tr>
		<tr><td colspan="3" height=10 bgcolor="black"></td></tr>



<jsp:useBean id="mb" scope="session" class="vinproject.MailBean" />
<tr><td height="40%"></td></tr>
<tr><td height="40%"></td></tr>
<tr><td height="40%"></td></tr>
<table border=0 width=100% height=20% align="center">
<tr><td height="20%" align="center"><font size=4 face=verdana color="green"><b>Thank you for using Vision Infotech</b></font></td></tr>

<%	mb.signout();
	session.invalidate();
%>

<tr><td height="20%" align="center"><font size=3 face=verdana color="#005555"><b>click <a href="administrator.html">here</a> to log-in again.</b></font></td></tr>
</table>
</table>
</body>
</html>
