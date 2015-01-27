/*
if (top.location.href.indexOf("dev." > -1)) {
    if (window.location.href.indexOf("index.jsp") < 0 && window.location.href.indexOf("menuManage.jsp") < 0) document.write('<div style="position: absolute; width: 209px; height: 34px; z-index: 2; left: 10px; top: 10px; border:1" id="layer1"><font color="#00FFFF" size="3"><b>DEV SITE</b></font></div>');
}
*/
isNs = false;
isIE = false;
IEVersion = "IE8";

if (document.getElementById && !document.all){
    isNS = true;
    isIE = false;
}else{
    isIE = true;
    isNS = false;
}

if(isIE){
	if(navigator.appVersion.indexOf("MSIE 7")!=-1) IEVersion="IE7";
	if(navigator.appVersion.indexOf("MSIE 6")!=-1) IEVersion="IE6";
}

/*
 * ��ȭ����
 * PaRam			str.toString()
 * 
 * */
function cur_format(str) {
	 var sp="";
	 var mc="";

	 for(var i=str.length-1; i>=0; i--) {
	  sp=str.charAt(i);
	  mc=sp+mc;
	  if(i%3==str.length%3 && i!=0){
	   mc=','+mc;
	  }
	 }
	 return mc;
	}

function WM_getCursorHandler(e) {
  // set event properties to global vars (add or subtract as desired)
  window.event.clientX = e.pageX;
  window.event.clientY = e.pageY;
  window.event.x = e.layerX;
  window.event.y = e.layerY;
  window.event.screenX = e.screenX;
  window.event.screenY = e.screenY;
  // route the event back to the intended function
  try{	  
	  if ( routeEvent(e) == false ) {
	    return false;
	  } else {
	    return true;
	  }
  }catch(e){
	  return true;
  }
}

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

var copyBool=false;
var copiedtext="";

function initiatecopy() {
    copyBool=true;
}

// ���� �κ� ī���Ͽ� Ŭ�����忡 ����
function copyit() {
    if (copyBool) {
        copiedtext = "";
        document.execCommand("Copy");
        if(window.clipboardData.getData("Text") != ''){
            copiedtext=window.clipboardData.getData("Text");
        }
        copyBool=false;
    }
}

// 2����Ʈ�� ��ȯ
function half2full_init(){
    for (var idx=0; idx<document.all.tags('INPUT').length; idx++){
        var obj = document.all.tags('INPUT')[idx];
        if(obj.type == "text"){
            if(obj.getAttribute("onkeydown") == null)     obj.onkeydown     = clickHalf2Full;
        }
    }
}

// Ŭ���Ͽ� �巡���� �κ� 2����Ʈ�� ��ȯ
function clickHalf2Full() {
	var ctrl = window.event.ctrlKey;
	var shift = window.event.shiftKey;
	var obj_full = this;
	var temp_copy;
	var org_value;
	if(ctrl && shift && event.keyCode == 38){
		initiatecopy();
		copyit();
		org_value = obj_full.value;
		temp_copy = copiedtext;
		if(temp_copy != null && temp_copy.replace(/ /gi,"") != ''){
			this.value = org_value.substring(0,org_value.indexOf(copiedtext)) + Half2Full(copiedtext) + org_value.substring(org_value.indexOf(copiedtext)+copiedtext.length);
			window.clipboardData.setData("Text","");
		}
	}
}

////////////////////////////////////////////////////////////////
// Validate Check - input
////////////////////////////////////////////////////////////////
/**
 * �Է°��� NULL���� üũ
 * @param input element
 * return boolean
 */
function isNull(input) {
    if (input.value == null || input.value == "") {
        return true;
    }
    return false;
}

// ������ �����Ѵ�.
function isEmpty(pValue){
    if (pValue == null || pValue.replace(/ /gi,"") == "") {
        return true;
    }
    return false;
}

/**
 * input element ���� ������ �ִ��� Ȯ��
 * @param input element
 * return boolean
 */
function isEmptyByObj(input) {
    return isEmpty(input.value);
}

/**
 * �Է°� ���ĺ����� �����Ǿ��ִ��� üũ
 * @param input element
 * return boolean
 */
function isAlphabet(input) {
    var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
    return containsCharsOnly(input,chars);
}

/**
 * �Է°� ���ĺ� �빮�ڷ� �����Ǿ��ִ��� üũ
 * @param input element
 * return boolean
 */
function isUpperCase(input) {
    var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";
    return containsCharsOnly(input,chars);
}

