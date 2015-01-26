// Xecure���� submit �Լ�
function fn_submit(frm){
	set_submit();
	uf_proce_display_on();

	//fn_submit_ns(frm);// �����׽�Ʈ ����� �ش� line ���� 2014.04.16
	XecureSubmit(frm);

	removeTempAttribute(frm);	//get2post
}

// �˾��� ǥ���Ҷ� ����ϴ� �Լ�.
function fn_submit_p(frm){
	//fn_submit_p_ns(frm);// �����׽�Ʈ ����� �ش� line ���� 2014.04.16
	XecureSubmit(frm);
	//removeTempAttribute(frm);	//get2post
}

// Xecure ������ �˾� ǥ�� �Լ�.
function fn_submit_p_ns(frm){
	frm.submit();
}

// Xecure ������ submit �Լ�
function fn_submit_ns(frm){
	frm.submit();
	removeTempAttribute(frm);	//get2post
}

// Xecure ���� url �̵� �Լ�
function fn_url(url, target){
	//fn_link(url, 'Y');return false;// �����׽�Ʈ ����� �ش� line ���� 2014.04.16
	//if( typeof target=="undefined" ) target="_self";
	//location.href=url;

	var param = "";
	var _url = url;

	if( typeof target=="undefined" ) target="_self";
	if(_url.indexOf("?")>-1) param = "&";
	else param = "?";

	_url = _url+param;
	//window.open(_url, '_self', '');
	//navigate(_url, target);
	XecureNavigate(_url, target);
}

// Xecure ������ url �̵� �Լ�
function fn_link(url, isLogInYN){
	var param = "?";
	var _url = url;

	if(typeof isLogInYN=="undefined") isLogInYN="N";
	if(isLogInYN=="T"){
		window.open(url, "_blank");
		return;
	}

	if(!isLoginChk(isLogInYN)) {
		fn_url('/jsp/u00/U00_01_00.jsp');
		return;
	}

	if(_url.indexOf("?")>-1) param = "&";

	_url = _url+param;
	//navigate(_url, "_self");
	XecureNavigate_NoEnc(_url, "_self");
}

/********************************************************
* Function      : uf_sendRidirect()
* Parameter     : ����ü(frm), ��ũ������(url), �߰��Ĺ���(addParam), ž�޴�(topMenuId), ����Ʈ�޴�(leftMenuId)
* Description   : post ����Ÿ ����� (get2post �� �ѱ���� �������)
********************************************************/
function uf_sendRidirect(frm, url, addParam, topMenuId, leftMenuId){
	var param = "?";
	var _url = url;

	if( typeof target=="undefined" ) target="_self";
	if(_url.indexOf("?")>-1) param = "&";
	if( typeof topMenuId!="undefined" ){
		param = param+ "topMenuId="+topMenuId;

		if( typeof leftMenuId!="undefined" ){
			param = param + "&leftMenuId="+leftMenuId;
		}
	}

	_url = _url + param +"&"+addParam;
	XecureNavigate(_url, target);

	//frm.target = "_self";
	//frm.action = url;
	//fn_submit(frm);
}

function uf_jAlert(msg,tit,callback){
	return jAlert2(msg,tit,callback);
}

// ������ ���̾� ǥ��
function uf_proce_display_on(flag){
	jProcess(flag);
}

// ������ ���̾� ����
function uf_proce_display_off(){
	jQuery.alerts._hide();
}

function uf_ca_view_display_on(){
	if(typeof window.document.all['ca_view'] != "undefined"){
		document.all.ca_view.style.display = "";
		window.document.all['ca_view'].style.position = "absolute";
		window.document.all['ca_view'].style.left = (window.document.body.clientWidth-219)/2;
		window.document.all['ca_view'].style.top =(window.document.body.clientHeight-280)/2;
	}
}

function uf_ca_view_display_off(){
	document.all.ca_view.style.display = "none";
}

function uf_totmenu_display_on(){
	/*
	if(window.document.all['totmenu']!=null && typeof window.document.all['totmenu'] != "undefined"){
		document.all.totmenu.style.display = "";
		window.document.all['totmenu'].style.position = "absolute";
		window.document.all['totmenu'].style.left = "67px";
		window.document.all['totmenu'].style.top ="90px";
	}
	*/
	open_ifr("/jsp/comm/all_menu_brws1.jsp", 925, 680, null, 67, 90);
}

function uf_totmenu_display_off(){
	/*if(window.document.all['totmenu']!=null && typeof window.document.all['totmenu'] != "undefined"){
		document.all.totmenu.style.display = "none";
	}*/
	hideIfr();
}

/**
*  #���ڿ��� �ִ� Ư������������ �ٸ� ������������ �ٲٴ� �Լ�. - �������� string �ٲ� �� �ְ� ����  (2003-03-12 10:27����)
*/
function replace(targetStr, searchStr, replaceStr) {
	var i=0,j=0;
	if (targetStr == null || searchStr == null || replaceStr == null) return "";

	var tmpStr = "";

	var tlen = targetStr.length;
	var slen = searchStr.length;

    var i=0;
	var j=0;

	while (i < tlen - slen+1)	{
		j = i + slen;

		if (targetStr.substring(i,j) == searchStr)	{
			tmpStr += replaceStr;
		    i += slen;

		}
		else {
		    tmpStr += targetStr.substring(i, i + 1);
		    i++;
		}
    }

    tmpStr +=  targetStr.substring(i);

	return tmpStr;
}

// ����÷��
function file_append(FileSaveNm, FileSavePath, FileNm, FilsSz){
	var object = document.frm.fileAtt;
	var loc=object.length;

	object.options[loc] = new Option(FileNm, FileSavePath+""+FileSaveNm+""+FilsSz);
	object.selectedIndex =loc;
}

// ���ϻ���
function file_delete(fnc){
	if(!confirm("������ ������ ������ ���� �ʽ��ϴ�.\n���õ� ������ �����Ͻðڽ��ϱ�?")){
		return;
	}
   	var frm = document.frm;
   	var object = document.frm.fileAtt;

   	if(object.options[object.options.selectedIndex].value.split("").length>2){
	   	if( isSubmit() ) return;	// ����ó��

	   	get2post(frm, "FileNm="+object.options[object.options.selectedIndex].value.split("")[0]);
	   	get2post(frm, "FileSavePath="+object.options[object.options.selectedIndex].value.split("")[1]);

	   	if(typeof fnc!="undefined"){
	   		get2post(frm, "fnc="+fnc);
	   	}

	   	frm.action = "/jsp/comm/file_del_d.jsp";
		frm.target = "sendIfrm";
		fn_submit(frm);
		removeTempAttribute(frm);
   	}

	object.options[object.options.selectedIndex]=null;
}

//���� ����(select ������)
function file_sel_delete(){
	if(!confirm("���õ� ������ �����Ͻðڽ��ϱ�?")){
		return;
	}
   	var frm = document.frm;
   	var object = document.frm.fileAtt;

   	object.options[object.options.selectedIndex]=null;
}

//���� �ٿ�ε�
function file_download(FileSaveNm, FileSavePath, FileNm){
	var frm = document.frm;

	get2post(frm, "fFileSaveNm="+FileSaveNm);
   	get2post(frm, "fFileSavePath="+FileSavePath);
   	get2post(frm, "fFileNm="+FileNm);

	frm.action = "/jsp/comm/file_dwn.jsp";
	frm.target = "_self";
	//fn_submit_p(frm);
	fn_submit_p_ns(frm);
	removeTempAttribute(frm);
}

//���� �ٿ�ε�
function fild_DBdown(seqNo, dtlsSeqNo){
	var frm = document.frm;

	get2post(frm, "seqNo="+seqNo);
   	get2post(frm, "dtlsSeqNo="+dtlsSeqNo);

	frm.action = "/jsp/comm/file_dwn.jsp";
	frm.target = "_self";
	//fn_submit_p(frm);
	fn_submit_p_ns(frm);
	removeTempAttribute(frm);
}

//���� �ٿ�ε�(select)
function file_sel_download(obj){
	file_download(file_FileSaveNm(obj.options[obj.selectedIndex]), file_FileSavePath(obj.options[obj.selectedIndex]), file_FileNm(obj.options[obj.selectedIndex]));
}

/********************************************************
* Function      : file_FileNm()
* Parameter     : elem select option element
* Description   : ���ϸ�
********************************************************/
function file_FileNm(elem){
	return elem.text;
}

/********************************************************
* Function      : file_FileSavePath()
* Parameter     : elem select option element
* Description   : ����������
********************************************************/
function file_FileSavePath(elem){
	return elem.value.split("")[0];
}

/********************************************************
* Function      : file_FileSaveNm()
* Parameter     : elem select option element
* Description   : ���������
********************************************************/
function file_FileSaveNm(elem){
	return elem.value.split("")[1];
}

/********************************************************
* Function      : file_FileSz()
* Parameter     : elem select option element
* Description   : ����ũ��
********************************************************/
function file_FileSz(elem){
	return elem.value.split("")[2];
}


/********************************************************
* Function      : uf_chkbzregno()
* Description   : ����ڹ�ȣ ������ ��� Ȯ��, (��Ÿ,���ڼ��ݰ�꼭�� ����)
********************************************************/
function uf_chkbzregno(dv, ridx){
	var frm = document.frm;
	var bzRegNo = "";
	var evdc_dv,agrmtSeqNo;

	if( typeof ridx == 'undefined' ) ridx = '';


	if( dv == '0' ){//�����켱
		//����� ���� Ȯ��
		var selItxp = false;
		for(var i = 0 ; i < document.frm.itxp_cnt.value ; i++ ){
			if( $('#SelDtlsItxpCd_'+i).val() != "" && $('#SelSubDtlsItxpCd_'+i).val() != ""
				&& $('#SelDtlsItxpCd_'+i).val() != "����" && $('#SelSubDtlsItxpCd_'+i).val() != "����"
				){
				selItxp = true; break;
			}
		}
		if( selItxp == false ){
			alert('��������� �����Ͻ� �� �̿��ϼ���.');
			$('#SelDtlsItxpCd_0').focus();
			return false;
		}

		evdc_dv = frm.evma_gb.value;

		if( "1" == $('#SplrAuth').val() ){
			if( 'E' == evdc_dv ||  'R' == evdc_dv ){//��Ÿ���� + Add CashReceipt 20141216 modified by sonpro
				$('#SplrAuth').val('0');
				$('#etc_SplrBzRegNo_0').attr('readonly',false).val('').css('backgroundColor','#fff');
				$('#etc_SplrCoNm_0').attr('readonly',false).val('').css('backgroundColor','#fff');
				$('#etc_ChkBzRegNo_0').html('<img src="/images/bt/bt_bzregno.gif" alt="����ڹ�ȣȮ��" />');
				$('#idBzRegNo').show();
				$('#OwacNm').val(''); //������ �ʱ�ȭ
			}
			return false;
		}

		if( 'E' == evdc_dv ||  'R' == evdc_dv ){	//��Ÿ���� + Add CashReceipt 20141216 modified by sonpro
			bzRegNo = frm.etc_SplrBzRegNo.value;
			if( frm.etc_SplrCoNm.value == "" ){
				alert('ȸ����� �Է��ϼ���.');
				frm.etc_SplrCoNm.focus();
				return false;
			}
			if( bzRegNo == "" ){
				alert('����ڵ�Ϲ�ȣ�� �Է��ϼ���.');
				frm.etc_SplrBzRegNo.focus();
				return false;
			}
		}else if( 'T' == evdc_dv ){ //���ڼ��ݰ�꼭
			bzRegNo = frm.T_SplrBzRegNo.value;
		}else{
			return false;
		}
	}else if( dv == '1'){//���켱
		evdc_dv =  $('#EvmaGb_'+ridx).val();

		if( "1" == $('#SplrAuth_'+ridx).val() ){
			if( 'E' == evdc_dv ||  'R' == evdc_dv ){//��Ÿ���� + Add CashReceipt 20141216 modified by sonpro
				$('#SplrAuth_'			+ ridx ).val('0');
				$('#etc_SplrBzRegNo_'	+ ridx ).attr('readonly',false).val('').css('backgroundColor','#fff');
				$('#etc_SplrCoNm_'		+ ridx ).attr('readonly',false).val('').css('backgroundColor','#fff');
				$('#etc_ChkBzRegNo_'	+ ridx ).html('<img src="/images/bt/bt_bzregno.gif" alt="����ڹ�ȣȮ��" />');
				$('#idBzRegNo_'			+ ridx ).show();
				$('#OwacNm_'			+ ridx ).val(''); //������ �ʱ�ȭ
			}
			return false;
		}

		if( 'E' == evdc_dv ||  'R' == evdc_dv ){//��Ÿ���� + Add CashReceipt 20141216 modified by sonpro
			bzRegNo = $('#etc_SplrBzRegNo_'+ridx).val();

			if( $('#etc_SplrCoNm_'		+ ridx ).val() == "" ){
				alert('ȸ����� �Է��ϼ���.');
				$('#etc_SplrCoNm_'		+ ridx ).focus();
				return false;
			}
			if( bzRegNo == "" ){
				alert('����ڵ�Ϲ�ȣ�� �Է��ϼ���.');
				$('#etc_SplrBzRegNo_'+ridx).focus();
				return false;
			}
		}else if( 'T' == evdc_dv ){ //���ڼ��ݰ�꼭
			bzRegNo = $('#T_SplrBzRegNo_'+ridx).val();
		}else{
			return false;
		}

	}

	//�ؿܱ���� ���
	if( '8888888888' == bzRegNo ){
		set_bzregno_success( evdc_dv , ridx );
		return false;
	}

	if( chk_bzregno(bzRegNo) == false ){
		alert('����ڵ�Ϲ�ȣ�� Ȯ���� �ֽñ� �ٶ��ϴ�.\n\n����ڵ�Ϲ�ȣ : ' + bzRegNo);
		if( 'E' == evdc_dv ){//��Ÿ����
			if( dv == '0' ){
				frm.etc_SplrBzRegNo.focus();
			}else{
				$('#etc_SplrBzRegNo_'+ridx).focus();
			}
		}
		return false;
	}
	if( isSubmit() ) return false;	// ����ó��

	if( typeof document.rtr_str_form != 'undefined' ){
		agrmtSeqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
	}else{
		agrmtSeqNo = frm.S_AGRMT_SEQ_NO.value;
	}
	get2post(frm,"AgrmtSeqNo=" + agrmtSeqNo);
	get2post(frm,"BzRegNo=" + bzRegNo);
	get2post(frm,"EvdcDv=" + evdc_dv);
	get2post(frm,"IdxNo=" + ridx);

	frm.target = "sendIfrm";
	frm.action = "/jsp/u01/u12/U12_01_00_0_r3.jsp";
	fn_submit(frm);
	removeTempAttribute(frm);
	return false;
}

function set_bzregno_success(evdc_dv,ridx){
	alert('�ŷ�ó Ȯ���� �Ϸ�Ǿ����ϴ�.');

	if( typeof ridx == 'undefined' || null == ridx || "" == ridx ){
		if( 'E' == evdc_dv){
			$('#etc_SplrBzRegNo_0').attr('readonly',true).css('backgroundColor','#d2d2d2');
			$('#etc_SplrCoNm_0').attr('readonly',true).css('backgroundColor','#d2d2d2');
			$('#etc_ChkBzRegNo_0').html('<img src="/images/bt/bt_bzchange.gif" alt="����ڹ�ȣ����" width="68"/>');
			$('#idBzRegNo').hide();
			$('#ChkBzRegNo_0').hide();
		}else if( 'T' == evdc_dv ){
			$('#ChkBzRegNo_0').hide();
		}else if( 'R' == evdc_dv ){		//Add CashReceipt 20141216 modified by sonpro
			$('#etc_SplrBzRegNo_0').attr('readonly',true).css('backgroundColor','#d2d2d2');
			$('#etc_SplrCoNm_0').attr('readonly',true).css('backgroundColor','#d2d2d2');
			$('#etc_ChkBzRegNo_0').hide();
		}

		$('#SplrAuth').val('1');
	}else{
		if( 'E' == evdc_dv){
			$('#etc_SplrBzRegNo_'+ridx).attr('readonly',true).css('backgroundColor','#d2d2d2');
			$('#etc_SplrCoNm_'+ridx).attr('readonly',true).css('backgroundColor','#d2d2d2');
			$('#etc_ChkBzRegNo_'+ridx).html('<img src="/images/bt/bt_bzchange.gif" alt="����ڹ�ȣ����" width="68"/>');
			$('#idBzRegNo_'+ridx).hide();
			$('#ChkBzRegNo_'+ridx).hide();
		}else if( 'T' == evdc_dv ){
			$('#ChkBzRegNo_'+ridx).hide();
		}else if( 'R' == evdc_dv ){		//Add CashReceipt 20141216 modified by sonpro
			$('#etc_SplrBzRegNo_0').attr('readonly',true).css('backgroundColor','#d2d2d2');
			$('#etc_SplrCoNm_0').attr('readonly',true).css('backgroundColor','#d2d2d2');
			$('#etc_ChkBzRegNo_0').hide();
		}
		$('#SplrAuth_'+ridx).val('1');
	}

}

function chkbzregno_alert(yn,evdc_dv,ridx){

	if( "Y" == yn ){
		alert('�ش� �ŷ�ó�� ����Ͻ� �� �����ϴ�.(���� ������ ������)');

		if( typeof ridx == 'undefined' || null == ridx || "" == ridx ){
			if( 'E' == evdc_dv ||  'R' == evdc_dv ){	//��Ÿ���� + Add CashReceipt 20141216 modified by sonpro
				document.frm.etc_SplrBzRegNo.removeAttribute('readonly');
			}
			$('#SplrAuth').val('0');
		}else{
			if( 'E' == evdc_dv ||  'R' == evdc_dv ){	//��Ÿ���� + Add CashReceipt 20141216 modified by sonpro
				$('#etc_SplrBzRegNo_'+ridx).attr('redonly',false);
			}
			$('#SplrAuth_'+ridx).val('0');
		}

	}else{
		set_bzregno_success(evdc_dv,ridx);
	}
}


/********************************************************
* Function      : tran_owac()
* Description   : ��������ȸ
********************************************************/
function setMyAcctNo(bnkCd,bnkNm,acctNo,owacNm,ridx){

	try{
	if( ridx == "" ){
		document.getElementById('RcvBnkCd').value = bnkCd;
		document.getElementById('RcvAcctNo').value = acctNo;
		document.getElementById('OwacNm').value = owacNm;
		document.getElementById('idRcvBnkNm').innerHTML = "[" + bnkNm + "]" + acctNo;
	}else{
		document.getElementById('RcvBnkCd_'+ridx).value = bnkCd;
		document.getElementById('RcvAcctNo_'+ridx).value = acctNo;
		document.getElementById('OwacNm_'+ridx).value = owacNm;
		document.getElementById('idRcvBnkNm_'+ridx).innerHTML = "[" + bnkNm + "]" + acctNo;

	}
	}catch(e){
		alert(e.message);
	}
}

