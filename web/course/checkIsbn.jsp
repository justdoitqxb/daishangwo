<%@page import="com.BooksDB.TitleDAO"%>
<%@page import="com.BooksDB.model.TitleModel"%>
<%@page contentType="text/html;charset=gbk"%>
<html>
	<head>
		<title>ͼ�������Ϣϵͳ-ͼ�����</title>
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
				out.println("isbn�����ڣ� ����������ʹ�ã�");
			}
			else
			{
				out.println("isbn�Ѿ����ڣ� ����¼�룡");
			}
		 %>
	<p>
	<p align="center">
		<a href="#" onclick="javascript:window.close(); return false;">�رմ���</a>
	</p>
	</body>
</html>
