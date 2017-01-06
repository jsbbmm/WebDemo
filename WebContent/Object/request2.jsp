<%@page contentType="text/html; charset=gbk" %>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>request页面属性</title>
</head>
<body>
    <%
       String name = (String)request.getAttribute("name");
       Date date = (Date)request.getAttribute("birthday");
    %>
    <h2>姓名：<%=name %></h2>
    <h2>生日：<%=date %></h2>
</body>
</html>