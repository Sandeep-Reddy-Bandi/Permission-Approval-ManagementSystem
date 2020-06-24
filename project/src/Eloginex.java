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


@WebServlet("/Eloginex")
public class Eloginex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException 
	{
		int count=0;
	    String username=request.getParameter("Username");
	    String password=request.getParameter("Password");
	    
	  try { 
	    	Class.forName("oracle.jdbc.driver.OracleDriver");  
	    	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sunny");  
	    	Statement stmt=con.createStatement();
	    	

	       ResultSet rs= stmt.executeQuery("select * from Userdetails");    
	    
	    
	   while(rs.next()) 
	   {
	    if(username.equals(rs.getString("Username"))&&password.equals(rs.getString("Password")))
	    {
	    	
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
	    	
	    	System.out.println("sucess......");
	          
	    	else
	    	
	    		System.out.println("sorry.....");
	    	
	    	
	  
	  
		
		
	}

	
	
	}


