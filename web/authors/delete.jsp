<%@page import="com.BooksDB.AuthorsDAO"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.AuthorsDAO"/>
<%
    AuthorsDAO dao=new AuthorsDAO();
    dao.delete(Integer.parseInt(request.getParameter("Id")));
    response.sendRedirect("newBook.jsp");
%>
