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
 
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
 String id1=request.getParameter("id");

 String bname=""; String cid=""; String accno=""; String pwd="";

  PreparedStatement st=con.prepareStatement("select * from customer where id=?");
	st.setString(1,id1);
	ResultSet rs=st.executeQuery();
	while(rs.next()){

cid=rs.getString(2);
pwd=rs.getString(9);
accno=rs.getString(4);
bname=rs.getString(7);

	}
 PreparedStatement st1=con.prepareStatement("insert into creject values(?,?,?,?)");
 st1.setString(1,cid);
  st1.setString(2,pwd);
   st1.setString(3,accno);
    st1.setString(4,bname);
int i=st1.executeUpdate();
System.out.println("=======================i==="+i);
  PreparedStatement st2=con.prepareStatement("delete from customer where id=? and bname=? and accno=? and tpwd=?");
 st2.setString(1,id1);
 st2.setString(2,bname);
 st2.setString(3,accno);
 st2.setString(4,pwd);
 
int j=st2.executeUpdate();
System.out.println("=======================cid is==="+cid);

System.out.println("=======================id1 is==="+id1);
System.out.println("=======================bname is==="+bname);
System.out.println("=======================account no is==="+accno);
System.out.println("=======================pwd is==="+pwd);




System.out.println("=======================j is==="+j);

if(j>0){	%>
	 <center><BR><BR><BR><h2><font color="#80ff80"> Customer ID <%=id1%> Account  is Rejected </font></h2>
	 <BR><BR>
<input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
 

 <%}%>
</BODY>
</HTML>
