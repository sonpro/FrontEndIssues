/*
<저작권>
본 소스의 일부나 전체의 내용은 어떠한 형태로든 무단 복제를 금하며 다른 매체로의 복제를 위해서는 반드시 WEBCASH(주) 의 사전 동의를 얻어야 합니다.
사전동의 없이 사용 중 본 제품에서 일어난 특정한, 우발적, 비직접적, 필연적인 손실을 책임지지 않습니다.
Copyright ⓒ 2003 WEBCASH Co., Ltd. All Rights Reserved.

********************************************************************************
* PROJECT
********************************************************************************
* Project               : eB_IB2 (e-biz Internet Banking Component 2)
* Subject               : COMMON JAVASCRIPT
* FileName              : ib2.js
* Company               : WEBCASH.CO.KR
* Team                  : Web Technology Team
* Create Date           : 2002-01-01
* Person                : Chol-Hun(honeyc@webcash.co.kr)
********************************************************************************
* HISTORY
********************************************************************************
* Modify Date           : 2004-04-22 5:16오후
* Person                : Chol-Hun(honeyc@webcash.co.kr)
* Detail                : A tag 위 mouse over시 링크내용 숨김 태그 추가
*                         한글 자동 전환 여부 추가
*
* Modify Date           : 2004-05-03 6:00오후
* Person                : Chol-Hun(honeyc@webcash.co.kr)
* Detail                : 반각문자 => 전각문자 자동 변환 및 길이 검증 모듈 추가 - fullchar=true
*
* Modify Date           : 2004-05-06 4:22오후
* Person                : Chol-Hun(honeyc@webcash.co.kr)
* Detail                : 개별 객체 ib2 미적용 - notuse
*
* Modify Date           : 2004-05-31 2:28오후
* Person                : Chol-Hun(honeyc@webcash.co.kr)
* Detail                : 값 maxlength 만큼 입력시 다음 포커스 이동
********************************************************************************
*/

/*
-----------------------------------------------------------------
- ENTER KEY 입력시 자동 submit : enter_submit 표기
<span onclick="..." enter_submit>검색</span>
-----------------------------------------------------------------
*/

//<<SET GLOBAL VALUE>>

// mask value 가 null 일 경우 특수값 입력을 막을 것인지 ('use' - 특수값입력가능, 'N' - 특수값입력불가능)
var DEFAULT_USE_MASK = 'use';

// 특수키 기능 제한(Ctrl + R, Ctrl + N, F5)
var IS_INT_KEY = false;

// 마우스 기능 제한(오른쪽 버튼 무시, drag 무시,
var IS_INT_MOUSE = false;

// 오류값 발견시 기존 입력값 유지 여부
var IS_KEEP_VALUE = false;

// 링크 오버시 status 표시 불가
var IS_HIDDEN_LINK = false;

// 한글 자동 전환 여부
var IS_AUTO_IME = true;

// 디버그 모드
var DEBUG_MODE = false;  // true, false

// Select 선택시 자동 다음 포커스 이동 기능
var IS_NEXT_FOCUS_SELECT = false;   // true, false

//Select 선택시 사용자정의 이벤트
var IS_USR_EVT_SELECT = true;   // true, false

// browser check
if (document.getElementById && !document.all){
    var isNS = true;
    var isIE = false;
}else{
    var isIE = true;
    var isNS = false;
}

var submitObj = null;

if(!window.event && window.captureEvents) {
	// set up event capturing for mouse events (add or subtract as desired)
	window.captureEvents(Event.MOUSEOVER|Event.MOUSEOUT|Event.CLICK|Event.DBLCLICK);
	// set window event handlers (add or subtract as desired)
	window.onmouseover = WM_getCursorHandler;
	window.onmouseout = WM_getCursorHandler;
	window.onclick = WM_getCursorHandler;
	window.ondblclick = WM_getCursorHandler;
	// create an object to store the event properties
	window.event = new Object;
}


function wfcb_onpaste() {
	//if ( obj == null || typeof obj=="undefined" )
	var obj = event.srcElement;

	var clipdata = window.clipboardData.getData("Text");
	var datatype = toUpperCase(obj.getAttribute("datatype"));

	if (datatype == "N" || datatype == "ACCTNO") clipdata = clipdata.replace(/-/gi,"");
	obj.value = clipdata;
	event.returnValue = false;
}

function findXY(){
	x = window.event.screenX;
	y = window.event.screenY;
}

function noBackSpace(){
	return false;
}

//일자 유효 검증
function isValidDate(datestr){
	//널인지?
	if(isEmpty(datestr)){
		return null;
	}
	//숫자인지?
	if(!isNum(datestr)){
		ERR_MSG = "숫자를 입력하셔야 합니다.";
		return false;
	}
	//길이가 8자리?
	if(datestr.length != 8){
		ERR_MSG = "년월일 8자리를 입력하셔야 합니다.";
		return false;
	}
	var yy = Number(datestr.substring(0,4));
	var mm = Number(datestr.substring(4,6));
	var dd = Number(datestr.substring(6,8));
	//년 검증
	if( !(yy>1900 && yy<2100) ){
		ERR_MSG = "년은 1900~2100 까지만 입력할 수 있습니다.";
		return false;
	}
	
	//월 검증
	if( !(mm > 0 && mm < 13) ){
		ERR_MSG = "월은 1~12 까지만 입력할 수 있습니다.  ";
		return false;
	}
	//윤년 검증
	var boundDay = "";
	if(mm != 2){
		var mon=new Array(31,28,31,30,31,30,31,31,30,31,30,31);
		boundDay = mon[mm-1];
	}
	else{
		if (yy%4 == 0 && yy%100 != 0 || yy%400 == 0){
			boundDay = 29;
		}
		else{
			boundDay = 28;
		}
	}
	//일 검증
	if( (dd <= 0) || (dd > boundDay) ){
		ERR_MSG = "유효하지 않은 일자입니다.\n(" + yy + "년 " + mm + "월은 " + boundDay + "일 까지 있습니다.)";
		return false;
	}
	return true;
}

