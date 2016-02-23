<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学道首页</title>
<link rel="stylesheet" type="text/css" href="css/muster.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jsFrame.js"></script>
<script type="text/javascript" src="js/mainpage.js"></script>
</head>
<center>
<body>
<div>
	<jsp:include page="siteheader.jsp" flush="true"/>

    <div style="width:1024px; height:500px; overflow:hidden;">

    	<div style="width:720px; height:498px; float:left; border:1px solid black;">
        	<h3>导航|最新动态</h3>
        	<li><a href="addCategory.jsp">添加目录</a></li>
        	<li><a href="login.jsp">登录</a></li>
        	<li><a href="register.jsp">注册</a></li>
        	<li><a href="addCourse.jsp">添加课程</a></li>
        	<li><a href="modifyPassword.jsp">修改密码</a></li>
        	<li><a href="modifyPhoto.jsp">修改头像</a></li>
        </div>
    	<div style="width:300px; height:498px; float:left; border:1px solid black; z-index:5;">
            <div onclick="window.location.href='mainpage.jsp';" style="float:left"><img src="images/Admin.png" width="150" height="150" /></div>
        	<div id="divu">
				<div id="divu1"><img src="images/user.jpg" width="150" height="150" /></div>
    			<div id="divu2"></div>
                     <div id="divu3" onclick="document.getElementById('log').style.display='block'"><img src="images/user.png" width="150" height="150" /></div>
                     <div id="log" style="width:300px; height: 138px; border: 1px dashed black; display: none; background:white; position:absolute; right:300px; top: 5px;">
       	<form action="<%= request.getContextPath() %>/login" name="form1" method="post" onsubmit="return checkForm(this);">
        <table align=center>
		<tr>
                <td><s:property value="getText('login.username')" /></td>
		<td><input type="text" style="width:200px;height: 50px;" name="username"/></td>
		</tr>
                <tr>
		<td><s:property value="getText('login.password')" /></td>
		<td><input type="password" style="width:200px; height: 50px;" name="password" /></td>
		</tr>
		<tr>
		<td colspan=2 align=center>
		<input type="submit" value="<s:property value="getText('login.submit')" />" />
                <input type="button" value="<s:property value="getText('login.close')" />"  onclick="document.getElementById('log').style.display='none';"/>
                </td>
		</tr>
	</table>
       </form>
                   </div>
		</div>           
        </div>
    </div>

    <div style="width:1024px; height:360px; overflow:hidden;">

    	<div style="width:1022px; height:350px; float:left; border:1px solid black;">
        	<h3>猜你喜欢</h3>
        	<li>qqqqqqqqqqqqqqqqqqqqqqqqqq</li>
        	<li>wwwwwwwwwwwwwwwwwwwwwwwwww</li>
        	<li>tttttttttttttttttttttttttt</li>
        </div>
    </div>
    <div style="width:1024px; height:360px; overflow:hidden;">

    	<div style="width:1022px; height:350px; float:left; border:1px solid black;">
        	<h3>畅销课程</h3>
        	<li>qqqqqqqqqqqqqqqqqqqqqqqqqq</li>
        	<li>wwwwwwwwwwwwwwwwwwwwwwwwww</li>
        	<li>tttttttttttttttttttttttttt</li>
        </div>
    </div>
    <div style="width:1024px; height:360px; overflow:hidden;">

    	<div style="width:1022px; height:350px; float:left; border:1px solid black;">
        	<h3>名师大咖</h3>
        	<li>qqqqqqqqqqqqqqqqqqqqqqqqqq</li>
        	<li>wwwwwwwwwwwwwwwwwwwwwwwwww</li>
        	<li>tttttttttttttttttttttttttt</li>
        </div>
    </div>
   	<jsp:include page="footer.jsp" flush="true"/>
  </div>
  
  <div id="div1"><img src="images/ad1.png" width="100" height="150" /></div>
  <div id="div2"><img src="images/ad2.png" width="100" height="150" /></div>
</body>
</center>
</html>