/*
 here in this example we are setting and getting values of parameters(fn,sn) with the help of setAttribute 
& getAttribute
*/
package com.program;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
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
		//the value which is taken input from user that value when it is sent to servlet by default datatype 
		//of that value is string so converting string to int
		//fn and sn are parameters
		int fn=Integer.parseInt(req.getParameter("fn"));//converting string to int
		int sn=Integer.parseInt(req.getParameter("sn"));//converting string to int
		int sum=fn+sn;
		//Syntax: req.setAttribute("string name with which we'll get to servlet2", the value which we want to pass to servlet2);
		req.setAttribute("s", sum);
		//Syntax: RequestDispatcher rd=req.getRequestDispatcher("the url in which we want to get");
		RequestDispatcher rd=req.getRequestDispatcher("/servlet2");
		rd.forward(req, resp);
	}
	
}
