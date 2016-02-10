// JavaScript Document
window.onload=function(){
	var oDiv3=document.getElementById('div3');
	var oDiv31=document.getElementById('div31');
	oDiv3.onmouseover=function()
	{
		startMove(oDiv31,'width',100);
	};
	oDiv3.onmouseout=function(){
		startMove(oDiv31,'width',2);
	};
var oDiv4=document.getElementById('div4');
	var oDiv41=document.getElementById('div41');
	var oDiv43=document.getElementById('div43');
	oDiv4.onmouseover=function()
	{
		startMove(oDiv41,'width',100);
		startMove(oDiv43,'height',150);
	};
	oDiv4.onmouseout=function(){
		startMove(oDiv41,'width',2);
		startMove(oDiv43,'height',0);	
	};
var oDiv5=document.getElementById('div5');
	var oDiv51=document.getElementById('div51');
	var oDiv53=document.getElementById('div53');
	oDiv5.onmouseover=function()
	{
		startMove(oDiv51,'width',100);
		startMove(oDiv53,'height',120);
	};
	oDiv5.onmouseout=function(){
		startMove(oDiv51,'width',2);
		startMove(oDiv53,'height',0);	
	};
var oDiv6=document.getElementById('div6');
	var oDiv61=document.getElementById('div61');
	var oDiv63=document.getElementById('div63');
	oDiv6.onmouseover=function()
	{
		startMove(oDiv61,'width',100);
		startMove(oDiv63,'height',120);
	};
	oDiv6.onmouseout=function(){
		startMove(oDiv61,'width',2);
		startMove(oDiv63,'height',0);	
	};
var oDiv7=document.getElementById('div7');
	var oDiv71=document.getElementById('div71');
	var oDiv73=document.getElementById('div73');
	oDiv7.onmouseover=function()
	{
		startMove(oDiv71,'width',100);
		startMove(oDiv73,'height',120);
	};
	oDiv7.onmouseout=function(){
		startMove(oDiv71,'width',2);
		startMove(oDiv73,'height',0);	
	};
};
  