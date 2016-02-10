// JavaScript Document

window.onload=function(){
	var oImgBox = getByClass(document.body,'pxs_slider_wrapper')[0];
	var oImg = getByClass(document.body,'pxs_slider')[0];
	var aLi = oImg.getElementsByTagName('li');
	var aImg = oImg.getElementsByTagName('img');
	var bg1 = getByClass(document.body,'pxs_bg1')[0];
	var bg2 = getByClass(document.body,'pxs_bg2')[0];
	var bg3 = getByClass(document.body,'pxs_bg3')[0];
	
	var oPrev = getByClass(document.body,'pxs_next')[0];
	var oNext = getByClass(document.body,'pxs_prev')[0];
	
	var oImg_sm = getByClass(document.body,'pxs_thumbnails')[0];
	var aImg_li = oImg_sm.getElementsByTagName('li');
	var aImg_sm = oImg_sm.getElementsByTagName('img');
	
	var iNow = 0;
	
	oImg.style.width = aLi.length * 1024 + 'px';
	
	for(var i=0; i<aLi.length;i++)
	{
		aLi[i].style.width = 1024 + 'px';
	}
	
	oPrev.style.left = 512 + aImg[0].offsetWidth /2  - oPrev.offsetWidth - 14 + 'px';
	oNext.style.left = 512 - aImg[0].offsetWidth /2  + oPrev.offsetWidth - 15 + 'px';
	
	oImg_sm.style.width = aImg[0].offsetWidth + 'px';
	oImg_sm.style.marginLeft = - aImg[0].offsetWidth/2 + 'px'
	
	for(var i=0;i<aImg_sm.length;i++)
	{
		aImg_li[i].index = i;
		var ran = Math.random() * 40 - 20;
		var cliWidth = (oImg_sm.offsetWidth - aImg_li[0].offsetWidth*aImg_li.length)/(aImg_li.length+1);
		aImg_li[i].style.left = cliWidth + i*(cliWidth+aImg_li[i].offsetWidth) + 'px';
		
		setStyle3(aImg_li[i],'transform','rotate(' + ran + 'deg)')
		
		aImg_li[i].onmouseover = function()
		{
			iNow = this.index;
			startMovez(aImg_sm[this.index], {opacity:100,marginTop:-20});
		}
		aImg_li[i].onmouseout = function()
		{
			startMovez(aImg_sm[this.index], {opacity:70,marginTop:0});
		}
		
		aImg_li[i].onclick = function()
		{
			if(iNow == 0)
			{
				bg3.style.left = 0;
				bg2.style.left = 0;
				bg1.style.left = 0;
			}
			startMovez(oImg, {left:-(iNow) * 1024});
			startMovez(bg3, {left:parseInt(bg3.offsetLeft - 1024/2)});
			startMovez(bg2, {left:parseInt(bg2.offsetLeft - 1024/4)});
			startMovez(bg1, {left:parseInt(bg1.offsetLeft - 1024/8)});
		}
		
		
		oPrev.onclick = function()
		{	
			if(iNow == aImg_li.length-1)
			{
				iNow = -1;
				bg3.style.left = 0;
				bg2.style.left = 0;
				bg1.style.left = 0;
				startMovez(aImg_sm[aImg_li.length-1], {opacity:70,marginTop:0});
			}
			iNow++
			startMovez(oImg, {left:-(iNow) * 1024});
			startMovez(bg3, {left:parseInt(bg3.offsetLeft - 1024/2)});
			startMovez(bg2, {left:parseInt(bg2.offsetLeft - 1024/4)});
			startMovez(bg1, {left:parseInt(bg1.offsetLeft - 1024/8)});
			
			for(var i=0;i<aImg_sm.length;i++)
			{
				startMovez(aImg_sm[i], {opacity:70,marginTop:0});
			}
			
			startMovez(aImg_sm[iNow], {opacity:100,marginTop:-20});
		}
		oNext.onclick = function()
		{
			if(iNow == 0)
			{
				iNow = aImg_li.length;
				bg3.style.left = -bg3.offsetWidth + 1024 + 'px';
				bg2.style.left = -bg2.offsetWidth + 1024 + 'px';
				bg1.style.left = -bg1.offsetWidth + 1024 + 'px';
				
				startMovez(aImg_sm[0], {opacity:70,marginTop:0});
			}
			iNow--
			startMovez(oImg, {left:-(iNow) * 1024});
			startMovez(bg3, {left:parseInt(bg3.offsetLeft + 1024/2)});
			startMovez(bg2, {left:parseInt(bg2.offsetLeft + 1024/4)});
			startMovez(bg1, {left:parseInt(bg1.offsetLeft + 1024/8)});
			
			for(var i=0;i<aImg_sm.length;i++)
			{
				startMovez(aImg_sm[i], {opacity:70,marginTop:0});
			}
			
			startMovez(aImg_sm[iNow], {opacity:100,marginTop:-20});
		}
	}
	
	var oDivu3=document.getElementById('divu3');
	var oDivu2=document.getElementById('divu2');
	oDivu3.onmouseover=function()
	{
		startMove(oDivu2,'height',0);
	};
	oDivu3.onmouseout=function()
	{
		startMove(oDivu2,'height',148);
	};


	var oDiv=document.getElementById('div1');
	var oDiv2=document.getElementById('div2');
	var scrollTop=document.documentElement.scrollTop||document.body.scrollTop;	
	oDiv.style.top=(document.documentElement.clientHeight-oDiv.offsetHeight)/2+scrollTop+'px';
	oDiv2.style.top=(document.documentElement.clientHeight-oDiv.offsetHeight)/2+scrollTop+'px';
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
window.onscroll=function(){

	var oDiv=document.getElementById('div1');
	var scrollTop=document.documentElement.scrollTop||document.body.scrollTop;	
	var target=(document.documentElement.clientHeight-oDiv.offsetHeight)/2+scrollTop;
	startMoveHere(parseInt(target));
};
var timer=null;
function startMoveHere(aTaget){
	var oDiv=document.getElementById('div1');
	var oDiv2=document.getElementById('div2');
	clearInterval(timer);
	timer=setInterval(function(){
		var speed=(aTaget-oDiv.offsetTop)/10;
		speed=speed>0?Math.ceil(speed):Math.floor(speed);
		if(oDiv.offsetTop==aTaget){
		clearInterval(timer);
		}
		else{
		oDiv.style.top=oDiv.offsetTop+speed+'px';
		oDiv2.style.top=oDiv2.offsetTop+speed+'px';
		}		
	},30);

}