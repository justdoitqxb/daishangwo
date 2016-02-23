<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dsw.service.impl.CatlogServiceImpl,com.dsw.service.CatlogService,com.dsw.bean.Catlog"%>
<%@page import="java.util.List" %>    
<%@page import="org.springframework.web.context.WebApplicationContext" %>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>导航列表</title>
</head> 
<center>
<body>
  <div>
  	<jsp:include page="siteheader.jsp" flush="true"/>
  
    <div style=" width:1022px; height:500px; border:1px solid black;">
       <div style="margin:5px; width:1014px;">
    	<iframe src="catlogList.jsp" frameborder="1" scrolling="auto" width="280px" height="488px"></iframe>
    	<iframe frameborder="1" scrolling="auto" width="715px" height="488px" name="target"></iframe>
        </div>
    </div>
    
    <jsp:include page="footer.jsp" flush="true"/>
  </div>
</body>
</center>
</html>
