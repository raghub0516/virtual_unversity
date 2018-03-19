<%-- mainpage --%>
<html>
<head>
	<title>vision infotech.com </title>
</head>

<jsp:useBean id="mb" scope="session" class="vinproject.MailBean" />
<%! String username,password,outgoing,incoming;%>
<% 

	username = (String)getServletConfig().getServletContext().getAttribute("user");
	password = (String)getServletConfig().getServletContext().getAttribute("pass");
	outgoing = (String)getServletConfig().getServletContext().getAttribute("Answers");
	incoming = (String)getServletConfig().getServletContext().getAttribute("Name");

	if (!mb.getLoginSuccessful())
	{
		mb.setUser(username); 
		mb.setPassword(password);
		mb.setOutMailServer(outgoing);
		mb.setInMailServer(incoming);
		mb.login();
	}
	mb.openInbox();
%>
<body bgcolor="white" width=100% height=100% cellpadding="0" cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

<table border=0 width=100% height=20%>
<tr><td width=20% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>

<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>
        	<tr><td colspan="3" height=10 bgcolor="red">&nbsp;<a href="administrator.html"><font size=1 face=verdana color="white"><b>Home</b></a></font>&nbsp;<a href="signoutad.jsp"><font size=1 face=verdana color="white"><b>Sign out</b></a></font></td></tr>
		<tr><td colspan="3" height=10 bgcolor="black"><font size=1 face=verdana color="white"><b>Welcome <%= mb.getUser() %>, </b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="composead.jsp"><font size=1 face=verdana color="white"><b>Compose</b></a></font>&nbsp;</td></tr>

<tr><td height="10%"></td></tr>
<tr><td height="10%"></td></tr>
<table border=0 width=100% height=20%>
<tr><td align="center" ><font size=4 face=verdana color="#658875"><b>Inbox</b></font></td></tr>
</table>
<tr><td height="10%"></td></tr>
<tr><td height="10%"></td></tr>
<tr><td height="10%"></td></tr>
<table width="80%" align="center" border="1" color="blue" cellspacing="0" cellpadding="1">

<tr  BGCOLOR="#dcdcdc">
    <td><b>Sender:</b></td>
    <td><b>Subject:</b></td>
    <td><b>Date:</b></td>
    <td><b>Size:</b></td>
</tr>

<% 	for (int i = 0; i < mb.getMessages().length; ++i) 
 	{
%> 
<tr>
    <td width="180"><%= mb.getMessages()[i].getFrom()[0] %></td>
    <td width="260"><a href="viewmsgad.jsp?msgnum=<%= i %>"><%= mb.getMessages()[i].getSubject() %></a></td>
    <td width="180"><%= mb.getMessages()[i].getSentDate() %></td>
    <td width="90"><%= mb.getMessages()[i].getSize() %></td>
</tr>
<% 	
	}
%>
</table>
</table>
</body>
</html>
