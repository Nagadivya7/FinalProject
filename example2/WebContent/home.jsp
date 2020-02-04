<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<style>
	#ttt{
		margin:50px 400px;
		background-image:url('WebContent/download.jpg');
		}
</style>


</head>
<body >
	<h1 align="center">ATOS SYNTEL</h1>
	<div class="container-fluid">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
				<a class="navbar-brand" href="home.jsp">Home</a>
				</div>
				 <ul class="nav navbar-nav">
					<li>
					<a href="trm">TRM</a></li>
					<li><a href="pm">PM</a></li>
					<li><a href="lnd">L & D</a></li>
				</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="empform">
						<span class="glyphicon glyphicon-user"></span>signup</a></li>
						<li><a href="login">
						<span class="glyphicon glyphicon-log-in"></span>signin</a></li>
					</ul>
			</div>
			</nav>
		</div>
		<div  id="ttt">
		<form action="" method="post">
		<table>
		<tr>
		<td>
		Enter User Name:</td>
		<td style="padding:5px"><input type="text" name="uname"></td ></tr>
		<tr>
		<td>
		Enter password:</td>
		<td><input type="password" name="pwd"></td></tr>
		<tr>
		<td>
		<input type="button" value="Login"></td></tr>
		
				</table>
	</form>
	</div>
</body>
</html>