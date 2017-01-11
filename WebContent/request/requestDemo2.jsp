<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>request页面属性</title>
</head>
<body>
   <form action="requestDemo.jsp" method="post" >
         姓名:   <input type="text" name="uname"><br>
         兴趣：       <input type="checkbox" name="inst" value="唱歌">唱歌
          <input type="checkbox" name="inst" value="跳舞">跳舞
          <input type="checkbox" name="inst" value="游泳">游泳
          <input type="checkbox" name="inst" value="下棋">下棋
          <input type="checkbox" name="inst" value="看书">看书<br>
          
          <input type="hidden" value="1" name="id">
          <input type="submit" value="提交">
          <input type="reset" value="重置">
   </form>
</body>
</html>