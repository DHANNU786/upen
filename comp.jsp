<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY background="img13.jpeg">
  
<%
    try{
//String id=request.getParameter("id");
String id = (String)session.getAttribute("id");
int in=0;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
	 

Statement st=con.createStatement();
int i=st.executeUpdate("update customer set status=1 where id='"+id+"'");
}catch(Exception e){}
 %>
 <center><BR><BR><BR>	<h2><font color="#ff80ff">The Request for the Account is Granted</font></h2>
 <BR><BR>
 <input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
 
</BODY>
</HTML>
