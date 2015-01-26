//날짜 Validation  Check
function validateDate(param) {

	var vdate = replace(param, "-", "");
	var daysInMonth = new Array("31", "28", "31", "30", "31", "30", "31", "31", "30", "31", "30", "31");

	var lvYear = "";
	var lvMonth = "";
	var lvDay = "";

	lvYear = vdate.substring(0,4);
	lvMonth = vdate.substring(4,6);
	lvDay = vdate.substring(6,8);

	if(eval(lvYear)%4 == 0) daysInMonth[1] = "29";
	else daysInMonth[1] = "28";

	if(eval(lvDay) > 0 && eval(lvDay) <= eval(daysInMonth[eval(lvMonth)-1])) {
		return true;
	} else {
		return false;
	} 
}

/**
 * 날짜변환 MGH 2009.02.10 추가
 * onblur
 */
function changeDateB(obj){
	if(obj.value=="") return false;

	if(!validateDate(replace(obj.value,"-","")) || replace(obj.value,"-","").length!=8){
		alert("년월일 8자리를 입력하셔야 합니다.");
		obj.value = "";
		obj.focus();
		return false;
	}else{
		var objValue = replace(obj.value,"-","");
		obj.value = objValue.substring(0,4)+"-"+objValue.substring(4,6)+"-"+objValue.substring(6);
	}
}

/**
 * 날짜변환 MGH 2009.02.10 추가
 * onfocus
 */
function changeDateF(obj){
	obj.value = replace(obj.value,"-","");
	obj.focus();
	return;
}

// 날짜콤보 조회 유효성 체크 
function chk_calSeldatediff(frm, fY, fM, tY, tM){
	var fdate;
	var tdate;
	var fYElem;
	var fMElem;
	var tYElem;
	var tMElem;
	
	if(typeof fY=="undefined")	fYElem = eval("frm.InqStrDtY"); 
	else fYElem = eval("frm."+fY);
	if(typeof fM=="undefined")	fMElem = eval("frm.InqStrDtM");
	else fMElem = eval("frm."+fM);
	if(typeof tY=="undefined")	tYElem = eval("frm.InqEndDtY");
	else tYElem = eval("frm."+tY);
	if(typeof tM=="undefined")	tMElem = eval("frm.InqEndDtM");
	else tMElem = eval("frm."+tM);

	if(Number(fYElem.value+fMElem.value)>Number(tYElem.value+tMElem.value)){
		alert("조회종료일이 조회시작일 보다 작습니다.");
		return false;
	}
	
	return true;
}


//날짜콤보 조회 유효성 체크 (년도체크)
function chk_calSeldatediffY(frm, fY, tY){
	var fdate;
	var tdate;
	var fYElem;
	var fMElem;
	var tYElem;
	var tMElem;
	
	if(typeof fY=="undefined")	fYElem = eval("frm.InqStrDtY"); 
	else fYElem = eval("frm."+fY);
	if(typeof fM=="undefined")	fMElem = eval("frm.InqStrDtM");
	else fMElem = eval("frm."+fM);
	if(typeof tY=="undefined")	tYElem = eval("frm.InqEndDtY");
	else tYElem = eval("frm."+tY);
	if(typeof tM=="undefined")	tMElem = eval("frm.InqEndDtM");
	else tMElem = eval("frm."+tM);

	if(Number(fYElem.value)>Number(tYElem.value)){
		alert("조회종료년이 조회시작년 보다 작습니다.");
		return false;
	}
	
	return true;
}

//날짜콤보 조회 유효성 체크
function chk_calTextdatediff(frm, fDate, tDate){
	var fdate;
	var tdate;
	var fDateElem;
	var tDateElem;
	
	if(typeof frm=="undefined") frm = document.frm;
	if(typeof fDate=="undefined")	fDateElem = eval("frm.InqStrDt"); 
	else fDateElem = eval("frm."+fDate);
	if(typeof tDate=="undefined")	tDateElem = eval("frm.InqEndDt");
	else tDateElem = eval("frm."+tDate);
	
	if(fDateElem.value==""){
		alert("조회시작일을 입력해 주십시요.");
		fDateElem.focus();
		return false;
	}else if(tDateElem.value==""){
		alert("조회종료일을 입력해 주십시요.");
		tDateElem.focus();
		return false;
	}

	if(Number((fDateElem.value).replace(/-/gi,''))>Number((tDateElem.value).replace(/-/gi,''))){
		alert("조회종료일이 조회시작일 보다 작습니다.");
		return false;
	}
	
	return true;
}


