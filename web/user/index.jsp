<%@page import="com.BooksDB.model.UserModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.UserDAO"/>
<%@include file="/checkLoginSession.jsp" %>
<%
UserDAO dao=new UserDAO();
List<UserModel> users =dao.queryAll();
%>
<html>
    <head>
        <title>用户管理</title>
        <link rel=stylesheet href="../css/main.css" type="text/css">
        <style type="text/css">
        </style> 
        <script type="text/javascript">
            function checkForm(myform){        
                  var userName=myform.name.value;
                  var account=myform.account.value;
                  var password=myform.password.value;
                  if(userName == ""){alert('姓名不能为空');
                  myform.name.focus();
                  return false;}
                  if(account ==""){alert('帐号不能为空');
                  myform.account.focus();
                  return false;}
                  if(password == ""){alert('密码不能为空');
                  myform.password.focus();
                  return false;}
              return true;
            }
        </script>
    </head>
    <body>
        <form action="add.jsp" method="post" name="form1" onsubmit="return checkForm(this);">
            <table align=center width=700 >
                <tr>
                    <td>
                        姓名<input type="text" name="name" size="20">
                        帐号<input type="text" name="account" size="20">
                        密码<input type="password" name="password" size="20">
                        <input type="submit" value="添加新用户">
                    </td>                   
                </tr>
            </table>
        </form>
            <table align=center width=700 >
                <caption>用户列表</caption>
                    
                <tr>
                    <th >用户ID</th>
                    <th>姓名</th>
                    <th >帐号</th>
                    <th>创建时间</th>
                    <th >操作</th>
                </tr>
               <%
               for(int i=0;i<users.size();i++)   {   
                  UserModel model=users.get(i);     
               %>
                <tr>
                    <% int id=model.getUesrId(); %>
                    <td weight=150><%= id %></td>                  
                    <td weight=200><%= model.getName() %></td>
                    <td weight=200><%= model.getAccount() %></td>
                   <td weight=230><%= model.getCreateTime() %></td>
                    <td weight=200><a href="modify.jsp?Id=<%= id%>">修改</a>&nbsp;|&nbsp;&nbsp;<a href="delete.jsp?Id=<%= id%>" onclick="return confirm('确定要删除吗？');">删除</a></td>     
                </tr>
           <%
               }
           %>
               
            </table>
    </body>
</html>