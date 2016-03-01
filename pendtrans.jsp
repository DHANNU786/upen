<%@ page import="java.sql.*"%>
<%
int i=0;String accno="";float bal=0;
String cid= (String)session.getAttribute("id");
System.out.println( "id=");System.out.println( cid);
  String bname=(String)session.getAttribute("bname");System.out.println(bname);
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
 PreparedStatement st1=con.prepareStatement("select * from customer where id=? and bname=? ");
	   st1.setString(1,cid);
	   st1.setString(2,bname);
ResultSet rs1=st1.executeQuery();%>
<body background="img13.jpeg">
<BR><BR>
<center><h2><font color="#ff0080">Pending Transactions</font><BR><BR>
<table align=center cellpadding="0" border=1 width="80%" cellspacing="0">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><b><font color="#80ff80"> A/C Number</font> </td>
	
			<td align=center ><b><font color="#80ff80">Account Type</font></b></td>
	<td align=center><b><font color="#80ff80">Name of Bank</font></td>
	<td align=center><b><font color="#80ff80">Amount</font></b></td>
	<td align=center><b><font color="#80ff80">Destination A/C Number</font></b></td><td align=center><b>Balance</td>
				</tr>
<%
while(rs1.next())
{accno=rs1.getString(4);
bal=rs1.getFloat(8);

System.out.println(accno);

   PreparedStatement st2=con.prepareStatement("select * from transfer where saccno=? and sbank=? ");
	   st2.setString(1,accno);
	   st2.setString(2,bname);
ResultSet rs=st2.executeQuery();%><%
while(rs.next())
{
	i++;
	%>
	<tr>
	<td align=center><font color="#ff8000"><%=rs.getString(2)%></font> </td>
	
	<td align=center><font color="#ff8000"><%=rs.getString(5)%></font> </td>
		<td align=center><font color="#ff8000"><%=rs.getString(8)%></font> </td>
		<td align=center><font color="#ff8000"><%=rs.getFloat(4)%></font> </td> 
<td align=center><font color="#ff8000"><%=rs.getString(9)%></font> </td>
			<td align=center><font color="#ff8000"><%=bal%></font> </td></tr>
<%
		}}
  %>
  </table>
  <center><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='treport.jsp'">
</body>