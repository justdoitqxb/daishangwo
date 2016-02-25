<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学道首页</title>
<link rel="stylesheet" type="text/css" href="css/muster.css" />
<script type="text/javascript" src="js/jsFrame.js"></script>
<script type="text/javascript" src="js/siteheader.js"></script>
</head>
<center>
<body>
<jsp:include page="header.jsp" flush="true"/>
<div>
	<div style="height:30px;"></div>
    <div> <img src="images/title.png" /></div>
       <div id="menu">
   		 <div id="div3" class="level">
       	 	<div id="div31" class="level1"></div>
            <div id="div32" class="level2"><a href="<%= request.getContextPath()%>/mainpage.jsp">首页</a></div>
   		 </div>
         <div id="div4" class="level">
       	 	<div id="div41" class="level1"></div>
            <div id="div42" class="level2"><a href="navigation.jsp">课程分类</a></div>
    		<div id="div43" class="level3"> 
                    <a href="javascript:#">艺术</a><br /><br />
                    <a href="javascript:#">体育</a><br /><br />
                    <a href="javascript:#">生活</a><br /><br />
                    <a href="javascript:#">商务</a><br /><br />
                    <a href="javascript:#">学科</a>
                </div>
   		 </div>
         <div id="div5" class="level">
       	 	<div id="div51" class="level1"></div>
            <div id="div52" class="level2"><a href="javascript:#">下载App</a></div>
    		<div id="div53" class="level3">
                    <a href="javascript:#">Android</a><br /><br />
                    <a href="javascript:#">IOS</a><br /><br />
                </div>
   		 </div>
         <div id="div6" class="level">
       	 	<div id="div61" class="level1"></div>
            <div id="div62" class="level2"><a href="javascript:#">云课堂</a></div>
    		<div id="div63" class="level3">
                    <a href="javascript:#">免费资源</a><br /><br />
                    <a href="javascript:#">视频教程</a><br /><br />
                    <a href="javascript:#">微课堂</a>
                </div>
   		 </div>
         <div id="div7" class="level">
       	 	<div id="div71" class="level1"></div>
            <div id="div72" class="level2"><a href="javascript:#">服务指南</a></div>
    		<div id="div73" class="level3">
                    <a href="javascript:#">课程规章</a><br /><br />
                    <a href="javascript:#">在线帮助</a><br /><br />
                    <a href="javascript:#">联系我们</a>
                </div>
   		 </div>
    </div>
  </div> 
</body>
</center>
</html>