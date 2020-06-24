package com.project;

import java.io.IOException;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Usercheck1")
public class Usercheck1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException 
	{
	
	    String Username=request.getParameter("Username");
	    String Password=request.getParameter("Password");
	    
	  try { 
	    	Class.forName("oracle.jdbc.driver.OracleDriver");  
	    	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sunny");  
	    	PreparedStatement ps=con.prepareStatement("select * from Userdetails");
	    	

	       ResultSet rs= ps.executeQuery();    
	    
	    int flag=0;
	   while(rs.next()) 
	   {
	    if(Username.equals(rs.getString(1))&&Password.equals(rs.getString(2)))
	    {
	    
	        
	    flag=1;
	    	
	    	
	    }
	    
	   }
	  
	   rs.close();
	   stmt.close();
	   con.close();
	  }
	   catch(Exception e)
		  {
			  System.out.println(e);
		  }
			
	  PrintWriter out=res.getWriter();
	   if(flag!=0)
	    	
	    	out.println("Authorized user")
	          
	    	else
	    	
	    		 out.println("Unauthorized user")
	    	
	    	
	  
	  
		
		
	}

	
	
	}


