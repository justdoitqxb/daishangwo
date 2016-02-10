<%@page import="com.BooksDB.model.AuthorsModel"%>
<%@page import="com.runvit.commom.util.ParamUtil"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.BooksDB.model.TitleModel"%>
<%@page import="com.BooksDB.model.publishersModel"%>
<%@page import="com.BooksDB.publishersDAO"%>
<%@page import="com.BooksDB.AuthorsDAO"%>
<%@page import="com.BooksDB.TitleDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%
        request.setCharacterEncoding("UTF-8");
	AuthorsDAO authorDAO = new AuthorsDAO();
	List<AuthorsModel> authors = authorDAO.queryAll();	 //得到所有作者
	List<AuthorsModel> modifyAuthors = new ArrayList<AuthorsModel>(); //存放当前图书的所有作者对象
	publishersDAO publisherDAO = new publishersDAO();
	List<publishersModel> publishers = publisherDAO.queryAll();
	TitleDAO titleDAO = new TitleDAO();
	TitleModel modifyModel = titleDAO.get(request.getParameter("isbn").trim());
	//图书的所有作者
	Integer[] titleAuthorIds = titleDAO.getAuthorIdsByIsbn(request.getParameter("isbn").trim());//得到当前图书的所有作者的ID
	//int[] modifyAuthorIds = modifyModel.getAuthorIds(); //得到当前图书的所有作者的ID
	if(titleAuthorIds != null && titleAuthorIds.length > 0) { //当前图书有相关作者
		Arrays.sort(titleAuthorIds); //对作者ID进行排序， 数组元素排序
		int id = -1; //查找后的索引值
		for(int i=0; i<authors.size(); i++) { //遍历所有的作者
			AuthorsModel m = authors.get(i);
			id = Arrays.binarySearch(titleAuthorIds, m.getAuthors()); //某个作者ID是否在modifyAuthorIds数组内
			if(id >= 0) { //找到元素
				modifyAuthors.add(m);
			}
		}
		authors.removeAll(modifyAuthors); //将图书相关的作者从所有作者列表中删除。
	}
%>
<html>
	<head>
		<title>图书管理</title>
		<link rel=stylesheet href="../css/main.css" type="text/css">
		<style type="text/css">
			table select {width: 200px;}
			.tcolumn {background: #DDDDFF;	}
		</style>
		<script type="text/javascript">
			//fromSel: 源选择框， toSel:目标选择框
			function moveitem(fromSel, toSel) {
				var fromOpts = fromSel.options; //源选择项列表数组
				var toOpts = toSel.options;  //目标选择项列表数组
				var idx = 0; //当前索引
				var toLen = toOpts.length; // 目标选择框已有的项数
				//遍历所有的源选择项列表数组
				for(var i=fromOpts.length-1; i>=0; i--) {
					if(fromOpts[i].selected){ //如果选中
						toOpts[toLen+idx] = new Option(fromOpts[i].text, fromOpts[i].value);//添加到目标选择框中
						fromOpts[i] = null; //删除源选择框中的选中项
						idx++;
					}
				}				
			}
			//表单提交
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
		</script>
	</head>
	<body>
		<form action="update.jsp" method="post" name="form1" onsubmit="return checkForm(this);">
		<%
			String url = "index.jsp";
			url = ParamUtil.appendParam(url, "isbn", request.getParameter("qisbn"));
			url = ParamUtil.appendParam(url, "page", request.getParameter("page"));
			url = ParamUtil.appendParam(url, "title", request.getParameter("title"));
		%>
		<input type="hidden" name="url" value="<%=url %>">
		<table align="center" width="700">
			<caption>修改图书</caption>
			<tr>
				<td width="250" class="tcolumn">图书ISBN</td>
				<td width="450">
				   <input type="text" name="isbn" size="40" value="<%=modifyModel.getIsbn() %>" style="background: #CCCCCC" readonly="readonly">*
				</td>
			</tr>
			<tr>
				<td class="tcolumn">书名</td>
				<td>
				   <input type="text" name="title" size="40" value="<%=modifyModel.getTitle().trim() %>">*
				</td>
			</tr>
			<tr>
				<td class="tcolumn">出版社</td>
				<td>
				 <select name="publisherId">
					<option value="">请选择...</option>
					<%
					String pubSel = "";
					for(publishersModel model : publishers) {
						if(model.getPublisherId() == modifyModel.getPublisherId())
						pubSel = " selected ";
						else
						pubSel = "";
					%>
					<option value="<%=model.getPublisherId() %>" <%=pubSel %>><%=model.getPublisherName() %></option>
					<%} %>
				   </select>
				</td>
			</tr>
			<tr>
				<td class="tcolumn">价格</td>
				<td>
				   <input type="text" name="price" value="<%=modifyModel.getPrice() %>">*
				</td>
			</tr>
			<tr>
				<td class="tcolumn">出版年份</td>
				<td>
				   <input type="text" name="copyright" value="<%=modifyModel.getCopyright().trim() %>">*
				</td>
			</tr>
			<tr>
				<td class="tcolumn">版本号</td>
				<td>
				  <input type="text" name="editionNumber" value="<%=modifyModel.getEditionNumber() %>">*
				</td>
			</tr>
			<tr>
				<td class="tcolumn">作者</td>
				<td>
					<table>
						<tr>
							<td>
							<select name="allauthors" multiple="multiple" size="8">
							<%
							for(AuthorsModel model : authors) {
							 %>
							<option value="<%=model.getAuthors() %>"><%=model.getFirstName() %>&nbsp; <%=model.getLastName() %></option>
							<%
							}
							%>
							</select>
							</td>
							<td>
							  <input type="button" value="增加>>" onclick="javascript:moveitem(form1.allauthors, form1.authorIds);">
							  <br>
							  <input type="button" value="<<删除" onclick="javascript:moveitem( form1.authorIds, form1.allauthors);">
							</td>
							<td>
							  <select name="authorIds" multiple="multiple" size="8">
								<%
								for(AuthorsModel model : modifyAuthors) {
								 %>
								<option value="<%=model.getAuthors() %>"><%=model.getFirstName() %>&nbsp; <%=model.getLastName() %></option>
								<%
								}
								%>
							   </select>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center" class="tcolumn">
					<input type="submit" value="修改">
					<input type="reset" value="清空">
					<input type="button" value="返回" onclick="history.go(-1);">
				</td>
			</tr>
		</table>
		</form>
	</html>