// 년월만 검증
function isValidDateYYYYMM(datestr){
	//널인지?
	if(isEmpty(datestr)){
		return null;
	}
	//숫자인지?
	if(!isNum(datestr)){
		ERR_MSG = "숫자를 입력하셔야 합니다.";
		return false;
	}
	//길이가 8자리?
	if(datestr.length != 6){
		ERR_MSG = "년월 6자리를 입력하셔야 합니다.";
		return false;
	}
	var yy = Number(datestr.substring(0,4));
	var mm = Number(datestr.substring(4,6));
	//월 검증
	if( !(mm > 0 && mm < 13) ){
		ERR_MSG = "월은 1~12 까지만 입력할 수 있습니다.  ";
		return false;
	}
	return true;
}

//EMAIL 유효성 검증
function isValidEmail(email){
	//널인지?
	if(isEmpty(email)){
		return null;
	}
	//올바른 EMAIL 인지 검증
	var format = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
	if (email.search(format) == -1) {
	   ERR_MSG = "유효하지 않은 이메일 형식입니다.";
	   return false;
	}
	return true;
}

//주민등록번호 유효성 검증
function isValidRegNo(regno){
	
	if (DEBUG_MODE) return true;
	//널인지?
	if(isEmpty(regno)){
		return null;
	}
	//// 13자리 숫자인가? -> 주민번호
	if((getByteLength(regno) != 13) || (!isNum(regno)) ) {
		ERR_MSG = "주민등록번호는 13자리 숫자입니다.";
		return false;
	}

	////올바른 주민등록번호인지 검증
	// 주민번호의 형태와 7번째 자리(성별) 유효성 검사

	fmt = /^\d{6}[1234]\d{6}$/;
	if (!fmt.test(regno)) {
		ERR_MSG = "잘못된 주민등록번호입니다.";
		return false;
	}
	// 날짜 유효성 검사
	birthYear = (regno.charAt(7) <= "2") ? "19" : "20";
	birthYear += regno.substr(0, 2);
	birthMonth = regno.substr(2, 2) - 1;
	birthDate = regno.substr(4, 2);
	birth = new Date(birthYear, birthMonth, birthDate);

	if ( birth.getYear() % 100 != regno.substr(0, 2) ||
		birth.getMonth() != birthMonth ||
		birth.getDate() != birthDate) {
		ERR_MSG = "잘못된 주민등록번호입니다.";
		return false;
	}

	// Check Sum 코드의 유효성 검사
	buf = new Array(13);
	for (var i = 0; i < 13; i++) buf[i] = parseInt(regno.charAt(i));
	multipliers = [2,3,4,5,6,7,8,9,2,3,4,5];
	for (i = 0, sum = 0; i < 12; i++) sum += (buf[i] *= multipliers[i]);

	if ((11 - (sum % 11)) % 10 != buf[12]) {
		ERR_MSG = "잘못된 주민등록번호입니다.";
		return false;
	}

	return true;
}

//사업자번호 유효성 검증
function isValidCustNo(strNumb){
	//널인지?
	if(isEmpty(strNumb)){
		return null;
	}
	// 10자리 숫자인가?
	if((getByteLength(strNumb) != 10) || (!isNum(strNumb)) ) {
		ERR_MSG = "사업자등록번호는 10자리 숫자입니다.";
		return false;
	}

	sumMod  =   0;
	sumMod  +=  Number(strNumb.substring(0,1));
	sumMod  +=  Number(strNumb.substring(1,2)) * 3 % 10;
	sumMod  +=  Number(strNumb.substring(2,3)) * 7 % 10;
	sumMod  +=  Number(strNumb.substring(3,4)) * 1 % 10;
	sumMod  +=  Number(strNumb.substring(4,5)) * 3 % 10;
	sumMod  +=  Number(strNumb.substring(5,6)) * 7 % 10;
	sumMod  +=  Number(strNumb.substring(6,7)) * 1 % 10;
	sumMod  +=  Number(strNumb.substring(7,8)) * 3 % 10;
	sumMod  +=  Math.floor(Number(strNumb.substring(8,9)) * 5 / 10);
	sumMod  +=  Number(strNumb.substring(8,9)) * 5 % 10;
	sumMod  +=  Number(strNumb.substring(9,10));
	if  (sumMod % 10    !=  0){
		ERR_MSG = "올바르지 않은 사업자등록번호입니다.";
		return false;
	}
	return  true;
}

// xxxx은행 계좌번호 검증
function isValidAcctNo(acctno){
	//널인지?
	if(isEmpty(acctno)){
		return null;
	}
	//11자리 숫자인지?
	if ((getByteLength(acctno) != 11) || (!isNum(acctno))) {
		ERR_MSG = "계좌번호는 '-'를 제외한 11자리 숫자입니다.";
		return false;
	}
	//계좌번호 검증
	var sum = 0;
	var check_digit = acctno.substring(10);
	for (var idx = 0; idx <=9 ; idx++) {
		value = acctno.substring(idx,idx+1);
		if (idx == 0 || idx == 2 || idx == 4 || idx == 6 || idx == 8) {
			value = value * 1;
		}
		else {
			value = value * 2;
		}
		sum = sum + value;
	}
	var last = 10 -(sum - (Math.floor(sum/10) * 10));
	if (last == 10) last = 0;
	if (last != check_digit) {
		ERR_MSG = "올바르지 않은 계좌번호입니다.";
		return false;
	}
	return true;
}

