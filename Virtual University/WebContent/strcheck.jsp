<html>
<SCRIPT LANGUAGE="JavaScript">
function check(form)
{
	var fname=document.book.name.value;
	if (fname=="")
	{
		alert("Please enter your First Name.");
		form.name.focus();
		return 1;
	}
	else
	{
	
		Str = fname.toString();
	
		for (var i = 0; i <Str.length; i++) 
		{
			var oneChar = Str.charAt(i);
			var twochar=Str.charCodeAt(i);
		
			if ((twochar < "65" || twochar > "90") && (twochar < "97" || twochar > "122"))
			 {
				alert("Please enter a valid name.");
				form.name.focus();
				return 1;
			}
		}
	}
	


}
function check1(form)
{
	var lname=document.book.lname.value;
	if (lname=="")
	{
		alert("Please enter your lsst Name.");
		form.name.focus();	
		return 1;
	}
	else
	{
	
		Str = lname.toString();
	
		for (var i = 0; i <Str.length; i++) 
		{
			var oneChar = Str.charAt(i);
			var twochar=Str.charCodeAt(i);
		
			if ((twochar < "65" || twochar > "90") && (twochar < "97" || twochar > "122"))
			 {
				alert("Please enter a val name.");
				form.name.focus();
				return 1;
			}
		}
	}
	


	

}

</script>
<form method="post" name="book" action="first1JSP.jsp" onsubmit="return false;">
<input type=text name="name" onBlur="check(form)">
<input type=text name="lname" onBlur="check1(form)">
<input type="submit" name="submit" value="Submit" >