/**
 * �Է°� ���ĺ� �ҹ��ڷ� �����Ǿ��ִ��� üũ
 * @param input element
 * return boolean
 */
function isLowerCase(input) {
    var chars = "abcdefghijklmnopqrstuvwxyz ";
    return containsCharsOnly(input,chars);
}

/**
 * �Է°� ���ڷθ� �����Ǿ��ִ��� üũ
 * @param input element
 * return boolean
 */
function isNumber(input) {
    var chars = "0123456789";
    return containsCharsOnly(input,chars);
}

/**
 * �Է°� ���ĺ�,���ڷθ� �����Ǿ��ִ��� üũ
 * @param input element
 * return boolean
 */
function isAlphaNum(input) {
    var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 ";
    return containsCharsOnly(input,chars);
}

/**
 * �Է°� ���ĺ��빮��,���ڷθ� �����Ǿ��ִ��� üũ
 * @param input element
 * return boolean
 */
function isBigAlphaNum(input) {
    var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ";
    return containsCharsOnly(input,chars);
}

/**
 * �Է°� ����,'-'�θ� �����Ǿ��ִ��� üũ
 * @param input element
 * return boolean
 */
function isNumDash(input) {
    var chars = "-0123456789";
    return containsCharsOnly(input,chars);
}

/**
 * �Է°� ����,','�θ� �����Ǿ��ִ��� üũ
 * @param input element
 * return boolean
 */
function isNumComma(input) {
    var chars = ",0123456789";
    return containsCharsOnly(input,chars);
}

// ���ڰ���
function isNum(str){
    if(isEmpty(str)) return false;

    for(var idx=0;idx < str.length;idx++){
        if(str.charAt(idx) < '0' || str.charAt(idx) > '9'){
            return false;
        }
    }
    return true;
}

// �����ڰ���
function isAlpha(str){
    if(isEmpty(str)) return false;

    for(var idx=0;idx < str.length;idx++){
        if(!((str.charAt(idx) >='a' && str <= 'z') || (str.charAt(idx) >= 'A' && str <= 'Z'))){
            return false;
        }
    }
    return true;
}

// �ѱ۰���
function isHangul(str){
    if(isEmpty(str)) return false;

    for(var idx=0;idx < str.length;idx++){
      var c = escape(str.charAt(idx));
      if ( c.indexOf("%u") == -1 ) {
            return false;
        }
    }
    return true;
}


/**
 * �Է°��� ��ȭ��ȣ ����(����-����-����)���� üũ
 * @param input		element
 * return boolean
 */
function isValidPhone(input) {
    var format = /^(\d+)-(\d+)-(\d+)$/;
    return isValidFormat(input,format);
}

// ��ȭ��ȣ ��������
function isValidDDDPhoneNum(dddphonenum) {

    // ���ΰ�?
    if (isEmpty(dddphonenum)) {
        return null;
    }


    if ( dddphonenum != "02" && dddphonenum != "031" && dddphonenum != "032" && dddphonenum != "033" && dddphonenum != "041" &&
         dddphonenum != "042" && dddphonenum != "043" && dddphonenum != "051" && dddphonenum != "052" && dddphonenum != "053" &&
         dddphonenum != "054" && dddphonenum != "055" && dddphonenum != "061" && dddphonenum != "062" && dddphonenum != "063" &&
         dddphonenum != "064" && dddphonenum != "011" && dddphonenum != "016" && dddphonenum != "017" && dddphonenum != "018" && dddphonenum != "019" && dddphonenum != "010" )
    {

        ERR_MSG = "�߸��� ��ȭ��ȣ �����Դϴ�.";
        return false;
    }

    return true;
}

/*
* ip ���Ŀ� �´� ���������� ����
*/
function isValidIP(v) {
    return (v.search(/^\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}$/) > -1);
}

/**
 * ĳ���� Ÿ�� ���� 'H'-�ѱ�, 'E'-����, 'N'-����, 'Z'-��Ÿ
 * @param input element
 * return boolean
 */
function getCharType(pValue){
    var bHan = false;
    var bAlp = false;
    var bNum = false;
    var bEtc = false;

    var retStr="";

    if(isEmpty(pValue)){
        return "";
    }

    for(var idx=0; idx < pValue.length; idx++){
        if (isAlpha(pValue[idx])) {
            bAlp = true;
        }
        else if (isNum(pValue[idx])) {
            bNum = true;
        }
        else if (isHangul(pValue[idx])) {
            bHan = true;
        }
        else {
            bEtc = true;
        }

        if (bHan) retStr = retStr + "H";
        if (bAlp) retStr = retStr + "E";
        if (bNum) retStr = retStr + "N";
        if (bEtc) retStr = retStr + "Z";
    }

    return retStr;
}

