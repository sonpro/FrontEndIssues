////////////////////////////////////////////
// Cookie
////////////////////////////////////////////
/**
 * Cookie ����
 * @param cookieName ��Ű��
 * @param cookieValue ��Ⱚ
 * @param expierday	  
 */
function setCookie(cookieName, cookieValue, expiredays) {
    var todayDate = new Date();
    var cookieDay;
    if(expiredays==undefined){
        cookieDay = parseInt(1);
    }else{
        cookieDay = parseInt(expiredays);
    }
    todayDate.setDate( todayDate.getDate() + cookieDay );
    alert("expiredays : " + expiredays +" :: todayDate.toGMTString() : " + todayDate.toGMTString());
    document.cookie = cookieName + "=" + encodeURIComponent(cookieValue) + "; path=/; expires=" + todayDate.toGMTString() + ";";
}

/**
 * Cookie ��������
 * @param uName ��Ű��
 * @param cookieValue ��Ⱚ
 * @param expierday	  
 */
function getCookie(uName) {
    var flag = document.cookie.indexOf(uName+'=');
    if (flag != -1) {
        flag += uName.length + 1;
        end = document.cookie.indexOf(';', flag);

        if (end == -1) end = document.cookie.length;
        return unescape(document.cookie.substring(flag, end));
    }
}



////////////////////////////////////////////
// CheckBox & Radio
////////////////////////////////////////////
/**
 * ���õ� ������ư�� �ִ��� üũ
 * @param input element
 * return boolean
 */
function hasCheckedRadio(input) {
    if (input.length > 1) {
        for (var inx = 0; inx < input.length; inx++) {
            if (input[inx].checked) return true;
        }
    } else {
        if (input.checked) return true;
    }
    return false;
}

/**
 * ���õ� ������ư�� ��
 * @param input element
 * return value
 */
function getCheckedRadioValue(input) {
    if (input.length > 1) {
        for (var inx = 0; inx < input.length; inx++) {
            if (input[inx].checked) return input[inx].value;
        }
    } else {
        if (input.checked) return input.value;
    }
    return "";
}


/**
 * ���õ� üũ�ڽ��� �ִ��� üũ
 * @param input element
 * return boolean
 */
function hasCheckedBox(input) {
    return hasCheckedRadio(input);
}


/**
 * ���õ� üũ�ڽ� ���� ��ȯ
 * @param input element
 * return number
 */
function hasMultiCheckedRadio(input) {
	var num = 0;
    if (input.length > 1) {
        for (var inx = 0; inx < input.length; inx++) {
            if (input[inx].checked) {
				num++;
            }
        }
    } else {
         if (input.checked) num=1;
    }
    return num;
}

// check �� ������ �����Ѵ�.
function getCheckedCount( aElem ) {

    var elem = document.all;
    var cnt = 0;

    for ( var i=0; i<document.all.length; i++ ) {
        if ( ( elem[i].type == "checkbox" ) && ( elem[i].checked ) && ( elem[i].name == aElem ) )   cnt = cnt + 1;
    }

    return cnt;
}

// ������ �̸��� checkbox�� ã�Ƽ� �־��� ���� �ش��ϴ� box�� check�Ѵ�.
function checkValue( aElem, aValue ) {
    var elem = document.all;
    var cnt = 0;

    for ( var i=0; i<document.all.length; i++ ) {
        if ( ( elem[i].type == "checkbox" ) && ( elem[i].name == aElem ) && ( elem[i].value == aValue ) )   elem[i].checked = true;
    }
}

// ������ �̸��� ���� ��� checkbox�� check �Ѵ�.
function checkAll( aElem ) {
    var elem = document.all;
    var cnt = 0;

    for ( var i=0; i<document.all.length; i++ ) {
        if ( ( elem[i].type == "checkbox" ) && ( elem[i].name == aElem ) )  elem[i].checked = true;
    }
}

