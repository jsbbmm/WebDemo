<%@page language="java" contentType="text/html" pageEncoding="gbk"%>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>跳转</title>
</head>
<body>
    <jsp:forward page="forward_H.jsp">
        <jsp:param value="aaaa" name="name"/>
        <jsp:param value="只赚之前" name="info"/>
     </jsp:forward>
</body>
</html>