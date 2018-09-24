<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body > 
 <b>Upload | <a href="viewImage.jsp">View</a></b><br/><br/>
        <center>
        <form action="UploadImage" method="post" enctype="multipart/form-data">
        <table name="Property Details">
         <tr> <td>
      Property Id  </td><td> <input type ="text" name = "propertyId" required="required"  placeholder="Property Id"/></td></tr>
 <tr><td>  UserName</td><td> <input type ="text" name = "username" required="required"  placeholder="UserName"/></td></tr>
   <tr> <td>Type Of Property </td><td>  <input type ="text" name = "ptype" required="required" placeholder="Type Of Property"/></td></tr>
  <tr> <td> City </td><td> <input type ="text" name = "city" required="required"  placeholder="City"/></td></tr>
  <tr> <td>  Location </td><td> <input type ="text" name = "location" required="required" placeholder="Location"/></td></tr>
   <tr> <td>Price </td><td> <input type ="text" name = "price" required="required"  placeholder="Price"/></td></tr>
   <tr> <td> Rent</td><td> <input type ="text" name = "rent" required="required" placeholder="Rent "/></td></tr>
   <tr> <td>Deposit Amount </td><td> <input type ="text" name = "deposit" required="required"  placeholder="Deposit Amount"/></td></tr>
   <tr> <td>Number of Bedroom</td><td>  <input type ="text" name = "bedroom_no" required="required"  placeholder="Number of Bedroom "/></td></tr>
   <tr> <td>Number of Bathroom  </td><td> <input type ="text" name = "bathroom_no" required="required"  placeholder="Number of Bathroom "/></td></tr>
   <tr> <td>Residence Type </td><td> <input type ="text" name = "residence_type" required="required"  placeholder="Home/Rent/PG"/></td></tr>
   <tr> <td> Property Status </td><td> <input type ="text" name = "furnishing" required="required" placeholder=" Furnished/Semi Furnished /Non Furnished"/></td></tr>
   <tr> <td> Mode of Payment  </td><td> <input type ="text" name = "payment_mode" required="required" placeholder="Mode of Payment"/></td></tr>
    <tr> <td> Transport Facility   </td><td>   <input type ="text" name = "transport_mode" required="required" placeholder="Transport Facility"/></td></tr>
     <tr> <td>  Other Facilities  </td><td>  <input type ="text" name = "extra_facility" required="required" placeholder="Other Facilities"/></td></tr><br>
       </table>  <br>
           <input type="file" name="image" required="required"/>
             <br><br>
            <input type="submit"/>
            
        </form>
</center>
</body>
</html>