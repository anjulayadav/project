package com.project.servlet1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.beans.Property;
import com.project.utility.ConnectionProvider;


public class SearchServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("In starting servlet page");
		
		ArrayList<Property> list=new ArrayList<Property>();
		PrintWriter out=response.getWriter();
		String min=request.getParameter("min");
		String max=request.getParameter("max");
		String location=request.getParameter("location");
		response.setContentType("text/html");
		Connection con =ConnectionProvider.getConnection();
		try {
			
		
			PreparedStatement ps =con.prepareStatement("select * from Property where price>=? and price<=? and location=?");
			
			ps.setString(1,min);
			ps.setString(2,max);
			ps.setString(3,location);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				int propertid=rs.getInt("propertyid");
				String username = rs.getString("username");
				String ptype = rs.getString("ptype");
				String city=rs.getString("city");
				String loc=rs.getString("location");
				int price=rs.getInt("price");
				int rent=rs.getInt("rent");
				int deposit=rs.getInt("deposit");
				int bedroomNo=rs.getInt("bedroom_no");
				int bathroomNo=rs.getInt("bathroom_no");
				String resType = rs.getString("residence_type");
				String furnish = rs.getString("furnishing");
				String payMode=rs.getString("payment_mode");
				String img=rs.getString("image");
				String transMode=rs.getString("transport_mode");
				String extraFacility=rs.getString("extra_facility");
				list.add(new Property(propertid,username,ptype,city,loc,price,rent,deposit,bedroomNo,bathroomNo,resType,furnish,payMode,img,transMode,extraFacility));
			}
			
			System.out.println("List in servlet: "+list);
			HttpSession session=request.getSession(true);
			session.setAttribute("propertyList", list);
			
			response.sendRedirect("search.jsp");
		}catch (Exception e) {
			out.print(""+e);
	}
		
	}

}
