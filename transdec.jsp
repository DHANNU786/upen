<%@page import="java.sql.*"%>
		<BODY background="img13.jpeg"><BR><BR><BR>
<CENTER>
<h2><font color="#ff8000"><U>List of Transfer Declines</U></font></H2>
<BR><BR>
<table align=center cellpadding=0 border=3 width="60%" border=15>
<colgroup span=4 align=center width="20%" bordercolor="#FFCCCC">
<tr>
	<td align=center><font color="#80ffff"><b>Customer Number</b></font></td>
		<td align=center><font color="#80ffff"><b>A/C Number</b></font></td>
			<td align=center><font color="#80ffff"><b>A/C Type</b></font></td>
				<td align=center><font color="#80ffff"><b>Bank Name</b></font></td>
				<td align=center><font color="#80ffff"><b>Operation</b></font></td>
				</tr>
<%
int count=0;
String bname=request.getParameter("bname");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reject");
while(rs.next())
{
	count++;
	String acc=rs.getString(2);
	%>

<tr>
	<td align=center><font color="#ffffff"><%=rs.getString(1)%></font></td>
		<td align=center><font color="#ffffff"><%=acc%></font></td>
		<td align=center><font color="#ffffff"><%=rs.getString(3)%></font></td>
		<td align=center><font color="#ffffff"><%=rs.getString(4)%></font></td><td align=center><a href="dec.jsp?accno=<%=acc%>">Delete</a></td></tr>
	<%
}
if(count==0)
response.sendRedirect("norec1.jsp");
%>
</table>
<br> <BR><BR>
 <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">
 </center></CENTER></BODY>  