<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
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

	<%
		String id = request.getParameter("id");
		Connection con = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");

			PreparedStatement ps = con.prepareStatement("select image from data1 where propertyId=?");
			ps.setInt(1,Integer.parseInt(id));
			ResultSet rs = ps.executeQuery();
			Blob blob;
			OutputStream os =null;
			byte byteArray[] ;
			response.setContentType("image/gif");
			while (rs.next()) {
				blob = rs.getBlob("image");
				byteArray=blob.getBytes(1,(int) blob.length());
				os= response.getOutputStream();
				os.write(byteArray);
				os.flush();
				os.close();
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		} 
	%>
</body>
</html>