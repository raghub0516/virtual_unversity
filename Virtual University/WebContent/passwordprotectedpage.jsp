<%@ include file="imp.html" %>

<%

HttpSession ViewProtectedPage = request.getSession();

if (ViewProtectedPage.getValue("password")!="correct")
{

	response.sendRedirect("accessdenied.jsp");

}

%>

<html>
<head>
<title>Password Protection - Protected Page</title>
</head>
<font color="#ff3366">
<body text="blue" bgColor="white">
<h2>  This is Restricted Area </h2>
</font>

The secret to creating dynamic scalable Web sites is JSP.
</body>
</html>
