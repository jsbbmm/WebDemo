<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html; charset=GBK" pageEncoding="UTF-8"%>
<html> 
<head>
<title>Cookie</title>
</head>
<body>
   <%
     Cookie c1 = new Cookie("zlm","zlm");
     Cookie c2 = new Cookie("ip","localhost");
     response.addCookie(c1);
     response.addCookie(c1);
     c1.setMaxAge(1000);
     c2.setMaxAge(50);
   %>
   <%
        Cookie c[] = request.getCookies();
       for(int i=0;i<c.length;i++){
   %>
      <H3><%=c[i].getName() %>-------<%=c[i].getValue() %></H3>
   <%    	   
       }
   
   %>
</body>
</html>