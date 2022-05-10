<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String name=request.getParameter("name");
String form_date=request.getParameter("form_date");
String to_date=request.getParameter("to_date");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "dxcdb";
String userid = "root";
String password = "Mysql@2710";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body style="background-image: url('https://cutewallpaper.org/21/hd-website-backgrounds/High-Resolution-Hd-Website-Background-Hd-Wallpapers-.jpg');">
<br><br><br>
<center>
<h1>Transction Summary</h1>
<table class="table table-striped" border=1>
<tr>
<th scope="col">Id</td>
<th scope="col">Name</td>
<th scope="col">Amount</td>
<th scope="col">Transaction Acc No</td>
<th scope="col">Transaction Acc Name</td>
<th scope="col">Date_Time</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from transaction where date_time between '"+form_date+"' and '"+to_date+"' and name='"+name+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
%>
<tr>
<td scope="row"><%=resultSet.getString("id") %></td>
<td scope="row"><%=resultSet.getString("name") %></td>
<td scope="row"><%=resultSet.getString("amount") %></td>
<td scope="row"><%=resultSet.getString("t_accno") %></td>
<td scope="row"><%=resultSet.getString("t_accname") %></td>
<td scope="row"><%=resultSet.getString("date_time") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</center>
</body>
</html>