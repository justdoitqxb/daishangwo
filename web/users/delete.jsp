<%@page import="com.BooksDB.UserDAO"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.AuthorsDAO"/>
<%
    UserDAO dao=new UserDAO();
    dao.delete(Integer.parseInt(request.getParameter("Id")));
        
        response.sendRedirect("index.jsp");
%>