/********************************************************
* Function      : tran_owac()
* Description   : ��������ȸ
********************************************************/
function tran_owac(BnkCd, AcctNo){
	var frm = document.frm;

	if(typeof BnkCd=="undefined") BnkCd = frm.RcvBnkCd;
	if(typeof AcctNo=="undefined") AcctNo = frm.RcvAcctNo;
	frm.OwacNm.value = "";

	var _BnkCd = BnkCd.value;
	var _AcctNo = AcctNo.value;

	if( _BnkCd=="" ){
		alert("������ �������ֽʽÿ�");
		BnkCd.focus();
		return;
	}

	if( _AcctNo==""){
		alert("���¹�ȣ�� �Է��� �ֽʽÿ�");
		AcctNo.focus();
		return;
	}

	if( isSubmit() ) return;	// ����ó��

	frm.target = "sendIfrm";
	frm.action = "/jsp/comm/owac_r1.jsp";
	fn_submit(frm);
}
/********************************************************
* Function      : tran_owac2()
* Description   : ��������ȸ
********************************************************/
function tran_owac2(BnkCd, AcctNo, AgrmtSeqNo,AgrmtInstId,PmsId,BzClasCd,CpcgInstBzprNo,AgrmtInstBzprNo, TrnsAmt, ridx){
	var frm = document.frm;
	var param	=	"";

	var _BnkCd = "";
	var _AcctNo = "";

	if( ridx == null || ridx == "" ){
		if(typeof BnkCd=="undefined" ) BnkCd = frm.RcvBnkCd;
		if(typeof AcctNo=="undefined" ) AcctNo = frm.RcvAcctNo;
		frm.OwacNm.value = "";

		_BnkCd = BnkCd.value;
		_AcctNo = AcctNo.value;
	}else{

		if( typeof frm.OwacNm.length != 'undefined' && frm.OwacNm.length > 0 ){
			if(typeof BnkCd=="undefined" ) BnkCd = eval('frm.RcvBnkCd['+ridx+']');
			if(typeof AcctNo=="undefined" ) AcctNo = eval('frm.RcvAcctNo_'+ridx);
			frm.OwacNm[ridx].value = "";
		}else{
			if(typeof BnkCd=="undefined" ) BnkCd = eval('frm.RcvBnkCd');
			if(typeof AcctNo=="undefined" ) AcctNo = eval('frm.RcvAcctNo_'+ridx);
			frm.OwacNm.value = "";
		}


		_BnkCd = BnkCd.value;
		_AcctNo = AcctNo.value;

	}

	if( _BnkCd=="" ){
		alert("������ �������ֽʽÿ�");
		BnkCd.focus();
		return;
	}

	if( _AcctNo==""){
		alert("���¹�ȣ�� �Է��� �ֽʽÿ�");
		AcctNo.focus();
		return;
	}
	get2post(frm,"&pRcvBnkCd="+_BnkCd);
	get2post(frm,"&pRcvAcctNo="+_AcctNo);

	param	=	"AgrmtSeqNo="      + AgrmtSeqNo;
	param	+=	"&AgrmtInstId="    + AgrmtInstId;
	param	+=	"&PmsId="          + PmsId;
	param	+=	"&BzClasCd="       + BzClasCd;
	param	+=	"&CpcgInstBzprNo=" + CpcgInstBzprNo;
	param	+=	"&AgrmtInstBzprNo="+ AgrmtInstBzprNo;
	param	+=	"&TrnsAmt="        + TrnsAmt;
	param	+=	"&pRowIdx="        + ridx;

	if( isSubmit() ) return;	// ����ó��

	frm.target = "sendIfrm";
	frm.action = "/jsp/comm/owac_r2.jsp?"+param;
	fn_submit(frm);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : tran_owac3()
* Description   : ������(�Ǹ�)��ȸ
********************************************************/
function tran_owac3(BzRegNo, BnkCd, AcctNo, AgrmtSeqNo,AgrmtInstId,PmsId,BzClasCd,CpcgInstBzprNo,AgrmtInstBzprNo, TrnsAmt, ridx){
	var frm = document.frm;
	var param	=	"";

	var _BnkCd = "";
	var _AcctNo = "";

	if( ridx == null || ridx == "" ){
		if(typeof BnkCd=="undefined" ) BnkCd = frm.RcvBnkCd;
		if(typeof AcctNo=="undefined" ) AcctNo = frm.RcvAcctNo;
		frm.OwacNm.value = "";

		_BnkCd = BnkCd.value;
		_AcctNo = AcctNo.value;
	}else{

		if( typeof frm.OwacNm.length != 'undefined' && frm.OwacNm.length > 0 ){
			if(typeof BnkCd=="undefined" ) BnkCd = eval('frm.RcvBnkCd['+ridx+']');
			if(typeof AcctNo=="undefined" ) AcctNo = eval('frm.RcvAcctNo_'+ridx);
			frm.OwacNm[ridx].value = "";
		}else{
			if(typeof BnkCd=="undefined" ) BnkCd = eval('frm.RcvBnkCd');
			if(typeof AcctNo=="undefined" ) AcctNo = eval('frm.RcvAcctNo_'+ridx);
			frm.OwacNm.value = "";
		}


		_BnkCd = BnkCd.value;
		_AcctNo = AcctNo.value;

	}

	if( _BnkCd=="" ){
		alert("������ �������ֽʽÿ�");
		BnkCd.focus();
		return;
	}

	if( _AcctNo==""){
		alert("���¹�ȣ�� �Է��� �ֽʽÿ�");
		AcctNo.focus();
		return;
	}
	get2post(frm,"&pRcvBnkCd="+_BnkCd);
	get2post(frm,"&pRcvAcctNo="+_AcctNo);

	param	=	"AgrmtSeqNo="      + AgrmtSeqNo;
	param	+=	"&AgrmtInstId="    + AgrmtInstId;
	param	+=	"&PmsId="          + PmsId;
	param	+=	"&BzClasCd="       + BzClasCd;
	param	+=	"&CpcgInstBzprNo=" + CpcgInstBzprNo;
	param	+=	"&AgrmtInstBzprNo="+ AgrmtInstBzprNo;
	param	+=	"&TrnsAmt="        + TrnsAmt;
	param	+=	"&BzRegNo="        + BzRegNo;			//����ڹ�ȣ
	param	+=	"&pRowIdx="        + ridx;

	if( isSubmit() ) return;	// ����ó��

	frm.target = "sendIfrm";
	frm.action = "/jsp/comm/owac_r3.jsp?"+param;
	fn_submit(frm);
	removeTempAttribute(frm);
}

/******************************************************************
 * uf_chkVaccState		������»���üũ
 * @param	frm_val1	������¹߱����� ����
 * @param	frm_val2	������¹߱޻��� ����
 * @return	true ��밡�� false ���Ұ�
******************************************************************/
function uf_chkVaccState(frm_val1,frm_val2){
	if(frm_val1 == undefined)	frm_val1	=	"EXIST_VACC";
	if(frm_val2 == undefined)	frm_val2	=	"ISSU_ST";
	var frm = document.frm;

	if(eval("frm."+frm_val1).value	==	"Y"){
		if(eval("frm."+frm_val2).value == "1")	//1:��밡�� 0:�Աݴ��
			return true;
		else if(eval("frm."+frm_val2).value == "0"){
			alert("������»��°� [�Աݴ��] �����Դϴ�.\n���� ��û���� �ԱݿϷ��� ��û�Ͽ��ֽʽÿ�.");
			return false;
		}else{
			alert("������»��°� [��밡��] ���°� �ƴմϴ�.\n�����ڿ��� �����Ͻñ� �ٶ��ϴ�.");
			return false;
		}
	}else{
		alert("�߱޵� ������������� �����ϴ�.\n���� ��û�� ��� ȯ�� �� �����û���ϸ� �ڵ����� �߱޵˴ϴ�.");
		return true;
	}
}






/*################################################################*/
/******************************************************************
 *
 * 			GRID ���� ���� �޼ҵ�
 *
 ******************************************************************/
/*################################################################*/
/******************************************************************
 * uf_GridSelAllSwitch		��ü���� on off
 * 	//��ü���ڵ尡 ���õǾ������� ���üũ����
	//üũ�ȵȰ��� ������ ��� üũ,�̺�Ʈ����
 * @param	obj			�׸����
 * @param	evt			�߻���ų�̺�Ʈ
 * @return
******************************************************************/
function uf_GridSelAllSwitch(obj, evt){

	if(typeof window.document.all['obj'] != "undefined"){
		alert('�ش� �׸������ �����ϴ�.');
		return false;
	}
	if(getSelectedCount(obj, "����")	==	getGridRowCount(obj))
		setUnSelectedAll(obj,"����");
	else
		setSelectedAll(obj, "����");
//	if( typeof evt!="undefined")	evt;
}
/******************************************************************
 * chkGridNullValue		�׸����Է°�nullüũ
 * @param	�׸����,��,�÷���
 * @return
******************************************************************/
function chkGridNullValue(grid, idx, colnm){
	if(grid == undefined) grid = "xgrid";
	if(idx == undefined) return false;
	if(colnm	== undefined) return false;
	//grid = eval("document."+grid);

	if("" == getCell(grid,idx, colnm)){
		alert("["+colnm+"]�� ������ �Է��ϼ���.");
		return false;
	}
	return true;
}
/******************************************************************
 * chkGridNgtNum	�׸���ݾ��Էº� ���̳ʽ�üũ
 * @param	�׸����,��,�÷���
 * @return
******************************************************************/
function chkGridNgtNum(xgrid,ArecordIndex,colNm){
	if(xgrid == undefined) return false;
	if(ArecordIndex == undefined) return false;
	if(colNm == undefined) return false;

	if(Number(getCell(xgrid, ArecordIndex, colNm)) < 0){
		alert("["+colNm+"]"+" �� \"-\" �� �Է��Ͻ� �� �����ϴ�.");
		xgrid.SetValue(ArecordIndex,	xgrid.GetItemIndexFromCaption(colNm),	"0");
		return false;
	}
}







/*################################################################*/
/******************************************************************
 *
 * 			��ȹ÷�����ϵ�� ���� ���� �޼ҵ�
 *
 ******************************************************************/
/*################################################################*/

/******************************************************************
 * uf_chkAppxFile		�������п� ���� ÷�������ʼ�üũ
	01 : �����ü���������		02 : ���忩��
	03 : ȸ�Ǻ�					04 : �Ļ��
	05 : �����ΰǺ�				06 : ��Ÿ����Ȱ����
	07 : ��������					08 : ������
	09 : ��Ź�������ߺ�			10 : �ܺ��ΰǺ�

	A1:ǰ�Ǽ�,A2:�ŷ�����,A3:��༭,A4:ȸ�Ƿ�,A5:�⿩���򰡼�,A6:�ʰ��ٹ������ڷ�,A7:��Ÿ,A8:������
******************************************************************/
function uf_chkAppxFile(BizDv){
	var frm			=	document.frm;
	var MntryFile	=	"";	//�ʼ�����
	var OrFile		=	"";		// '�Ǵ�' ���� (only 2��)
	var FN_A1		=	"ǰ�Ǽ�";
	var FN_A2		=	"�ŷ�����";
	var FN_A3		=	"��༭";
	var FN_A4		=	"ȸ�Ƿ�";
	var FN_A5		=	"�⿩���򰡼�";
	var FN_A6		=	"�ʰ��ٹ������ڷ�";
	var FN_A7		=	"��Ÿ";
	var FN_A8		=	"������";

	/*�������п� ���� �ʼ�÷������*/
	if(BizDv == "01"){
		//��õ�����̻��� ��� ��༭�ʼ�
		MntryFile	=	"A2";
	}else if((BizDv == "02") || (BizDv == "05") || (BizDv == "09")|| (BizDv == "10")){
		MntryFile	=	"A1";
	}else if(BizDv == "03"){
		OrFile	=	"A1|A4";
	}else if(BizDv == "04"){
		MntryFile	=	"A6";
	}else if(BizDv == "06"){
		OrFile	=	"A1|A2";
	}else if(BizDv == "07"){
		MntryFile	=	"A1|A5";
	}else if(BizDv == "08"){
		MntryFile	=	"A2";
	}
	// �ʼ�÷������üũ
	if(MntryFile != ""){
		var chk_File_cd	=	MntryFile.split("|");
		for(var i=0 ; i<chk_File_cd.length ; i++){
			if(eval("frm."+chk_File_cd[i]).value	==	""){
				alert(eval("FN_"+chk_File_cd[i])+"��(��) �ʼ�÷�������Դϴ�.");
				return false;
			}
		}
	}

	//'�Ǵ�'���� ����üũ
	if(OrFile != ""){
		var chk_orFile_cd	=	OrFile.split("|");
		if((eval("frm."+chk_orFile_cd[0]).value =="") && (eval("frm."+chk_orFile_cd[1]).value =="")){
			alert("["+ eval("FN_"+chk_orFile_cd[0])+"] �� ["+ eval("FN_"+chk_orFile_cd[1])+"] �� \n�Ѱ��� �ʼ��� ÷���ϼž��մϴ�.");
			return false;
		}
	}
	if((BizDv == "01")&&(Number(frm.ExctnPlanAmt.value) >= 50000000) && (frm.A3.value=="")){
		alert("��ȹ�ݾ��� 5000���� �̻��� ��� ��༭�� �ʼ������Դϴ�.");
		return false;
	}
	return true;
}

 /******************************************************************
 * chg_apnx_doc		�������� ����Ʈ�ڽ� ����� ÷��������������
	 DOC_A1	:	ǰ�Ǽ�
	 DOC_A2	:	�ŷ�����
	 DOC_A3	:	��༭
	 DOC_A4	:	ȸ�Ƿ�
	 DOC_A5	:	�⿩���򰡼�
	 DOC_A6	:	�ʰ��ٹ������ڷ�
	 DOC_A7	:	��Ÿ÷������
	 DOC_A8	:	������
******************************************************************/
function chg_apnx_doc(value){
	var frm		=	document.frm;

	document.getElementById("DOC_A1").style.display	=	"none";
	document.getElementById("DOC_A2").style.display	=	"none";
	document.getElementById("DOC_A3").style.display	=	"none";
	document.getElementById("DOC_A4").style.display	=	"none";
	document.getElementById("DOC_A5").style.display	=	"none";
	document.getElementById("DOC_A6").style.display	=	"none";
	document.getElementById("DOC_A7").style.display	=	"none";
	document.getElementById("DOC_A8").style.display	=	"none";
	document.getElementById("MntryA1").innerHTML =	"";
	document.getElementById("MntryA2").innerHTML =	"";
	document.getElementById("MntryA3").innerHTML =	"";
	document.getElementById("MntryA4").innerHTML =	"";
	document.getElementById("MntryA5").innerHTML =	"";
	document.getElementById("MntryA6").innerHTML =	"";
	document.getElementById("MntryA7").innerHTML =	"";
	document.getElementById("MntryA8").innerHTML =	"";

	/*
	01 : �����ü���������		02 : ���忩��
	03 : ȸ�Ǻ�					04 : �Ļ��
	05 : �����ΰǺ�				06 : ��Ÿ����Ȱ����
	07 : ��������					08 : ������
	09 : ��Ź�������ߺ�			10 : �ܺ��ΰǺ�

	A1:ǰ�Ǽ�,A2:�ŷ�����,A3:��༭,A4:ȸ�Ƿ�,A5:�⿩���򰡼�,A6:�ʰ��ٹ������ڷ�,A7:��Ÿ,A8:������
	*/

	if("01"	==	value){
		document.getElementById("DOC_A2").style.display	=	"inline";
		document.getElementById("DOC_A3").style.display	=	"inline";
		document.getElementById("MntryA2").innerHTML =	"(�ʼ�)";
	}else if(("02"	==	value) || ("05"	==	value) || ("09"	==	value) || ("10"	==	value)){
		document.getElementById("DOC_A1").style.display	=	"inline";
		document.getElementById("MntryA1").innerHTML =	"(�ʼ�)";
	}else if("03"	==	value){
		document.getElementById("DOC_A1").style.display	=	"inline";
		document.getElementById("DOC_A4").style.display	=	"inline";
	}else if("04"	==	value){
		document.getElementById("DOC_A6").style.display	=	"inline";
		document.getElementById("MntryA6").innerHTML =	"(�ʼ�)";
	}else if("06"	==	value){
		document.getElementById("DOC_A1").style.display	=	"inline";
		document.getElementById("DOC_A2").style.display	=	"inline";
	}else if("08"	==	value){
		document.getElementById("DOC_A2").style.display	=	"inline";
		document.getElementById("MntryA2").innerHTML =	"(�ʼ�)";
	}else if("07"	==	value){
		document.getElementById("DOC_A1").style.display	=	"inline";
		document.getElementById("DOC_A5").style.display	=	"inline";
		document.getElementById("MntryA1").innerHTML =	"(�ʼ�)";
		document.getElementById("MntryA5").innerHTML =	"(�ʼ�)";
	}
	if(value != ""){
		document.getElementById("DOC_A7").style.display	=	"inline";
		document.getElementById("DOC_A8").style.display	=	"inline";
	}
}
/******************************************************************
 * disb_bizdv_sel		÷�������� ��ϵȰ��� ������ �������� ����Ұ�
 * @param
 * @return
******************************************************************/
function disb_bizdv_sel(){
	var frm = document.frm;
	var fileKinds = 6;			// �ʼ���������������
	for(var i=1 ; i<=fileKinds ; i++){
		if( eval("frm.A"+i).value != ""){
			alert("��ϵ� ÷�������� �����Ͻð� ���������� �����Ͻñ� �ٶ��ϴ�.");
			frm.PlanBizDvCd.disabled	=	true;
			return true;
		}
	}
}
/******************************************************************
 * abl_bizdv_sel		÷�������� ��ϵȰ��� ������ �������� ���氡��
 * @param
 * @return
******************************************************************/
function abl_bizdv_sel(){
	var frm = document.frm;
	var fileKinds = 6; 		// �ʼ���������������

	for(var i=1 ; i<=fileKinds ; i++){
		if( eval("frm.A"+i).value != "")
			return true;
	}
	frm.PlanBizDvCd.disabled	=	false;
}




/*################################################################*/
/******************************************************************
 *
 * 			EDMS ���� ���� �޼ҵ�
 *
 ******************************************************************/
/*################################################################*/

function edmsUploadFileNew(frm, jobGbn, docKey, usrId, hmpwRoleDv, edms_Inf_Gateway){
	if(frm == undefined) frm = "frm";
	var frmNm		=	eval("document."+frm);
	var pHeight = "780";
	var pWidth = "420";

	if(jobGbn == "save"){
		pHeight = "470";
		pWidth = "170";
	}

	get2post(frmNm,"method="+jobGbn);					// �۾�����
	get2post(frmNm,"usrID="+usrId); 					// �����ID
	get2post(frmNm,"hmpwRoleDv="+hmpwRoleDv); 			// ����ڱ���
	get2post(frmNm,"sessionKey="+edms_session_key); 	// ����Ű

	if(frmNm.docKey)
		frmNm.docKey.value		=	docKey;		// �����dockey ���� ���
	else
		get2post(frmNm,"docKey="+docKey); 		// dockey

	//uf_frmNewWinNs(frmNm, edms_Inf_Gateway, 'EDMS_POP', 760, 400);
	uf_frmNewWinNs(frmNm, edms_Inf_Gateway, 'EDMS_POP', pHeight, pWidth,'no');
	removeTempAttribute(frmNm);
}

function edmsUploadFileNewAcrt(frm, jobGbn, docKey, usrId, hmpwRoleDv, docDvCd, edms_Inf_Gateway){
	if(frm == undefined) frm = "frm";
	var frmNm		=	eval("document."+frm);
	var pHeight = "780";
	var pWidth = "420";

	if(jobGbn == "save"){
		pHeight = "470";
		pWidth = "170";
	}

	get2post(frmNm,"method="+jobGbn);					// �۾�����
	get2post(frmNm,"usrID="+usrId); 					// �����ID
	get2post(frmNm,"hmpwRoleDv="+hmpwRoleDv); 			// ����ڱ���
	get2post(frmNm,"docDvCd="+docDvCd); 				// ���������ڵ�
	get2post(frmNm,"sessionKey="+edms_session_key); 	// ����Ű

	if(frmNm.docKey)
		frmNm.docKey.value		=	docKey;		// �����dockey ���� ���
	else
		get2post(frmNm,"docKey="+docKey); 		// dockey


	//uf_frmNewWinNs(frmNm, edms_Inf_Gateway, 'EDMS_POP', 760, 400);
	uf_frmNewWinNs(frmNm, edms_Inf_Gateway, 'EDMS_POP', pHeight, pWidth, 'no');
	removeTempAttribute(frmNm);
}

/******************************************************************
 * edmsUploadFileNewCms : �ڱ���ü���ϵ�� �ű��߰�(2012.07.31)
 * @param
 * @return
******************************************************************/
function edmsUploadFileNewCms(frm, jobGbn, docKey, usrId, hmpwRoleDv, cmsDvCd, edms_Inf_Gateway){
	if(frm == undefined) frm = "frm";
	var frmNm	= eval("document."+frm);
	var pHeight = "780";
	var pWidth  = "420";

	if(jobGbn == "save"){
		pHeight = "470";
		pWidth = "170";
	}

	get2post(frmNm,"method="+jobGbn);					// �۾�����
	get2post(frmNm,"usrID="+usrId); 					// �����ID
	get2post(frmNm,"hmpwRoleDv="+hmpwRoleDv); 			// ����ڱ���
	get2post(frmNm,"docDvCd="+cmsDvCd); 				// ���������ڵ�
	get2post(frmNm,"cmsDvCd="+cmsDvCd); 				// CMS�����ڵ�
	get2post(frmNm,"sessionKey="+edms_session_key); 	// ����Ű

	if(frmNm.docKey)
		frmNm.docKey.value = docKey;		// �����dockey ���� ���
	else
		get2post(frmNm,"docKey="+docKey); 	// dockey

	uf_frmNewWinNs(frmNm, edms_Inf_Gateway, 'EDMS_POP', pHeight, pWidth, 'no');
	removeTempAttribute(frmNm);
}

function edmsUploadFileImage(frm, jobGbn, docKey,docNo, usrId, hmpwRoleDv, edms_Inf_Gateway){
	var frmNm = frm;
	var pHeight = "400";
	var pWidth = "200";

	get2post(frmNm,"method="+jobGbn);					// �۾�����
	get2post(frmNm,"usrID="+usrId); 					// �����ID
	get2post(frmNm,"docNo="+docNo); 					//
	get2post(frmNm,"hmpwRoleDv="+hmpwRoleDv); 			// ����ڱ���
	get2post(frmNm,"sessionKey="+edms_session_key); 	// ����Ű

	if(frmNm.docKey)
		frmNm.docKey.value		=	docKey;		// �����dockey ���� ���
	else
		get2post(frmNm,"docKey="+docKey); 		// dockey


	//uf_frmNewWinNs(frmNm, edms_Inf_Gateway, 'EDMS_POP', 760, 400);
	uf_frmNewWinNs(frmNm, edms_Inf_Gateway, 'EDMS_POP', pHeight, pWidth);
	removeTempAttribute(frmNm);
}

/******************************************************************
 * edmsUploadFile			edms ���Ͼ��ε�
 * @param		frm			frame name
 * @param		edmsID		edmsID
 * @param		jobGbn		�۾�����(��� 'CREATE', ���� 'UPDATE', ��ȸ 'VIEW', ���� 'DELETE')
 * @param		typeGbn		������������ (����:INKIND, ����:CASH, ������ȹ:PLAN)
 * @param		docKey		����Ű1
 * @param		attr1		�����ID
 * @param		attr2		PMSID
 * @param		edms_Inf_Gateway		edms_Inf_Gateway
 * @return		docKey		����Ű1���|����Ű2���|����Ű3���....(0:����,-1:����)
******************************************************************/
function edmsUploadFile(frm, edmsID, jobGbn, typeGbn, docKey, attr1, attr2, edms_Inf_Gateway, attr_Arr){
	if(frm == undefined) frm = "frm";
	var frmNm		=	eval("document."+frm);
	var pop_height	=	670;
	if("PLAN" == typeGbn)	pop_height	=	350;

	//alert("edms_session_key-->"+edms_session_key);

	if(edmsID == ""){
		alert("EDMSȣ�� �ϴ� ����� ������ұ����� �ٸ��� �ʽ��ϴ�.");
		return false;
	}
	get2post(frmNm,"edmsID="+edmsID);		// EDMS ID
	get2post(frmNm,"jobGbn="+jobGbn);		// �۾�����
	get2post(frmNm,"typeGbn="+typeGbn);		// ������������
	get2post(frmNm,"attr1="+attr1); 		// �����ID
	get2post(frmNm,"attr2="+attr2); 		// PMSID
	get2post(frmNm,"attr100="); 		// �������Ͼ��̵�ϰ��ɿ���

	// ������Ͻ� �Ķ����
	if("INKIND" == typeGbn){
		get2post(frmNm,"attr3="+attr_Arr[0]);		// ����
		get2post(frmNm,"attr4="+attr_Arr[1]);		// �����
		get2post(frmNm,"attr5="+attr_Arr[2]);		// ���ID
		get2post(frmNm,"attr6="+attr_Arr[3]);		// ����ID
		get2post(frmNm,"attr7="+attr_Arr[4]);		// ������
		get2post(frmNm,"attr8="+attr_Arr[5]);		// �����
		get2post(frmNm,"attr9="+attr_Arr[6]);		// �������
		get2post(frmNm,"attr10="+attr_Arr[7]);		// ���ó
		get2post(frmNm,"attr11="+attr_Arr[8]);		// ����ڸ�
		get2post(frmNm,"attr12="+attr_Arr[9]);		// �����
		frmNm.attr20.value	=	attr_Arr[10];		// ���ݾ�
	}else if("CASH" == typeGbn){
	// ���ݵ�Ͻ� �Ķ����
		get2post(frmNm,"attr3="+attr_Arr[0]);		// ����ȹ����
		frmNm.attr4.value	=	attr_Arr[1];		// ����ȹ��
		get2post(frmNm,"attr5="+attr_Arr[2]);		// �����
		get2post(frmNm,"attr6="+attr_Arr[3]);		// ���ID
		get2post(frmNm,"attr7="+attr_Arr[4]);		// ����ڸ�
		get2post(frmNm,"attr8="+attr_Arr[5]);		// �������и�
		get2post(frmNm,"attr9="+attr_Arr[6]);		// ����ID
		get2post(frmNm,"attr10="+attr_Arr[7]);		// ������
		get2post(frmNm,"attr11="+attr_Arr[8]);		// ����з��ڵ�
		get2post(frmNm,"attr12="+attr_Arr[9]);		// �����
		get2post(frmNm,"attr13="+attr_Arr[10]);		// ����ȹ�ð�

	}
	if(frmNm.docKey)
		frmNm.docKey.value		=	docKey;		// �����dockey ���� ���
	else
		get2post(frmNm,"docKey="+docKey); 		// dockey

	uf_frmNewWinNs(frmNm, edms_Inf_Gateway, 'EDMS_POP', 785, pop_height);
	removeTempAttribute(frmNm);
}


/******************************************************************
 * edmsUploadFile_NoFile			edms ���Ͼ��ε�(�񿵸�����������Ͻÿ� ��Ÿ�������Ͼ��� ��ϰ����ϵ��� ����)
 * @param		frm			frame name
 * @param		edmsID		edmsID
 * @param		jobGbn		�۾�����(��� 'CREATE', ���� 'UPDATE', ��ȸ 'VIEW', ���� 'DELETE')
 * @param		typeGbn		������������ (����:INKIND, ����:CASH, ������ȹ:PLAN)
 * @param		docKey		����Ű1
 * @param		attr1		�����ID
 * @param		attr2		PMSID
 * @param		attr2		PMSID
 * @param		edms_Inf_Gateway		edms_Inf_Gateway
 * @return		docKey		����Ű1���|����Ű2���|����Ű3���....(0:����,-1:����)
******************************************************************/
function edmsUploadFile_NoFile(frm, edmsID, jobGbn, typeGbn, docKey, attr1, attr2, edms_Inf_Gateway, attr_Arr){
	if(frm == undefined) frm = "frm";
	var frmNm		=	eval("document."+frm);
	var pop_height	=	670;
	if("PLAN" == typeGbn)	pop_height	=	350;

	if(edmsID == ""){
		alert("EDMSȣ�� �ϴ� ����� ������ұ����� �ٸ��� �ʽ��ϴ�.");
		return false;
	}
	get2post(frmNm,"edmsID="+edmsID);		// EDMS ID
	get2post(frmNm,"jobGbn="+jobGbn);		// �۾�����
	get2post(frmNm,"typeGbn="+typeGbn);		// ������������
	get2post(frmNm,"attr1="+attr1); 		// �����ID
	get2post(frmNm,"attr2="+attr2); 		// PMSID
	get2post(frmNm,"attr100=Y"); 			// �������Ͼ��̵�ϰ��ɿ���

	// ������Ͻ� �Ķ����
	if("INKIND" == typeGbn){
		get2post(frmNm,"attr3="+attr_Arr[0]);		// ����
		get2post(frmNm,"attr4="+attr_Arr[1]);		// �����
		get2post(frmNm,"attr5="+attr_Arr[2]);		// ���ID
		get2post(frmNm,"attr6="+attr_Arr[3]);		// ����ID
		get2post(frmNm,"attr7="+attr_Arr[4]);		// ������
		get2post(frmNm,"attr8="+attr_Arr[5]);		// �����
		get2post(frmNm,"attr9="+attr_Arr[6]);		// �������
		get2post(frmNm,"attr10="+attr_Arr[7]);		// ���ó
		get2post(frmNm,"attr11="+attr_Arr[8]);		// ����ڸ�
		get2post(frmNm,"attr12="+attr_Arr[9]);		// �����
		frmNm.attr20.value	=	attr_Arr[10];		// ���ݾ�
	}else if("CASH" == typeGbn){
	// ���ݵ�Ͻ� �Ķ����
		get2post(frmNm,"attr3="+attr_Arr[0]);		// ����ȹ����
		frmNm.attr4.value	=	attr_Arr[1];		// ����ȹ��
		get2post(frmNm,"attr5="+attr_Arr[2]);		// �����
		get2post(frmNm,"attr6="+attr_Arr[3]);		// ���ID
		get2post(frmNm,"attr7="+attr_Arr[4]);		// ����ڸ�
		get2post(frmNm,"attr8="+attr_Arr[5]);		// �������и�
		get2post(frmNm,"attr9="+attr_Arr[6]);		// ����ID
		get2post(frmNm,"attr10="+attr_Arr[7]);		// ������
		get2post(frmNm,"attr11="+attr_Arr[8]);		// ����з��ڵ�
		get2post(frmNm,"attr12="+attr_Arr[9]);		// �����
		get2post(frmNm,"attr13="+attr_Arr[10]);		// ����ȹ�ð�

	}
	if(frmNm.docKey)
		frmNm.docKey.value		=	docKey;		// �����dockey ���� ���
	else
		get2post(frmNm,"docKey="+docKey); 		// dockey

	uf_frmNewWinNs(frmNm, edms_Inf_Gateway, 'EDMS_POP', 785, pop_height);
	removeTempAttribute(frmNm);
}

function edmsImgItem(frm,usrId,hmpwRoldDv,docKey,docNo){
	if(frm == undefined) frm = "frm";
	var frmNm	=	eval("document."+frm);

	get2post(frmNm,"method=getImage");					// �۾�����
	get2post(frmNm,"usrID="+usrId); 					// �����ID
	get2post(frmNm,"hmpwRoleDv="+hmpwRoleDv); 			// ����ڱ���
	get2post(frmNm,"sessionKey="+edms_session_key); 	// ����Ű
	get2post(frmNm,"docNo="+docNo); 	// ����Ű

	if(frmNm.docKey)
		frmNm.docKey.value		=	docKey;
	else
		get2post(frmNm,"docKey="+docKey); 		// PMSID

	frmNm.target = "imgIfrm";
	frmNm.action =  edms_Inf_Gateway;
	fn_submit_ns(frmNm);
}

/******************************************************************
 * edmsDeleteItem			edms ��ϳ��� ����
 * @param		frm			frame name
 * @param		edmsID		edmsID
 * @param		jobGbn		�۾�����(��� 'CREATE', ���� 'UPDATE', ��ȸ 'VIEW', ���� 'DELETE')
 * @param		typeGbn		������������ (����:INKIND, ����:CASH, ������ȹ:PLAN)
 * @param		docKey		����Ű1|����Ű2|����Ű3...
 * @param		attr1		�����ID
 * @param		attr2		PMSID
 * @param		edms_Inf_Gateway		edms_Inf_Gateway
 * @return		docKey		����Ű1���|����Ű2���|����Ű3���....(0:����,-1:����)
******************************************************************/
function edmsDeleteItem(frm, edmsID, jobGbn, typeGbn, docKey, attr1, attr2, edms_Inf_Gateway){
	if(frm == undefined) frm = "frm";
	var frmNm	=	eval("document."+frm);
	if(edmsID == ""){
		alert("EDMSȣ�� �ϴ� ����� ������ұ����� �ٸ��� �ʽ��ϴ�.");
		return false;
	}
	get2post(frmNm,"edmsID="+edmsID);		// EDMS ID
	get2post(frmNm,"jobGbn="+jobGbn);		// �۾�����
	get2post(frmNm,"typeGbn="+typeGbn);		// ������������
	get2post(frmNm,"attr1="+attr1); 		// �����ID
	get2post(frmNm,"attr2="+attr2); 		// PMSID

	if(frmNm.docKey)
		frmNm.docKey.value		=	docKey;
	else
		get2post(frmNm,"docKey="+docKey); 		// PMSID

	frmNm.target = "sendIfrm";
	frmNm.action =  edms_Inf_Gateway;
	fn_submit_ns(frmNm);
}


/***********************************************************************************
 * EDMS ȭ�鿬��IF - ����ϻ���
 * @param frm
 * @param jobGbn     : ����(mode = delete)
 * @param docKey     : PMSID + ����ID + �����Ϸù�ȣ + ������ + �����
 *                      + �������� + ��� + ���� + ������
 * @param usrId      : �����ID
 * @param hmpwRoleDv : ����ڱ���
 * @param edms_Inf_Gateway : Session Key
 ***********************************************************************************/
function edmsDeleteItemRev(frm, jobGbn, docKey, usrId, hmpwRoleDv, edms_Inf_Gateway) {
	if(frm == undefined) frm = "frm";
	var frmNm		=	eval("document."+frm);

	//alert(docKey);

	get2post(frmNm,"method="+jobGbn);					// �۾�����
	get2post(frmNm,"usrID="+usrId); 					// �����ID
	get2post(frmNm,"hmpwRoleDv="+hmpwRoleDv); 			// ����ڱ���
	get2post(frmNm,"sessionKey="+edms_session_key); 	// ����Ű

	if(frmNm.docKey)
		frmNm.docKey.value = docKey;		            // �����dockey ���� ���
	else
		get2post(frmNm,"docKey="+docKey); 		        // dockey

	frmNm.target = "sendIfrm";
	frmNm.action =  edms_Inf_Gateway;
	fn_submit_ns(frmNm);
}

/*################################################################*/

/*################################################################*/
/*#########				����߽� �߰� ���� ��ũ��Ʈ			##########*/
/*################################################################*/

/******************************************************************
 * uf_ExctnStgDv	���ܰ豸��
 * @param
 * @return
******************************************************************/
function exctn_ExctnStgDv(objVal, rchExpAcctBnkCd, rchExpAcctNo, rcvBnkCd, rcvAcctNo){
	var frm = document.frm;

	if( objVal == "2" ){
		frm.RcvBnkCd.value = rchExpAcctBnkCd;
		frm.RcvAcctNo.value = rchExpAcctNo;

		frm.RcvBnkCd.style.display = "none";
		frm.RcvAcctNo.style.display = "none";
		frm.RcvAcctNo.readOnly = true;

		if( typeof document.all["idFvrtAcct"]!="undefined" ){
			document.all["idFvrtAcct"].style.display = "none";
		}

		if( typeof document.all["idRcvBnkNm"]!="undefined" ){
			document.all["idRcvBnkNm"].style.display = "";
			document.all["idMyAcctNo"].style.display = "";

		}
	}else{
		if( typeof rcvBnkCd!="undefined" ){
			frm.RcvBnkCd.value = rcvBnkCd;
		}else{
			frm.RcvBnkCd.value = "";
		}

		frm.RcvAcctNo.setAttibute("enc", "off");
		if( typeof rcvAcctNo!="undefined" ){
			frm.RcvAcctNo.value = rcvAcctNo;
		}else{
			frm.RcvAcctNo.value = "";
		}

		frm.RcvBnkCd.style.display = "";
		frm.RcvAcctNo.style.display = "";
		frm.RcvAcctNo.readOnly = false;

		if( typeof document.all["idFvrtAcct"]!="undefined" ){
			document.all["idFvrtAcct"].style.display = "";
		}

		if( typeof document.all["idRcvBnkNm"]!="undefined" ){
			document.all["idRcvBnkNm"].style.display = "none";
			document.all["idMyAcctNo"].style.display = "none";

		}
	}
	uf_OwacNmRst();
}
/******************************************************************
 * exctn_ExctnStgDv_v2	������������ ver2.0 by son
 * @param			objVal 1:Ÿ������ü 2:�ڰ�����ü 3:�����ָ��ʱ�ȭ���� 4:ī��(�ǽð���ü���)
 * @param			uptMode 1:���ʵ�� 2:���������� 3:�Ϸ����
 * @return
 * @author soneunjun
******************************************************************/
function exctn_ExctnStgDv_v2(objVal,uptMode, rchExpAcctBnkCd, rchExpAcctBnkNm, rchExpAcctNo, rcvBnkNm, rcvBnkCd, rcvAcctNo, myAccTrnsYn, exctnDv){
	var frm = document.frm;

	//ī��Ǻ���ü(�ǽð���ü���)�ΰ�� ��������·� �Աݽ�Ų��.
	if(objVal == "4"){
		document.getElementById("ExctnStgDv_tr").style.display 		= "none";	//���౸��(��/Ÿ���¼���)
		if( typeof document.all["trnsInfo"]!="undefined" ){
			document.getElementById("trnsInfo").style.display 		= "none";	//�ڰ�����ü�����ع�ư����
		}

		if( typeof document.all["RcvBnkCd"]!="undefined" ){
			frm.RcvBnkCd.style.display					= 	"";	//���༿��Ʈ�ڽ�
			frm.RcvBnkCd.disabled						=	true;
			frm.RcvBnkCd.value 							= rcvBnkCd;
		}
		if( typeof document.all["RcvAcctNo"]!="undefined" ){
			frm.RcvAcctNo.style.display 				=	"";		//�Աݰ��¹�ȣ
			frm.RcvAcctNo.disabled						=	true;
			frm.RcvAcctNo.value 						= rcvAcctNo;
		}

		if( typeof document.all["idFvrtAcct"]!="undefined" ){
			document.getElementById("idFvrtAcct").style.display			= "none";	//���־��°��¹�ư
		}
		if( typeof document.all["idRcvBnkNm"]!="undefined" ){
			document.getElementById("idRcvBnkNm").style.display			= "none";
			document.getElementById("idMyAcctNo").style.display			= "none";
		}
		/*
		if( typeof document.all["idRcvBnkNm"]!="undefined" ){
			document.getElementById("idRcvBnkNm").style.display 		= "";	//�Աݰ��¹�ȣ�ؽ�Ʈǥ��
			document.getElementById("idRcvBnkNm").innerHTML		=	"["+rcvBnkCd+"]"+rcvAcctNo;
		}
		*/
	}else if("Y"==myAccTrnsYn){	//�ڰ�����ü���α��-��������'08'����
		frm.ExctnStgDv[1].checked					= true;
		frm.RcvBnkCd.value 							= rchExpAcctBnkCd;
		frm.RcvAcctNo.value 						= rchExpAcctNo;
		frm.RcvBnkCd.style.display					= "none";
		frm.RcvAcctNo.style.display 				= "none";
		frm.RcvAcctNo.readOnly 						= true;
		document.all["idRcvBnkNm"].innerHTML		= "["+rchExpAcctBnkNm+"]"+rchExpAcctNo;
		document.all["idRcvBnkNm"].style.display 	= "";
		document.all["idMyAcctNo"].style.display 	= "";
		frm.ExctnStgDv[0].disabled					= true;
		frm.ExctnStgDv[1].disabled					= true;

		if( typeof document.getElementById("idFvrtAcct") !="undefined" ){
			document.getElementById("idFvrtAcct").style.display 	= "none";
		}

		var trnsRchAcc								= document.getElementById("kind_TrnsRchAcc");
		var flag 									= true;
		for(var i=0; i<trnsRchAcc.options.length; i++){
			if("B03007"==trnsRchAcc.options[i].value){//�ڰ�����ü���α��
				flag = false;
				break;
			}
		}
		if(flag){
			var option								= document.createElement("OPTION");
			option.value							= "B03007";
		    option.text								= "�ڰ�����ü���α��";
		    trnsRchAcc.add(option);
		}

		trnsRchAcc.value = "B03007";
	    trnsRchAcc.disabled 						= true;
	}else if(  '2' != exctnDv && rchExpAcctNo != rcvAcctNo){	//Ÿ������ü����

		frm.ExctnStgDv[0].checked				 	= true;
		if( typeof rcvBnkCd!="undefined" ){
			frm.RcvBnkCd.value 	= rcvBnkCd;
		}else{
			frm.RcvBnkCd.value 	= "";
		}
		frm.RcvAcctNo.setAttribute("enc", "off");
		if( typeof rcvAcctNo!="undefined" ){
			frm.RcvAcctNo.value = rcvAcctNo;
		}else{
			frm.RcvAcctNo.value = "";
		}
		frm.RcvAcctNo.readOnly 	= false;
		frm.RcvBnkCd.style.display 	= "";
		frm.RcvAcctNo.style.display = "";

		if( typeof document.getElementById("idFvrtAcct")!="undefined" ){
			document.getElementById("idFvrtAcct").style.display = "inline";
		}
		document.all["idRcvBnkNm"].style.display 		= "none";
		document.all["idMyAcctNo"].style.display 		= "none";
		document.all["kind_TrnsRchAcc"].style.display 	= "none";
		document.frm.kind_TrnsRchAcc.selectedIndex	= 0;

	}else{	//�ڰ�����ü����

		frm.ExctnStgDv[1].checked						=	true;
		frm.RcvBnkCd.value 								= rcvBnkCd;
		frm.RcvAcctNo.value 							= rcvAcctNo;
		frm.RcvBnkCd.style.display		 				= "none";
		frm.RcvAcctNo.style.display 					= "none";
		frm.RcvAcctNo.readOnly 							= true;
		if( typeof document.all["idFvrtAcct"]!="undefined" ){
			document.all["idFvrtAcct"].style.display	= "none";
		}
		//document.all["idRcvBnkNm"].innerHTML			= "["+rchExpAcctBnkNm+"]"+rchExpAcctNo;
		document.all["idRcvBnkNm"].innerHTML			= "["+rcvBnkNm+"]"+rcvAcctNo;

		document.all["idRcvBnkNm"].style.display 		= "";
		document.all["idMyAcctNo"].style.display 		= "";
		document.all["kind_TrnsRchAcc"].style.display 	= "inline";
	}


		if( true == frm.ExctnStgDv[1].checked ){
			jQuery('.DynReqStar').hide();
			jQuery('#WdrwPsbkPrtCtt').removeAttr('notnull');
			jQuery('#RcvPsbkPrtCtt').removeAttr('notnull');

		}else{
			jQuery('.DynReqStar').show();
			jQuery('#WdrwPsbkPrtCtt').attr('notnull','notnull');
			jQuery('#RcvPsbkPrtCtt').attr('notnull','notnull');
		}

	if("3"!=uptMode){
		uf_OwacNmRst();
	}else{
		//����Ϸ������
		if(typeof document.getElementById("idFvrtAcct") != "undefined"){
			document.getElementById("idFvrtAcct").style.display = "none";
		}
	}


}
/******************************************************************
 * chk_exctn_kind_dvValid		�ڰ�����ü�����ȿ��üũ(�������������üũ)
 * @param
 * @return
 * @author soneunjun
******************************************************************/
/*
function chk_exctn_kind_dvValid(val){
	var frm		=	document.frm;

	if("02"==val){	//��õ¡����������ü�� ��� �ΰǺ� ������
		for(var i=0; i<document.frm.itxp_cnt.value; i++){
			//2012.07.30 ����� �ű� ��� �ڵ� �߰�
			if( ($("#SelSubDtlsItxpCd_"+i).val() != 'B0101001') && ($("#SelSubDtlsItxpCd_"+i).val() != 'B0102001') && ($("#SelSubDtlsItxpCd_"+i).val() != 'B0203001') && ($("#SelSubDtlsItxpCd_"+i).val() != 'B0204001') && ($("#SelSubDtlsItxpCd_"+i).val() != 'B0205001')){
				alert("���������� [��õ¡���ݾ�����]��  ���� \n\"�����ܺ��ΰǺ�, �������� / �ΰǺ�, �л��ΰǺ�\"�� ��츸 �����մϴ�. ");
				document.frm.kind_TrnsRchAcc.selectedIndex	=	0;
			}
		}
	}else if(("03" == val) ||	//�ϰ�����
			("04" == val) ||	//�ܾ׺���
			("05" == val)){		//��ü�����������ü
		//���� ���� ��Ÿ������ ��츸 ����
		if("E"!=frm.Evdc_Dv.value){
			alert("[�ϰ�����],[�ܾ׺���],[��ü���������]�� ���� ���������� '��Ÿ'�� �����ϼž� ���డ���մϴ�.");
			document.frm.kind_TrnsRchAcc.selectedIndex	=	0;
			return;
		}
	}
}
*/
/******************************************************************
 * chk_itxpAvbl		���氡�ɺ��üũ(�����ϱ���üũ)
 * @param			frm:frame name exctn_dv:��������(1:���,2:����)
 * @return
 * @author soneunjun
******************************************************************/
/*
function chk_itxpAvbl(frm,exctn_dv, evdc_dv){
	var exctn_kind	=	"";
	if("1"==exctn_dv){
		exctn_kind = "����";
	}else{
		exctn_kind = "���� ";
	}

	//�ϰ�����,�ܾ׺���,��ü�����������ü �� ��Ÿ������ ������
	if(("B03003" == frm.kind_TrnsRchAcc.value || "B03004" == frm.kind_TrnsRchAcc.value || "B03005" == frm.kind_TrnsRchAcc.value)&&("E"!=evdc_dv)){
		alert("�ϰ�����,�ܾ׺���,��ü�����������ü �� [��Ÿ����]�� �����մϴ�.");
		return false;
	}
	if("B03002" == frm.kind_TrnsRchAcc.value){
		//��õ¡���ݾ�-���ܺ��ΰǺ�,��������
		if(document.frm.itxp_cnt.value == 1){
			if( !(("B0101001"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
				("B0102001"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
				("B0203001"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
				("B0204001"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
				("B0205001"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value)) ){
				alert("���������� [��õ¡���ݾ�����]��  ���� \n\"�����ܺ��ΰǺ�, �������� / �ΰǺ�, �л��ΰǺ�\"���θ� "+exctn_kind+"�����մϴ�. ");
				return false;
			}
		}else{
			for(var i =0;i<	frm.SelSubDtlsItxpCd.length;i++){
				if(!(("B0101001"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0102001"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0203001"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0204001"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0205001"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) )){
						alert("���������� [��õ¡���ݾ�����]��  ���� \n\"�����ܺ��ΰǺ�, �������� / �ΰǺ�, �л��ΰǺ�\"���θ� "+exctn_kind+"�����մϴ�. ");
						return false;
					}
			}
		}
	}else if("B03003" == frm.kind_TrnsRchAcc.value){
		//�ϰ�����-������ݼ���,�繫��ǰ��,��ǰ���Ժ�
		if(document.frm.itxp_cnt.value == 1){
			if(!(("B0202010"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
				("B0202012"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
				("B0202013"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value))){
				alert("���������� [�ϰ�����]��  ���� \n\"������ݤ�����/�繫��ǰ��/��ǰ���Ժ�\"�θ� "+exctn_kind+"�����մϴ�. ");
				return false;
			}
		}else{
			for(i =0;i<	frm.SelSubDtlsItxpCd.length;i++){
				if(!(("B0202010"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
					("B0202012"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
					("B0202013"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value))){
					alert("���������� [�ϰ�����]��  ���� \n\"������ݤ�����/�繫��ǰ��/��ǰ���Ժ�\"�θ� "+exctn_kind+"�����մϴ�. ");
					return false;
				}
			}
		}
	}else if("B03007" == frm.kind_TrnsRchAcc.value){
		var frm_name;
		if("1"==exctn_dv){
			frm_name	=	document.rtr_str_form;
		}else{
			frm_name	=	document.frm;
		}

		//�����-����м���,��������,���ܿ���,�ó������,������Ȱ���,������(�񿵸�����ΰ�츸)
		if(document.frm.itxp_cnt.value == 1){

			if("Y"==frm_name.S_NPRF_INST_YN.value){
				if(!(("B0201016"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
					("B0202001"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
					("B0202002"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
					("B0202003"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
					("B0202014"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
					("B0301001"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) )){

					alert("���������� [(�ڰ�����ü)�����]��  ���� \n\"����м���/�����ܿ���/�ó������/������Ȱ���/������\"�θ� "+exctn_kind+"�����մϴ�. ");
					return false;
				}
			}else{
				if(!(("B0201016"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
					("B0202001"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
					("B0202002"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
					("B0202003"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value) ||
					("B0202014"==frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value))){

					alert("���������� [(�ڰ�����ü)�����]��  ���� \n\"����м���/�����ܿ���/�ó������/������Ȱ���\"�θ� "+exctn_kind+"�����մϴ�. ");
					return false;
				}
			}

		}else{
			for(i =0;i<	frm.SelSubDtlsItxpCd.length;i++){
				if("Y"==frm_name.S_NPRF_INST_YN.value){
					if(!(("B0201016"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0202001"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0202002"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0202003"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0202014"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0301001"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) )){

						alert("���������� [(�ڰ�����ü)�����]��  ���� \n\"����м���/�����ܿ���/�ó������/������Ȱ���/������\"�θ� "+exctn_kind+"�����մϴ�. ");
						return false;
					}
				}else{
					if(!(("B0201016"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0202001"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0202002"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0202003"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value) ||
						("B0202014"==frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value))){

						alert("���������� [(�ڰ�����ü)�����]��  ���� \n\"����м���/�����ܿ���/�ó������/������Ȱ���\"�θ� "+exctn_kind+"�����մϴ�. ");
						return false;
					}
				}
			}
		}
	}else if("B03008" == frm.kind_TrnsRchAcc.value){
		//�ڰ�����ü���α��--�������ǽ�������ΰ��(����������:��������ü��뿩��'Y')
		var frm_name;
		if("1"==exctn_dv){
			frm_name	=	document.rtr_str_form;
		}else{
			frm_name	=	document.frm;
		}
		if("Y"!=frm_name.S_MY_ACCT_TRNS_ALWN_YN.value){
			alert("���������� [�ڰ�����ü���α��]�� ���� ������ ����ڷκ��� �ڰ�����ü���� ��� ����� �����մϴ�.");
			return false;
		}
	}
	return true;
}
*/

/******************************************************************
 * chk_Itxp_ExctnStgDv		�������� �Ǵ� ��Ÿ�����Աݿ� ���� ��� ��ȿ�� �˻�(BT������ RCMS_BSDI_L_A_R005�� üũ��)
 * @param mthd(0 or null : �����߽�, 1: ����߽� )
 * @return
******************************************************************/
function chk_Itxp_ExctnStgDv(frm, evdcDv, mthd){
	var msg			= "";
	var chkFlg		= false;

	// �ӽ�
	// 2014.06.09 KBM Ȯ�λ���
	// �ּ��� �ӽ÷� �޷��ִµ� history�󿡼� �߰� ������ �� �����Ͽ� 2012�⵵���� ���ܰ� ������ �� ����.
	// BT���� �߰� üũ�� �ϰ� ������, ��Ÿ���� ���ܸ� ����
	return msg;

	// ��Ÿ������ �ƴҰ�� ����
	if("E"!=evdcDv){
		return msg;
	}

	for(var i=0; i<frm.itxp_cnt.value; i++){
		var subDtlsItxpCd = "";
		var subDtlsItxpNm = "";

		if(1==frm.itxp_cnt.value || mthd == 2 ){
			subDtlsItxpCd = frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
			subDtlsItxpNm = frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].text;
		}else{
			subDtlsItxpCd = frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value;
			subDtlsItxpNm = frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].text;
		}

		switch(subDtlsItxpCd){
			case "B0202001":		// ��������
			case "B0202002":		// ���ܿ���
			case "B0202003":		// �ó������
			case "B0202014":		// ������Ȱ���
			case "B0202010":		// �������,����
			case "B0202012":		// �繫��ǰ��
			case "B0202005":		// �����
			case "B0202013":		// ��ǰ���Ժ�
			case "B0201016":		// ����м���
			case "B0201015":		// �þࡤ��ᱸ�Ժ�
			case "B0101001":		// �����ΰǺ�
			case "B0102001":		// �ܺ��ΰǺ�
			case "B0203001":		// ��������
			case "B0204001":		// �ΰǺ�
			case "B0205001":		// �л��ΰǺ�
			case "B0206001":		// �������������� - ��������
			case "B0206002":		// �������������� - �繫��ǰ��
			case "B0206003":		// �������������� - ����ȯ��������
			case "B0206004":		// �������������� - ȸ�Ǻ�
			case "B0206005":		// �������������� - �߱ٽĴ�
			case "B0206006":		// �������������� - ��������������
			case "B0301001":		// ������
			case "B0202004":		// �μ��
			case "B0202019":		// �������������
			case "B0202020":		// ���������屸�Ժ�
			case "B0202022":		// �����Ʒú�
			case "B0202023":		// ���̳����ֺ�
			case "B0202024":		// ��ȸ�����̳�������
			case "B0202028":		// �����
			case "B0202029":		// �뿪��
			case "B0202030":		// �ӱ��
			case "B0202032":		// ������Ժ�
			case "B0202033":		// Ư�����������
			case "B0202034":		// �����ú�
			case "B0202035":		// ����DB �� ��Ʈ��ũ ����
			case "B0202036":		// ���ΰ���������
			case "B0202038":		// �����η�Ȱ���
			case "B0401001":		// ��Ź�������ߺ�

				chkFlg = true;
				break;
			default:
				chkFlg = false;
				break;
		}

		if(false==chkFlg){
			msg = "[" + subDtlsItxpNm + "]" + " ��(��) ��Ÿ������ �Ұ����� ����Դϴ�." ;
			return msg;
		}
	}

	return msg;
}


