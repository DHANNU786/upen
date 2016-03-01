<%@page import="java.sql.*"%>
<head><script>
function call()
{
	alert("fjhsfjhsdf");
}
		</script>
		<BODY background="img13.jpeg">
		<form><BR><BR><BR>
<CENTER>
<h2><font color="#ff80c0"><U>List of Transfer Pendings</U></font></H2>
<BR><BR><BR><BR>
<table align=center cellpadding="0" border=1 width="90%" cellspacing="0" border=15>
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><font color="#ff8000"><b>Source A/C Number </b></font></td>
		<td align=center><font color="#ff8000"><b> A/C Name</b></font> </td>
			<td align=center ><font color="#ff8000"><b>Transfer To Bank</b></font></td>
	<td align=center><font color="#ff8000"><b>Name of Bank</b></font></td>
	<td align=center><font color="#ff8000"><b>Destination A/C No</b></font></td>
	<td align=center><font color="#ff8000"><b>Amount</b></font></td>
	<td align=center><font color="#ff8000"><b>Balance</b></font></td>
	<td align=center ><font color="#ff8000"><b>Transaction Password</b></font></td>
	<td align=center colspan=2><b>Trasfer</td>
				</tr>
<%
	 String sacno="";
String rtpwd="";
String tpwd="";
 String acname="";
float bal=0;
 
String bname=request.getParameter("bname");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
 PreparedStatement Ps=con.prepareStatement("select * from tranfer where sbank=?");
Ps.setString(1,bname);
ResultSet rs=Ps.executeQuery();

while(rs.next())
{
	int id=rs.getInt(1);
	  sacno=rs.getString(2);
}
 PreparedStatement st1=con.prepareStatement("select * from customer where accno=?'");
	  st1.setString(1,sacno);
ResultSet rs1=st1.executeQuery();
while(rs1.next())
	{
	rtpwd=rs1.getString(9);
    acname=rs1.getString(6);
	bal=rs1.getFloat(8);
	}
PreparedStatement st=con.prepareStatement("select * from tranfer where sbank=?");
st.setString(1,bname);
ResultSet rs2 = st.executeQuery();

while(rs2.next())
{
	int id=rs2.getInt(1);
	  sacno=rs2.getString(2);
	  tpwd=rs2.getString(7);
	 
	 
	%>

<tr>
	<td align=center><font color="#ffffff"><%=sacno%></font></td>
	<td align=center><font color="#ffffff"><%=acname%></font></td>
	<%

String sbn=rs.getString(8);
String dbn=rs.getString(9);
if(sbn.equalsIgnoreCase(dbn))
	{
	%>
	<td align=center><b><font color="#ff8000">Same</font></td>
		<td align=center disabled>  </td>
		<%}else
		{
		%>
<td align=center><b><font color="#ff8000">Other</font></td>
		<td align=center disabled><font color="#ffffff"><%=dbn%></font>  </td>
		<%
		}
		%>
		<td align=center><font color="#ffffff"><%=rs2.getString(3)%></font> </td>
		<td align=center><font color="#ffffff"><%=rs2.getFloat(4)%></font> </td> 
			<td align=center><font color="#ffffff"><%=bal%></font></td> 
			<td align=center><font color="#ffffff"><%=tpwd%></font></td> 
			<td align=center><a href="acc.jsp"><font color="#ff8000">Accept</font></a> </td>
				<td align=center><a href="rej.jsp"><font color="#ff8000">Reject</font></a> </td></tr>
	<%
	 
}
%>
</table></form>
<br> <BR><BR>
 <center><input type="submit" value="     OK     ">  