// ������ �̸��� ���� ��� checkbox�� uncheck �Ѵ�.
function uncheckAll( aElem ) {
    var elem = document.all;
    var cnt = 0;

    for ( var i=0; i<document.all.length; i++ ) {
        if ( ( elem[i].type == "checkbox" ) && ( elem[i].name == aElem ) )  elem[i].checked = false;
    }
}

// ������ �̸��� ���� ��� checkbox�� checked ���� ���� �Ѵ�.
function invertCheck( aElem ) {
    var elem = document.all;
    var cnt = 0;

	for ( var i=0; i<document.all.length; i++ ) {
		if ( ( elem[i].type == "checkbox" ) && ( elem[i].name == aElem ) )  {
			if ( elem[i].checked ) {
				elem[i].checked = false;
			}else{
				elem[i].checked = true;
			}
		}
	}
}

////////////////////////////////////////////////////////////////
// ������ �������� ����
////////////////////////////////////////////////////////////////
// get ����� �Ķ���͸� �ش����� input hidden ��ü�� �����Ѵ�.
function get2post(frm,sSearch){
    if (sSearch.length > 0) {

        var asKeyValues = sSearch.split('&');
        var asKeyValue  = '';

        for (var i = 0; i < asKeyValues.length; i++) {

            asKeyValue = asKeyValues[i].split('=');
            var e = document.createElement("input");
            e.setAttribute("type","hidden");
            e.setAttribute("name",asKeyValue[0]);
            e.setAttribute("value",asKeyValue[1]);
            e.setAttribute("_temp","true");

//          alert("[" + e.name +"]:[" + e.value +"]");
            frm.appendChild(e);
        }
     }
}

// get2post�� ������ �ӽ� ��ü�� �ı��Ѵ�.
function removeTempAttribute(frm){

	var idx=0;
	while (idx<frm.elements.length) {
		var obj = frm.elements[idx];

		if( obj.getAttribute("_temp") != null && obj.getAttribute("_temp") == "true"){
			try{
				frm.removeChild(obj);
			}catch(e){
				try{
					obj.parentNode.removeChild(obj);
				}catch(ie){
					alert("ó���� ������ �߻��Ͽ� �۾����� â�� �ݽ��ϴ�.\n�̿뿡 ������ ��� �˼��մϴ�.");
				}
			}
			continue;
		}
		idx++;
	}
}


////////////////////////////////////////////////////////////////
// String Util
////////////////////////////////////////////////////////////////
/**
*  ���ڿ����� �¿� ��������
*/
function trim(str){
    return replace(str," ","");
}

/**
*  ���ڿ��� �ִ� Ư������������ �ٸ� ������������ �ٲٴ� �Լ�.
*/
function replace(targetStr, searchStr, replaceStr) {
    var i=0,j=0;
    if (targetStr == null || searchStr == null || replaceStr == null) return "";

    var tmpStr = "";
    var tlen = targetStr.length;
    var slen = searchStr.length;
    var i=0;
    var j=0;

    while (i < tlen - slen+1) {
        j = i + slen;

        if (targetStr.substring(i,j) == searchStr){
            tmpStr += replaceStr;
            i += slen;

        }else{
            tmpStr += targetStr.substring(i, i + 1);
            i++;
        }
    }

    tmpStr +=  targetStr.substring(i);

	return tmpStr;
}

// Left ���ڸ� ��ŭ padStr �� ���δ�.
function lpad(src, len, padStr){
    var retStr = "";
    var padCnt = Number(len) - String(src).length;
    for(var i=0;i<padCnt;i++) retStr += String(padStr);
    return retStr+src;
}

// Right ���ڸ� ��ŭ padStr �� ���δ�.
function rpad(src, len, padStr){
    var retStr = "";
    var padCnt = Number(len) - String(src).length;
    for(var i=0;i<padCnt;i++) retStr += String(padStr);
    return src+retStr;
}

