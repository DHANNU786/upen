<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.bid.value=="null"){
alert("Please Enter Ur Name");
document.f.uname.setFocus=true;
}
if(document.f.pwd.value=="null"){
alert("Please Enter Ur Password");
return false;
}
if((document.f.bid.value=="null")||(document.f.pwd.value=="null"))
	{
alert("Please Enter Username& password");
document.f.uname.setFocus=true;
}
}
</script>
<BODY background="img13.jpeg">
<br><br>
<center>
<BR><BR>
 
 <b><h2><u><font color="#ff80ff">WELCOME TO E-TRANSACTION INTERFACE</font></u></h2></b>
<br>
 
<br><br>

<br>
<form  method=post action="bloginch.jsp" name="f" onSubmit='return call()'>
 <table width="40%" cellpadding="5" cellspacing="5" border=15>
 <colgroup span=2 >
 <tr>
 <td><b><font color="#ff80ff">Username:</font></b></td><td><input type="text" name="bid" ></td>
</tr>
 
<tr> 
<td><b><font color="#ff80ff"> Password:</font></b></td><td><input type="password" name="pwd"></td>
</tr>
<tr> 
<td><b><font color="#ff80ff"> Select Bank:</font></b></td><td><SELECT NAME="bl"><option>ICICI</option>
<option>UTI</option>
<option>HDFC</option>
<option>HSBC</option></SELECT></td>
</tr>
</table>
<br> <BR><BR>
 <input type="submit" value="   Login   "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="   reset   ">
     
 </form>
<br>

</center>

</BODY>
</HTML>
