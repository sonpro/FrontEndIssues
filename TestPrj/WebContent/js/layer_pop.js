// 브라우저체크
var isie=(navigator.userAgent.toLowerCase().indexOf('msie')!=-1)? true : false;
var isie6=(navigator.userAgent.toLowerCase().indexOf('msie 6')!=-1)? true : false;
var isie7=(navigator.userAgent.toLowerCase().indexOf('msie 7')!=-1)? true : false;
var isie8=(navigator.userAgent.toLowerCase().indexOf('msie 8')!=-1)? true : false;
var isfirefox=(navigator.userAgent.toLowerCase().indexOf('firefox')!=-1)? true : false;
var isopera=(navigator.userAgent.toLowerCase().indexOf('opera')!=-1)? true : false;

var g_pos=new Object();
g_pos.x=0;
g_pos.y=0;
var g_begin_pos=new Object();
g_begin_pos.x=0;
g_begin_pos.y=0;
var g_drag_old=new Object();
g_drag_old.x=0;
g_drag_old.y=0;


function mousedown(evt){
	dragOn = true;
	g_begin_pos.x=evt.screenX-window.screenLeft-evt.x;
	g_begin_pos.y=evt.screenY-window.screenTop -evt.y;
	g_pos.x=evt.x;
	g_pos.y=evt.y;
	document.onmousemove = Drag;
	document.onmouseup   = DragEnd;
}

function Drag(evt){
	if(!evt){evt=event;}
	if(g_drag_old.x==evt.screenX && g_drag_old.y==evt.screenY) return;
	if(dragOn){
		g_drag_old.x=evt.screenX;
		g_drag_old.y=evt.screenY;
		var b=document.body;
		var o=document.all.proDiv.style;
		var ow=(b.offsetWidth -b.clientWidth ) / 2;
		var oh=(b.offsetHeight-b.clientHeight) / 2;
		var tx=evt.screenX-window.screenLeft-g_pos.x+b.scrollLeft+o.marginLeft;
		var ty=evt.screenY-window.screenTop -g_pos.y+b.scrollTop +o.marginTop ;

		if(o.pixelLeft!=tx) o.pixelLeft = tx;
		if(o.pixelTop !=ty) o.pixelTop  = ty;

		return false;
	}
}

function DragEnd(){
	dragOn = false;
	document.onmousemove = "";
	document.onmouseup   = "";
}



// 레이어에 띄운 아이프레임에서 부모창으로 이벤트를 넘겨주는 함수
function ifrDragStart() {
	var o=document.elementFromPoint(event.x,event.y);
	parent.mousedown(event);
	parent.document.onmousemove = ifrDrag;
	
	document.onmousemove = ifrDrag;
	document.onmouseup   = ifrDragEnd;
	document.onselectstart = function(){return false;};
}

function ifrDrag() {
	parent.Drag(event);
}

function ifrDragEnd() {
	parent.document.onmousemove = "";
	parent.DragEnd();
	document.onselectstart = "";
	
	document.onmousemove = '';
    document.onmouseup   = '';
}


function hideIfr(){
	var obj = document.getElementById("proDiv");
	
	if(obj != null && obj != undefined) {
		obj.style.visibility = "hidden";
		obj.style.display = "none";
		_HiddenIfrmObj = undefined;
		//_isIfrmView = "false";	
		layer_opened = null;
		//_isLayerLoad = "false";
		_isLayerOpen = "false";
	}
}

function returnNothing(){ 
    event.returnValue    = false; 
    event.cancelBubble    = false; 
}

// 숨김
function hide(id){
	document.getElementById(id).style.display='none';
	if(isie6 && layer_opened) showselectboxs();
}

// 셀렉트박스 숨김
function hideselectboxs(obj){
	var sels=document.getElementsByTagName('select');
	for(var i=0,max=sels.length; i<max; i++){
		sels[i].style.visibility='hidden';
	}
	if(obj){
		var objsels=obj.getElementsByTagName('select');
		for(var i=0,max=objsels.length; i<max; i++){
			objsels[i].style.visibility='visible';
		}
	}
}

// 셀렉트박스 보임
function showselectboxs(){
	var sels=document.getElementsByTagName('select');
	for(var i=0,max=sels.length; i<max; i++){
		sels[i].style.visibility='visible';
	}
}

