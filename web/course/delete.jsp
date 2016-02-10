<%@page import="com.runvit.commom.util.ParamUtil"%>
<%@page import="com.BooksDB.TitleDAO"%>
<%@page contentType="text/html;charset=gbk" %>
<%
	TitleDAO dao = new TitleDAO();
	dao.delete(request.getParameter("isbn"));
	String url = "index.jsp";
	url = ParamUtil.appendParam(url, "isbn", request.getParameter("qisbn"));
	url = ParamUtil.appendParam(url, "page", request.getParameter("page"));
	url = ParamUtil.appendParam(url, "title", request.getParameter("title"));
	response.sendRedirect(url);		
%>