/******************************************************************
 * chk_Itxp_TrnsAcct �ڰ��� ��ü ��� ��� Ȯ��
 * @param
 * @return
******************************************************************/
function chk_Itxp_TrnsAcct(subDtlsItxpCd, nprfInstYn, opagYn){
	var chk = false;

	//�ڰ��� ��ü��� ���Ȯ��(RCMS_BSDI_L_A.MyAcctTrnsAlwnYn)
	chk = chkMyAccTrnsAlwnYn(subDtlsItxpCd,nprfInstYn, opagYn);
	/*
	switch(subDtlsItxpCd){
		case "B0202001":		// �������� **
		case "B0202002":		// ���ܿ��� **
		case "B0202003":		// �ó������
		case "B0202014":		// ������Ȱ��� **
		case "B0202010":		// �������,����
		case "B0202012":		// �繫��ǰ��
		case "B0202005":		// �����
		case "B0202013":		// ��ǰ���Ժ�
		case "B0201016":		// ����м���
		case "B0201015":		// �þࡤ��ᱸ�Ժ�
		case "B0101001":		// �����ΰǺ�
		case "B0102001":		// �ܺ��ΰǺ�
		case "B0203001":		// ��������
		case "B0204001":		// �ΰǺ�
		case "B0205001":		// �л��ΰǺ�
		case "B0206001":		// �������������� - �������� **
		case "B0206002":		// �������������� - �繫��ǰ��
		case "B0206003":		// �������������� - ��ǰ���Ժ�
		case "B0206004":		// �������������� - ȸ�Ǻ�
		case "B0206005":		// �������������� - �߱ٽĴ�
		case "B0206006":		// �������������� - ��������������
		case "B0301001":		// ������
			chk = true;
			break;
		default:
			chk = false;
			break;
	}
	*/

	// ������ üũ
	/* 13.10.25 �񿵸� ��� & ������ ���� ��� �������� �����
	if("B0301001"==subDtlsItxpCd && "Y"!=nprfInstYn){
		chk = false;
	}
	*/

	return chk;
}