// 레이어 열기
var layer_opened=null;
function layer_open(id,target,xpos,ypos){	
	var xp,yp,sl,st,obj=document.getElementById(id);
	if(obj.style.display=='block'){	
		obj.style.display='none';
		layer_opened=null;
	}else{
		try {
			sl=getwinsize('scrollLeft');
			st=getwinsize('scrollTop');
		}
		catch(e) {}

		if(layer_opened) 
			layer_opened.style.display='none';
		with(obj.style){
			position='absolute';
			left='-10000px';
			top='0';
			display='block';
		}

		obj.w=obj.offsetWidth;
		obj.h=obj.offsetHeight;
		if(target){		
			var xppm,yppm;
			var targetinfo=getoffset(target);
			if(xppm=xpos.match(/([a-z-]+)(\-|\+)([0-9]+)/)) xpos=xppm[1];
			if(xpos=='left') xp=targetinfo[2]-obj.w;
			else if(xpos=='justify-left') xp=targetinfo[2];
			else if(xpos=='right') xp=targetinfo[2]+targetinfo[0];
			else if(xpos=='justify-right') xp=(targetinfo[2]+targetinfo[0])-obj.w;
			else if(xpos=='center') xp=(targetinfo[2]+(targetinfo[0]/2))-(obj.w/2);
			if(yppm=ypos.match(/([a-z-]+)(\-|\+)([0-9]+)/)) ypos=yppm[1];
			if(ypos=='top') yp=targetinfo[3]-obj.h;
			else if(ypos=='justify-top') yp=targetinfo[3];
			else if(ypos=='bottom') yp=targetinfo[3]+targetinfo[1];
			else if(ypos=='justify-bottom') yp=(targetinfo[3]+targetinfo[1])-obj.h;
			else if(ypos=='middle') yp=(targetinfo[3]+(targetinfo[1]/2))-(obj.h/2);
			if(xppm) xp=eval('value'+xppm[2]+xppm[3]);
			if(yppm) yp=eval('value'+yppm[2]+yppm[3]);
		}else{
			if(xpos != null && xpos != '' && ypos != null && ypos != '') {
				xp = xpos;
				yp = ypos;
			}
			else {
				body_w = parseInt(document.body.offsetWidth / 2);
				body_h = parseInt(document.body.offsetHeight / 2);
				xp = body_w - (parseInt(obj.w/2) + 100);//parseInt((950/2)-(obj.w/2));
				yp = body_h- (parseInt(obj.h/2) + 100);//parseInt(((getwinsize('clientHeight'))-(obj.h*4)));
			}
		}

		if(xp<0) xp=0;
		if(yp<0) yp=0;
		obj.style.left=xp+'px';
		obj.style.top=yp+'px';
	}
}

function open_ifr(url, width, height, target, xpos, ypos) {
		
	var v_ifr_txt = "<iframe name=\"proIfr\" id=\"proIfr\" src=\"\" width=\"\" border=\"0\" marginHeight=\"0\" marginWidth=\"0\" frameBorder=\"0\" frameSpacing=\"0\" scrolling=\"no\" onload=\"ifr_located(this, '" + width + "', '" + height + "', '" + xpos + "', '" + ypos + "');\">";
	v_ifr_txt += "</iframe>";

	var obj = document.getElementById("proDiv");
	obj.style.width=0;
	obj.style.height=0; 

	if(obj.style.display == "block") {
		obj.style.display = "none";
		obj.innerHTML = "";
		return;
	}

	if(obj.style.visibility == "visible") {
		obj.style.visibility = "hidden";
		obj.innerHTML = "";
		return;
	}

	if(obj != null && obj != undefined) {
		obj.innerHTML = v_ifr_txt;

		var ifrm = obj.getElementsByTagName('iframe')[0];		
		ifrm.height = 0;
						
		XecureNavigate(url, "proIfr");
		//open(url, "proIfr");

		layer_open("proDiv",target,xpos,ypos);
		obj.style.visibility = "visible";
		
		layer_opened=obj;
		//_HiddenIfrmObj = obj;
	}
}

function ifr_located(obj, width, height, xpos, ypos){	
	obj.height = obj.contentWindow.document.body.scrollHeight;
	obj.width = width;
	
	var objdiv = document.getElementById("proDiv");
	/*
	if(objdiv.style.visibility == "visible"){
		reset_submit();
	}*/
	
	if(xpos == 'undefined')
		xpos = (document.body.offsetWidth/2)-(obj.width/2);	//
	if(ypos == 'undefined')
		ypos = (document.body.offsetHeight/2 + document.body.scrollTop)-obj.height/2;	//
	
	objdiv.style.left=xpos;
	objdiv.style.top=ypos;
}

// 엘리먼트의 화면상 위치
function getoffset(target){
	var targetinfo=[target.offsetWidth,target.offsetHeight,0,0];
	for(target; (target.tagName.toLowerCase()!='body' && target.tagName.toLowerCase()!='html'); target=target.offsetParent){
		targetinfo[2]+=target.offsetLeft;
		targetinfo[3]+=target.offsetTop;
	}
	return targetinfo;
}