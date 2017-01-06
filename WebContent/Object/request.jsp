<%@page contentType="text/html; charset=gbk" %>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>pageContext页面属性</title>
</head>
<body>
    <%
        request.setAttribute("name", "郑黎明 ");
        request.setAttribute("birthday",new Date());
        request.setCharacterEncoding("UTF-8");
    %>
    <%
       String name = (String)request.getAttribute("name");
       Date date = (Date)request.getAttribute("birthday");
    %>
    <h2>姓名：<%=name %></h2>
    <h2>生日：<%=date %></h2>
<%--     <jsp:forward page="request2.jsp"></jsp:forward> --%> 
    <a href="request2.jsp">a标签的跳转</a>
</body>
</html>