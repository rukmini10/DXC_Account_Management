 <%@page import="com.dxc.RegisterDao"%>  
<jsp:useBean id="member" class="com.dxc.Member"></jsp:useBean>  
<jsp:setProperty property="*" name="member"/>   
    
<%  
RegisterDao.update(member);  
response.sendRedirect("displayMember.jsp");  
%> 