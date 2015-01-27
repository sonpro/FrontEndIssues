//��¥ Validation  Check
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
 * ��¥��ȯ MGH 2009.02.10 �߰�
 * onblur
 */
function changeDateB(obj){
	if(obj.value=="") return false;

	if(!validateDate(replace(obj.value,"-","")) || replace(obj.value,"-","").length!=8){
		alert("����� 8�ڸ��� �Է��ϼž� �մϴ�.");
		obj.value = "";
		obj.focus();
		return false;
	}else{
		var objValue = replace(obj.value,"-","");
		obj.value = objValue.substring(0,4)+"-"+objValue.substring(4,6)+"-"+objValue.substring(6);
	}
}

/**
 * ��¥��ȯ MGH 2009.02.10 �߰�
 * onfocus
 */
function changeDateF(obj){
	obj.value = replace(obj.value,"-","");
	obj.focus();
	return;
}

// ��¥�޺� ��ȸ ��ȿ�� üũ 
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
		alert("��ȸ�������� ��ȸ������ ���� �۽��ϴ�.");
		return false;
	}
	
	return true;
}


//��¥�޺� ��ȸ ��ȿ�� üũ (�⵵üũ)
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
		alert("��ȸ������� ��ȸ���۳� ���� �۽��ϴ�.");
		return false;
	}
	
	return true;
}

//��¥�޺� ��ȸ ��ȿ�� üũ
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
		alert("��ȸ�������� �Է��� �ֽʽÿ�.");
		fDateElem.focus();
		return false;
	}else if(tDateElem.value==""){
		alert("��ȸ�������� �Է��� �ֽʽÿ�.");
		tDateElem.focus();
		return false;
	}

	if(Number((fDateElem.value).replace(/-/gi,''))>Number((tDateElem.value).replace(/-/gi,''))){
		alert("��ȸ�������� ��ȸ������ ���� �۽��ϴ�.");
		return false;
	}
	
	return true;
}


/********************************************************
* Function      : chkExctnScheTranAmt()
* Parameter     : ��뿹���ݾ�(ExctnScheTranAmt)
* Description   : ��뿹���ݾ�Ȯ��
********************************************************/
function chkExctnScheTrnAmt(ExctnScheTrnAmt){
	var mmUseBalAmt = Number(document.all["cMmUseBalAmt"].innerHTML.replace(/,/gi,""));	// ����밡���ܾ�
	var ddUseBalAmt = Number(document.all["cDdUseBalAmt"].innerHTML.replace(/,/gi,""));	// �ϻ�밡���ܾ�

	// �ϻ�밡�ɿ����� Ȯ��
	if( ddUseBalAmt < Number(ExctnScheTrnAmt) ){
		alert("�ϻ�밡�ɿ����� �ʰ��Ͽ� ����� �� �����ϴ�.\n\n�� ��밡�ɿ����� Ȯ���� �ֽñ� �ٶ��ϴ�.");
		return false;
	}

	// ����밡�ɿ����� Ȯ��
	if( mmUseBalAmt < Number(ExctnScheTrnAmt) ){
		alert("����밡�ɿ����� �ʰ��Ͽ� ����� �� �����ϴ�.\n\n�� ��밡�ɿ����� Ȯ���� �ֽñ� �ٶ��ϴ�.");
		return false;
	}
	
	return true;
}
/********************************************************
* Function      : chkOtmTrnsLimAmt()
* Parameter     : ��뿹���ݾ�(ExctnScheTrnAmt), ���������ڵ�(EvdcCd)
* Description   : ��뿹���ݾ�Ȯ��(��ȸ��ü���ɿ�����üũ)
********************************************************/
function chkOtmTrnsLimAmt(EvdcCd,	ExctnScheTrnAmt){
	var OtmTrnsLimAmt	=	"<%=FormatUtil.getMoneyForm(getOtmTrnsLimAmt(request))%>"; // ��ȸ��ü�ѵ�
	
	if(EvdcCd == "C")	//ī��� ��ȸ��ü���ɿ����� üũ����
		return false;
	if(Number(OtmTrnsLimAmt) < Number(ExctnScheTrnAmt)){
		alert("��ȸ��ü���ɿ�����["+toMoney(OtmTrnsLimAmt)+"]�� �ʰ��Ͽ� ����� �� �����ϴ�.\n\n��ȸ ��ü���ɿ����� Ȯ���� �ֽñ� �ٶ��ϴ�.");
		return false;
	}
	return true;
}


/********************************************************
* Function      : validate_frm()
* Parameter     : ����ü(frm)
* Description   : ��ȿ��üũ
********************************************************/
function validate_frm(frm,ridx){
	return wfcb_onsubmit(frm,ridx);
}


/********************************************************
* Function      : chk_bzregno
* Parameter     : ����ڹ�ȣ
* Description   : ����ڹ�ȣ ��ȿ��üũ
********************************************************/
function chk_bzregno(bzno){
	var result = false;
	
	if( null != bzno && '0000000000' == bzno.replace(/-/gi,'') ) return true; //���ΰŷ�ó �Է°�
	if( null != bzno && '8888888888' == bzno.replace(/-/gi,'') ) return true; //�ؿܰŷ�ó �Է°�
	
	
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

//�ݾ� ��ȿ��üũ �Լ�
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