<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.id.value==""){
alert("Please Enter Customer Id");
document.f.id.setFocus=true;
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
 if(!((document.f.pwd.value)==(document.f.pwd1.value)))
	{
	 alert("enter correct password");
	 return false;
	}
}
</script>
<BODY background="img13.jpeg">

<center>
<BR><BR>
 
 <font size="+2" color="#FF5C0F"><h2><b>Welcome To Multi Banking System</b></h2></font>
<br>
 



<form  method=post action="customerprocess.jsp" name="f" onSubmit='return call()'>
 <table border=15>
 <tr>
 <td><b><h3><font color="#ff80ff">Customer ID:</font></h3></b></td><td><input type="text" name="id" ></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><b><h3><font color="#ff80ff"> Password:</font></h3></b></td><td><input type="password" name="pwd"></td>
</tr><tr></tr><tr></tr>
<tr> 
<td><b><h3><font color="#ff80ff">Retype Password:</font></h3></b></td><td><input type="password" name="pwd1"></td>
</tr><tr></tr><tr></tr>

</table>
<br> <BR>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name=back  value="   BACK   " onClick="window.location='login.jsp'">
 </form>
<br>

</center>

</BODY>
</HTML>
