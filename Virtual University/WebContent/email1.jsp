<html>
<SCRIPT LANGUAGE="JavaScript">
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
				alert("Please enter a valid first name.");
				return false;
			}
		}
	}
	var em=document.book.email.value;
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
		
                                   if(k==1)
                   	    return true;
       	                 else
		{
		     alert("Please enter a valid email-id");
                                        return false;
		}
	}
	

}
</script>
<form method="post"   name="book" action="first1JSP.jsp"  onsubmit="return check()">
name<input type=text name="B_fname" onBlur="check()">
email<input type=text name="email">
<input type="submit" name="submit" value="Submit" >



