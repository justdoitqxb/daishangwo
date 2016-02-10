<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.BooksDB.model.AuthorsModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.AuthorsDAO"/>
 <%@include file="/checkLoginSession.jsp" %>
<%
AuthorsDAO dao=new AuthorsDAO();
List<AuthorsModel> authors =dao.queryAll();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加新书</title>
         <link rel=stylesheet href="<%=request.getContextPath()%>/css/main.css" type="text/css">
         <script type="text/javascript">
            function checkForm(myform){
                  var FName=myform.firstName.value;
                  var LName=myform.lastName.value;
                  if(FName == ""){alert('名不能为空');
                  myform.firstName.focus();
                  return false;}
              if(LName ==""){alert('姓不能为空');
                  myform.lastName.focus();
                  return false;}
              return true;
            }
        </script>
    </head>
    <body>
              <form action="add.jsp" method="post" name="form1" onsubmit="return checkForm(this);">
            <table align=center width=690 >
                <tr>
                    <td>
                        姓:<input type="test" name="lastName" size="20">
                        名:<input type="test" name="firstName" size="20">
                        <input type="submit" value="添加新作者">
                    </td>
                </tr>
            </table>
        </form>
            <table align=center width=690 >
                <caption>作者列表</caption>
                <tr>
                    <th >作者ID</th>
                    <th >名</th>
                    <th>姓</th>
                    <th >操作</th>
                </tr>
               <%
               for(int i=0;i<authors.size();i++)   {
                  AuthorsModel model=authors.get(i);
               %>
                <tr>
                    <% int id=model.getAuthors(); %>
                    <td ><%= model.getAuthors() %></td>
                    <td><%= model.getFirstName() %></td>
                    <td ><%= model.getLastName() %></td>
                    <td><a href="modify.jsp?Id=<%= id%>">修改</a>&nbsp;|&nbsp;&nbsp;<a href="delete.jsp?Id=<%= id%>" onclick="return confirm('确定要删除吗？');">删除</a></td>
                </tr>
           <%}%>
            </table>
    </body>
</html>