//���ڱ���üũ ���ڿ����ƽ�Ű 1 byte �ѱ� 2 byte
function getStringLength (str)
{
	var retCode = 0;
	var strLength = 0;

	for (var i = 0; i < str.length; i++)
	{
		var code = str.charCodeAt(i);
		var ch = str.substr(i,1).toUpperCase();

		code = parseInt(code);

		if ((ch < "0" || ch > "9") && (ch < "A" || ch > "Z") && ((code > 255) || (code < 0)))
			strLength = strLength + 2;
		else
			strLength = strLength + 1;
	}
	return strLength;
}

////////////////////////////////////////////////////////////////
// Popup & Layer
////////////////////////////////////////////////////////////////
//��â ���� �Լ�
function uf_newWin( url, winName, sizeW, sizeH, frm) {
    
    if(frm=="" || frm=="undefined" || frm==undefined) frm = document.frm;

    if(winName=="" || winName=="undefined") winName = "Default";

    var nLeft  = screen.width/2 - sizeW/2 ;
    var nTop  = screen.height/2 - sizeH/2 ;

    opt = ",toolbar=no,menubar=no,location=no,scrollbars=yes,status=yes,resizable=yes";
    
    var objWin = window.open('', winName, "left=" + nLeft + ",top=" +  nTop + ",width=" + sizeW + ",height=" + sizeH  + opt );

    frm.target = winName;
    frm.action = url;
    frm.method = "post";

    fn_submit_p(frm);
    
    
    return objWin;
}

function uf_newWinNs( url, winName, sizeW, sizeH, frm) {
    
    if(frm=="" || frm=="undefined" || frm==undefined) frm = document.frm;

    if(winName=="" || winName=="undefined") winName = "Default";

    var nLeft  = screen.width/2 - sizeW/2 ;
    var nTop  = screen.height/2 - sizeH/2 ;

    opt = ",toolbar=no,menubar=no,location=no,scrollbars=yes,status=yes,resizable=yes";
    
    var objWin = window.open('', winName, "left=" + nLeft + ",top=" +  nTop + ",width=" + sizeW + ",height=" + sizeH  + opt );

    frm.target = winName;
    frm.action = url;
    frm.method = "post";

    fn_submit_p_ns(frm);
    
    return objWin;
}

function uf_newWinScrNo( url, winName, sizeW, sizeH, frm) {
    
    if(frm=="" || frm=="undefined" || frm==undefined) frm = document.frm;

    if(winName=="" || winName=="undefined") winName = "Default";

    var nLeft  = screen.width/2 - sizeW/2 ;
    var nTop  = screen.height/2 - sizeH/2 ;

    opt = ",toolbar=no,menubar=no,location=no,scrollbars=no,status=no,resizable=yes";
    
    var objWin = window.open('', winName, "left=" + nLeft + ",top=" +  nTop + ",width=" + sizeW + ",height=" + sizeH  + opt );

    frm.target = winName;
    frm.action = url;
    frm.method = "post";

    //fn_submit_p(frm);
    fn_submit_p_ns(frm);
    
    return objWin;
}

//��â ���� �Լ�
function uf_newModalWin( url, winName, sizeW, sizeH) {
    var nLeft  = screen.width/2 - sizeW/2 ;
    var nTop  = screen.height/2 - sizeH/2 ;

    opt = "scroll=no;status=no;help=no;resizable:no;";
    var reValue = window.showModalDialog(url, winName, "dialogWidth=" + sizeW + "px;dialogHeight="  +sizeH + "px;dialogLeft=" + nLeft + ";dialogTop=" + nTop + ";" + opt);
    
    return reValue;
}

