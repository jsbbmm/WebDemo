<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html" pageEncoding="utf8"%>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>登陆界面</title>
</head>
<body>
   <form action="check.jsp" method="post">
      <table border="1" style="width: 50%">
          <tr>
             <td colspan="2">用户登陆</td>
          </tr>
          
          <tr>
            <td>登陆ID</td>
            <td><input type="text" name="id"></td>
          </tr>
          
          <tr>
            <td>登陆密码</td>
            <td><input type="password" name="password"></td>
          </tr>
          <tr>
            <td><input type="submit" value="登陆" /></td>
            <td><input type="reset"  value="重置"/></td>
          </tr>
      </table>
   </form>
</body>
</html>