<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Data</title>
</head>
<body>

<h1>Data List</h1>
<table border="1" width="100%" cellpadding="2">
	<tr>
		<th>No_of_trainers</th>
		<th>Availability_of_rooms</th>
		<th>Time_slots</th>
		
	</tr>
	<c:forEach var="l" items="${list}">
		<tr>
			<td>${l.noOfTrainers}</td>
			<td>${l.availabilityOfRooms}</td>
			<td>${l.timeSlots}</td>

		</tr>
	</c:forEach>
</table>
</body>
</html>