/**
 * �Է°��� Ư�� ����(chars)�� �ִ��� üũ
 * @param input element
 * @param char	��������ʴ� ����
 * return boolean
 *
 * Ư�� ���ڸ� ������� ������ ���
 * ex) if (containsChars(form.name,"!,*&^%$#@~;")) {
 *         alert("�̸� �ʵ忡�� Ư�� ���ڸ� ����� �� �����ϴ�.");
 *     }
 */
function containsChars(input,chars) {
    for (var inx = 0; inx < input.value.length; inx++) {
       if (chars.indexOf(input.value.charAt(inx)) != -1)
           return true;
    }
    return false;
}

/**
 * �Է°��� Ư�� ����(chars)������ �Ǿ��ִ��� üũ
 * @param input element
 * @param char	��빮��
 * return boolean
 *
 * Ư�� ���ڸ� ����Ϸ� �� �� ���
 * ex) if (!containsCharsOnly(form.blood,"ABO")) {
 *         alert("������ �ʵ忡�� A,B,O ���ڸ� ����� �� �ֽ��ϴ�.");
 *     }
 */
function containsCharsOnly(input,chars) {
    for (var inx = 0; inx < input.value.length; inx++) {
       if (chars.indexOf(input.value.charAt(inx)) == -1)
           return false;
    }
    return true;
}

/**
 * �Է°��� Ư�� ����(chars)�� �����ϴ��� üũ
 * @param input element
 * @param char	���۹���
 * return boolean
 *
 * Ư�� ���ڷ� ���� ����Ϸ� �Ҷ� ���
 */
function isStartWith(input,chars) {
    for (var inx = 0; inx < chars.length; inx++) {
       if (chars.indexOf(input.value.charAt(0)) == -1)
           return false;
    }
    return true;
}

/**
 * �Է°��� ����ڰ� ������ ���� �������� üũ
 * �ڼ��� format ������ �ڹٽ�ũ��Ʈ�� 'regular expression'�� ����
 * @param input		element
 * @param format	����
 * return boolean
 */
function isValidFormat(input,format) {
    if (input.value.search(format) != -1) {
        return true; //�ùٸ� ���� ����
    }
    return false;
}

/**
 * �Է°��� ����Ʈ ���̸� ����
 * @param input		element
 * return number
 * ex) if (getByteLength(form.title) > 100) {
 *         alert("������ �ѱ� 50��(���� 100��) �̻� �Է��� �� �����ϴ�.");
 *     }
 */
function getByteLength(input) {
    var byteLength = 0;
    for (var inx = 0; inx < input.value.length; inx++) {
        var oneChar = escape(input.value.charAt(inx));
        if ( oneChar.length == 1 ) {
            byteLength ++;
        } else if (oneChar.indexOf("%u") != -1) {
            byteLength += 2;
        } else if (oneChar.indexOf("%") != -1) {
            byteLength += oneChar.length/3;
        }
    }
    return byteLength;
}

/**
 * ���ڿ��� ����Ʈ ���̸� ����
 * @param str ���ڿ�
 * return number
 */
function getStringByteLength(str) {
    var byteLength = 0;
    for (var inx = 0; inx < str.length; inx++) {
        var oneChar = escape(str.charAt(inx));
        if ( oneChar.length == 1 ) {
            byteLength ++;
        } else if (oneChar.indexOf("%u") != -1) {
            byteLength += 2;
        } else if (oneChar.indexOf("%") != -1) {
            byteLength += oneChar.length/3;
        }
    }
    return byteLength;
}


////////////////////////////////////////////////////////////////
// Validate Check - date
////////////////////////////////////////////////////////////////
/**
 * ��ȿ�� ��(��)���� üũ
 * @param mm	��
 * return boolean
 */
function isValidMonth(mm) {
    var m = parseInt(mm,10);
    return (m >= 1 && m <= 12);
}

/**
 * ��ȿ�� ��(��)���� üũ
 * @param yyyy	��
 * @param mm	��
 * @param dd	��
 * return boolean
 */