/******************************************************************
 * chk_Itxp_kindTrnsRchAcc		���౸�п� ��� ��ȿ�� �˻�(BT������ RCMS_BSDI_L_A_R005�� üũ��)
 * @param mthd(0 or null : �����߽�, 1: ����߽� )
 * @return
******************************************************************/
function chk_Itxp_kindTrnsRchAcc(frm, kindTrnsRchAccCd, nprfInstYn, opagYn, mthd){
	var msg			= "";

	// ����� �̿� ����
	if("B03001" != kindTrnsRchAccCd){
		return msg;
	}

	for(var i=0; i<frm.itxp_cnt.value; i++){
		var subDtlsItxpCd = "";
		var subDtlsItxpNm = "";

		if(1==frm.itxp_cnt.value || mthd == "1"){
			subDtlsItxpCd = frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
			subDtlsItxpNm = frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].text;
		}else{
			subDtlsItxpCd = frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value;
			subDtlsItxpNm = frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].text;
		}

		//�ڰ�����ü �����(RCMS_BSDI_L_A.MyAcctTrnsAlwnYn)
		var chk = chk_Itxp_TrnsAcct(subDtlsItxpCd, nprfInstYn, opagYn);

		// ����� üũ
		if( false == chk ){
			msg = "[" + subDtlsItxpNm + "]" + " ��(��) [�����]���� ����� �� �����ϴ�.\n[�ڰ�����ü ��� ����]�� �����Ͻñ� �ٶ��ϴ�." ;
			return msg;
		}
	}

	return msg;
}


/******************************************************************
 * chkAllowItxp	��������ȸ �Ǹ�
 * @param mthd(0 or null : �����߽�, 1: ����߽� )
 * @return
******************************************************************/
function chkAllowItxpOwacNm(mthd){
	var frm = document.frm;
	var chk = null;

	for(var i=0; i<frm.itxp_cnt.value; i++){
		var ItxpCd = "";

		if(1==frm.itxp_cnt.value || mthd == "1"){
			ItxpCd = frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
		}else{
			ItxpCd = frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value;
		}

		//"B0202001":		// �������� **
		//"B0202002":		// ���ܿ��� **
		//"B0202014":		// ������Ȱ��� **
		//"B0206001":		// �������������� - �������� **
		//���ܺ�� - �Ǹ������� ������ ��ȸ�� ó��(������°� �ƴ� ���ΰ��·� �Է�),
		if( (chk = chkAcnmAuthPass(ItxpCd)) == false ) break;

	}//end of for var i;

	return chk;
}//end of function


