<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学道登陆</title>
</head>
<center>
<body>
<jsp:include page="siteheader.jsp" flush="true"/>

<div style=" width:1022px; height:500px; border:1px solid black;">
<form  action="login.action" method="post" > 
	<fieldset > 
		<legend>用户登录</legend> 
		<table width=100% > 
		<tbody> 
			<tr>
				<td width=40% align="right"><label for="t1">Email:</label></td> 
				<td><input type="text" name="loginForm.email"></td> 
			</tr> 
			<tr>
				<td width=40% align="right"><label>password：</label></td> 
				<td><input type="password" name="loginForm.password" /></td> 
			</tr>
			<tr>
				<td width=40% align="right" rowspan=2><input type="submit" value="submit" /></td> 
				<td><input id="Reset1" type="reset" value="reset" /></td> 
			</tr> 
		</tbody> 
		</table> 
	</fieldset> 
</form> 
</div>

<jsp:include page="footer.jsp" flush="true"/>
</body>
</center>
</html>