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


@WebServlet("/Elogin")
public class Elogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException 
	{
		int count=0;
	    String username=request.getParameter("uname");
	    String password=request.getParameter("pass");
	    
	  try { 
	    	Class.forName("oracle.jdbc.driver.OracleDriver");  
	    	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sunny");  
	    	Statement stmt=con.createStatement();
	    	

	       ResultSet rs= stmt.executeQuery("select * from Employee");    
	    
	    
	   while(rs.next()) 
	   {
	    if(username.equals(rs.getString("username"))&&password.equals(rs.getString("password")))
	    {
	    	HttpSession session=request.getSession();
	    	session.setAttribute("username",username);
	    	
	        
	    	count++;
	    	
	    	
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
			
	   if(count!=0)
	    	
	    	response.sendRedirect("Empmodule.jsp");
	          
	    	else
	    	
	    		 response.sendRedirect("Employeelogin.html");
	    	
	    	
	  
	  
		
		
	}

	
	
	}