/******************************************************************
 * setChkBzRegNo	����ڵ�Ϲ�ȣȮ�� ��ư ����
 * @param mthd(0 or null : �����߽�, 1: ����߽� )
 * @return
******************************************************************/
function setChkBzRegNo(mthd, nprfInstYn, opagYn, ridx){

	var frm = document.frm;
	var evdc_dv = "";
	var chk = false;

	if( mthd == '1' && (typeof ridx == 'undefined' || ridx == null) ){
		ridx = 0;
	}

	if(typeof frm.S_PSNL_ACCT_USEYN =='undefined' ){
		PsnlAcctUseYn = document.rtr_str_form.S_PSNL_ACCT_USEYN.value;
	}else{
		PsnlAcctUseYn = frm.S_PSNL_ACCT_USEYN.value;
	}

	for(var i=0; i<frm.itxp_cnt.value; i++){
		var subDtlsItxpCd = "";

		if( mthd == '0' ){ //�����߽�
			evdc_dv = frm.Evdc_Dv.value;
		}else if( mthd == '1' ){ //����߽�
			evdc_dv = $('#EvmaGb_' + i).val();
			if( ridx != i ) continue;
		}else{
			alert('���� : �����켱 �Ǵ� ���켱�� ���õ��� �ʾҽ��ϴ�.');
			return;
		}

		//20141216 modified by sonpro
		if( 'E' != evdc_dv && 'T' != evdc_dv && 'R' != evdc_dv) return;//��Ÿ,���ڼ��ݰ�꼭�� ���

		if('1'==frm.itxp_cnt.value || mthd == "1"){
			subDtlsItxpCd = frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
		}else{
			subDtlsItxpCd = frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value;
		}

		//�ڰ�����ü ����� Ȯ��(RCMS_BSDI_L_A.MyAcctTrnsAlwnYn)
		chk = chkMyAccTrnsAlwnYn(subDtlsItxpCd,nprfInstYn,opagYn);

		if( chk == true  ){

			//�ڰ�����ü ������� ��� ����� Ȯ�� ���ʿ�
			//******�ڰ�����ü ������ΰ�쿡�� �����Ȯ�� �ʼ�******* 2114.2.27 �ݿ�
			if( '0' == mthd ){//�����켱

				if( 'R' != evdc_dv){
					$('#etc_SplrBzRegNo_0').attr('readonly',false).val('').css('backgroundColor','#fff');
					$('#etc_SplrCoNm_0').attr('readonly',false).val('').css('backgroundColor','#fff');
				}

				$('#idBzRegNo').css('display','');
				$('#OwacNm').val('');

				$('#etc_ChkBzRegNo_0'	).hide();
				$('#ChkBzRegNo_0'		).hide();
				$('#SplrAuth'			).val('1');
				break;
			}else if( '1' == mthd ){//���켱

				if( 'R' != evdc_dv){
					$('#etc_SplrBzRegNo_'	+ i).attr('readonly',false).val('').css('backgroundColor','#fff');
					$('#etc_SplrCoNm_'		+ i).attr('readonly',false).val('').css('backgroundColor','#fff');
				}

				$('#idBzRegNo_'			+ i).css('display','');

				if( 'Y' != PsnlAcctUseYn ){ //�ΰǺ� ���� ���°� �ƴѰ�츸 �ʱ�ȭ
					$('#OwacNm_'			+ i).val('');
				}

				$('#etc_ChkBzRegNo_' 	+ i ).hide();
				$('#ChkBzRegNo_' 		+ i ).hide();
				$('#SplrAuth_' 			+ i ).val('1');
			}
		}else{
			if( '0' == mthd ){//�����켱

				if( 'R' != evdc_dv){
					$('#etc_SplrBzRegNo_0').attr('readonly',false).val('').css('backgroundColor','#fff');
					$('#etc_SplrCoNm_0').attr('readonly',false).val('').css('backgroundColor','#fff');
				}

				$('#idBzRegNo').css('display','');
				$('#OwacNm').val('');

				$('#etc_ChkBzRegNo_0'	).show();
				$('#ChkBzRegNo_0'		).show();
				$('#SplrAuth'			).val('0');
				break;
			}else if( '1' == mthd ){//���켱
				if( typeof $('#ButrId_' + i).val() == 'undefined' || $('#ButrId_' + i).val() == "" ){

					if( 'R' != evdc_dv){
						$('#etc_SplrBzRegNo_' 	+ i).attr('readonly',false).val('').css('backgroundColor','#fff');
						$('#etc_SplrCoNm_' 		+ i).attr('readonly',false).val('').css('backgroundColor','#fff');
					}

					$('#idBzRegNo_'			+ i).css('display','');

					if( 'Y' != PsnlAcctUseYn ){ //�ΰǺ� ���� ���°� �ƴѰ�츸 �ʱ�ȭ
						$('#OwacNm_'			+ i).val('');
					}

					$('#etc_ChkBzRegNo_' 	+ i ).show();
					$('#ChkBzRegNo_' 		+ i ).show();
					$('#SplrAuth_' 			+ i ).val('0');
				}
			}
		}
	}
}

/******************************************************************
 * calc_amtSet2		����հ�ݾװ��
 * @param
 * @return
******************************************************************/
function calc_amtSet2(obj, isFixed, dv){
	var useAmt		= 0;			// ���ݾ�
	var splyAmt		= 0;			// ���ޱݾ�
	var vatAmt		= 0;			// �ΰ���
	var tot_useAmt	= 0;			// �ѻ��ݾ�
	var tot_splyAmt	= 0;			// �Ѱ��ޱݾ�
	var tot_vatAmt	= 0;			// �Ѻΰ���
	if( dv == null ) dv = "0";		// 0:�����켱, 1:���켱

	if(typeof isFixed == "undefined"){
		isFixed = false;
	}
//	try{

		// ���ݾ� ����
		for(var i=0; i<document.forms['frm'].elements['itxp_cnt'].value; i++){

			//�ΰ��� ���ܽ� �ΰ��ݾ� �Է��� readonly
			if( "T" == $('#EvmaGb_'+ i ).val() && dv == '1' ){
				if( 'Y' == $('#T_ExclsVatAmtYn_'+i).val() ){
					$("#ItxpVatAmt_"+i).val('0');
					$("#ItxpVatAmt_"+i).attr('readonly',true);
				}else{
					$("#ItxpVatAmt_"+i).attr('readonly',false);
				}
			}

			splyAmt		= Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
			vatAmt		= Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
			useAmt		= splyAmt + vatAmt;


			tot_splyAmt	+=	splyAmt;
			tot_vatAmt	+=	vatAmt;
			tot_useAmt	+=	useAmt;

			$("#ItxpUseAmt_"+i).val(toMoney(useAmt));

			if( ("T" == $('#EvmaGb_'+ i ).val() && false == isFixed) || dv == "1"
				||  ("R" == $('#EvmaGb_'+ i ).val() && false == isFixed) ){		// Add CashReceipt 20141202 modified by sonpro
				if( parseInt($('#T_Evdc_SplyAmt_'+i).val(),10) > splyAmt ){
					document.getElementById('SplyAmtDfamtRsn_tr_'+i).style.display = "";
				}else if( parseInt($('#R_Evdc_SplyAmt_'+i).val(),10) > splyAmt ){
					document.getElementById('SplyAmtDfamtRsn_tr_'+i).style.display = "";
				}else{
					document.getElementById('SplyAmtDfamtRsn_tr_'+i).style.display = "none";
					document.getElementById('SplyAmtDfamtRsn_'+i).value = "";
				}
			}

			if( dv == "1" && false == isFixed ){
				document.getElementById("txt_trnsAmt_"	+i).innerHTML	= toMoney(useAmt);
				document.getElementById("txt_splyAmt_"	+i).innerHTML	= toMoney(splyAmt);
				document.getElementById("txt_vatAmt_"	+i).innerHTML	= toMoney(vatAmt);
			}

		}

		// ��Ÿ���� && �����,�������� ��츸 ����
		if( "E" == $('#EvmaGb_'+ i ).val() && false == isFixed ){


		}else{

		}
		// ���ޱݾ�, �ΰ����� ����
		document.getElementById("evdc_splyAmtTxt").innerHTML	= toMoney(tot_splyAmt);
		document.getElementById("evdc_vatAmtTxt").innerHTML		= toMoney(tot_vatAmt);

		// ����հ� ����
		document.getElementById("tot_TrnsAmt").innerHTML		= toMoney(tot_useAmt);
		document.getElementById("tot_splyAmt").innerHTML		= toMoney(tot_splyAmt);
		document.getElementById("tot_vatAmt").innerHTML			= toMoney(tot_vatAmt);
//	}catch(e){
//		alert("���� : " + e.message + " Line 1591");
//	}
}


function chk_amtSet(obj,dv){
	var frm = document.frm;

	var useAmt		= 0;			// ���ݾ�
	var splyAmt		= 0;			// ���ޱݾ�
	var vatAmt		= 0;			// �ΰ���
	var tot_useAmt	= 0;			// �ѻ��ݾ�


	if( dv == null ){//�����켱
		// ���ݾ� ����
		for(var i=0; i<document.frm.itxp_cnt.value; i++){
			splyAmt		= Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
			vatAmt		= Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
			useAmt		= splyAmt + vatAmt;
			tot_useAmt	+=	useAmt;
		}
		// Add CashReceipt 20141202 modified by sonpro
		if( "T" == frm.Evdc_Dv.value || "C" == frm.Evdc_Dv.value || "R" == frm.Evdc_Dv.value ){
			if( parseFloat(tot_useAmt) >  parseFloat(document.frm.Evdc_SumAmt.value) ){
				alert('����� �ݾ��� ���� ���ݾ�('+toMoney(document.frm.Evdc_SumAmt.value)+')�� �ʰ��Ͽ����ϴ�.');
				obj.value = '0';
				//obj.focus();
				return;
			}
		}
	}else{//���켱

		var idx = $(obj).attr('id').split('_')[1];
		var EvdcDv = $('#EvmaGb_'+idx).val();

		splyAmt		= Number($("#ItxpSplyAmt_"+idx).val().replace(/,/gi,""));
		vatAmt		= Number($("#ItxpVatAmt_"+idx).val().replace(/,/gi,""));
		useAmt		= splyAmt + vatAmt;
		tot_useAmt	= useAmt;

		// Add CashReceipt 20141202 modified by sonpro
		if( "T" == EvdcDv || "R" == EvdcDv || "C" == EvdcDv ){
			if( parseFloat(tot_useAmt) >  parseFloat($('#'+EvdcDv+'_Evdc_SumAmt_'+idx).val()) ){
				alert('����� �ݾ��� ���� ���ݾ�(' + toMoney($('#'+EvdcDv+'_Evdc_SumAmt_'+idx).val()) + ')�� �ʰ��Ͽ����ϴ�.');
				obj.value = '0';
				//obj.focus();
				return;
			}
		}
	}
}
/******************************************************************
 * calc_amtSet		����հ�ݾװ��
 * @param
 * @return
******************************************************************/
function calc_amtSet(obj, isFixed){

	var frm = document.frm;

	var useAmt		= 0;			// ���ݾ�
	var splyAmt		= 0;			// ���ޱݾ�
	var vatAmt		= 0;			// �ΰ���
	var tot_useAmt	= 0;			// �ѻ��ݾ�
	var tot_splyAmt	= 0;			// �Ѱ��ޱݾ�
	var tot_vatAmt	= 0;			// �Ѻΰ���

	if(typeof isFixed == "undefined"){
		isFixed = false;
	}
	// ���ݾ� ����
	for(var i=0; i<document.frm.itxp_cnt.value; i++){

		//�ΰ��� ���ܽ� �ΰ��ݾ� �Է��� readonly
		if( "T" == frm.Evdc_Dv.value ){
			if( 'Y' == $('#ExclsVatAmtYn').val() ){
				$("#ItxpVatAmt_"+i).val('0');
				$("#ItxpVatAmt_"+i).attr('readonly',true);
			}else{
				$("#ItxpVatAmt_"+i).attr('readonly',false);
			}
		}

		splyAmt		= Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
		vatAmt		= Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
		useAmt		= splyAmt + vatAmt;

		tot_splyAmt	+=	splyAmt;
		tot_vatAmt	+=	vatAmt;
		tot_useAmt	+=	useAmt;

		$("#ItxpUseAmt_"+i).val(toMoney(useAmt));

	}
	
	// ��Ÿ���� && �����,�������� ��츸 ����
	// 2012.11.26 ī��,���ڼ��ݰ�꼭�� ��� ���ݱ޾װ� �ΰ��� ���׿� �߻��� �� ����
	if( false==isFixed){
		// ���ޱݾ�, �ΰ����� ����
		document.getElementById("evdc_splyAmtTxt").innerHTML	= toMoney(tot_splyAmt);
		document.getElementById("evdc_vatAmtTxt").innerHTML	= toMoney(tot_vatAmt);

		// ��ü�ݾ�, ���ް���, �ΰ���ġ���� ����
		document.getElementById("txt_trnsAmt").innerHTML	= toMoney(tot_useAmt);
		document.getElementById("txt_splyAmt").innerHTML	= toMoney(tot_splyAmt);
		document.getElementById("txt_vatAmt").innerHTML		= toMoney(tot_vatAmt);

	}else{
		// 2012.11.26 ī��,���ڼ��ݰ�꼭�� ��� ���ݱ޾װ� �ΰ��� ���׿� �߻��� �� ����
		if( "T" != frm.Evdc_Dv.value ){
			document.getElementById("evdc_splyAmtTxt").innerHTML	= toMoney(tot_splyAmt);
			document.getElementById("evdc_vatAmtTxt").innerHTML	= toMoney(tot_vatAmt);

			// ��ü�ݾ�, ���ް���, �ΰ���ġ���� ����
			document.getElementById("txt_splyAmt").innerHTML	= toMoney(tot_splyAmt);
			document.getElementById("txt_vatAmt").innerHTML		= toMoney(tot_vatAmt);
		}
	}

	//2012.11.26 ���ڼ��ݰ�꼭�� ��� ���ޱݾ׼����� �� ���ױݾ� ���̹߻��� ���׻��� ����
	if( "T" == frm.Evdc_Dv.value || "R" == frm.Evdc_Dv.value ){
		if( parseInt(frm.Evdc_SplyAmt.value,10) > tot_splyAmt ){
			document.getElementById('SplyAmtDfamtRsn_tr').style.display = "";
		}else{
			document.getElementById('SplyAmtDfamtRsn_tr').style.display = "none";
		}
	}

	// ����հ� ����
	document.getElementById("tot_TrnsAmt").innerHTML		= toMoney(tot_useAmt);
	document.getElementById("tot_splyAmt").innerHTML		= toMoney(tot_splyAmt);
	document.getElementById("tot_vatAmt").innerHTML			= toMoney(tot_vatAmt);
}
/******************************************************************
 * chk_itxpExist		itxp_id�� ������ ��� ����(Y) (�����켱)
 * @param				len : ��Ϻ��� itxp_id:�񱳺���ڵ�
 * @return
 * @author soneunjun
******************************************************************/
function chk_itxpExist(len,itxp_id){
	var ret_yn =	true;		//itxp_id�� ������ ��� ����(Y)
	for(var i=0; i<len; i++){
		if(itxp_id != $("#SelSubDtlsItxpCd_"+i).val())
			ret_yn=false;
	}
	return ret_yn;
}

/******************************************************************
 * chk_itxpExist2		itxp_id�� ������ ��� ����(Y) (���켱)
 * @param				itxp_id:�񱳺���ڵ�
 * @return
 * @author kimjeongsoo
******************************************************************/
function chk_itxpExist2(itxp_id){
	var ret_yn =	true;		//itxp_id�� ������ ��� ����(Y)
	if(itxp_id != $("#SelSubDtlsItxpCd").val()) ret_yn=false;

	return ret_yn;
}

/******************************************************************
 * set_AmtInfo		��������,�����Ϸù�ȣ,�ݾ׼���
 * @param
 * @return
 * @author soneunjun
******************************************************************/
function set_AmtInfo(evdc_dv,evdcSeqNo,splyAmt,vatAmt){
	var frm	=	document.frm;

	frm.Evdc_Dv.value	=	evdc_dv;
	frm.EvdcSeqNo.value	=	evdcSeqNo;

	document.getElementById("evdc_splyAmtTxt"	).innerHTML	=	toMoney(splyAmt);			//���ޱݾ�
	document.getElementById("tot_splyAmt"		).innerHTML	=	toMoney(splyAmt);			//���ޱݾ�
	document.getElementById("evdc_vatAmtTxt"	).innerHTML	=	toMoney(vatAmt);			//�ΰ���
	document.getElementById("tot_vatAmt"		).innerHTML	=	toMoney(vatAmt);			//�ΰ���
	document.getElementById("tot_TrnsAmt"		).innerHTML	=	toMoney(Number(vatAmt)+Number(splyAmt));			//�ΰ���
	if("T"==evdc_dv || "R"==evdc_dv){	//Add CashReceipt 20141202 modified by sonpro
		document.getElementById("txt_trnsAmt"	).innerHTML	=	toMoney(Number(splyAmt)+Number(vatAmt));	//�հ�ݾ�
		document.getElementById("txt_splyAmt"	).innerHTML	=	toMoney(splyAmt);							//���ޱݾ�
		document.getElementById("txt_vatAmt"	).innerHTML	=	toMoney(vatAmt);							//�ΰ���
	}
}
/******************************************************************
 * chk_itxp_evdc_amt		����ϱݾװ� �����ݾ� ��ġ���� üũ
 * @param
 * @return
 * @author soneunjun
******************************************************************/
function chk_itxp_evdc_amt(){
	var frm	=	document.frm;
	var tbody = jQuery("#ItxpList tbody");
	var rows = tbody.find("tr").length;
	var tot_useAmt = 0,tot_splyAmt = 0,tot_vatAmt = 0;
	var msg="",return_msg="",error_msg="",evdc_kor="";

	if("T"==frm.Evdc_Dv.value)	evdc_kor =	"���ڼ��ݰ�꼭";
	else if("R"==frm.Evdc_Dv.value)	evdc_kor =	"���ݿ�����";
	else if("C"==frm.Evdc_Dv.value)	evdc_kor =	"ī������";
	else if("E"==frm.Evdc_Dv.value)	evdc_kor =	"��Ÿ����";

	//����ϱݾ� �հ�
	for(var i=0;i<rows;i++){
		tot_useAmt	=	Number(tot_useAmt)+Number($("#ItxpUseAmt_"+i).val().replace(/,/gi,""));
		tot_splyAmt	=	Number(tot_splyAmt)+Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
		tot_vatAmt	=	Number(tot_vatAmt)+Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
	}

	//Add CashReceipt 20141205 modified by sonpro
	if( ("T"==frm.Evdc_Dv.value) || "C"==frm.Evdc_Dv.value ||"R"==frm.Evdc_Dv.value ){
		//2012.11.26 ���ޱݾ��� ��ġ�ϴ°�쿡 �ݾ� üũ(���ڼ��ݰ�꼭�� ��� ���ޱݾ� ������ ������ �� ����)
		// ���ڼ��ݰ�꼭�� ���Աݾ�(�հ�,���ޱݾ�,�ΰ�����) �ѵ� ������ ��������
		var EvdcSumAmt 	= Number($("#Evdc_SumAmt").val());
		var EvdcSplyAmt = Number($("#Evdc_SplyAmt").val());
		var EvdcVatAmt 	= Number($("#Evdc_VatAmt").val());

		var txbInfo = "\n\n�������� ���Աݾ� ����";
			txbInfo += "\n�հ�ݾ� : " + toMoney(EvdcSumAmt);
			txbInfo += "\n���ޱݾ� : " + toMoney(EvdcSplyAmt);
			txbInfo += "\n�ΰ����� : " + toMoney(EvdcVatAmt) + ($('#ExclsVatAmtYn').val() == 'Y' ?' (�ΰ����ݾ� ����)':'');

		error_msg	=	"����� ���ݾ��� EVDC TGAMT�ݾ��� �ʰ��Ͽ����ϴ�." + txbInfo;

//		if(tot_useAmt > EvdcSumAmt){
//			return error_msg.replace("EVDC",evdc_kor).replace("TGAMT","���");
//		}else if(tot_splyAmt > EvdcSplyAmt ){
//			return error_msg.replace("EVDC",evdc_kor).replace("TGAMT","����");
//		}else if(!($('#ExclsVatAmtYn').val() == 'Y') && tot_vatAmt > EvdcVatAmt ){
//			return error_msg.replace("EVDC",evdc_kor).replace("TGAMT","�ΰ���");
//		}
		
		// 20150113 ������ ���� : ī������ް���, �ΰ����� üũ�κ� ���� ����.
		if("C" != frm.Evdc_Dv.value){
			if(tot_useAmt > EvdcSumAmt){
				return error_msg.replace("EVDC",evdc_kor).replace("TGAMT","���");
			}else if(tot_splyAmt > EvdcSplyAmt ){
				return error_msg.replace("EVDC",evdc_kor).replace("TGAMT","����");
			}else if(!($('#ExclsVatAmtYn').val() == 'Y') && tot_vatAmt > EvdcVatAmt ){
				return error_msg.replace("EVDC",evdc_kor).replace("TGAMT","�ΰ���");
			}
		}else{
			if(tot_splyAmt == EvdcSplyAmt){
				if(tot_useAmt > EvdcSumAmt){
					return error_msg.replace("EVDC",evdc_kor).replace("TGAMT","���");
				}else if(tot_splyAmt > EvdcSumAmt ){
					return error_msg.replace("EVDC",evdc_kor).replace("TGAMT","����");
				}else if(tot_vatAmt > tot_splyAmt){
					return error_msg="����� ���ݾ��� �ΰ������� ���ޱݾ��� �ʰ� �Ͽ����ϴ�.";
				}
			}else{
				if(tot_useAmt > EvdcSumAmt){
					return error_msg.replace("EVDC",evdc_kor).replace("TGAMT","���");
				}else if(tot_vatAmt > tot_splyAmt){
					return error_msg="����� ���ݾ��� �ΰ������� ���ޱݾ��� �ʰ� �Ͽ����ϴ�.";
				}
			}
		}

	}else if("E"==frm.Evdc_Dv.value){
		if(confirm("����Ͻ� �� �ݾ� "+toMoney(tot_useAmt)+"�Դϴ�.")){
		}else{
			return	"�ݾ��� �ٽ� �Է��Ͽ� �ּ���.";
		}
	}else{
		alert("���� �̵�� �����Դϴ�.");
	}
	return return_msg;
}

