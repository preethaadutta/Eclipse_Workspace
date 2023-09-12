package com.prog;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet1")
public class Servlet1 extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		String name=req.getParameter("nm");
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		out.print("<h1>Name: "+name+"</h1>");
		//URL Rewriting
		/*The data which we will pass to servlet2 that value will be ppassed by url mapping so in url 
		  we've got name variable so we'll pass name variable in url*/
		out.print("<a href='servlet2?username="+name+"'>Servlet2</a>");
		//by this we can pass the value of name variable dianamically
	}
}
