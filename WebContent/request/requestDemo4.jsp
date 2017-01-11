<%@page contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@page import="java.util.*" %>
<%@page errorPage="error.jsp"%>
<html> 
<head>

<title>request页面属性</title>
</head>
<body>
   <form action="requestHead.jsp" method="post" >
    姓名: <input type="text" name="uname"><br>
    性别：  <input type="radio" name="sex" value="男" checked="checked">男
       <input type="radio" name="sex" value="女">女<br>
    城市：<select name="city">
	       <option value="北京">北京</option>
	       <option value="天京">天京</option>
	       <option value="南京">南京</option>
	       <option value="上海">上海</option>
	       <option value="深圳">深圳</option>
	       <option value="武汉">武汉</option>
	       <option value="河南">河南</option>
     </select><br>
         兴趣：       <input type="checkbox" name="**inst" value="唱歌">唱歌
          <input type="checkbox" name="**inst" value="跳舞">跳舞
          <input type="checkbox" name="**inst" value="游泳">游泳
          <input type="checkbox" name="**inst" value="下棋">下棋
          <input type="checkbox" name="**inst" value="看书">看书<br>
    自我介绍：<textarea rows="10" cols="20" name="note">
         </textarea><br>
          <input type="hidden" value="1" name="id">
          <input type="submit" value="提交">
          <input type="reset" value="重置">
   </form>
</body>
</html>