function isValidDay(yyyy, mm, dd) {
    var m = parseInt(mm,10) - 1;
    var d = parseInt(dd,10);

    var end = new Array(31,28,31,30,31,30,31,31,30,31,30,31);
    if ((yyyy % 4 == 0 && yyyy % 100 != 0) || yyyy % 400 == 0) {
        end[1] = 29;
    }

    return (d >= 1 && d <= end[m]);
}

/**
 * ��ȿ�� ��(��)���� üũ
 * @param hh	��
 * return boolean
 */
function isValidHour(hh) {
    var h = parseInt(hh,10);
    return (h >= 1 && h <= 24);
}

/**
 * ��ȿ��(�����ϴ�) ��(��)���� üũ
 * @param mi	��
 * return boolean
 */
function isValidMin(mi) {
    var m = parseInt(mi,10);
    return (m >= 1 && m <= 60);
}

/**
 * Time �������� üũ(������ üũ)
 * @param time	�ð�
 * return boolean
 */
function isValidTimeFormat(time) {
    return (!isNaN(time) && time.length == 12);
}

/**
 * ��ȿ�ϴ�(�����ϴ�) Time ���� üũ
 * @param time	�ð�
 * return boolean
 * ex) var time = form.time.value; //'200102310000'
 *     if (!isValidTime(time)) {
 *         alert("�ùٸ� ��¥�� �ƴմϴ�.");
 *     }
 */
function isValidTime(time) {
    var year  = time.substring(0,4);
    var month = time.substring(4,6);
    var day   = time.substring(6,8);
    var hour  = time.substring(8,10);
    var min   = time.substring(10,12);

    if (parseInt(year,10) >= 1900  && isValidMonth(month) &&
        isValidDay(year,month,day) && isValidHour(hour)   &&
        isValidMin(min)) {
        return true;
    }
    return false;
}

/**
 * Time ��Ʈ���� �ڹٽ�ũ��Ʈ Date ��ü�� ��ȯ
 * @param time	�ð�
 * return Date
 * parameter time: Time ������ String
 */
function toTimeObject(time) { //parseTime(time)
    var year  = time.substr(0,4);
    var month = time.substr(4,2) - 1; // 1��=0,12��=11
    var day   = time.substr(6,2);
    var hour  = time.substr(8,2);
    var min   = time.substr(10,2);

    return new Date(year,month,day,hour,min);
}

/**
 * �ڹٽ�ũ��Ʈ Date ��ü�� Time ��Ʈ������ ��ȯ
 * @param date	����
 * return timeString
 * parameter date: JavaScript Date Object
 */
function toTimeString(date) { //formatTime(date)
    var year  = date.getFullYear();
    var month = date.getMonth() + 1; // 1��=0,12��=11�̹Ƿ� 1 ����
    var day   = date.getDate();
    var hour  = date.getHours();
    var min   = date.getMinutes();

    if (("" + month).length == 1) { month = "0" + month; }
    if (("" + day).length   == 1) { day   = "0" + day;   }
    if (("" + hour).length  == 1) { hour  = "0" + hour;  }
    if (("" + min).length   == 1) { min   = "0" + min;   }

    return ("" + year + month + day + hour + min);
}


/**
 * Time�� ����ð� ����(�̷�)���� üũ
 * @param timeString
 * return boolean
 * parameter date: JavaScript Date Object
 */
function isFutureTime(time) {
    return (toTimeObject(time) > new Date());
}

/**
 * Time�� ����ð� ����(����)���� üũ
 * @param timeString
 * return boolean
 * parameter date: JavaScript Date Object
 */
function isPastTime(time) {
    return (toTimeObject(time) < new Date());
}

/**
 * �־��� Time �� y�� m�� d�� h�� ���̳��� Time�� ����
 * ex) var time = form.time.value; //'20000101000'
 *     alert(shiftTime(time,0,0,-100,0));
 *     => 2000/01/01 00:00 ���κ��� 100�� �� Time
 */
function shiftTime(time,y,m,d,h) { //moveTime(time,y,m,d,h)
    var date = toTimeObject(time);

    date.setFullYear(date.getFullYear() + y); //y���� ����
    date.setMonth(date.getMonth() + m);       //m���� ����
    date.setDate(date.getDate() + d);         //d���� ����
    date.setHours(date.getHours() + h);       //h�ø� ����

    return toTimeString(date);
}

/**
 * �� date�� �� ���� ���̳����� ����
 */
