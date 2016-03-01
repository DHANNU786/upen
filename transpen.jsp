<%@page import="java.sql.*"%>
		<BODY background="img13.jpeg">
		<form><BR><BR><BR>
<CENTER>
<h2><font color="#ffffff"><U>List of Transfer Pendings</U></font></H2><BR><BR><BR><BR>
<table border=15 align=center cellpadding="0" border=1 width="90%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><font color="#ff8000"><b>Source A/C No</b></font></td>
		
			<td align=center ><font color="#ff8000"><b>Transfer To Bank</b></font></td>
	<td align=center><font color="#ff8000"><b>Name of Bank</b></font></td>
	<td align=center><font color="#ff8000"><b>Destination A/C No</b></font></td>
	<td align=center><font color="#ff8000"><b>Amount</b></font></td>
	<td align=center><font color="#ff8000"><b>Balance</b></font></td>
	<td align=center ><font color="#ff8000"><b>Transaction Password</b></font></td>
	<td align=center colspan=2><font color="#ff8000"><b>Transfer</b></font></td>
				</tr>
<%
	 String sacno="";
String rtpwd="";
String tpwd="";
 String acname="";
float bal=0;
int id=0;
 String atype="";
String bname=(String)session.getAttribute("bname");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
 PreparedStatement st=con.prepareStatement("select * from transfer where sbank='"+bname+"'");
ResultSet rs=st.executeQuery();
while(rs.next())
{
	id=rs.getInt(1);
	//out.println(id);
	String id1=String.valueOf(id);
	//out.println(id1);
	  sacno=rs.getString(2);
	  atype=rs.getString(5);
	    tpwd=rs.getString(7);
	   PreparedStatement st1=con.prepareStatement("select * from customer where bname=? and accno=? and atype=?");
	   st1.setString(1,bname);
	   st1.setString(2,sacno);
	   st1.setString(3,atype);
ResultSet rs1=st1.executeQuery();
while(rs1.next())
{
	rtpwd=rs1.getString(9);
    acname=rs1.getString(4);
	bal=rs1.getFloat(8);
}

	%>

<tr>
	<td align=center><font color="#ffffff"><%=sacno%></font></td>
	
	<%

String sbn=rs.getString(8);
String dbn=rs.getString(9);
if(sbn.equalsIgnoreCase(dbn))
	{
	%>
	<td align=center><font color="#ffffff"><b>Same</b></font></td>
		<td align=center ><font color="#ffffff"><%=bname%></font></td>
		<%}else
		{
		%>
<td align=center><font color="#ffffff"><b>Other</b></font></td>
		<td align=center disabled><font color="#ffffff"><%=dbn%></font> </td>
		<%
		}
		%>
		<td align=center><font color="#ffffff"><%=rs.getString(3)%></font> </td>
		<td align=center><font color="#ffffff"><%=rs.getFloat(4)%></font> </td> 
			<td align=center><font color="#ffffff"><%=bal%></font></td> 
			<td align=center><font color="#ffffff"><%=tpwd%></font></td> 
			<%
			boolean check=false;
			if(rtpwd.equals(tpwd))
				check=true;

			else
				check=false;
			%>

			<td align=center><font color="#ffffff"><a href="acc.jsp?ch=<%=check%>&&id=<%=id1%>"><font color="#ffffff">Accept</font></a></font> </td>
				<td align=center><font color="#ffffff"><a href="rej.jsp?id=<%=id1%>"><font color="#ffffff">Reject</font></a></font> </td></tr>
	<%
	 
}
%>
</table></form>
<br> <BR><BR>
 <center><input type="button" value="     back     " onclick="window.location='bmain.jsp'">  