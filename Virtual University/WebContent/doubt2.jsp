<%@ page import="java.sql.*"%>
<html>
<head><title>Booking details</title></head>

<script language="JavaScript">
       function callme()
        {
          var name=document.insert.B_fname.value;
          if(name=="")
		{
            alert("Please enter your first name");    
alert("hhhhhhhh");
               return false;
                }

        var name1=document.insert.B_lname.value; 
          if(name=="") {
            alert("Please enter your last name");  
alert("fffffffff");
                 return false;
               }
            return true;
       }
</script>

<!--<script language="javaScript">
function validate(form)
{
	if(form.B_fname.value=="")
	{
		alert("Please enter your first name");
		form.name.focus();
		return 1;
	}
	else { if(form.B_lname.value=="")
		{
		alert("Please enter your last name");
		form.name.focus();
		return 1;
		}
	else { if(form.B_address.value=="")
		{
		alert("Please enter the your address");
		form.name.focus();
		return 1;
		}
	else { if(form.B_city.value=="")
		{
		alert("Please enter the name of the city");
		form.name.focus();
		return 1;
		}
	else { if(form.B_pincode.value=="")
		{
		alert("Please enter the pincode");
		form.name.focus();
		return 1;
		}
	else { if(form.B_email.value=="")
		{
		alert("Please enter your email-id");
		form.name.focus();
		return 1;
		}
	else { if(form.B_quali.value=="")
		{
		alert("Please enter your qualification");
		form.name.focus();
		return 1;
		}
	      }
	      }
	      }
	      }
	      }
	      }
	form.submit();
}
</script>-->

<body width=100% height=100% topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0 cellpadding=2 cellspacing=2><center>
<form name="insert" method="get" action="insertbook.jsp" onsubmit="callme()">
<table border=0 bgcolor=#2f2f4f  height=100% width=100%>
<tr><td colspan=2 align="center">
<table border=0 bgcolor=#FFFfff height=100% width=100%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>
<tr><td colspan="3" height=10 bgcolor="red"><a href="imp.html"><font size=1 face=verdana color="white"><b>Home</b></font></a></td></tr>
<tr><td colspan="3" height=10 bgcolor="black"></td></tr>
<%! Connection conn = null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
String sql,sql1,joining; int i=0; %>

<%
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
conn=DriverManager.getConnection("jdbc:odbc:project","scott","tiger");
  
%>
<tr>
	<td align="center" colspan="3"><table border=0 width=100% height=100% bgcolor="#70aadb" ><tr><td align="center"><table border=0 width=80% height=90% bgcolor="white">
	<tr><td align="center"  bgcolor="#2f2f6f" colspan=7 height="20%"><font face="Arial"  size="3" color="white"><b>Booking Form</b></td></tr>
	<tr><td colspan=4></td></tr>
	<tr><td align="Right" width="25%"><font face="Verdana"  size="2" color="Navy"><b>First Name</b></td><td align="Left" width="25%"><font face="Arial" size="2" color="Navy"><input type="text" name="B_fName" size=15></td><td align="Right" width="25%"><font face="Verdana"  size="2" color="Navy"><b>Last Name</b></font></td><td align="Left" width="25%"><input type="text" name="B_lName" size=15></td></tr>
	<tr><td colspan=4></td></tr>
	<tr><td align="right" colspan=2 width="50%"><font face="Verdana" size="2" color="Navy"><b>Date of Birth</b></font></td><td colspan=2><select name="B_dob">
	<option name="ONE">1</option>
	<option name="two">2</option>
	<option name="three">3</option>
	<option name="four">4</option>
	<option name="five">5</option>
	<option name="six">6</option>
	<option name="seven">7</option>
	<option name="eight">8</option>
	<option name="nine">9</option>
	<option name="ten">10</option>
	<option name="ele">11</option>
	<option name="twe">12</option>
	<option name="thi">13</option>
	<option name="fou">14</option>
	<option name="fif">15</option>
	<option name="sixt">16</option>
	<option name="seve">17</option>
	<option name="eigh">18</option>
	<option name="nin">19</option>
	<option name="twe">20</option>
	<option name="twone">21</option>
	<option name="twtw">22</option>
	<option name="twthr">23</option>
	<option name="twfor">24</option>
	<option name="twfiv">25</option>
	<option name="twsix">26</option>
	<option name="twsev">27</option>
	<option name="tweig">28</option>
	<option name="twnin">29</option>
	<option name="thrit">30</option>
	<option name="throne">31</option>	
	</select>
	<select name="B_dob">
	<option name="jan">January</option>
	<option name="feb">February</option>
	<option name="mar">March</option>
	<option name="apr">April</option>
	<option name="may">May</option>
	<option name="jun">June</option>
	<option name="jul">July</option>
	<option name="aug">August</option>
	<option name="sep">September</option>
	<option name="oct">October</option>
	<option name="nov">November</option>
	<option name="dec">December</option>
	</select>
	<input type="text" name="B_dob" size=7></input>
	</td></tr>
	<tr><td align="right" colspan=2 width="50%"><font face="Verdana" size="2" color="Navy"><b>Sex</b></font></td><td colspan=2><input type="radio" name="B_sex" value="Male">Male</input>&nbsp;&nbsp;<input type="radio" name="sex" value="Female">Female</input></td></tr>
	<tr><td align="right" colspan=2 width="50%"><font face="Verdana" size="2" color="Navy"><b>Address</b></font></td><td colspan=2><textarea name=B_address rows="5" columns="30"></textarea></td></tr>
	<tr><td align="right" width="25%"><font face="Verdana" size="2" color="Navy"><b>City</b></font></td><td align="left"><input type="text" name="B_city" size="15"></input></td>
	    <td align="right" width="25%"><font face="Verdana" size="2" color="Navy"><b>Pincode</b></font></td><td align="left"><input type="text" name="B_pincode" size="15"></td></tr>
	<tr><td align="right" width="25%" ><font face="Verdana" size="2" color="Navy"><b>Phone no</b></font></td><td  align="left"><input type="text" name="B_phno" size="15"></input></td>
	<td align="right" width="25%"><font face="Verdana" size="2" color="Navy"><b>Mobile no</b></font></td><td  align="left"><input type="text" name="B_mobile" size="15"></td></tr>
	<tr><td align="right" colspan=2 width="50%"><font face="Verdana" size="2" color="Navy"><b>E-mail</b></font></td><td colspan=2><input type="text" name="B_email" size=35></input></td></tr>
	<tr><td align="right" colspan=2 width="50%"><font face="Verdana" size="2" color="Navy"><b>Qualification</b></font></td><td colspan=2><input type="text" name="B_quali" size=25></input></td></tr>
	<tr><td align="right" width="25%"><font face="Verdana" size="2" color="Navy"><b>Joining</b></font></td><td align="left">

<select name="B_joining" >
<option name="course">select</option>
<option name="course">Course</option><option name="project">Project</option></td>
	<td align="Right" width="25%"><font face="Verdana"  size="2" color="Navy"><b>Code</b></font></td><td align="Left" width="25%"><input type="text" name="B_selcode" size=15></td>

	</tr>
<tr>
	<td align=center colspan=4><input type="submit" name="sub" value="Submit" onClick="validate(form)">&nbsp;&nbsp;
	<input type="reset" name="res" value="Reset"></td></tr>
</td></tr>
</table>
</tr>
<tr>
	</tr>


</table>
</table>
</body>
</html>