/*
function getMonthInterval2(date1, date2){
	if( typeof date1=="undefined" || ""==date1 )return;
	if( typeof date2=="undefined" || ""==date2 )return;
	
	var _date1 = new Date(date1);
	var _date2 = new Date(date2);
	
	var years  = _date2.getYear() - _date1.getYear();
    var months = _date2.getMonth() - _date1.getMonth();
    var days   =_ date2.getDate() - _date1.getDate();

    return (years * 12 + months + (days >= 0 ? 0 : -1) );
}
*/
/**
 * �� Time�� �� ���� ���̳����� ����
 * time1�� time2���� ũ��(�̷���) minus(-)
 */
function getMonthInterval(time1,time2) { //measureMonthInterval(time1,time2)
    var date1 = toTimeObject(time1);
    var date2 = toTimeObject(time2);

    var years  = date2.getFullYear() - date1.getFullYear();
    var months = date2.getMonth() - date1.getMonth();
    var days   = date2.getDate() - date1.getDate();

    return (years * 12 + months + (days >= 0 ? 0 : -1) );
}

/**
 * �� Time�� ��ĥ ���̳����� ����
 * time1�� time2���� ũ��(�̷���) minus(-)
 */
function getDayInterval(time1,time2) {
    var date1 = toTimeObject(time1);
    var date2 = toTimeObject(time2);
    var day   = 1000 * 3600 * 24; //24�ð�

    return parseInt((date2 - date1) / day, 10);
}

/**
 * �� Time�� �� �ð� ���̳����� ����
 * time1�� time2���� ũ��(�̷���) minus(-)
 */
function getHourInterval(time1,time2) {
    var date1 = toTimeObject(time1);
    var date2 = toTimeObject(time2);
    var hour  = 1000 * 3600; //1�ð�

    return parseInt((date2 - date1) / hour, 10);
}

/**
 * ���� �ð��� Time �������� ����
 */
function getCurrentTime() {
    return toTimeString(new Date());
}

/**
 * ���� �ð��� y�� m�� d�� h�� ���̳��� Time�� ����
 */
function getRelativeTime(y,m,d,h) {

    return shiftTime(getCurrentTime(),y,m,d,h);
}

/**
 * ���� Ҵ�� YYYY�������� ����
 */
function getYear() {
    return getCurrentTime().substr(0,4);
}

/**
 * ���� ���� MM�������� ����
 */
function getMonth() {
    return getCurrentTime().substr(4,2);
}

/**
 * ���� ���� DD�������� ����
 */
function getDay() {
    return getCurrentTime().substr(6,2);
}

/******************************************************************
 * StringFilter	������� ���ǿ� ���� �������� ~ �������� �����Լ�
 * @param		chk  ��,��
******************************************************************/			
function getDateBefore(chk){
	var sday = 0;
	
	if(chk == "month"){
		sday = 30;
	}else if(chk == "week"){
		sday = 7;
	}
     
	var date =new Date(new Date().getYear(), new Date().getMonth(), new Date().getDate() - sday);
	var year  = date.getFullYear();
	var month = date.getMonth() + 1; // 1��=0,12��=11�̹Ƿ� 1 ����
	var day   = date.getDate();
	
	if (("" + month).length == 1) { month = "0" + month; }
	if (("" + day).length   == 1) { day   = "0" + day;   }
	  
	return ("" + year +"-"+ month +"-"+ day);
}
/**
 * ���� ���� HH�������� ����
 */
function getHour() {
    return getCurrentTime().substr(8,2);
}

/**
 * ���ÿ��Ϲ�ȯ
 * ex) alert('������ ' + getDayOfWeek() + '�����Դϴ�.');
 */
function getDayOfWeek() {
    var now = new Date();

    var day = now.getDay(); //�Ͽ���=0,������=1,...,�����=6
    var week = new Array('��','��','ȭ','��','��','��','��');

    return week[day];
}

/**
 * Ư����¥�� ����
 */
function getDayOfWeek(time) {
    var now = toTimeObject(time);

    var day = now.getDay(); //�Ͽ���=0,������=1,...,�����=6
    var week = new Array('��','��','ȭ','��','��','��','��');

    return week[day];
}

/**
 * Ư����¥�� ������ �迭 ���� ���Ѵ�.
 */
function getDayOfWeekNum(time) {
    var now = toTimeObject(time);
    var day = now.getDay(); //�Ͽ���=0,������=1,...,�����=6

    return day;
}

/**
 * ���� ��¥�� ���Ѵ�.
 */