//아이디 검증
function isValidUserId(userid){
	//널인지?
	if(isEmpty(userid)){
		return null;
	}
	if(getByteLength(userid)>20 || getByteLength(userid) < 6 ){
		ERR_MSG = "사용자 아이디는 영숫자 혼합하여 6자 이상 20자이내로 입력하셔야 합니다.";
		return false;
	}
	if(isNum(userid)){
		ERR_MSG = "아이디는 숫자로만 구성할 수 없습니다.";
		return false;
	}
	for(var i=0; i < userid.length; i++) {
		if ( !(isValidMask(userid.charAt(i),"N") && isValidType(userid.charAt(i),"AN")) ){
			return false;
		}
	} // for end
	return true;
}
                
//비밀번호 검증
function isValidPassword(pwd){
	var alpaBig= "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var alpaSmall= "abcdefghijklmnopqrstuvwxyz";
	var num = "01234567890";
	//널인지?
	if(isEmpty(pwd)){
		return null;
	}
	// 비밀번호는 6자리이상 8자리 이하 .. maxLength=20로 변경 할것
	if(getByteLength(pwd)<6 || getByteLength(pwd) > 20 ){
		ERR_MSG = "비밀번호는 반드시 6자 이상 8자이내로 입력해야 합니다.";
		return false;
	}
	if(isNum(pwd)){
		ERR_MSG = "비밀번호는 반드시 알파벳을 하나 이상 포함해야 합니다.";
		return false;
	}
	for(var i=0;i < alpaBig.length - pwd.length+1;i++){
		if(alpaBig.substring(i,i+pwd.length) == pwd)
		{
			ERR_MSG = "ABCDEF처럼 연속된 문자는 사용할 수 가 없습니다.";
			return false;
		}
	}
	if (pwd.indexOf(' ') > -1) {
		ERR_MSG = "공백은 입력할 수 없습니다.";
		return false;
	}
	for(i=0;i < alpaSmall.length - pwd.length+1;i++){
		if(alpaSmall.substring(i,i+pwd.length) == pwd)
		{
			ERR_MSG = "abcdef처럼 연속된 문자는 사용할 수 가 없습니다.";
			return false;
		}
	}
	for(i=1;i < pwd.length;i++){
		if(pwd.substring(0,1) != pwd.substring(i,i+1) )
			return true;
	}
	ERR_MSG = "비밀번호는 같은 문자만 연속해서 입력할 수 없습니다";
	return false;
}


////////////////////////////////////////////////////////////////
// onkeyup 관련
////////////////////////////////////////////////////////////////
function wfcb_onkeyup() {
	//if (event.keyCode == 36 || event.keyCode == 45 || event.keyCode == 38 || event.keyCode == 40 || event.keyCode == 36 || event.keyCode == 35 || event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 9 || event.keyCode == 16) return;
	//if ( obj == null || typeof obj=="undefined" )
	var obj = event.srcElement;
	var datatype = toUpperCase(obj.getAttribute("datatype"));
	var format   = toUpperCase(obj.getAttribute("format"));
	var mask     = toUpperCase(obj.getAttribute("mask"));
	var str      = obj.value;
	var minus    = "";

	if (obj.getAttribute("uppercase") != null) obj.value = obj.value.toUpperCase();
	// 포맷적용
	switch(format){
		case "CURRENCY" :       //999,999,999
			if(str == '0'){
				break;
			}
			if( str.indexOf('-') > -1) {
				str = str.substring(1);
				minus = "-";
			}

			str = str.replace(/^0*/,'').replace(/,/g,'');
			var strLen = str.length;
			var retStr = "";
			for(var i=0; i<strLen; i++){
				if ((i%3 == strLen%3) && (i != 0)) retStr += ",";
				retStr += str.charAt(i);
			}
			obj.value = minus + retStr;
			try{
				if(obj.value =="" || obj.value==null || obj.value == "undefined"){
					eval("document.getElementById(\""+obj.name+"_HAN"+"\")").innerHTML = "(영 원)";
				}else if(obj.value =="0"){
					eval("document.getElementById(\""+obj.name+"_HAN"+"\")").innerHTML = "(영 원)";
				}else{
					eval("document.getElementById(\""+obj.name+"_HAN"+"\")").innerHTML = "(" + NUM_TO_HAN(obj.value, 2) + " 원)";
				}
			}catch(e){}
				
			break;
		case "DOTCURRENCY" :        //999,999,999
			var afterNo = "";
			var preNo = "";
			if (str.indexOf('.') > -1){
				afterNo = str.substring(str.indexOf('.')+1);
				afterNo = "." + afterNo.replace(/\,/g,'').replace(/\./g,'');
				preNo = str.substring(0, str.indexOf('.'));
			}
			else{
				afterNo = "";
				preNo = str;
			}
			preNo = preNo.replace(/^0*/,'').replace(/,/g,'');
			if (preNo == "") preNo = "0";
			var preNoLen = preNo.length;
			var retStr = "";
			for(var i=0; i<preNoLen; i++){
				if ((i%3 == preNoLen%3) && (i != 0)) retStr += ",";
				retStr += preNo.charAt(i);
			}
			retStr = retStr+afterNo;
			obj.value = retStr;
			break;
		case "DATE" :       //999,999,999
			break;
	}
	//자동 포커스 이동
	var maxlength = obj.getAttribute("maxLength");
	window.status += '';

	if (isIE){
		if ( (event.keyCode == 13) && (submitObj != null) ) submitObj.click();
		if (maxlength != null || maxlength > 0 || event.keyCode == 13) {
			// 2012.01.09 태동현
			// 마지막 글자에 받침이 있는 경우 입력이 안되는 현상 수정 Start
			var templength = getByteLength(obj.value);
			var chr = escape(obj.value.charAt(obj.value.length-1));
			
			if(templength >= maxlength){
				if (chr.indexOf("%u") != -1){
					templength = templength-1;
				}
			}
			// 마지막 글자에 받침이 있는 경우 입력이 안되는 현상 수정 End
			
			if ((event.keyCode == 13) || (templength >= maxlength) ){
				var nextObj = obj.getAttribute("nextFocus");
				if (!(nextObj == null || nextObj == "none")) {
					try{
						document.getElementsByName(nextObj)[0].focus();
					}
					catch(e){}
				}
				else {
					var isNext = false;
					var elem = document.all.tags('INPUT');
					for (var i=0;i<elem.length;i++) {
						if (isNext) {
							if (elem[i].type == null || elem[i].type == "undefined" || elem[i].type == "hidden" || elem[i].getAttribute("readonly")) continue;
							try{
								elem[i].focus();
								break;
							}
							catch(e){}

						}
						if (elem[i] == obj) {
							isNext = true;
						}
					}
				}
			}
		}
	}
}