/******************************************************************
 * SplrInfoDisplay		 �ŷ�ó�������̾� display on/off
 * @param		crdSetlMeth:ī�������ı���(1:������/2:�ǽð���ü���)
 * 				val=Y : �������������������ϴ°��
 * @return
 * @author soneunjun
******************************************************************/
function SplrInfoDisplay(val,evdcDv,crdSetlMeth){
	var frm	=	document.rtr_str_form;
	var bfrm = document.frm;
	var mode =	"1",rcv_bnk_nm="",rcv_acc_no="",rcv_bnk_cd="";
	
	if("Y" == val){

		if("C"==evdcDv){
			document.getElementById("ChkBzRegNo_0").style.display = "none";//����ڹ�ȣ Ȯ�ι�ư ����
			document.getElementById("divTranInfoItem").style.display 	= "none";		//������ü��û�׸�
			document.getElementById("btnItxp").style.display 			= "none";		//��������Ϲ�ư
			if("2" == crdSetlMeth){	//�ǽð���ü��İ��

				document.getElementById("divTranInfoItem").style.display 	= "block";
				document.getElementById("btnItxp").style.display 			= "inline-block";
				mode	=	"4";

				//�ǽð���ü����� ���
				//�����������°� ������ ��������·� �Աݰ��¼����� 20110824 ������
				if( typeof bfrm.RcvAcctNo == 'undefined' || ""==bfrm.RcvAcctNo.value){
					rcv_acc_no	=	frm.S_RCH_ACC_NO.value;
					rcv_bnk_cd	=	frm.S_RCH_ACC_BNK_CD.value;
					rcv_bnk_nm	=	frm.S_RCH_ACC_BNK_NM.value;
				}else{
					rcv_acc_no	=	bfrm.RcvAcctNo.value;
					rcv_bnk_cd	=	bfrm.RcvBnkCd.value;
					rcv_bnk_nm	=	document.getElementById("idRcvBnkNm").innerText.substring(1,document.getElementById("idRcvBnkNm").innerText.indexOf(']'));
				}
			}
		}else{
			document.getElementById("divTranInfoItem").style.display 	= "block";
			document.getElementById("btnItxp").style.display 			= "inline-block";
		}
		if("E"==evdcDv || "R"==evdcDv){				//Add CashReceipt 20141202 modified by sonpro
			document.getElementById("divTranInfo_etc").style.display 	= "block";			//�ŷ�ó�����Է����̺�
			document.getElementById("etcInfoBtnDisplay").style.display	="inline";			//��Ÿ�������ɺ���ư ����
			document.getElementById("idBzRegNo").style.display			="inline";
		}else{
			document.getElementById("divTranInfo").style.display 		= "block";
			document.getElementById("etcInfoBtnDisplay").style.display	= "none";			//��Ÿ�������ɺ���ư ����
		}
		//2012.12.21 ���ڼ��ݰ�꼭�� ��� �������� ��� ��ư ����
		//���ݿ������϶� ����������� ���� 20141128 modified by sonpro
		if( "T" == evdcDv  || "R"==evdcDv){
			$('.ItxpFileEvdcVal').hide();
		}else{
			$('.ItxpFileEvdcVal').show();
		}

		// 2011.10.19 �µ���
		// ����밳���ڵ�A ����Ʈ�� ���� (���ڼ��ݰ�꼭, ��Ÿ����, ī������-�ǽð���ü���)
		if(!("C"==evdcDv && "1"==crdSetlMeth)){
			document.getElementById("AchvInstIndv1Cd").value					= frm.S_SBJT_ID.value;
		}


		document.getElementById("divBmokInfo").style.display 			= "block";
		//����޺�����
		if( isSubmit() ) return;	// ����ó��
		exctn_ExctnStgDv_v2(mode,'', frm.S_RCH_ACC_BNK_CD.value, frm.S_RCH_ACC_BNK_NM.value, frm.S_RCH_ACC_NO.value,  rcv_bnk_nm, rcv_bnk_cd,rcv_acc_no, frm.S_MY_ACCT_TRNS_ALWN_YN.value);
		fnItxpInit();

		get2post(bfrm, "S_SBJT_ID="+frm.S_SBJT_ID.value);
		get2post(bfrm, "S_PMS_ID="+frm.S_PMS_ID.value);
		get2post(bfrm, "S_AGRMT_SEQ_NO="+frm.S_AGRMT_SEQ_NO.value);
		get2post(bfrm, "S_AGRMT_INST_ID="+frm.S_AGRMT_INST_ID.value);
		get2post(bfrm, "S_BZ_CLAS_CD="+frm.S_BZ_CLAS_CD.value);
		bfrm.target = "sendIfrm";
		bfrm.action = "/jsp/u01/u12/U12_01_00_0_r1.jsp";

		fn_submit(bfrm);
	}else{
		document.getElementById("divTranInfo_etc").style.display 	= "none";		//��Ÿ�����ŷ�ó����
		document.getElementById("divTranInfo").style.display 		= "none";		//�ŷ�ó����
		document.getElementById("divBmokInfo").style.display 		= "none";		//���������

		//��Ÿ�������ɺ���ư ����
		document.getElementById("etcInfoBtnDisplay").style.display="none";
	}
}

/******************************************************************
 * uf_addEvdc_pop 	�����߰�
 * @param (evma_gb[T : ���ڼ��ݰ�꼭, C : ī�����, E : ��Ÿ����])
 * @return
 * @author soneunjun
******************************************************************/
function uf_addEvdc_pop(frm, evma_gb, obj){
	var frm		=	document.rtr_str_form;
	var bfrm	=	document.frm;
	var pop_width,pop_height,pop_scroll,url;
	//if(getGridRowCount(obj) > 0){alert("������ 1�Ǹ� ��ϰ����մϴ�.");return;}

	if(evma_gb=="T"){ //���ڼ���
		pop_width = "760";
		pop_height = "800";
		pop_scroll = "yes";

		url = "/jsp/u01/u12/U12_01_10_0.jsp";
	}else if(evma_gb=="C"){ //ī��
		pop_width = "760";
		pop_height = "800";
		pop_scroll = "yes";

		var param	=	"pAgrmtSeqNo="+frm.S_AGRMT_SEQ_NO.value;
		param	+=	"&pSbjtId="+frm.S_SBJT_ID.value;
		param	+=	"&pCpcgInstBzRegNo="+frm.S_CPCG_INST_BZPR_NO.value;
		param	+=	"&pAgrmtInstCrpnRegNo="+frm.S_AGRMT_INST_BZPR_NO.value;

		url = "/jsp/u01/u12/U12_01_20_0.jsp?"+param;

	}else if(evma_gb=="R"){		// Add CashReceipt 20141128 modified by sonpro
		pop_width = "800";
		pop_height = "635";
		pop_scroll = "yes";

		url = "/jsp/u01/u12/U12_01_40_0.jsp";

	}else if(evma_gb=="E"){
		//�������� "��Ÿ"�ΰ�� ��������� ����
		//�ŷ�ó������ �����Է��ϵ��� ����
		// ����Ű����(����������(1)+�ý�������(8)+�ý��۽ð�(6)+"-"+�����Ϸù�ȣ(15)+"-"+���ID(20) )
		var etcEvdcSeqNo	=	"E"+getDateTime("YYYY")+getDateTime("MM")+getDateTime("DD")+getDateTime("HH")+getDateTime("NN")+getDateTime("SS")+"-"+frm.S_AGRMT_SEQ_NO.value+"-"+frm.S_AGRMT_INST_ID.value;

		document.frm.EvdcSeqNo.value	    = 	etcEvdcSeqNo;			//��Ÿ�����Ϸù�ȣ
		document.frm.Evdc_Dv.value			=	"E";
		SplrInfoDisplay('Y','E');

		return;
	}else{
		//����߽� �ʱ�ȭ
		return;
	}
	uf_frmNewWin(bfrm, url, 'RCMS_MKE_POPUP', pop_width, pop_height,pop_scroll);
	removeTempAttribute(bfrm);
}

/******************************************************************
 * uf_tran_owac		��������ȸ
 * @param
 * @return
******************************************************************/
function uf_tran_owac_c(bzRegNo, ridx, mainFrm, sbjtFrm){

	var bz_reg_no 	= "";
	var comp_no 	= 0;

	if(typeof ridx == "undefined" ){
		ridx = "";
	}
	if(typeof mainFrm == "undefined"){
		mainFrm = document.frm;
	}
	if(typeof sbjtFrm == "undefined"){
		sbjtFrm = document.rtr_str_form;
	}

	if( bzRegNo ){
		bz_reg_no = bzRegNo.replace('-','');
		comp_no = parseInt(bz_reg_no.substring(3,5),10);
	}

	//���λ����(01~79), �鼼�����(90~99), ��õ¡���Ǹ��ִ°��(08)���� ������ ��ȸ�� ����
	if( ( "" == bz_reg_no || comp_no >= 1 && comp_no <=79 ) || (comp_no >= 90 && comp_no <= 99 )){
		uf_tran_owac2(mainFrm, sbjtFrm, ridx);
	}else{
		uf_tran_owac3(mainFrm, sbjtFrm, bz_reg_no, ridx);
	}


}
/******************************************************************
 * uf_tran_owac2		��������ȸ
 * @param
 * @return
******************************************************************/
function uf_tran_owac2(mainFrm, sbjtFrm, ridx){

	if(typeof ridx == "undefined" ){
		ridx = "";
	}
	if(typeof mainFrm == "undefined"){
		mainFrm = document.frm;
	}
	if(typeof sbjtFrm == "undefined"){
		sbjtFrm = document.rtr_str_form;
	}

	var _RcvBnkCd = "";
	var _RcvAcctNo = "";
	if( "" == ridx || null == ridx ){
		_RcvBnkCd = mainFrm.RcvBnkCd.value;
		_RcvAcctNo = mainFrm.RcvAcctNo.value;
	}else{
		try{
			_RcvBnkCd = $('#RcvBnkCd_'+ridx).val();
			_RcvAcctNo = $('#RcvAcctNo_'+ridx).val();
		}catch(e){
			alert(e.message);
			_RcvBnkCd = mainFrm.RcvBnkCd.value;
			_RcvAcctNo = mainFrm.RcvAcctNo.value;
		}
	}
	if(_RcvBnkCd==""){
		alert("�Ա������� ���� �ϼ���.");
		return;
	}
	if(_RcvAcctNo==""){
		alert("�Աݰ��¹�ȣ�� �Է� �ϼ���.");
		return;
	}

	try{
		for(var i = 0; i<document.forms['frm'].elements['itxp_cnt'].value; i++){
			var splyAmt	= Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
			var vatAmt	= Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));

			if( splyAmt < 0 ){
				alert('���ޱݾ��� 0���� ���� �� �����ϴ�.');
				$("#ItxpSplyAmt_"+i).focus();
				return false;
			}
			if( vatAmt < 0 ){
				alert('�ΰ����ݾ��� 0���� ���� �� �����ϴ�.');
				$("#ItxpVatAmt_"+i).focus();
				return false;
			}
		}
	}catch(e){

	}

	var TrnsAmt = 0;

	if(document.getElementById("evdc_splyAmtTxt") != null && document.getElementById("evdc_vatAmtTxt") != null){
		TrnsAmt = Number(document.getElementById("evdc_splyAmtTxt").innerHTML.replace(/,/gi,"")) + Number(document.getElementById("evdc_vatAmtTxt").innerHTML.replace(/,/gi,""));
	}


	// ��Ƽ���� �������� �ݾ��� 0 �Ǵ� ���ڰ� �ϰ�� ����Ʈ�� 10���� �����Ѵ�.
	if(0 == TrnsAmt || isNaN(TrnsAmt)){
		TrnsAmt = 10;
	}

	var RcvBnkCd = "";
	var RcvAcctNo = "";
	if( ridx == "" || ridx == null ){
		RcvBnkCd =	mainFrm.RcvBnkCd;
		RcvAcctNo = mainFrm.RcvAcctNo;
	}else{
		try{
			RcvBnkCd =	eval('mainFrm.RcvBnkCd_'+ridx);
			RcvAcctNo = eval('mainFrm.RcvAcctNo_'+ridx);
		}catch(e){
			RcvBnkCd =	mainFrm.RcvBnkCd;
			RcvAcctNo = mainFrm.RcvAcctNo;
		}
	}

	tran_owac2(RcvBnkCd
			,RcvAcctNo
			,sbjtFrm.S_AGRMT_SEQ_NO.value
			,sbjtFrm.S_AGRMT_INST_ID.value
			,sbjtFrm.S_PMS_ID.value
			,sbjtFrm.S_BZ_CLAS_CD.value
			,sbjtFrm.S_CPCG_INST_BZPR_NO.value
			,sbjtFrm.S_AGRMT_INST_BZPR_NO.value
			,TrnsAmt
			,ridx);
}

/******************************************************************
 * uf_tran_owac3		������(�Ǹ�)��ȸ
 * @param
 * @return
******************************************************************/
function uf_tran_owac3(mainFrm, sbjtFrm, bzRegNo, ridx){

	if(typeof ridx == "undefined" ){
		ridx = "";
	}
	if(typeof mainFrm == "undefined"){
		mainFrm = document.frm;
	}
	if(typeof sbjtFrm == "undefined"){
		sbjtFrm = document.rtr_str_form;
	}
	if(typeof bzRegNo == "undefined"){
		bzRegNo = document.frm.BzRegNo.value;
	}

	var _RcvBnkCd 	= "";
	var _RcvAcctNo 	= "";
	var _BzRegNo	= bzRegNo;
	if( "" == ridx || null == ridx ){
		_RcvBnkCd 	= mainFrm.RcvBnkCd.value;
		_RcvAcctNo 	= mainFrm.RcvAcctNo.value;
	}else{
		try{
			_RcvBnkCd 	= $('#RcvBnkCd_'+ridx).val();
			_RcvAcctNo 	= $('#RcvAcctNo_'+ridx).val();
		}catch(e){
			_RcvBnkCd 	= mainFrm.RcvBnkCd.value;
			_RcvAcctNo 	= mainFrm.RcvAcctNo.value;
		}
	}
	if( _BzRegNo == "" ){
		alert("����ڹ�ȣ�� �ʿ��մϴ�.");
		return;
	}
	if(_RcvBnkCd==""){
		alert("�Ա������� ���� �ϼ���..");
		return;
	}
	if(_RcvAcctNo==""){
		alert("�Աݰ��¹�ȣ�� �Է� �ϼ���.");
		return;
	}

	try{
		for(var i = 0; i<document.forms['frm'].elements['itxp_cnt'].value; i++){
			var splyAmt	= Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
			var vatAmt	= Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));

			if( splyAmt < 0 ){
				alert('���ޱݾ��� 0���� ���� �� �����ϴ�.');
				$("#ItxpSplyAmt_"+i).focus();
				return false;
			}
			if( vatAmt < 0 ){
				alert('�ΰ����ݾ��� 0���� ���� �� �����ϴ�.');
				$("#ItxpVatAmt_"+i).focus();
				return false;
			}
		}
	}catch(e){

	}

	var TrnsAmt = 0;

	if(document.getElementById("evdc_splyAmtTxt") != null && document.getElementById("evdc_vatAmtTxt") != null){
		TrnsAmt = Number(document.getElementById("evdc_splyAmtTxt").innerHTML.replace(/,/gi,"")) + Number(document.getElementById("evdc_vatAmtTxt").innerHTML.replace(/,/gi,""));
	}

	// ��Ƽ���� �������� �ݾ��� 0 �Ǵ� ���ڰ� �ϰ�� ����Ʈ�� 10���� �����Ѵ�.
	if(0 == TrnsAmt || isNaN(TrnsAmt)){
		TrnsAmt = 10;
	}


	var RcvBnkCd = "";
	var RcvAcctNo = "";
	if( ridx == "" || ridx == null ){
		RcvBnkCd =	mainFrm.RcvBnkCd;
		RcvAcctNo = mainFrm.RcvAcctNo;
	}else{
		try{
			RcvBnkCd =	eval('mainFrm.RcvBnkCd_'+ridx);
			RcvAcctNo = eval('mainFrm.RcvAcctNo_'+ridx);
		}catch(e){
			RcvBnkCd =	mainFrm.RcvBnkCd;
			RcvAcctNo = mainFrm.RcvAcctNo;
		}
	}

	tran_owac3(
			_BzRegNo
			,RcvBnkCd
			,RcvAcctNo
			,sbjtFrm.S_AGRMT_SEQ_NO.value
			,sbjtFrm.S_AGRMT_INST_ID.value
			,sbjtFrm.S_PMS_ID.value
			,sbjtFrm.S_BZ_CLAS_CD.value
			,sbjtFrm.S_CPCG_INST_BZPR_NO.value
			,sbjtFrm.S_AGRMT_INST_BZPR_NO.value
			,TrnsAmt
			,ridx);
}

/******************************************************************
 * set_TrnsInfoData		������ü��������
 * @param
 * @return
******************************************************************
function set_TrnsInfoData(){
	var frm_key	=	document.rtr_str_form;
	var frm		=	document.frm;

	if("C"==frm.Evdc_Dv.value){
		//���ܰ豸��ǥ�ÿ���(�ڰ���/Ÿ������ü����)
		if(typeof(frm_key.S_EXCTN_STG_DV) != 'undefined' && "2"==frm_key.S_EXCTN_STG_DV.value){
			document.getElementById("ExctnStgDv_tr").style.display 	= "block";
		}
	}
}
*/


/******************************************************************
 * getRegPossDis		����å���� ����� ��ư����
 * @param
 * @return
******************************************************************/
function getRegPossDis(){
	var vfrm = document.rtr_str_form;
	if(vfrm.S_HMPW_ROLE_DV.value=="01" || vfrm.S_HMPW_ROLE_DV.value=="02"){
		$(".Btn_U").show();
	}else{
		$(".Btn_U").hide();
	}
}

/******************************************************************
 * chk_frm_value		���� null �� ��üũ
 * @param
 * @return
******************************************************************/
function chk_frm_value(frm_nm,idx){
	var frm_name="";
	if(frm_nm=="ItxpItem"){
		frm_name	=	"ǰ��";
	}else if(frm_nm=="SelDtlsItxpCd"){
		frm_name	=	"����";
	}else if(frm_nm=="SelSubDtlsItxpCd"){
		frm_name	=	"������";
	}else if(frm_nm=="ItxpUseAmt" || frm_nm=="ItxpSplyAmt" || frm_nm=="ItxpVatAmt"){
		frm_name	=	"�ݾ�";
	}

	if( idx != null ){
		if(null==$("#"+frm_nm+"_"+idx).val() || ""==$("#"+frm_nm+"_"+idx).val() || "����"==$("#"+frm_nm+"_"+idx).val()){
			alert(frm_name+"�� �Է�(����)�ϼ���.");
			$("#"+frm_nm+"_"+idx).focus();
			return false;
		}
	}else{
		if(null==$("#"+frm_nm).val() || ""==$("#"+frm_nm).val() || "����"==$("#"+frm_nm).val()){
			alert(frm_name+"�� �Է�(����)�ϼ��� .");
			$("#"+frm_nm).focus();
			return false;
		}
	}
	return true;
}

/*################################################################*/
/*################################################################*/


/******************************************************************
 * uf_OwacNmRst			���¹�ȣ����ÿ����ָ���, �����켱
 * @param
 * @return
******************************************************************/
function uf_OwacNmRst(idx){
	var frm = document.frm;
	try{
		if( idx == null || typeof idx == 'undefined' ){
			frm.RcvAcctNo.setAttribute("enc","off");
			frm.OwacNm.value= "";
		}else{
			$('#RcvAcctNo_'+idx).attr("enc","off");
			$('#OwacNm_'+idx).val('');
		}
	}catch(e){
		alert("���� : " + e.message + '\nFn : uf_OwacNmRst');
	}
}
//���켱���� ���
function uf_OwacNmRst2(obj){
	var frm = document.frm;
	try{
		idx = $(obj).attr('id').split('_')[1];
		$('#RcvAcctNo_'+idx).attr("enc","off");
		$('#OwacNm_'+idx).val('');
	}catch(e){
		alert("���� :  " + e.message + " Line 2778");
	}
}


