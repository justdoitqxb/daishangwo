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
};