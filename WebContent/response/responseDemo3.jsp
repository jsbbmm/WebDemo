<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>Response</title>
</head>
<body>
  <%
       System.out.println("forward跳转");
  %>
  <jsp:forward page="responseDemo2.jsp"/>  
   <%
     System.out.println("forward跳转");
      response.sendRedirect("responseDemo2.jsp");
   %>
</body>
</html>
