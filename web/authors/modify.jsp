<%@page import="com.BooksDB.model.AuthorsModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.AuthorsDAO"/>
<%
AuthorsDAO dao=new AuthorsDAO();
int authors=Integer.parseInt(request.getParameter("Id"));
AuthorsModel model=dao.get(authors);
%>
<html>
    <head>
        <title>作者管理</title>
        <link rel=stylesheet href="../css/main.css" type="text/css">
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
        <form action="update.jsp" method="post" name="form1" onsubmit="return checkForm(this);">
            <table align=center width=980 >
                <tr>
                    <td>
                        名<input type="test" name="firstName" size="20" value="<%= model.getFirstName()%>">
                        姓<input type="test" name="lastName" size="20" value="<%= model.getLastName()%>">
                        <input type="hidden" name="authors" value="<%= model.getAuthors()%>">
                        <input type="submit" value="修改作者">
                         <input type="button" value="返回" onclick="window.location.href='<%=request.getContextPath() %>/authors/newBook.jsp';"><img src="../images/splitcoin.gif" />
                    </td>                   
                </tr>
            </table>
        </form>
    </body>
</html>