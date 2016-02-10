<%@page import="com.BooksDB.TitleDAO"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="titleModel" class="com.BooksDB.model.TitleModel">
	<jsp:setProperty name="titleModel" property="*" />
</jsp:useBean>
<%
	TitleDAO dao = new TitleDAO();
	dao.update(titleModel);	
	String url = request.getParameter("url");
%>
<html>

	<head>
		<title>图书管理</title>
		<link rel=stylesheet href="../css/main.css" type="text/css">
	</head>
	<table align="center" width="150">
		<caption>
			图书修改成功！
		</caption>
		<tr>
			<td>
			<a  href="<%=url %>" >返回图书列表页面</a>
			</td>
		</tr>
	</table>
</html>
