
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.publishersDAO"/>
<jsp:directive.page import="com.BooksDB.model.publishersModel"/>
<%
    publishersDAO dao=new publishersDAO();
        request.setCharacterEncoding("UTF-8");
        String publisherName=request.getParameter("publisherName");
       
        
        int publisherId=Integer.parseInt(request.getParameter("publisherId"));
        publishersModel model=new publishersModel(publisherId,publisherName);
        dao.update(model);
        response.sendRedirect("index.jsp");
%>
