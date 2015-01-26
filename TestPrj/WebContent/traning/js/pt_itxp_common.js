

var BzExpSprnExctnYn = "N"; //�����и����� ����
var SelShrSorcSn = new Array();
var SelShrSorcNm = new Array();


function mkShrSorcSn(tObjIdx){
	var tObj = document.all["SelShrSorcSn"];

 	tObj.options.length = 1;
 	if( BzExpSprnExctnYn == "Y" && SelShrSorcSn.length > 0 ){
	 	$('#SelShrSorcSn').show();
		tObj.options[0] = new Option("����� �̻��",'',true,false);
	
		for(var i=0 ; i < SelShrSorcSn.length; i++){
			tObj.options[i+1] = new Option(SelShrSorcNm[i], SelShrSorcSn[i]);
		}	
 	}else{
		$('#SelShrSorcSn').hide();
 		tObj.options[0] = new Option("����� �̻��",'',true,false);
 	}
}


/******************************************************************
 * fnRemove		 ���̺� �ο� ����
 * @param
 * @return
******************************************************************/
function fnRemove(){
	var tbody = jQuery("#ItxpList>tbody");
	
	var flag = false;
	jQuery(jQuery(tbody).find("tr")).each(function(){
		
		if(typeof jQuery(":input[type=checkbox]", this) != 'undefined' 
				&& jQuery(":input[type=checkbox]", this).attr('checked') == true ){
			
			// ��ü ���� ����
			if(document.frm.itxp_cnt.value==1){
				alert("1�� �̻��� ����������� �ʿ��մϴ�.");
				return;
			}
			
			jQuery(this).next().next().remove();
			jQuery(this).next().remove();
			jQuery(this).remove();
			
			// ���̺� �ʵ� id ����
			jQuery(tbody).find(">tr").each(function(idx){
				rowIdx = parseInt(idx/3,10);
				if( rowIdx == 0 ){
					jQuery(this).removeClass('blue_line');	
				}
				
				if( jQuery(this).attr('id') != "" ){
					jQuery(this).attr('id','SplyAmtDfamtRsn_tr_'+rowIdx);
				}
				
				jQuery(this).find(":input").each(function(){
					var id = this.id;
					if(id){
						fnConvertId(this,rowIdx);
					}
				});

				jQuery(this).find("select").each(function(){
					var id = this.id;
					if(id){
						fnConvertId(this,rowIdx);
					}
				});

				jQuery(this).find("span").each(function(){
					var id = this.id;
					if(id){
						fnConvertId(this,rowIdx);
					}
				});

				jQuery(this).find("div").each(function(){
					var id = this.id;
					if(id){
						fnConvertId(this,rowIdx);
					}
				});
			
				jQuery(this).find("a").each(function(){
					var id = this.id;
					if(id){
						fnConvertId(this,rowIdx);
					}
				});
			});	
			
			document.frm.itxp_cnt.value	= parseInt(document.frm.itxp_cnt.value, 10)-1;
			
		}
	});
	

	
	//�ݾ� ����
	calc_amtSet(this,true);
}


function fnConvertId(obj,rowIdx){

	if( obj.id.split("_").length == 4 ){
		obj.id = obj.id.split("_")[0]+"_"+obj.id.split("_")[1]+"_"+obj.id.split("_")[2]+"_"+rowIdx;
	}else if( obj.id.split("_").length == 3 ){
		obj.id = obj.id.split("_")[0]+"_"+obj.id.split("_")[1]+"_"+rowIdx;
	}else{
		obj.id = obj.id.split("_")[0]+"_"+rowIdx;
		if( $(obj).hasClass('RcvAcctNo') ){
			obj.name = obj.name.split("_")[0]+"_"+rowIdx;
		}
	}

}



/******************************************************************
 * fnAdtnInfo		 �ΰǺ񳻿� ���
 * @param
 * @return
******************************************************************/
function fnAdtnInfo(obj){
	
	var frm			=	document.rtr_str_form;
	var frm_main	=	document.frm;
	var url, result,amt,param,arr_result;
	var tObjIdx = obj.id.split("_")[1];
	
	if( typeof update_enabled != 'undefined' && false == update_enabled ){
		alert("���� ���������� ������ �� �����ϴ�. ���������� Ȯ�� �ϼ���");
		return;
	}
	
	//��������üũ
	if( $("#EvmaGb_"+tObjIdx).val() == "" ){
		alert('������ �����ϼ���');
		$("#EvmaGb_"+tObjIdx).focus();
		return;
	}
	
	if(!chk_frm_value("SelDtlsItxpCd"))	return;
	//��������üũ
	if(!chk_frm_value("SelSubDtlsItxpCd"))	return;
	//�ΰǺ�,���������ΰ�츸 ��ϰ���
	if(!uf_AdtnRegItxpChk(frm_main.SelDtlsItxpCd.options[frm_main.SelDtlsItxpCd.options.selectedIndex].value, true)) return;
	
	//�ΰǺ� ����ý� �ΰǺ����ް��� ����
	PsnlItxpAcctNoSet();

	amt = Number($("#ItxpSplyAmt_"+tObjIdx).val().replace(/,/gi,"")) + Number($("#ItxpVatAmt_"+tObjIdx).val().replace(/,/gi,""));
	param	=	"ChkAmt="			+ amt;
	try{//�űԵ��
		param	+=	"&AgrmtInstId="		+ frm.S_AGRMT_INST_ID.value;
		param	+=	"&AgrmtSeqNo="		+ frm.S_AGRMT_SEQ_NO.value;
		param	+=	"&PmsId="			+ frm.S_PMS_ID.value;
		param	+=	"&BzClasCd="		+ frm.S_BZ_CLAS_CD.value;
		param	+=	"&SbjtId="			+ frm.S_SBJT_ID.value;
		param	+=	"&UnfyMgntInstYn="	+ frm.S_UNFY_MGNT_INST_YN.value;
	}catch(e){//����
		param	+=	"&AgrmtInstId="		+ frm_main.S_AGRMT_INST_ID.value;
		param	+=	"&AgrmtSeqNo="		+ frm_main.S_AGRMT_SEQ_NO.value;
		param	+=	"&PmsId="			+ frm_main.S_PMS_ID.value;
		param	+=	"&BzClasCd="		+ frm_main.S_BZ_CLAS_CD.value;
		param	+=	"&SbjtId="			+ frm_main.S_SBJT_ID.value;
		param	+=	"&UnfyMgntInstYn="	+ frm_main.S_UNFY_MGNT_INST_YN.value;
	}
	param	+=	"&ItxpCd="			+ document.getElementById('SelDtlsItxpCd').value;
	param 	+=	"&tObjIdx="			+ tObjIdx;
	
	frm_main.p_rchrInfo.value = $("#rchrInfo_"+tObjIdx).val();
	
	url = "/t01/t12/T12_01_30_0.jsp?"+param;
	

	//result = openModalNs(url, frm_main, "dialogWidth:800px; dialogHeight:410px; scroll:no");
	result = openModalNs(url, frm_main, "dialogWidth:800px; dialogHeight:510px; scroll:no");
		
	if(typeof result != "undefined"){
		if(result.length > 20){
			$("#ItxpAdtnInfo_"+tObjIdx).html('<img src="/bt/bt_regist4.gif" alt="���">');
			$("#rchrInfo_"+tObjIdx).val(result);			//�������������� ���ڿ�(������������ "/" ������ ������",")
		}else{
		}
	}
}

