/******************************************************
* Function      : uf_popup_sjbt_list()
* Parameter     : ����(frmNm), ������ȣ(SbjtId), ������(SbjtNm)
* Description	: ������ȸ
********************************************************/
function uf_popup_sjbt_list(frm, SbjtId, SbjtNm) {
	var p_url = "/pop/T01_02_00.jsp";
	
	get2post(frm, "pfrmNm="+frm.name);

	if(typeof SbjtId!="undefined"){
		get2post(frm, "pSbjtId="+SbjtId);
		get2post(frm, "pSbjtNm="+SbjtNm);
	}
	uf_frmNewWin(frm, p_url, 'RCMS_MKE_POPUP1', 810, 600);
	
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_SubDtlsItxp()
* Parameter     : Object frm (form ��ü)
* Parameter     : String objNm (objNm ��ü��)
* Parameter     : String dtlsItxpCd (dtlsItxpCd �����ڵ�)
* Parameter     : String dtlsItxpNm (dtlsItxpNm �����ڵ��)
* Parameter     : String subDtlsItxpCd (subDtlsItxpCd �������ڵ�)
* Parameter     : String subDtlsItxpNm (subDtlsItxpNm �������ڵ��)
* Description   : ��������ȸ
********************************************************/
//function uf_popup_SubDtlsItxp(frm, objNm, idx, dtlsItxpCd, dtlsItxpNm, subDtlsItxpCd, subDtlsItxpNm){
function uf_popup_SubDtlsItxp(frm, objNm, idx, SpotUsePossItxpYn){
	
	var url = "/pop/T01_04_00.jsp";
	
	get2post(frm, "pObjNm="+objNm);
	
	if(typeof frm.pPlanBizDvCd!="undefined"){
		get2post(frm, "pPlanBizDvCd="+frm.pPlanBizDvCd.value);
	}
	
	if(typeof idx!="undefined"){
		get2post(frm, "pChkIdx="+idx);
	}
	
	if(typeof SpotUsePossItxpYn!="undefined"){
		get2post(frm, "pSpotUsePossItxpYn="+SpotUsePossItxpYn);
	}
	/*
	if(typeof dtlsItxpCd!="undefined"
		&& typeof dtlsItxpNm!="undefined"
		&& typeof subDtlsItxpCd!="undefined"
		&& typeof subDtlsItxpNm!="undefined" ){
		get2post(frm, "pDtlsItxpCd"+dtlsItxpCd);
		get2post(frm, "pDtlsItxpNm"+dtlsItxpNm);
		get2post(frm, "pSubDtlsItxpCd"+subDtlsItxpCd);
		get2post(frm, "pSubDtlsItxpNm"+subDtlsItxpNm);
	}*/
	uf_frmNewWinNs(frm, url, 'RCMS_MKE_POPUP', 800, 580, 'no');
	removeTempAttribute(frm);
}

//function uf_popup_SubDtlsItxp(frm, objNm, idx, dtlsItxpCd, dtlsItxpNm, subDtlsItxpCd, subDtlsItxpNm){
//uf_popup_SubDtlsItxp_rMate(frm, idx, SpotUsePossItxpYn);
function uf_popup_SubDtlsItxp_rMate(frm, idx, SpotUsePossItxpYn, seqNo){
	
	
	var url = "/pop/T01_04_00.jsp";
	
	if(typeof frm.pPlanBizDvCd!="undefined"){
		get2post(frm, "pPlanBizDvCd="+frm.pPlanBizDvCd.value);
	}
	
	if(typeof idx!="undefined"){
		get2post(frm, "pChkIdx="+idx);
	}
	
	if(typeof SpotUsePossItxpYn!="undefined"){
		get2post(frm, "pSpotUsePossItxpYn="+SpotUsePossItxpYn);
	}
	
	//�߰�
	if(typeof seqNo!="undefined"){
		get2post(frm, "pAgrmtSeqNo="+seqNo);
	}
	
	/*
	if(typeof dtlsItxpCd!="undefined"
		&& typeof dtlsItxpNm!="undefined"
		&& typeof subDtlsItxpCd!="undefined"
		&& typeof subDtlsItxpNm!="undefined" ){
		get2post(frm, "pDtlsItxpCd"+dtlsItxpCd);
		get2post(frm, "pDtlsItxpNm"+dtlsItxpNm);
		get2post(frm, "pSubDtlsItxpCd"+subDtlsItxpCd);
		get2post(frm, "pSubDtlsItxpNm"+subDtlsItxpNm);
	}*/
	uf_frmNewWinNs(frm, url, 'RCMS_MKE_POPUP', 800, 610, 'no');
	removeTempAttribute(frm);
}
/********************************************************
* Function      : uf_popup_fileupload()
* Description   : ���Ͼ��ε��˾�
********************************************************/
function uf_popup_fileupload(bSbjt){
	var frm = document.frm;
	var url = "/pop/T01_20_00.jsp";
	
	if( typeof bSbjt!="undefined" && bSbjt=="Y" ){
		if(!chk_sbjt_sch()) return false;
	}
	
	get2post(frm, "pFrmNm="+frm.name);
	
	uf_frmNewWinNs(frm, url, 'RCMS_MKE_POPUP1', 700, 300);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_etc_dvdc_avl_info()
* Description   : ��Ÿ�������ɺ��
********************************************************/
function uf_popup_etc_dvdc_avl_info(){
	uf_frmNewWinNs(document.frm, '/pop/T01_27_20.jsp', 'INFOVIEW', '600', '700');
}


/********************************************************
* Function      : uf_popup_trns_stndrd_info()
* Description   : �ڰ�����ü������
********************************************************/
function uf_popup_trns_stndrd_info(){
	uf_frmNewWinNs(document.frm, '/pop/T01_08_20.jsp', 'INFOVIEW', '800', '800');
}

/********************************************************
* Function      : uf_popup_bzpr()
* Description   : ���־��»����
********************************************************/
function uf_popup_bzpr(ridx){
	var frm = document.frm;
	var params = "";
	


	if( ridx != null ){
		get2post(frm, "pRowIdx="+ ridx);
		$('#etc_SplrBzRegNo_' 	+ ridx).attr('readonly',false).val('').css('backgroundColor','#fff');
		$('#etc_SplrCoNm_' 		+ ridx).attr('readonly',false).val('').css('backgroundColor','#fff');
		$('#etc_SplrPrsn_'		+ ridx).attr('checked',false); //���ΰŷ�
		if( $('#OwacNm_' 		+ ridx).attr('disabled') != true ){
			$('#OwacNm_'		+ ridx).val('');
		}
	}else{
		get2post(frm, "pRowIdx=");
		$('#etc_SplrBzRegNo_0'	).attr('readonly',false).val('').css('backgroundColor','#fff');
		$('#etc_SplrCoNm_0'		).attr('readonly',false).val('').css('backgroundColor','#fff');
		$('#etc_SplrPrsn_0'		).attr('checked',false); //���ΰŷ�
		if( $('#OwacNm').attr('disabled') != true ){
			$('#OwacNm'				).val('');
		}

	}
	uf_frmNewWinNs(frm, '/pop/T01_10_00.jsp?'+params, 'ACCVIEW', '400', '610','no');
	removeTempAttribute(frm);
}


/********************************************************
* Function      : uf_popup_my_acct()
* Description   : �ڰ�����ü�� �Աݰ���
********************************************************/
function uf_popup_my_acct(ridx){
	var frm = document.frm;
	
	if( ridx != null ){
		get2post(frm, "pRowIdx="+ridx);
	}
	try{
		get2post(frm,"sAgrmtInstId="+document.rtr_str_form.S_AGRMT_INST_ID.value); //�űԵ��
	}catch(e){
		get2post(frm,"sAgrmtInstId="+document.frm.S_AGRMT_INST_ID.value); //����
	}
	uf_frmNewWinNs(frm, '/pop/T01_32_00.jsp', 'ACCVIEW1', '600', '515','no');
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_fvrt_acct()
* Description   : ���־����Աݰ���
********************************************************/
function uf_popup_fvrt_acct(ridx){
	var frm = document.frm;
	var params = "";
	if( ridx != null ){
		get2post(frm, "pRowIdx="+ridx);
	}
	uf_frmNewWinNs(frm, '/pop/T01_09_00.jsp?'+params, 'ACCVIEW2', '400', '645','no');
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_fvrt_acct_mgnt()
* Description   : ���־����Աݰ��°���
********************************************************/
function uf_popup_fvrt_acct_mgnt(){
	uf_frmNewWinNs(document.frm, '/pop/T01_09_11.jsp', 'ACCVIEW', '800', '460');
}

/********************************************************
* Function      : uf_popup_bzpr_mgnt()
* Description   : ���־��»���� ����
********************************************************/
function uf_popup_bzpr_mgnt(){
	uf_frmNewWinNs(document.frm, '/pop/T01_10_10.jsp', 'ACCVIEW', '800', '480');
}

/********************************************************
* Function      : uf_popup_cardno()
* Description   : ������ī���ȣ
********************************************************/
function uf_popup_cardno(){
	uf_frmNewWin(document.frm, '/pop/T01_19_00.jsp', 'ACCVIEW', '457', '430');
}

/********************************************************
* Function      : uf_popup_mmb_inq()
* Parameter     : ����(frmNm), �����ID(UsrId), ����ڸ�(UsrNm), gridNm(�׸����), rIdx(���ڵ��ε���)
* Description	: �������ȸ
********************************************************/
function uf_popup_mmb_inq(frm, UsrId, UsrNm, gridNm, rIdx) {
	var p_url = "/pop/T01_28_00.jsp";
	get2post(frm, "pfrmNm="+frm.name);
	get2post(frm, "pUsrId="+UsrId);
	get2post(frm, "pUsrNm="+UsrNm);
	
	if(typeof gridNm!="undefined"){
		get2post(frm, "pObjNm="+gridNm);
		get2post(frm, "pRIdx="+rIdx);
	}
	uf_frmNewWin(frm, p_url, 'RCMS_MKE_POPUP1', 810, 620);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_mmbS_inq()
* Parameter     : ����(frmNm), �����ID(UsrId), ����ڸ�(UsrNm), gridNm(�׸����), rIdx(���ڵ��ε���)
* Description	: �������ȸ
********************************************************/
function uf_popup_mmbS_inq(frm, UsrId, UsrNm, gridNm, rIdx) {
	var p_url = "/jsp/comm/mmbS_inq.jsp";
	get2post(frm, "pfrmNm="+frm.name);
	get2post(frm, "pUsrId="+UsrId);
	get2post(frm, "pUsrNm="+UsrNm);
	
	if(typeof gridNm!="undefined"){
		get2post(frm, "pObjNm="+gridNm);
		get2post(frm, "pRIdx="+rIdx);
	}
	uf_frmNewWin(frm, p_url, 'RCMS_MKE_POPUP1', 350, 400);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_crdAmt_updt()
* Parameter     : ����(frmNm), ���ݾ�(Amt), ���ް���(Splamt), �ΰ���ġ����(Vat), �����(SrvFee),gridNm(�׸����), rIdx(���ڵ��ε���)
* Description	: ī��ΰ����ݾ� ����
* �ѻ��ݾ׿� ����� ���Խ��� ��ü�ϵ��� ���� 20110720 �̼���
********************************************************/
function uf_popup_crdAmt_updt(frm, Amt, Splamt, Vat, SrvFee, gridNm, rIdx, dv) {
	var p_url = "/pop/T01_25_00.jsp";
	
	get2post(frm, "pfrmNm="+frm.name);
	get2post(frm, "pAmt="+Amt);
	get2post(frm, "pSplamt="+Splamt);
	get2post(frm, "pVat="+Vat);
	get2post(frm, "pSrvFee="+SrvFee);
	
	if(typeof gridNm!="undefined"){
		get2post(frm, "pObjNm="+gridNm);
		get2post(frm, "pRIdx="+rIdx);
	}
	if(typeof dv != "undefined") {
		get2post(frm, "pDv=V");
	} 
	
	
	uf_frmNewWinNs(frm, p_url, 'RCMS_MKE_POPUP10', 450, 550);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_evdc_dtls_brws()
* Parameter     : �������ŷ�����ID(pButrId), ��������(pEvdcDv)
* Description	: ��������ȸ
********************************************************/
function uf_popup_evdc_dtls_brws(pfrm,pButrId,pEvdcDv) {
	var url;
	var mode;
	
	switch(pEvdcDv){
		case "T":
			url = "/pop/T01_11_00.jsp";		//elec_txbl_dtls_brws.jsp
			get2post(pfrm, "pButrId="+pButrId);
			uf_frmNewWinNs(pfrm, url, 'RCMS_MKE_POPUP1', 820, 740, 'no');
			removeTempAttribute(pfrm);
			break;
		case "C":
			url = "/pop/T01_16_00.jsp";		//crd_sel_slip.jsp
			get2post(pfrm, "pButrId="+pButrId);
			uf_frmNewWinNs(pfrm, url, 'RCMS_MKE_POPUP2', 501, 766);
			removeTempAttribute(pfrm);
			break;
		case "E":
			alert("��Ÿ������ ������� ������ Ȯ���ϼ���.");
			return;
			url = edms_Inf_Gateway+"?edmsID=edms101&jobGbn=VIEW&docKey="+pEvdcSeqNo+"&typeGbn="+mode;
			//url = "http://edms.rcms.go.kr/jsp/interface_gateway.jsp";

			//get2post(frm, "edmsID=edms101");
			//get2post(frm, "jobGbn=VIEW");
			//get2post(frm, "docKey="+pEvdcSeqNo);
			//get2post(frm, "typeGbn=CASH");
			
			//uf_frmNewWinNs(pfrm, url, 'RCMS_MKE_POPUP1', 768, 700);
			removeTempAttribute(pfrm);
			break;
		case "K":
			url = edms_Inf_Gateway+"?edmsID=edms101&jobGbn=VIEW&docKey="+pEvdcSeqNo+"&typeGbn=INKIND";
			//url = "http://112.187.198.185:8083/jsp/interface_gateway.jsp?edmsID=edms101&jobGbn=VIEW&docKey="+pEvdcSeqNo+"&typeGbn=INKIND";
			//url = "http://edms.rcms.go.kr/jsp/interface_gateway.jsp";

			//get2post(frm, "edmsID=edms101");
			//get2post(frm, "jobGbn=VIEW");
			//get2post(frm, "docKey="+pEvdcSeqNo);
			//get2post(frm, "typeGbn=CASH");
			
			uf_frmNewWinNs(pfrm, url, 'RCMS_MKE_POPUP3', 768, 700);
			removeTempAttribute(pfrm);
			break;				
	}
}

/********************************************************
* Function      : uf_popup_evdc_dtls_brws()
* Parameter     : �����Ϸù�ȣ(pEvdcSeqNo), ��������(pEvdcDv)
* Description	: ��������ȸ
********************************************************/
function uf_popup_evdc_dtls_brws2(pfrm,pEvdcSeqNo,pEvdcDv) {
	var url;
	var mode;
	
	if("E" == pEvdcSeqNo.substring(0,1))
		mode='CASH';
	else if("P"== pEvdcSeqNo.substring(0,1))
		mode='PLAN';
	
	switch(pEvdcDv){
		case "E":
			url = edms_Inf_Gateway+"?edmsID=edms101&jobGbn=VIEW&docKey="+pEvdcSeqNo+"&typeGbn="+mode;
			//url = "http://edms.rcms.go.kr/jsp/interface_gateway.jsp";

			//get2post(frm, "edmsID=edms101");
			//get2post(frm, "jobGbn=VIEW");
			//get2post(frm, "docKey="+pEvdcSeqNo);
			//get2post(frm, "typeGbn=CASH");
			
			uf_frmNewWinNs(pfrm, url, 'RCMS_MKE_POPUP1', 768, 700);
			removeTempAttribute(pfrm);
	}
}


/********************************************************
* Function      : uf_popup_inst_inq()
* Parameter     : ����(frmNm), ���ID(InstId), �����(InstNm)
* Description	: �����ȸ
********************************************************/
function uf_popup_inst_inq(frm, InstId, InstNm) {
	var p_url = "/pop/T01_03_00.jsp";
	get2post(frm, "&pfrmNm="+frm.name);
	get2post(frm, "&pInstId="+InstId); 
	get2post(frm, "&pInstNm="+InstNm);
	uf_frmNewWin(frm, p_url, 'RCMS_MKE_POPUP1', 800, 600, 'no');
	removeTempAttribute(frm);
}

function fn_changeClear(frm){
	frm.InstNm.value= "";
}

/********************************************************
* Function      : uf_popup_crd_sbjt_dtls_info()
* Parameter     : ī���ȣ(CrdNo)
* Description	: �������ȸ
********************************************************/
function uf_popup_crd_sbjt_dtls_info(CrdNo) {
	var p_url = "/pop/T01_15_00.jsp";
	var frm = document.frm;
	get2post(frm,"Crd_No="+replace(CrdNo,/-/gi,""));

	uf_frmNewWinNs(frm, p_url, 'RCMS_MKE_POPUP1', 465, 440);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_crd_sel_slip()
* Parameter     : �������ŷ�����ID(ButrId)
* Description	: �������ȸ
********************************************************/
function uf_popup_crd_sel_slip(ButrId) {
	var p_url = "/pop/T01_16_00.jsp";
	var frm = document.frm;
	get2post(frm,"pButrId="+ButrId);

	uf_frmNewWinNs(frm, p_url, 'RCMS_MKE_POPUP1', 501, 766);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_SbjtDtlReq()
* Parameter     : 
* Description	: 
********************************************************/
function uf_SbjtDtlReq(param){
	get2post(document.frm, param);
	uf_frmNewWinNs(document.frm, '/pop/T01_23_00.jsp','RCMS_POP','785','850');
	removeTempAttribute(document.frm);
}

/******************************************************************
 * evma_append_pop �������
 * @param (evma_gb[T : ���ڼ��ݰ�꼭, C : ī�����, E : ��Ÿ����])
 * @return
******************************************************************/
/*
function evma_append_pop(frm, evma_gb, pPlanRegDt, pPlanRegTm, pTitle){
	var url;
	var pop_width;
	var pop_height;
	var obj = document.xgrid;

	if(getGridRowCount(obj) > 0){alert("������ 1�Ǹ� ��ϰ����մϴ�.");return;}
	
	get2post(frm, "pPlanRegDt="+pPlanRegDt);
	get2post(frm, "pPlanRegTm="+pPlanRegTm);	
	get2post(frm, "pTitle="+pTitle);	
	
	if(evma_gb=="T"){
		pop_width = "765";
		pop_height = "470";
		url = "/jsp/comm/elec_txbl_inq.jsp";
		
		pop_width = "785";
		pop_height = "730";
		url = "/jsp/comm/elec_txbl_dtls_inq.jsp";
	}else if(evma_gb=="C"){
		pop_width = "785";
		pop_height = "730";
		url = "/jsp/comm/crd_use_ptcl.jsp";
	}else if(evma_gb=="E"){
		pop_width = "785";
		pop_height = "720";
		uf_OpenEdmsInf("CREATE");
		return;
	}else if(evma_gb=="CS"){
		pop_width = "785";
		pop_height = "730";
		url = "/jsp/comm/crd_use_ptcl.jsp?pSearchOnly=Y";
	}
	
	uf_frmNewWin(frm, url, 'RCMS_MKE_POPUP', pop_width, pop_height);
	removeTempAttribute(frm);
}
*/
/******************************************************
* Function      : uf_sbhm_list()
* Parameter     : ����(frmNm)
* Description	: ����� ���� ��ȸ
********************************************************/
function uf_sbhm_list(frm) {
	var p_url = "/pop/T01_30_00.jsp";
	
	uf_frmNewWinNs(frm, p_url, 'RCMS_MKE_POPUP30', 800, 600);
	removeTempAttribute(frm);
}



/******************************************************
* Function      : uf_sbhm_list()
* Parameter     : ����(frmNm)
* Description	: ��Ÿ�����Ұ��� ��� ��ȸ(�����ü�.��������)
********************************************************/
//function openModalEtcImplExc(frm,params,url,height) {
function openModalEtcImplExc(frm,params,url,height,objIdx) {
	
	if( typeof url == 'undefined' ){ url = '/pop/T01_33_00.jsp';}
	if( typeof height == 'undefined'){ height = 530; }
	
	//�ǽ�ȯ�� �߰� 20140128  '' ���ڰ� ���Ե� ��� url �Ķ���� ���� ���������� �Ѿ�� �ʾƼ� �ӽ÷� '|'�� ����
	if("/pop/T01_33_00.jsp" == url){
		var param = "";
		param += 'EtcEvdcExcCd=' + $('#EtcEvdcExcCd_'+0).val();
		//param += '&EtcEvdcExcNo=' + $('#EtcEvdcExcNo_'+objIdx).val();
		
		var arr = $('#EtcEvdcExcNo_'+objIdx).val().split('');
		var imsi = "";
		if(arr.length > 1){
			for(var i=0; i < arr.length;i++){
				if(i==0){
					imsi += arr[i] ;
				}else{
					imsi += "|" + arr[i] ;
				}
			}
			param += '&EtcEvdcExcNo=' + imsi;
		}else{
			param += '&EtcEvdcExcNo=' + $('#EtcEvdcExcNo_'+objIdx).val();
		}
		
		params = param;
		
	}
	return openModalNs(url + '?'+params, frm, "dialogWidth:450px; dialogHeight:"+height+"px; scroll:no;");
}
