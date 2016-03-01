<%@ page import="java.sql.*"%>
<%
int i=0;
String cid= (String)session.getAttribute("cid");
  String bname=(String)session.getAttribute("bname");
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
   PreparedStatement st1=con.prepareStatement("select * from reject where cid=? and bname=? ");
	   st1.setString(1,cid);
	   st1.setString(2,bname);
ResultSet rs=st1.executeQuery();%>
<BODY BACKground="img13.jpeg">
<BR><BR><center><h2><font color="#ff8000">Rejected Transactions</font>
<BR><BR>
<table align=center cellpadding="0" border=1 width="50%" cellspacing="0" border=15>
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><font color="#ff80c0"><b> A/C Number </b></font></td>
	
			<td align=center ><font color="#ff80c0"><b>Account Type</b></font></td>
	<td align=center><font color="#ff80c0"><b>Name of Bank</b></font></td>
				</tr><%
while(rs.next())
{
	i++;
	%>
	<td align=center><font color="#ffff80"><b><%=rs.getString(2)%></b></font> </td>
	<td align=center><font color="#ffff80"><b><%=rs.getString(3)%></b></font> </td>
	<td align=center><font color="#ffff80"><b><%=rs.getString(4)%></b></font> </td> 

<%
		}

  %>
  </table>
  <center><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='treport.jsp'">
</body>