<%@page contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>

<title>requestҳ������</title>
</head>
<body>
   <%
     String method = request.getMethod();
     String  ip = request.getRemoteAddr();
     String location = request.getLocalAddr();
     String path = request.getServletPath();
     String contextPath = request.getContextPath();
   %>
       <h3><%=method %></h3>
       <h3><%=ip %></h3>
       <h3><%=location %></h3>
       <h3>����·��<%=path %></h3>
       <h3>������·��<%=contextPath %></h3>
       <h3>һ��ҳ�������·����<%=contextPath %><%=path %></h3>
</body>
</html>