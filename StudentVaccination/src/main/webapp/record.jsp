<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user record</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1 style="padding: 15px; color: cadetblue;">Student Vaccination record</h1>
		<a href="index.jsp"><button type="submit" style="padding: 10px; border: 1px;" >Home</button></a>
		<a href="studentgetadded.jsp"><button type="submit" style="padding: 10px; border: 1px;" >Back</button></a>
		<hr>
		<table class="table table-bordered table-hover table-dark">
		<tr>
		<th>rollno
		<th>name
		<th>division
		<th>First date
		<th>Second date
		<th>vaccination
		</tr>
		
<%
		Connection con;
        Statement st;
        ResultSet rs;
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
            st=con.createStatement();
            rs=st.executeQuery("select * from vaccination;");

            while(rs.next())
            {
                %>
                
                <tr>
                <td><%=rs.getString("rollno")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("division")%></td>
                <td><%=rs.getString("Firstdate")%></td>
                <td><%=rs.getString("seconddate")%></td>
                <td><%=rs.getString("vacination")%></td>
                </tr>
                
                <% 
            }
            con.close();

        }
        catch(Exception e)
        {
            System.out.println(e);
        }
%>
</table>
	</div>
</body>
</html>