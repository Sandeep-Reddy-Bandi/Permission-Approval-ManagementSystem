<%@page import="java.sql.*,java.util.*"%>
<%

String letter=request.getParameter("letter");
int id=Integer.parseInt(request.getParameter("id"));
String status="pending";
 
         Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sunny");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into leapermission(id,letter,status) values("+id+",'"+letter+"','"+status+"')");
        if(i>0)
        	 response.sendRedirect("success.html");
        else
        	 response.sendRedirect("failed.html");
        
        
        %>