////////////////////////////////////////////////////////////////
// 전체 포맷팅
////////////////////////////////////////////////////////////////
function wfcb_allformat() {
	var elemFrm = document.all.tags('FORM');
	for (var idxFrm=0; idxFrm<elemFrm.length; idxFrm++){
		try{
			obj_allformat(elemFrm[idxFrm]);
		}
		catch(e){}
	}
}

////////////////////////////////////////////////////////////////
// onkeypress 관련
////////////////////////////////////////////////////////////////
function wfcb_onkeypress() {
	//if ( obj == null || typeof obj=="undefined" )
	var obj = event.srcElement;
	var datatype = toUpperCase(obj.getAttribute("datatype"));
	var format   = toUpperCase(obj.getAttribute("format"));
	var mask     = toUpperCase(obj.getAttribute("mask"));
	var key      = String.fromCharCode (event.keyCode);
	var str      = obj.value;

	if (datatype == "USERID" || datatype == "PASSWORD") return;
	// 데이터 타입 검증
	switch (datatype) {
		case "CURRENCY" :
			if ( !(isValidMask(key,",-") && isValidType(key,"N")) ) event.returnValue=false;
			break;
		case "DOTCURRENCY" :
			if ( !(isValidMask(key,",.") && isValidType(key,"N")) ) event.returnValue=false;
			break;
		case "DATE" :
			if ( !(isValidMask(key,"N") && isValidType(key,"N")) ) event.returnValue=false;
			break;
		case "EMAIL" :
			if ( !(isValidMask(key,"@.-_") && isValidType(key,"AN")) ) event.returnValue=false;
			break;
		case "REGNO" :
			if ( !(isValidMask(key,"N") && isValidType(key,"N")) ) event.returnValue=false;
			break;
		case "CUSTNO" :
			if ( !(isValidMask(key,"N") && isValidType(key,"N")) ) event.returnValue=false;
			break;
		case "DDDPHONENUM" :
			if ( !(isValidMask(key,"N") && isValidType(key,"N")) ) event.returnValue=false;
			break;
		case "ACCTNO" :
			if ( !(isValidMask(key,"N") && isValidType(key,"N")) ) event.returnValue=false;
			break;
		default :
			if ( obj.getAttribute("mask") == null || obj.getAttribute("mask") == "" ) obj.setAttribute("mask", DEFAULT_USE_MASK);
			if ( !(isValidMask(key,mask) && isValidType(key,datatype)) ) event.returnValue=false;
	}
}

////////////////////////////////////////////////////////////////
// onkeydown 관련
////////////////////////////////////////////////////////////////
var isGoSubmit = false;
function wfcb_onkeydown() {
	//if ( obj == null || typeof obj=="undefined" )
	var obj = event.srcElement;

	if (window.event.keyCode == 13) {

		if (!isGoSubmit) {
			var isNext = false;
			var elem = document.all.tags('INPUT');
			for (var i=0;i<elem.length;i++) {
				if (elem[i].type == "text" || elem[i].type == "password" ) {
					if (isNext) {
						elem[i].focus();
						return false;
						break;
					}
					if (elem[i] == obj) {
						isNext = true;
					}
				}
			}
			try{
				SUBMIT_FUNCTION();
			}
			catch(e) {}

		}
	}
	if (isGoSubmit) {
	}
}

////////////////////////////////////////////////////////////////
// onblur 관련
////////////////////////////////////////////////////////////////
function wfcb_onblur() {
	//if ( obj == null || typeof obj=="undefined" )
	var obj = event.srcElement;
	if (obj.getAttribute("uppercase") != null) obj.value = obj.value.toUpperCase();
	if (obj.getAttribute("lowercase") != null) obj.value = obj.value.toLowerCase();
	if (!obj_validate(obj)) return false;   // 데이터 유효성 검증
	if (!obj.getAttribute("readonly")) obj_format(obj);                     // 포맷적용
	return true;
}

////////////////////////////////////////////////////////////////
// onfocus 관련
////////////////////////////////////////////////////////////////
function wfcb_onfocus() {
	//if ( obj == null || typeof obj=="undefined" )
	var obj = event.srcElement;
	// readOnly 되어 있는 경우에는 포맷 삭제 금지
	if (!obj.getAttribute("readonly")) {
		obj_removeformat(obj);  // 포맷삭제
		obj.select();
	}
}

