<%@page contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%> 
<html> 
<head>
<title>request“≥√Ê Ù–‘</title>
</head>
<body>
<%
   if(request.isUserInRole("admin")){
%>
   <h2>ª∂”≠π‚¡Ÿ</h2>
<%
   }
%>
</body>
</html>