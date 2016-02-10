<%@page import="com.BooksDB.model.UserModel"%>
<%@page import="com.BooksDB.UserDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<%
UserDAO dao=new UserDAO();
int userId=Integer.parseInt(request.getParameter("Id"));
UserModel model=dao.get(userId);
%>
<html>
    <head>
        <title>用户管理</title>
        <link rel=stylesheet href="../isc/main.css" type="text/css">
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
        <form action="update.jsp" method="post" name="form1" onsubmit="return checkForm(this);">
            <table align=center width=700 >
                <tr>
                    <td>
                       
                        姓名<input type="text" name="name" size="20" value="<%= model.getName() %>">
                        帐号<input type="text" name="account" size="20" value="<%= model.getAccount() %>">
                        密码<input type="password" name="password" size="20" value="<%= model.getPassword() %>">
                        <input type="hidden" name="uesrId" value="<%= model.getUesrId() %>">
                        <input type="submit" value="修改用户">
                         <input type="button" value="返回" onclick="window.location.href='<%= request.getContextPath() %>/users/index.jsp';"><img src="../images/splitcoin.gif" />
                    </td>                    
                </tr>
            </table>
        </form>
    </body>
</html>