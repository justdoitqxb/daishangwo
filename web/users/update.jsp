<%@page import="com.BooksDB.UserDAO"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
       <% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="userModel" class="com.BooksDB.model.UserModel">  
    <jsp:setProperty name="userModel" property="*"/>
</jsp:useBean>
<%
        UserDAO dao=new UserDAO();       
        dao.update(userModel);
        response.sendRedirect("index.jsp");
%>
