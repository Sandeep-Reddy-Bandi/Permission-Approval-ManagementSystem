<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>manager module</title>
</head>
<body style="background-color:#009999;color:white">

<%

   if(session.getAttribute("username")==null)
   {
	   response.sendRedirect("Managerlogin.html");
   }
%>


      <h1  style="text-align:center">MANAGER MODULE</h1>
    <div style="background-color:red;color:white;font-size:30px"><br>Welcome ${username}<br><br></div>
  <br> <div align="right"> <img src="./showimage2.jsp"  width="120px" height="110px" alternate="emp.png"/>
   <form  action="Logout">
     <input  type="submit" value="Logout">
     </form></div>
     
     
     <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title></title>
</head>
<body>
<h2 align="center">permission letters from your employees</h2>
<%
try {

String connectionURL = "jdbc:oracle:thin:@localhost:1521:xe";

Connection connection = null;

Statement statement = null;

ResultSet rs = null;

Class.forName("oracle.jdbc.driver.OracleDriver");

connection = DriverManager.getConnection(connectionURL, "system", "sunny");

statement = connection.createStatement();

String QueryString = "SELECT * from emppermission";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" style="background-color:#cc3333;">
<tr><th>ID NO</th><th>LETTER</th><th>STATUS</th><th>YOUR RESPONSE</th>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<td><%=rs.getString(3) %></td>
<td><form action="update3.jsp">
<input type="text" value="<%=rs.getInt(1)%>" name="id" readonly>
<input type="radio" name="status" value="manager accepted"> Accept<br>
  <input type="radio" name="status" value="manager rejected"> Reject<br>
  <input type="submit" value="send response">
  
  </form></td>

</TR>
<% } %>
<%

rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to load letters......");
}
%>
</TABLE>
</font>
</body>
</html>
<br<br><br><br><br><br>

 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title></title>
</head>
<body>
<h2 align="center">permission letters from your Leaders</h2>
<%
try {

String connectionURL = "jdbc:oracle:thin:@localhost:1521:xe";

Connection connection = null;

Statement statement = null;

ResultSet rs = null;

Class.forName("oracle.jdbc.driver.OracleDriver");

connection = DriverManager.getConnection(connectionURL, "system", "sunny");

statement = connection.createStatement();

String QueryString = "SELECT * from leapermission";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15"  border="1" style="background-color:#cc3333;">
<tr><th>ID NO</th><th>LETTER</th><th>STATUS</th><th>YOUR RESPONSE</th>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<td><%=rs.getString(3) %></td>
<td>
<form action="update2.jsp">
<input type="text" value="<%=rs.getInt(1)%>" name="id" readonly><br>
<input type="radio" name="status" value="manager accepted"> Accept<br>
  <input type="radio" name="status" value="manager rejected"> Reject<br>
  <input type="submit" value="send response">
  
  </form></td>

</TR>
<% } %>
<%

rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to load letters......");
}
%>
</TABLE>
</font>
</body>
</html>
<br><br><br>

     <footer>
  <p  style="color:white;text-align:center">Managerr Module</p>
  <p  style="color:white;text-align:center">Contact information: <a href="Contact.html">contact@indiantech.in</a>.</p>
</footer>
     

 </body>
</html>