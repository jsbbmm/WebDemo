<%@page contentType="text/html; charset=gbk" %>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>request页面属性</title>
</head>
<body>
   <form action="requestDemo.jsp" method="post">
         请输入信息: <input type="text" name="info">
            <input type="submit" value="提交">
   </form>
</body>
</html>