/********************************************************
* Function      : chkExctnScheTranAmt()
* Parameter     : 사용예정금액(ExctnScheTranAmt)
* Description   : 사용예정금액확인
********************************************************/
function chkExctnScheTrnAmt(ExctnScheTrnAmt){
	var mmUseBalAmt = Number(document.all["cMmUseBalAmt"].innerHTML.replace(/,/gi,""));	// 월사용가능잔액
	var ddUseBalAmt = Number(document.all["cDdUseBalAmt"].innerHTML.replace(/,/gi,""));	// 일사용가능잔액

	// 일사용가능연구비 확인
	if( ddUseBalAmt < Number(ExctnScheTrnAmt) ){
		alert("일사용가능연구비를 초과하여 사용할 수 없습니다.\n\n일 사용가능연구비를 확인해 주시기 바랍니다.");
		return false;
	}

	// 월사용가능연구비 확인
	if( mmUseBalAmt < Number(ExctnScheTrnAmt) ){
		alert("월사용가능연구비를 초과하여 사용할 수 없습니다.\n\n월 사용가능연구비를 확인해 주시기 바랍니다.");
		return false;
	}
	
	return true;
}
/********************************************************
* Function      : chkOtmTrnsLimAmt()
* Parameter     : 사용예정금액(ExctnScheTrnAmt), 증빙구분코드(EvdcCd)
* Description   : 사용예정금액확인(일회이체가능연구비체크)
********************************************************/
function chkOtmTrnsLimAmt(EvdcCd,	ExctnScheTrnAmt){
	var OtmTrnsLimAmt	=	"<%=FormatUtil.getMoneyForm(getOtmTrnsLimAmt(request))%>"; // 일회이체한도
	
	if(EvdcCd == "C")	//카드는 일회이체가능연구비를 체크안함
		return false;
	if(Number(OtmTrnsLimAmt) < Number(ExctnScheTrnAmt)){
		alert("일회이체가능연구비["+toMoney(OtmTrnsLimAmt)+"]를 초과하여 사용할 수 없습니다.\n\n일회 이체가능연구비를 확인해 주시기 바랍니다.");
		return false;
	}
	return true;
}


/********************************************************
* Function      : validate_frm()
* Parameter     : 폼객체(frm)
* Description   : 유효성체크
********************************************************/
function validate_frm(frm,ridx){
	return wfcb_onsubmit(frm,ridx);
}


/********************************************************
* Function      : chk_bzregno
* Parameter     : 사업자번호
* Description   : 사업자번호 유효성체크
********************************************************/
function chk_bzregno(bzno){
	var result = false;
	
	if( null != bzno && '0000000000' == bzno.replace(/-/gi,'') ) return true; //개인거래처 입력값
	if( null != bzno && '8888888888' == bzno.replace(/-/gi,'') ) return true; //해외거래처 입력값
	
	
	if( null != bzno && "" != bzno ){
		 var bizID = bzno;
		 var checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1);
		 var i, chkSum=0, c2, remander;
	
		 bizID = bizID.replace(/-/gi,'');
		 
		 for (i=0; i<=7; i++){
		  chkSum += checkID[i] * bizID.charAt(i);
		 }
	
		 c2 = "0" + (checkID[8] * bizID.charAt(8));
		 c2 = c2.substring(c2.length - 2, c2.length);
	
		 chkSum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1));
	
		 remander = (10 - (chkSum % 10)) % 10 ;
	
		 if (Math.floor(bizID.charAt(9)) == remander){
			 result = true;
		 }
	}
	return result;
}

//금액 유효성체크 함수
jQuery.fn.ForceNumericOnly = function() {
	return this.each(function() {
		
		$(this).keydown(function(e) {
			var key = e.charCode || e.keyCode || 0;
			// allow backspace, tab, delete, arrows, numbers and keypad numbers ONLY
			return (
				key == 8 ||
				key == 9 ||
				key == 46 ||
				(key >= 37 && key <= 40) ||
				(key >= 48 && key <= 57) ||
				(key >= 96 && key <= 105));
		});
 
		$(this).focusout(function() { $(this).val($(this).val().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")); });
		$(this).focusin(function() { $(this).val($(this).val().replace(/\,/g, '')); });
	});
};