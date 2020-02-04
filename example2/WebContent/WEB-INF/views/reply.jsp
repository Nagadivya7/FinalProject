<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reply</title>
</head>
<body>
<form:form method="post" action="save4">	
		<table align="center">
		
<tr>
			<td>First_Name :</td>
			<td><form:input path="fname"  /></td>
		</tr>
		<tr>
			<td>Last_Name :</td>
			<td><form:input path="lname" /></td>
		</tr>
		<tr>
			<td>Email :</td>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td>Mobile_NO :</td>
			<td><form:input path="mobile" /></td>
		</tr>
</tr><tr><td>
Availability of Rooms:</td><td><select name="availabilityOfRooms">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select></td></tr>
 
<tr><td>Time Slots:</td><td><select name="timeSlots">
<option value="9:00-6:00">9:00-6:00</option>
<option value="9:00-1:00">9:00-1:00</option>
<option value="2:00-6:00">2:00-6:00</option></select></td></tr>
<tr>
<tr><td> Duration:</td><td><select name="duration" >
 <option value="30 days">30 days</option>
<option value="45 days">45 days</option>
<option value="60 days">60 days</option>
</select></td></tr>
		<td>
		<input type="submit"  value="Save"></td></tr>
</table>
</form:form>
</body>
</html>