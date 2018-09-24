package com.project.servlet1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SweetHomeDAOImpl;
import com.project.utility.ConnectionProvider;

public class FilterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<String> filterList=new ArrayList<>();
		String query="select * from data1 where(";
		System.out.println("In servlet Page");
		String[] resident_type=request.getParameterValues("resident_type");
		int min=Integer.parseInt(request.getParameter("minimum_price"));
		int max=Integer.parseInt(request.getParameter("maximum_price"));
		try {
			System.out.println("length= "+resident_type.length);
			query+="(";
			for(int i=0;i<resident_type.length;i++)
			{
				query=query+"ptype='"+resident_type[i]+"'";
				if(i<resident_type.length-1)
				{
					query+=" or ";
				}
			}
			query+=") and ";
			
		} catch (Exception e) {
			
		}
		query+="(price > "+min+" and price < "+max+")";
		
		String[] location=request.getParameterValues("location");
		try {
			System.out.println("length= "+location.length);
			query+="and (";
			for(int i=0;i<location.length;i++)
			{
				query=query+"location='"+location[i]+"'";
				if(i<location.length-1)
				{
					query+=" or ";
				}
			}
			query+=")";
		} catch (Exception e) {
			
		}
		
		query+=")";
		System.out.println("Query: "+query);
		
		SweetHomeDAOImpl obj=new SweetHomeDAOImpl();
		obj.setFilteredQuery(query);
		HttpSession session=request.getSession(true);
		session.setAttribute("query",query);
		response.sendRedirect("buyerDashboard.jsp");
		
	}

}
