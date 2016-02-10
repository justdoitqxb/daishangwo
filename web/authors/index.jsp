<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.BooksDB.model.UserModel"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>作者管理</title>
<link rel="stylesheet" type="text/css" href="css/muster.css" />
<script type="text/javascript" src="js/jsFrame.js"></script>
<script type="text/javascript" src="js/muster.js"></script>
</head>
<center>
<body>
  <div>
                    <%
               session.getAttribute("loginModel");
               UserModel loginModel=(UserModel)session.getAttribute("loginModel");
               String loginName = "";
               if(loginModel != null)
		  loginName = loginModel.getName();
                 %>
    <div> <img src="images/maintitle.png" /></div>
<div id="menu">
   		<div id="div3" class="level">
       	 	<div id="div31" class="level1"></div>
            <div id="div32" class="level2"><a href="<%= request.getContextPath() %>/mainpage.jsp">首页</a></div>
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
            <div style="font-size: 18; padding: 20px;"> 欢迎 !<%=loginName%>[<a href="<%= request.getContextPath()%>/logout.jsp">退出系统</a>]</div>
    </div> 
    <div style=" width:1022px; height:500px; border:1px solid black;">
       <div style="margin:5px; width:1014px;">
           <iframe src="<%= request.getContextPath() %>/authors/authors-list.jsp" frameborder="1" scrolling="no" width="280px" height="488px"></iframe>
           <iframe src="<%= request.getContextPath() %>/books/index.jsp" frameborder="1" scrolling="auto" width="715px" height="488px" name="target"></iframe>
        </div>
    </div>
   	<div style="width:1024px; height:50px; border:1px solid black; background:#2e9cb3"><h4>声明：</h4></div>
    </div>
    </body>
</center>
</html>