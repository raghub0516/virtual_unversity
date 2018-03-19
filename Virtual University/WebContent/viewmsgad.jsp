<%-- viewmsg.jsp  --%>
<%@ page language="java" errorPage="errorpage.jsp"%>
<html>
<head>
	<title>vision infotech.com : View Message</title>
</head>

<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>

<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>
        	<tr><td colspan="3" height=10 bgcolor="red">&nbsp;<a href="administrator.html"><font size=1 face=verdana color="white"><b>Home</b></a></font>&nbsp;<a href="inboxad.jsp"><font size=1 face=verdana color="white"><b>Back</b></a></font>&nbsp;<a href="signoutad.jsp"><font size=1 face=verdana color="white"><b>Sign out</b></a></font></td></tr>
		<tr><td colspan="3" height=10 bgcolor="black"></td></tr>

<tr><td height="20%"></td></tr>
<tr><td height="20%"></td></tr>
<tr><td height="20%"></td></tr>
<tr><td height="20%"></td></tr>
<tr><td height="20%"></td></tr>
</table>


<jsp:useBean id="mb" scope="session" class="vinproject.MailBean" />
<% mb.readMsg((String)request.getParameter("msgnum")); %>


<table  border="2" bgcolor="#00bebc" width="80%" align="center">
<tr>
    <td width="80%"><b>Date:</b>
    <%= mb.getCurrentMessage().getSentDate() %></td>
</tr>
<tr>
    <td width="80%"><b>To:</b>
    <%= mb.getCurrentMessage().getAllRecipients()[0] %></td>
</tr>
<tr>
    <td width="80%"><b>From:</b>
    <%= mb.getCurrentMessage().getFrom()[0] %></td>
</tr>
<tr>
    <td width="80%"><b>Subject:</b>
    <%= mb.getCurrentMessage().getSubject() %></td>
</tr>
</table>
<table  border="2" width="80%" height="50%" align="center" bgcolor="#00bebc">
<tr><td valign="top"><%= mb.getCurrentMessage().getContent() %></td></tr>
</table>
</body>
</html>
