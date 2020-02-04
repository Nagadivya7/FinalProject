<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PM</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
	<h1 align="center">ATOS SYNTEL</h1>
	<div class="container-fluid">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
				<a class="navbar-brand" href="home.jsp">Home</a>
				</div>
				<ul class="nav navbar-nav">
					
					<li><a href="pm">PM</a></li>
					<li><a href="viewrep">Response</a></li>
					
				</ul>
					  <ul class="nav navbar-nav navbar-right">
						<li><a href="home.jsp">
						<span class="glyphicon glyphicon-user"></span>signout</a></li>
						
					</ul>
			</div>
			</nav>
		</div>	
		<form:form method="post" action="save1">
<table align="center">
<tr>
<td>	
No of Trainers:</td> <td><form:input  path="noOfTrainers" />
</td>
</tr>
<tr>
<td>
platform:</td><td> <select name="platform" >
<option value="Java">Java</option>
<option value="Testing">Testing</option>
<option value="Database">Database</option>
</select>
</td></tr>

<tr><td> Duration:</td><td><select name="duration" >
 <option value="30 days">30 days</option>
<option value="45 days">45 days</option>
<option value="60 days">60 days</option>
</select></td></tr>

<tr>
<td>
Location:</td><td><select name="location" >
	<option value="select">Select city</option>
		<option value="chennai">chennai</option>
		<option value="pune">pune</option>
		<option value="mumbai">mumbai</option>
		</select>
		</td></tr>
		<tr>
		<td><input type="Submit"  value="save"></td>
		</tr>
		</table>
	</form:form>
<!-- <script>
	function request(){
		document.getElementById("").innerHtml="Request Sent Successfully"
	}
</script>  -->
<a href="viewpm">View Details</a>
</body>
</html>