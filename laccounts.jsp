<%@page import="java.sql.*"%>
		<BODY background="img13.jpeg"><BR><BR><BR>
<CENTER>
<h2><font color="#80ffff"><u>List of Accounts</u></font></H2><BR><BR><BR><BR>
<table align=center cellpadding=0 >
<colgroup span=4 align=center width="20%">
<tr>
	<td align=center><b><font color="#ff80ff">A/C Number</font></b> </td>
		<td align=center><b><font color="#ff80ff">A/C Name</font></b> </td>
			<td align=center><b><font color="#ff80ff">Balance</font></b></td>
				<td align=center><b><font color="#ff80ff">A/C Type</font></td>
				</tr>
<%
String bname=(String)session.getAttribute("bname");
System.out.println("bank name  "+bname);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where bname='"+bname+"'");
while(rs.next())
{   
	%>

<tr>
	<td align=center><font color="#ff8000"><%=rs.getString(4)%></font> </td>
		<td align=center><font color="#ff8000"><%=rs.getString(6)%></font> </td>
		<td align=center><font color="#ff8000"><%=rs.getFloat(8)%></font> </td>
		<td align=center><font color="#ff8000"><%=rs.getString(5)%></font> </td></tr>
	<%
}
%>
</table>
<br> <BR><BR>
 <center><input type="submit" value="     OK     ">  