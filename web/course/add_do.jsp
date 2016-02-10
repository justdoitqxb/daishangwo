<%@page import="com.BooksDB.model.TitleModel"%>
<%@page import="com.BooksDB.TitleDAO"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="titleModel" class="com.BooksDB.model.TitleModel">
	<jsp:setProperty name="titleModel" property="*" />
</jsp:useBean>
<%
	TitleDAO dao = new TitleDAO();
	TitleModel myModel = dao.get(titleModel.getIsbn());
	if (myModel != null) {
	  out.println("<script langugage='javascript'>alert('isbn已经存在！');history.go(-1);</script>");
	}
        else
	 dao.save(titleModel);
%>
<html>

	<head>
		<title>图书管理</title>
		<link rel=stylesheet href="../inc/main.css" type="text/css">
	</head>
	<table align="center" width="150">
		<caption>
			图书添加成功！
		</caption>
		<tr>
			<td>
				<a href="add.jsp">返回添加页面</a>
			</td>
		</tr>
		<tr>
			<td>
				<a href="index.jsp">返回图书列表页面</a>
			</td>
		</tr>
	</table>
</html>


