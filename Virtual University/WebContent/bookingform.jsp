<html>
<head><title>Booking details</title></head>

<script language="JavaScript">
function check()
{
	var fname=document.book.B_fname.value;
	if (fname=="")
	{
		alert("Please enter your First Name.");
		return false;
	}
	else
	{
		Str = fname.toString()
		for (var i = 0; i <Str.length; i++) 
		{
			var oneChar = Str.charAt(i)
			var twochar=Str.charCodeAt(i)
			if ((twochar < "65" || twochar > "90") && (twochar < "97" || twochar > "122"))
			 {
				alert("Please enter a valid First name.");
				return false;
			}
		}
	}
	var lname=document.book.B_lname.value;
	if (lname=="")
	{
		alert("Please enter your Last Name.");
		return false;
	}
	else
	{
		Str = lname.toString()
		for (var i = 0; i <Str.length; i++) 
		{
			var oneChar = Str.charAt(i)
			var twochar=Str.charCodeAt(i)
			if ((twochar < "65" || twochar > "90") && (twochar < "97" || twochar > "122"))
			 {
				alert("Please enter a valid Last name.");
				return false;
			}
		}
	}
	var yr=document.book.year.value;
	if (yr=="")
	{
		alert("Please enter your Date of Birth.")
		return false;
	}
	else
	{	
		var yearcheck=parseInt(document.book.year.value)
		if((isNaN(yearcheck)) || (yearcheck.length > 4))
		{
			alert("Please enter a valid year.")
			return false;
		}
	}
		
	var address=document.book.B_address.value;
	if (address=="")
	{
		alert("Please enter your address.");
		return false;
	}
	var city=document.book.B_city.value;
	if (city=="")
	{
		alert("Please enter your City.");
		return false;
	}
	else
	{
	
		Str = city.toString()
		for (var i = 0; i <Str.length; i++) 
		{
			var oneChar = Str.charAt(i)
			var twochar=Str.charCodeAt(i)
			if ((twochar < "65" || twochar > "90") && (twochar < "97" || twochar > "122"))
			 {
				alert("Please enter a valid city.");
				return false;
			}
		}
	}		
	var pin=document.book.B_pincode.value;
	if (pin=="")
	{
		alert("Please enter your Pincode.");
		return false;
	}
	else
	{
		var pincheck=parseInt(document.book.B_pincode.value);
		if(isNaN(pincheck))
		{
			alert("Please enter a valid pincode");
			return false;
		}
	}
	var phno=document.book.B_phno.value;
	if (phno=="")
	{
		alert("Please enter your Phone no.");
		return false;
	}
	else
	{
		var phonecheck=parseInt(document.book.B_phno.value);
		if(isNaN(phonecheck))
		{
			alert("Please enter a valid phone no");
			return false;
		}
	}
		
	var em=document.book.B_email.value;
                  var k=0; 
     	if (em=="")
	{
		alert("Please enter your email-id.");
		return false;
	}
	else
	{      
		var Str=em.toString();
		for(var i=0;i<Str.length-2;i++)
		{
			var oneChar=Str.charAt(i+1);
			
			if(oneChar == '@' )
			{
			     for(var j=i;j<Str.length-2;j++)
			     {
				var twoChar=Str.charAt(j+1);
				
				if(twoChar=='.')
				{	
                                                            	      k=1;			
	                                         	      break;      
				}
			     }
			break;
			}
                                     }               
		
                                   if(k!=1)
                   	{
		     alert("Please enter a valid email-id");
                                        return false;
		}
	}
	var qual=document.book.B_quali.value;	
	if (qual=="")
	{
		alert("Please enter your Qualification.");
		return false;
	}
	var join=document.book.B_joining.value;
	if (join=="")
	{
		alert("Please select for which you are going to join.");
		return false;
	}
	var code=document.book.B_selcode.value;
	if (code=="")
	{
		alert("Please enter the code.");
		return false;
	}
		
} 	
</script>

<body width=100% height=100% topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0 cellpadding=2 cellspacing=2><center>
<form method="POST" name="book" action="insertbook.jsp" onsubmit="return check()">
<table border=0 bgcolor=#2f2f4f  height=140% width=100%>
<tr><td colspan=2 align="center">
<table border=0 bgcolor=#FFFfff height=140% width=100%>
<tr><td width=25% height=10%><img src="Images\custcare.gif"></td><td width=60% align="Center">
<font size=6 face="Verdana" color="Navy"> VISION INFOTECH LTD</font>
</td><td width=15% align="center"><img src="Images\bestwith.gif"></td></tr>
<tr><td colspan="3" height=10 bgcolor="orange"></td></tr>
<tr><td colspan="3" height=10 bgcolor="red"><a href="imp.html"><font size=1 face=verdana color="white"><b>Home</b></font></a></td></tr>
<tr><td colspan="3" height=10 bgcolor="black"></td></tr>

