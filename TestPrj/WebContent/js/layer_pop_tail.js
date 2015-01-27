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


/**
 * 레이어에 띄운 아이프레임에서 부모창으로 이벤트를 넘겨주는 함수
 */
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
		//_HiddenIfrmObj = undefined;
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

// 레이어 이동관련 함수
if(document.all["ifrmHead"] != null && document.all["ifrmHead"] != undefined) {
	document.all["ifrmHead"].onmousedown	= ifrDragStart;
}

function reDrawProDiv(){
	if( jQuery.browser.msie && parseInt(jQuery.browser.version) <= 6){
		
		if(layer_opened!=null && document.all["proDiv"]!=null && typeof document.all["proDiv"]!="undefined"){
			document.all["proDiv"].style.display = "";
			document.all["proDiv"].style.display = "block";
		}
		
		if(document.all["popup_container"]!=null && typeof document.all["popup_container"]!="undefined"){
			document.all["popup_container"].style.display = "";
			document.all["popup_container"].style.display = "block";
		}
	}
}

window.onscroll = reDrawProDiv;