function SplrInfo(obj){
	var frm = document.frm;
	var frm_key	= document.rtr_str_form;
	var idx = jQuery(obj).attr('id').split('_')[1];
	
	
	_SelDtlsItxpCd = frm.SelSubDtlsItxpCd.value;
	
	//���ΰŷ� �ʱ�ȭ
	$('#etc_SplrPrsn_' 		+ idx).attr('disabled',false).attr('checked',false);
	$('#etc_SplrBzRegNo_'	+ idx).attr('disabled',false).val('').css('backgroundColor','#ffffff');
	
	//ī��� �ΰǺ� ����� �ź�
	//�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
	if( "C" == $('#EvmaGb_'+idx).val() ){		
		if('Y' == itxpPsnlYn(_SelDtlsItxpCd)){
			alert("ī��� �ΰǺ� ����� ��� �� �� �����ϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
			obj.selectedIndex = 0;
			return;
		}
		jQuery('#etc_ChkBzRegNo_'	+idx).hide();
		jQuery('#ChkBzRegNo_'		+idx).hide();
	}else{
		jQuery('#etc_ChkBzRegNo_'	+idx).show();
		jQuery('#ChkBzRegNo_'		+idx).show();
	}
	
	
	SplrInfoDisplay('Y',obj.value,"",idx);

	//��Ÿ�������� ó��
	uf_etcImplExc(obj);
	
	
	
	//���ΰŷ� ����
	if( typeof frm_key == 'undefined' ) frm_key = frm;
	setSplrPrsn(frm, frm_key, idx);
	
	if("E" != obj.value){
		obj.value = "";//ī��,���ڼ��ݰ�꼭�� ��� �˾����� ó���� ���� �ʱ�ȭ
	}
	
	
	
}

/*********************************************
 * uf_etcImplExc	��Ÿ�����Ұ��� ��� ��ȸ(�����ü�.��������)
 * @param obj
 * @return
 ********************************************/
uf_etcImplExc = function(obj){
	var objIdx = obj.id.split('_')[1];
	
	//��Ÿ�����Ұ��� ��� ��ȸ(�����ü�.��������)
	$('#etcimpex_' + objIdx).hide();
	if( $('#EvmaGb_'+objIdx).val() == "E" ){
		for(var i = 0 ; i < EtcImplItxpCd.length; i++){
			if( EtcImplItxpCd[i] == document.frm.SelSubDtlsItxpCd.value){
				
				$('#etcimpex_' + objIdx).show();
				var params = "";
				params += 'EtcEvdcExcCd=' + $('#EtcEvdcExcCd_'+objIdx).val();
				params += '&EtcEvdcExcNo=' + $('#EtcEvdcExcNo_'+objIdx).val();
				
				//result = openModalEtcImplExc(frm,params);
				result = openModalEtcImplExc(frm,params,undefined,undefined,objIdx);
				
				if(typeof result != "undefined"){
					if(result.length > 6){
						var arr = result.split('');
						var _EtcEvdcExcCd = arr[0];
						$("#EtcEvdcExcCd_"+objIdx).val(_EtcEvdcExcCd);
						
						arr = jQuery.grep(arr, function(r, i){  return (i > 0); });
						_EtcEvdcExcNo = arr.join('');

						$("#EtcEvdcExcNo_"+objIdx).val(_EtcEvdcExcNo);
					}else{
						uf_etcImplExc(obj);
					}
				}else{
					alert("���õ� ����� [��Ÿ��������] ������ ����(�Է�)�ϼž� �մϴ�.");
					uf_etcImplExc(obj);
				}
				break;
			}
		}
	}
};


/*********************************************
 * uf_etcImplExc	��Ÿ�����Ұ��� ��� ��ȸ(�����ü�.��������)
 * @param obj
 * @return
 ********************************************/
uf_rsltEtcImplExc = function(obj){
	var objIdx = obj.id.split('_')[1];
	
	//��Ÿ�����Ұ��� ��� ��ȸ(�����ü�.��������)
	$('#etcimpex_' + objIdx).hide();
	if( $('#EvmaGb_'+objIdx).val() == "E" ){
		for(var i = 0 ; i < EtcImplItxpCd.length; i++){
			if( EtcImplItxpCd[i] == document.frm.SelSubDtlsItxpCd.value){
				
				$('#etcimpex_' + objIdx).show();
				var params = "";
				params += 'EtcEvdcExcCd=' + $('#EtcEvdcExcCd_'+objIdx).val();
				params += '&EtcEvdcExcNo=' + $('#EtcEvdcExcNo_'+objIdx).val();
				
				//result = openModalEtcImplExc(frm,params,'/pop/T01_33_01.jsp','360');
				result = openModalEtcImplExc(frm,params,'/pop/T01_33_01.jsp','360',objIdx);

				break;
			}
		}
	}
};

/*********************************************
 * uf_setIconEtcImpl ��񺯰�� ��Ÿ�������� ������ ����
 * @param obj
 * @return
 ********************************************/
uf_setIconEtcImpl = function(){
	
	for(var i=0; i<document.frm.itxp_cnt.value; i++){
		$('#etcimpex_' + i).hide();
		if( $('#EvmaGb_' + i).val() == "E" ){
			for(var j = 0 ; j < EtcImplItxpCd.length; j++){
				if( EtcImplItxpCd[j] == document.frm.SelSubDtlsItxpCd.value){
					$('#etcimpex_' + i).show();
					break;
				}
			}
		}
	}
};

/******************************************************************
 * SplrInfoDisplay		 �ŷ�ó�������̾� display on/off 
 * @descrption			: pt_common.js override function
 * @param		crdSetlMeth:ī�������ı���(1:������/2:�ǽð���ü���)
 * 				val=Y : �������������������ϴ°��
 * @return
 * @author soneunjun
******************************************************************/
SplrInfoDisplay = function (val,evdcDv,crdSetlMeth,idx,pop){
	var frm	=	document.rtr_str_form;
	var bfrm = document.frm;
	var mode =	"1",rcv_acc_no="",rcv_bnk_cd="";
	if( idx == null ) idx = 0;
	if( pop == null ) pop = 'Y';
	
	
	if("Y" == val){
		if("C"==evdcDv){
			document.getElementById("ChkBzRegNo_"+idx).style.display = "none";//����ڹ�ȣ Ȯ�ι�ư ����
			document.getElementById("divTranInfoItem_"+idx).style.display 	= "none";		//������ü��û�׸�
			if("2" == crdSetlMeth ){	//�ǽð���ü��İ��
				document.getElementById("divTranInfoItem_"+idx).style.display 	= "block";
				mode	=	"4";
				//�ǽð���ü����� ���
				//�����������°� ������ ��������·� �Աݰ��¼����� 20110824 �̼���
				
					if( "" == $('#RcvAcctNo_'+idx).val() ){
						rcv_acc_no	=	frm.S_RCH_ACC_NO.value;
						rcv_bnk_cd	=	frm.S_RCH_ACC_BNK_CD.value;
					}else{
						
						rcv_acc_no	=	jQuery('#RcvAcctNo_'+idx).val();
						rcv_bnk_cd	=	jQuery('#RcvBnkCd_'+idx).val();
					}
				
			}
			
			
		}else{
			document.getElementById("divTranInfoItem_"+idx).style.display 	= "block";
		}
		
		
		
		if("E" == evdcDv){
			document.getElementById("divTranInfo_"+idx).style.display 	= "none";			//(�ſ�ī��/���ڼαݰ�꼭)�ŷ�ó�����Է����̺�
			document.getElementById("divTranInfo_etc_"+idx).style.display 	= "block";		//�ŷ�ó�����Է����̺�
			document.getElementById("idBzRegNo_"+idx).style.display			="inline";
		}else{
			document.getElementById("divTranInfo_"+idx).style.display 		= "block";
			document.getElementById("divTranInfo_etc_"+idx).style.display 	= "none";		//�ŷ�ó�����Է����̺�
		}
		
		
		// 2011.10.19 �µ���
		// ����밳���ڵ�A ����Ʈ�� ���� (���ڼ��ݰ�꼭, ��Ÿ����, ī������-�ǽð���ü���)
		if(!("C" == evdcDv && "1" == crdSetlMeth)){
			try{//�űԵ��
				document.getElementById("AchvInstIndv1Cd_"+idx).value					= frm.S_SBJT_ID.value;
			}catch(e){//����
				document.getElementById("AchvInstIndv1Cd_"+idx).value					= bfrm.S_SBJT_ID.value;
			}
		}
		
		
		//����޺�����
		if( isSubmit() ) return;	// ����ó��

		if( typeof bfrm.ExctnStgDv != 'undefined' && "C" == evdcDv && bfrm.ExctnStgDv.length > 1 ){
			//ī���� ��� �ٰ��� ��ϰ��� �ϹǷ� ��� üũ
			for(var i = 0 ; i < bfrm.ExctnStgDv.length ; i++){
				if( i >= idx && $('#EvmaGb_'+i).val() == 'C' ){
					try{//�űԵ��
						exctn_ExctnStgDv_v2(mode,'', frm.S_RCH_ACC_BNK_CD.value, frm.S_RCH_ACC_BNK_NM.value, frm.S_RCH_ACC_NO.value,  rcv_bnk_cd,rcv_acc_no, frm.S_MY_ACCT_TRNS_ALWN_YN.value, i);
					}catch(e){//����
						try{
						exctn_ExctnStgDv_v2(mode,'', bfrm.S_RCH_ACC_BNK_CD.value, bfrm.S_RCH_ACC_BNK_NM.value, bfrm.S_RCH_ACC_NO.value,  rcv_bnk_cd,rcv_acc_no, bfrm.S_MY_ACCT_TRNS_ALWN_YN.value, i);
						}catch(e){
							alert(e.message);
						}
					}
				}
			}
		}else{
			try{//�űԵ��
				exctn_ExctnStgDv_v2(mode,'', frm.S_RCH_ACC_BNK_CD.value, frm.S_RCH_ACC_BNK_NM.value, frm.S_RCH_ACC_NO.value,  rcv_bnk_cd,rcv_acc_no, frm.S_MY_ACCT_TRNS_ALWN_YN.value,idx);
			}catch(e){//����
				exctn_ExctnStgDv_v2(mode,'', bfrm.S_RCH_ACC_BNK_CD.value, bfrm.S_RCH_ACC_BNK_NM.value, bfrm.S_RCH_ACC_NO.value,  rcv_bnk_cd,rcv_acc_no, bfrm.S_MY_ACCT_TRNS_ALWN_YN.value,idx);
			}
		}

		if("C"==evdcDv){
			// �ǽð� ��� ������ü �ʼ� �׸� notnull �Ӽ��߰�
			if( '2' == crdSetlMeth ){//�ǽð����
				$('#RcvAcctNo_' 		+ idx).attr('notnull','true');
				$('#WdrwPsbkPrtCtt_' 	+ idx).attr('notnull','true');
				$('#RcvPsbkPrtCtt_' 	+ idx).attr('notnull','true');
				$('#TelNo_' 			+ idx).attr('notnull','true');
				$('#PaymUsag_' 			+ idx).attr('notnull','true');
			}else if( '1' == crdSetlMeth ){//������
				$('#RcvAcctNo_' 		+ idx).removeAttr('notnull');
				$('#WdrwPsbkPrtCtt_' 	+ idx).removeAttr('notnull');
				$('#RcvPsbkPrtCtt_' 	+ idx).removeAttr('notnull');
				$('#TelNo_'	 			+ idx).removeAttr('notnull');
				$('#PaymUsag_' 			+ idx).removeAttr('notnull');		
			}
		}
		
		
		////�ΰǺ� ����ý� �ΰǺ����ް��� ����
		PsnlItxpAcctNoSet(idx);

		
		if( pop == 'Y' ) uf_addEvdc_pop(frm, evdcDv, idx);
		

		
	}else{
		alert('Error');
	}
	
	

};



//������ ���õ� ���� �ε���
var beforeSelectedIndex = 0;
/******************************************************************
* fnDelete		�������/��������/�ΰǺ񳻿� ����
* @param
* @return
******************************************************************/
function fnDelete(obj, idx){
	var frm     = document.frm;
	var frm_key = document.rtr_str_form;
	var chk		= false;
	var rows 	= 0;
	
	if( typeof frm.rchrInfo != "undefined" && frm.rchrInfo.length > 0 ){
		rows = frm.rchrInfo.length; 
	}
	
	for(i = 0 ; i <= rows ; i++ ){
		if( jQuery("#rchrInfo_"+i).val() != "" ){
			chk = true
			break;
		}
	}
	
	var edms_id = "edms101";
	var dockey  = frm.docKey.value;
	var name    = obj.options[obj.options.selectedIndex].text;
	
	if( chk == true ){
		if(!confirm("["+ name +"] ���κ������ �����\n�ΰǺ� ��ϳ����� ���� �˴ϴ�.\n�����Ͻðڽ��ϱ�?")){
			obj.options.selectedIndex = beforeSelectedIndex;
			return false;
		}else{
			for(i = 0 ; i <= rows ; i++ ){
				// �ΰǺ� ���� ���� �ʱ�ȭ.
				jQuery("#ItxpAdtnInfo_"+i).html('<img src="/bt/bt_nonregist.gif" alt="�̵��">');
				$("#rchrInfo_"+i).val("");
			}
		}
	}
	beforeSelectedIndex = obj.options.selectedIndex;
	return true;
};


/******************************************************************
 * exctn_ExctnStgDv_v2	������������ ver2.0 by son
 * @Description		: pt_common.js override function
 * @param			objVal 1:Ÿ������ü 2:�ڰ�����ü 3:�����ָ��ʱ�ȭ���� 4:ī��(�ǽð���ü���)
 * @param			uptMode 1:���ʵ�� 2:���������� 3:�Ϸ����
 * @return
 * @author soneunjun
******************************************************************/
exctn_ExctnStgDv_v2 = function (objVal,uptMode, rchExpAcctBnkCd, rchExpAcctBnkNm, rchExpAcctNo, rcvBnkCd, rcvAcctNo, myAccTrnsYn, idx){
	var frm = document.frm;
	//alert(objVal + " " + uptMode + " " + myAccTrnsYn + " " + rchExpAcctNo + " " + rcvAcctNo);
	//ī��Ǻ���ü(�ǽð���ü���)�ΰ�� ��������·� �Աݽ�Ų��.
	if(objVal == "4"){
//		try{
			document.getElementById("ExctnStgDv_tr_"+idx).style.display = "none";	//���౸��(��/Ÿ���¼���)
			if( typeof document.getElementById("trnsInfo_"+idx)!="undefined" ){
				document.getElementById("trnsInfo_"+idx).style.display 		= "none";	//�ڰ�����ü�����ع�ư����
			}
			
				if( typeof jQuery("#RcvBnkCd_"+idx)!="undefined" ){
					jQuery('#RcvBnkCd_'+idx).attr('disabled',true).val(rcvBnkCd);
				}
				if( typeof jQuery("#RcvAcctNo_"+idx)!="undefined" ){
					jQuery('#RcvAcctNo_'+idx).attr('disabled',true).val(rcvAcctNo);
				}
				if( typeof jQuery("#idFvrtAcct_"+idx)!="undefined" ){
					jQuery("#idFvrtAcct_"+idx).css('display','none');	//���־��°��¹�ư
					jQuery("#idMyAcctNo_"+idx).css('display','none');	//���־��°��¹�ư
				}
			
//		}catch(e){
//			alert("����1 : " + e.message);
//		}
	}else if("Y"==myAccTrnsYn){	//�ڰ�����ü���α��-��������'08'����
		try{
			jQuery('#ExctnStgDv2_'+idx).attr('checked',true);
			
			jQuery('#RcvBnkCd_'+idx).css('display','none').val(rchExpAcctBnkCd);
			jQuery('#RcvAcctNo_'+idx).css('display','none').val(rchExpAcctNo).attr('readonly',true);
			
			jQuery("#idRcvBnkNm_"+idx).html("["+rchExpAcctBnkNm+"]"+rchExpAcctNo).css('display','');
			jQuery("#idMyAcctNo_"+idx).css('display','');
	
			jQuery('#ExctnStgDv1_'+idx).attr('disabled',true);
			jQuery('#ExctnStgDv2_'+idx).attr('disabled',true);
			
			if( typeof jQuery("#idFvrtAcct_"+idx)!="undefined" ){
				jQuery("#idFvrtAcct_"+idx).css('display','none');	
			}
			
			var trnsRchAcc								= document.getElementById("kind_TrnsRchAcc_"+idx);
			var flag 									= true;
			for(var i=0; i<trnsRchAcc.options.length; i++){
				if("B03007"==trnsRchAcc.options[i].value){ //�ڰ�����ü���α��
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
			
			for(var i=0; i<trnsRchAcc.options.length; i++){
				if("B03007"==trnsRchAcc.options[i].value){ //�ڰ�����ü���α��
					trnsRchAcc.options[i].selected = true;
					break;
				}
			}
			//trnsRchAcc.value 							= "B03007";
		    trnsRchAcc.disabled 						= true;
		}catch(e){
			alert("����2 : " + e.message);
		} 
	}else if(rchExpAcctNo	!=	rcvAcctNo){	//Ÿ������ü����
		try{
			jQuery("#ExctnStgDv1_"+idx).attr('checked',true);
					
			if( typeof rcvBnkCd != "undefined" ){
				jQuery('#RcvBnkCd_'+idx).val(rcvBnkCd);
			}else{
				jQuery('#RcvBnkCd_'+idx).val('');
			}
			
			if( typeof rcvAcctNo!="undefined" ){
				jQuery('#RcvAcctNo_'+idx).val(rcvAcctNo);
			}else{
				jQuery('#RcvAcctNo_'+idx).val('');
			}
			jQuery('#RcvAcctNo_'+idx).attr('readOnly',false).show();
			jQuery('#RcvBnkCd_'+idx).show();
	
			if( typeof jQuery("#idFvrtAcct_"+idx)!="undefined" ){
				jQuery("#idFvrtAcct_"+idx).css('display','');	
			}
			jQuery("#idRcvBnkNm_"+idx).css('display','none');
			jQuery("#idMyAcctNo_"+idx).css('display','none');
			
			jQuery("#kind_TrnsRchAcc_"+idx).css('display','none');
			jQuery('#kind_TrnsRchAcc_'+idx).selectedIndex	= 0;
		}catch(e){
			alert("����3 : " + e.message);
		}
		
		//�ΰǺ� ó��
		PsnlItxpAcctNoSet(idx);
		
	}else{	//�ڰ�����ü����
		try{
			jQuery('#ExctnStgDv2_'+idx).attr('checked'	,true);
		
			jQuery('#RcvBnkCd_'+idx).val(rchExpAcctBnkCd).hide();
			
			jQuery('#RcvAcctNo_'+idx).val(rchExpAcctNo).hide().attr('readonly',true);
	
			if( typeof jQuery("#idFvrtAcct_"+idx)!="undefined" ){
				jQuery("#idFvrtAcct_"+idx).hide();			
			}
			jQuery('#idRcvBnkNm_'+idx).html("["+rchExpAcctBnkNm+"]"+rchExpAcctNo).show();
			jQuery("#idMyAcctNo_"+idx).css('display','');
			jQuery('#kind_TrnsRchAcc_'+idx).css('display','inline');
			
		}catch(e){
			alert("����4 : " + e.message);
		}
	}
	
	if( objVal != "4" ){

		if( true == jQuery('#ExctnStgDv1_'+idx).attr('checked') ){//Ÿ����
			jQuery('#ExctnStgDv_'+idx).val(jQuery('#ExctnStgDv1_'+idx).val());
			jQuery('#DynReqStar1_'+idx).show();
			jQuery('#DynReqStar2_'+idx).show();
			jQuery('#WdrwPsbkPrtCtt_'+idx).attr('notnull','notnull');
			jQuery('#RcvPsbkPrtCtt_'+idx).attr('notnull','notnull');
		}else if( true === jQuery('#ExctnStgDv2_'+idx).attr('checked') ){//�ڰ���
			jQuery('#ExctnStgDv_'+idx).val(jQuery('#ExctnStgDv2_'+idx).val());
			jQuery('#DynReqStar1_'+idx).hide();
			jQuery('#DynReqStar2_'+idx).hide();
			jQuery('#WdrwPsbkPrtCtt_'+idx).removeAttr('notnull');
			jQuery('#RcvPsbkPrtCtt_'+idx).removeAttr('notnull');
	 	}else{
	 		jQuery('#ExctnStgDv_'+idx).val('');
	 	}
	}
		
	var PsnlAcctUseYn = 'N';
	if(typeof frm.S_PSNL_ACCT_USEYN =='undefined' ){
		PsnlAcctUseYn = document.rtr_str_form.S_PSNL_ACCT_USEYN.value;
	}else{
		PsnlAcctUseYn = frm.S_PSNL_ACCT_USEYN.value; 
	}
	if( "3"!=uptMode){
		if( 'Y' != PsnlAcctUseYn ){
			uf_OwacNmRst(idx);
		}
	}else{
		//����Ϸ������
		if(typeof jQuery('#idFvrtAcct'+idx) != "undefined"){
			jQuery('#idFvrtAcct_'+idx).hide();	
		}
	}

};
 
 

 /******************************************************************
  * uf_addEvdc_pop 	�����߰�
  * @Description		: pt_common.js override function
  * @param (evma_gb[T : ���ڼ��ݰ�꼭, C : ī�����, E : ��Ÿ����])
  * @return
  * @author soneunjun
 ******************************************************************/
 uf_addEvdc_pop = function (frm, evma_gb, row_idx){
	 
 	var frm		=	document.rtr_str_form;
 	var bfrm	=	document.frm;
 	var pop_width,pop_height,pop_scroll,url;
 	//if(getGridRowCount(obj) > 0){alert("������ 1�Ǹ� ��ϰ����մϴ�.");return;}
 	
 	
 	
 	if(evma_gb=="T"){ //���ڼ���
 		pop_width = "800";
 		pop_height = "800";
 		pop_scroll = 'yes';
 		var param =	"pRowIdx="+row_idx+"&RegTyp=1";//RegTyp=1:���켱
 		
 		url = "/t01/t12/T12_01_10_0.jsp?"+param;
 	}else if(evma_gb=="C"){ //ī��
 		pop_width = "820";
 		pop_height = "760";
 		pop_scroll = 'yes';
 		var param =	"pRowIdx="+row_idx+"&RegTyp=1";//RegTyp=1:���켱
 		try{
 			param	+=	"&pAgrmtSeqNo="			+ frm.S_AGRMT_SEQ_NO.value;
 			param	+=	"&pSbjtId="				+ frm.S_SBJT_ID.value; 
			param	+=	"&pCpcgInstBzRegNo="	+ frm.S_CPCG_INST_BZPR_NO.value;
			param	+=	"&pAgrmtInstCrpnRegNo="	+ frm.S_AGRMT_INST_BZPR_NO.value;
 		}catch(e){
 			param	+=	"&pAgrmtSeqNo="			+ bfrm.S_AGRMT_SEQ_NO.value;
 			param	+=	"&pSbjtId="				+ bfrm.S_SBJT_ID.value; 
			param	+=	"&pCpcgInstBzRegNo="	+ bfrm.S_CPCG_INST_BZPR_NO.value;
			param	+=	"&pAgrmtInstCrpnRegNo="	+ bfrm.S_AGRMT_INST_BZPR_NO.value; 			
 		}
 		
 		var sbjtVal = "&sbjtParam="+sbjtParam;

 		//url = "/t01/t12/T12_01_20_0.jsp?"+param;
 		url = "/t01/t12/T12_01_20_0.jsp?"+param+sbjtVal;;
 	}else if(evma_gb=="E"){ 
 		
 		return;
 	}else{
 		//���켱 �ʱ�ȭ
 		return;
 	}
 	
 	
 	
 	uf_frmNewWinNs(bfrm, url, 'RCMS_MKE_POPUP', pop_width, pop_height,pop_scroll);
 	removeTempAttribute(bfrm);
 };

 /******************************************************************
  * calc_amtSet		����հ�ݾװ��
  * @param
  * @return
 ******************************************************************/
 calc_amtSet = function (obj, isFixed){
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
			var EvdcDv = document.getElementById('EvmaGb_'+i).value;
			
			splyAmt		= Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
			vatAmt		= Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
			useAmt		= splyAmt + vatAmt;
			
			tot_splyAmt	+=	splyAmt;
			tot_vatAmt	+=	vatAmt;
			tot_useAmt	+=	useAmt;
			
			$("#ItxpUseAmt_"+i).val(toMoney(useAmt));
		
			if("E" == EvdcDv && false==isFixed){
				
				// ��ü�ݾ�, ���ް���, �ΰ���ġ���� ����
				document.getElementById("txt_trnsAmt_" + i).innerHTML	= toMoney(tot_useAmt);
				document.getElementById("txt_splyAmt_" + i).innerHTML	= toMoney(tot_splyAmt);
				document.getElementById("txt_vatAmt_" + i).innerHTML	= toMoney(tot_vatAmt);
			//2012.11.26 ���ڼ��ݰ�꼭�� ��� ���ޱݾ׼����� �� ���ױݾ� ���̹߻��� ���׻��� ����
			}else if( "T" == EvdcDv ){

			}
		}//End of for
		

		document.getElementById("evdc_splyAmtTxt").innerHTML	= toMoney(tot_splyAmt);
		document.getElementById("evdc_vatAmtTxt").innerHTML	= toMoney(tot_vatAmt);
			
		
		// ����հ� ����
		document.getElementById("tot_TrnsAmt").innerHTML		= toMoney(tot_useAmt);
		document.getElementById("tot_splyAmt").innerHTML		= toMoney(tot_splyAmt);
		document.getElementById("tot_vatAmt").innerHTML			= toMoney(tot_vatAmt);
};
 
 /******************************************************************
  * set_AmtInfo		��������,�����Ϸù�ȣ,�ݾ׼���
  * @Description		: pt_common.js override function
  * @param
  * @return
  * @author soneunjun
 ******************************************************************/
 set_AmtInfo = function(evdc_dv,splyAmt,vatAmt, idx){
 	var frm	=	document.frm;
 	
 	document.getElementById("evdc_splyAmtTxt"	).innerHTML	=	toMoney(splyAmt);			//���ޱݾ�
 	document.getElementById("evdc_vatAmtTxt"	).innerHTML	=	toMoney(vatAmt);			//�ΰ���
 	
 	document.getElementById("tot_splyAmt"		).innerHTML	=	toMoney(splyAmt);			//���ޱݾ�
 	document.getElementById("tot_vatAmt"		).innerHTML	=	toMoney(vatAmt);			//�ΰ���
 	document.getElementById("tot_TrnsAmt"		).innerHTML	=	toMoney(Number(vatAmt)+Number(splyAmt));			//�ΰ���
 	
 	if("T"==evdc_dv){
 		document.getElementById("txt_trnsAmt_"+idx	).innerHTML	=	toMoney(Number(splyAmt)+Number(vatAmt));	//�հ�ݾ�
 		document.getElementById("txt_splyAmt_"+idx	).innerHTML	=	toMoney(splyAmt);							//���ޱݾ�
 		document.getElementById("txt_vatAmt_"+idx	).innerHTML	=	toMoney(vatAmt);							//�ΰ���
 	}
 };

 /******************************************************************
  * chk_itxp_evdc_amt		����ϱݾװ� �����ݾ� ��ġ���� üũ
  * @Description		: pt_common.js override function
  * @param
  * @return
  * @author soneunjun
 ******************************************************************/
 chk_itxp_evdc_amt = function(){
 	var frm	=	document.frm;

 	var tot_useAmt = 0,tot_splyAmt = 0,tot_vatAmt = 0;
 	var return_msg	=	"";
 	//����ϱݾ� �հ�
 	for(var i = 0; i < document.forms['frm'].elements['itxp_cnt'].value ; i++){
 		tot_useAmt	=	Number($("#ItxpUseAmt_"+i).val().replace(/,/gi,""));
 		tot_splyAmt	=	Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
 		tot_vatAmt	=	Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
 		

 	 	if(( "C" == $('#EvmaGb_'+i).val())){
 	 	//2012.11.26 ���ޱݾ��� ��ġ�ϴ°�쿡 �ݾ� üũ(���ڼ��ݰ�꼭�� ��� ���ޱݾ� ������ ������ �� ����)
 	 		if( $('#C_Evdc_SplyAmt_'+i).val() == tot_splyAmt )
 	 		{
	 	 		if(tot_useAmt > $('#C_Evdc_SumAmt_'+i).val() ){	
	 	 			return "����� ���ݾ��� ��ϵ� ������ ���ݾ�("+toMoney($('#C_Evdc_SumAmt_'+i).val())+")�� �ʰ��� �� �����ϴ�.";
	 	 		}else if(tot_splyAmt != $('#C_Evdc_SplyAmt_'+i).val() ){
	 	 			return "����� ���ޱݾ��� ��ϵ� ������ ���ޱݾ�("+toMoney($('#C_Evdc_SplyAmt_'+i).val())+")�� ��ġ���� �ʽ��ϴ�.";
	 	 		}else if(tot_vatAmt != $('#C_Evdc_VatAmt_'+i).val() ){
	 	 			return "����� �ΰ����ݾ��� ��ϵ� ������ �ΰ����ݾ�("+toMoney($('#C_Evdc_VatAmt_'+i).val())+")�� ��ġ���� �ʽ��ϴ�.";
	 	 		}
 	 		}else{
 	 			if( tot_useAmt > $('#C_Evdc_SumAmt_'+i).val() ){	
 	 				return "����� ���ݾ��� ��ϵ� ������ ���ݾ�("+toMoney($('#C_Evdc_SumAmt_'+i).val())+")�� �ʰ��� �� �����ϴ�.";
 	 			}			
 	 		}
 	 				
 	 	}else if( ("T" == $('#EvmaGb_'+i).val()) ){
 	 		//2012.11.26 ���ޱݾ��� ��ġ�ϴ°�쿡 �ݾ� üũ(���ڼ��ݰ�꼭�� ��� ���ޱݾ� ������ ������ �� ����)
 	 		//���ݰ�꼭 ������ ���ݾ׾ȿ��� ���������ϵ��� ���� �ʿ�
	 		var EvdcSumAmt 	= Number($("#T_Evdc_SumAmt_"+i).val());
			var EvdcSplyAmt = Number($("#T_Evdc_SplyAmt_"+i).val());
			var EvdcVatAmt 	= Number($("#T_Evdc_VatAmt_"+i).val());
			
			var txbInfo = "\n\n���ڼ��ݰ�꼭 ���Աݾ� ����";
				txbInfo += "\n���ݾ� : " + toMoney(EvdcSumAmt);
				txbInfo += "\n���ޱݾ� : " + toMoney(EvdcSplyAmt);
				txbInfo += "\n�ΰ����� : " + toMoney(EvdcVatAmt) + ($('#T_ExclsVatAmtYn_' + i).val() == 'Y' ?' (�ΰ����ݾ� ����)':'');
			
			if(tot_useAmt > EvdcSumAmt){	
				return_msg	="����� ���ݾ��� ���ڼ��ݰ�꼭 ���ݾ��� �ʰ��Ͽ����ϴ�." + txbInfo;
				return return_msg;
			}else if(tot_splyAmt > EvdcSplyAmt ){
				return_msg	="����� ���ޱݾ��� ���ڼ��ݰ�꼭 ���ޱݾ��� �ʰ��Ͽ����ϴ�." + txbInfo;
				return return_msg;
			}else if( $('#T_ExclsVatAmtYn_'+i).val() == 'N' && tot_vatAmt > EvdcVatAmt ){
				return_msg	="����� �ΰ����ݾ��� ���ڼ��ݰ�꼭 �ΰ����ݾ��� �ʰ��Ͽ����ϴ�." + txbInfo;
				return return_msg;
			}

 	 	}else if("E"==$('#EvmaGb_'+i).val()){
 	 		return_msg = "";
 	 	}else{
 	 		alert("���� �̵�� �����Դϴ�.");
 	 	}
 	}//END OF FOR
 	
 	return return_msg;
 };
 
 
 

 /******************************************************************
  * fnAddRow		 ���̺� �ο� �߰�
  * @param
  * @return
 ******************************************************************/
function fnAddRow(upd_flag){
	
	if( (typeof update_enabled != 'undefined' && false == update_enabled) 
			&& (typeof upd_flag != 'undefined' && true == upd_flag) ){
		alert("���� ���������� ������ �� �����ϴ�. ���������� Ȯ�� �ϼ���");
		return;
	}
	
	var tbody = jQuery("#ItxpList > tbody");
	var rows = tbody.find(">tr").length/3;

	var newRow1 = tbody.find(">tr").eq(-3).clone(true);
	var newRow2 = tbody.find(">tr").eq(-2).clone(true);
	var newRow3 = tbody.find(">tr:last").clone(true);
	try{
		fnControlInit([newRow1,newRow2,newRow3], rows);
		newRow1.find('.etcimpex').hide();
		newRow1.addClass('blue_line').find('.btn-opendtl > img').attr('src','//bt/bt_grid1.gif').attr('alt','�߰��Է�');
		newRow1.appendTo(tbody);
		newRow2.attr('id','SplyAmtDfamtRsn_tr_'+rows);
		newRow2.find('.inputedit').attr('readonly',false);
		newRow2.hide().appendTo(tbody);
		newRow3.hide().find('.frmElmtArea').html('');
		newRow3.find('#etc_SplrPrsn_' 		+ rows).attr('checked',false);//���ΰŷ� üũ�ڽ� �ʱ�ȭ
		newRow3.find('#etc_SplrCoNm_' 		+ rows).css('backgroundColor','#fff').attr('readonly',false);
		newRow3.find('#etc_SplrBzRegNo_' 	+ rows).css('backgroundColor','#fff').attr('readonly',false);
		newRow3.find('#etc_ChkBzRegNo_' 	+ rows).html('<img src="/bt/bt_bzregno.gif" alt="����ڹ�ȣȮ��"/>');
		newRow3.appendTo(tbody);
		
		var borderStyle = "";
		newRow1.find(":input[type=text]").focus(function(){
			borderStyle = $(this).css('border');
			$(this).css('border','1px solid #464646');	
		}).blur(function(){
			$(this).css('border',borderStyle);
		});
		
		newRow2.find(":input[type=text]").focus(function(){
			borderStyle = $(this).css('border');
			$(this).css('border','1px solid #464646');	
		}).blur(function(){
			$(this).css('border',borderStyle);
		});
		newRow3.find(":input[type=text]").focus(function(){
			borderStyle = $(this).css('border');
			$(this).css('border','1px solid #464646');	
		}).blur(function(){
			$(this).css('border',borderStyle);
		});
	
		jQuery('.currency').ForceNumericOnly();
		document.forms['frm'].elements['itxp_cnt'].value	= parseInt(document.forms['frm'].elements['itxp_cnt'].value, 10)+1;
		
		//CKKeyPro_ReScan();
		
	}catch(e){
		alert('���� : ' + e.message + '\nLine : 710');
	}
}

function fnControlInit(arrRowObj, rowCnt){
	for(i = 0 ; i < arrRowObj.length ; i++ ){
		jRowObj = arrRowObj[i];
		
		jQuery(jRowObj).find(':input[type="radio"]').each(function(){
			var id = this.id;
			if(id){
				fnConvertId(this,rowCnt);
				this.name = this.name.split("_")[0]+"_"+rowCnt;
			}
		});
		
		jQuery(jRowObj).find(':input[type!="radio"]').val("").each(function(){
			var id = this.id;
			if(id){
				fnConvertId(this,rowCnt);
			}
		});
		
		jQuery(jRowObj).find("select").val("").each(function(){
			var id = this.id;
			if(id){
				if( /^EvmaGb/.test(id) ){
					$(this).attr('disabled',false);	
				}
				fnConvertId(this,rowCnt);
			}
		});
	
		jQuery(jRowObj).find("span").each(function(){
			var id = this.id;
			if(id){
				var _id = this.id.split("_")[0]+"_"+rowCnt;
				if( _id=="ItxpAdtnInfo_"+rowCnt ){
					jQuery(this).html('<img src="/bt/bt_nonregist.gif" alt="�̵��">');
				}else if( /^idBzRegNo/.test(id) ){
					
				}else{
					$(this).text("");
				}
				fnConvertId(this,rowCnt);
				
			}
		});

		jQuery(jRowObj).find("div").each(function(){
			var id = this.id;
			if(id){
				fnConvertId(this,rowCnt);
			}
		});

		jQuery(jRowObj).find("tr").each(function(){
			var id = this.id;
			if(id){
				fnConvertId(this,rowCnt);
			}
		});
		
		jQuery(jRowObj).find("a").each(function(){
			var id = this.id;
			if(id){
				fnConvertId(this,rowCnt);
			}
		});
	}//end of for
}




/******************************************************************
 * uf_tglSplrPrsn	�ŷ�ó ���ΰŷ� ����
 * @author	������
 * @date	2013.03.25
 * @param
 * @return
******************************************************************/
uf_tglSplrPrsn = function(obj){
	var frm = document.frm;
	var idx = obj.id.split('_')[2];
	
	//������ üũ
	ItxpCd = $('#SelSubDtlsItxpCd').val();
	if( ItxpCd == '' || ItxpCd == '����' ){
		alert('��������� �����ϼ���.');
		obj.checked = false;
		$('#SelDtlsItxpCd').focus();
		return false;
	}
	
	//chkMyAccTrnsAlwnYn �ڰ�����ü��� ��� üũ
	if( chkAcnmAuthPass(ItxpCd) ){
		$('#SplrAuth_'+idx).val('1');
		$('#etc_ChkBzRegNo_'+idx).hide();
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
		$('#SplrAuth_'+idx).val('1');
	}else if(  obj.checked == false ){
		$('#etc_SplrBzRegNo_' + idx ).attr('disabled',false).val('').css('backgroundColor','#ffffff');
		if( $('#SplrAuth_'+idx).val() != '1' ){
			$('#etc_ChkBzRegNo_'+idx).show();
			$('#SplrAuth_'+idx).val('1');
		}
	}
};



/******************************************************************
 * setSplrPrsn	�ŷ�ó ���ΰŷ� ����
 * @author	������
 * @date	2013.03.25
 * @param
 * @return
******************************************************************/
setSplrPrsn = function(frm,frm_key, ridx){

	var prsn = true;
	if( "B0201" == $("#SelDtlsItxpCd").val() ){//�����ü������ �� ����� ���ΰŷ� �Ұ�
		prsn = false;
	}
	
	for(var i=0; i<frm.itxp_cnt.value; i++){
		
		if( typeof ridx != 'undefined' && i != ridx ) continue;
		if( $('#EvmaGb_' + i).val() == 'E' ){ //��Ÿ������ �ش�
		
			if( false == prsn ){
				$('#etc_SplrPrsn_'		+ i).attr('disabled',true).attr('checked',false);
				$('#etc_SplrBzRegNo_'	+ i).attr('readonly',false).val('').css('backgroundColor','#fff');
				$('#etc_SplrCoNm_'		+ i).attr('readonly',false).val('').css('backgroundColor','#fff');
				$('#etc_SplrAuth_'		+ i).val('0');
			}else{
				$('#etc_SplrPrsn_'		+ i).attr('disabled',false).attr('checked',false);
			}
			setChkBzRegNo('1',frm_key.S_NPRF_INST_YN.value,i);
		}else if( $('#EvmaGb_' + i).val() == 'T' ){
			setChkBzRegNo('1',frm_key.S_NPRF_INST_YN.value,i);
		}
	}
	//------------------------------------------------------------ END
	
}
