<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Record</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1 style="padding: 15px; color: cadetblue;">Delete record</h1>
	
	<a href="index.jsp"><button type="submit" style="padding: 10px; border: 1px;" >Home</button></a>
	<a href="addrecord.jsp"><button type="submit" style="padding: 10px; border: 1px;" >Add record</button></a>
	<a href="record.jsp"><button type="submit" style="padding: 10px; border: 1px;" >Show record</button></a>
	<hr>
		<form name="frm" method="post" action="DeleteRecord">
			<table>
				<tr>
				<td>roll no
				<td><input type="text" name="rollno" autocomplete="off" class="form-control">
				</tr>
				<tr>
				<td>
				</tr>
				<tr>
				<td>name
				<td><input type="text" name="name" autocomplete="off" class="form-control">
				</tr>
			</table>
			<br>
			<table>
				<tr>
				<td><input type="submit" value="Delete" style="margin-left: 80px;" class="form-control">
				</tr>
			</table>
		</form>	 
		
	</div>
</body>
</html>