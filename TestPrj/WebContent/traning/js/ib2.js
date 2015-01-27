/*
<���۱�>
�� �ҽ��� �Ϻγ� ��ü�� ������ ��� ���·ε� ���� ������ ���ϸ� �ٸ� ��ü���� ������ ���ؼ��� �ݵ�� WEBCASH(��) �� ���� ���Ǹ� ���� �մϴ�.
�������� ���� ��� �� �� ��ǰ���� �Ͼ Ư����, �����, ��������, �ʿ����� �ս��� å������ �ʽ��ϴ�.
Copyright �� 2003 WEBCASH Co., Ltd. All Rights Reserved.

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
* Modify Date           : 2004-04-22 5:16����
* Person                : Chol-Hun(honeyc@webcash.co.kr)
* Detail                : A tag �� mouse over�� ��ũ���� ���� �±� �߰�
*                         �ѱ� �ڵ� ��ȯ ���� �߰�
*
* Modify Date           : 2004-05-03 6:00����
* Person                : Chol-Hun(honeyc@webcash.co.kr)
* Detail                : �ݰ����� => �������� �ڵ� ��ȯ �� ���� ���� ��� �߰� - fullchar=true
*
* Modify Date           : 2004-05-06 4:22����
* Person                : Chol-Hun(honeyc@webcash.co.kr)
* Detail                : ���� ��ü ib2 ������ - notuse
*
* Modify Date           : 2004-05-31 2:28����
* Person                : Chol-Hun(honeyc@webcash.co.kr)
* Detail                : �� maxlength ��ŭ �Է½� ���� ��Ŀ�� �̵�
********************************************************************************
*/

/*
-----------------------------------------------------------------
- ENTER KEY �Է½� �ڵ� submit : enter_submit ǥ��
<span onclick="..." enter_submit>�˻�</span>
-----------------------------------------------------------------
*/

//<<SET GLOBAL VALUE>>

// mask value �� null �� ��� Ư���� �Է��� ���� ������ ('use' - Ư�����Է°���, 'N' - Ư�����ԷºҰ���)
var DEFAULT_USE_MASK = 'use';

// Ư��Ű ��� ����(Ctrl + R, Ctrl + N, F5)
var IS_INT_KEY = false;

// ���콺 ��� ����(������ ��ư ����, drag ����,
var IS_INT_MOUSE = false;

// ������ �߽߰� ���� �Է°� ���� ����
var IS_KEEP_VALUE = false;

// ��ũ ������ status ǥ�� �Ұ�
var IS_HIDDEN_LINK = false;

// �ѱ� �ڵ� ��ȯ ����
var IS_AUTO_IME = true;

// ����� ���
var DEBUG_MODE = false;  // true, false

// Select ���ý� �ڵ� ���� ��Ŀ�� �̵� ���
var IS_NEXT_FOCUS_SELECT = false;   // true, false

//Select ���ý� ��������� �̺�Ʈ
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

//���� ��ȿ ����
function isValidDate(datestr){
	//������?
	if(isEmpty(datestr)){
		return null;
	}
	//��������?
	if(!isNum(datestr)){
		ERR_MSG = "���ڸ� �Է��ϼž� �մϴ�.";
		return false;
	}
	//���̰� 8�ڸ�?
	if(datestr.length != 8){
		ERR_MSG = "����� 8�ڸ��� �Է��ϼž� �մϴ�.";
		return false;
	}
	var yy = Number(datestr.substring(0,4));
	var mm = Number(datestr.substring(4,6));
	var dd = Number(datestr.substring(6,8));
	//�� ����
	if( !(yy>1900 && yy<2100) ){
		ERR_MSG = "���� 1900~2100 ������ �Է��� �� �ֽ��ϴ�.";
		return false;
	}
	
	//�� ����
	if( !(mm > 0 && mm < 13) ){
		ERR_MSG = "���� 1~12 ������ �Է��� �� �ֽ��ϴ�.  ";
		return false;
	}
	//���� ����
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
	//�� ����
	if( (dd <= 0) || (dd > boundDay) ){
		ERR_MSG = "��ȿ���� ���� �����Դϴ�.\n(" + yy + "�� " + mm + "���� " + boundDay + "�� ���� �ֽ��ϴ�.)";
		return false;
	}
	return true;
}

