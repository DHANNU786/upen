<%@page import="java.sql.*"%>
<html>
<head>
<script>
function call()
{
document.forms[0].action="listacc.jsp";
document.forms[0].submit();
}
</script>
		<BODY background="img13.jpeg">
		<BR><BR><BR>
<CENTER>
<form >
<h2><font color="#80ffff"><u>List of Accounts</u></font></H2><BR><BR><BR><BR>
<table align=center cellpadding=0 width="50%" border=15>
<colgroup   span=2 align=left >
<tr><td align=center>
	<font color="#ff80ff"><b>SELECT ACCOUNTS   : </b></font></td><td><SELECT NAME="la" onChange="call()">
	<option>Select a type</option>
	<option>Savings Account</option>
	<option>Current Account</option>
	<option>Others</option></SELECT></td></tr>

</table>
<br> </form><BR><BR>
  <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">  