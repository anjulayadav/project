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
input[type="text"]
{
    background: transparent;
   
}


</style>
</head>
<body>
	<!-- Start Header Area -->
	
	
	<header class="default-header1"> <nav
		class="navbar navbar-expand-lg  navbar-light">
	<div class="container" >
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
	
	<h2 style="color:Tomato;"> Add Your Property Details</h2><br>
		<table name="Property Details" style="color:Tomato;">

			<tr>
				<td>Type Of Property</td>
				<td><select class="wrap-input100 validate-input" name="ptype" style="background-color: transparent; height:50px;color:black;">
			  <option value="" selected>Select</option>
			  <option value="PG" >Paying Guest</option>
			  <option value="Rent" >Rent</option>
			  <option value="Buy" >Buy</option>
		</select></td>
			</tr>
			<tr>
				<td>City</td>
				<td><input type="text" name="city" required="required"
					placeholder="City" /></td>
			</tr>
			<tr>
				<td>Location</td>
				<td><input type="text" name="location" required="required"
					placeholder="Location" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" name="price" required="required"
					placeholder="Price" /></td>
			</tr>
			<tr>
				<td>Rent</td>
				<td><input type="text" name="rent" required="required"
					placeholder="Rent " /></td>
			</tr>
			<tr>
				<td>Deposit Amount</td>
				<td><input type="text" name="deposit" required="required"
					placeholder="Deposit Amount" /></td>
			</tr>
			<tr>
				<td>Number of Bedroom</td>
				<td><input type="text" name="bedroom_no" required="required"
					placeholder="Number of Bedroom " /></td>
			</tr>
			<tr>
				<td>Number of Bathroom</td>
				<td><input type="text" name="bathroom_no" required="required"
					placeholder="Number of Bathroom " /></td>
			</tr>
			<tr>
				<td>Residence Type</td>
				<td><select class="wrap-input100 validate-input" name="residence_type" style="background-color: transparent; height:50px;color:black;">
			  <option value="" selected>Select</option>
			  <option value="commercial" >Commercial</option>
			  <option value="nonCommercial" >Non-Commercial</option>
		</select></td>
			</tr>
			<tr>
				<td>Property Status</td>
				<td><select class="wrap-input100 validate-input" name="furnishing" style="background-color: transparent; height:50px;color:black;">
			  <option value="" selected>Select</option>
			  <option value="furnished" >Furnished</option>
			  <option value="nonfurnished" >Non-Furnished</option>
			   <option value="semifurnished" >Semi-Furnished</option>
		</select></td>
			</tr>
			<tr>
				<td>Mode of Payment</td>
				<td><select class="wrap-input100 validate-input" name="payment_mode" style="background-color: transparent; height:50px;color:black;">
			  <option value="" selected>Select</option>
			  <option value="cash" >Cash</option>
			  <option value="Card" >Card</option>
		</select></td>
			</tr>
			<tr>
				<td>Transport Facility</td>
				<td><input type="text" name="transport_mode"
					required="required" placeholder="Transport Facility" /></td>
			</tr>
			<tr>
				<td>Other Facilities</td>
				<td><input type="text" name="extra_facility"
					required="required" placeholder="Other Facilities" /></td>
			</tr>
			<br>
		
		</table>
		<br> <input type="file" name="image" required="required" style="color:Tomato;"/> <br>
		<br> <input type="submit" />

</form>
</div>
</div>
</section>
</body>
</html>