<tr>
	<td align="center" colspan="3"><table border=0 width=100% height=100% bgcolor="#70aadb" ><tr><td height=4%></td></tr><tr><td align="center"><table border=2 width=80% height="5%" bgcolor="white">
	<tr><td align="center"  bgcolor="#2f2f6f" colspan=7 height="20%"><font face="Arial"  size="3" color="white"><b>Booking Form</b></td></tr>
</table>
<table border=0 width=80% height=5% bgcolor="white">
	<tr><td colspan=4></td></tr>
	<tr><td align="Right" width="25%"><font face="Verdana"  size="2" color="Navy"><b>First Name</b></td><td align="Left" width="25%"><font face="Arial" size="2" color="Navy">&nbsp;&nbsp;<input type="text" name="B_fname" size=15></td><td align="Right" width="25%"><font face="Verdana"  size="2" color="Navy"><b>Last Name</b></font></td><td align="Left" width="25%">&nbsp;&nbsp;<input type="text" name="B_lname" size=15></td></tr>
</table>
<table border=0 width=80% height=5% bgcolor="white">
	<tr><td width="28%"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date of Birth</b></font></td><td ><select name="date">
	<option name="one">1</option>
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
	<select name="month">
	<option name="jan" value="-JAN-">January</option>
	<option name="feb" value="-FEB-">February</option>
	<option name="mar" value="-MAR-">March</option>
	<option name="apr" value="-APR-">April</option>
	<option name="may" value="-MAY-">May</option>
	<option name="jun" value="-JUN-">June</option>
	<option name="jul" value="-JUL-">July</option>
	<option name="aug" value="-AUG-">August</option>
	<option name="sep" value="-SEP-">September</option>
	<option name="oct" value="-OCT-">October</option>
	<option name="nov" value="-NOV-">November</option>
	<option name="dec" value="-DEC-">December</option>
	</select>
	<input type="text" name="year" size=7 maxlength="4"></input>
	</td>
	</tr>

</table>
<table border=0 width=80% height=5% bgcolor="white">
	<tr><td  width="18%"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sex</b></font></td><td colspan=2><input type="radio" name="B_sex" value="M" checked>Male</input>&nbsp;&nbsp;<input type="radio" name="B_sex" value="F">Female</input></td></tr>
</table>

<table border=0 width=80% height=5% bgcolor="white">
<tr><td  width="20%"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address</b></font></td><td colspan=2><textarea rows="5" name="B_address" value="" columns="30"></textarea></td></tr>
</table>

<table border=0 width=80% height=5% bgcolor="white">
<tr><td  width="14%"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;City</b></font></td><td align="left"><input type="text" name="B_city" size="15"></input></td>
	    <td align="right" width="30%"><font face="Verdana" size="2" color="Navy"><b>Pincode</b></font></td><td align="left"><input type="text" name="B_pincode" size="15"></td></tr>
</table>

<table border=0 width=80% height=5% bgcolor="white">
<tr><td  width="24%" ><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phone no</b></font></td><td  align="left"><input type="text" name="B_phno" size="15"></input></td>
	<td align="right" width="26%"><font face="Verdana" size="2" color="Navy"><b>Mobile no</b></font></td><td  align="left"><input type="text" name="B_mobile" size="15"></td></tr>
</table>

<table border=0 width=80% height=5% bgcolor="white">
<tr><td  width="20%"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail</b></font></td><td colspan=2><input type="text" name="B_email" size=35></input></td></tr>
</table>

<table border=0 width=80% height=5% bgcolor="white">
	<tr><td  width="20%"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qualification</b></font></td><td colspan=2><input type="text" name="B_quali" size=25></input></td></tr>
</table>

<table border=0 width=80% height=5% bgcolor="white">
<tr><td  width="20%"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Joining</b></font></td><td align="left">

<select name="B_joining" >
<option name="select">select</option>
<option name="course" value="course">Course</option><option name="project" value="project">Project</option></td>
	<td align="Right" width="25%"><font face="Verdana"  size="2" color="Navy"><b>Code</b></font></td><td align="Left" width="25%"><input type="text" name="B_selcode" size=15 ></td>

	</tr>


<tr>
	<td align=center colspan=4><input type="submit" name="sub" value="Submit" >&nbsp;&nbsp;
	<input type=reset name=res value=Reset></td></tr>
</td></tr>
</table>

</html>