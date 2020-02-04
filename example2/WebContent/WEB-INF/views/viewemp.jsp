<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Employees List</h1>
<table border="1" width="100%" cellpadding="2">
	<tr>
		<th>first_name</th>
		<th>last_name</th>
		<th>emp_id</th>
		<th>Email</th>
		<th>password</th>
		<th>mobile_no</th>
		<th>category</th>
		<th>location</th>

	</tr>
	<c:forEach var="emp" items="${list}">
		<tr>
			<td>${emp.fname}</td>
			<td>${emp.lname}</td>
			<td>${emp.id}</td>
			<td>${emp.email}</td>
			<td>${emp.password}</td>
			<td>${emp.mobile}</td>
			<td>${emp.category}</td>
			<td>${emp.location}</td>

		</tr>
	</c:forEach>
</table>

<a href="empform">Add New Employee</a>