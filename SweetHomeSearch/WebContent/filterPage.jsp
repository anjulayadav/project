<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.project.utility.ConnectionProvider"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="java.sql.PreparedStatement"%>
     <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apply Filters</title>
</head>
<body>

<div style="position:fixed; left-padding: 400px;">
<form action="FilterServlet" method="post">
Type:<br><input type="checkbox" name="resident_type" value="Rent" >Rent a House</br>
		<input type="checkbox" name="resident_type" value="Home">Buy a House</br>
		<input type="checkbox" name="resident_type" value="Paying Guest">Paying Guest</br>
		<br>
Price:
Minimum
<select name="minimum_price">

<option value="1000" selected>1000</option>
<option value="5000">5000</option>
<option value="10000">10000</option>
<option value="20000">20000</option>
<option value="30000">30000</option>
</select>
Maximum
<select name="maximum_price">

<option value="1000">1000</option>
<option value="5000">5000</option>
<option value="10000">10000</option>
<option value="20000">20000</option>
<option value="30000" selected>30000</option>
</select>
<br>

<br>
Location:<br>
<%Connection con =ConnectionProvider.getConnection();
try 
{
	PreparedStatement ps =con.prepareStatement("select distinct location from Property");
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
		String loc=rs.getString("location");
		%>
		<input type="checkbox" name="location" value<%=loc %>><%out.println(loc); %><br>
		<% 
	}
}catch (Exception e) {
			out.print(""+e);
	}%>


<input type="submit" value="Apply Filter">
</form>
	</div>

</body>
</html>