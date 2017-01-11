<%@page contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%> 
<html> 
<head>
<title>request页面属性</title>
</head>
<body>
<%--     <%
     request.setCharacterEncoding("gbk");
     String content = request.getParameter("info");
     String contentType=new String(request.getParameter("info").getBytes("gbk"));
    %>
    <h2>欢迎光临：<%=content %></h2>
    <h2>欢迎光临2：<%=contentType %></h2> 
 --%>   
<%--   <%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String name = request.getParameter("uname");
    String inst[] = request.getParameterValues("inst");
    %>
   <h2>id光临：<%=id %></h2>
   <h2>name光临：<%=name %></h2>
   <h2>inst光临：
       <%
           if(inst !=null){          
          for(int i=0;i<inst.length;i++){
       %>
            <%=inst[i]%>,
       <%
            }
          }
       %>
   </h2>  --%>
 
<%--  <%
     request.setCharacterEncoding("GBK");
     String param1 = request.getParameter("name");
     String param2 = request.getParameter("password");
 %>
 <h3>姓名:<%=param1 %></h3>
  <h3>密码:<%=param2 %></h3> --%>
  
 <%
     request.setCharacterEncoding("GBK");
     Enumeration enu = request.getParameterNames();
 %> 
 <table border="1">
      <tr>
         <td>参数名称</td>
         <td>参数值</td>
      </tr>
      <%
         while(enu.hasMoreElements()){
             String paraName = (String)enu.nextElement();      	 
       %>
       <tr>
          <td><%=paraName %></td>
          <td>
              <%
                 if(paraName.startsWith("**")){
            String paramValue[] = request.getParameterValues("**inst");
              for(int i=0;i<paramValue.length;i++){
           %>
               <%=paramValue[i] %>,
           <%	  
              }
            }else{
           %>
               <%=request.getParameter(paraName)%>
           <%
            }
              %>
         </td>
       </tr>
       <%
         }
       %>
 </table>
</body>
</html>