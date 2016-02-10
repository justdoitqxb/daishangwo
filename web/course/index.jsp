<%@page import="com.runvit.commom.util.ParamUtil"%>
<%@page import="com.runvit.commom.util.PageUtil"%>
<%@page import="com.BooksDB.model.TitleModel"%>
<%@page import="com.BooksDB.TitleDAO"%>
<%@page import="com.BooksDB.model.publishersModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.publishersDAO"/>
<%@include file="/checkLoginSession.jsp" %>
<%
        TitleDAO titleDAO=new TitleDAO();
	String isbn = ParamUtil.getString(request.getParameter("isbn"));
	String title = ParamUtil.getString(request.getParameter("title"));
	List<TitleModel> titles = titleDAO.quickSearch(isbn, title);
	String queryParam = "&isbn="+isbn+"&title="+title;
%>
<html>
    <head>
        <title>图书管理</title>
        <link rel=stylesheet href="../css/main.css" type="text/css">
        <style type="text/css">
        </style> 
            <script type="text/javascript">
            function checkForm(myform){        
                  var FName=myform.isbn.value;
                  var LName=myform.name.value;
                  if(FName == ""){alert('ISBN不能为空');
                  myform.isbn.focus();
                  return false;}
                  if(LName ==""){
                     alert('书名不能为空');
                     myform.name.focus();
                     return false;
                 }
              return true;
            }
        </script>
    </head>
    <body>
        <form action="index.jsp" method="post" name="form1" onsubmit="return checkForm(this);">
            <table align=center width=700 >
                <tr><td width="700" colspan="8" align="center"><a href="<%= request.getContextPath() %>/books/add.jsp"><h1>添加新图书</h1></a></td></tr>
            </table>
        </form>
            <table align=center width=700 >
                <caption>图书列表</caption>
                <tr>
	        <th >序号</th>
		<th >图书ISBN</th>
		<th>书名</th>
		<th >出版社名称</th>
		<th>价格</th>
		<th >版本号</th>
		<th>出版年份</th>
		<th>操作</th>             
                </tr>
 <%
				int pageSize = 16; //每页显示条数
				int recordCount = titles.size(); //记录总数

				String currentPageStr = request.getParameter("page"); 
				int currentPage = 1; //当前页
				if(currentPageStr != null) {
					currentPage = Integer.parseInt(currentPageStr);
				}

				PageUtil pageUtil = new PageUtil(pageSize, recordCount, currentPage);

				
			%>
			<%  
                            for(int i=pageUtil.getFromIndex(); i<pageUtil.getToIndex(); i++) {
			    TitleModel model = titles.get(i);
			%>
                <tr>
                    <td ><%=(i+1) %></td>
                    <td ><%=model.getIsbn()%></td>
                    <td><a href="bookdetails.jsp?isbn=<%= model.getIsbn() %>"><%=model.getTitle()%></a></td>
                    <td><%=model.getPublisherName()%></td>
                    <td><%=model.getPrice()%></td>
                    <td><%=model.getEditionNumber()%></td>
                    <td><%=model.getCopyright()%></td>
                    <td><a href="modify.jsp?isbn=<%=model.getIsbn() %>&page=<%=pageUtil.getCurrentPage() %>&qisbn=<%=isbn %>&title=<%=title %>">修改</a>&nbsp;|&nbsp;&nbsp;<a href="delete.jsp?isbn=<%=model.getIsbn() %>&page=<%=pageUtil.getCurrentPage() %>&qisbn=<%=isbn %>&title=<%=title %>" onclick="return confirm('确定要删除吗？');">删除</a></td>     
                </tr>
   <%
     }
   %>
   
   <tr>
                    <td colspan="8" align="right">
					记录总数 <%=recordCount %>条 当前页/总页数  <%=pageUtil.getCurrentPage() %>/<%=pageUtil.getPageCount() %>  
					<a href="index.jsp?page=1<%= queryParam %>">首页</a>   
					<a href="index.jsp?page=<%=pageUtil.getPrevPage() %><%=queryParam %>">上页</a> 
					<a href="index.jsp?page=<%=pageUtil.getNextPage() %><%=queryParam %>">下页</a> 
					<a href="index.jsp?page=<%=pageUtil.getPageCount() %><%=queryParam %>">末页</a>
					跳到<input type="text" size="3" id="newPage">页 <input type="button" value="Go" onclick="processGoPage() ;">
					<script type="text/javascript">
					function processGoPage() {
						var newPage = document.getElementById("newPage").value;
						var reg = /\d+$/;
						if(!newPage.match(reg)){
							alert('页面格式非法！');
							document.getElementById("newPage").focus();
						}else {
							window.location.href="index.jsp?page="+newPage;
						}
					}
					</script>
				</td>
			</tr>
            </table>
    </body>
</html>