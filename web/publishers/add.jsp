<%@page import="com.BooksDB.publishersDAO"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.publishersDAO"/>
<jsp:directive.page import="com.BooksDB.model.publishersModel"/>
<%
    publishersDAO dao=new publishersDAO();
    request.setCharacterEncoding("UTF-8");
    String publisherName=request.getParameter("publisherName");
    publishersModel model=new publishersModel(0,publisherName);
    dao.save(model);
    response.sendRedirect("index.jsp");
%>
