
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.project.beans.Property"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
<form method="get" action="SearchServlet1">
Range  Min<input type="number" name="min" value="min">
Max<input type="number" name="max" ><br>
Location <input type="text" name="location"><br>
<input type="submit" value="Search">
</form>
<%
HttpSession session=request.getSession(false);
if(session==null)
{
	System.out.println("session not created");
}
else{
	int i=0;
	List<Property> list=(ArrayList)session.getAttribute("propertyList");
	for(Property p:list)
	{
		%>
		<%=i++ %>)Property Details: <%=p %><br>
		<%
	}	
}
%>

</body>
</html>