<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html" pageEncoding="utf8"%>
<%@page errorPage="error.jsp"%>
<%-- <%
  response.setHeader("Content-Disposition", "attachment;filename=zlm.doc");
%> --%>
<html> 
<head>
<title>Insert title here</title>
</head>
<body>
   <%!
      public static final String DBDRIVER = "com.mysql.jdbc.Driver";
      public static final String DBURL = "jdbc:mysql://127.0.0.1:3306/mldn";
      public static final String DBUSER = "root";
      public static final String DBPASS = "root"; 
   %>
  <%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet  rs = null;
  %>
  <%
    try{
    	Class.forName(DBDRIVER); 
    	conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
    	String sql = "SELECT EMPNO,ENAME,JOB,SAL,HIREDATE FROM EMP";
    	pstmt = conn.prepareStatement(sql);
    	rs = pstmt.executeQuery();
   %>
   
         <table border="1" style="width: 80%">
		     <tr>
		           <td>员工编号</td>
				   <td>员工姓名</td>
				   <td>所在部门</td>
				   <td>薪   水</td>
				   <td>入职时间</td>
		     </tr>
     
		    <%
		      while(rs.next()){
		    	  int EMPNO = rs.getInt(1);
		    	  String ENAME = rs.getString(2);
		    	  String JOB = rs.getString(3);
		    	  float SAL = rs .getFloat(4);
		    	  Date  HIREATE = rs.getDate(5);
		     %>
				     <tr>
				           <td><%=EMPNO%></td>      
						   <td><%=ENAME%></td>
						   <td><%=JOB%></td>
						   <td><%=SAL%></td>
						   <td><%=HIREATE%></td>
				     </tr>
	 <%
		      }
	 %>
    </table>
    <%	
    }catch(Exception e){
    	System.out.println(e);
    }finally{
    	rs.close();
    	pstmt.close();
    	conn.close();
    }
  %>
</body>
</html>