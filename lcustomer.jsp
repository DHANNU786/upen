<%@page import="java.sql.*"%>
		<BODY background="img13.jpeg"><BR><BR><BR>
<CENTER>
<h2><font color="#80ffff"><u>List of Customers</u></font></H2><BR><BR><BR><BR>
<table align=center cellpadding=0 border=3 width="60%">
<colgroup span=4 align=center width="20%" bordercolor="#FFCCCC">
<tr>
	<td align=center><b><font color="#ff8000">A/C Number</font></b> </td>
		<td align=center><b><font color="#ff8000">A/C Name</font></b> </td>
			<td align=center><b><font color="#ff8000">Balance</font></b></td>
				<td align=center><b><font color="#ff8000">A/C Type</font></b></td>
				</tr>
<%
int count=0;
String bname=request.getParameter("bname");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs=st.executeQuery("select * from customer where bname='"+bname+"'");
while(rs.next())
{
	count++;
	%>

<tr>
	<td align=center><font color="#ffffff"><%=rs.getString(4)%></font> </td>
		<td align=center><font color="#ffffff"><%=rs.getString(6)%></font> </td>
		<td align=center><font color="#ffffff"><%=rs.getFloat(8)%></font> </td>
		<td align=center><font color="#ffffff"><%=rs.getString(5)%></font> </td></tr>
	
	<%
}
if(count==0)
response.sendRedirect("norec1.jsp");
%>
</table>
<br> <BR><BR>
 <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">  