// post �Ķ��� get �Ķ���� ���� 
function uf_paramSetting(frm, url){
    var es = frm.elements;
    var param = "";
    var bParamFirst;
    
    if( url.indexOf("?") > 0 ) bParamFirst = false;
    else bParamFirst = true;
    
    for(var i=0; i<es.length; i++){
        var tname = es[i].tagName.toLowerCase();
        var oname = es[i].name;
        var otext = "";

        if( tname == "input" || tname == "select" ){
       	 	if(bParamFirst) param = param+"?";
            else param = param + "&";
            
        	param = param + oname + "=" + es[i].value;

        	bParamFirst = false;
        }
    }

    return url + param;
}

//��â ���� �Լ�
/*
function uf_frmNewWinTest(userFrm, url, winName, sizeW, sizeH) {
    var nLeft  = screen.width/2 - sizeW/2 ;
    var nTop  = screen.height/2 - sizeH/2 ;
    var pos = 0;
    var winObj;

    var opt = ",toolbar=no,menubar=no,location=no,scrollbars=yes,status=no, resizable = no";
    opt = "width=" + sizeW + ",height=" + sizeH  + opt;

    var _url = uf_paramSetting(userFrm, url);    
            
    XecureNavigate(_url, winName, opt);
}
*/

//��â ���� �Լ�
function uf_frmNewWin(userFrm, url, winName, sizeW, sizeH, scroll) {
    var nLeft  = screen.width/2 - sizeW/2 ;
    var nTop  = screen.height/2 - sizeH/2 ;
    var pos = 0;
    var winObj;
    var _sizeW;
    var _sizeH;

    
    opt = ",toolbar=no,menubar=no,location=no,status=yes,resizable=no" + (scroll=='no' ? '':',scrollbars=yes');
    
    if( jQuery.browser.msie && parseInt(jQuery.browser.version) <= 7){
    	_sizeW = Number(sizeW)+22;
    }else{
    	_sizeW = sizeW;
    }
    _sizeH = Number(sizeH);
    opt = "left=110,top=200,width="+_sizeW+",height="+_sizeH+opt;
    
    /*
    if (winObj == null) {
        alert("�˾����� ����� �����Ͻʽÿ�.\n\n[ ����->���ͳݿɼ�->���� ����->�˾�����] üũ����");
        return;
    }*/

   userFrm.action = url;
   userFrm.target = winName;   
   winObj = window.open("", winName, opt );
   fn_submit_p(userFrm);
   
   return winObj;
}

//��â ���� �Լ�
function uf_frmNewWinGet(userFrm, url, winName, sizeW, sizeH) {
    var nLeft  = screen.width/2 - sizeW/2 ;
    var nTop  = screen.height/2 - sizeH/2 ;
    var pos = 0;
    var winObj;
    var _sizeW;
    var _sizeH;
    
    opt = ",toolbar=no,menubar=no,location=no,scrollbars=yes,status=no,resizable=no";
    //if(IEVersion=="IE6"){
    if( jQuery.browser.msie && parseInt(jQuery.browser.version) <= 6){
    	_sizeW = Number(sizeW)+22;
    	_sizeH = Number(sizeH);
    }else{
    	_sizeW = sizeW;
    	_sizeH = sizeH;
    }
    opt = "left=110,top=200,width=" + _sizeW + ",height=" + _sizeH  + opt;
    
    XecureNavigate(url, winName, opt);
}

