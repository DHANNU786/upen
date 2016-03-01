<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.name.value==""){
alert("Please Enter Name");
document.f.name.setFocus=true;
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
}
</script>
<BODY background="img13.jpeg" >

<center>
<BR><BR>
 <table border=20   ><tr><td>
 <font size="+2" color="#FF5C0F"><h2><b>Welcome To Multi Banking System</b></h2></font>
<br>
 


<center>
<form  method=post action="admincheck.jsp" name="f" onSubmit='return call()'>
 <table background="img8.jpg">
 <tr>
 <td><font color="#0000ff"><b>User Name:</b></font></td>
 <td><font color="#0000ff"><input type="text" name="name" ></font></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><b><font color="#0000ff"> Password :</font></b></td>
<td><input type="password" name="pwd"></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td align="right"><input type="submit" value="Submit"></td>
<td><input type="reset" value="Reset"></td>
</tr>
</table>
<br> <BR>
 </form>
<br>
</center>
</td></tr></table>
</center>
</BODY>
</HTML>
