<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title></title>
</head>
<body  style="background-color:gray">
<h2 align="center">permissions you sended previously</h2>
<%
int id=Integer.parseInt(request.getParameter("id"));

try {

String connectionURL = "jdbc:oracle:thin:@localhost:1521:xe";

Connection connection = null;

Statement statement = null;

ResultSet rs = null;

Class.forName("oracle.jdbc.driver.OracleDriver");

connection = DriverManager.getConnection(connectionURL, "system", "sunny");

statement = connection.createStatement();

String QueryString = "SELECT * from leapermission where id="+id+"";
rs = statement.executeQuery(QueryString);
%>
<center>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<td><%=rs.getString(3) %></td>


</TR>
<% } %>
</center>
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