//��â ���� �Լ�
function uf_frmNewWinNs(userFrm, url, winName, sizeW, sizeH, scroll) {
    var nLeft  = screen.width/2 - sizeW/2 ;
    var nTop  = screen.height/2 - sizeH/2 ;
    var pos = 0;
    var winObj;
    var _sizeW;
    var _sizeH;

    
    opt = ",toolbar=no,menubar=no,location=no,status=yes,resizable=no" + (scroll=='no' ? '':',scrollbars=yes');
    
    if( jQuery.browser.msie && parseInt(jQuery.browser.version) <= 7){
    	_sizeW = Number(sizeW)+22;
    }else{
    	_sizeW = sizeW;
    }
    _sizeH = Number(sizeH);
    opt = "left=110,top=200,width="+_sizeW+",height="+_sizeH+opt;
    
    
    winObj = window.open("", winName, opt);

    if (winObj == null) {
        alert("�˾����� ����� �����Ͻʽÿ�.\n\n[ ����->���ͳݿɼ�->���� ����->�˾�����] üũ����");
        return;
    }
 
/*
	var nLeft  = screen.width/2 - sizeW/2 ;
	var nTop  = screen.height/2 - sizeH/2 ;
    var pos = 0;
    var winObj;
    
    opt = ",toolbar=no,menubar=no,location=no,scrollbars=yes,status=no, resizable = no";
    opt = "width=" + sizeW + ",height=" + sizeH  + opt;

    var _url = uf_paramSetting(userFrm, url);
    XecureNavigate_NoEnc(_url, winName, opt);
*/
	
    userFrm.target = winName;
    userFrm.action = url;
    //fn_submit_p(userFrm);
    fn_submit_p_ns(userFrm);
    
    winObj.focus();
    return	winObj; 
}

//��â ���� �Լ�
function uf_frmNewWinNs2(userFrm, url, winName, sizeW, sizeH) {
    var nLeft  = screen.width/2 - sizeW/2 ;
    var nTop  = screen.height/2 - sizeH/2 ;
    var pos = 0;
    var winObj;
    var _sizeW;
    var _sizeH;

    opt = "left=645,top=200,toolbar=no,menubar=no,location=no,scrollbars=yes,status=yes,resizable=no";
    //if(IEVersion=="IE6"){
    if( jQuery.browser.msie && parseInt(jQuery.browser.version) <= 6){
    	_sizeW = Number(sizeW)+22;
    	_sizeH = Number(sizeH);
    }else{
    	_sizeW = sizeW;
    	_sizeH = sizeH;
    }
    
    opt = opt + ",width=" + _sizeW + ",height=" + _sizeH;
    winObj = window.open("", winName, opt);

    if (winObj == null) {
        alert("�˾����� ����� �����Ͻʽÿ�.\n\n[ ����->���ͳݿɼ�->���� ����->�˾�����] üũ����");
        return;
    }
 
/*
	var nLeft  = screen.width/2 - sizeW/2 ;
	var nTop  = screen.height/2 - sizeH/2 ;
    var pos = 0;
    var winObj;
    
    opt = ",toolbar=no,menubar=no,location=no,scrollbars=yes,status=no, resizable = no";
    opt = "width=" + sizeW + ",height=" + sizeH  + opt;

    var _url = uf_paramSetting(userFrm, url);
    XecureNavigate_NoEnc(_url, winName, opt);
*/
	
    userFrm.target = winName;
    userFrm.action = url;
    //fn_submit_p(userFrm);
    fn_submit_p_ns(userFrm);
    
    winObj.focus();
    return	winObj; 
}

function uf_frmNewWinNsScrNo(userFrm, url, winName, sizeW, sizeH) {
    var nLeft  = screen.width/2 - sizeW/2 ;
    var nTop  = screen.height/2 - sizeH/2 ;
    var pos = 0;
    var winObj;
    var _sizeW;
    var _sizeH;

    opt = "left=110,top=200,toolbar=no,menubar=no,location=no,scrollbars=no,status=no,resizable=no";
    //if(IEVersion=="IE6"){
    if( jQuery.browser.msie && parseInt(jQuery.browser.version) <= 6){
    	_sizeW = Number(sizeW)+22;
    	_sizeH = Number(sizeH);
    }else{
    	_sizeW = sizeW;
    	_sizeH = sizeH;
    }
    
    opt = opt + ",width=" + _sizeW + ",height=" + _sizeH;
    winObj = window.open("", winName, opt);

    if (winObj == null) {
        alert("�˾����� ����� �����Ͻʽÿ�.\n\n[ ����->���ͳݿɼ�->���� ����->�˾�����] üũ����");
        return;
    }
 
/*
	var nLeft  = screen.width/2 - sizeW/2 ;
	var nTop  = screen.height/2 - sizeH/2 ;
    var pos = 0;
    var winObj;
    
    opt = ",toolbar=no,menubar=no,location=no,scrollbars=yes,status=no, resizable = no";
    opt = "width=" + sizeW + ",height=" + sizeH  + opt;

    var _url = uf_paramSetting(userFrm, url);
    XecureNavigate_NoEnc(_url, winName, opt);
*/
	
    userFrm.target = winName;
    userFrm.action = url;
    //fn_submit_p(userFrm);
    fn_submit_p_ns(userFrm);
    
    winObj.focus();
    return	winObj; 
}


