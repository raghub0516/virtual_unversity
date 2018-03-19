<html>
<head><title>Register details</title></head>

<script language="JavaScript">
function check()
{
	var fname=document.book.R_fname.value;
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
	var lname=document.book.R_lname.value;
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
	var tcode=document.book.R_Tcode.value;
	if (tcode=="")
	{
		alert("Please enter the Test code.");
		return false;
	}
	var yr=document.book.year.value;
	if (yr=="")
	{
		alert("Please enter your Date of Birth.")
		return false;
	}
	else
	{	
		if((isNaN(yr)) || (yr.length > 4))
		{
			alert("Please enter a valid year.")
			return false;
		}
	}
		
	var address=document.book.R_address.value;
	if (address=="")
	{
		alert("Please enter your address.");
		return false;
	}
	var city=document.book.R_city.value;
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
	var pin=document.book.R_pincode.value;
	if (pin=="")
	{
		alert("Please enter your Pincode.");
		return false;
	}
	else
	{
		if(isNaN(pin))
		{
			alert("Please enter a valid pincode");
			return false;
		}
	}
	var phno=document.book.R_phno.value;
	if (phno=="")
	{
		alert("Please enter your Phone no.");
		return false;
	}
	else
	{
		if(isNaN(phno))
		{
			alert("Please enter a valid phone no");
			return false;
		}
	}
		
	var em=document.book.R_email.value;
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
	var qual=document.book.R_quali.value;	
	if (qual=="")
	{
		alert("Please enter your Qualification.");
		return false;
	}
	var join=document.book.R_joining.value;
	if (join=="")
	{
		alert("Please select for which you are going to join.");
		return false;
	}
	var code=document.book.R_selcode.value;
	if (code=="")
	{
		alert("Please enter the code.");
		return false;
	}
	var pay=document.book.R_payment.value;
	if (pay=="")
	{
		alert("Please select by which you are going to pay the fees.");
		return false;
	}
	var payno=document.book.R_payno.value;
	if (payno=="")
	{
		alert("Please enter your account no.");
		return false;
	}
	var bank=document.book.R_bankname.value;
	if (bank=="")
	{
		alert("Please enter the Bank name.");
		return false;
	}
	
} 	
</script>

<body width=100% height=100% topmargin=0 bottomargin=0 leftmargin=0 rightmargin=0 cellpadding=2 cellspacing=2><center>
<form method="POST" name=book action="insertreg.jsp" onsubmit="return check()">
<table border=0 bgcolor=#2f2f4f  height=170% width=100%>
<tr><td colspan=2 align="center">
<table border=0 bgcolor=#FFFfff height=140% width=100%>
<tr><td width=25% height=8%><h6 align="center"><img src="Images\custcare.gif" width="155" height="91"></h6></td><td width=60% align="Center">
  <h6><font size=7 face="Relapse (BRK)" color="Navy"> VISION INFOTECH LTD</font>
  </h6></td><td width=15% align="center"><h6><img src="Images\bestwith.gif"></h6></td>
</tr>

<tr><td colspan="3" height=10 bgcolor="orange"><a href="imp.html"><font size=3 face="Maiandra GD" color="black"><b>Home</b></font></a></td></tr>

<tr>
	<td align="center" colspan="3"><table border=0 width=100% height=100% bgcolor="#bcdeff" ><tr><td height=2%></td></tr><tr><td align="center"><table border=0 width=80% height="3%" bgcolor="white">
	<tr><td align="center"  bgcolor="orange" colspan=7 height="23"><font face="Maiandra GD"  size="4" color="black"><b>Registration Form</b></td>
	</tr>
</table>
<table border=0 width=80% height=2% bgcolor="white">
	<tr><td colspan=4></td></tr>
	<tr><td align="left" width="25%"><font face="Verdana"  size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First Name</b></td>
	<td align="Left" width="25%"><input type="text" name="R_fname" size=15></td><td align="leftt" width="25%"><font face="Verdana"  size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Name</b></font></td><td align="Left" width="25%">&nbsp;&nbsp;<input type="text" name="R_lname" size=15></td></tr>
</table>

