<%@page contentType="text/html; charset=gbk" %>
<html>
  <head>
     <title>Include</title>
  </head>
  <body>
     <h1>¾²Ì¬°üº¬¹ØÏµ</h1>
     <%@include file="info.html" %>
     <%@include file="info.jsp" %>
     <jsp:include page="info.html"/>
     <jsp:include page="param.jsp" flush="true">
       <jsp:param value="zlm1234" name="info"/>
     </jsp:include>
  </body>
</html>