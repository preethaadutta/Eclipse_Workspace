package com.prog;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet1")
public class FirstServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		String name=req.getParameter("nm");
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		//1st we'll use normal means not Hidden form field technique to send data from servlet1 to servlet2
		//out.println("<form action='servlet2'><input type='text' name='user' value='"+name+"'><br><button type='submit'>Servlet2</button></form>");
		//now we'll use Hidden form field technique to send data from servlet1 to servlet2
		out.println("<form action='servlet2'><input type='hidden' name='user' value='"+name+"'><br><button type='submit'>Servlet2</button></form>");
	}
}
