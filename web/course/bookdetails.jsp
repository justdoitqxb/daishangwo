<%@page import="com.BooksDB.model.AuthorsModel"%>
<%@page import="com.BooksDB.model.TitleModel"%>
<%@page import="com.BooksDB.TitleDAO"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.util.List"/>
<%
	TitleDAO titleDAO = new TitleDAO();
	TitleModel model = titleDAO.get(request.getParameter("isbn"));
	List<AuthorsModel> authors = titleDAO.getAuthorModelsByIsbn(request.getParameter("isbn"));
%>
<html>
	<head>
		<title>图书管理</title>
		<link rel=stylesheet href="../css/main.css" type="text/css">
		<style type="text/css">
		table select {	width: 200px;}
			.tcolumn {background: #DDDDFF;}
		</style>
	</head>
	<body>
		<table align="center" width="700">
			<caption>图书详细信息</caption>
			<tr>
				<td width="250" class="tcolumn">图书ISBN</td>
				<td width="450">
					 <%=model.getIsbn() %>
				</td>
			</tr>
			<tr>
				<td class="tcolumn">书名</td>
				<td>
					<%=model.getTitle() %>
				</td>
			</tr>
			<tr>
				<td class="tcolumn">出版社</td>
				<td>
					<%=model.getPublisherName() %>
				</td>
			</tr>
			<tr>
				<td class="tcolumn">价格</td>
				<td>
					<%=model.getPrice() %>
				</td>
			</tr>
			<tr>
				<td class="tcolumn">出版年份</td>
				<td>
					<%=model.getCopyright() %>
				</td>
			</tr>
			<tr>
				<td class="tcolumn">版本号</td>
				<td>
					<%=model.getEditionNumber() %>
				</td>
			</tr>
			<tr>
				<td class="tcolumn">作者</td>
				<td>
				<%
					for(AuthorsModel m : authors) {
						out.println( m.getLastName()+"&nbsp;" +m.getFirstName()+"<br>");
					}
				 %>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center" class="tcolumn">
                                    <input type="button" value="返回" onclick="window.location.href='index.jsp';"><img src="../images/splitcoin.gif" />
				</td>
			</tr>
		</table>
	</html>