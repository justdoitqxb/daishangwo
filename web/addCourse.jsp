 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form  action="addCourse.action" enctype="multipart/form-data" method="post" > 
	<fieldset > 
		<legend>发布课程表单</legend> 
		<table width=100% > 
		<tbody> 
			<tr>
				<td width=40% align="right"><label for="t1">Email:</label></td> 
				<td><input type="text" name="registerForm.email"></td> 
			</tr> 
			<tr>
				<td width=40% align="right"><label>password：</label></td> 
				<td><input type="password" name="registerForm.password" /></td> 
			</tr>
			<tr>
				<td width=40% align="right"><label>password：</label></td> 
				<td><input type="password" name="registerForm.conformPassword" /></td> 
			</tr> 
			<tr>
				<td width=40% align="right"><label>telephone：</label></td> 
				<td><input type="text" name="registerForm.telephone" ></td> 
			</tr> 
			<tr>
				<td width=40% align="right"><label>address：</label></td> 
				<td><input type="text" name="registerForm.address" ></td> 
			</tr>
			<tr>
				<td width=40% align="right"><label>photo：</label></td> 
				<td><input type="file" name="registerForm.file" ></td> 
			</tr>
			<tr>
				<td width=40% align="right" rowspan=2><input type="submit" value="submit" /></td> 
				<td><input id="Reset1" type="reset" value="reset" /></td> 
			</tr> 
		</tbody> 
	</table> 
	</fieldset> 
</form> 
</body>
</html>