function getYesterday(){

    var date = new Date();
    var changeDate = new Date();
    changeDate.setFullYear(date.getFullYear(), date.getMonth(), date.getDate()-1);
    
    var y = changeDate.getFullYear();
    var m = changeDate.getMonth() + 1;
    var d = changeDate.getDate();
    if(m < 10)    { m = "0" + m; }
    if(d < 10)    { d = "0" + d; }
    
    return ("" + y + m + d);
}

//���� �� ���� ���
function getEndDate(datestr){

    //������?
    if(isEmpty(datestr)){
        return null;
    }

    //��������?
    if(!isNum(datestr)){
        return null;
    }

    //���̰� 8�ڸ�?
    if(datestr.length != 6){
        return null;
    }

    var yy = Number(datestr.substring(0,4));
    var mm = Number(datestr.substring(4,6));

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

    return boundDay;
}

////////////////////////////////////////////////////////////////
// Format
////////////////////////////////////////////////////////////////
function frmMoney(input){
    input.value = putComma(input);
}

function unFrmMoney(input){
    input.value = replace(input.value,",","");
}

function frmDate(input){
    if(input.value=="") return
    input.value = input.value.substring(0,4) + "-" + input.value.substring(4,6) + "-" + input.value.substring(6,8);
}

function unFrmDate(input){
    input.value = replace(input.value,"-","");
}

function frmTime(input){
    input.value = input.value.substring(0,2) + ":" + input.value.substring(2,4) + ":" + input.value.substring(4,6);
}

function unFrmTime(input){
    input.value = replace(input.value,":","");
}

function frmAcct(input){
    input.value = input.value.substring(0,3) + "-" + input.value.substring(3,9) + "-" + input.value.substring(9,14);
}

function frmRegNoValue(value){
	return value.substring(0,3) + "-" + value.substring(3,5) + "-" + value.substring(5);
}

function frmDateValue(value){
	return value.substring(0,4) + "-" + value.substring(4,6) + "-" + value.substring(6,8);
}

function unFrmAcct(input){
    input.value = replace(input.value,"-","");
}

function putCashDash(value){
    if(value=="") return ;
    value = value.substring(0,4) + "-" + value.substring(4,8) + "-" + value.substring(8,12)+ "-" + value.substring(12);
    return value;
}

// ��ȯ���� Ư�� ��ȭ�϶� �Ҽ������� �ݾ׾��ֱ�
function Curr(str1, str2){
    obj1 = eval("frm."+str1+".value");
    obj2 = eval("frm."+str2+".style");
    if(obj1=="JPY"||obj1=="ITL"||obj1=="BEF"||obj1=="KRW"){
        obj2.display = "none";
    }else{
        obj2.display = "";
    }
}

function Curr2(str1, str2, str3){
    obj1 = eval("frm."+str1+".value");
    obj2 = eval("frm."+str2+".style");
    obj3 = eval("frm."+str3+".style");
    if(obj1=="JPY"||obj1=="ITL"||obj1=="BEF"||obj1=="KRW"){
        obj2.display = "none";
        obj3.display = "none";
    }else{
        obj2.display = "";
        obj3.display = "";
    }
}

////////////////////////////////////////////////////////////////
// String Util
////////////////////////////////////////////////////////////////
// �빮�ں�ȯ
function toUpperCase(str){
    if(isEmpty(str)) return str;
    return str.toUpperCase();
}

// �������� ��ȯ( �ѱ� 2byte ��� )
function getByteLength(s){
   var len = 0;
   if ( s == null ) return 0;
   for(var i=0;i<s.length;i++){
      var c = escape(s.charAt(i));
      if ( c.length == 1 ) len ++;
      else if ( c.indexOf("%u") != -1 ) len += 2;
      else if ( c.indexOf("%") != -1 ) len += c.length/3;
   }
   return len;
}

// �޸�����.
function putComma(input) {
    var num = input;

    if (num < 0) {
        num *= -1;
        var minus = true;
    }else{
        var minus = false;
    }

    var dotPos = (num+"").split(".");
    var dotU = dotPos[0];
    var dotD = dotPos[1];
    var commaFlag = dotU.length%3;

    if(commaFlag) {
        var out = dotU.substring(0, commaFlag);
        if (dotU.length > 3) out += ",";
    }
    else var out = "";

    for (var i=commaFlag; i < dotU.length; i+=3) {
        out += dotU.substring(i, i+3);
        if( i < dotU.length-3) out += ",";
    }

    if(minus) out = "-" + out;
    if(dotD) return out + "." + dotD;
    else return out;
}

