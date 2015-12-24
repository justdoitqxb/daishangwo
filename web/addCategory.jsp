<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dsw.bean.*,java.util.*" %>
<%@ page import="com.dsw.service.impl.CatlogServiceImpl,com.dsw.service.CatlogService,com.dsw.bean.Catlog"%>
<%@page import="java.util.List" %>    
<%@page import="org.springframework.web.context.WebApplicationContext" %>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils" %> 
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
<%    
WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(getServletContext());      
CatlogService cats = (CatlogService)ctx.getBean("catlogServiceImpl");
List<Catlog> catlogs = cats.getCatlogList();
%>
<div>
	<input type="radio" name="choice" onclick="javascript:ChangeStatus(1);"/>一级目录
	<input type="radio" name="choice" onclick="javascript:ChangeStatus(2);"/>二级目录
	<input type="radio" name="choice" checked onclick="javascript:ChangeStatus(3);"/>三级目录
</div>

<form id="form1" class="close" action="addCatlog.action" method="post" onsubmit="return firstCheck();" > 
	<fieldset > 
		<legend>添加一级目录</legend> 
		<table width=80% > 
		<tbody> 
			<tr>
				<td width=40% align="right"><label for="t1">名称:</label></td> 
				<td><input id="first" type="text" name="addCatlogForm.firstLevel"></td> 
			</tr> 
			<tr>
				<td width=40% align="right" rowspan=2><input type="submit" value="submit" /></td> 
				<td><input type="reset" value="reset" /></td> 
			</tr> 
		</tbody> 
		</table> 
	</fieldset> 
</form> 

<form id="form2" class="close" action="addCatlog.action" method="post" onsubmit="return secondCheck();"> 
	<fieldset > 
		<legend>添加二级目录</legend> 
		<table width=80% > 
		<tbody> 
			<tr>
				<td width=40% align="right"><label for="t1">父类名称:</label></td> 
				<td>
					<select id="form2select" name="addCatlogForm.firstLevel">
						<option selected>请选择</option>
						<%
						for(Catlog cat:catlogs){ 
							if(cat.getParent_id() == 0){
						%>
							<option value="<%=cat.getId()%>"><%=cat.getCategory()%></option>
						<%
							}
						} %>
					</select>
				</td> 
			</tr>
			<tr>
				<td width=40% align="right"><label for="t1">名称:</label></td> 
				<td><input id="second" type="text" name="addCatlogForm.secondLevel"></td> 
			</tr> 
			<tr>
				<td width=40% align="right" rowspan=2><input type="submit" value="submit" /></td> 
				<td><input id="Reset1" type="reset" value="reset" /></td> 
			</tr> 
		</tbody> 
		</table> 
	</fieldset> 
</form>

<form id="form3" class="open" action="addCatlog.action" method="post" onsubmit="return thirdCheck();"> 
	<fieldset > 
		<legend>添加三级目录</legend> 
		<table width=80% > 
		<tbody>
			<tr>
				<td width=40% align="right"><label for="t1">父类名称:</label></td> 
				<td>
					<select id="s1" name="addCatlogForm.firstLevel" onChange="redirec();">
						<option selected>请选择</option>
						<%
						for(Catlog cat:catlogs){ 
							if(cat.getParent_id() == 0){
						%>
							<option value="<%=cat.getId()%>"><%=cat.getCategory()%></option>
						<%
							}
						} %>
					</select>
					<select id="s2" name="addCatlogForm.secondLevel">
						<option value="请选择" selected>请选择</option>
					</select>
				</td> 
			</tr> 
			<tr>
				<td width=40% align="right"><label for="t1">名称:</label></td> 
				<td><input id="third" type="text" name="addCatlogForm.thirdLevel"></td> 
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
	//定义基本选项
	select2[i][0] = new Option("请选择", " ");
}
<%
int count = 1;
int curID = 0;
int childCount = 1;
for(Catlog cat:catlogs){ 
	if(cat.getParent_id() != 0){
		if(curID == 0){
			curID = cat.getParent_id();
		}
		if(curID != cat.getParent_id()){
			curID = cat.getParent_id();
			count++;
			childCount = 1;
		}
%>
		select2[<%=count%>][<%=childCount%>] = new Option("<%=cat.getCategory()%>", "<%=cat.getId()%>");
<%
	childCount++;
	}
}%>

//联动函数
function redirec()
{
	x = document.getElementById("s1").options.selectedIndex;
	//alert(select2[x].length);
	temp = document.getElementById("s2");
	for (m=temp.options.length-1;m>0;m--){
		temp.options[m]=null
	}  
	for (i=0;i<select2[x].length;i++){ 
		temp.options[i]=new Option(select2[x][i].text,select2[x][i].value);
		}
	document.getElementById("s2").options[0].selected=true;
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

function firstCheck(){
	if(document.getElementById("first").value == ""){
		return false;
	}
	return true;
}

function secondCheck(){
	if(document.getElementById("form2select").options[document.getElementById("form2select").options.selectedIndex].text == "请选择"){
		return false;
	}
	if(document.getElementById("second").value == ""){
		return false;
	}
	return true;
}

function thirdCheck(){
	if(document.getElementById("s1").options[document.getElementById("s1").options.selectedIndex].text == "请选择"){
		return false;
	}
	if(document.getElementById("s2").options[document.getElementById("s2").options.selectedIndex].text == "请选择"){
		return false;
	}
	if(document.getElementById("third").value == ""){
		return false;
	}
	return true;
}
</script>
</body>
</html>