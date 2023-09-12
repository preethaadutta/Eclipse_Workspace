package com.user.servlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

import java.io.IOException;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		HttpSession session=req.getSession();
		
		UserDao dao=new UserDao(DBConnect.getConn());
		User user=dao.login(email, password);
		
		if(user!=null) //if it returns false means user is already available
		{
			session.setAttribute("userObj",user); //the user who'll login that object I've to pass so user
			resp.sendRedirect("index.jsp");
		}
		else //if (user!=null) returns true then invalid email & password
		{
			session.setAttribute("errorMsg","Invalid Email & Password");
			resp.sendRedirect("user_login.jsp");
		}
	}
	
}
