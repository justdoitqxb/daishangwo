// JavaScript Document
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