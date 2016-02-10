<%@page import="com.BooksDB.AuthorsDAO"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.AuthorsDAO"/>
<jsp:directive.page import="com.BooksDB.model.AuthorsModel"/>
<%
    AuthorsDAO dao=new AuthorsDAO();
    request.setCharacterEncoding("UTF-8");
    String firstName=request.getParameter("firstName");
    String lastName=request.getParameter("lastName");
    AuthorsModel model=new AuthorsModel(0,firstName,lastName);
    dao.save(model);
    response.sendRedirect("newBook.jsp");
%>
