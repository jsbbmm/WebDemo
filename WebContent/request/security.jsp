<%@page contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%> 
<html> 
<head>
<title>requestҳ������</title>
</head>
<body>
<%
   if(request.isUserInRole("admin")){
%>
   <h2>��ӭ����</h2>
<%
   }
%>
</body>
</html>