////////////////////////////////////////////////////////////////
// onsubmit 관련
////////////////////////////////////////////////////////////////
function wfcb_onsubmit(aFrm,ridx){
	
	if ( typeof aFrm == "undefined" ) {
		alert("스크립트 오류 정의되지 않은 Form 입니다.");
		return false;
	}

	if(isIE){
		var elem = aFrm.tags('INPUT');
		obj_allremoveformat(aFrm);                  // 포맷 삭제

		for (var idx=0; idx<elem.length; idx++){
			var obj = elem[idx];

			// 개별 필드 ib2 미적용시 사용
			if (obj.getAttribute("notuse") != null) continue;

			if( ridx == null ){//증빙우선
				if(!obj_validate(obj)) {
					obj_allformat(aFrm);
					return false;   // 데이터 유효성 재검증
				}
	
				if(!obj_nullcheck(obj)) {
					obj_allformat(aFrm);
					return false;   // 필수 항목 검증
				}
			}else{//비목우선
				var arr_objid = obj.id.split('_');
				
				if( arr_objid[arr_objid.length-1] == ridx ){
					
					if(!obj_validate(obj)) {
						obj_allformat(aFrm);
						return false;   // 데이터 유효성 재검증
					}
		
					if(!obj_nullcheck(obj)) {
						obj_allformat(aFrm);
						return false;   // 필수 항목 검증
					}		
				}
			}
		}

		for (var idx=0; idx<elem.length; idx++){
			var obj = elem[idx];
			if (toUpperCase(obj.getAttribute("fullchar")) != "TRUE") continue;

			var tmp = obj.value;
			obj.value = Half2Full(tmp);
		}

		return true;
	}
}

////////////////////////////////
// 객체 function
////////////////////////////////
//필수 항목 검증
function obj_nullcheck(obj){
//                  if (obj.getAttribute("notnull") == "true") {
// 2003.1.10 황상훈 수정 -> obj.getAttribute("notnull")의 개체값이 없으면 null로 있으면 아무것도 나타나지 않아 수정함.
	if (obj.getAttribute("notnull") != null) {
		if(isEmpty(obj.value)){
			//obj_allformat(); // 전체 포맷 적용
			obj.focus();
			obj.select();
			var colName="";
			if(obj.getAttribute("colName") != null){
				colName = "\n* 필수입력 항목 : " + obj.getAttribute("colName");
			}
			alert("필수항목은 반드시 입력하셔야 합니다.\n" + colName);
			try{
				fnOpenTrFocus(obj,obj.id.split('_')[1]);
			}catch(e){}
			return false;
		}
	}
	return true;
}

//전체 객체 포맷 적용
function obj_allformat(aFrm){
	var elem = aFrm.tags('INPUT');
	for (var idx=0; idx<elem.length; idx++){
		obj_format(elem[idx]); //포맷 적용
	}
}

//전체 객체 포맷 삭제
function obj_allremoveformat(aFrm){
	var elem = aFrm.tags('INPUT');
	for (var idx=0; idx<elem.length; idx++){
		obj_removeformat(elem[idx]); //포맷 적용
	}
}

//포맷 삭제
function obj_removeformat(obj) {
	var format = toUpperCase(obj.getAttribute("format"));
	var str = obj.value;
	if(format != null){
		switch(format){
			case "DATE":
			case "ACCTNO":
			case "CARDNO":
			case "CUSTNO":
			case "REGNO" :          //날짜 형식
				obj.value = str.replace(/-/g,"");
				break;
			case "CURRENCY" :       // 금액
				obj.value = str.replace(/\,/g,"");
				break;
			case "DOTCURRENCY" :    // 금액
				obj.value = str.replace(/\,/g,"");
				break;
		}
	}
}
               
// 출력 포맷 적용
function obj_format(obj) {
	if(obj.getAttribute("format")==null) return;
	var format = toUpperCase(obj.getAttribute("format"));
	var str = obj.value;
	if (str == null || str == "") {
		return;
	}
	if(format != null){
		switch(format){
			case "CURRENCY" :       //금액 형식
										var retStr = "";
										var minus ="";
										if(str == '0'){
											break;
										}
										if( str.indexOf('-') > -1) {
											str = str.substring(1);
											minus = "-";
										}
										str = str.replace(/^0*|\,/g,'');
										var strLen = str.length;
										for(var i=0; i<strLen; i++){
											if ((i%3 == strLen%3) && (i != 0)) {
												retStr += ",";
											}
											retStr += str.charAt(i);
										}
										obj.value = minus + retStr;
										break;
			case "DOTCURRENCY" :        //'.' 있는 금액 형식
										var retStr = "";
										var preNo = "";
										var afterNo = "";
										if ( str.indexOf('.') > -1 ){
											preNo = str.substring(0, str.indexOf('.'));
											afterNo = str.substring(str.indexOf('.'));
										}
										else{
											preNo = str;
											afterNo = ".";
										}
										preNo = preNo.replace(/^0*|\,/g,'');
										if (preNo == "") preNo = "0";
										var preNoLen = preNo.length;
										for(var i=0; i<preNoLen; i++){
											if ((i%3 == preNoLen%3) && (i != 0)) {
												retStr += ",";
											}
											retStr += preNo.charAt(i);
										}
										if (obj.getAttribute("decimalplace") != null) obj.value = retStr + rpad(afterNo,Number(obj.getAttribute("decimalplace"))+1, '0');
										break;
			case "DATE" :           //날짜 형식
										var retStr = "";
										retStr = str.substring(0,4) + "-" + str.substring(4,6) + "-" + str.substring(6,8);
										obj.value = retStr;
										break;
			case "REGNO" :          //주민등록 형식
										var retStr = "";
										retStr = str.substring(0,6) + "-" + str.substring(6,13);
										obj.value = retStr;
										break;
			case "CUSTNO" :         //사업자번호 형식
										var retStr = "";
										retStr = str.substring(0,3) + "-" + str.substring(3,8) + "-" + str.substring(8);
										obj.value = retStr;
										break;
			case "ACCTNO" :         //계좌번호 형식
										var retStr = "";
										retStr =  str.substring(0,3) + "-" + str.substring(3,8) + "-" + str.substring(8);
										obj.value = retStr;
										break;
			case "CARDNO" :         //카드번호 형식
										var retStr = "";
										retStr =  str.substring(0,4) + "-" + str.substring(4,8) + "-" + str.substring(8,12) + "-" + str.substring(12,16);
										obj.value = retStr;
										break;
		}
	}
}

