<%@page contentType="text/html; charset=gbk" %>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>pageContextҳ������</title>
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
    <h2>������<%=name %></h2>
    <h2>���գ�<%=date %></h2>
    <jsp:forward page="session2.jsp"></jsp:forward>
</body>
</html>