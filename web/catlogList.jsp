<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dsw.service.impl.CatlogServiceImpl,com.dsw.service.CatlogService,com.dsw.bean.Catlog"%>
<%@page import="java.util.List" %>    
<%@page import="org.springframework.web.context.WebApplicationContext" %>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
<script type="text/javascript" src="js/dtree.js"></script>
</head>
<body>
<%    
WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(getServletContext());      
CatlogService cats = (CatlogService)ctx.getBean("catlogServiceImpl");
%>
<div class="dtree">
	<p><a href="javascript: d.openAll();">展开</a> | <a href="javascript: d.closeAll();">关闭</a></p>
	<script type="text/javascript">
		d = new dTree('d');
		d.add(0,-1,'分类列表');
		<%
		for(Catlog c:cats.getCatlogList()){
		%>
		d.add(<%=c.getId()%>,<%=c.getParent_id()%>,'<%=c.getCategory()%>','example01.html');
		<%
		}
		%>
		d.add(120,0,'Recycle Bin','example01.html','','','images/trash.gif');
		document.write(d);
	</script>

</div>

</body>
</html>