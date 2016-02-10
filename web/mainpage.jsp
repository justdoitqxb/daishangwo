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
<script type="text/javascript" src="js/Mainpage.js"></script>
</head>
<center>
<body>
<div>
    <div> <img src="img/title.png" /></div>
       <div id="menu">
   		<div id="div3" class="level">
       	 	<div id="div31" class="level1"></div>
            <div id="div32" class="level2"><a href="<%= request.getContextPath()%>/mainpage.jsp">首页</a></div>
   		 </div>
         <div id="div4" class="level">
       	 	<div id="div41" class="level1"></div>
            <div id="div42" class="level2"><a href="javascript:#">分类导航</a></div>
    		<div id="div43" class="level3"> 
                    <a href="javascript:#">最新书籍</a><br /><br />
                    <a href="javascript:#">图书</a><br /><br />
                    <a href="javascript:#">期刊</a><br /><br />
                    <a href="javascript:#">杂志</a>
                </div>
   		 </div>
         <div id="div5" class="level">
       	 	<div id="div51" class="level1"></div>
            <div id="div52" class="level2"><a href="javascript:#">图书管理</a></div>
    		<div id="div53" class="level3">
                    <a href="javascript:#">借阅</a><br /><br />
                    <a href="javascript:#">证卡办理</a><br /><br />
                    <a href="javascript:#">新生导航</a>
                </div>
   		 </div>
         <div id="div6" class="level">
       	 	<div id="div61" class="level1"></div>
            <div id="div62" class="level2"><a href="javascript:#">电子图书</a></div>
    		<div id="div63" class="level3">
                    <a href="javascript:#">学刊快报</a><br /><br />
                    <a href="javascript:#">免费资源</a><br /><br />
                    <a href="javascript:#">数据库</a>
                </div>
   		 </div>
         <div id="div7" class="level">
       	 	<div id="div71" class="level1"></div>
            <div id="div72" class="level2"><a href="javascript:#">服务指南</a></div>
    		<div id="div73" class="level3">
                    <a href="javascript:#">借阅规章</a><br /><br />
                    <a href="javascript:#">在线帮助</a><br /><br />
                    <a href="javascript:#">联系我们</a>
                </div>
   	</div>
    </div>
    <div style="width:1024px; height:160px; overflow:hidden;">

    	<div style="width:720px; height:150px; float:left; border:1px solid black;">
        	<h3>最新图书动态</h3>
        	<li>qqqqqqqqqqqqqqqqqqqqqqqqqq</li>
        	<li>wwwwwwwwwwwwwwwwwwwwwwwwww</li>
        	<li>tttttttttttttttttttttttttt</li>
        </div>
    	<div style="width:300px; height:150px; float:left; border:1px solid black; z-index: 100;">
            <div onclick="window.location.href='index.jsp';" style="float:left"><img src="images/Admin.png" width="150" height="150" /></div>
        	<div id="divu">
			<div id="divu1"><img src="images/user.jpg" width="150" height="150" /></div>
    			<div id="divu2"></div>
                        <div id="divu3" onclick="document.getElementById('log').style.display='block'"><img src="images/user.png" width="150" height="150" /></div>
                     <div id="log" style="width:300px; height: 138px; border: 1px dashed black; display: none; background: #66CCFF; position:absolute; right:300px; top: 5px;">
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
    	<div style="width:1024px;">

<script>
var oLoad = getByClass(document.body, 'pxs_loading')[0];
var oImgBox = getByClass(document.body,'pxs_slider_wrapper')[0];
var imgs = document.getElementsByTagName('img');
for(var i=0;i<imgs.length;i++)
{
	imgs[i].onload = function()
	{
		oLoad.style.display = 'none';
	}
	oImgBox.style.display = 'block';
}
</script>
</div>
    <div style="width:1024px; height:160px; overflow:hidden;">

    	<div style="width:720px; height:150px; float:left; border:1px solid black;">
        	<h3>最新图书动态</h3>
        	<li>qqqqqqqqqqqqqqqqqqqqqqqqqq</li>
        	<li>wwwwwwwwwwwwwwwwwwwwwwwwww</li>
        	<li>tttttttttttttttttttttttttt</li>
        </div>
    	<div style="width:300px; height:150px; float:left; border:1px solid black;">
        </div>
    </div>
   	<div style="width:1024px; height:50px; border:1px solid black; background:#2e9cb3"></div>
  </div>
    <div id="div1"><img src="images/p11.png" width="100" height="150" /></div>
  <div id="div2"><img src="images/p13.png" width="100" height="150" /></div>
</body>
</center>
</html>

