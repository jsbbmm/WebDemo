<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html; charset=GBK" pageEncoding="UTF-8"%>
<html> 
<head>
<title>Session</title>
</head>
<body>
   <%
      String id = session.getId();
   %>
   <h2>
     <%=id %>
   </h2><br>
    <h2>
     <%=id.length() %>
   </h2>
</body>
</html>