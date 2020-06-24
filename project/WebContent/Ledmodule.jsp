<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#009999;color:white">
<%

   if(session.getAttribute("username")==null)
   {
	   response.sendRedirect("Leaderlogin.html");
   }

%>
    <h1 style="text-align:center">LEADER MODULE</h1>
    <div style="background-color:red;color:white;font-size:30px"><br>Welcome ${username}<br><br></div>
   <br><div align="right"> <img src="./showimage3.jsp"  width="120px" height="110px" alternate="emp.png"/>
   <form  action="Logout">
     <input  type="submit" value="Logout">
     </form></div>
     
     
     
    
            <form style="background-color:#cccc99;color:black"  align="center"  method="post" action="uploadfile2.jsp">
               <h1  >permission Letter</h1><br><br><br>
              <div >Enter your ID ${username}!!!:</div>
              <input style="background-color:#cccccc" type="number" name="id" requried>
              <br><br><br>
               <textarea style="background-color:#cccccc" rows="50" cols="100" name="letter" requried>Enter letter for permission here.....</textarea>
      <br><br><div ><br><br><input type="submit" value="send permission letter"><br><br></div>
           
 </form>


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
<TABLE cellpadding="15" border="1" style="background-color:#FF6633;">
<tr><th>ID NO</th><th>LETTER</th><th>STATUS</th><th>YOUR RESPONSE</th>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<td><%=rs.getString(3) %></td>
<td><form action="update.jsp">
<input type="text" value="<%=rs.getInt(1)%>" name="id" readonly>
<input type="radio" name="status" value="leader accepted"> Accept<br>
  <input type="radio" name="status" value="leader rejected"> Reject<br>
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
<br>
<br>
 <center style="background-color:red;color:white">  <br><br><h2>WANT TO SEE PREVIOUS PERMISSIONS SENT BY YOU!!!!</h2>
            <form action="leapreviousper.jsp">
            Enter Your ID  ${username}!!!:
            <input type="number" name="id">
            <input class="submit-button" type="submit" value="show"></form>
            <br>
            <br>
            </center>
            <br>
            <br>
            <br>
            
 <footer>
  <p  style="color:white;text-align:center">Leader Module</p>
  <p  style="color:white;text-align:center">Contact information: <a href="Contact.html">contact@indiantech.in</a>.</p>
</footer>

 </body>

