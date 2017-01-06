<%@page contentType="text/html; charset=gbk" %>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>pageContext页面属性</title>
</head>
<body>
    <%
        session.setAttribute("name", "zlm");
        session.setAttribute("birthday",new Date());
    %>
    <%
       String name = (String)session.getAttribute("name");
       Date date = (Date)session.getAttribute("birthday");
    %>
    <h2>姓名：<%=name %></h2>
    <h2>生日：<%=date %></h2>
    <jsp:forward page="session2.jsp"></jsp:forward>
</body>
</html>