//�����켱
function chkEnc() {
	try{
		document.frm.RcvAcctNo.setAttribute("enc", "on");
		document.frm.RcvAcctNo.value = "";
		document.frm.OwacNm.value= ""; //2013.3.24 �߰� KJS
	}catch(e){
		alert("���� :  " + e.message + ' Line 2788');
	}
}
//���켱
function chkEncOn(obj){
	try{
		idx = $(obj).attr('id').split('_')[1];
		//$('#RcvAcctNo_'+idx).attr("enc", "on");
		$('#RcvAcctNo_'+idx).val('');
		$('#OwacNm_'+idx).val(''); //2013.3.24 �߰� KJS
	}catch(e){
		alert("���� :  " + e.message + ' Line 2799');
	}
}


/******************************************************************
 * getDateTime	���� ��¥,�ð� ����
 * @param	YYYY,MM,DD,HH,NN,SS
 * @return
******************************************************************/
function getDateTime(mode){
	var retVal = "";
	var date	=	new Date();

	if("YYYY" == mode)
		retVal = date.getYear();
	else if("MM" == mode)
		retVal = date.getMonth()+1;
	else if("DD" == mode)
		retVal = date.getDate();
	else if("HH" == mode)
		retVal = date.getHours();
	else if("NN" == mode)
		retVal = date.getMinutes();
	else if("SS" == mode)
		retVal = date.getSeconds();
	else
		retVal = "[ERROR]input parameter: YYYY,,MM,DD,HH,NN,SS";

	if(retVal < 10)
		retVal = "0"+retVal;

	return retVal;
}
/******************************************************************
 * siteLink footer����Ʈ ��ũ
 * @param
 * @return
******************************************************************/
function siteLink(){
	var frm = document.footer_frm;

	if(frm.site.value=="") return;
	frm.target = "_blank";
	frm.action = frm.site.value;
	frm.submit();
}

function siteDivDisplay(){
	var obj = document.all['site-layer'];
	var display = obj.style.display;

	if (display=="none"){
		obj.style.display = "";
	}else{
		obj.style.display = "none";
	}
}

/******************************************************************
 * Layer popup
 * @param
 * @return
******************************************************************/
var cur_layer_pop;

function showLayerPop(div_name) {
	cur_layer_pop = document.getElementById(div_name);

	$(cur_layer_pop).css("top" , $(event.srcElement).position().top + 22 + "px");
	$(cur_layer_pop).css("left", $(event.srcElement).position().left - 2 + "px");
	cur_layer_pop.style.display = "block";
	cur_layer_pop.style.height  = "";

	if( document.all[div_name+"_inner"]!=null && typeof document.all[div_name+"_inner"]!="undefined" ){
		document.all[div_name+"_inner"].style.display = "block";
		document.all[div_name+"_inner"].style.height = "";
	}
}

function hideLayerPop(mEvt) {
	if(typeof mEvt!="undefined"){
		eval(mEvt);
	}
	cur_layer_pop.style.display = "none";
}

function layerTopPt(div_name){
	var verticalOffset		= -75;         // vertical offset of the dialog from center screen, in pixels

	var top = (($(window).height() / 2) - ($("#"+div_name).outerHeight() / 2)) + $.alerts.verticalOffset;
	if( top < 0 ) top = 0;

	// IE6 fix
	if( $.browser.msie && parseInt($.browser.version) <= 6 ) top = top + $(window).scrollTop();

	return top+"px";
}

function layerLeftPt(div_name){
	var horizontalOffset	= 0;           // horizontal offset of the dialog from center screen, in pixels/

	var left = (($(window).width() / 2) - ($("#"+div_name).outerWidth() / 2)) + $.alerts.horizontalOffset;
	if( left < 0 ) left = 0;

	return left+"px";
}


//����ڹ�ȣ ��ȿ�� ����
function isValidCustNoChk(strNumb){
	//������?
	if(isEmpty(strNumb)){
		return null;
	}
	// 10�ڸ� �����ΰ�?
	if((getByteLength(strNumb) != 10) || (!isNum(strNumb)) ) {
		alert("����ڵ�Ϲ�ȣ�� 10�ڸ� �����Դϴ�.");
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
		alert("�ùٸ��� ���� ����ڵ�Ϲ�ȣ�Դϴ�.");
		return false;
	}
	return  true;
}


/****************************************************************
  Xecure Ajax �Լ� �߰� ����
  ****************************************************************/
var xmlHttp;
function createXMLHttpRequest() {
	if (window.ActiveXObject) {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	else if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	}
}
function sendAjax(url, param, callBack, xmlHttpObj) {
	url   = XecureAjaxGet(url);
	param = XecureAjaxPost(param);

	createXMLHttpRequest();
	xmlHttp.onreadystatechange = callBack;
	xmlHttp.open("POST", url, true);
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
	xmlHttp.send(param);
}
function sendAjaxNoEnc(url, param, callBack, xmlHttpObj) {
	createXMLHttpRequest();
	xmlHttp.onreadystatechange = callBack;
	xmlHttp.open("POST", url, true);
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
	xmlHttp.send(param);
}
function sendAjaxSync(url, param, callBack, xmlHttpObj) {
	url   = XecureAjaxGet(url);
	param = XecureAjaxPost(param);

	createXMLHttpRequest();
	xmlHttp.open("POST", url, false);
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
	xmlHttp.send(param);
	return xmlHttp.responseText;
}
/****************************************************************
  Xecure Ajax �Լ� �߰� ��
  ****************************************************************/

/********************************************************
*
*  2010-08-20 �߰�
*
********************************************************/

/********************************************************
* Function      : openModal()
* Parameter     : String url (url)
* Parameter     : String target (parameter)
* Parameter     : String feature (�˾� option)
* Description   : xecure modal
********************************************************/
function openModal(url, target, feature){
	var qs ;
	var path = "/";
	var cipher;
	var xecure_url;
	var result = new Object();

	// get path info & query string & hash from url
	qs_begin_index = url.indexOf('?');
	path = getPath(url);
	// get query string action url
	if ( qs_begin_index < 0 ) {
		qs = "";
	}
	else {
		qs = url.substring(qs_begin_index + 1, url.length );
	}

	if( gIsContinue == 0 ) {
		gIsContinue = 1;
		if( IsNetscape60() )		// Netscape 6.0
			cipher = document.XecureWeb.nsIXecurePluginInstance.BlockEnc(xgate_addr, path, XecureEscape(qs), "GET");
		else
			cipher = document.XecureWeb.BlockEnc(xgate_addr, path, XecureEscape(qs),"GET");
		gIsContinue = 0;
	}
	else {
		alert(busy_info);
		return false;
	}

	if( cipher == "" )	return XecureWebError();

	xecure_url = path + "?q=" + escape_url(cipher);

	if (feature=="" || feature==null)
		result = showModalDialog ( xecure_url, target );
	else
		result = showModalDialog(xecure_url, target, feature );

	return result;
}


function uf_show_detail_condition(btnId) {
	var divObj   = document.getElementById("detail_box");
	var divObjb  = document.getElementById("detail_boxb");
	var divObjsb = document.getElementById("search_boxb");

	$(divObjsb).attr("class", "search_boxb");

	$(divObj).attr("style", "display:block");
	$(divObjb).attr("style", "display:block");

	/*
	var btnObj = document.getElementById(btnId);

	$(btnObj).attr("style", "display:none");
	*/
}

function uf_hide_detail_condition(btnId) {

	var divObj   = document.getElementById("detail_box");
	var divObjb  = document.getElementById("detail_boxb");
	var divObjsb = document.getElementById("search_boxb");

	$(divObjsb).attr("class", "search_boxb1");

	$(divObj).attr("style", "display:none");
	$(divObjb).attr("style", "display:none");

	$("#" + btnId).attr("style", "display:;");
}


/*
 * 2012.12.24
 *�����ý� �ΰǺ� ��ư Ȱ��ȭ(����)
 */
function fnAbleItxpAdtn(obj,dv){

	//�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
	if( dv == null ){//�����켱
		var idx = $(obj).attr('id').split('_')[1];

		if(($(obj).val() == "B0101") ||	($(obj).val() == "B0102") || ($(obj).val() == "B0203") || ($(obj).val() == "B0204") || ($(obj).val() == "B0205")){
			$('#ItxpAdtnInfo_'+idx).parent().show();
		}else{
			$('#ItxpAdtnInfo_'+idx).parent().hide();
		}
	}else{//���켱

		if( $(obj).val() == "B0101" || $(obj).val() == "B0102" || $(obj).val() == "B0203"
			|| $(obj).val() == "B0204" || $(obj).val() == "B0205"){

			$('.cellItxpAdtnInfo').show();
			$('.cellEtubAdtnInfo').hide();
			$('#ItxpList > colgroup > col').each(function(index){

				if( index == 0 || index == 7 ){ return true; }//cointinue;

				var $this = $(this);

				var w = parseInt($this.attr('width').replace('%',''),10);

				if( index == 1 && w == 18) return false;//break;

				try{
					if( index == 6 ){
						$this.removeAttr('width');
					}else{
						$this.attr('width',(w+1)+'%');
					}
				}catch(e){
					alert(e.message);
				}
			});

			$('.dyncols').attr('colspan',8);

		}else{

			$('.cellItxpAdtnInfo').hide();
			if($(obj).val() == "B0201") {
				$('.cellEtubAdtnInfo').show();
			} else {
				$('.cellEtubAdtnInfo').hide();
			}
			
			$('#ItxpList > colgroup >col').each(function(index){
				if( index == 0 || index == 7 ){ return true; }
				var $this = $(this);
				var w = 0;
				try{
					w = parseInt($this.attr('width').replace('%',''),10);
				}catch(e){}

				if( index == 6 ){
					$this.attr('width','5%');
				}else{
					$this.attr('width',(w-1)+'%');
				}
			});


			if($(obj).val() == "B0201") {
				$('.dyncols').attr('colspan',8);
			} else {
				$('.dyncols').attr('colspan',7);
			}
		}
	}
}

/****************`****************************************
* ����� �� ����߽�,�ߺ��߽� �� �޴� �̵� ó��(���ð��� �� ����)
********************************************************/
function fnEvdcRegTabUrl(url){

	uf_proce_display_on();
	fn_url(url+"?SBJT_MAP_KEYS="+document.rtr_str_form.SBJT_MAP_KEYS.value)

}


/********************************************************
* ���켱 ��Ͻ� �Է� �� ���� ó���� ����
********************************************************/
function fnOpenTrFocus(obj,idx){
	$('#SplyAmtDfamtRsn_tr_'+idx).next().show();
	$(obj).css('border','1px solid #EC7E07').focus();
}

/********************************************************
* �����Ͻ� ����� �ŷ�ó ���� ���� �Է��� ����
********************************************************/
function setSqbnSplrExctnRsn(idx){
	alert("�޾� �Ǵ� ��������� �ŷ�ó �Դϴ�.\n\n[������������]�� ����ϼž� ����û�� �Ͻ� �� �ֽ��ϴ�.");
	$('#SplyAmtDfamtRsn_tr_'+idx).next().show();
	$('#SqbnSplrExctnRsn_tbl_'+idx).show();
	$('#SqbnSplrExctnRsnYn_'+idx).val('Y');//������ ���� vaildate
	fnOpenTrFocus(document.getElementById('SqbnSplrExctnRsn_'+idx),idx);
}


/***
 * �ڱݰ�����ü
 * **/
function setEnabledBnkAcctInfo(ridx){

	if( typeof ridx == 'undefined' ){

		if( document.frm.ExctnStgDv[0].checked == true ){
			document.getElementById("RcvBnkCd").style.display		= "";
			document.getElementById("RcvAcctNo").style.display		= "";
			document.getElementById("idRcvBnkNm").style.display 	= "none";
			document.getElementById("idMyAcctNo").style.display 	= "none";
			document.getElementById("idFvrtAcct").style.display 	= "inline";
			//document.getElementById("idowacBtn").style.display 		= "inline";
		}else{
			document.getElementById("RcvBnkCd").style.display			= "none";
			document.getElementById("RcvAcctNo").style.display			= "none";
			document.getElementById("idRcvBnkNm").style.display 		= "";
			document.getElementById("idMyAcctNo").style.display 		= "";
			document.getElementById("idFvrtAcct").style.display 		= "none";
			//document.getElementById("idowacBtn").style.display 			= "none";
		}

			document.getElementById("idExctnStgDv_td1").style.display 	= "inline";
			document.getElementById("idExctnStgDv_td2").style.display 	= "none";
			document.getElementById("idExctnStgDv_td2").innerHTML		= "";

			document.getElementById("RcvBnkCd").value					= "";
			document.getElementById("RcvAcctNo").value					= "";
			document.getElementById("OwacNm").value						= "";
			document.getElementById("RcvBnkCd").disabled				= false;
			document.getElementById("RcvAcctNo").disabled				= false;
			document.getElementById("OwacNm").disabled					= false;
	}else{

		if( document.getElementById("ExctnStgDv1_"	+ridx).checked == true ){
			document.getElementById("RcvBnkCd_"		+ridx).style.display	= "";
			document.getElementById("RcvAcctNo_"	+ridx).style.display	= "";
			document.getElementById("idRcvBnkNm_"	+ridx).style.display 	= "none";
			document.getElementById("idMyAcctNo_"	+ridx).style.display 	= "none";
			document.getElementById("idFvrtAcct_"	+ridx).style.display 	= "inline";
			//document.getElementById("idowacBtn_"	+ridx).style.display 	= "inline";
		}else{
			document.getElementById("RcvBnkCd_"		+ridx).style.display	= "none";
			document.getElementById("RcvAcctNo_"	+ridx).style.display	= "none";
			document.getElementById("idRcvBnkNm_"	+ridx).style.display 	= "inline";
			document.getElementById("idMyAcctNo_"	+ridx).style.display 	= "inline";
			document.getElementById("idFvrtAcct_"	+ridx).style.display 	= "none";
			//document.getElementById("idowacBtn_"	+ridx).style.display 	= "none";
		}

			document.getElementById("idExctnStgDv_td1_"	+ridx).style.display 	= "inline";
			document.getElementById("idExctnStgDv_td2_"	+ridx).style.display 	= "none";
			document.getElementById("idExctnStgDv_td2_"	+ridx).innerHTML		= "";
			document.getElementById("RcvBnkCd_"			+ridx).value			= "";
			document.getElementById("RcvAcctNo_"		+ridx).value			= "";
			document.getElementById("OwacNm_"			+ridx).value			= "";
			document.getElementById("RcvBnkCd_"			+ridx).disabled			= false;
			document.getElementById("RcvAcctNo_"		+ridx).disabled			= false;
			document.getElementById("OwacNm_"			+ridx).disabled			= false;
			document.getElementById("OwacNm_"			+ridx).readonly			= 'readonly';
	}
}

/***
 * �����켱 :
 * �ΰǺ����ް��¸� ����ϴ� ����� ��� �ΰǺ� ��� üũ
 ***/
function chkItxpPsnl(psnl){
	var robj = null;
	var cnt_pnsl_in = 0;
	var cnt_pnsl_out = 0;
	if( psnl == 'Y' ){
		for( var i = 0 ; i < document.frm.itxp_cnt.value ; i++ ){
			robj = eval('document.frm.SelSubDtlsItxpCd_'+i);
			if('Y' == itxpPsnlYn(robj.value)){
				cnt_pnsl_in++;
			}else if( robj.value != "" ){
				cnt_pnsl_out++;
			}
		}
		if( cnt_pnsl_in > 0 ){
			if( cnt_pnsl_out > 0 ){
				alert('�ΰǺ� ����Ͻÿ��� �ΰǺ� ��� ��� �����մϴ�.\n(�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�)');
				return -1;
			}
			return 1;
		}
	}
	return 0;
}

/***
 * �ΰǺ� ��񿩺�
 ***/
function itxpPsnlYn(_SelDtlsItxpCd){
	var yn = 'N';
	//�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
	if((_SelDtlsItxpCd == "B0101001") || (_SelDtlsItxpCd == "B0102001") || (_SelDtlsItxpCd == "B0203001")
			|| (_SelDtlsItxpCd == "B0204001") || (_SelDtlsItxpCd == "B0205001")
	//2014.06.09 kbm : '14�� 5�� 1�� ���� �űԼ����� �߰��� ���� ������ > �ΰǺ� > ��,�ܺ��ΰǺ� �߰�
			|| (_SelDtlsItxpCd == "B0204002") || (_SelDtlsItxpCd == "B0204003")
	){
		yn = 'Y';
	}
	return yn;

}


/**
 * ��Ÿ�����Ұ��� ��� ��ȸ(�����ü�.��������)
 */
var EtcImplItxpCd = [];

/*********************************************
 * uf_etcImplExc	��Ÿ�����Ұ��� ��� ��ȸ(�����ü�.��������)
 * @param obj
 * @return
 ********************************************/
function uf_etcImplExc(obj){

	var objIdx = obj.id.split('_')[1];

	//��Ÿ�����Ұ��� ��� ��ȸ(�����ü�.��������)
	$('#etcimpex_' + objIdx).hide();
	if( frm.Evdc_Dv.value == "E" ){
		for(var i = 0 ; i < EtcImplItxpCd.length; i++){
			if( EtcImplItxpCd[i] == $('#SelSubDtlsItxpCd_'+objIdx).val() ){

				$('#etcimpex_' + objIdx).show();
				var params = "";
				params += 'EtcEvdcExcCd=' + $('#EtcEvdcExcCd_'+objIdx).val();
				params += '&EtcEvdcExcNo=' + $('#EtcEvdcExcNo_'+objIdx).val();

				result = openModalEtcImplExc(frm,params);

				if(typeof result != "undefined"){
					if(result.length > 6){
						var arr = result.split('');
						var _EtcEvdcExcCd = arr[0];
						$("#EtcEvdcExcCd_"+objIdx).val(_EtcEvdcExcCd);

						arr = jQuery.grep(arr, function(r, i){  return (i > 0); });
						_EtcEvdcExcNo = arr.join('');

						$("#EtcEvdcExcNo_"+objIdx).val(_EtcEvdcExcNo);
					}else{
						return uf_etcImplExc(obj);
					}
				}else{
					alert("���õ� ����� [��Ÿ��������] ������ ����(�Է�)�ϼž� �մϴ�.\n�˾������� �Ǿ������� �����Ͽ� �ֽñ� �ٶ��ϴ�.");
					return uf_etcImplExc(obj);
				}
				return true;
				break;
			}
		}
		$("#etc_SplrCoNm_" + objIdx).attr('disabled',false);		//ȸ��� disabled false 20141218 modified by sonpro
	}

	$("#EtcEvdcExcCd_"+objIdx).val('');//�ʱ�ȭ
	$("#EtcEvdcExcNo_"+objIdx).val('');//�ʱ�ȭ

	return false;
}



/*********************************************
 * uf_rsltEtcImplExc	��Ÿ�����Ұ��� ��� �����ȸ(�����ü�.��������)
 * @param obj
 * @return
 ********************************************/
function uf_rsltEtcImplExc(obj){

	var objIdx = obj.id.split('_')[1];

	//��Ÿ�����Ұ��� ��� ��ȸ(�����ü�.��������)
	$('#etcimpex_' + objIdx).hide();
	if( frm.Evdc_Dv.value == "E" ){
		for(var i = 0 ; i < EtcImplItxpCd.length; i++){
			if( EtcImplItxpCd[i] == $('#SelSubDtlsItxpCd_'+objIdx).val() ){

				$('#etcimpex_' + objIdx).show();
				var params = "";
				params += 'EtcEvdcExcCd=' + $('#EtcEvdcExcCd_'+objIdx).val();
				params += '&EtcEvdcExcNo=' + $('#EtcEvdcExcNo_'+objIdx).val();

				result = openModalEtcImplExc(frm,params,'/jsp/pop/P01_33_01.jsp','360');
				break;
			}
		}
	}
}



/*********************************************
 * chkEtcEvdcExc	��Ÿ�������� ��� üũ
 * @return boolean
 ********************************************/
