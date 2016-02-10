<%@page import="com.BooksDB.AuthorsDAO"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.AuthorsDAO"/>
<jsp:directive.page import="com.BooksDB.model.AuthorsModel"/>
<%
        AuthorsDAO dao=new AuthorsDAO();
        request.setCharacterEncoding("gbk");
        String firstName=request.getParameter("firstName");
        String lastName=request.getParameter("lastName");
        int authors=Integer.parseInt(request.getParameter("authors"));
        AuthorsModel model=new AuthorsModel(authors,firstName,lastName);
        dao.update(model);
        response.sendRedirect("index.jsp");
%>
