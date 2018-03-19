

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Test</title>
</head>
<body bgcolor="white" width=100% height=100% cellpadding="0"
	cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

	<table border=0 width=100% height=20%>
		<tr>
			<td width=25% height=130><div align="center">
					<img src="Images\custcare.gif" width="166" height="101">
				</div></td>
			<td width=60% align="Center">
				<h6>
					<font size=7 face="Relapse (BRK)" color="Navy"> VISION
						INFOTECH LTD</font>
				</h6>
			</td>
			<td width=15% align="center"><img src="Images\bestwith.gif"></td>
		</tr>
		<tr>
			<td colspan="3" height=25 bgcolor="orange">&nbsp;<a
				href="imp.html"><font size=3 face="Maiandra GD" color="black"><b>Home</b></a></font>&nbsp;<a
				href="test.html"><font size=3 face="Maiandra GD" color="black"><b>Back</b></a></font></td>
		</tr>
	</table>
	<div align="justify">
		<table border="0" width="100%">
			<tr>
				<td width="100%" height="100%" colspan="5" bgcolor="#efefef">
					<p align="center">
						<font size=5 style="">TEST </font>
				</td>
			</tr>
		</table>

		<%!
	java.sql.Connection connection;
	java.sql.Statement statement;
	java.sql.ResultSet RS;
	int j, k;
	String test1, name;
	String ans[] = new String[50];%>

		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/virtualuniv", "root",
						"admin");
				statement = connection.createStatement(
						ResultSet.TYPE_SCROLL_SENSITIVE,
						ResultSet.CONCUR_UPDATABLE);
				statement = connection.createStatement();
				Random randomValue = new Random();
				test1 = new String(request.getParameter("test"));
				System.out.println(test1);

				name = request.getParameter("name");
				System.out.println(name);

				System.out.println("======++++++++=======");

				System.out.println(RS);

				if (test1.equals("JAVA")) {
					System.out.println("this is from java");

					RS = statement.executeQuery("select * from javatest");
					System.out.println("============++++++++++++");

				} else {
					if (test1.equals("C++")) {
						RS = statement.executeQuery("select * from c1test");
					}
				}
		%>
		<table border=0 width=100% height=100% bgcolor="#af8080">
			<form name="test" method="post" action="testmark.jsp">
				<%
				for (j = 1; j <= 10; j++) {
					k = (Math.abs(randomValue.nextInt()) % 11) + 1;
					RS.absolute(k);
							System.out.println("------++++++++++++");
							System.out.println(RS.getString(2));
							System.out.println(j);
							

				%>

				<tr>

					<td bgcolor="#af8080" align="right" valign="top" width="5%" height="5%"><font size=3 color="#000000"><b><%=j%></b></font></td>
					<td bgcolor="#af8080" align="left" width="40%" height="10%"><b><fontze=2 face=verdana color="#000000"><%=RS.getString(2)%></b></font><br>
						<font size=2 face=verdana color="#ffffff"><input type="radio" name="a<%=j=1%>" value="a"><b>a.<%=RS.getString(3)%></b></input></font><br>
						<font size=2 face=verdana color="#ffffff"><input type="radio" name="a<%=j=2%>" value="b"><b>b.<%=RS.getString(4)%></b></input></font><br>
						<font size=2 face=verdana color="#ffffff"><input type="radio" name="a<%=j=3%>" value="c"><b>c.<%=RS.getString(5)%></b></input></font><br>
						<font size=2 face=verdana color="#ffffff"><input type="radio" name="a<%=j=4%>" value="d"><b>d.<%=RS.getString(6)%></b></input></font></td>
				</tr>

				<%
				System.out.println("---****---++++++++++++");
					ans[j] = RS.getString(7);
							System.out.println(ans[j]);
							System.out.println("********=========+++++++++++");

							//out.println("<br>" + ans[j]);
						}
						pageContext.setAttribute("Answers", ans);
						System.out.println("This is ans for checking ====");
						System.out.println(ans.toString());
						System.out.println("*****************");

						pageContext.setAttribute("Name", name);
						System.out.println("this is from java test over");
				%>

				<%
					}
					catch (Exception e) {
						out.println(e);
						System.out.println("ohohooooooooooooooooooooooooooohohooooooooooohhhhh"+e);
					}
				%>
			
		</table>
		<table border=0 width=100% height=20% bgcolor="#af8080">
			<tr>
				<td align="center"><input type="submit" name="submit"
					value="Submit"></input></font></td>
			</tr>
			<%
				try {
					RS.close();
					connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>

			</form>
			<tr>
				<td width="10%"></td>
			</tr>
			<tr>
				<td width=25% bgcolor="#ffffff" align="center" valign="bottom"
					height="10%" colspan="3"><img src="Images\Line.jpg"> <br>
					<font size=1 face="Verdana" color="Navy">Copyright ©
						2000-2005 Reserved by Vision Infotech <br>All rights
						Reserved. 
		</table>
		</font>
</body>
</html>