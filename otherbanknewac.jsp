<%@ page import="java.sql.*" %>
<HTML>
<HEAD>
<TITLE></TITLE>
 

 <script>
 function check(){
 if(document.f1.accno.value==""){
 alert("enter  account number");
 return false;
 }

 if(document.f1.name.value==""){
 alert("enter account holder name");
 return false;
 }

 if(document.f1.password.value==""){
	
 alert("enter password");
 return false;
 }
 if(!((document.f1.password.value)==(document.f1.password1.value)))
	{
	 alert("enter correct password");
	 return false;
	}

if(document.f1.tpassword.value==""){
	
 alert("enter  transaction password");
 return false;
 }
 if(!((document.f1.tpassword.value)==(document.f1tpassword1.value)))
	{
	 alert("enter correct transaction password");
	 return false;
	}

 }

</script>
</HEAD>
<BODY background="img13.jpeg" ><BR>
 <form action="insotheraccount.jsp" name="f1" method=get onsubmit='return check()'>
 <h2><font color="#ff80ff"><b>Enter Account Details</b></font></h2><B></B><table align="center" border=15>
 <tr><td><h3><font color="#80ff80">Select Bank</td><td><SELECT NAME="bname"> 
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	  Connection con=DriverManager.getConnection("jdbc:odbc:eti","eti","eti");
	   PreparedStatement st=con.prepareStatement("select * from bank ");
	
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>


                  <option  ><%=rs.getString(2)%></option>
				  
<%}%>
  </SELECT></td></tr><tr></tr><tr></tr><tr></tr>
<tr><td>
<h3><font color="#80ff80">Enter Account Number</font></h3>   </td><td>   <input type="text" name="accno"></td></tr><tr></tr><tr></tr>
<tr><td><h3><font color="#80ff80">Enter Account Holder Name </font></h3></td><td> <input type="text" name="name"></td></tr><tr></tr>
<tr><td>
<h3><font color="#80ff80"> Customer ID </font> </td><td> <input type="text" name="cid"></td></tr><tr></tr><tr></tr>
<tr><td>

<h3><font color="#80ff80">Password</font>	 </td><td>      	     <input type="password" name="password"></td></tr><tr></tr><tr></tr>
<tr><td><h3><font color="#80ff80">Confirm Password</font></h3></td>  <td><input type="password" name="password1"></td></tr><br><tr></tr><tr></tr>
<tr><td><h3><font color="#80ff80">Account Type</font></h3></td><td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr><tr><td>
  <h3><font color="#80ff80">Enter Transaction Password</font></h3></td><td>      	     <input type="password" name="tpassword"></td></tr><tr></tr><tr></tr>
<tr><td><h3><font color="#80ff80">Confirm Password</font></h3></td>  <td><input type="password" name="tpassword1"></td></tr><br><tr></tr><tr></tr>

     </table>
 <BR>
 <center>
<input type=submit value =Submit>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="   back   " onClick="window.location='user.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >
</center>
   </form>
  </body>

  </html>