<table border=0 width=80% height=2% bgcolor="white">
<tr><td align="center"><font size=1 face=verdana color="blue">* Test code is compulsory and Booking code is optional.</font></td></tr>
</table>
<table border=0 width=80% height=2% bgcolor="white">

	<tr><td  width="25%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Test code</b></font></td>
	<td colspan=2><input type="text" name="R_Tcode" size=15></input></td>
<td align="left" width="24%"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Booking code</b></font></td>
<td width="25%"  align="left">&nbsp;
  <input type="text" name="R_Bcode" size="15"></td></tr></tr>
</table>
<table border=0 width=80% height=2% bgcolor="white">
	<tr><td width="25%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date of Birth</b></font></td>
	<td width="75%" > <select name="date">
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
<table border=0 width=80% height=2% bgcolor="white">
	<tr><td  width="19%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sex</b></font></td>
	<td width="81%" colspan=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="radio" name="R_sex" value="M" checked>Male</input>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="R_sex" value="F">Female</input></td></tr>
</table>

<table border=0 width=80% height=2% bgcolor="white">
<tr><td  width="20%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address</b></font></td><td colspan=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="5" name="R_address" value="" columns="30"></textarea></td></tr>
</table>

<table border=0 width=80% height=2% bgcolor="white">
<tr><td  width="14%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;City</b></font></td>
<td width="40%" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
  <input type="text" name="R_city" size="15"></input></td>
	    <td align="left" width="21%"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pincode</b></font></td>
	    <td width="25%" align="left"><input type="text" name="R_pincode" size="15"></td></tr>
</table>

<table border=0 width=80% height=2% bgcolor="white">
<tr><td  width="24%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phone no</b></font></td>
<td width="25%"  align="left"></input>
  <input type="text" name="R_phno" size="15"></td>
	<td align="left" width="26%"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile no</b></font></td><td width="25%"  align="left"><input type="text" name="R_mobile" size="15"></td></tr>
</table>

<table border=0 width=80% height=2% bgcolor="white">
<tr><td  width="20%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail</b></font></td>
<td colspan=2>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
  <input type="text" name="R_email" size=35></input></td></tr>
</table>

<table border=0 width=80% height=2% bgcolor="white">
	<tr><td  width="20%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qualification</b></font></td>
	<td colspan=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
	  <input type="text" name="R_quali" size=25></input></td></tr>
</table>

<table border=0 width=80% height=2% bgcolor="white">
<tr><td  width="20%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Joining</b></font></td><td align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="R_joining" >
<option name="select">select</option>
<option name="course" value="course">Course</option><option name="project" value="project">Project</option></td>
	<td align="left" width="30%"><font face="Verdana"  size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Code</b></font></td><td align="Left" width="30%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="R_selcode" size=15 ></td></tr>
</table>
<table border=0 width=80% height=2% bgcolor="white">
	<tr><td  width="18%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Installment</b></font></td>
	<td colspan=2align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
	  <input type="radio" name="R_install" value="yes"checked>Yes</input>&nbsp;&nbsp;&nbsp;<input type="radio" name="R_install" value="no">No</input></td></tr>
</table>

<table border=2 width=80% height=2% bgcolor="white">
<tr><td  width="28%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mode of Payment</b></font></td><td align="left">
<select name="R_payment" >
<option name="select">select</option>
<option name="cheque" value="cheque">Cheque</option>
<option name="draft" value="draft">Draft</option></td></tr>
</table>

<table border=0 width=80% height=2% bgcolor="white">
	<tr><td  width="28%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DD/Cheque No/Card No</b></font></td>
	<td width="72%" colspan=2 align="left"><input type="text" name="R_payno" size=25></input></td></tr>
</table>

<table border=0 width=80% height=2% bgcolor="white">

	<tr><td  width="28%" align="left"><font face="Verdana" size="2" color="Navy"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bank Name</b></font></td><td colspan=2><input type="text" name="R_bankname" size=25></input></td></tr>
<tr>
	<td align=center colspan=4><input type="submit" name="sub" value="Submit" >&nbsp;&nbsp;
	<input type=reset name=res value=Reset></td></tr>
</td></tr>

</table>

</html>