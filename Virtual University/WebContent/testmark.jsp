<%@ page import="java.sql.*"%>

<html>
<head>
<title>Calculate marks</title>
</head>
<body bgcolor="white" width=100% height=100% cellpadding="0"
	cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

	<table border=0 width=100% height=20%>
		<tr>
			<td width=25% height=131><div align="center">
					<img src="Images\custcare.gif" width="153" height="99">
				</div>
			</td>
			<td width=60% align="Center">
				<h6>
					<font size=7 face="Relapse (BRK)" color="Navy"> VISION
						INFOTECH LTD</font>
				</h6>
			</td>
			<td width=15% align="center"><img src="Images\bestwith.gif">
			</td>
		</tr>
		<tr>
			<td colspan="3" height=26 bgcolor="orange">&nbsp;<a
				href="imp.html"><font size=3 face="Maiandra GD" color="black"><b>Home</b>
			</a></font>
			</td>
		</tr>
	</table>
	<div align="justify">
		<table border=0 width="100%">
			<tr>
				<td width="100%" height="100%" colspan="5" bgcolor="#efefef">
					<p align="center">
						<font size=6 face="Maiandra GD" style="">TEST </font>
				</td>
			</tr>
		</table>


		<%!
		
		java.sql.Connection connection;
	java.sql.Statement statement, pstm1;
	PreparedStatement pstm;
	ResultSet rs = null;
	int score = 0, res = 0, j;
	int T_marks;
	String T_result;
	String T_code, query, query1, T_name;
	String CorrectAnswers[];
	String UsersAnswers[] = new String[50];%>
		<table border=0 width="100%" height="60%" bgcolor="#af8080">
			<%
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/virtualuniv", "root", "admin");
				statement = connection.createStatement();

				CorrectAnswers = (String []) application.getAttribute("Answers");
				System.out.println("..............................."+CorrectAnswers);
				T_name = (String) application.getAttribute("Name");

				score = 0;
				res = 0;
				for (j = 1; j <= 10; j++) {
					UsersAnswers[j] = request.getParameter("a" + j);

				}
				for (int j = 1; j <= 10; j++)

				{
					UsersAnswers[j] = UsersAnswers[j].trim();
					CorrectAnswers[j] = CorrectAnswers[j].trim();
					//out.println(UsersAnswers[j]+CorrectAnswers[j]);
					// out.println("<br>");

					if (CorrectAnswers[j].equals(UsersAnswers[j])) {
						score = score + 1;
					}

				}
				//out.println(score);
				res = score * 10;
				T_marks = res;

				if (res >= 50) {
			%>

			<tr>
				<td height="20%" width="5%"></td>
			</tr>
			<tr>
				<td bgcolor="#af8080" align="center" width="5%" height="5%"><font
					size=3 color="#000000"><b>You have got <%=res%>% </b> </font>
				</td>
			</tr>
			<tr>
				<td bgcolor="#af8080" align="center" width="5%" height="5%"><font
					size=3 color="#000000"><b>Pass</b> </font>
				</td>
			</tr>

			<%
				T_result = "pass";
				} else {
			%>
			<tr>
				<td bgcolor="#af8080" align="center" width="5%" height="25%"><font
					size=3 color="#000000"><b>You have got <%=res%>% </b> </font>
				</td>
			</tr>
			<tr>
				<td bgcolor="#af8080" align="center" width="5%" height="25%"><font
					size=3 color="#000000"><b>Fail</b> </font>
				</td>
			</tr>

			<%
				T_result = "fail";
				}

				query1 = "select max(T_code) from tests";
				statement = connection.createStatement();
				rs = statement.executeQuery(query1);
				int nxtval = 0;
				if (rs.next()) {
					nxtval = rs.getInt(1);
					nxtval++;
				}

				String query = "insert into tests values (?,?,?,?)";
				//String query = "insert into tests values (test1.nextval ,'"+T_name+"','"+T_marks+"','"+T_result+"')";
				pstm = connection.prepareStatement(query);
				
				pstm.setInt(1, nxtval);
				pstm.setString(2, T_name);
				pstm.setInt(3, T_marks);
				pstm.setString(4, T_result);
				int a = pstm.executeUpdate();
				System.out.println(query);
				//	rs.next();
			%>
			<tr>
				<td bgcolor="#af8080" align="center" width="5%" height="25%"><font
					size=3 color="#000000"><b>Your Test Code is <%=nxtval%></b>
				</font>
				</td>
			</tr>

		</table>
		</font>
</body>
</html>