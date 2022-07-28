<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Add student record</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
	<div class="container">
	
	<h1 style="padding: 15px; color: cadetblue;">add record</h1>
	
	<a href="index.jsp"><button type="submit" style="padding: 10px; border: 1px;" >Home</button></a>
	<a href="deleterecord.jsp"><button type="submit" style="padding: 10px; border: 1px;" >Delete Record</button></a>
	<a href="record.jsp"><button type="submit" style="padding: 10px; border: 1px;" >Show record</button></a>
	<hr>
	<form name="frm" method="post" action="AddStudent">
	<table>
		<tr>
		<td>roll no
		<td><input type="text" name="rollno" class="form-control" required>
		</tr>
		
		<tr>
		<td>name
		<td><input type="text" name="name" class="form-control" required>
		</tr>
		
		<tr>
		<td>division
		<td><input type="text" name="division" class="form-control" required>
		</tr>
		
		<tr>
		<td>first dose date
		<td><input type="text" name="fd" class="form-control" >
		</tr>
		
		<tr>
		<td>second dose date
		<td><input type="text" name="sd" class="form-control" >
		</tr>
		
		<tr>
		<td>vaccination
		<td><input type="text" name="status" class="form-control" >
		</tr>
		</table>
		<br>
		<table>
				<tr>
				<td><input type="submit" value="Submit" style="margin-left: 80px;" class="form-control">
				</tr>
			</table>
		
	</form>
	
	</div>
</body>
</html>