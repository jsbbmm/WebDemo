<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>JSTL 操作数据库</title>
</head>
<body>
<!--一般需要驱动Driver,地址URL，用户名和密码  -->
<!--防止乱码  setUnicode=true&characterEncoding=utf-8 -->
<!--首先设置数据源，链接数据库  -->
<sql:setDataSource var="dataSource"
                   driver = "com.mysql.jdbc.Driver"
                   url = "jdbc:mysql://127.0.0.1:3306/mldn"
                   user = "root"
                   password="root"
                   scope="page"/>
<!-- 然后演示 操作SELECT语句 -->
<sql:query dataSource="${dataSource}" var="select">
     	SELECT EMPNO,ENAME,JOB,HIREDATE,SAL FROM EMP;
</sql:query>
	<table border="1" style="text-align: center;">
		  <tr style="text-align: center;"> 
		   <th>员工编号</th>
		   <th>员工姓名</th>
		   <th>所在部门</th>
		   <th>薪   水</th>
		   <th>入职时间</th>
		  </tr>
		  <c:forEach items="${select.rows}" var="select" varStatus="i">
		   <tr>
		    <td>${select.EMPNO }</td>
		    <td>${select.ENAME }</td>
		    <td>${select.JOB }</td>
		    <td>${select.HIREDATE }</td>
		    <td>${select.SAL }</td>
		   </tr>
		  </c:forEach>
	</table>
<!--演示插入数据UPDATE 语句  -->
<%-- <sql:update dataSource="${dataSource}" var="update">
   insert into EMP(ENAME,JOB,HIREDATE,SAL) VALUES ('zlm','teachter','2016-12-28',450);
</sql:update> --%>

</body>
</html>
<script type="text/javascript">
 var a='${dataSource}';
 var b='${result}';
 var book = {
    name: "james",
    age: 19,
    sex: "nan",
    like: "football",
    test: function() {
        this.name = "ray";
    }
};
  console.log(b);
  console.log(book);
</script>