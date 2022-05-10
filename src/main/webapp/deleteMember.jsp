<%@page import="com.dxc.RegisterDao"%>  
<jsp:useBean id="member" class="com.dxc.Member"></jsp:useBean>  
<jsp:setProperty property="*" name="memberdata"/>  
<%  
RegisterDao.delete(member);  
response.sendRedirect("displayMember.jsp");  
%>