function chkEtcEvdcExc(){
	var cntTotl = 0;
	var cntEtcExc = 0;
	//2013.2.27 ��Ÿ�������� ��� �� ��� ��� ���
	/*
	if( frm.Evdc_Dv.value == "E" ){

		for(var i = 0; i < document.forms['frm'].elements['itxp_cnt'].value; i++){
			if( $('#SelSubDtlsItxpCd_'+i).val() == "" ) continue;
			for(var k = 0 ; k < EtcImplItxpCd.length; k++){
				if( EtcImplItxpCd[k] == $('#SelSubDtlsItxpCd_'+i).val() ){
					cntEtcExc++;
					break;
				}
			}
			cntTotl++;
		}//end of for

		if( cntEtcExc > 0 && cntEtcExc != cntTotl ){
			alert("��Ÿ�������� ��� ����Ͻ� �� �ֽ��ϴ�. ����� Ȯ���ϼ���");
			return false;
		}
	}
	*/
	return true;
};



/******************************************************************
 * fnNexFocus		 ���ͽ� �̵�
 * @param
 * @return
******************************************************************/
function fnNextFocus(obj,nextNm){
	var idx = obj.id.split('_')[1];
	$('#'+nextNm+'_'+idx).focus();
};



/******************************************************************
 * ������ �ɼ� ����
******************************************************************/
var arrSubDtlsItxpOptInfo = [];
function SubDtlsItxpOptInfo(subDtlsItxpCd, acnmAuthYn, myAcctTrnsAlwnYn){
	this.SubDtlsItxpCd 		= subDtlsItxpCd;
	this.AcnmAuthYn 		= acnmAuthYn;		//�Ǹ���������
	this.MyAcctTrnsAlwnYn	= myAcctTrnsAlwnYn;	//�ڰ�����ü��뿩��
	return this;
}

/******************************************************************
 * chkMyAccTrnsAlwnYn �ڰ�����ü��� ��� üũ
 * @param
 * @return
******************************************************************/
function chkMyAccTrnsAlwnYn(ItxpCd,nprfInstYn,opagYn){
	var frm_key = document.rtr_str_form;
	var chk = false;

	for(var i = 0 ; i < arrSubDtlsItxpOptInfo.length; i++ ){
		if( ItxpCd == arrSubDtlsItxpOptInfo[i].SubDtlsItxpCd && 'Y' == arrSubDtlsItxpOptInfo[i].MyAcctTrnsAlwnYn  ){
			if(("B0301001" == arrSubDtlsItxpOptInfo[i].SubDtlsItxpCd) && "N"==nprfInstYn){
				chk = false;
				break;
			//2014.12.26 kbm ���� : ������ üũ ���� ����ȭ �� �þ����� 14�� 5�� 1�� ���ĺ��ʹ� �ڰ�����ü�� �ȵǵ��� ����
			}else if(("B0201015" == arrSubDtlsItxpOptInfo[i].SubDtlsItxpCd) && "Y"==opagYn){
				chk = false;
				break;
			}else{
				chk = true;
				break;
			}
		}
	}
	return chk;
}



/******************************************************************
 * chkAcnmAuthPass	�Ǹ����� ��� ������ üũ
 * @param
 * @return
******************************************************************/
function chkAcnmAuthPass(ItxpCd){
	var chk = false;
	for(var i = 0 ; i < arrSubDtlsItxpOptInfo.length; i++ ){
		if( ItxpCd == arrSubDtlsItxpOptInfo[i].SubDtlsItxpCd && 'N' == arrSubDtlsItxpOptInfo[i].AcnmAuthYn  ){
			chk = true;
			break;
		}
	}
	return chk;
}

/******************************************************************
 * uf_SelfInfoInp	�ڱ������Է�
 * @author	������
 * @date	2014.07.29
 * @param
 * @return
******************************************************************/
function uf_SelfInfoInp(InstNm, BzRegNo, TpopCd, TpbzCd, LoctDtlsAdr, ReprNm){
	if($('#etc_SelfInfoInp').is(":checked")) {
		if($('#etc_SplrPrsn_0').is(":checked")) {
			$('#etc_SplrPrsn_0').attr('checked', false);
		}
		$('#idBzRegNo').hide();
		$('#etc_ChkBzRegNo_0').hide();
		$('#etc_SplrBzRegNo_0').attr('disabled',false);

		if(InstNm != "" && InstNm != null) {
			$('#etc_SplrCoNm_0').attr('readonly', true);
			$('#etc_SplrCoNm_0').css({backgroundColor: '#d2d2d2'});
			$('#etc_SplrCoNm_0').val(InstNm);
			try {
				$('#etc_SplrCoNm_0').prop('readonly', true);
			} catch (e) { }
		}
		if(BzRegNo != "" && BzRegNo != null) {
			$('#etc_SplrBzRegNo_0').attr('readonly', true);
			$('#etc_SplrBzRegNo_0').css({backgroundColor: '#d2d2d2'});
			$('#etc_SplrBzRegNo_0').val(BzRegNo);
			try {
				$('#etc_SplrBzRegNo_0').prop('readonly', true);
			} catch (e) { }
		}
		if(TpopCd != "" && TpopCd != null) {
			$('#etc_SplrTpopNm_0').attr('readonly', true);
			$('#etc_SplrTpopNm_0').css({backgroundColor: '#d2d2d2'});
			$('#etc_SplrTpopNm_0').val(TpopCd);
			try {
				$('#etc_SplrTpopNm_0').prop('readonly', true);
			} catch (e) { }
		}
		if(TpbzCd != "" && TpbzCd != null) {
			$('#etc_SplrTpbzNm_0').attr('readonly', true);
			$('#etc_SplrTpbzNm_0').css({backgroundColor: '#d2d2d2'});
			$('#etc_SplrTpbzNm_0').val(TpbzCd);
			try {
				$('#etc_SplrTpbzNm_0').prop('readonly', true);
			} catch (e) { }
		}
		if(LoctDtlsAdr != "" && LoctDtlsAdr != null) {
			$('#etc_SplrAdr_0').attr('readonly', true);
			$('#etc_SplrAdr_0').css({backgroundColor: '#d2d2d2'});
			$('#etc_SplrAdr_0').val(LoctDtlsAdr);
			try {
				$('#etc_SplrAdr_0').prop('readonly', true);
			} catch (e) { }
		}
		if(ReprNm != "" && ReprNm != null) {
			$('#etc_SplrReprNm_0').attr('readonly', true);
			$('#etc_SplrReprNm_0').css({backgroundColor: '#d2d2d2'});
			$('#etc_SplrReprNm_0').val(ReprNm);
			try {
				$('#etc_SplrReprNm_0').prop('readonly', true);
			} catch (e) { }
		}
	} else {
		$('#etc_ChkBzRegNo_0').show();
		$('#idBzRegNo').show();

		$('#etc_SplrCoNm_0').attr('readonly', false);
		$('#etc_SplrCoNm_0').css({backgroundColor: '#ffffff'});
		$('#etc_SplrCoNm_0').val("");

		if($('#etc_SplrBzRegNo_0').attr('disabled') == false) {
			$('#etc_SplrBzRegNo_0').attr('readonly', false);
			$('#etc_SplrBzRegNo_0').css({backgroundColor: '#ffffff'});
			$('#etc_SplrBzRegNo_0').val("");
		}

		$('#etc_SplrTpopNm_0').attr('readonly', false);
		$('#etc_SplrTpopNm_0').css({backgroundColor: '#ffffff'});
		$('#etc_SplrTpopNm_0').val("");

		$('#etc_SplrTpbzNm_0').attr('readonly', false);
		$('#etc_SplrTpbzNm_0').css({backgroundColor: '#ffffff'});
		$('#etc_SplrTpbzNm_0').val("");

		$('#etc_SplrAdr_0').attr('readonly', false);
		$('#etc_SplrAdr_0').css({backgroundColor: '#ffffff'});
		$('#etc_SplrAdr_0').val("");

		$('#etc_SplrReprNm_0').attr('readonly', false);
		$('#etc_SplrReprNm_0').css({backgroundColor: '#ffffff'});
		$('#etc_SplrReprNm_0').val("");

		try {
			$('#etc_SplrCoNm_0').prop('readonly', false);
			$('#etc_SplrBzRegNo_0').prop('readonly', false);
			$('#etc_SplrTpopNm_0').prop('readonly', false);
			$('#etc_SplrTpbzNm_0').prop('readonly', false);
			$('#etc_SplrAdr_0').prop('readonly', false);
			$('#etc_SplrReprNm_0').prop('readonly', false);
		} catch (e) { }
	}
}


/******************************************************************
 * uf_tglSplrPrsn	�ŷ�ó ���ΰŷ� ����
 * @author	������
 * @date	2013.03.25
 * @param
 * @return
******************************************************************/
function uf_tglSplrPrsn(obj){
	var frm = document.frm;
	var idx = obj.id.split('_')[2];

	//������ üũ
	ItxpCd = $('#SelSubDtlsItxpCd_' + idx).val();
	if( ItxpCd == '' || ItxpCd == '����' ){
		alert('��������� �����ϼ���.');
		obj.checked = false;
		$('#SelDtlsItxpCd_' + idx).focus();
		return false;
	}

//	$('#idBzRegNo').show();
//
//	// ���ΰŷ� ���� üũȮ��
//	if($('#etc_SelfInfoInp').is(":checked")) {
//		$('#etc_SelfInfoInp').attr('checked', false); // �ڱ������Է� üũ����
//		$('#etc_SplrCoNm_0').attr('disabled',false);
//	} else {
//		if($('#etc_SplrPrsn_0').is(":checked")) {
//			$('#etc_ChkBzRegNo_0').hide();
//			$('#img_ChkBzRegNo_0').hide();
//		} else {
//			$('#etc_ChkBzRegNo_0').show();
//			$('#img_ChkBzRegNo_0').show();
//		}
//	}

	//chkMyAccTrnsAlwnYn �ڰ�����ü��� ��� üũ
	if( chkAcnmAuthPass(ItxpCd) ){
		frm.SplrAuth.value = '1';
		$('#etc_ChkBzRegNo_'+idx).hide();
	}else{
		frm.SplrAuth.value = '0';
		$('#etc_ChkBzRegNo_'+idx).show();
	}

	//
	if( obj.checked == true ){

		var msg = 'RCMS�� ���� ������ �ŷ��� ����ڰ� �ŷ��� ��Ģ���� �ϸ�,\n';
			msg += '�Ұ����� ��� ���ΰŷ���� �� �Ҹ��ڷḦ �߰� ���ε��ؾ� �մϴ�.\n\n';
			msg += '�ش系���� �������, �¶��������� ���� ����� �����ϰ� �˴ϴ�.\n\n';
			msg += '�����Ͻñ� �ٶ��ϴ�.';

		alert(msg);

		$('#etc_SplrBzRegNo_' + idx ).attr('disabled',true).val('0000000000').css('backgroundColor','#d2d2d2');
		$('#etc_ChkBzRegNo_'+idx).hide();
		$('#SplrAuth').val('1');
	}else if(  obj.checked == false ){
		$('#etc_SplrBzRegNo_' + idx ).attr('disabled',false).val('').css('backgroundColor','#ffffff');
		if( $('#SplrAuth').val() != '1' ){
			$('#etc_ChkBzRegNo_'+idx).show();
			$('#SplrAuth').val('0');
		}
	}

	//20141022 ������ �߰� : ���ΰŷ� üũ ���� �� ����� üũ(���������������ΰǺ�(������))
	uf_IndirAmtBzRegChk('0', obj);
}

/******************************************************************
 * setSplrPrsn	�ŷ�ó ���ΰŷ� ����
 * @author	������
 * @date	2013.03.25
 * @param
 * @return
******************************************************************/
function setSplrPrsn(frm,frm_key){
	//------------------------------------------------------------ BEGIN
	//�����ü������ �� ����� ���ΰŷ� �Ұ�
	var prsn = true;
	for(var i=0; i<frm.itxp_cnt.value; i++){
		if( "B0201" == $("#SelDtlsItxpCd_"+i).val() ){
			prsn = false;
			break;
		}
	}

	//��Ÿ������ ���ΰŷ� ����
	if( frm.Evdc_Dv.value == 'E' ){
		if( false == prsn ){
			$('#etc_SplrPrsn_0').attr('disabled',true).attr('checked',false);
			$('#etc_SplrBzRegNo_0').attr('readonly',false).val('').css('backgroundColor','#fff');
			$('#etc_SplrCoNm_0').attr('readonly',false).val('').css('backgroundColor','#fff');
			frm.SplrAuth.value = '0';
		}else{
			$('#etc_SplrPrsn_0').attr('disabled',false).attr('checked',false);
		}
		setChkBzRegNo('0',frm_key.S_NPRF_INST_YN.value, frm_key.S_OPAG_YN.value);
	}else if( frm.Evdc_Dv.value == 'T' || frm.Evdc_Dv.value == 'R'){
		setChkBzRegNo('0',frm_key.S_NPRF_INST_YN.value, frm_key.S_OPAG_YN.value);	//Add CashReceipt 20141216 modified by sonpro
	}
	//------------------------------------------------------------ END

}



/*********************************************
 * uf_ItxpLimDtl		��� ����ѵ�
 * @param
 * @return
 ********************************************/
function uf_ItxpLimDtl(){
	var rtr_str	= document.rtr_str_form;
	var frm = document.frm;

	if(!bAutoSbjtSch()) 		return;			// ������ȸ����

	if( typeof rtr_str == 'undefined' ) rtr_str = frm;

	get2post(frm, "AGRMT_SEQ_NO="+rtr_str.S_AGRMT_SEQ_NO.value);
	get2post(frm, "AGRMT_INST_ID="+rtr_str.S_AGRMT_INST_ID.value);

	uf_frmNewWin(frm, '/jsp/pop/P01_21_00.jsp', 'TAXVIEW1_1', '650', '450','no');
	removeTempAttribute(frm);			// get2post ����
}

/*********************************************
 * uf_IndirAmtBzRegChk	�ڰ��� ��ü �� ������ �� ��� �ڰ��� ����� üũ
 * @author	������
 * @date	2014.10.22
 * @param	type : 0 - ����
 * 				   1 - ���
 * 			obj  : this
 * @return
 ********************************************/
function uf_IndirAmtBzRegChk(type, obj){
	var nprfInstYn		= $('#S_NPRF_INST_YN').val();						// �񿵸��������
	var opagYn			= $('#S_OPAG_YN').val();							// ���� ������ ���� ��,����� ���� ����

	if(type == "0") {
		// ��Ÿ�ƴѰ�� ����
		if('E' != $('#evma_gb option:selected').val()) {
			return;
		}
		var SelDtlsItxpCd 	= $('#SelSubDtlsItxpCd_0 option:selected').val();	// ������ üũ
		var ExctnStgDv 		= $('#ExctnStgDv2_0').is(':checked');				// �ڰ�����ü
		var kind_TrnsRchAcc = $('#kind_TrnsRchAcc option:selected').val();		// �ڰ��������
		var etc_SplrBzRegNo = $('#etc_SplrBzRegNo_0').attr("disabled");			// ����ڹ�ȣ

		// 1. ������ ������
		// 2. �ڰ�����ü
		// 3. ����� : ���������������ΰǺ�(������)
		// 4. ����ڵ�Ϲ�ȣ ��Ȯ�� ����
		if("B0301001" == SelDtlsItxpCd && true == ExctnStgDv && "B03009" == kind_TrnsRchAcc && false == etc_SplrBzRegNo) {
			$('#etc_ChkBzRegNo_0').hide();
			$('#SplrAuth'		 ).val('1');
		} else {
			// 5. ���ΰŷ�üũ���� Ȯ��
			var etc_SplrPrsn 	= $('#etc_SplrPrsn_0').is(':checked');				// ���ΰŷ�üũ
			if(true == etc_SplrPrsn) {
				$('#etc_ChkBzRegNo_0').hide();
				$('#SplrAuth'		 ).val('1');
			} else {
				var chk = chkMyAccTrnsAlwnYn( SelDtlsItxpCd, nprfInstYn, opagYn );
				if(true == chk){
					$('#etc_ChkBzRegNo_0').hide();
					$('#SplrAuth'		 ).val('1');
				}else{
					if(false == etc_SplrBzRegNo){
						$('#etc_ChkBzRegNo_0').show();
						$('#SplrAuth'		 ).val('1');
					}else{
						$('#etc_ChkBzRegNo_0').show();
						$('#SplrAuth'		 ).val('0');
					}
				}
			}
		}

	} else {
		var target 			= $(obj).attr('id').split('_')[2];

		// ��Ÿ�ƴѰ�� ����
		if('E' != $('#EvmaGb_'+target+' option:selected').val()) {
			return;
		}

		var SelDtlsItxpCd 	= $('#SelSubDtlsItxpCd option:selected').val();				// ������ üũ
		var ExctnStgDv 		= $('#ExctnStgDv2_'+target).is(':checked');					// �ڰ�����ü
		var kind_TrnsRchAcc = $('#kind_TrnsRchAcc_'+target+' option:selected').val();	// �ڰ��������
		var etc_SplrBzRegNo = $('#etc_SplrBzRegNo_'+target).attr("disabled");			// ����ڹ�ȣ

		// 1. ������ ������
		// 2. �ڰ�����ü
		// 3. ����� : ���������������ΰǺ�(������)
		// 4. ����ڵ�Ϲ�ȣ ��Ȯ�� ����
		if("B0301001" == SelDtlsItxpCd && true == ExctnStgDv && "B03009" == kind_TrnsRchAcc && false == etc_SplrBzRegNo) {
			$('#etc_ChkBzRegNo_'+target).hide();
			$('#SplrAuth_'		+target).val('1');
		} else {
			// 5. ���ΰŷ�üũ���� Ȯ��
			var etc_SplrPrsn 	= $('#etc_SplrPrsn_'+target).is(':checked');				// ���ΰŷ�üũ
			if(true == etc_SplrPrsn) {
				$('#etc_ChkBzRegNo_'+target).hide();
				$('#SplrAuth_'		+target).val('1');
			} else {
				var chk = chkMyAccTrnsAlwnYn( SelDtlsItxpCd, nprfInstYn, opagYn );
				if(true == chk){
					$('#etc_ChkBzRegNo_'+target).hide();
					$('#SplrAuth_'		+target).val('1');
				}else{
					if(false == etc_SplrBzRegNo){
						$('#etc_ChkBzRegNo_'+target).show();
						$('#SplrAuth_'		+target).val('1');
					}else{
						$('#etc_ChkBzRegNo_'+target).show();
						$('#SplrAuth_'		+target).val('0');
					}
				}
			}
		}
	}
	return;
}

/*********************************************
 * uf_etcEvdcExcCdNull	��Ÿ�����Ұ��� ���(�����ü�.��������)�� ��� ��Ÿ���������ڵ� �ʼ�üũ
 * @param saveType 0:�����켱 1:���켱
 * @return
 ********************************************/
function uf_etcEvdcExcCdNull(saveType){
	var msg	=	"���õ� ����� [��Ÿ��������] ������ ����(�Է�)�ϼž� �մϴ�.\n�˾������� �Ǿ������� �����Ͽ� �ֽñ� �ٶ��ϴ�.";
	var rtnbool	=	true;
	//���켱
	if("1"==saveType){
		$.each(EtcImplItxpCd,function(index,value){
			if( EtcImplItxpCd[index] == $('#SelSubDtlsItxpCd').val() ){
				$("select[name=evma_gb]").each(function(index){
					if($(this).val()=="E" && (null == $('#EtcEvdcExcCd_'+index).val() || ""==$('#EtcEvdcExcCd_'+index).val())){
						//console.log($(this).attr("id") + " : E");
						alert(msg);
						rtnbool	=	false;
						return false;
					}
				});
			}
		});
	}else{
		//��Ÿ�����Ұ��� ��� ��ȸ(�����ü�.��������)
		if( frm.Evdc_Dv.value == "E" ){
			$.each(EtcImplItxpCd,function(indexI,valueI){
				$("select[name=SelSubDtlsItxpCd]").each(function(indexJ,valueJ){
					if( EtcImplItxpCd[indexI] == $(this).val() ){
						if(null == $('#EtcEvdcExcCd_'+indexJ).val() || ""==$('#EtcEvdcExcCd_'+indexJ).val()){
							alert("���õ� ����� [��Ÿ��������] ������ ����(�Է�)�ϼž� �մϴ�.\n�˾������� �Ǿ������� �����Ͽ� �ֽñ� �ٶ��ϴ�.");
							rtnbool	=	false;
							return false;
						}
					}
				});
			});
		}
	}
	return rtnbool;
}



