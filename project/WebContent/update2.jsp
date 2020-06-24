<%@page import="java.sql.*,java.util.*"%>
<%

String status=request.getParameter("status");
int id=Integer.parseInt(request.getParameter("id"));

         Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sunny");
           Statement st=con.createStatement();
           st.executeUpdate("update  leapermission set status='"+status+"' where id="+id+"");
           con.close();
        	   response.sendRedirect("Manmodule.jsp");
        	  
           
            
                    
   
        %>