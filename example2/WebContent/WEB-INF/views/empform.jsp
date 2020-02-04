<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<h1>Add New Employee</h1>
<form:form method="post" action="save" >
	<table>
		<tr>
			<td>First_Name :</td>
			<td><form:input path="fname"  /></td>
		</tr>
		<tr>
			<td>Last_Name :</td>
			<td><form:input path="lname" /></td>
		</tr>
		<tr>
			<td>Employee_Id :</td>
			<td><form:input path="id" /></td>
		</tr>
		<tr>
			<td>Email :</td>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td>Password :</td>
			<td><form:input path="password" /></td>
		</tr>
		<tr>
			<td>Confirm_Password :</td>
			<td><form:input path="cpassword" /></td>
		</tr>
		<tr>
			<td>Mobile_NO :</td>
			<td><form:input path="mobile" /></td>
		</tr>
		<tr>
			<td>Category:</td>
			<td><form:input path="category" /></td>
		</tr>
		<tr>
			<td>Location:</td>
			<td><form:input path="location" /></td>
		</tr>

		<tr>
			<td></td>
			<td><input type="submit" value="Save" /></td>
		</tr>
	</table>
</form:form>
<a href="viewemp">View Employee</a>