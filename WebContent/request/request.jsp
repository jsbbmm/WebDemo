<%@page contentType="text/html; charset=gbk" %>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>pageContextҳ������</title>
</head>
<body>
    <%
        request.setAttribute("name", "֣���� ");
        request.setAttribute("birthday",new Date());
        request.setCharacterEncoding("UTF-8");
    %>
    <%
       String name = (String)request.getAttribute("name");
       Date date = (Date)request.getAttribute("birthday");
    %>
    <h2>������<%=name %></h2>
    <h2>���գ�<%=date %></h2>
<%--     <jsp:forward page="request2.jsp"></jsp:forward> --%> 
    <a href="request2.jsp">a��ǩ����ת</a>
</body>
</html>