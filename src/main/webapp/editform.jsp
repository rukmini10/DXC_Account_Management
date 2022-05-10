    
    <%-- dummy file
    
    <!DOCTYPE html>  
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
    <title>Edit Form</title>  
    </head>  
    <body style="background-image: url('https://cutewallpaper.org/21/hd-website-backgrounds/High-Resolution-Hd-Website-Background-Hd-Wallpapers-.jpg');">  
     <%@page import="com.dxc.RegisterDao"%>  
<jsp:useBean id="member" class="com.dxc.Member"></jsp:useBean>    
    <%  
    String Email=request.getParameter("Email");  
  
    %>  
  
    <h1>Edit Form</h1>  
    <form action="updateMember.jsp" method="post">  
    <input type="hidden" name="id" value="<%=member.getEmail() %>"/>  
    <table>  
    <tr><td>User Name:</td><td>  
    <input type="text" name="UserName" value="<%= member.getUserName()%>"/></td></tr>  
    <tr><td>Full Name</td><td>  
    <input type="text" name="Full_Name" value="<%= member.getFull_Name()%>"/></td></tr>  
    <tr><td>Email Id:</td><td>  
    <input type="Email" name="email" value="<%= member.getEmail()%>"/></td></tr>  
    <tr><td>Phone Number:</td><td>  
     <input type="text" name="Phone_Number" value="<%= member.getPhone_Number()%>"/></td></tr>  
     <tr><td>Address:</td><td>  
     <input type="text" name="Address" value="<%= member.getAddress()%>"/></td></tr> 
   <tr><td>Pancard Number:</td><td>  
     <input type="text" name="Pancard_Number" value="<%= member.getPancard_Number()%>"/></td></tr> 
      <tr><td>Security Question:</td><td>  
     <input type="text" name="Security_Question" value="<%= member.getSecurity_Question()%>"/></td></tr> 
      <tr><td>Balance:</td><td>  
     <input type="number" name="Balance" value="<%= member.getBalance()%>"/></td></tr> 
       <tr><td>Account_Type:</td><td>  
     <input type="text" name="Account_Type" value="<%= member.getAccount_Type()%>"/></td></tr> 
       <tr><td>Opening Date:</td><td>  
     <input type="text" name="Opening_Date" value="<%= member.getOpening_Date()%>"/></td></tr> 
       <tr><td>Account Password:</td><td>  
     <input type="text" name="Account_Password" value="<%= member.getAccount_Password()%>"/></td></tr> 
     
    <tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
    </table>  
    </form>  
      
    </body>  
    </html>  
    --%>