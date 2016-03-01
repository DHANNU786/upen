<%@page import="java.sql.*"%>
<%
Class.forname("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
Statement st=con.createStatement();
System.out.println("bloginchk_Error")
int i=st.executeUpdate("insert into 