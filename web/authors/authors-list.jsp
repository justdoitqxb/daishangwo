<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List</title>
    </head>

    <body>
        <br />
        <div style="text-align: left; padding-left: 30px;">
        <h4>
            <a href="<%= request.getContextPath() %>/authors/newBook.jsp" target="target">更改密码</a><img src="../images/righticon.gif" /><br />
            <a href="<%= request.getContextPath() %>/authors/newBook.jsp" target="target">作者管理</a><img src="../images/righticon.gif" /><br />
            <a href="<%= request.getContextPath() %>/books/index.jsp"  target="target">图书管理</a> <img src="../images/righticon.gif" /><br />
            <a href="<%= request.getContextPath() %>/authors/newBook.jsp" target="target">类别管理</a><img src="../images/righticon.gif" /><br />
            <a href="<%= request.getContextPath() %>/books/book-search.jsp"  target="target">图书查询</a><img src="../images/righticon.gif" /> <br />
            <a href="<%= request.getContextPath() %>/users/index.jsp"  target="target">用户管理</a><img src="../images/righticon.gif" /> <br />
            <a href="<%= request.getContextPath() %>/publishers/index.jsp"  target="target">出版社管理</a><img src="../images/righticon.gif" /><br />
        </h4>
        </div>
    </body>
</html>
