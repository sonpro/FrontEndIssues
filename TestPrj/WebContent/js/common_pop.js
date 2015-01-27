/******************************************************
* Function      : uf_popup_sjbt_list()
* Parameter     : 폼명(frmNm), 과제번호(SbjtId), 과제명(SbjtNm)
* Description	: 과제조회
********************************************************/
function uf_popup_sjbt_list(frm, SbjtId, SbjtNm) {
	var p_url = "/jsp/pop/P01_02_00.jsp";
	
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
* Parameter     : Object frm (form 객체)
* Parameter     : String objNm (objNm 객체명)
* Parameter     : String dtlsItxpCd (dtlsItxpCd 세목코드)
* Parameter     : String dtlsItxpNm (dtlsItxpNm 세목코드명)
* Parameter     : String subDtlsItxpCd (subDtlsItxpCd 세세목코드)
* Parameter     : String subDtlsItxpNm (subDtlsItxpNm 세세목코드명)
* Description   : 세세목조회
********************************************************/
//function uf_popup_SubDtlsItxp(frm, objNm, idx, dtlsItxpCd, dtlsItxpNm, subDtlsItxpCd, subDtlsItxpNm){
function uf_popup_SubDtlsItxp(frm, objNm, idx, SpotUsePossItxpYn){
	var url = "/jsp/pop/P01_04_00.jsp";
	
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
	uf_frmNewWin(frm, url, 'RCMS_MKE_POPUP', 800, 580, 'no');
	removeTempAttribute(frm);
}
/********************************************************
* Function      : uf_popup_fileupload()
* Description   : 파일업로드팝업
********************************************************/
function uf_popup_fileupload(bSbjt){
	var frm = document.frm;
	var url = "/jsp/pop/P01_20_00.jsp";
	
	if( typeof bSbjt!="undefined" && bSbjt=="Y" ){
		if(!chk_sbjt_sch()) return false;
	}
	
	get2post(frm, "pFrmNm="+frm.name);
	
	uf_frmNewWinNs(frm, url, 'RCMS_MKE_POPUP1', 700, 300);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_etc_dvdc_avl_info()
* Description   : 기타증빙가능비목
********************************************************/
function uf_popup_etc_dvdc_avl_info(){
	uf_frmNewWin(document.frm, '/jsp/pop/P01_27_20.jsp', 'INFOVIEW', '600', '700');
}


/********************************************************
* Function      : uf_popup_trns_stndrd_info()
* Description   : 자계좌이체허용기준
********************************************************/
function uf_popup_trns_stndrd_info(){
	uf_frmNewWin(document.frm, '/jsp/pop/P01_08_20.jsp', 'INFOVIEW', '800', '800');
}

/********************************************************
* Function      : uf_popup_bzpr()
* Description   : 자주쓰는사업자
********************************************************/
function uf_popup_bzpr(ridx){
	var frm = document.frm;
	var params = "";

	if( ridx != null ){
		get2post(frm, "pRowIdx="+ ridx);
		$('#etc_SplrBzRegNo_' 	+ ridx).attr('readonly',false).val('').css('backgroundColor','#fff');
		$('#etc_SplrCoNm_' 		+ ridx).attr('readonly',false).val('').css('backgroundColor','#fff');
		$('#etc_SplrPrsn_'		+ ridx).attr('checked',false); //개인거래
		if( $('#OwacNm_' 		+ ridx).attr('disabled') != true ){
			$('#OwacNm_'		+ ridx).val('');
		}
	}else{
		get2post(frm, "pRowIdx=");
		$('#etc_SplrBzRegNo_0'	).attr('readonly',false).val('').css('backgroundColor','#fff');
		$('#etc_SplrCoNm_0'		).attr('readonly',false).val('').css('backgroundColor','#fff');
		$('#etc_SplrPrsn_0'		).attr('checked',false); //개인거래
		if( $('#OwacNm').attr('disabled') != true ){
			$('#OwacNm'				).val('');
		}

	}
	uf_frmNewWin(frm, '/jsp/pop/P01_10_00.jsp?'+params, 'ACCVIEW', '400', '610','no');
	removeTempAttribute(frm);
}


/********************************************************
* Function      : uf_popup_my_acct()
* Description   : 자계좌이체용 입금계좌
********************************************************/
function uf_popup_my_acct(ridx){
	var frm = document.frm;
	
	if( ridx != null ){
		get2post(frm, "pRowIdx="+ridx);
	}
	try{
		get2post(frm,"sAgrmtInstId="+document.rtr_str_form.S_AGRMT_INST_ID.value); //신규등록
	}catch(e){
		get2post(frm,"sAgrmtInstId="+document.frm.S_AGRMT_INST_ID.value); //수정
	}
	uf_frmNewWin(frm, '/jsp/pop/P01_32_00.jsp', 'ACCVIEW', '600', '515','no');
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_fvrt_acct()
* Description   : 자주쓰는입금계좌
********************************************************/
function uf_popup_fvrt_acct(ridx){
	var frm = document.frm;
	var params = "";
	if( ridx != null ){
		get2post(frm, "pRowIdx="+ridx);
	}
	uf_frmNewWin(frm, '/jsp/pop/P01_09_00.jsp?'+params, 'ACCVIEW', '400', '645','no');
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_fvrt_acct_mgnt()
* Description   : 자주쓰는입금계좌관리
********************************************************/
function uf_popup_fvrt_acct_mgnt(){
	uf_frmNewWin(document.frm, '/jsp/pop/P01_09_11.jsp', 'ACCVIEW', '800', '460');
}

/********************************************************
* Function      : uf_popup_bzpr_mgnt()
* Description   : 자주쓰는사업자 관리
********************************************************/
function uf_popup_bzpr_mgnt(){
	uf_frmNewWin(document.frm, '/jsp/pop/P01_10_10.jsp', 'ACCVIEW', '800', '480');
}

/********************************************************
* Function      : uf_popup_cardno()
* Description   : 과제별카드번호
********************************************************/
function uf_popup_cardno(){
	uf_frmNewWin(document.frm, '/jsp/pop/P01_19_00.jsp', 'ACCVIEW', '457', '430');
}

/********************************************************
* Function      : uf_popup_mmb_inq()
* Parameter     : 폼명(frmNm), 사용자ID(UsrId), 사용자명(UsrNm), gridNm(그리드명), rIdx(레코드인덱스)
* Description	: 사용자조회
********************************************************/
function uf_popup_mmb_inq(frm, UsrId, UsrNm, gridNm, rIdx) {
	var p_url = "/jsp/pop/P01_28_00.jsp";
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
* Parameter     : 폼명(frmNm), 사용자ID(UsrId), 사용자명(UsrNm), gridNm(그리드명), rIdx(레코드인덱스)
* Description	: 사용자조회
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
* Parameter     : 폼명(frmNm), 사용금액(Amt), 공급가액(Splamt), 부가가치세액(Vat), 봉사료(SrvFee),gridNm(그리드명), rIdx(레코드인덱스)
* Description	: 카드부가세금액 수정
* 총사용금액에 봉사료 포함시켜 이체하도록 수정 20110720 손은준
********************************************************/
function uf_popup_crdAmt_updt(frm, Amt, Splamt, Vat, SrvFee, gridNm, rIdx, dv) {
	var p_url = "/jsp/pop/P01_25_00.jsp";
	
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
	
	uf_frmNewWin(frm, p_url, 'RCMS_MKE_POPUP10', 450, 550);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_evdc_dtls_brws()
* Parameter     : 사업비사용거래실적ID(pButrId), 증빙구분(pEvdcDv)
* Description	: 증빙상세조회
********************************************************/
function uf_popup_evdc_dtls_brws(pfrm,pButrId,pEvdcDv) {
	var url;
	var mode;
	
	switch(pEvdcDv){
		case "T":
			url = "/jsp/pop/P01_11_00.jsp";		//elec_txbl_dtls_brws.jsp
			get2post(pfrm, "pButrId="+pButrId);
			uf_frmNewWinNs(pfrm, url, 'RCMS_MKE_POPUP1', 820, 740, 'no');
			removeTempAttribute(pfrm);
			break;
		case "C":
			url = "/jsp/pop/P01_16_00.jsp";		//crd_sel_slip.jsp
			get2post(pfrm, "pButrId="+pButrId);
			uf_frmNewWin(pfrm, url, 'RCMS_MKE_POPUP1', 501, 766);
			removeTempAttribute(pfrm);
			break;
		case "R":
			url = "/jsp/pop/P01_14_00.jsp";		//crd_sel_slip.jsp
			get2post(pfrm, "pButrId="+pButrId);
			uf_frmNewWin(pfrm, url, 'RCMS_MKE_POPUP1', 501, 501);
			removeTempAttribute(pfrm);
			break;
		case "E":
			alert("기타증빙은 비목증빙 문서를 확인하세요.");
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
			
			uf_frmNewWinNs(pfrm, url, 'RCMS_MKE_POPUP1', 768, 700);
			removeTempAttribute(pfrm);
			break;				
	}
}

/********************************************************
* Function      : uf_popup_evdc_dtls_brws()
* Parameter     : 증빙일련번호(pEvdcSeqNo), 증빙구분(pEvdcDv)
* Description	: 증빙상세조회
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
* Parameter     : 폼명(frmNm), 기관ID(InstId), 기관명(InstNm)
* Description	: 기관조회
********************************************************/
function uf_popup_inst_inq(frm, InstId, InstNm) {
	var p_url = "/jsp/pop/P01_03_00.jsp";
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
* Parameter     : 카드번호(CrdNo)
* Description	: 사용자조회
********************************************************/
function uf_popup_crd_sbjt_dtls_info(CrdNo) {
	var p_url = "/jsp/pop/P01_15_00.jsp";
	var frm = document.frm;
	get2post(frm,"Crd_No="+replace(CrdNo,/-/gi,""));

	uf_frmNewWin(frm, p_url, 'RCMS_MKE_POPUP1', 465, 440);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_popup_crd_sel_slip()
* Parameter     : 사업비사용거래실적ID(ButrId)
* Description	: 사용자조회
********************************************************/
function uf_popup_crd_sel_slip(ButrId) {
	var p_url = "/jsp/pop/P01_16_00.jsp";
	var frm = document.frm;
	get2post(frm,"pButrId="+ButrId);

	uf_frmNewWin(frm, p_url, 'RCMS_MKE_POPUP1', 501, 766);
	removeTempAttribute(frm);
}

/********************************************************
* Function      : uf_SbjtDtlReq()
* Parameter     : 
* Description	: 
********************************************************/
function uf_SbjtDtlReq(param){
	get2post(document.frm, param);
	uf_frmNewWin(document.frm, '/jsp/pop/P01_23_00.jsp','RCMS_POP','785','850');
	removeTempAttribute(document.frm);
}

/******************************************************************
 * evma_append_pop 증빙등록
 * @param (evma_gb[T : 전자세금계산서, C : 카드결제, E : 기타증빙])
 * @return
******************************************************************/
function evma_append_pop(frm, evma_gb, pPlanRegDt, pPlanRegTm, pTitle){
	var url;
	var pop_width;
	var pop_height;
	var obj = document.xgrid;

	if(getGridRowCount(obj) > 0){alert("증빙은 1건만 등록가능합니다.");return;}
	
	get2post(frm, "pPlanRegDt="+pPlanRegDt);
	get2post(frm, "pPlanRegTm="+pPlanRegTm);	
	get2post(frm, "pTitle="+pTitle);	
	
	if(evma_gb=="T"){
		/*pop_width = "765";
		pop_height = "470";
		url = "/jsp/comm/elec_txbl_inq.jsp";
		*/
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

/******************************************************
* Function      : uf_sbhm_list()
* Parameter     : 폼명(frmNm)
* Description	: 사용자 권한 조회
********************************************************/
function uf_sbhm_list(frm) {
	var p_url = "/jsp/pop/P01_30_00.jsp";
	
	uf_frmNewWin(frm, p_url, 'RCMS_MKE_POPUP30', 800, 600);
	removeTempAttribute(frm);
}



/******************************************************
* Function      : uf_sbhm_list()
* Parameter     : 폼명(frmNm)
* Description	: 기타증빙불가능 비목 조회(연구시설.장비및재료비)
********************************************************/
function openModalEtcImplExc(frm,params,url,height) {
	if( typeof url == 'undefined' ){ url = '/jsp/pop/P01_33_00.jsp';}
	if( typeof height == 'undefined'){ height = 530; }
	return openModal(url + '?'+params, frm, "dialogWidth:450px; dialogHeight:"+height+"px; scroll:no;");
}
