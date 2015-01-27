var tipTimer;

function locateObject(n, d) { //v3.0
	  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
		  d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=locateObject(n,d.layers[i].document); return x;
}


function hideTooltip(object){
	if (document.all){
	    locateObject(object).style.visibility="hidden";
	    locateObject(object).style.left = 1;
	    locateObject(object).style.top = 1;
	    return false;
	}else if (document.layers){
	    locateObject(object).visibility="hide";
	    locateObject(object).left = 1;
	    locateObject(object).top = 1;
	    return false;
	}else
	    return true;
	}

	function showTooltip(object,e, tipContent, backcolor, bordercolor, textcolor, displaytime){
	    //window.clearTimeout(tipTimer)
	    
	    if (document.all){
	            locateObject(object).style.top=document.documentElement.scrollTop+event.clientY+20;
	            locateObject(object).innerHTML='<table style="font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 11px; border: '+bordercolor+'; border-style: solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; background-color: '+backcolor+'" width="100" border="0" cellspacing="1" cellpadding="10"><tr><td style="word-break:break-all;table-layout:fixed;" ><font style="font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 11px; color: '+textcolor+'">'+unescape(tipContent)+'</font></td></tr></table> ';

	            if ((e.x + locateObject(object).clientWidth) > (document.body.clientWidth + document.documentElement.scrollLeft)){    
	            	locateObject(object).style.left = (document.body.clientWidth + document.documentElement.scrollLeft) - locateObject(object).clientWidth-10;
	            }else{
	            	locateObject(object).style.left=document.documentElement.scrollLeft+event.clientX;
	            	//locateObject(object).style.left = (document.body.clientWidth + document.body.scrollLeft) - locateObject(object).clientWidth-10;
	            }
	            locateObject(object).style.visibility="visible";
	            //tipTimer=window.setTimeout("hideTooltip('"+object+"')", displaytime);
	            //window.setTimeout("hideTooltip('"+object+"')", displaytime);
	    }else if (document.layers){
	        locateObject(object).document.write('<table width="100" border="0" cellspacing="2" cellpadding="10"><tr bgcolor="'+bordercolor+'"><td><table width="100" border="0" cellspacing="10" cellpadding="10"><tr bgcolor="'+backcolor+'"><td style="word-break:break-all;table-layout:fixed;"  ><font style="font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 11px; color: '+textcolor+'">'+unescape(tipContent)+'</font></td></tr></table><td></tr></table>');
	        locateObject(object).document.close();
	        locateObject(object).top=e.y+20;

	        if ((e.x + locateObject(object).clip.width) > (window.pageXOffset + window.innerWidth)){
	        	locateObject(object).left = window.innerWidth - locateObject(object).clip.width-10;
	        }else{
	        	locateObject(object).left=e.x;
	        }
	        locateObject(object).visibility="show";
	        //tipTimer=window.setTimeout("hideTooltip('"+object+"')", displaytime);
	        //window.setTimeout("hideTooltip('"+object+"')", displaytime);
	    }else{
	        return true;
	    }
	}

//////////////////////////////////////////////////////////
var preview_tt="";
var gobj_tt="";
function attachEvent_(obj, evt, fuc, useCapture) {
  if(!useCapture) useCapture=false;
  if(obj.addEventListener) { // W3C DOM 지원 브라우저
    return obj.addEventListener(evt,fuc,useCapture);
  } else if(obj.attachEvent) { // MSDOM 지원 브라우저
    return obj.attachEvent("on"+evt, fuc);
  } else { // NN4 나 IE5mac 등 비 호환 브라우저
    MyAttachEvent(obj, evt, fuc);
    obj['on'+evt]=function() { MyFireEvent(obj,evt); };
  }
}

function detachEvent_(obj, evt, fuc, useCapture) {
  if(!useCapture) useCapture=false;
  if(obj.removeEventListener) {
    return obj.removeEventListener(evt,fuc,useCapture);
  } else if(obj.detachEvent) {
    return obj.detachEvent("on"+evt, fuc);
  } else {
    MyDetachEvent(obj, evt, fuc);
    obj['on'+evt]=function() { MyFireEvent(obj,evt); };
  }
}

function MyAttachEvent(obj, evt, fuc) {
  if(!obj.myEvents) obj.myEvents= {};
  if(!obj.myEvents[evt]) obj.myEvents[evt]=[];
  var evts = obj.myEvents[evt];
  evts[evts.length]=fuc;
}

function MyFireEvent(obj, evt) {
  if(!obj.myEvents || !obj.myEvents[evt]) return;
  var evts = obj.myEvents[evt];
  for (var i=0;i<len;i++) {
    len=evts.length;
    evts[i]();
  }
}

function previewShow(e, obj, pv) {
  preview_tt=pv;
  gobj_tt=obj;
  attachEvent_(obj, "mousemove", previewMove, false);
  attachEvent_(obj, "mouseout", previewHide, false);
}

function previewMove(e) {
  var hb = document.getElementById(preview_tt);
  if(hb.parentElement) hb.parentElement.style.display="";
  else hb.parentNode.style.display="";
  var evt = e ? e : window.event;
  var posx=0;
  var posy=0;
  if (evt.pageX || evt.pageY) { // pageX/Y 표준 검사
	  posx = evt.pageX +0;
	  posy = evt.pageY +16;
  } else if (evt.clientX || evt.clientY) { //clientX/Y 표준 검사 Opera
	  posx = evt.clientX -10;
	  posy = evt.clientY +20;
	  if (window.event) { // IE 여부 검사
		  posx += document.documentElement.scrollLeft-10;
		  posy += document.documentElement.scrollTop-300;
	  }
  }
  hb.style.left = posx + "px";
  hb.style.top = posy + "px";
}

function previewHide() {
  var hb = document.getElementById(preview_tt);
  if(hb.parentElement) hb.parentElement.style.display="none";
  else hb.parentNode.style.display="none";

  detachEvent_(gobj_tt,"mousemove", previewMove, false);
}