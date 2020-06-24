<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title >EMPLOYEE MODULE</title>
</head>
<body style="background-color:#009999;color:white">
<%

   if(session.getAttribute("username")==null)
   {
	   response.sendRedirect("Employeelogin.html");
   }

%>


     <h1 style="text-align:center">EMPLOYEE MODULE</h1>
    <div style="background-color:red;color:white;font-size:30px"><br>Welcome ${username}<br><br></div>
   <br><div align="right"> <img src="./showimage.jsp"  width="120px" height="110px" alternate="emp.png"/>
   <form  action="Logout">
     <input   type="submit" value="Logout">
     </form></div>
     
     
     
    
            <form style="background-color:#cccc99;color:black"  align="center" method="post" action="uploadfile.jsp">
               <h1 >permission Letter</h1><br><br><br>
              <div >Enter your ID ${username}!!!:</div>
              <input style="background-color:#cccccc" type="number" name="id" requried>
              <br><br><br>
               <textarea style="background-color:#cccccc" rows="50" cols="100" name="letter" requried>Enter letter for permission here.....</textarea>
      <br><br><div ><br><br><input type="submit" value="send permission letter"></div>
           <br><br><br> </form>
            
            
          <center style="background-color:red;color:white">  <br><br><h2>WANT TO SEE PREVIOUS PERMISSIONS SENT BY YOU!!!!</h2>
            <form action="emppreviousper.jsp">
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
  <p  style="color:white;text-align:center">Employee Module</p>
  <p  style="color:white;text-align:center">Contact information: <a href="Contact.html">contact@indiantech.in</a>.</p>
</footer>
</body>

</html>