function toMoney(value) {
    var num = value;

    if (num < 0) {
        num *= -1;
        var minus = true;
    }else{
        var minus = false;
    }

    var dotPos = (num+"").split(".");
    var dotU = dotPos[0];
    var dotD = dotPos[1];
    var commaFlag = dotU.length%3;

    if(commaFlag) {
        var out = dotU.substring(0, commaFlag);
        if (dotU.length > 3) out += ",";
    }
    else var out = "";

    for (var i=commaFlag; i < dotU.length; i+=3) {
        out += dotU.substring(i, i+3);
        if( i < dotU.length-3) out += ",";
    }

    if(minus) out = "-" + out;
    if(dotD) return out + "." + dotD;
    else return out;
}

/**
 * �Է°����� �޸��� ���ش�
 * @param input element
 * return str
 */
function removeComma(input) {
    return input.value.replace(/,/gi,"");
}


//�˻���¥ ��ȿ�Ⱓ
function getBoundDate1(yy,mm,dd,stdDate) {
    var today = new Date();
    today.setYear(stdDate.substring(0,4));
    today.setMonth(stdDate.substring(4,6)-1);
    today.setDate(stdDate.substring(6,8));
    today.setHours(today.getHours());
    today.setMinutes(today.getMinutes());
    today.setSeconds(today.getSeconds());

    yy = Number(yy);
    mm = Number(mm);
    dd = Number(dd);

    var date = new Date();

    var DAY = 24 * 60 * 60 * 1000;

    if ( yy != 0 ){
        date.setTime(today.getTime() + DAY * 365 * yy);
    }

    if ( mm != 0 ){
        date.setTime(today.getTime() + DAY * 30 * mm);
    }

    if ( dd != 0 ){
        date.setTime(today.getTime() + DAY * dd);
    }

    return lpad(new String(date.getYear()),4,'0') + lpad(new String(date.getMonth() + 1),2,'0') + lpad(new String(date.getDate()),2,'0');
}

function getBoundDate(yy, mm, dd) {
    yy = Number(yy);
    mm = Number(mm);
    dd = Number(dd);

    var date = new Date();

    var DAY = 24 * 60 * 60 * 1000;


    if ( yy != 0 ){
        date.setTime(datToday.getTime() + DAY * 365 * yy);
    }

    if ( mm != 0 ){
        date.setTime(datToday.getTime() + DAY * 30 * mm);
    }

    if ( dd != 0 ){
        date.setTime(datToday.getTime() + DAY * dd);
    }

    return lpad(new String(date.getYear()),4,'0') + lpad(new String(date.getMonth() + 1),2,'0') + lpad(new String(date.getDate()),2,'0');
}

//�˻���¥ üũ
function isVaildTerm(obj,yy,mm,dd) {
    var datestr = obj.value;

    //������?
    if(isEmpty(datestr)){
        return null;
    }

    // ��¥ ��������
    obj_removeformat(obj);

    //8�ڸ�����?
    if (getByteLength(datestr) != 8) {
        alert("��¥�� '-'�� ������ 8�ڸ� ���ڷ� �Է��Ͻʽÿ�.");
        return false;
    }

    // yy,mm,dd,fromto�� ���� ���
    if (yy == null) yy = 0;
    if (mm == null) mm = 0;
    if (dd == null) dd = 0;

    // �˻���¥ ��ȿ�Ⱓ ��������
    var boundDate = getBoundDate(yy,mm,dd);

    if (yy < 0  || mm < 0  || dd < 0) {
        if ( boundDate > datestr) {
            alert("��ȿ���� ���� �˻���¥�Դϴ�.\n��ȿ�� ��¥��" + boundDate.substring(0,4) + "�� " + boundDate.substring(4,6) + "�� " + boundDate.substring(6) + "�Ϻ��� �Դϴ�.");
            obj.select();
            return false;
        }
    } else {
        if ( boundDate < datestr) {
            alert("��ȿ���� ���� �˻���¥�Դϴ�.\n��ȿ�� ��¥��" + boundDate.substring(0,4) + "�� " + boundDate.substring(4,6) + "�� " + boundDate.substring(6) + "�ϱ��� �Դϴ�.");
            obj.select();
            return false;
        }
    }

    return true;
}


//���ó�¥
function getToDay() {
    var date = new Date();

    var year  = date.getFullYear();
    var month = date.getMonth() + 1; // 1��=0,12��=11�̹Ƿ� 1 ����
    var day   = date.getDate();

    if (("" + month).length == 1) { month = "0" + month; }
    if (("" + day).length   == 1) { day   = "0" + day;   }

    return ("" + year + month + day);
}