// ����� ����
function isValidDateYYYYMM(datestr){
	//������?
	if(isEmpty(datestr)){
		return null;
	}
	//��������?
	if(!isNum(datestr)){
		ERR_MSG = "���ڸ� �Է��ϼž� �մϴ�.";
		return false;
	}
	//���̰� 8�ڸ�?
	if(datestr.length != 6){
		ERR_MSG = "��� 6�ڸ��� �Է��ϼž� �մϴ�.";
		return false;
	}
	var yy = Number(datestr.substring(0,4));
	var mm = Number(datestr.substring(4,6));
	//�� ����
	if( !(mm > 0 && mm < 13) ){
		ERR_MSG = "���� 1~12 ������ �Է��� �� �ֽ��ϴ�.  ";
		return false;
	}
	return true;
}

//EMAIL ��ȿ�� ����
function isValidEmail(email){
	//������?
	if(isEmpty(email)){
		return null;
	}
	//�ùٸ� EMAIL ���� ����
	var format = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
	if (email.search(format) == -1) {
	   ERR_MSG = "��ȿ���� ���� �̸��� �����Դϴ�.";
	   return false;
	}
	return true;
}

//�ֹε�Ϲ�ȣ ��ȿ�� ����
function isValidRegNo(regno){
	
	if (DEBUG_MODE) return true;
	//������?
	if(isEmpty(regno)){
		return null;
	}
	//// 13�ڸ� �����ΰ�? -> �ֹι�ȣ
	if((getByteLength(regno) != 13) || (!isNum(regno)) ) {
		ERR_MSG = "�ֹε�Ϲ�ȣ�� 13�ڸ� �����Դϴ�.";
		return false;
	}

	////�ùٸ� �ֹε�Ϲ�ȣ���� ����
	// �ֹι�ȣ�� ���¿� 7��° �ڸ�(����) ��ȿ�� �˻�

	fmt = /^\d{6}[1234]\d{6}$/;
	if (!fmt.test(regno)) {
		ERR_MSG = "�߸��� �ֹε�Ϲ�ȣ�Դϴ�.";
		return false;
	}
	// ��¥ ��ȿ�� �˻�
	birthYear = (regno.charAt(7) <= "2") ? "19" : "20";
	birthYear += regno.substr(0, 2);
	birthMonth = regno.substr(2, 2) - 1;
	birthDate = regno.substr(4, 2);
	birth = new Date(birthYear, birthMonth, birthDate);

	if ( birth.getYear() % 100 != regno.substr(0, 2) ||
		birth.getMonth() != birthMonth ||
		birth.getDate() != birthDate) {
		ERR_MSG = "�߸��� �ֹε�Ϲ�ȣ�Դϴ�.";
		return false;
	}

	// Check Sum �ڵ��� ��ȿ�� �˻�
	buf = new Array(13);
	for (var i = 0; i < 13; i++) buf[i] = parseInt(regno.charAt(i));
	multipliers = [2,3,4,5,6,7,8,9,2,3,4,5];
	for (i = 0, sum = 0; i < 12; i++) sum += (buf[i] *= multipliers[i]);

	if ((11 - (sum % 11)) % 10 != buf[12]) {
		ERR_MSG = "�߸��� �ֹε�Ϲ�ȣ�Դϴ�.";
		return false;
	}

	return true;
}

//����ڹ�ȣ ��ȿ�� ����
function isValidCustNo(strNumb){
	//������?
	if(isEmpty(strNumb)){
		return null;
	}
	// 10�ڸ� �����ΰ�?
	if((getByteLength(strNumb) != 10) || (!isNum(strNumb)) ) {
		ERR_MSG = "����ڵ�Ϲ�ȣ�� 10�ڸ� �����Դϴ�.";
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
		ERR_MSG = "�ùٸ��� ���� ����ڵ�Ϲ�ȣ�Դϴ�.";
		return false;
	}
	return  true;
}

