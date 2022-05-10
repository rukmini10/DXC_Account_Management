
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.dxc.RegisterDao"%>
<%@page import="com.dxc.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<title>Account Management</title>
</head>
<style>
<link rel="stylesheet" href="bootstrap/css/bootstrap-min.css">
</style>
<body
	style="background-image: url('https://cutewallpaper.org/21/hd-website-backgrounds/High-Resolution-Hd-Website-Background-Hd-Wallpapers-.jpg');">
	<br>

	<form action="AdminHome.jsp">
		<button type="submit" class="btn btn-primary float-end">Go
			Back Home</button>
	</form>
	<br>
	<br>
	<%
try
{
       
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dxcdb","root","Mysql@2710");
        String sql = "select * from member";
        PreparedStatement stmt = con.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        if(rs.next()==false)
        {
            out.println("No Records in the table");
        }
        else
        {%>

	<table class="table table-striped">
		<thead>
			<tr style="background-color: #77abff; font-weight: 20px">
				<th scope="col">User Name</th>
				<th scope="col">Full Name</th>
				<th scope="col">Password</th>
				<th scope="col">Email Id</th>
				<th scope="col">Phone No</th>
				<th scope="col">Address</th>
				<th scope="col">Security Qn</th>
				<th scope="col">Opening Amt</th>
				<th scope="col">AccountType</th>
				<th scope="col">OpeningDate</th>
				<th scope="col">PanCard</th>
				<th scope="col">Delete</th>
			</tr>
		</thead>
		<%
            do
            {%>

		<tr scope="row">
			<td><%= rs.getString(1)%></td>
			<td><%= rs.getString(2)%></td>
			<td><%= rs.getString(3)%></td>
			<td><%= rs.getString(4)%></td>
			<td><%= rs.getString(5)%></td>
			<td><%= rs.getString(6)%></td>
			<td><%= rs.getString(7)%></td>
			<td><%= rs.getInt(8)%></td>
			<td><%= rs.getString(9)%></td>
			<td><%= rs.getString(10)%></td>
			<td><%= rs.getString(11)%></td>
			
			<td><a href="deleteMember.jsp?Email=${member.getEmail()}"><button
						type="button" class="btn btn-outline-danger">Delete</button></a></td>
		</tr>
		</tr>

		<%}while(rs.next());
        }
       
}
catch(Exception e)
{
    System.out.println(e.getMessage());
    e.getStackTrace();
}
%>
	</table>
</body>
</html>