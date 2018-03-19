<%-- sendmail.jsp  --%>
<%@ page language="java" errorPage="errorpage.jsp"%>
<html>
<head>
	<title>vision infotech.com : Your message was sent </title>
</head>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>

<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>
        	<tr><td colspan="3" height=10 bgcolor="red">&nbsp;<a href="imp.html"><font size=1 face=verdana color="white"><b>Home</b></a></font>&nbsp;<a href="signout.jsp"><font size=1 face=verdana color="white"><b>Sign out</b></a></font></td></tr>
		<tr><td colspan="3" height=10 bgcolor="black"></td></tr>
</table>

<jsp:useBean id="mb" scope="session" class="vinproject.MailBean" />
<%	mb.setTo(request.getParameter("to"));
	mb.setBcc(request.getParameter("bcc"));
	mb.setCc(request.getParameter("cc"));
	mb.setSubject(request.getParameter("subject"));
	mb.setBody(request.getParameter("body"));
	mb.sendMsg();
%>

<table border=0 width=100% height=20% align="center">
<tr><td align="center"><font size=4 face=verdana color="green"><b>Your message has been sent.</b></font></td></tr>
<tr><td align="center"><font size=3 face=verdana color="#005555"><b>Click <a href="compose.jsp">here</a> to send a message</b></font></td></tr>
</table>
</body>
</html>
