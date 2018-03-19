<%-- errorpage.jsp  --%>
<%@ page language="java" isErrorPage="true"%>
<html>
<head>
	<title>vision infotech.com : An error has occurred.</title>
</head>
<body>
<h2>vision infotech.com regrets to report that an error has occurred.</h2>
<h4>Error:</h4>
<%= exception.toString() %><BR>
Please contact the webmaster if this problem persists.
</body>
</html>
