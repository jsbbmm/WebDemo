<%@page contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>

<title>request页面属性</title>
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
       <h3>访问路径<%=path %></h3>
       <h3>上下文路径<%=contextPath %></h3>
       <h3>一个页面的完整路径：<%=contextPath %><%=path %></h3>
</body>
</html>