<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
<!-- Author Meta -->
<meta name="author" content="CodePixar">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
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
<title>Insert title here</title>
<style>
.default-header1 {
 
  width: 100% !important;
  box-shadow: -21.213px 21.213px 30px 0px rgba(158, 158, 158, 0.3);
}

#sellerform
{
width: 100%;
height: 100%;
background-image: url('img/bg5.jpg');
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Start Header Area -->
	<header class="default-header1">
	 <nav class="navbar navbar-expand-lg navbar-light">
	<div class="container">
		<a class="navbar-brand" href="index.html"> <img src="img/logo.jpg" >
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div
			class="collapse navbar-collapse justify-content-end align-items-center"
			id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li><a href="index.html">Home</a></li>
								<li><a href="guest.jsp">Guest</a></li>
								<li><a href="help.jsp">Help</a></li>
								<li><a href="contact.jsp">Contact</a></li>
								<li><a href="#team">team</a></li>
				<!-- Dropdown -->

			</ul>
		</div>
	</div>
	</nav> </header>
	<!-- End Header Area -->
	 <section>
    <div id="sellerform">
    <div  style="position: relative; left: 850px;">
	<form action="UploadImage" method="post" enctype="multipart/form-data" >

<br>
<br>

	<h2 style="color:Tomato;">Post Your Enquiry Here </h2><br>
	<br>
<br>
		<table name="Property Details" style="color:Tomato;">
			<tr>
				<td style="color:Tomato;">Property Id</td>
				<td><input type="text" name="propertyId" required="required"
					placeholder="Property Id" /></td>
			</tr>
			<tr>
				<td>Your Name</td>
				<td><input type="text" name="name" required="required"
					 /></td>
			</tr>
			<tr>
				<td>Property Type </td>
				<td><input type="text" name="ptype" required="required"
					 /></td>
			</tr>
			<tr>
				<td>City</td>
				<td><input type="text" name="city" required="required"
					 /></td>
			</tr>
			<tr>
				<td>Location</td>
				<td><input type="text" name="location" required="required"
					 /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" name="price" required="required"
					 /></td>
			</tr>
			<tr>
			</table>
			<br> <input type="submit" />
			<br>


<br>
<br>
<br>
<br>
<p class="col-lg-8 col-sm-12 footer-text m-0 text-black">Copyright &copy;<script>document.write(new Date().getFullYear());</script> <br>
All rights reserved | This website is made with <br><i class="fa fa-heart-o" aria-hidden="true"></i> by Infogain India Pvt. Ltd. </p>
<br>
<br>

</form>
</div>
</div>
</section>
	</body>
</html>