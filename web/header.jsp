<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jsFrame.js"></script>
<script type="text/javascript" src="js/header.js"></script>
</head>
<body>
	<div style="text-align:center; height:30px; width:100%; background:#3CB371; position:fixed; z-index:10;">
	  <div style="margin:0 auto; width:1024px;">
		<div style="margin:0 auto; float:left;">
			<span>
				<form  action="search.action" method="post" > 
					<input style="height:26px; width:300px" type="text" name="search" value="课程名/机构/老师" maxlength="255" onfocus="javascript:if(this.value=='课程名/机构/老师')this.value='';"/>
					<input style="height:26px; width:50px"type="submit" value="搜索" />
				</form>
			</span>
		</div> 
		<div style="margin:0 auto; height:30px; line-height:30px; float:right;">
			<div style="float:left">
				<a href="###">请登录</a> | <a href="###">注册</a> | 
				<a href="javascript:#">我的学道</a> |
			</div>
			<div id="cart" onMouseOver='showCart()' onMouseOut='hiddenCart()' style="float:left;">
				<div id="cart_title"><a href="javascript:#">购物车</a></div>
				<div id="cart_body" style="display:none;">
					<ul>生成购物车内容</ul>
					<ul style="background:yellow"><a href="javascript:#">去结算</a></ul>
				</div>
			</div>
		</div>
		<div style="clear:both"></div><!--兼容-->
	  </div>
	</div>
</body>
</html>