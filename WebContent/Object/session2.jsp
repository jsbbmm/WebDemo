<%@page contentType="text/html; charset=gbk" %>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>pageContextҳ������</title>
</head>
<body>
    <%
       String name = (String)session.getAttribute("name");
       Date date = (Date)session.getAttribute("birthday");
    %>
    <h2>������<%=name %></h2>
    <h2>���գ�<%=date %></h2>
</body>
</html>