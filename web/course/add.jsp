<%@page import="com.BooksDB.model.AuthorsModel"%>
<%@page import="com.BooksDB.AuthorsDAO"%>
<%@page import="com.BooksDB.publishersDAO"%>
<%@page import="com.BooksDB.model.publishersModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="com.BooksDB.publishersDAO"/>
<%
AuthorsDAO dao=new AuthorsDAO();
List<AuthorsModel> authors =dao.queryAll();
publishersDAO dao2=new publishersDAO();
List<publishersModel> publishers=dao2.queryAll();
%>
<html>
    <head>
        <title>图书管理</title>
        <link rel=stylesheet href="../css/main.css" type="text/css">
        <style type="text/css">
            table select{width:200px;}
            .titlecolumn{background:gray;}
        </style> 
         <script type="text/javascript">
             function moveitem(fromSel,toSel)
              {
                var fromOpts=fromSel.options;
                var  toOpts=toSel.options;
                var idx=0;
                var toLen=toOpts.length;
                for(var i=fromOpts.length-1;i>=0;i--){
                    if(fromOpts[i].selected ){
                         toOpts[toLen+idx]=new Option(fromOpts[i].text,fromOpts[i].value);
                         fromOpts[i]=null;
                         idx++;
                         }
                     }
                 }
             function checkForm(myform) {
			var authorOpts = myform.authorIds.options;
			if(authorOpts != null) {
                            for(var i=0; i<authorOpts.length; i++) {
				authorOpts[i].selected = true;
				}
                            }
			if(myform.isbn.value == "") {
				alert('isbn必须输入！');
				myform.isbn.focus();
				return false;
				}
			if(myform.title.value == "") {
				alert('书名必须输入！');
				myform.title.focus();
				return false;
				}
			if(myform.publisherId.value == "") {
				alert('出版社必须选择！');
				myform.publisherId.focus();
				return false;
				}
			var price = parseFloat(myform.price.value);
			if(isNaN(price)){
				alert('价格必须为数字！');
				myform.price.focus();
				return false;
				}
			var copyright = myform.copyright.value;
			if(copyright.length != 4 || isNaN(parseInt(copyright))){
				alert('出版年份必须为4位数字!');
				myform.copyright.focus();
				return false;
				}
			var editionNumber = parseInt(myform.editionNumber.value);
			if(isNaN(editionNumber)) {
				alert('版本号必须为数字！');
				myform.editionNumber.focus();
				return false;
				}
			return true;
			}
		function checkIsbn() {
			if(form1.isbn.value == "") {
				alert('请先输入ISBN');
				form1.isbn.focus();
				return;
				}				
		window.open('checkIsbn.jsp?isbn='+form1.isbn.value, 'checkwin', 'width=500,height=400,scrollbar=yes,resizable=no,status=yes' );
			}   
            </script>
    </head>
    <body>
        <form action="add_do.jsp" method="post" name="form1" onsubmit="return checkForm(this);">
            <table align=center width=700 >
                <caption>添加新图书</caption>
                <tr>
                    <td width="250" class="titlecolumn"> 图书ISBN
                    </td>
                    <td width="450">
                        <input type="text" name="isbn" size="40">*                 
                        <input type="button" value="检查ISBN是否存在" onclick="checkIsbn();">
                    </td>                   
                </tr>
                 <tr>
                    <td width="250" class="titlecolumn">书名
                    </td>
                    <td width="450">
                        <input type="text" name="title" size="40">*                  
                    </td>                   
                </tr>
                 <tr>
                    <td width="250" class="titlecolumn">出版社
                    </td>
                    <td width="450">
                        <select name="publisherId">
                            <option  value=""> 请选择...</option>
 <%
    for(publishersModel model : publishers)    {                    
 %>
 <option  value="<%= model.getPublisherId() %>"><%= model.getPublisherName() %></option>
                       <% } %>
                        </select>                  
                    </td>                   
                </tr>
                 <tr>
                    <td width="250" class="titlecolumn">价格
                    </td>
                    <td width="450">
                        <input type="text" name="price">*                   
                    </td>                   
                </tr>
                <tr>
                    <td width="250" class="titlecolumn">出版年份
                    </td>
                    <td width="450">
                        <input type="text" name="copyright">*                  
                    </td>                   
                </tr>
                <tr>
                    <td width="250" class="titlecolumn">版本号
                    </td>
                    <td width="450">
                        <input type="text" name="editionNumber">*                   
                    </td>                   
                </tr>
                <tr>
                    <td class="titlecolumn">作者</td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <select name="allauthors" multiple="multiple" size="8">
                                        <%
                                          for(AuthorsModel model1 : authors)    {     
                                         %>
                                         <option value="<%= model1.getAuthors() %>"><%= model1.getLastName() %>&nbsp;<%= model1.getFirstName() %></option>
                     
                                          <% } %>
                                    </select>
                                </td>
                                <td>
                                    <input type="button" value="增加>>" onclick="javascript:moveitem(form1.allauthors,form1.authorIds);">
                                    <br>
                                     <input type="button" value="<<删除" onclick="javascript:moveitem(form1.authorIds,form1.allauthors);">
                                </td>
                              <td>
                                    <select name="authorIds" multiple="multiple" size="8">                                   
                                    </select>
                                </td>
                            </tr>
                            </table>
                    </td>
                </tr>
                  <tr>                  
                    <td colspan="2" align="center" class="titlecolumn">
                        <input type="submit" value="增加">     
                         <input type="submit" value="清空"> 
                    </td>                   
                </tr>
            </table>
        </form>         
    </body>
</html>