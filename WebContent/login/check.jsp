<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html" pageEncoding="utf8"%>
<%@page errorPage="error.jsp"%>
<html> 
<head>
<title>登陆验证</title>
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
	    boolean flag = false;
	    String name = null;
	  %>
	    <%
    try{
    	Class.forName(DBDRIVER); 
    	conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
    	String sql = "SELECT NAME from user where USERID=? and PASSWORD=?";
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, request.getParameter("id"));
    	pstmt.setString(2, request.getParameter("password"));
    	rs = pstmt.executeQuery();
    	if(rs.next()){
    		flag = true;
    		name = rs.getString(1);
    	}
     %>
      <%	
    }catch(Exception e){
    	System.out.println(e);
    }finally{
    	 try{
    		 rs.close();
    	    	pstmt.close();
    	    	conn.close();
    	 }catch(Exception e1){
    		 e1.printStackTrace();
    	 }
    }
  %>
  <%
     if(flag){
  %>
    <jsp:forward page="login_success.jsp">
       <jsp:param value="<%=name%>" name="name"/>
    </jsp:forward>
    
  <% 
     }else {
   %>
      <jsp:forward page="login_fail.jsp"/>
   <%
     }
  %>
</body>
</html>