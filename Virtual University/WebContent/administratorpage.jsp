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
<title>Administrator Page</title>
</head>
<font color="#ff3366">
<body text="blue" bgColor="white">
<h2>  This is restricted area other than Administrators</h2>
</font>

<a href=admincourse.jsp>Course Information</a>
<a href=adminproject.jsp>Project Information</a>
<a href=adminstudent.jsp>Student Information</a>
<a href=first1jsp.jsp>Enquiry Details</a>
<a href=first1jsp.jsp>FAQ </a>
</body>
</html>
