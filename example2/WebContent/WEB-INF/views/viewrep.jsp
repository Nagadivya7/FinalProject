<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Reply</h1>
<table border="1" width="100%" cellpadding="2">
	<tr>
		<th>first_name</th>
		<th>last_name</th>
		<th>Email</th>
		<th>mobile_no</th>
		<th>availabilityofrooms</th>
		<th>timeslots</th>
		<th>duration</th>

	</tr>
	<c:forEach var="rep" items="${list}">
		<tr>
			<td>${rep.fname}</td>
			<td>${rep.lname}</td>
			<td>${rep.email}</td>
			<td>${rep.mobile}</td>
			<td>${rep.availabilityOfRooms}</td>
			<td>${rep.timeSlots}</td>
			<td>${rep.duration}</td>

		</tr>
	</c:forEach>
</table>

