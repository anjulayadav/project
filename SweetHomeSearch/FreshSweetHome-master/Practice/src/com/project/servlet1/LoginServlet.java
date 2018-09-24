package com.project.servlet1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SweetHomeDAO;
import com.dao.SweetHomeDAOImpl;
import com.project.utility.ConnectionProvider;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in login servlet");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
	Connection con =ConnectionProvider.getConnection();
	SweetHomeDAO db = new SweetHomeDAOImpl();
	/*Cookie cookie = new Cookie("", "");
	cookie.setMaxAge(1000*60*60*24*7);
	response.addCookie(cookie);*/
	String usertype =db.validateUser(username, password);
	System.out.println(usertype);
	if(usertype==null)
	{
		response.sendRedirect("Login_v3/login.html");
	}
	else
	{
	if(usertype.equalsIgnoreCase("buyer"))
	{
		HttpSession session1= request.getSession();
		session1.setAttribute("username",username);

		response.sendRedirect("buyerDashboard.jsp");
		
		
	}
	else if(usertype.equalsIgnoreCase("seller"))
	{
		HttpSession session1= request.getSession();
		session1.setAttribute("username",username);
		response.sendRedirect("Seller.jsp");
	}
	}
	}

}
