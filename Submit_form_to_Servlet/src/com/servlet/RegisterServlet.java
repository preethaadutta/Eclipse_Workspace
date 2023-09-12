package com.servlet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet
{
	/*as in the index.html form post method is written so we've to override doPost method and all the 
	informations that user has typed all those are available within req object and resp object helps to show
	dynamic responses.*/
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String name=req.getParameter("user_name");
		String email=req.getParameter("user_email");
		String password=req.getParameter("user_password");
		String course=req.getParameter("user_course");
		
		resp.setContentType("text/html");/*we want to generate response and display those in html page*/
		PrintWriter out=resp.getWriter();
		
		/*to show all the details to the user*/
		out.print("<h1>Name: "+name+"</h1>");
		out.print("<h1>Email: "+email+"</h1>");
		out.print("<h1>Password: "+password+"</h1>");
		out.print("<h1>Course: "+course+"</h1>");
	}
}
