<%@page contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>

<title>requestҳ������</title>
</head>
<body>
   <form action="requestHead.jsp" method="post" >
    ����: <input type="text" name="uname"><br>
    �Ա�  <input type="radio" name="sex" value="��" checked="checked">��
       <input type="radio" name="sex" value="Ů">Ů<br>
    ���У�<select name="city">
	       <option value="����">����</option>
	       <option value="�쾩">�쾩</option>
	       <option value="�Ͼ�">�Ͼ�</option>
	       <option value="�Ϻ�">�Ϻ�</option>
	       <option value="����">����</option>
	       <option value="�人">�人</option>
	       <option value="����">����</option>
     </select><br>
         ��Ȥ��       <input type="checkbox" name="**inst" value="����">����
          <input type="checkbox" name="**inst" value="����">����
          <input type="checkbox" name="**inst" value="��Ӿ">��Ӿ
          <input type="checkbox" name="**inst" value="����">����
          <input type="checkbox" name="**inst" value="����">����<br>
    ���ҽ��ܣ�<textarea rows="10" cols="20" name="note">
         </textarea><br>
          <input type="hidden" value="1" name="id">
          <input type="submit" value="�ύ">
          <input type="reset" value="����">
   </form>
</body>
</html>