// xxxx���� ���¹�ȣ ����
function isValidAcctNo(acctno){
	//������?
	if(isEmpty(acctno)){
		return null;
	}
	//11�ڸ� ��������?
	if ((getByteLength(acctno) != 11) || (!isNum(acctno))) {
		ERR_MSG = "���¹�ȣ�� '-'�� ������ 11�ڸ� �����Դϴ�.";
		return false;
	}
	//���¹�ȣ ����
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
		ERR_MSG = "�ùٸ��� ���� ���¹�ȣ�Դϴ�.";
		return false;
	}
	return true;
}

//���̵� ����
function isValidUserId(userid){
	//������?
	if(isEmpty(userid)){
		return null;
	}
	if(getByteLength(userid)>20 || getByteLength(userid) < 6 ){
		ERR_MSG = "����� ���̵�� ������ ȥ���Ͽ� 6�� �̻� 20���̳��� �Է��ϼž� �մϴ�.";
		return false;
	}
	if(isNum(userid)){
		ERR_MSG = "���̵�� ���ڷθ� ������ �� �����ϴ�.";
		return false;
	}
	for(var i=0; i < userid.length; i++) {
		if ( !(isValidMask(userid.charAt(i),"N") && isValidType(userid.charAt(i),"AN")) ){
			return false;
		}
	} // for end
	return true;
}
                
//��й�ȣ ����
function isValidPassword(pwd){
	var alpaBig= "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var alpaSmall= "abcdefghijklmnopqrstuvwxyz";
	var num = "01234567890";
	//������?
	if(isEmpty(pwd)){
		return null;
	}
	// ��й�ȣ�� 6�ڸ��̻� 8�ڸ� ���� .. maxLength=20�� ���� �Ұ�
	if(getByteLength(pwd)<6 || getByteLength(pwd) > 20 ){
		ERR_MSG = "��й�ȣ�� �ݵ�� 6�� �̻� 8���̳��� �Է��ؾ� �մϴ�.";
		return false;
	}
	if(isNum(pwd)){
		ERR_MSG = "��й�ȣ�� �ݵ�� ���ĺ��� �ϳ� �̻� �����ؾ� �մϴ�.";
		return false;
	}
	for(var i=0;i < alpaBig.length - pwd.length+1;i++){
		if(alpaBig.substring(i,i+pwd.length) == pwd)
		{
			ERR_MSG = "ABCDEFó�� ���ӵ� ���ڴ� ����� �� �� �����ϴ�.";
			return false;
		}
	}
	if (pwd.indexOf(' ') > -1) {
		ERR_MSG = "������ �Է��� �� �����ϴ�.";
		return false;
	}
	for(i=0;i < alpaSmall.length - pwd.length+1;i++){
		if(alpaSmall.substring(i,i+pwd.length) == pwd)
		{
			ERR_MSG = "abcdefó�� ���ӵ� ���ڴ� ����� �� �� �����ϴ�.";
			return false;
		}
	}
	for(i=1;i < pwd.length;i++){
		if(pwd.substring(0,1) != pwd.substring(i,i+1) )
			return true;
	}
	ERR_MSG = "��й�ȣ�� ���� ���ڸ� �����ؼ� �Է��� �� �����ϴ�";
	return false;
}


