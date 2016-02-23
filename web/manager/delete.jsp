<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.publishersDAO"/>
<%
    publishersDAO dao=new publishersDAO();
    dao.delete(Integer.parseInt(request.getParameter("id")));
    response.sendRedirect("index.jsp");
%>
