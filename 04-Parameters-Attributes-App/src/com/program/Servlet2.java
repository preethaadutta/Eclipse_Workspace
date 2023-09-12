package com.program;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet2")
public class Servlet2 extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		int fn=Integer.parseInt(req.getParameter("fn"));//converting string to int
		int sn=Integer.parseInt(req.getParameter("sn"));//converting string to int
		int sum=(int)req.getAttribute("s");//typecasting to integer means by default object type comes so converting to int
		int mul=fn*sn;
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		out.print("<h1>Sum: "+sum+", multiplication: "+mul+"</h1>");
	}
}
