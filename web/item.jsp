<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程详情</title>
</head>

<style type="text/css">
 body {
	background: #fff;
	font-family: "Lucida Grande", Helvetica, Arial, sans-serif;
	font-size: 11px;
}
#container {background:#d8d8ee; width:600px; margin:15px; padding:20px;}
.xsnazzy h1, .xsnazzy h2, .xsnazzy p {margin:0 10px; letter-spacing:1px;}
.xsnazzy h1 {font-size:2.5em; color:#fc0;}
.xsnazzy h2 {font-size:2em; color:#234; border:0;}
.xsnazzy p {padding-bottom:0.5em; color:#eee;}
.xsnazzy h2 {padding-top:0.5em; padding-left:10px;}
.xsnazzy {background: transparent; margin:1em;}
.xsnazzy em {display:block; width:0; height:0; color:#d8d8ee; overflow:hidden; border-top:12px solid #fff; border-left:12px dotted transparent; border-right:12px dotted transparent; margin-left:50px;}

/* hack for IE5.5 */

* html .xsnazzy em {width:24px; height:12px; w\idth:0; hei\ght:0;}
.xsnazzy span {display:block; width:0; height:0; color:#fff; overflow:hidden; border-top:10px solid #7f7f9c; border-left:10px dotted transparent; border-right:10px dotted transparent; margin-left:52px; margin-top:-15px;}
* html .xsnazzy span {width:20px; height:10px; w\idth:0; hei\ght:0;}
.xb1, .xb2, .xb3, .xb4, .xb5, .xb6, .xb7 {display:block; overflow:hidden; font-size:0;}
.xb1, .xb2, .xb3, .xb4, .xb5, .xb6 {height:1px;}
.xb4, .xb5, .xb6, .xb7 {background:#ccc; border-left:1px solid #fff; border-right:1px solid #fff;}
.xb1 {margin:0 8px; background:#fff;}
.xb2 {margin:0 6px; background:#fff;}
.xb3 {margin:0 4px; background:#fff;}
.xb4 {margin:0 3px; background:#7f7f9c; border-width:0 5px;}
.xb5 {margin:0 2px; background:#7f7f9c; border-width:0 4px;}
.xb6 {margin:0 2px; background:#7f7f9c; border-width:0 3px;} 
.xb7 {margin:0 1px; background:#7f7f9c; border-width:0 3px; height:2px;} 
.xboxcontent {display:block; background:#7f7f9c; border:3px solid #fff; border-width:0 3px;}
#picture {width:600px; height:400px; background:url(pic_10h.jpg) center top; padding:80px 20px 0 20px; margin:15px;}
</style>
<body>
<div id="container">
<div class="xsnazzy">
<b class="xb1"></b><b class="xb2"></b><b class="xb3"></b><b class="xb4"></b><b class="xb5"></b><b class="xb6"></b><b class="xb7"></b>
<div class="xboxcontent">
<h1>Chunky Borders</h1>
<h2>3 pixel rounded borders without images</h2>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
  euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim
  ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl
  ut aliquip ex ea commodo consequat.</p>
</div>
<b class="xb7"></b><b class="xb6"></b><b class="xb5"></b><b class="xb4"></b><b class="xb3"></b><b class="xb2"></b><b class="xb1"></b>
</div>
<div class="xsnazzy">
<b class="xb1"></b><b class="xb2"></b><b class="xb3"></b><b class="xb4"></b><b class="xb5"></b><b class="xb6"></b><b class="xb7"></b>
<div class="xboxcontent">
<p>Or this can be used as a speech bubble with the addition of a little CSS pointer. This does require a careful choice of colors for the foreground, border and background to hide the chunky non-anti aliased corners, and it works with javascript off and images off.</p>
</div>
<b class="xb7"></b><b class="xb6"></b><b class="xb5"></b><b class="xb4"></b><b class="xb3"></b><b class="xb2"></b><b class="xb1"></b>
<em></em><span></span>
</div>
</div>
<div id="picture">
<div class="xsnazzy">
<b class="xb1"></b><b class="xb2"></b><b class="xb3"></b><b class="xb4"></b><b class="xb5"></b><b class="xb6"></b><b class="xb7"></b>
<div class="xboxcontent">
<h1>For non-IE6 browsers</h1>
<h2>12th June 2007</h2>
<h1>AND NOW FOR IE6 AS WELL</h2>
<p>Just to show that this can be applied over a background image because the corners have 'transparent' margins and the pointer has transparent borders.</p>
</div>
<b class="xb7"></b><b class="xb6"></b><b class="xb5"></b><b class="xb4"></b><b class="xb3"></b><b class="xb2"></b><b class="xb1"></b>
<em></em><span></span>
</div>
</div>
</body>
</html>