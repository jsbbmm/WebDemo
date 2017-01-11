<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page errorPage="error.jsp"%>
<html> 
<head>
 <meta http-equiv="refresh" content="3;URL=responseDemo2.jsp">
<title>Response</title>
</head>
<body>
    <h3>3秒后自动跳转，如果没有跳转，请点击<a href="responseDemo2.jsp">这里</a></h3>
</body>
</html>