//데이터 유효성검증
function obj_validate(obj) {
	if(isIE){
		var fullchar        = toUpperCase(obj.getAttribute("fullchar"));
		var datatype        = toUpperCase(obj.getAttribute("datatype"));
		var mask            = toUpperCase(obj.getAttribute("mask"));
		var format          = toUpperCase(obj.getAttribute("format"));
		var minLength       = toUpperCase(obj.getAttribute("minLength"));
		var maxLength       = obj.maxLength;
		var lowBound        = toUpperCase(obj.getAttribute("lowBound"));
		var highBound       = toUpperCase(obj.getAttribute("highBound"));
		var str = obj.value;
		if( (!isEmpty(datatype)) || (!isEmpty(mask)) ){
			ERR_MSG = "";
			switch (datatype) {
				case "DOTCURRENCY" :    // 금액 유효 검증
					if (obj.getAttribute("decimalplace") != null) {
						if (obj.value.lastIndexOf('.') > 0) {
							// '.'이 한개 이상인지 검증
							if (obj.value.lastIndexOf('.') != obj.value.indexOf('.')) {
								alert("소숫점이 두개 이상입니다.");
								obj.focus();
								return false;

							}
							// 소수점 위치 검사
							if ((obj.value.length - obj.value.indexOf('.')-1) > (Number(obj.getAttribute("decimalplace")))){
								alert("소숫점 아래 " + obj.getAttribute("decimalplace") + "자리까지 입력가능합니다.");
								obj.focus();
								return false;
							}
						}
					}
					break;
				case "CURRENCY" :   // 금액 유효 검증
					break;
				case "DATE" :   // 일자 유효 검증
					if(isValidDate(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "EMAIL" :  // EMAIL 유효 검증
					if(isValidEmail(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "REGNO" :  // 주민번호 유효성 검증
					if(isValidRegNo(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "CUSTNO" :     // 사업자번호 유효성 검증
					if(isValidCustNo(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "USERID" : // 아이디 검증
					if(isValidUserId(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "PASSWORD" : // 비밀번호 검증
					if(isValidPassword(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "DDDPHONENUM" : // 전화번호 국번 검증
					if(isValidDDDPhoneNum(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "ACCTNO" : // xxxx은행계좌번호 검증
					if(isValidAcctNo(str) == false){
						alert(ERR_MSG);
						//obj.focus();
						fnOpenTrFocus(obj,obj.id.split('_')[1]);
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				default :  // 'A','N','H' 마스크 검증
					for(var i=0; i < str.length; i++) {
						if ( !(isValidMask(str.charAt(i),mask) && isValidType(str.charAt(i),datatype)) ){
							alert(ERR_MSG+"[" + str.charAt(i) + "]");
							fnOpenTrFocus(obj,obj.id.split('_')[1]);
							//obj.focus();
							if (!IS_KEEP_VALUE) obj.value="";
							//obj.select();
							return false;
						}
					} // for end
			}// switch end
		} // if end
		//최대 길이 검증

		var tmp = str;
		
		if (fullchar == "TRUE") {
			tmp = Half2Full(tmp);
		}
		
		if (datatype == "CURRENCY") {
			tmp = tmp.replace(/,/gi,"");
		}



		if(maxLength != null || maxLength == ""){
			if (datatype == "CURRENCY") {
				if ( getByteLength(tmp) > obj.getAttribute("realMaxLength") )  {
					alert("입력가능한 글자수는"+obj.getAttribute("realMaxLength")+"자 까지 입니다. 글자수를 줄여주십시오.");
					obj.focus();
					return false;
				}
			}
			// 2byte char지정일 경우 체크
			else if(maxLength < getByteLength(tmp)){
				if (fullchar == "TRUE") {
					alert("입력가능한 글자수는 "+maxLength/2+"자 까지 입니다. 글자수를 줄여주십시오.");
				}
				else{
					alert("입력가능한 글자수는 "+maxLength+"자 까지 입니다. 글자수를 줄여주십시오.\n(한글은 2글자로 인식합니다.)");
				}
				obj.focus();
				return false;
			}
		}
		//최소 길이 검증
		if(!isEmpty(minLength)){
			if (getByteLength(str) == 0) return true;
			if(minLength > getByteLength(str)){
				alert("입력 가능한 최소글자수는 "+minLength+"자 까지 입니다.");
				obj.focus();
				return false;
			}
		}
		//low 유효값 검증
		if(!isEmpty(lowBound) && !isEmpty(str) ){
		  if(eval(str-lowBound) < 0 ){
		      alert(""+putComma(lowBound)+" 이상을 입력하셔야 합니다.");
		      obj.focus();
		      obj.select();
		      return false;
		  }
		}
		//high 유효값 검증
		if(!isEmpty(highBound && !isEmpty(str))){
			if(eval(str-highBound) > 0 ){
				alert(""+putComma(highBound)+" 미만을 입력하셔야 합니다.");
				obj.focus();
				obj.select();
				return false;
			}
		}
		return true;
	}

}

// 1 byte 값에 대하여 해당된 마스크가 존재하는지 검증한다.
function isValidMask(pValue, pMask){
	if(isEmpty(pMask))  return true;
	if(isAlpha(pValue) || isNum(pValue) || isHangul(pValue))    return true;
	if(pMask == "USE") return true;
	//특수문자를 전부 사용하지 못함
	if(pMask == "N"){
		ERR_MSG = "이 항목에는 공백이나 특수문자를 입력할 수 없습니다.";
		return false;
	}
	if(pMask.indexOf(pValue) >= 0)  return true;
	var errmsg = "";
	for(var idx=0;idx<pMask.length;idx++){
		errmsg = errmsg + "'" + pMask.charAt(idx) + "', ";
	}
	errmsg = errmsg.substring(0,errmsg.length-2);
	ERR_MSG = "이 항목에는 '" + pValue + "' 을(를) 입력할 수 없습니다.\n입력가능한 특수문자는 " + errmsg + "만 가능합니다.";
	return false;
}

// 전체 값에 대하여 해당된 마스크, 타입이 일치하는지 검증한다.
function isAllValidTypeMask(str, datatype, mask){
	for(var i=0; i < str.length; i++) {
		if ( !(isValidMask(str.charAt(i),mask) && isValidType(str.charAt(i),datatype)) ){
			return false;
		}
	} // for end
	return true;
}

// 1 byte 값이 주어진 타입인지 검증한다.
function isValidType(pValue, pType){
	if(isEmpty(pValue)){
		return true;
	}
	if(isEmpty(pType)){
		return true;
	}
	if(!isAlpha(pValue) && !isNum(pValue) && !isHangul(pValue)){
		return true;
	}
	// 타입 검증
	var isCorrect = false;
	for(var idx_pType=0; idx_pType < pType.length; idx_pType++){
		switch(pType.charAt(idx_pType)) {
			case 'A' :
					isCorrect = isAlpha(pValue);
					break;
			case 'N' :
					isCorrect = isNum(pValue);
					break;
			case 'H' :
					isCorrect = isHangul(pValue);
					break;
		}
		//정규 키 검증
		if(isCorrect){
			 break;
		}
	}
	if(isCorrect == false) {
		var err_msg =  getDisplayType(pType);
		ERR_MSG = "이 항목에는 " + err_msg + " 만 입력할 수 있습니다.";
		return false;
	}
	return true;
}

// 타입별 에러 메세지 설정
function getDisplayType(type) {
	var msg = "";
	for(var idx_type=0; idx_type < type.length; idx_type++){
		switch(type.charAt(idx_type)) {
			case 'A' :
					msg = msg+",영문자";
					break;
			case 'N' :
					msg = msg+",숫자";
					break;
			case 'H' :
					msg = msg+",한글";
					break;
		}
	}
	return msg.substring(1);
}

// 한글 입력가능한 필드에는 한글 우선, 없으면 영문우선
function setImeMode(obj){
	/*if(document.getElementById('korea')!=null){
		IS_AUTO_IME=true;
	}
	
	if(obj.getAttribute("datatype")==null) return;
	var datatype = toUpperCase(obj.getAttribute("datatype"));

	if (datatype == null || datatype.indexOf("H")>-1 || datatype == "EMAIL") {
		if (IS_AUTO_IME) {
			obj.style.imeMode = "active";
		}else{
			obj.style.imeMode = "auto";
		}
	}else {
		obj.style.imeMode = "disabled";
	}*/

	if(obj.getAttribute("style")==null
		|| obj.style.imeMode==""){
		obj.style.imeMode = "active";
	}
}

// 기본 디폴트 값을 정의한다.
function setDefaultValue(obj){
	if(obj.getAttribute("datatype")==null) return;
	var datatype = toUpperCase(obj.getAttribute("datatype"));
	var lowBound = obj.getAttribute("lowBound");
	// Style sheet 적용
	switch (datatype) {
		case "CURRENCY" :
			obj.setAttribute("realMaxLength", obj.maxLength);
			obj.maxLength = obj.maxLength + ((obj.maxLength-1)/3);
			obj.setAttribute("format", "CURRENCY");

			// 기본 최소값
			if (lowBound == null) obj.setAttribute("lowBound", "0");
			break;
		case "DOTCURRENCY" :
			obj.setAttribute("format", "DOTCURRENCY");
			break;
		case "DATE" :
			break;
		case "EMAIL" :
			break;
		case "REGNO" :
			obj.setAttribute("maxLength", "13");
			break;
		case "CUSTNO" :
			break;
		case "DDDPHONENUM" :
			break;
		case "ACCTNO" :
			break;
		default :
			if ( obj.getAttribute("mask") == null || obj.getAttribute("mask") == "" ) obj.setAttribute("mask", DEFAULT_USE_MASK);
	}
	var format   = toUpperCase(obj.getAttribute("format"));
	switch (format) {
		case "CURRENCY" :
			obj.style.textAlign="right";
			obj.style.paddingRight="2px";
			break;
		case "DOTCURRENCY" :
			obj.style.paddingRight="2px";
			break;
		case "DATE" :
			break;
		case "EMAIL" :
			break;
		case "REGNO" :
			break;
		case "CUSTNO" :
			break;
		case "DDDPHONENUM" :
			break;
		case "ACCTNO" :
			break;
	}
}

function processKey() {
	if( (event.ctrlKey == true && (event.keyCode == 78 || event.keyCode == 82)) || (event.keyCode >= 112 && event.keyCode <= 123)) {
		event.keyCode = 0;
		event.cancelBubble = true;
		event.returnValue = false;
	}
}

function processMouse() {
	return false;
}

function statusRemove() {
	return true;
}

function nextFocus() {
	var nextObj = event.srcElement.getAttribute("nextFocus");

	if (!(nextObj == null || nextObj == "none")) {
		try{
			document.getElementsByName(nextObj)[0].focus();
		}
		catch(e){}
	}
}

var isSetFirstObj = false;

function setFirstObjFocus(obj) {
	if(!isSetFirstObj){
		try{
			//window.focus();
			obj.focus();
			isSetFirstObj = true;
		}catch(e){}
	}
}
// wfcb.js start

////////////////////////////////
// INITIAL 관련
////////////////////////////////
function Initial(){           
	var appletCount = 0;

	if (isIE){
		if (IS_HIDDEN_LINK) {
			var elemLinks = document.all.tags('A');
			for (var idxLink=0; idxLink<elemLinks.length; idxLink++){
				var obj = elemLinks[idxLink];
				obj.onmouseover = statusRemove;
				obj.onfocus = statusRemove;
			}
		}

		if (IS_NEXT_FOCUS_SELECT) {
			// select box 선택후 자동 포커스 이동
			var elemSelects = document.all.tags('SELECT');
			for (var idx=0; idx<elemSelects.length; idx++){
				var obj = elemSelects[idx];
				obj.attachEvent("onchange",nextFocus);
				if (DEBUG_MODE) {
					var nextObj = obj.getAttribute("nextFocus");
					if (nextObj == null || nextObj == "") {
						alert('[디버그모드]\n\n['+obj.name+'] selectbox의 값이 변경될시 다음 포커스로 이동할 object의 name을 지정하지 않았습니다.\n\n selectbox tag 끝에 "nextFocus=다음이동할객체의name"을 지정 하십시오.\n\n만약 이동할 object가 없다면 "nextFocus=none"을 입력하십시오. \n\nex)selectbox bkcd의 값이 변경될 경우 다음 포커스로 이동할 input box의 name이 gjbh_in일 경우\n\n<select name="bkcd" style="width:132" align="absmiddle" nextFocus="gjbh_in">\n\n문의점은 최헌팀장에게 연락주십시오. 011-9833-8624');
					}
				}
			}
		}
		
		if (IS_USR_EVT_SELECT) {
			var elemSelects = document.all.tags('SELECT');
			for (var idx=0; idx<elemSelects.length; idx++){
				var obj = elemSelects[idx];
				obj.attachEvent("onchange",gridPageReset);
			}
		}

		var elem = document.all.tags('INPUT');
		for (var idx=0; idx<elem.length; idx++){
			var obj = elem[idx];
			try{
				if (obj == null || (typeof obj == "undefined")) continue;
				if (obj.type == null || obj.type == "undefined") continue;
			}
			catch(e){
				continue;
			}

			// 개별 필드 ib2 미적용시 사용
			if (obj.getAttribute("notuse") != null) continue;

			switch(obj.type){
				case "radio" :
				case "checkbox" :
					//setFirstObjFocus(obj);
					obj.onkeydown=noBackSpace;
					break;
				case "button" :
				case "image" :
					break;
				case "text" :
					obj.attachEvent("onchange",gridPageReset);
				case "password" :
					if(obj.getAttribute("right") != null) obj.style.textAlign="right";
					if(obj.getAttribute("notnull") != null || obj.getAttribute("notnull") == 'true') obj.className = obj.className + " input_notnull"; // Style sheet 적용
					if(obj.getAttribute("datatype") != null || obj.getAttribute("format") != null) setDefaultValue(obj); // event 적용
					if(obj.getAttribute("onblur") == null)          obj.attachEvent("onblur", wfcb_onblur);
					if(obj.getAttribute("readonly")) continue;
					if(obj.getAttribute("onfocus") == null)         obj.attachEvent("onfocus", wfcb_onfocus);
					if(obj.getAttribute("onkeyup") == null)         obj.attachEvent("onkeyup", wfcb_onkeyup);
					//if(obj.getAttribute("onkeydown") == null)     obj.onkeydown = wfcb_onkeydown;
					//if(obj.getAttribute("onkeypress") == null)      obj.attachEvent("onkeypress", wfcb_onkeypress);
					//if(obj.getAttribute("onpaste") == null)       obj.onpaste = wfcb_onpaste;
					//if(obj.getAttribute("mask") == null || obj.getAttribute("readonly")) obj.setAttribute("mask",DEFAULT_USE_MASK);

					if (DEBUG_MODE) {

						if (obj.getAttribute("maxLength") > 2000000 ) {
							alert('[디버그모드]\n\n['+obj.name+'] maxLength가 지정되지 않았습니다.\n문의점은 최헌팀장에게 연락주십시오. 011-9833-8624');
							obj.style.backgroundColor = "red";
						}
					}

					setImeMode(obj);

					obj_format(obj);
					//setFirstObjFocus(obj);
					break;
				case "textarea" :
					if(obj.getAttribute("notnull") == "true")   obj.style.backgroundColor = "#FEE8DD";
					setImeMode(obj);
					break;
			}
		}


		// search submit button!
		var btns = document.all.tags('INPUT');
		for (var idx=0; idx<btns.length; idx++){
			if(btns[idx].getAttribute("enter_submit") != null) {
				submitObj = btns[idx];
				break;
			}
		}

/*
		// search submit button!
		var spans = document.all.tags('SPAN');
		for (var idx=0; idx<spans.length; idx++){
			if(spans[idx].getAttribute("enter_submit") != null) {
				submitObj = spans[idx];
				break;
			}
		}
*/		
		// search submit button!
		var spans = document.all.tags('A');
		for (var idx=0; idx<spans.length; idx++){
			if(spans[idx].getAttribute("enter_submit") != null) {
				submitObj = spans[idx];
				break;
			}
		}

		if (document.body != null) {
			if (IS_INT_MOUSE){
				document.body.oncontextmenu=processMouse;
				document.body.onselectstart=processMouse;
				document.body.ondragstart=processMouse;
			}

			/*
			if (IS_INT_KEY){
				document.onkeydown = processKey;
			}
			*/
		}

		//var isSubmit = false;
		//var isGoSubmit = false;

		document.onmousemove=findXY;
		window.status="";
	}
}

Initial();
// wfcb.js end
// right format='' datatype='' mask='' notnull='true' minlength='' maxlength='' lowbound='' highbound=''
//half2full_init();