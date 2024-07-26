package com.OnlineStoreManagementSystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/loginCedentials")
public class LoginCredentials extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("uname");
		String pass=request.getParameter("password");
		
		if(uname.equals("rajesh182016") && pass.equals("1820"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("uname", uname);
//			RequestDispatcher rd=request.getRequestDispatcher("hi.jsp");
//			rd.forward(request, response);
	        response.sendRedirect("home.jsp");
		}
		else
		{
			out.println("invalid credentials");
		}
	}

}
