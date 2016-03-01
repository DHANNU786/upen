<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY background="img13.jpeg"><center><BR><BR><BR><BR><h2><u><font  color="#00ff40" >List Of Pending Accounts</font></u></h2><BR><BR><BR> 
 <table align=center cellpadding="0" border=1 width="60%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><font  color="#00ff40" ><b>A/C Number</b></font> </td>
		<td align=center><font  color="#00ff40" ><b> A/C Name</b></font> </td>
			<td align=center ><font  color="#00ff40" ><b>Customer ID</b></font></td>
	<td align=center><font  color="#00ff40" ><b>Name of Bank</b></font></td> <td align=center><font  color="#00ff40" ><b>Amount</b></font></td>  <td align=center colspan=2><font  color="#00ff40" ><b>operation</b></font></td> 
				</tr>
<%
 
String bn=request.getParameter("bname");
 String id="";
int in=0;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where status=0");
while(rs.next())
{  id=rs.getString(1);
	 %>
<tr>
	<td align=center><font  color="#ffffff" ><%=rs.getString(4)%><font  color="#ffffff" > </td>
	<td align=center><font  color="#ffffff" ><%=rs.getString(5)%></font> </td>
	 
		<td align=center><font  color="#ffffff" ><%=id%></font> </td>
				<td align=center><font  color="#ffffff" ><%=rs.getString(7)%></font> </td>
		<td align=center><font  color="#ffffff" ><%=rs.getFloat(8)%></font> </td>
		<td align=center><font  color="#ffffff" ><a href="comp.jsp?id=<%=id%>"><font  color="#ffffff" >Grant</font></a></font> </td> 
		<td align=center><font  color="#ffffff" ><a href="pend.jsp?id=<%=id%>"><font  color="#ffffff" >Reject</font></a></font> </td> 
		</tr>
		<%
			in++;
}
if(in==0)
response.sendRedirect("norec1.jsp");
session.setAttribute("id",id);
%>
</table><BR><BR>
 <center><input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
</BODY>
</HTML>