//��â ������ ����
function uf_reSize ( sizeW, sizeH){
    window.resizeTo( sizeW, sizeH );
    moveCenter();
}

// ȭ���� �߾����� �̵�
function moveCenter() {
	if (document.layers) {
	   var sinist = screen.width / 2 - outerWidth / 2;
	   var toppo = screen.height / 2 - outerHeight / 2;
	} else {
	   var sinist = screen.width / 2 - document.body.offsetWidth / 2;
	   var toppo = -55 + screen.height / 2 - document.body.offsetHeight / 2;
	}
	self.moveTo(sinist, toppo);
}

// ó���� ���̾�
function uf_loadingBar(){
	var loadingBar = "<div class='select-free' id='proce' style='z-index:1000;display:none;left:0px;top:0px;width:310px;height:40px;background:#FFFFFF;border:;'>";
		loadingBar = loadingBar + "<iframe frameborder='0' src='../inc/loadingBar.jsp' width='306' height='80' scrolling='no' marginwidth='0'  marginheight='0'></iframe>";
		loadingBar = loadingBar + "</div>";
	
	document.write(loadingBar);
}

//�Ⱓ��ȸ�� �Ⱓ������ư
function caldatediff(frm, fdate, tdate, fElem, tElem){
	if( typeof fElem=="undefined" ) fElem = frm.InqStrDt;
	else fElem = eval("frm."+fElem);
	if( typeof tElem=="undefined" ) tElem = frm.InqEndDt;
	else tElem = eval("frm."+tElem);
	
	if(typeof fdate=="undefined" || fdate==""){
		fElem.value = "";
	}else{
		fElem.value = fdate.substring(0,4)+"-"+fdate.substring(4,6)+"-"+fdate.substring(6);
	}
	
	if(typeof tdate=="undefined" || tdate==""){
		tElem.value = "";
	}else{
		tElem.value = tdate.substring(0,4)+"-"+tdate.substring(4,6)+"-"+tdate.substring(6);
	}
	//gridPageReset();
}

//������ư �޷��޺��������
function calSeldatediff(frmY, frmM, date){
	for(var i=0; i<frmY.length; i++){
		if(date.substring(0,4)==frmY[i].value){
			frmY.selectedIndex = i;
			break;
		}
	}
	
	for(var i=0; i<frmM.length; i++){
		if(date.substring(4,6)==frmM[i].value){
			frmM.selectedIndex = i;
			break;
		}
	}
}

function getCalSelectedDt(frm, InqDtY, InqDtM){
	
	var InqDtYElem = eval("frm."+InqDtY);
	var InqDtMElem = eval("frm."+InqDtM);
	
	return InqDtYElem[InqDtYElem.selectedIndex].value + InqDtMElem[InqDtMElem.selectedIndex].value;
}

function getAbsTop(element){ 
	if(typeof element!='object') 
	element=document.getElementById(element); 
	var TOP=0; 
	while(element){ 
	TOP+=element.offsetTop; 
	element=element.offsetParent; 
	} 

	return TOP; 
} 

function getAbsLeft(element){ 
	if(typeof element!='object') 
	element=document.getElementById(element); 
	var LEFT=0; 
	while(element){ 
	LEFT+=element.offsetLeft; 
	element=element.offsetParent; 
	} 

	return LEFT; 
} 

