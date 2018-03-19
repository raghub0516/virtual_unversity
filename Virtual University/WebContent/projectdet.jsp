<%@ page import="java.sql.*"%>

<html>
<head>
<Title>Project Details</title>
<style type="text/css">
<!--
#Layer1 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 1;
	left: 25px;
	top: 92px;
}

.style2 {
	font-family: "Relapse (BRK)"
}

.style3 {
	font-family: "Maiandra GD";
	color: #000000;
}
-->
</style>
</head>
<body bgcolor="white" width=100% height=100% cellpadding="0"
	cellspacing="0" topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0>

	<table border=0 width=100% height=100%>
		<tr>
			<td width=25% height=10%><h6 align="center">
					<img src="Images\custcare.gif" width="165" height="96">
				</h6>
			</td>
			<td width=60% align="Center" class="style2">
				<h6>
					<font size=7 color="Navy"> VISION INFOTECH LTD</font>
				</h6>
			</td>
			<td width=15% align="center"><h6>
					<img src="Images\bestwith.gif">
				</h6>
			</td>
		</tr>



		<tr>
			<td colspan="3" height=30 bgcolor="orange"><a href="imp.html"><font
					size=3 face="Maiandra GD" color="black"><b>Home</b> </font> </a>&nbsp;</td>
		</tr>


		<tr>
			<td colspan=3 align="center"><table border=0 height=100%
					width=100% bgcolor="#bcdeff">

					<tr>
						<td align=center><h5>
								<span class="style3"><font size=5><u>Project
											Information</u> </font> </span>
								<%!java.sql.Connection connection;
	java.sql.Statement statement;
	java.sql.ResultSet RS;%>

								<%
									try {
										Class.forName("com.mysql.jdbc.Driver");
										connection = DriverManager.getConnection(
												"jdbc:mysql://localhost:3306/virtualuniv", "root",
												"admin");
										statement = connection.createStatement();
										RS = statement.executeQuery("select * from project_details");
									} catch (Exception e) {
										out.println(e);
									}
								%>

							</h5>
					<tr>
						<td colspan=3 align="center" valign="top">
							<table BORDER=0 WIDTH="90%" bgcolor="black">
								<tr>
									<td><table BORDER=0 WIDTH="100%" bgcolor="white">
											<tr>
												<td bgcolor="#2f2f4f"><font size=2 face=verdana
													color="white"><b>Project Code</b>
												</td>
												<td bgcolor="#2f2f4f"><font size=2 face=verdana
													color="white"><b>Project Name</b>
												</td>
												<td bgcolor="#2f2f4f"><font size=2 face=verdana
													color="white"><b>Pre-requisity</b>
												</td>
												<td bgcolor="#2f2f4f"><font size=2 face=verdana
													color="white"><b>Duration</b>
												</td>
												<td bgcolor="#2f2f4f"><font size=2 face=verdana
													color="white"><b>Lump fee</b>
												</td>
												<td bgcolor="#2f2f4f"><font size=2 face=verdana
													color="white"><b>First installment</b>
												</td>
												<td bgcolor="#2f2f4f"><font size=2 face=verdana
													color="white"><b>Second installment</b>
												</td>
											</tr>

											<%
												try {
													while (RS.next()) {
											%>
											<tr>
												<td><font size=2 face=verdana color="black"><%=RS.getString(1)%>
												</td>
												<td><font size=2 face=verdana color="black"><%=RS.getString(2)%>
												</td>
												<td><font size=2 face=verdana color="black"><%=RS.getString(3)%>
												</td>
												<td><font size=2 face=verdana color="black"><%=RS.getString(4)%>
												</td>
												<td><font size=2 face=verdana color="black"><%=RS.getString(5)%>
												</td>
												<td><font size=2 face=verdana color="black"><%=RS.getString(6)%>
												</td>
												<td><font size=2 face=verdana color="black"><%=RS.getString(7)%>
												</td>
											</tr>

											<%
												}
												} catch (Exception e) {
													e.printStackTrace();
												}
											%>


											<%
												try {
													RS.close();
													connection.close();
												} catch (Exception e) {
													e.printStackTrace();
												}
											%>
										</table> </font>
</body>
</html>

