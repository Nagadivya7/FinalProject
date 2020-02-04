<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>Data List</h1>
<table border="1" width="100%" cellpadding="2">
	<tr>
		<th>No_of_trainers</th>
		<th>platform</th>
		<th>duration</th>
		<th>location</th>

	</tr>
	<c:forEach var="p" items="${list}">
		<tr>
			<td>${p.noOfTrainers}</td>
			<td>${p.platform}</td>
			<td>${p.duration}</td>
			<td>${p.location}</td>

		</tr>
	</c:forEach>
</table>