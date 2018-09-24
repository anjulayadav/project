l<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 
    
        <b>View | <a href="imageupload.jsp">Upload</a></b><br/><br/>
        
		<%
		String id = request.getParameter("propertyId");
		Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");

		PreparedStatement ps = con.prepareStatement("select * from data1");
		ResultSet rs=ps.executeQuery();
		%>
		<table>
		<% 
		while(rs.next())
		{
			%>
			<tr><td><img src="getImage.jsp?id=<%=rs.getString("propertyId") %>" width="400px"/></td>
			<tr><td><p>Available as :<td><%=rs.getString("residence_type") %></p><tr>
			<td><p>Property is located at :<%=rs.getString("location") %></p>
			<td><p>City :<%=rs.getString("city") %></p>
			<td><p>Name of Seller :<%=rs.getString("username") %></p>
			<td><p>Price :<%=rs.getString("price") %></p>
			<td><p>Monthly Rent :<%=rs.getString("rent") %></p>
			<td><p>Deposit Amount :<%=rs.getString("deposit") %></p>
			<td><p>BHK Type :<%=rs.getString("bedroom_no") %></p>
			<td><p>Bathrooms :<%=rs.getString("bathroom_no") %></p>
			<td><p>Property Type :<%=rs.getString("furnishing") %></p>
			<td><p>Mode of Payment :<%=rs.getString("payment_mode") %></p>
			<td><p>Transport Facility :<%=rs.getString("transport_mode") %></p>
			<td><p>Other Facility :<%=rs.getString("extra_facility") %></p>
			</tr>
			<br>
		<% 
		}
		%>
		 </table>
</body>
</html>