package com.jsp.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Button extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		PrintWriter printWriter=res.getWriter();
		printWriter.write("<html><body><h1>"+"User "+email+" is Login Successfully"+"</h1></body></html>");
		
		
		
//		RequestDispatcher requestDispatcher=req.getRequestDispatcher("");
//		requestDispatcher.forward(req, res);
	}
	

}
