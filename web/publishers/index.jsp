<%@page import="com.BooksDB.model.publishersModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.publishersDAO"/>
<%@include file="/checkLoginSession.jsp" %>
<%
publishersDAO dao=new publishersDAO();
List<publishersModel> publishers =dao.queryAll();
%>
<html>
    <head>
        <title>出版社管理</title>
        <link rel=stylesheet href="../css/main.css" type="text/css">
<script type="text/javascript">
  function checkForm(myform){        
       var pName=myform.publisherName.value;
       if(pName == ""){
         alert('出版社名不能为空');
         myform.publisherName.focus();
         return false;
        }
        return true;
 }
</script>
    </head>
    <body>
        <form action="add.jsp" method="post" name="form1" onsubmit="return checkForm(this);">
            <table align=center width=700 >
                <tr>
                    <td>
                        出版社名<input type="test" name="publisherName" size="20">
                        <input type="submit" value="添加出版社">
                    </td>                   
                </tr>
            </table>
        </form>
            <table align=center width=700 >
                <caption>出版社列表</caption>
                    
                <tr>
                    <th>出版社ID</th>
                    <th>出版社名</th>
                     <th>操作</th>
                </tr>
               <%
               for(int i=0;i<publishers.size();i++)   {   
                  publishersModel model=publishers.get(i);     
               %>
                <tr>
                    <% int id=model.getPublisherId(); %>
                    <td><%= id %></td>                  
                    <td><%= model.getPublisherName() %></td>
                    <td><a href="modify.jsp?Id=<%=id%>">修改</a>&nbsp;|&nbsp;&nbsp;<a href="delete.jsp?id=<%=id%>" onclick="return confirm('确定要删除吗？');">删除</a></td>
                </tr>
           <%}%>
            </table>
    </body>
</html>