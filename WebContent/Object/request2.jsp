<%@page contentType="text/html; charset=gbk" %>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>requestҳ������</title>
</head>
<body>
    <%
       String name = (String)request.getAttribute("name");
       Date date = (Date)request.getAttribute("birthday");
    %>
    <h2>������<%=name %></h2>
    <h2>���գ�<%=date %></h2>
</body>
</html>