<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div style="position:fixed; left-padding: 400px;">
<form action="FilterServlet" method="post">
Type:<br><input type="checkbox" name="resident_type" value="Rent" >Rent</br>
		<input type="checkbox" name="resident_type" value="Home">Home</br>
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
<input type="checkbox" name="location" value="Sector 51">Sector 51<br>
<input type="checkbox" name="location" value="Sector 52">Sector 52<br>
<input type="checkbox" name="location" value="Sector 53">Sector 53<br>
<input type="checkbox" name="location" value="Sector 54">Sector 54<br>
<input type="checkbox" name="location" value="Sector 55">Sector 55<br>

<input type="submit" value="Apply Filter">
</form>
	</div>

</body>
</html>