<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jsFrame.js"></script>
<script type="text/javascript" src="js/Mainpage.js"></script>
</head>
<body>
    <div id="pxs_container" class="pxs_container">
        <div class="pxs_bg">
            <div class="pxs_bg1"></div>
            <div class="pxs_bg2"></div>
            <div class="pxs_bg3"></div>
        </div>
        <div class="pxs_loading">Loading images...</div>
        <div class="pxs_slider_wrapper">
            <ul class="pxs_slider">
                <li><img src="images/thumb/1.png" alt="First Image" /></li>
                <li><img src="images/thumb/2.png" alt="Second Image" /></li>
                <li><img src="images/thumb/3.png" alt="Third Image" /></li>
                <li><img src="images/thumb/4.png" alt="Forth Image" /></li>
                <li><img src="images/thumb/5.png" alt="Fifth Image" /></li>
                <li><img src="images/thumb/6.png" alt="Sixth Image" /></li>
            </ul>
            <div class="pxs_navigation">
                <span class="pxs_next"></span>
                <span class="pxs_prev"></span>
            </div>
            <ul class="pxs_thumbnails">
                <li><img src="images/thumbs/1.jpg" alt="First Image" /></li>
                <li><img src="images/thumbs/2.jpg" alt="Second Image" /></li>
                <li><img src="images/thumbs/3.jpg" alt="Third Image" /></li>
                <li><img src="images/thumbs/4.jpg" alt="Forth Image" /></li>
                <li><img src="images/thumbs/5.jpg" alt="Fifth Image" /></li>
                <li><img src="images/thumbs/6.jpg" alt="Sixth Image" /></li>
            </ul>
        </div>
    </div>
    
<div style="width:1024px;">
<script>
var oLoad = getByClass(document.body, 'pxs_loading')[0];
var oImgBox = getByClass(document.body,'pxs_slider_wrapper')[0];
var imgs = document.getElementsByTagName('img');
for(var i=0;i<imgs.length;i++)
{
	imgs[i].onload = function()
	{
		oLoad.style.display = 'none';
	}
	oImgBox.style.display = 'block';
}
</script>
</div>
</body>
</html>