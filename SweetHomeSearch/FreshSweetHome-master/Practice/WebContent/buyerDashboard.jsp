<%@page import="com.sun.net.httpserver.HttpsConfigurator"%>
<%@page import="com.dao.SweetHomeDAOImpl"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
function addToCart(var propertyid)
{
	alert("Hello");
	}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Buyer Dashboard</title>

<link href="propertyCardCss.css" rel="stylesheet" id="bootstrap-css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<!--
			CSS
			============================================= -->
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/jquery.DonutWidget.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main.css">
<style type="text/css">
hr {
	border: 10;
	width: 80%;
	color: #f00;
	background-color: #f00;
	height: 5px;
}
</style>
</head>
<body>

	<nav class="navbar sticky-top navbar-expand-lg navbar-light "
		style="background-color: #20265C;">
	<div class="container">
		<a class="navbar-brand" href="index.html"> <img
			src="img/icons8-home-40.png" alt="">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div
			class="collapse navbar-collapse justify-content-end align-items-center"
			id="navbarSupportedContent" style="color: white;">
			<ul class="navbar-nav">
				<li><a href="index.html"><font color="white">Home</font></a></li>
				<li><a href="guest.jsp"><font color="white">Guest</font></a></li>
				<li><a href="help.jsp"><font color="white">Help</font></a></li>
				<li><a href="contact.jsp"><font color="white">Contact</font></a></li>
				<li><a href="#team"><font color="white">Team</font></a></li>
				<li><img src="img/cart.png"></li>
				<li><a href="filterPage.jsp"><img src="img/filter.png"></a></li>
				<!-- Dropdown -->

			</ul>
		</div>
	</div>
	</nav>
	<br>

	<%
HttpSession session=request.getSession(false);
	if(session==null)
	{
		SweetHomeDAOImpl sdi = new SweetHomeDAOImpl();
		String query1 = sdi.getQuery();
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
		PreparedStatement ps = con.prepareStatement(query1);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
	%>
	<div class='container'>
		<div class='list-card ' style="box-shadow: 1px 10px 20px grey;">
			<div class='list-label'>NEW LAUNCH</div>
			<img alt='' src='getImage.jsp?id=<%=rs.getString("propertyId")%>'
				style="height: 217px">

			<div class='list-details'>
				<div class='list-name'><%=rs.getString("ptype")%></div>
				<button class='list-callback'
					onclick="addToCart(<%=rs.getInt("propertyid")%>)">Add to
					Cart</button>

				<div class='list-landmark'>Neptune Group</div>
				<div class='list-location'><%=rs.getString("location")%>,
					<%=rs.getString("city")%></div>
				<div class='list-rooms'><%=rs.getString("bedroom_no")%>, 3, 4
					BHK Apartments & Penthouse
				</div>
				<div class='list-price'><%=rs.getInt("price")%></div>
				<div class='list-bottom'>
					<div class='list-bottom-section'>
						<span>1200/sqft</span> <span>Avg Price/sq.ft.</span>
					</div>
					<div class='list-bottom-section'>
						<span>1200/sqft</span> <span>Carpet Area</span>
					</div>
					<div class='list-bottom-section'>
						<span>1200/sqft</span> <span>Carpet Area</span>
					</div>
				</div>
			</div>
		</div>
		<br></br>

	</div>
	</link>

	<%
		}
	}
	else
	{
		String query=(String)session.getAttribute("query");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
		PreparedStatement ps = con.prepareStatement(query);
		ResultSet rs = ps.executeQuery();	
		while (rs.next()) {
			%>
			<div class='container'>
				<div class='list-card ' style="box-shadow: 1px 10px 20px grey;">
					<div class='list-label'>NEW LAUNCH</div>
					<img alt='' src='getImage.jsp?id=<%=rs.getString("propertyId")%>'
						style="height: 217px">

					<div class='list-details'>
						<div class='list-name'><%=rs.getString("ptype")%></div>
						<button class='list-callback'
							onclick="addToCart(<%=rs.getInt("propertyid")%>)">Add to
							Cart</button>

						<div class='list-landmark'>Neptune Group</div>
						<div class='list-location'><%=rs.getString("location")%>,
							<%=rs.getString("city")%></div>
						<div class='list-rooms'><%=rs.getString("bedroom_no")%>, 3, 4
							BHK Apartments & Penthouse
						</div>
						<div class='list-price'><%=rs.getInt("price")%></div>
						<div class='list-bottom'>
							<div class='list-bottom-section'>
								<span>1200/sqft</span> <span>Avg Price/sq.ft.</span>
							</div>
							<div class='list-bottom-section'>
								<span>1200/sqft</span> <span>Carpet Area</span>
							</div>
							<div class='list-bottom-section'>
								<span>1200/sqft</span> <span>Carpet Area</span>
							</div>
						</div>
					</div>
				</div>
				<br></br>

			</div>
			</link>

			<%
				}
		}
	
	%>
</body>
</html>