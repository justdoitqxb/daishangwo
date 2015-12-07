<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User register page</title>
</head>
<body>
<form  action="modifyPassword.action" method="post" > 
	<fieldset > 
		<legend>修改密码</legend> 
		<table width=100% > 
		<tbody> 
			<tr>
				<td width=40% align="right"><label for="t1">旧密码:</label></td> 
				<td><input type="password" name="modifyPasswordForm.oldPassword"></td> 
			</tr> 
			<tr>
				<td width=40% align="right"><label>新密码：</label></td> 
				<td><input type="password" name="modifyPasswordForm.newPassword" /></td> 
			</tr>
			<tr>
				<td width=40% align="right"><label>确定新密码：</label></td> 
				<td><input type="password" name="modifyPasswordForm.conformNewPassword" /></td> 
			</tr>
			<tr>
				<td width=40% align="right" rowspan=2></td> 
				<td><input type="submit" value="submit" /><input id="Reset1" type="reset" value="reset" /></td> 
			</tr> 
		</tbody> 
		</table> 
	</fieldset> 
</form> 

</body>
</html>