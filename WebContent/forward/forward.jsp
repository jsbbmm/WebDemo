<%@page language="java" contentType="text/html" pageEncoding="gbk"%>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>��ת</title>
</head>
<body>
    <jsp:forward page="forward_H.jsp">
        <jsp:param value="aaaa" name="name"/>
        <jsp:param value="ֻ׬֮ǰ" name="info"/>
     </jsp:forward>
</body>
</html>