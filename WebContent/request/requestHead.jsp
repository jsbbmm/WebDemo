<%@page contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%> 
<html> 
<head>
<title>request页面属性</title>
</head>
<body>
<%
   Enumeration enu = request.getHeaderNames();
   while(enu.hasMoreElements()){
	   String headName = (String)enu.nextElement();
       String headValue = request.getHeader(headName);
  
%>
     <h5><%=headName%>-----所对应值：---------<%=headValue %></h5>
<%
   }
%>
</body>
</html>