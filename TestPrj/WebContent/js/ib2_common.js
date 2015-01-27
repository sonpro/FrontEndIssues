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
 * 통화포맷
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

// 선택 부분 카피하여 클립보드에 붙임
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

// 2바이트로 변환
function half2full_init(){
    for (var idx=0; idx<document.all.tags('INPUT').length; idx++){
        var obj = document.all.tags('INPUT')[idx];
        if(obj.type == "text"){
            if(obj.getAttribute("onkeydown") == null)     obj.onkeydown     = clickHalf2Full;
        }
    }
}

// 클릭하여 드래그한 부분 2바이트로 반환
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
 * 입력값이 NULL인지 체크
 * @param input element
 * return boolean
 */
function isNull(input) {
    if (input.value == null || input.value == "") {
        return true;
    }
    return false;
}

// 빈값인지 리턴한다.
function isEmpty(pValue){
    if (pValue == null || pValue.replace(/ /gi,"") == "") {
        return true;
    }
    return false;
}

/**
 * input element 값에 공백이 있는지 확인
 * @param input element
 * return boolean
 */
function isEmptyByObj(input) {
    return isEmpty(input.value);
}

/**
 * 입력값 알파벳으로 구성되어있는지 체크
 * @param input element
 * return boolean
 */
function isAlphabet(input) {
    var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
    return containsCharsOnly(input,chars);
}

/**
 * 입력값 알파벳 대문자로 구성되어있는지 체크
 * @param input element
 * return boolean
 */
function isUpperCase(input) {
    var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";
    return containsCharsOnly(input,chars);
}

/**
 * 입력값 알파벳 소문자로 구성되어있는지 체크
 * @param input element
 * return boolean
 */
function isLowerCase(input) {
    var chars = "abcdefghijklmnopqrstuvwxyz ";
    return containsCharsOnly(input,chars);
}

/**
 * 입력값 숫자로만 구성되어있느지 체크
 * @param input element
 * return boolean
 */
function isNumber(input) {
    var chars = "0123456789";
    return containsCharsOnly(input,chars);
}

/**
 * 입력값 알파벳,숫자로만 구성되어있느지 체크
 * @param input element
 * return boolean
 */
function isAlphaNum(input) {
    var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 ";
    return containsCharsOnly(input,chars);
}

/**
 * 입력값 알파벳대문자,숫자로만 구성되어있느지 체크
 * @param input element
 * return boolean
 */
function isBigAlphaNum(input) {
    var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ";
    return containsCharsOnly(input,chars);
}

/**
 * 입력값 숫자,'-'로만 구성되어있느지 체크
 * @param input element
 * return boolean
 */
function isNumDash(input) {
    var chars = "-0123456789";
    return containsCharsOnly(input,chars);
}

/**
 * 입력값 숫자,','로만 구성되어있느지 체크
 * @param input element
 * return boolean
 */
function isNumComma(input) {
    var chars = ",0123456789";
    return containsCharsOnly(input,chars);
}

// 숫자검증
function isNum(str){
    if(isEmpty(str)) return false;

    for(var idx=0;idx < str.length;idx++){
        if(str.charAt(idx) < '0' || str.charAt(idx) > '9'){
            return false;
        }
    }
    return true;
}

// 영문자검증
function isAlpha(str){
    if(isEmpty(str)) return false;

    for(var idx=0;idx < str.length;idx++){
        if(!((str.charAt(idx) >='a' && str <= 'z') || (str.charAt(idx) >= 'A' && str <= 'Z'))){
            return false;
        }
    }
    return true;
}

// 한글검증
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
 * 입력값이 전화번호 형식(숫자-숫자-숫자)인지 체크
 * @param input		element
 * return boolean
 */
function isValidPhone(input) {
    var format = /^(\d+)-(\d+)-(\d+)$/;
    return isValidFormat(input,format);
}

// 전화번호 국번검증
function isValidDDDPhoneNum(dddphonenum) {

    // 널인가?
    if (isEmpty(dddphonenum)) {
        return null;
    }


    if ( dddphonenum != "02" && dddphonenum != "031" && dddphonenum != "032" && dddphonenum != "033" && dddphonenum != "041" &&
         dddphonenum != "042" && dddphonenum != "043" && dddphonenum != "051" && dddphonenum != "052" && dddphonenum != "053" &&
         dddphonenum != "054" && dddphonenum != "055" && dddphonenum != "061" && dddphonenum != "062" && dddphonenum != "063" &&
         dddphonenum != "064" && dddphonenum != "011" && dddphonenum != "016" && dddphonenum != "017" && dddphonenum != "018" && dddphonenum != "019" && dddphonenum != "010" )
    {

        ERR_MSG = "잘못된 전화번호 국번입니다.";
        return false;
    }

    return true;
}

