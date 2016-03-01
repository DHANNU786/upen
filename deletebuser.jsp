<%@ page import ="java.sql.*" %>
<%
   
   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
   int id=Integer.parseInt(request.getParameter("id"));
PreparedStatement ps=con.prepareStatement("delete from blogin where id=?");
    System.out.println("hi");
	ps.setInt(1,id);

	ps.executeUpdate();
response.sendRedirect("deletebsuccess.jsp");
%>
