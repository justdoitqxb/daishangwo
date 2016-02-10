<%@page import="com.BooksDB.model.publishersModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.publishersDAO"/>
<%
publishersDAO dao=new publishersDAO();
int publisherId=Integer.parseInt(request.getParameter("Id"));
publishersModel model=dao.get(publisherId);
%>
<html>
    <head>
        <title>出版社管理</title>
        <link rel=stylesheet href="../css/main.css" type="text/css">
        <style type="text/css">
        </style> 
         <script type="text/javascript">
            function checkForm(myform){        
                  var pName=myform.publisherName.value;
                  if(pName == ""){alert('出版社名不能为空');
                  myform.publisherName.focus();
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
                        出版社名<input type="test" name="publisherName" size="20" value="<%= model.getPublisherName()%>">
                       
                        <input type="hidden" name="publisherId" value="<%= model.getPublisherId()%>">
                        <input type="submit" value="修改出版社">
                        <input type="button" value="返回" onclick="window.location.href='<%= request.getContextPath() %>/publishers/index.jsp';"><img src="../images/splitcoin.gif" />
                    </td>                   
                </tr>
            </table>
        </form>
    </body>
</html>