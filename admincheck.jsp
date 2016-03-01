
<%@ page import="java.sql.*" %>
<%

String name=request.getParameter("name");
String pwd=(String)request.getParameter("pwd");
 	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
	int ind=0;
    
if((name.equals("admin"))&&(pwd.equals("admin"))){
 response.sendRedirect("adminhome.jsp");
}else{response.sendRedirect("adminfailure.jsp");}


	%>