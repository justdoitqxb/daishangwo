// JavaScript Document
function getMousePosition(ev){
	var scrollTop=document.documentElement.scrollTop||document.body.scrollTop;
	var scrollLeft=document.documentElement.scrollLeft||document.body.scrollLeft;
	return {x: scrollLeft+ev.clientX,y: scrollTop+ev.clientY};
}

function addEvent(obj,ev,fn)
{
	if(obj.attachEvent)
	{
		obj.attachEvent('on'+click,fn);
	}
	else
	{
		obj.addEventListener(ev,fn,false);
	}
}

function startMove(obj,oStyle,iTarget,isEnd)
{
	clearInterval(obj.timer);
	obj.timer=setInterval(function(){
		var curStyle=0;
		if(oStyle=='opacity')
		{
			curStyle=Math.round(parseFloat(getStyle(obj,oStyle))*100);
		}
		else{
			curStyle=parseInt(getStyle(obj,oStyle));
		}
		speed=(iTarget-curStyle)/10;
		speed=speed>0?Math.ceil(speed):Math.floor(speed);
		//alert(parseInt(getStyle(obj,oStyle)));
		if(curStyle==iTarget)
		{
			clearInterval(obj.timer);
			if(isEnd){
				isEnd();		
			}
		}
		else
		{
			if(oStyle=='opacity')
			{
				obj.style.filter='alpha(opacity:'+(curStyle+speed)+')';
				obj.style.opacity=(curStyle+speed)/100;
			}
			else{
			obj.style[oStyle]=curStyle+speed+'px';
			}
		}	
	},30);

}

function Ajax(url,fnSucc,fnFaild)
{
	if(window.XMLHttpRequest)
	{
		var oAjax=new XMLHttpRequest();	
	}
	else
	{
		var oAjax=new ActiveXObject("Microsoft.XMLHttp");
	}
	oAjax.open('GET',url,true);
	oAjax.send();
	oAjax.onreadystatechange=function()
	{
		if(oAjax.readyState==4)
		{
			if(oAjax.status==200)
			{
				fnSucc();
			}
			else
			{
				if(fnFaild)
				{
			 	fnFaild(oAjax.status);//not found
				}
			}
		}		
	};	
}


function getStyle(obj, attr)
{
	if(obj.currentStyle)
	{
		return obj.currentStyle[attr];
	}
	else
	{
		return getComputedStyle(obj, false)[attr];
	}
}
function $(id)
{
	return document.getElementById(id);
}

function setStyle3(obj, name, value)
{
	obj.style['Webkit'+name.charAt(0).toUpperCase()+name.substring(1)]=value;
	obj.style['Moz'+name.charAt(0).toUpperCase()+name.substring(1)]=value;
	obj.style['ms'+name.charAt(0).toUpperCase()+name.substring(1)]=value;
	obj.style['O'+name.charAt(0).toUpperCase()+name.substring(1)]=value;
	obj.style[name]=value;
}

function getByClass(oParent,sClass)
{
	var aEle = oParent.getElementsByTagName('*');
	var aResult = [];
	var re=new RegExp('\\b'+sClass+'\\b', 'i');
	
	for(var i=0; i<aEle.length;i++)
	{
		if(aEle[i].className.search(re)!=-1)
		{
			aResult.push(aEle[i]);
		}
	}
	return aResult;
}

function startMovez(obj, json, fnEnd)
{
	clearInterval(obj.timer);
	var attr;
	obj.timer=setInterval(function (){
		
		var bStop=true;		//�ǲ��Ƕ����ˣ��������еĶ�����
		
		for(attr in json)
		{
			var iCur=0;
			
			//ȡ��ǰλ��
			if(attr=='opacity')
			{
				iCur=Math.round(parseFloat(getStyle(obj, attr))*100);
			}
			else
			{
				iCur=parseInt(getStyle(obj, attr));
			}
			
			//���ٶ�
			var iSpeed=(json[attr]-iCur)/8;
			iSpeed=iSpeed>0?Math.ceil(iSpeed):Math.floor(iSpeed);
			
			//��û��
			
			if(attr=='opacity')
			{
				obj.style.filter='alpha(opacity:'+(iCur+iSpeed)+')';
				obj.style.opacity=(iCur+iSpeed)/100;
			}
			else
			{
				obj.style[attr]=iCur+iSpeed+'px';
			}
			
			if(iCur!=json[attr])
			{
				bStop=false;
			}
		}
		
		if(bStop)
		{
			clearInterval(obj.timer);
			if(fnEnd)
			{
				fnEnd();
			}
		}
		//alert(obj.offsetHeight);
	}, 30);
}

 function checkForm(myForm){
           var mag = "";
           var setFocused=false;
           if(myForm.account.value==""){
              mag +="帐号不能为空！\n";
              myForm.account.focus();
              setFocused=true;
              }
            if(myForm.password.value==""){
               mag += "密码不能为空！\n";
               if(!setFocused){
                   myForm.password.focus();
                   setFocused=true;
                   }
               }
             if(mag !== ""){
               alert(mag);
               return false;
               }
               return true;
           }
