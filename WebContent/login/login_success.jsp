<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html" pageEncoding="utf8"%>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>登陆界面</title>
</head>
<body>
  <h1>登陆成功</h1>
  <h1>欢迎登陆:<%=request.getParameter("name") %></h1> 
</body>
</html>