/*
* ip 형식에 맞는 데이터인지 검증
*/
function isValidIP(v) {
    return (v.search(/^\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}$/) > -1);
}

/**
 * 캐릭터 타입 검증 'H'-한글, 'E'-영문, 'N'-숫자, 'Z'-기타
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
 * 입력값에 특정 문자(chars)가 있는지 체크
 * @param input element
 * @param char	허용하지않는 문자
 * return boolean
 *
 * 특정 문자를 허용하지 않을때 사용
 * ex) if (containsChars(form.name,"!,*&^%$#@~;")) {
 *         alert("이름 필드에는 특수 문자를 사용할 수 없습니다.");
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
 * 입력값이 특정 문자(chars)만으로 되어있는지 체크
 * @param input element
 * @param char	허용문자
 * return boolean
 *
 * 특정 문자만 허용하려 할 때 사용
 * ex) if (!containsCharsOnly(form.blood,"ABO")) {
 *         alert("혈액형 필드에는 A,B,O 문자만 사용할 수 있습니다.");
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
 * 입력값이 특정 문자(chars)로 시작하는지 체크
 * @param input element
 * @param char	시작문자
 * return boolean
 *
 * 특정 문자로 시작 허용하려 할때 사용
 */
function isStartWith(input,chars) {
    for (var inx = 0; inx < chars.length; inx++) {
       if (chars.indexOf(input.value.charAt(0)) == -1)
           return false;
    }
    return true;
}

/**
 * 입력값이 사용자가 정의한 포맷 형식인지 체크
 * 자세한 format 형식은 자바스크립트의 'regular expression'을 참조
 * @param input		element
 * @param format	형식
 * return boolean
 */
function isValidFormat(input,format) {
    if (input.value.search(format) != -1) {
        return true; //올바른 포맷 형식
    }
    return false;
}

/**
 * 입력값의 바이트 길이를 리턴
 * @param input		element
 * return number
 * ex) if (getByteLength(form.title) > 100) {
 *         alert("제목은 한글 50자(영문 100자) 이상 입력할 수 없습니다.");
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
 * 문자열의 바이트 길이를 리턴
 * @param str 문자열
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
 * 유효한 월(月)인지 체크
 * @param mm	월
 * return boolean
 */
function isValidMonth(mm) {
    var m = parseInt(mm,10);
    return (m >= 1 && m <= 12);
}

/**
 * 유효한 일(日)인지 체크
 * @param yyyy	연
 * @param mm	월
 * @param dd	일
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
 * 유효한 시(時)인지 체크
 * @param hh	시
 * return boolean
 */
function isValidHour(hh) {
    var h = parseInt(hh,10);
    return (h >= 1 && h <= 24);
}

/**
 * 유효한(존재하는) 분(分)인지 체크
 * @param mi	분
 * return boolean
 */
function isValidMin(mi) {
    var m = parseInt(mi,10);
    return (m >= 1 && m <= 60);
}

/**
 * Time 형식인지 체크(느슨한 체크)
 * @param time	시간
 * return boolean
 */
function isValidTimeFormat(time) {
    return (!isNaN(time) && time.length == 12);
}

/**
 * 유효하는(존재하는) Time 인지 체크
 * @param time	시간
 * return boolean
 * ex) var time = form.time.value; //'200102310000'
 *     if (!isValidTime(time)) {
 *         alert("올바른 날짜가 아닙니다.");
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
 * Time 스트링을 자바스크립트 Date 객체로 변환
 * @param time	시간
 * return Date
 * parameter time: Time 형식의 String
 */
function toTimeObject(time) { //parseTime(time)
    var year  = time.substr(0,4);
    var month = time.substr(4,2) - 1; // 1월=0,12월=11
    var day   = time.substr(6,2);
    var hour  = time.substr(8,2);
    var min   = time.substr(10,2);

    return new Date(year,month,day,hour,min);
}

/**
 * 자바스크립트 Date 객체를 Time 스트링으로 변환
 * @param date	일자
 * return timeString
 * parameter date: JavaScript Date Object
 */
