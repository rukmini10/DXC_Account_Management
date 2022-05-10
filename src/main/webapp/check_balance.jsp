<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Balance</title>
</head>
<body
	style="background-image: url('https://cutewallpaper.org/21/hd-website-backgrounds/High-Resolution-Hd-Website-Background-Hd-Wallpapers-.jpg');">

	<center>
		<h1>Your Current Balance</h1>
	</center>
	<%
            try{
            String an=request.getParameter("ano");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dxcdb", "root","Mysql@2710");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from tr where ano='"+an+"'");
            out.println("<table border='1' width='70%' bgcolor='lightblue' align='center'>");
			out.println("<tr><th>Account Number</th><th>Customer Name</th><th>Balance</th><th>Last Transaction date</th></tr>");
			while(rs.next())
 			out.println("<tr align='center'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
			out.println("</table>");
			conn.close();

            }catch(Exception e)
            {
                out.println(e);
            }
            %>
</body>
</html>