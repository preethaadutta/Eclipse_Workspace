/*Creating Servlet using Servlet interface:-*/
package com.servlets;

import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Program1 implements Servlet 
{
	//Life-cycle methods:-
	@Override
	public void init(ServletConfig arg0) throws ServletException
	{
		System.out.println("init() method is called");
	}
	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException
	{
		System.out.println("service() method is called");
		
		response.setContentType("text/html");
		
		//to show anything to the user
		PrintWriter out=response.getWriter();
		out.println("Welcome to Program1");
		out.println("Today's date and time "+new Date().toString());
		
	}
	@Override
	public void destroy()
	{
		System.out.println("destroy() method is called");
	}
	
	//Non-Life-cycle methods:-
	@Override
	public ServletConfig getServletConfig()
	{
		return null;
	}
	@Override
	public String getServletInfo()
	{
		return null;
	}

}