function toTimeString(date) { //formatTime(date)
    var year  = date.getFullYear();
    var month = date.getMonth() + 1; // 1월=0,12월=11이므로 1 더함
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
 * Time이 현재시각 이후(미래)인지 체크
 * @param timeString
 * return boolean
 * parameter date: JavaScript Date Object
 */
function isFutureTime(time) {
    return (toTimeObject(time) > new Date());
}

/**
 * Time이 현재시각 이후(과거)인지 체크
 * @param timeString
 * return boolean
 * parameter date: JavaScript Date Object
 */
function isPastTime(time) {
    return (toTimeObject(time) < new Date());
}

/**
 * 주어진 Time 과 y년 m월 d일 h시 차이나는 Time을 리턴
 * ex) var time = form.time.value; //'20000101000'
 *     alert(shiftTime(time,0,0,-100,0));
 *     => 2000/01/01 00:00 으로부터 100일 전 Time
 */
function shiftTime(time,y,m,d,h) { //moveTime(time,y,m,d,h)
    var date = toTimeObject(time);

    date.setFullYear(date.getFullYear() + y); //y년을 더함
    date.setMonth(date.getMonth() + m);       //m월을 더함
    date.setDate(date.getDate() + d);         //d일을 더함
    date.setHours(date.getHours() + h);       //h시를 더함

    return toTimeString(date);
}

/**
 * 두 date가 몇 개월 차이나는지 구함
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
 * 두 Time이 몇 개월 차이나는지 구함
 * time1이 time2보다 크면(미래면) minus(-)
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
 * 두 Time이 며칠 차이나는지 구함
 * time1이 time2보다 크면(미래면) minus(-)
 */
function getDayInterval(time1,time2) {
    var date1 = toTimeObject(time1);
    var date2 = toTimeObject(time2);
    var day   = 1000 * 3600 * 24; //24시간

    return parseInt((date2 - date1) / day, 10);
}

/**
 * 두 Time이 몇 시간 차이나는지 구함
 * time1이 time2보다 크면(미래면) minus(-)
 */
function getHourInterval(time1,time2) {
    var date1 = toTimeObject(time1);
    var date2 = toTimeObject(time2);
    var hour  = 1000 * 3600; //1시간

    return parseInt((date2 - date1) / hour, 10);
}

/**
 * 현재 시각을 Time 형식으로 리턴
 */
function getCurrentTime() {
    return toTimeString(new Date());
}

/**
 * 현재 시각과 y년 m월 d일 h시 차이나는 Time을 리턴
 */
function getRelativeTime(y,m,d,h) {

    return shiftTime(getCurrentTime(),y,m,d,h);
}

/**
 * 현재 年을 YYYY형식으로 리턴
 */
function getYear() {
    return getCurrentTime().substr(0,4);
}

/**
 * 현재 月을 MM형식으로 리턴
 */
function getMonth() {
    return getCurrentTime().substr(4,2);
}

/**
 * 현재 日을 DD형식으로 리턴
 */
function getDay() {
    return getCurrentTime().substr(6,2);
}

/******************************************************************
 * StringFilter	사용일자 조건에 따른 시작일자 ~ 종료일자 리턴함수
 * @param		chk  월,주
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
	var month = date.getMonth() + 1; // 1월=0,12월=11이므로 1 더함
	var day   = date.getDate();
	
	if (("" + month).length == 1) { month = "0" + month; }
	if (("" + day).length   == 1) { day   = "0" + day;   }
	  
	return ("" + year +"-"+ month +"-"+ day);
}
/**
 * 현재 時를 HH형식으로 리턴
 */
function getHour() {
    return getCurrentTime().substr(8,2);
}

/**
 * 오늘요일반환
 * ex) alert('오늘은 ' + getDayOfWeek() + '요일입니다.');
 */
function getDayOfWeek() {
    var now = new Date();

    var day = now.getDay(); //일요일=0,월요일=1,...,토요일=6
    var week = new Array('일','월','화','수','목','금','토');

    return week[day];
}

/**
 * 특정날짜의 요일
 */
function getDayOfWeek(time) {
    var now = toTimeObject(time);

    var day = now.getDay(); //일요일=0,월요일=1,...,토요일=6
    var week = new Array('일','월','화','수','목','금','토');

    return week[day];
}

/**
 * 특정날짜의 요일의 배열 값을 구한다.
 */
function getDayOfWeekNum(time) {
    var now = toTimeObject(time);
    var day = now.getDay(); //일요일=0,월요일=1,...,토요일=6

    return day;
}

/**
 * 어제 날짜를 구한다.
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

//월의 끝 일자 얻기
function getEndDate(datestr){

    //널인지?
    if(isEmpty(datestr)){
        return null;
    }

    //숫자인지?
    if(!isNum(datestr)){
        return null;
    }

    //길이가 8자리?
    if(datestr.length != 6){
        return null;
    }

    var yy = Number(datestr.substring(0,4));
    var mm = Number(datestr.substring(4,6));

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

// 외환에서 특정 통화일때 소수점이하 금액없애기
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
// 대문자변환
function toUpperCase(str){
    if(isEmpty(str)) return str;
    return str.toUpperCase();
}

// 실제길이 반환( 한글 2byte 계산 )
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

// 콤마설정.
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
 * 입력값에서 콤마를 없앤다
 * @param input element
 * return str
 */
function removeComma(input) {
    return input.value.replace(/,/gi,"");
}


//검색날짜 유효기간
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

//검색날짜 체크
function isVaildTerm(obj,yy,mm,dd) {
    var datestr = obj.value;

    //널인지?
    if(isEmpty(datestr)){
        return null;
    }

    // 날짜 포맷제거
    obj_removeformat(obj);

    //8자리인지?
    if (getByteLength(datestr) != 8) {
        alert("날짜는 '-'를 제외한 8자리 숫자로 입력하십시오.");
        return false;
    }

    // yy,mm,dd,fromto가 없을 경우
    if (yy == null) yy = 0;
    if (mm == null) mm = 0;
    if (dd == null) dd = 0;

    // 검색날짜 유효기간 가져오기
    var boundDate = getBoundDate(yy,mm,dd);

    if (yy < 0  || mm < 0  || dd < 0) {
        if ( boundDate > datestr) {
            alert("유효하지 않은 검색날짜입니다.\n유효한 날짜는" + boundDate.substring(0,4) + "년 " + boundDate.substring(4,6) + "월 " + boundDate.substring(6) + "일부터 입니다.");
            obj.select();
            return false;
        }
    } else {
        if ( boundDate < datestr) {
            alert("유효하지 않은 검색날짜입니다.\n유효한 날짜는" + boundDate.substring(0,4) + "년 " + boundDate.substring(4,6) + "월 " + boundDate.substring(6) + "일까지 입니다.");
            obj.select();
            return false;
        }
    }

    return true;
}


//오늘날짜
function getToDay() {
    var date = new Date();

    var year  = date.getFullYear();
    var month = date.getMonth() + 1; // 1월=0,12월=11이므로 1 더함
    var day   = date.getDate();

    if (("" + month).length == 1) { month = "0" + month; }
    if (("" + day).length   == 1) { day   = "0" + day;   }

    return ("" + year + month + day);
}

//년, 월, 일 각각 이전일 이후일 구하는 메서드
//사용법 : 	addDate('2012-12-21',  -10, 'd', '-') ); // 10일 이전일 구하기
//			addDate('2012-12-21',  +5, 'm', '-') ); // 5개월 이후 구하기
function setToDate(dateStr, addDate, type, gubun) { // 날짜 문자열, 계산할 일자, 년월일단위, 날짜 문자열의 년월일 구분자 
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

//텍스트 에어리어 글자수 제한
 /**
   EX)
    <textarea name="name" onChange="CheckStrLen('500',this);" onKeyUp="CheckStrLen('500',this); >
    한글500자 , 영문1000자 제한
 */
function CheckStrLen(maxlen,field) {
	var temp; //들어오는 문자값...
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
				alert("총 영문 "+(maxlen*2)+"자 한글 " + maxlen + "자 까지 입력 할 수 있습니다.");
				field.value= tmpstr;
				break;
			}else{
				tmpstr += temp;
			}
		}
	}
}

////////////////////////////////////////////////////////////////
// 이중 서브밋
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
		alert("처리중입니다.");
		//event.returnValue = false;
	}
	return bSubmit;
}

function bSubmit(){
	return isSubmit;
}

function nvl_chk_alert(name, obj){
	var nvl_chk_colname = "\n* 필수입력 항목 : " + name;
	alert("필수항목은 반드시 입력하셔야 합니다.\n" + nvl_chk_colname);

	if(typeof obj!="undefined" && obj!=null) obj.focus();
	return false;
}



/**
 * 숫자로 구성된 문자열을 특정형식으로 포맷한다
 * ex) System.out.println(setDelim("20001215","9999-99-99"));
 * @param str 		바꿀 문자열
 * @param delimPtrn 바뀔 형태
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
* 입력폼 포커스 활성화/비활성화
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