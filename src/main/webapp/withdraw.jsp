<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body style="background-image: url('https://cutewallpaper.org/21/hd-website-backgrounds/High-Resolution-Hd-Website-Background-Hd-Wallpapers-.jpg');">
	<br><br><br><br><br><br>
	<center>
		<h1>Your Account has been updated!</h1>

		<%
            try{
            String ano=request.getParameter("ano");
            double amt=Double.parseDouble(request.getParameter("amt"));
            out.println("<table border='1'><tr><th colspan='2'>Account Summary</th></tr><tr><td>");
            out.println("Account number</td><td>"+ano+"</td></tr><tr><td>");
            out.println("Transaction Amount </td><td> "+amt+"</td></tr></table>");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dxcdb","root","Mysql@2710");
            Statement st=con.createStatement();
            String q1="select bal from tr where ano='"+ano+"'";
            ResultSet rs=st.executeQuery(q1);
            while(rs.next())
            out.println("</br></br><h3>Your Balance Before This transaction : "+rs.getString(1)+"</h3>");
            String query="update tr set bal=bal-"+amt+"where ano='"+ano+"'";
            st.executeUpdate(query);
            String q2="select bal from tr where ano='"+ano+"'";
            rs=st.executeQuery(q2);
            while(rs.next())
            out.println("</br></br><h3>Now Your Available Balance After Withdraw: "+rs.getString(1)+"</h3>");
                    
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
            
            out.println();
            
            %>
	</center>
</body>
</html>