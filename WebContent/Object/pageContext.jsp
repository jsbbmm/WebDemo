<%@page contentType="text/html; charset=gbk" %>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>pageContextҳ������</title>
</head>
<body>
    <%
        pageContext.setAttribute("name", "zlm",PageContext.REQUEST_SCOPE);
        pageContext.setAttribute("birthday",new Date(),PageContext.REQUEST_SCOPE);
    %>
    <%
       String name = (String)pageContext.getAttribute("name");
       Date date = (Date)pageContext.getAttribute("birthday");
    %>
    <h2>������<%=name %></h2>
    <h2>���գ�<%=date %></h2>
    <jsp:forward page="request2.jsp"/>
</body>
</html>