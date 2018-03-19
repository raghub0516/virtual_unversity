<%@ include file="imp.html" %>
<html>

<head>
<title>Administrator</title>
</head>

<font color="blue">
<u> <center> <H2>Administrator</H2> </center> </u>
</font>
<body text="blue" bgColor="white">

<form method="post" action="check.jsp">

<b>
<br>

<center>  
Login: <input type="login" name="login">
</center>
<br>
<center>  
Password: <input type="password" name="password">
</center>

<br>
<center>
<input type="submit" name="Sign in" value="Sign in">
</center>

</form>
<br>

<center>
You may view the <a href=passwordprotectedpage.jsp>password-protected Web page</a> after you login once.
</center>

</b>
</body>

</html>
