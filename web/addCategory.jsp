<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dsw.bean.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User register page</title>
<style type="text/css">
.open{
	display:inline;
}
.close{
	display:none;
}
</style>
</head>
<body>

<div>
	<input type="radio" name="choice" onclick="javascript:ChangeStatus(1);"/>一级目录
	<input type="radio" name="choice" onclick="javascript:ChangeStatus(2);"/>二级目录
	<input type="radio" name="choice" checked onclick="javascript:ChangeStatus(3);"/>三级目录
</div>

<form id="form1" class="close" action="login.action" method="post" > 
	<fieldset > 
		<legend>添加一级目录</legend> 
		<table width=80% > 
		<tbody> 
			<tr>
				<td width=40% align="right"><label for="t1">名称:</label></td> 
				<td><input type="text" name="loginForm.email"></td> 
			</tr> 
			<tr>
				<td width=40% align="right" rowspan=2><input type="submit" value="submit" /></td> 
				<td><input id="Reset1" type="reset" value="reset" /></td> 
			</tr> 
		</tbody> 
		</table> 
	</fieldset> 
</form> 

<form id="form2" class="close" action="login.action" method="post" > 
	<fieldset > 
		<legend>添加二级目录</legend> 
		<table width=80% > 
		<tbody> 
			<tr>
				<td width=40% align="right"><label for="t1">父类名称:</label></td> 
				<td>
					<select name="catlogForm.parent">
						<option selected>请选择</option>
						<%List<Catlog> catlogs = new ArrayList<Catlog>();
						Catlog c1 = new Catlog();
						c1.setId(1);
						c1.setCategory("c1");
						catlogs.add(c1);
						Catlog c2 = new Catlog();
						c2.setId(2);
						c2.setCategory("c2");
						catlogs.add(c2);
						for(Catlog cat:catlogs){ %>
							<option value="<%=cat.getId()%>"><%=cat.getCategory()%></option>
						<%} %>
					</select>
				</td> 
			</tr>
			<tr>
				<td width=40% align="right"><label for="t1">名称:</label></td> 
				<td><input type="text" name="loginForm.email"></td> 
			</tr> 
			<tr>
				<td width=40% align="right" rowspan=2><input type="submit" value="submit" /></td> 
				<td><input id="Reset1" type="reset" value="reset" /></td> 
			</tr> 
		</tbody> 
		</table> 
	</fieldset> 
</form>

<form id="form3" class="open" action="login.action" method="post" > 
	<fieldset > 
		<legend>添加三级目录</legend> 
		<table width=80% > 
		<tbody>
			<tr>
				<td width=40% align="right"><label for="t1">父类名称:</label></td> 
				<td>
					<select id="s1" name="select1" onChange="redirec();">
						<option selected>请选择</option>
						<option value="5">脚本语言</option>
						<option value="6">高级语言</option>
						<option value="7">其他语言</option>
					</select>
					<select id="s2" name="select2">
						<option value="请选择" selected>请选择</option>
					</select>
				</td> 
			</tr> 
			<tr>
				<td width=40% align="right"><label for="t1">名称:</label></td> 
				<td><input type="text" name="loginForm.email"></td> 
			</tr> 
			<tr>
				<td width=40% align="right" rowspan=2><input type="submit" value="submit" /></td> 
				<td><input id="Reset1" type="reset" value="reset" /></td> 
			</tr> 
		</tbody> 
		</table> 
	</fieldset> 
</form>
<script type="text/javascript">
var select1_len = document.getElementById("s1").options.length;
var select2 = new Array(select1_len);
//把一级菜单都设为数组
for (i=0; i<select1_len; i++){
	select2[i] = new Array();
}
//定义基本选项
select2[0][0] = new Option("请选择", " ");
<%
for(int i=1;i<4;i++){
	for(int j=0; j<3; j++){
%>
select2[<%=i%>][<%=j%>] = new Option("<%=i*i+j*j%>", " ");
<%
	}
}%>

//联动函数
function redirec()
{
	x = document.getElementById("s1").options.selectedIndex;
	alert(select2[1][0].text);
	for (i=0;i<select2[x].length;i++){ 
		document.getElementById("s2").options[i]=new Option(select2[x][i].text,select2[x][i].value);
		}
	temp.options[0].selected=true;
}

function ChangeStatus(level)
{
	if (level==1)
	{
		document.getElementById("form1").className="open";
		document.getElementById("form2").className="close";
		document.getElementById("form3").className="close";
	}else if(level==2){
		document.getElementById("form1").className="close";
		document.getElementById("form2").className="open";
		document.getElementById("form3").className="close";
	}else{
		document.getElementById("form1").className="close";
		document.getElementById("form2").className="close";
		document.getElementById("form3").className="open";
	}	
}
</script>
</body>
</html>