//��, ��, �� ���� ������ ������ ���ϴ� �޼���
//���� : 	addDate('2012-12-21',  -10, 'd', '-') ); // 10�� ������ ���ϱ�
//			addDate('2012-12-21',  +5, 'm', '-') ); // 5���� ���� ���ϱ�
function setToDate(dateStr, addDate, type, gubun) { // ��¥ ���ڿ�, ����� ����, ����ϴ���, ��¥ ���ڿ��� ����� ������ 
	var selectDate = dateStr.split(gubun);
	var changeDate = new Date();

	if(type=='d'){
		changeDate.setFullYear(Number(selectDate[0]), Number(selectDate[1])-1, Number(selectDate[2]) + addDate);
	} else if(type=='m'){
		changeDate.setFullYear(Number(selectDate[0]), Number(selectDate[1])-1 + addDate, Number(selectDate[2]));
	} else if(type=='y') {
		changeDate.setFullYear(Number(selectDate[0])+addDate, Number(selectDate[1])-1, Number(selectDate[2]));
	}

	var y = changeDate.getFullYear();
	var m = changeDate.getMonth() + 1;
	var d = changeDate.getDate();

	if(m < 10)    { m = "0" + m; }	
	if(d < 10)    { d = "0" + d; }

	return y + gubun + m + gubun + d;
}

//�ؽ�Ʈ ����� ���ڼ� ����
 /**
   EX)
    <textarea name="name" onChange="CheckStrLen('500',this);" onKeyUp="CheckStrLen('500',this); >
    �ѱ�500�� , ����1000�� ����
 */
function CheckStrLen(maxlen,field) {
	var temp; //������ ���ڰ�...
	var msglen;
	msglen = maxlen*2;
	var value= field.value;

	l =  field.value.length;
	tmpstr = "" ;

	if (l == 0){
		value = maxlen*2;
	}else{
		for(var k=0;k<l;k++){
			temp =value.charAt(k);
		
			if (escape(temp).length > 4)
				msglen -= 2;
			else
				msglen--;
			
			if(msglen < 0) {
				alert("�� ���� "+(maxlen*2)+"�� �ѱ� " + maxlen + "�� ���� �Է� �� �� �ֽ��ϴ�.");
				field.value= tmpstr;
				break;
			}else{
				tmpstr += temp;
			}
		}
	}
}

////////////////////////////////////////////////////////////////
// ���� �����
////////////////////////////////////////////////////////////////
var bSubmit = false;

function set_submit(){
	bSubmit = true;
	//document.body.style.cursor = "wait";
}

function reset_submit(){
	uf_proce_display_off();
	bSubmit = false;
	//document.body.style.cursor = "auto";
}

function isSubmit(){
	if (bSubmit){
		alert("ó�����Դϴ�.");
		//event.returnValue = false;
	}
	return bSubmit;
}

function bSubmit(){
	return isSubmit;
}

function nvl_chk_alert(name, obj){
	var nvl_chk_colname = "\n* �ʼ��Է� �׸� : " + name;
	alert("�ʼ��׸��� �ݵ�� �Է��ϼž� �մϴ�.\n" + nvl_chk_colname);

	if(typeof obj!="undefined" && obj!=null) obj.focus();
	return false;
}



/**
 * ���ڷ� ������ ���ڿ��� Ư���������� �����Ѵ�
 * ex) System.out.println(setDelim("20001215","9999-99-99"));
 * @param str 		�ٲ� ���ڿ�
 * @param delimPtrn �ٲ� ����
 * @return String
 */
function setDelim(str,delimPtrn)
{
	if((str==null) || (str.length == 0) || ("0" == str) ) return "";
	var sb = "";
	try{
		for(var i = 0, j = 0; i < delimPtrn.length ; i++ ){
			if( delimPtrn.substr(i,0) == '9'){
				sb += str.substr(j,0);
				j++;
			}else{
				sb += delimPtrn.substr(i,0);
			}
		}
	}catch(e){
		alert(e.message);
	}
	return sb;
};

/********************************************************
* �Է��� ��Ŀ�� Ȱ��ȭ/��Ȱ��ȭ
********************************************************/
jQuery(document).ready(function(){
	$('form[id="frm"]').find(':input[type="text"]').each(function(){
		$this = $(this);

		$this.focus(function(){
			$(this).css('border','1px solid #464646');	
		}).blur(function(){
			$(this).css('border','1px solid #cccccc');
		});
	});
	
});