////////////////////////////////////////////////////////////////
// onkeyup ����
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
	// ��������
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
					eval("document.getElementById(\""+obj.name+"_HAN"+"\")").innerHTML = "(�� ��)";
				}else if(obj.value =="0"){
					eval("document.getElementById(\""+obj.name+"_HAN"+"\")").innerHTML = "(�� ��)";
				}else{
					eval("document.getElementById(\""+obj.name+"_HAN"+"\")").innerHTML = "(" + NUM_TO_HAN(obj.value, 2) + " ��)";
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
	//�ڵ� ��Ŀ�� �̵�
	var maxlength = obj.getAttribute("maxLength");
	window.status += '';

	if (isIE){
		if ( (event.keyCode == 13) && (submitObj != null) ) submitObj.click();
		if (maxlength != null || maxlength > 0 || event.keyCode == 13) {
			// 2012.01.09 �µ���
			// ������ ���ڿ� ��ħ�� �ִ� ��� �Է��� �ȵǴ� ���� ���� Start
			var templength = getByteLength(obj.value);
			var chr = escape(obj.value.charAt(obj.value.length-1));
			
			if(templength >= maxlength){
				if (chr.indexOf("%u") != -1){
					templength = templength-1;
				}
			}
			// ������ ���ڿ� ��ħ�� �ִ� ��� �Է��� �ȵǴ� ���� ���� End
			
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
// ��ü ������
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
// onkeypress ����
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
	// ������ Ÿ�� ����
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
// onkeydown ����
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
// onblur ����
////////////////////////////////////////////////////////////////
function wfcb_onblur() {
	//if ( obj == null || typeof obj=="undefined" )
	var obj = event.srcElement;
	if (obj.getAttribute("uppercase") != null) obj.value = obj.value.toUpperCase();
	if (obj.getAttribute("lowercase") != null) obj.value = obj.value.toLowerCase();
	if (!obj_validate(obj)) return false;   // ������ ��ȿ�� ����
	if (!obj.getAttribute("readonly")) obj_format(obj);                     // ��������
	return true;
}

////////////////////////////////////////////////////////////////
// onfocus ����
////////////////////////////////////////////////////////////////
function wfcb_onfocus() {
	//if ( obj == null || typeof obj=="undefined" )
	var obj = event.srcElement;
	// readOnly �Ǿ� �ִ� ��쿡�� ���� ���� ����
	if (!obj.getAttribute("readonly")) {
		obj_removeformat(obj);  // ���˻���
		obj.select();
	}
}

////////////////////////////////////////////////////////////////
// onsubmit ����
////////////////////////////////////////////////////////////////
function wfcb_onsubmit(aFrm,ridx){
	
	if ( typeof aFrm == "undefined" ) {
		alert("��ũ��Ʈ ���� ���ǵ��� ���� Form �Դϴ�.");
		return false;
	}

	if(isIE){
		var elem = aFrm.tags('INPUT');
		obj_allremoveformat(aFrm);                  // ���� ����

		for (var idx=0; idx<elem.length; idx++){
			var obj = elem[idx];

			// ���� �ʵ� ib2 ������� ���
			if (obj.getAttribute("notuse") != null) continue;

			if( ridx == null ){//�����켱
				if(!obj_validate(obj)) {
					obj_allformat(aFrm);
					return false;   // ������ ��ȿ�� �����
				}
	
				if(!obj_nullcheck(obj)) {
					obj_allformat(aFrm);
					return false;   // �ʼ� �׸� ����
				}
			}else{//���켱
				var arr_objid = obj.id.split('_');
				
				if( arr_objid[arr_objid.length-1] == ridx ){
					
					if(!obj_validate(obj)) {
						obj_allformat(aFrm);
						return false;   // ������ ��ȿ�� �����
					}
		
					if(!obj_nullcheck(obj)) {
						obj_allformat(aFrm);
						return false;   // �ʼ� �׸� ����
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
// ��ü function
////////////////////////////////
//�ʼ� �׸� ����
function obj_nullcheck(obj){
//                  if (obj.getAttribute("notnull") == "true") {
// 2003.1.10 Ȳ���� ���� -> obj.getAttribute("notnull")�� ��ü���� ������ null�� ������ �ƹ��͵� ��Ÿ���� �ʾ� ������.
	if (obj.getAttribute("notnull") != null) {
		if(isEmpty(obj.value)){
			//obj_allformat(); // ��ü ���� ����
			obj.focus();
			obj.select();
			var colName="";
			if(obj.getAttribute("colName") != null){
				colName = "\n* �ʼ��Է� �׸� : " + obj.getAttribute("colName");
			}
			alert("�ʼ��׸��� �ݵ�� �Է��ϼž� �մϴ�.\n" + colName);
			try{
				fnOpenTrFocus(obj,obj.id.split('_')[1]);
			}catch(e){}
			return false;
		}
	}
	return true;
}

//��ü ��ü ���� ����
function obj_allformat(aFrm){
	var elem = aFrm.tags('INPUT');
	for (var idx=0; idx<elem.length; idx++){
		obj_format(elem[idx]); //���� ����
	}
}

//��ü ��ü ���� ����
function obj_allremoveformat(aFrm){
	var elem = aFrm.tags('INPUT');
	for (var idx=0; idx<elem.length; idx++){
		obj_removeformat(elem[idx]); //���� ����
	}
}

//���� ����
function obj_removeformat(obj) {
	var format = toUpperCase(obj.getAttribute("format"));
	var str = obj.value;
	if(format != null){
		switch(format){
			case "DATE":
			case "ACCTNO":
			case "CARDNO":
			case "CUSTNO":
			case "REGNO" :          //��¥ ����
				obj.value = str.replace(/-/g,"");
				break;
			case "CURRENCY" :       // �ݾ�
				obj.value = str.replace(/\,/g,"");
				break;
			case "DOTCURRENCY" :    // �ݾ�
				obj.value = str.replace(/\,/g,"");
				break;
		}
	}
}
               
// ��� ���� ����
function obj_format(obj) {
	if(obj.getAttribute("format")==null) return;
	var format = toUpperCase(obj.getAttribute("format"));
	var str = obj.value;
	if (str == null || str == "") {
		return;
	}
	if(format != null){
		switch(format){
			case "CURRENCY" :       //�ݾ� ����
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
			case "DOTCURRENCY" :        //'.' �ִ� �ݾ� ����
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
			case "DATE" :           //��¥ ����
										var retStr = "";
										retStr = str.substring(0,4) + "-" + str.substring(4,6) + "-" + str.substring(6,8);
										obj.value = retStr;
										break;
			case "REGNO" :          //�ֹε�� ����
										var retStr = "";
										retStr = str.substring(0,6) + "-" + str.substring(6,13);
										obj.value = retStr;
										break;
			case "CUSTNO" :         //����ڹ�ȣ ����
										var retStr = "";
										retStr = str.substring(0,3) + "-" + str.substring(3,8) + "-" + str.substring(8);
										obj.value = retStr;
										break;
			case "ACCTNO" :         //���¹�ȣ ����
										var retStr = "";
										retStr =  str.substring(0,3) + "-" + str.substring(3,8) + "-" + str.substring(8);
										obj.value = retStr;
										break;
			case "CARDNO" :         //ī���ȣ ����
										var retStr = "";
										retStr =  str.substring(0,4) + "-" + str.substring(4,8) + "-" + str.substring(8,12) + "-" + str.substring(12,16);
										obj.value = retStr;
										break;
		}
	}
}

//������ ��ȿ������
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
				case "DOTCURRENCY" :    // �ݾ� ��ȿ ����
					if (obj.getAttribute("decimalplace") != null) {
						if (obj.value.lastIndexOf('.') > 0) {
							// '.'�� �Ѱ� �̻����� ����
							if (obj.value.lastIndexOf('.') != obj.value.indexOf('.')) {
								alert("�Ҽ����� �ΰ� �̻��Դϴ�.");
								obj.focus();
								return false;

							}
							// �Ҽ��� ��ġ �˻�
							if ((obj.value.length - obj.value.indexOf('.')-1) > (Number(obj.getAttribute("decimalplace")))){
								alert("�Ҽ��� �Ʒ� " + obj.getAttribute("decimalplace") + "�ڸ����� �Է°����մϴ�.");
								obj.focus();
								return false;
							}
						}
					}
					break;
				case "CURRENCY" :   // �ݾ� ��ȿ ����
					break;
				case "DATE" :   // ���� ��ȿ ����
					if(isValidDate(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "EMAIL" :  // EMAIL ��ȿ ����
					if(isValidEmail(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "REGNO" :  // �ֹι�ȣ ��ȿ�� ����
					if(isValidRegNo(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "CUSTNO" :     // ����ڹ�ȣ ��ȿ�� ����
					if(isValidCustNo(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "USERID" : // ���̵� ����
					if(isValidUserId(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "PASSWORD" : // ��й�ȣ ����
					if(isValidPassword(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "DDDPHONENUM" : // ��ȭ��ȣ ���� ����
					if(isValidDDDPhoneNum(str) == false){
						alert(ERR_MSG);
						obj.focus();
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				case "ACCTNO" : // xxxx������¹�ȣ ����
					if(isValidAcctNo(str) == false){
						alert(ERR_MSG);
						//obj.focus();
						fnOpenTrFocus(obj,obj.id.split('_')[1]);
						if (!IS_KEEP_VALUE) obj.value="";
						//obj.select();
						return false;
					}
					break;
				default :  // 'A','N','H' ����ũ ����
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
		//�ִ� ���� ����

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
					alert("�Է°����� ���ڼ���"+obj.getAttribute("realMaxLength")+"�� ���� �Դϴ�. ���ڼ��� �ٿ��ֽʽÿ�.");
					obj.focus();
					return false;
				}
			}
			// 2byte char������ ��� üũ
			else if(maxLength < getByteLength(tmp)){
				if (fullchar == "TRUE") {
					alert("�Է°����� ���ڼ��� "+maxLength/2+"�� ���� �Դϴ�. ���ڼ��� �ٿ��ֽʽÿ�.");
				}
				else{
					alert("�Է°����� ���ڼ��� "+maxLength+"�� ���� �Դϴ�. ���ڼ��� �ٿ��ֽʽÿ�.\n(�ѱ��� 2���ڷ� �ν��մϴ�.)");
				}
				obj.focus();
				return false;
			}
		}
		//�ּ� ���� ����
		if(!isEmpty(minLength)){
			if (getByteLength(str) == 0) return true;
			if(minLength > getByteLength(str)){
				alert("�Է� ������ �ּұ��ڼ��� "+minLength+"�� ���� �Դϴ�.");
				obj.focus();
				return false;
			}
		}
		//low ��ȿ�� ����
		if(!isEmpty(lowBound) && !isEmpty(str) ){
		  if(eval(str-lowBound) < 0 ){
		      alert(""+putComma(lowBound)+" �̻��� �Է��ϼž� �մϴ�.");
		      obj.focus();
		      obj.select();
		      return false;
		  }
		}
		//high ��ȿ�� ����
		if(!isEmpty(highBound && !isEmpty(str))){
			if(eval(str-highBound) > 0 ){
				alert(""+putComma(highBound)+" �̸��� �Է��ϼž� �մϴ�.");
				obj.focus();
				obj.select();
				return false;
			}
		}
		return true;
	}

}

// 1 byte ���� ���Ͽ� �ش�� ����ũ�� �����ϴ��� �����Ѵ�.
function isValidMask(pValue, pMask){
	if(isEmpty(pMask))  return true;
	if(isAlpha(pValue) || isNum(pValue) || isHangul(pValue))    return true;
	if(pMask == "USE") return true;
	//Ư�����ڸ� ���� ������� ����
	if(pMask == "N"){
		ERR_MSG = "�� �׸񿡴� �����̳� Ư�����ڸ� �Է��� �� �����ϴ�.";
		return false;
	}
	if(pMask.indexOf(pValue) >= 0)  return true;
	var errmsg = "";
	for(var idx=0;idx<pMask.length;idx++){
		errmsg = errmsg + "'" + pMask.charAt(idx) + "', ";
	}
	errmsg = errmsg.substring(0,errmsg.length-2);
	ERR_MSG = "�� �׸񿡴� '" + pValue + "' ��(��) �Է��� �� �����ϴ�.\n�Է°����� Ư�����ڴ� " + errmsg + "�� �����մϴ�.";
	return false;
}

// ��ü ���� ���Ͽ� �ش�� ����ũ, Ÿ���� ��ġ�ϴ��� �����Ѵ�.
function isAllValidTypeMask(str, datatype, mask){
	for(var i=0; i < str.length; i++) {
		if ( !(isValidMask(str.charAt(i),mask) && isValidType(str.charAt(i),datatype)) ){
			return false;
		}
	} // for end
	return true;
}

// 1 byte ���� �־��� Ÿ������ �����Ѵ�.
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
	// Ÿ�� ����
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
		//���� Ű ����
		if(isCorrect){
			 break;
		}
	}
	if(isCorrect == false) {
		var err_msg =  getDisplayType(pType);
		ERR_MSG = "�� �׸񿡴� " + err_msg + " �� �Է��� �� �ֽ��ϴ�.";
		return false;
	}
	return true;
}

// Ÿ�Ժ� ���� �޼��� ����
function getDisplayType(type) {
	var msg = "";
	for(var idx_type=0; idx_type < type.length; idx_type++){
		switch(type.charAt(idx_type)) {
			case 'A' :
					msg = msg+",������";
					break;
			case 'N' :
					msg = msg+",����";
					break;
			case 'H' :
					msg = msg+",�ѱ�";
					break;
		}
	}
	return msg.substring(1);
}

// �ѱ� �Է°����� �ʵ忡�� �ѱ� �켱, ������ �����켱
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

// �⺻ ����Ʈ ���� �����Ѵ�.
function setDefaultValue(obj){
	if(obj.getAttribute("datatype")==null) return;
	var datatype = toUpperCase(obj.getAttribute("datatype"));
	var lowBound = obj.getAttribute("lowBound");
	// Style sheet ����
	switch (datatype) {
		case "CURRENCY" :
			obj.setAttribute("realMaxLength", obj.maxLength);
			obj.maxLength = obj.maxLength + ((obj.maxLength-1)/3);
			obj.setAttribute("format", "CURRENCY");

			// �⺻ �ּҰ�
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
// INITIAL ����
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
			// select box ������ �ڵ� ��Ŀ�� �̵�
			var elemSelects = document.all.tags('SELECT');
			for (var idx=0; idx<elemSelects.length; idx++){
				var obj = elemSelects[idx];
				obj.attachEvent("onchange",nextFocus);
				if (DEBUG_MODE) {
					var nextObj = obj.getAttribute("nextFocus");
					if (nextObj == null || nextObj == "") {
						alert('[����׸��]\n\n['+obj.name+'] selectbox�� ���� ����ɽ� ���� ��Ŀ���� �̵��� object�� name�� �������� �ʾҽ��ϴ�.\n\n selectbox tag ���� "nextFocus=�����̵��Ұ�ü��name"�� ���� �Ͻʽÿ�.\n\n���� �̵��� object�� ���ٸ� "nextFocus=none"�� �Է��Ͻʽÿ�. \n\nex)selectbox bkcd�� ���� ����� ��� ���� ��Ŀ���� �̵��� input box�� name�� gjbh_in�� ���\n\n<select name="bkcd" style="width:132" align="absmiddle" nextFocus="gjbh_in">\n\n�������� �������忡�� �����ֽʽÿ�. 011-9833-8624');
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

			// ���� �ʵ� ib2 ������� ���
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
					if(obj.getAttribute("notnull") != null || obj.getAttribute("notnull") == 'true') obj.className = obj.className + " input_notnull"; // Style sheet ����
					if(obj.getAttribute("datatype") != null || obj.getAttribute("format") != null) setDefaultValue(obj); // event ����
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
							alert('[����׸��]\n\n['+obj.name+'] maxLength�� �������� �ʾҽ��ϴ�.\n�������� �������忡�� �����ֽʽÿ�. 011-9833-8624');
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