<%@page contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%> 
<html> 
<head>
<title>requestҳ������</title>
</head>
<body>
<%
   Enumeration enu = request.getHeaderNames();
   while(enu.hasMoreElements()){
	   String headName = (String)enu.nextElement();
       String headValue = request.getHeader(headName);
  
%>
     <h5><%=headName%>-----����Ӧֵ��---------<%=headValue %></h5>
<%
   }
%>
</body>
</html>