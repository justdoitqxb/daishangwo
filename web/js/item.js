// JavaScript Document
window.onload=function(){
	var item1=$('item1');
	var item2=$('item2');
	var yishu=$('yishu');
	var xueke=$('xueke');
	var shangwu=$('shangwu');
	var tiyu=$('tiyu');
	var shenghuo=$('shenghuo');
	
	var yishuChild=$('yishu_child');
	var xuekeChild=$('xueke_child');
	var shangwuChild=$('shangwu_child');
	var tiyuChild=$('tiyu_child');
	var shenghuoChild=$('shenghuo_child');
	
	setStyle3(yishuChild, 'display', 'none');
	setStyle3(xuekeChild, 'display', 'none');
	setStyle3(shangwuChild, 'display', 'none');
	setStyle3(tiyuChild, 'display', 'none');
	setStyle3(shenghuoChild, 'display', 'none');
	
	var beforePosition=yishu;
	var beforeChildPosition=yishuChild;
	yishu.onmouseover=function(){
		setStyle3(beforePosition, 'background', '#3CB371');
		setStyle3(beforeChildPosition, 'display', 'none');
		setStyle3(yishu, 'background', '#fff');
		setStyle3(yishuChild, 'display', 'block');
		beforePosition=yishu;
		beforeChildPosition=yishuChild;
	};
	
	yishuChild.onmouseout=function(){
		setStyle3(yishu, 'background', '#3CB371');
		//setStyle3(yishuChild, 'display', 'none');
	};
	
	xueke.onmouseover=function(){
		setStyle3(beforePosition, 'background', '#3CB371');
		setStyle3(beforeChildPosition, 'display', 'none');
		setStyle3(xueke, 'background', '#fff');
		setStyle3(xuekeChild, 'display', 'block');
		beforePosition=xueke;
		beforeChildPosition=xuekeChild;
	};
	
	xuekeChild.onmouseout=function(){
		setStyle3(xueke, 'background', '#3CB371');
		//setStyle3(xuekeChild, 'display', 'none');
	};
	
	shangwu.onmouseover=function(){
		setStyle3(beforePosition, 'background', '#3CB371');
		setStyle3(beforeChildPosition, 'display', 'none');
		setStyle3(shangwu, 'background', '#fff');
		setStyle3(shangwuChild, 'display', 'block');
		beforePosition=shangwu;
		beforeChildPosition=shangwuChild;
	};
	
	shangwuChild.onmouseout=function(){
		setStyle3(shangwu, 'background', '#3CB371');
		//setStyle3(shangwuChild, 'display', 'none');
	};
	
	tiyu.onmouseover=function(){
		setStyle3(beforePosition, 'background', '#3CB371');
		setStyle3(beforeChildPosition, 'display', 'none');
		setStyle3(tiyu, 'background', '#fff');
		setStyle3(tiyuChild, 'display', 'block');
		beforePosition=tiyu;
		beforeChildPosition=tiyuChild;
	};
	
	tiyuChild.onmouseout=function(){
		setStyle3(tiyu, 'background', '#3CB371');
		//setStyle3(tiyuChild, 'display', 'none');
	};
	
	shenghuo.onmouseover=function(){
		setStyle3(beforePosition, 'background', '#3CB371');
		setStyle3(beforeChildPosition, 'display', 'none');
		setStyle3(shenghuo, 'background', '#fff');
		setStyle3(shenghuoChild, 'display', 'block');
		beforePosition=shenghuo;
		beforeChildPosition=shenghuoChild;
	};
	
	shenghuoChild.onmouseout=function(){
		setStyle3(shenghuo, 'background', '#3CB371');
	};
	
	item2.onmouseover=function()
	{
		setStyle3(item1, 'width', '606px');
		setStyle3(item2, 'width', '600px');
		setStyle3(beforePosition, 'background', '#fff');
	};
	
	item2.onmouseout=function(){
		setStyle3(item2, 'width', '120px');
		setStyle3(item1, 'width', '128px');
		setStyle3(beforePosition, 'background', '#3CB371');
		//setStyle3(beforeChildPosition, 'display', 'none');
	};
};