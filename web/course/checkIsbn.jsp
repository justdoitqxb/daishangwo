<%@page import="com.BooksDB.TitleDAO"%>
<%@page import="com.BooksDB.model.TitleModel"%>
<%@page contentType="text/html;charset=gbk"%>
<html>
	<head>
		<title>图书管理信息系统-图书管理</title>
		<link rel=stylesheet href="../css/main.css" type="text/css">
		<style type="text/css">
			table select {width: 200px;}
			.tcolumn {background: #DDDDFF;}
		</style>
	</head>
	<body>	
	<p align="center">
		<%
			String isbn = request.getParameter("isbn");
			TitleModel model = new TitleDAO ().get(isbn);
			if(model == null) {
				out.println("isbn不存在， 您可以正常使用！");
			}
			else
			{
				out.println("isbn已经存在， 不能录入！");
			}
		 %>
	<p>
	<p align="center">
		<a href="#" onclick="javascript:window.close(); return false;">关闭窗口</a>
	</p>
	</body>
</html>
