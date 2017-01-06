<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  int x =10;
  String info="www.baidu.com";
  out.println("<h2>"+ x++ +"</h2>");
  out.println("<h2>"+info+"</h2>");
%>
<%!
  public static final String info="www.baidu.com";
  int y=0;
  public int add(int x,int y){
	  return x+y;
  }
  class Person{
	  private String name;
	  private int age;
	  public Person(String name, int age){
		  this.name=name;
		  this.age=age;
	  }
	  public String toString(){
		  return "name="+this.name+";age="+this.age;
	  }
  }
%>
<%
        out.println("<h2>"+info+"</h2>");
        out.println("<h2>"+y+++"</h2>");
		out.println("<h2>"+add(3,5)+"</h2>");
		out.println("<h2>"+new Person("zlm",12).toString()+"</h2>");
%>

<%
   /*    int rows = 10;
      int cols = 10;
      out.println("<table border=\"3\" width=\"800px\" height=\"800px\" color=\"red\">");
      for(int m=0;m<rows;m++){
    	  out.println("<tr>");
    	  for(int n=0;n<cols;n++){
    		  out.print("<td>"+m*n+ "</td>");
    	  }
    	  out.println("</tr>");
    	  out.println("</br>");
      }
      out.println("</table>"); */

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>第一个电影专题页面</title>
</head>
<body>
<jsp:scriptlet>
    String  url="www.baidu.comtttt";
</jsp:scriptlet>
<%=url %>
<%-- <% 
      int rows = 10;
      int cols = 10;
%>
 <table style="color: red;border: 2px;border-color: red;">
<%
      for(int m=0;m<rows;m++){
%>
    <tr>
<% 
    	  for(int n=0;n<cols;n++){
    		  %>
    		<td> <%=m*n%></td>
<%   	  }
%> 
    	</tr>
<%   	  }
%>
      </table> --%>
      
    <form action="table.jsp?" method="get">
         <table border="1">
             <tr>
                <td>请输入表格的行数：</td>
                <td><input type="text" name="rows"/></td>
             <tr>
             
             <tr>
                 <td>请输入表格列数：</td>
                 <td><input type="text" name="cols"/></td>
             </tr>
             <tr>
                 <td><input type="submit" value="显示"/></td>
                 <td><input type="reset" value="重置"/></td>
             </tr>
         </table>
    </form>  
    
</body>
</html>