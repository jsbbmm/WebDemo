<%@page contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%> 
<html> 
<head>
<title>requestҳ������</title>
</head>
<body>
<%--     <%
     request.setCharacterEncoding("gbk");
     String content = request.getParameter("info");
     String contentType=new String(request.getParameter("info").getBytes("gbk"));
    %>
    <h2>��ӭ���٣�<%=content %></h2>
    <h2>��ӭ����2��<%=contentType %></h2> 
 --%>   
<%--   <%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String name = request.getParameter("uname");
    String inst[] = request.getParameterValues("inst");
    %>
   <h2>id���٣�<%=id %></h2>
   <h2>name���٣�<%=name %></h2>
   <h2>inst���٣�
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
 <h3>����:<%=param1 %></h3>
  <h3>����:<%=param2 %></h3> --%>
  
 <%
     request.setCharacterEncoding("GBK");
     Enumeration enu = request.getParameterNames();
 %> 
 <table border="1">
      <tr>
         <td>��������</td>
         <td>����ֵ</td>
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