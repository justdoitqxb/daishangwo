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

	<p><a href="javascript: d.openAll();">open all</a> | <a href="javascript: d.closeAll();">close all</a></p>
	<script type="text/javascript">
		d = new dTree('d');
		d.add(0,-1,'My example tree');
		d.add(1,0,'Node 1','example01.html');
		d.add(2,0,'Node 2','example01.html');
		d.add(3,1,'Node 1.1','example01.html');
		d.add(4,0,'Node 3','example01.html');
		d.add(5,3,'Node 1.1.1','example01.html');
		d.add(6,5,'Node 1.1.1.1','example01.html');
		d.add(7,0,'Node 4','example01.html');
		d.add(8,1,'Node 1.2','example01.html');
		d.add(9,0,'My Pictures','example01.html','Pictures I\'ve taken over the years','','','img/imgfolder.gif');
		d.add(10,9,'The trip to Iceland','example01.html','Pictures of Gullfoss and Geysir');
		d.add(11,9,'Mom\'s birthday','example01.html');
		d.add(12,0,'Recycle Bin','example01.html','','','img/trash.gif');
		<%
		int count = 13;
		for(Catlog c:cats.getCatlogList()){
		%>
		d.add(<%=count%>,1,'<%=c.getCategory()%>','example01.html');
		<%
			count++;
		}
		%>
		document.write(d);
	</script>

</div>
</body>
</html>