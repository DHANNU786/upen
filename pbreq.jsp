 <%@ page import="java.sql.*"%>
 <BODY background="img13.jpeg"><BR><BR><BR>
 <center>
 <h2><u><center><font size="+2" color="#DF4800">  New User Requests </font></u></h2>
  <table width="60%" border="1" align="center">
<tr align="center">

<td><b><font size="4" color="#DF4800">User Name</font></b></td>
<td><b><font size="4" color="#DF4800">Password</font></b></td>
<td><b><font size="4" color="#DF4800">Bank Name</font></b></td> 
 <td colspan="2"><b><font size="4" color="#DF4800">Operations</font></b></td> 


</tr><%    
int s=0;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	  Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
	   PreparedStatement st=con.prepareStatement("select * from blogin where status=?");
	st.setInt(1,s);
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>
<tr align="center">

	<% 
 int id=rs.getInt(1);
%>
<td><font size="3" color="#DF4800"><%=rs.getString(2)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(3)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(4)%></font></td>
<td><a href="acceptbuser.jsp?id=<%=id%>"><font size="3" color="#DF4800">Accept</font></a></td>
<td><a href="deletebuser.jsp?id=<%=id%>"><font size="3" color="#DF4800">Decline</font></a></td>
</tr> 
<BR><BR><%}%>
<center></table><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='adminhome.jsp'">
 
</center></BODY>