function AddComma(value){
	var src;
	var i;
	var factor;
	var su;
	var Spacesize = 0;
	
	var String_val = value.toString();
	
	factor = String_val.length % 3;
	su = (String_val.length-factor)/3;
	src = String_val.substring(0,factor);
	
	for(i=0;i<su;i++){
		if((factor==0) && (i==0)){
			src +=String_val.substring(factor+(3*i),factor+3+(3*i));
		}else{
			if(String_val.substring(factor+(3*i)-1,factor+(3*i))!="-") src += ",";
			src += String_val.substring(factor+(3*i),factor+3+(3*i));	
		}
	}
	
	return src;
}


//�Ҽ����ڸ� �����ϱ� fixNumberScale(val,�ڸ���)
function fixNumberScale(number,scale){
	 var ex = Math.pow(10,scale);
	 return Math.round(number*ex)/ex;
}

function openflash(width,height,wmode,src,gubun){ 
	if (wmode != "")
	    return "<object id=\""+gubun+"\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\" width="+width+" height="+height+"><param name=wmode value=transparent><param name=movie value="+src+"><param name=quality value=high ><embed src="+src+" quality=high  pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\" type=\"application/x-shockwave-flash\" width="+width+" height="+height+"></embed></object>"; 
	else
	    return "<object id=\""+gubun+"\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\" width="+width+" height="+height+"><param name=movie value="+src+"><param name=quality value=high ><embed src="+src+" quality=high  pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\" type=\"application/x-shockwave-flash\" width="+width+" height="+height+"></embed></object>"; 
} 

function writeflash(src) { 
    document.write(src); 
}

//��ư �ѿ���
function mmover(obj) {
	var img = obj.src.split('.gif');
	obj.src = img[0] + 'on.gif';
}
function mmout(obj) {
	var img = obj.src.split('on.gif');
	obj.src = img[0] + '.gif';
}

//ȭ�� Ȯ�� ��� 
function styleZoom(cno){
	if(document.getElementById('wrapper').style.zoom == ""){
		document.getElementById('wrapper').style.zoom='100%';
	}
	var z;
	var obj = document.getElementById('wrapper');
	var csize = parseInt(obj.style.zoom);
	//alert(csize);
	if(cno){
		z = csize + 10 + '%';
		obj.style.zoom = z;
	}else{
		z = csize - 10 + '%';
		if(csize > 70){
			obj.style.zoom = z;
		}
	}
}

function MM_openBrWindow(theURL,winName,features) { //v2.0
    window.open(theURL,winName,features);
}


Date.isLeapYear = function (year) { 
    return (((year % 4 === 0) && (year % 100 !== 0)) || (year % 400 === 0)); 
};

Date.getDaysInMonth = function (year, month) {
    return [31, (Date.isLeapYear(year) ? 29 : 28), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][month];
};

Date.prototype.isLeapYear = function () { 
    var y = this.getFullYear(); 
    return (((y % 4 === 0) && (y % 100 !== 0)) || (y % 400 === 0)); 
};

Date.prototype.getDaysInMonth = function () { 
    return Date.getDaysInMonth(this.getFullYear(), this.getMonth());
};

Date.prototype.addMonths = function (value) {
    var n = this.getDate();
    this.setDate(1);
    this.setMonth(this.getMonth() + value);
    this.setDate(Math.min(n, this.getDaysInMonth()));
    return this;
};

/**
 * �⵵�� �� ��������
 * @param m �� ����
 * @return YYYYMM	  
 */
function getYearMonth(y,m,v){
        var today = new Date(String(parseInt(m,10))+'/1/'+y);
        if( typeof v == 'undefined' || v == '' ) v = 0;
        today =  today.addMonths(v);
        var mm = today.getMonth()+1;
        return today.getFullYear() +  '' + (String(mm).length == 1 ? '0'+mm:mm);
}
