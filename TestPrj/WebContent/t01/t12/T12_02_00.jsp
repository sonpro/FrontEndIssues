<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T12_02_00.jsp
 *   Description        : 사용실행
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29                   예기해             
 *
 *  @author 예기해
 *  @Since  2013. 10. 29
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<!-- //head start -->
<%@ include file="/inc/jspHead.jsp" %>
<!-- //head end -->


<%

    String ExctnPw          = "qwer1234";
    String ExctnPwLimtYn    = "N";
    
%>


<title>사용실행 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body class="line">

<ul id="accessibility">
    <li><a href="#header">주메뉴바로가기</a></li>
    <li><a href="#contaniner">컨텐츠바로가기</a></li>
    <li><a href="#footer">하단바로가기</a></li>
</ul>
<hr/>
<noscript><p id="warning_script">자바스크립트가 동작하지 않을 시 디자인이 정상적으로 보이지 않을 수 있습니다.</p></noscript>
<div id="wrapper">

    <!-- //header topMenu start// -->
    <%@ include file="/inc/topMenu.jsp" %>
    <!-- //header topMenu end// -->
    
    <!-- contaniner start -->
    <div id="contaniner">
        <!-- left start -->
        <div class="snb">
            <!-- left menu start -->
            




                    <div><img src="/images/pefo/sub_navt1.gif" alt="연구비관리" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_txt">현황조회</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_3dep">연구비사용 현황조회</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>
                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_txt_on">연구비사용관리</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep">사용등록</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_02_00.jsp'); return false;" class="menu_3dep_on">사용실행</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_03_00.jsp'); return false;" class="menu_3dep">사용결과내역 조회</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_txt">현물등록관리</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_3dep">현물등록내역 조회</a></li>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_02_00.jsp'); return false;" class="menu_3dep">현물사용내역 등록</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>

                        </div>
                    </div>
                    <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->


<script type="text/javascript">
var _param;
function uf_search(param){
    var frmRtr = document.rtr_str_form;
    var frm = document.frm;
    var val='0';
    
    if(!param || typeof param == "undefined") param = _param;
    
    if( isSubmit() ) return;    // 이중처리
    
    // 사용예정금액, 사용예정건수 초기화
    document.all["idExctnScheTrnAmt"].innerHTML = "0";
    document.all["idExctnScheTrnCnt"].innerHTML = "0";
    
    selectorColumn = gridRoot.getObjectById("selector");
    selectorColumn.setAllItemSelected(false);
    
    uf_proce_display_on();  //로딩바
    rMateGridLayoutInit_rMate();    //그리드 초기화
    setTimeout(
           function(){
               search(param);
           }
           , 1000);   // 1초후 실행 1000 = 1초
}

/********************************************************
* Function      : uf_extcn()
* Parameter     : 
* Description   : 연구비사용실행
********************************************************/
function uf_extcn(){
    var frm = document.frm;
    var AgrmtSeqNo = "";
    var idx = -1;
    var otmAmt = "";
    //선택된 row의 값 가져오기
    var dataRow;

    // 과제조회 유무 확인
    if(!bAutoSbjtSch()) return;
    
    if(!chkGridSelectedCount_rMate(gridRoot, "사용실행")) return;  // 사용정보수정건 한건 선택확인
    
    
    for(var i=0;i<selectorColumn.getSelectedIndices().length;i++){
        var idx = selectorColumn.getSelectedIndices()[i];
        
        dataRow = gridRoot.getItemAt(idx);
        
        if(("C"==dataRow.BZ_EXP_EXCTN_EVDC_DV) && ("B02003"==dataRow.CRD_SETL_METH)){
            alert("카드등록내역은 비목등록까지만 하시면 \n카드결제일에 카드결제계좌로 카드대금(연구개발비)이 입금됩니다.");
            return;
        }
        if("Y"!=dataRow.BZ_EXP_EXCTN_REG_YN){
            alert("진행상태가 [연구비사용요청]상태인 내역만 사용실행이 가능합니다.\n[비목등록/수정] 버튼을 이용하여 추가 부분을 작성해주세요.");
            return;
        }
        
    }
    
    
    
    //사용가능상태/금액확인
    var trnAmt = Number(document.all["idExctnScheTrnAmt"].innerHTML.replace(/,/gi,"")); 
    
    
    for(var i=0;i<selectorColumn.getSelectedIndices().length;i++){
        var idx = selectorColumn.getSelectedIndices()[i];
        
        dataRow = gridRoot.getItemAt(idx);
        
        if(otmAmt!="") otmAmt = otmAmt +"|"+dataRow.BZ_EXP_EXCTN_AMT;
        else otmAmt = dataRow.BZ_EXP_EXCTN_AMT;
    }
    
    
    if(!uf_StAllCheck()) return;

    if( !confirm("선택된 내역을 사용실행 하시겠습니까?") ) return;
    
    for(var i=0;i<selectorColumn.getSelectedIndices().length;i++){
        var idx = selectorColumn.getSelectedIndices()[i];
        
        dataRow = gridRoot.getItemAt(idx);
        get2post(frm, dataRow.G_PARAM);
        
    }
    
    
    if( isSubmit() ) return;                // 이중처리

    frm.action = "T12_02_20.jsp";
    frm.target = "_self";
    fn_submit_ns2(frm);
    
    
}



function uf_autoSbjtSchCallBack(param) {
    
    if(!param){
        alert("에러가 발생하였습니다. 잠시후 다시 시도해주세요.");
        return;
    }

    var responseXML = "";
    _param = param;
    
    var paramArray = param.split(",");
    
    var responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result>";
    if(paramArray.length > 0){
        for(var i=0;i<paramArray.length;i++){
            if("1" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 신규과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
            }else if("2" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 진행과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
            }else if("3" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
            }else if("4" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
            }
        }
    }
    
    
    responseXML += "</result></results>";
    
    
    document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
    //=============================
    //  실행시킬 메소드 들어갈 위치
    //=============================
        uf_search(param);
    //=============================
}

/********************************************************
* Function      : uf_itxpUpdate()
* Parameter     : 
* Description   : 비목등록/수정 팝업창 호출
********************************************************/
function uf_itxpUpdate(){
    
    var frm_key = document.rtr_str_form;
    var rcmsGrpCd;
    var frm = document.frm;
    var pop_width = "800",pop_height = "890",param,url,evdc_cd,crdSetlMthd;
    
    // 과제조회 유무 확인
    if(!bAutoSbjtSch()) return;
    
    if(!chkGridOneSelectedCount_rMate(gridRoot, "비목등록/수정")) return;  // 사용정보수정건 한건 선택확인
    
        
    //선택된 row의 값 가져오기
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot.getItemAt(rowIndex);
    
        get2post(frm,dataRow.G_PARAM);
        
        if( "B04121" == dataRow.EXCTN_ST ){
            alert('분할이체 재요청 건으로 수정 또는 삭제 할 수 없습니다.');
            return;
        }
        evdc_cd     =   dataRow.BZ_EXP_EXCTN_EVDC_DV;
        crdSetlMthd =   dataRow.CRD_SETL_METH;
        grpYn       =   dataRow.GRP_YN;
        
        //2011.11.30 EDMS 관련
        get2post(frm, "hmpwRoleDv="+frm_key.S_HMPW_ROLE_DV.value);
        get2post(frm, "rcmsGrpCd="+frm_key.S_RCMS_GRP_CD.value);    
        get2post(frm, "pmsId="+frm_key.S_PMS_ID.value);
        

        
    //카드면서 집계방식인경우 창크기줄임
    if("C"  ==  evdc_cd && "B02003"==crdSetlMthd && grpYn == 'N'){
        pop_height = "650";
    }
    
    if( grpYn == 'Y' ){
        url = "/t01/t12/T12_02_11.jsp?"; //비목우선
    }else{
        url = "/t01/t12/T12_02_10.jsp?"; //증빙우선
    }
    uf_frmNewWinNs(frm, url, 'RCMS_MAKE_POPUP', pop_width, pop_height);
    removeTempAttribute(frm);
    
}
/********************************************************
* Function      : crd_info_display()
* Parameter     : 
* Description   : 카드증빙조회시코멘트
********************************************************/
function crd_info_display(val){
    if("0"==val){
        document.getElementById("crd_sch_info").style.display   =   "none"; 
    }else{
        document.getElementById("crd_sch_info").style.display   =   "inline";
    }
}
/********************************************************
* Function      : uf_Inst_delItxp()
* Parameter     : 
* Description   : 비목 및 증빙삭제
********************************************************/
function uf_Inst_delItxp(){
    var frm = document.frm;
        
    // 과제조회 유무 확인
    if(!bAutoSbjtSch()) return;

    if(!chkGridSelectedCount_rMate(gridRoot, "비목 및 증빙삭제")) return;  // 사용정보수정건 한건 선택확인

    if( !confirm("선택하신 내역을 삭제하시겠습니까?") ) return;
    if( isSubmit() ) return;                                    // 이중처리

    //선택된 row의 값 가져오기
    var dataRow;
    
    for(var i=0;i<selectorColumn.getSelectedIndices().length;i++){
        var idx = selectorColumn.getSelectedIndices()[i];
        
        dataRow = gridRoot.getItemAt(idx);
        
        if( "B04121" == dataRow.EXCTN_ST ){
            alert('삭제 불가능한 증빙내역이 포함되어 있습니다.(분할이체 재요청)');
            removeTempAttribute(frm);
            return;
        }else{
            get2post(frm, dataRow.G_PARAM);
        }
        
    }
    


    uf_proce_display_on();  //로딩바
    
    setTimeout(
        function(){
                try{   
                    reset_submit();
                    alert('삭제되었습니다.');
                    uf_search();
                    
                }finally{

                }
            
            }, 1000);   // 1초후 실행 1000 = 1초s
}
</script>









    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
      



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u12_02_00_t.gif" alt="사용실행"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>연구비관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />연구비사용관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">사용실행</span></li>
                        
                    </ul>
                </div>
            </div>                      
      <!-- //pagenav end// -->
      <div class="t30"></div>
    

        




<!-- //auto search start -->
<%
    boolean isSbjtAutoSchMulti  =   true;  //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글
    boolean beSearchBtn         =   false;   //조회버튼 생성구분
    String SSbjtInqDvCd        = "F";      //정산협약제외
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->






    
      <div class="cb b10"></div>
      <h3>사용요청등록내역</h3>
      <!-- 검색단 start -->
<form name="frm" method="post">
<input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />
<input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="N" />      
      <div class="search">
        <div class="search_boxt"></div>
        <div class="search_boxc">
          <fieldset>
          <legend>사용요청등록내역 검색</legend>
          <table width="680" summary="사용요청등록내역 검색" class="tbl_search">
            <caption>
            사용요청등록내역 검색
            </caption>
            <colgroup>
            <col width="18%" />
            <col width="82%" />
            </colgroup>
            <tbody>
              <tr>
                  <th scope="row">증빙구분</th>
                  <td>
                      <select name="sch_evdc_type" id="sch_evdc_type">
                          <option value="A">전체</option>
                          <option value="T">전자세금계산서</option>
                          <option value="C">카드</option>
                          <option value="E">기타</option>
                          <option value="TE">전자세금계산서/기타</option>
                      </select>
                  </td>
              </tr>            
              <tr>
                <th scope="row"><label for="usedaystart">날짜구분</label></th>
                <td>
                <%=ComboUtil.getComboBox("RNDB30", "DATE_DV", "", "", "", ComboUtil.OPT_NONE) %>
                <%@ include file="/inc/set_date_btn.jsp" %>
                <%@ include file="/inc/set_date_week.jsp" %>        
                </td>
              </tr>
            </tbody>
          </table>
          </fieldset>
        </div>
<div class="search_boxb1" id="search_boxb"></div>
                <!-- 검색단 상세조회 start -->
                <div class="detail_boxt" id="detail_box"style="display:none;">
                    <p class="ar07">
                        <a href="#dummy" onclick="uf_hide_detail_condition('btnDetailShow');"><img src="/bt/bt_sclose.gif" alt="숨김" /></a>
                    </p>
                    <div class="detail_boxc">
                        <fieldset>
                            <legend>사용실행조회 상세조회</legend>
                            <table width="680" summary="사용실행조회 상세조회" class="tbl_search01">
                            <caption>사용실행조회 상세조회</caption>
                            <colgroup>
                                <col width="18%" />
                                <col width="32%" />
                                <col width="18%"/>
                                <col width="32%"/>
                            </colgroup>
                            <tbody>
                          <tr>
                            <th scope="row"><label for="search_AchvInstIndv1Cd">기관용개별코드A</label></th>
                            <td><input type="text" name="search_AchvInstIndv1Cd" id="search_AchvInstIndv1Cd" title="기관용개별코드A" class="inputl"  style="ime-mode:inactive;width:125px;"/></td>
                            <th scope="row"><label for="search_AchvInstIndv2Cd">기관용개별코드B</label></th>
                            <td><input type="text" name="search_AchvInstIndv2Cd" id="search_AchvInstIndv2Cd" title="기관용개별코드B" class="inputl"  style="ime-mode:inactive;width:125px;"/></td>
                            </tr>
                            </tbody>
                            </table>
                        </fieldset>
                    </div>
                </div>
                <div id="detail_boxb" style="display:none;"><img src="/images/pefo/search_box5.gif" alt=" " /></div>
                <!-- //검색단 상세조회 end// -->        
      </div>
      <div class="cb"></div>
      <!-- //검색단 end// -->
      <!-- 조회 상세조회 버튼 start -->
      <div class="search_bt1 ar">
                      <a href="#dummy" onclick="uf_show_detail_condition(this.id);" id="btnDetailShow"><img src="/bt/bt_search1.gif" alt="상세조회" class="vt" /></a>
      <a href="#dummy" onclick="autoSbjtFormGen();" class="bt_search" title="조회"></a></div>
      <!-- //조회 상세조회 버튼 end// -->
      <div class="t10"></div>
      <div class="total_box">
        <p class="fl">
                <div style="display:inline-block;margin-top:5px;">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건]</div>
                <a href="#dummy" onclick="gridAllCheck();"><img src="/images/bt/bt_total.gif" alt="전체선택" valign="top" class="b05" /></a>
        </p>
                <p id="crd_sch_info" class="ar b05" style="display:none;"><span style='color:red;'> ※ 카드증빙은 결제일전(집계전) 내역만 조회가 됩니다.</span></p>
                <p class="cb"></p>
      </div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "387", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- 그리드 End -->
            <!-- 상세보기 레이어 팝업 -->
            <div id="layerPopup" style="display:none;z-index:999999;">
                <div id="layerPopupTitle" style="width:355px;height:30px;">
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="닫기"></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
<!-- *************************  rMateGrid ************************* -->
      
      
      
      
      
      
      
      
      
      
      <div class="t10">
        <table width="704" border="0" cellspacing="0" cellpadding="0" summary="사용요청등록내역 상세내용" class="tbl_type02">
          <caption>
          사용요청등록내역 상세내용
          </caption>
          <colgroup>
          <col width="20%" />
          <col width="30%"/>
          <col width="20%" />
          <col width="30%"/>
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">사용예정금액</th>
              <td id="idExctnScheTrnAmt">0</td>
              <th scope="row">사용예정건수</th>
              <td class="ll" id="idExctnScheTrnCnt">0</td>
            </tr>
          </tbody>
        </table>
      </div>
      </form>
      <!-- action bt start -->
        <div class="action_bt">
            <div class="fl"> 
                <a href="#dummy"  onclick="uf_itxpUpdate();" class="bt_action2" title="수정"><span class="bt_sp1">수정</span></a> 
                <a href="#dummy"  onclick="uf_Inst_delItxp();" class="bt_action2-1" title="삭제"><span class="bt_sp">삭제</span></a> 
            </div>
            <div class="fr">
            
                <a href="#dummy" onclick="uf_extcn();" class="bt_action7-1" title="연구비사용실행"><span class="bt_sp">연구비사용실행</span></a>                  
            
             </div>
        </div>
    <div class="cb"></div>  
      <!-- //action bt end// -->
      <!-- 주의사항 start -->
      <div class="guide_box">
        <p class="guide_boxt"></p>
        <div class="guide_boxc">
          <ul>
            
            <li>사용실행(이체) 가능시간은 09:00~20:00 입니다.</li>
          </ul>
        </div>
        <p class="guide_boxb"></p>
      </div>
      <!-- //주의사항 end// -->

    <!-- 안내 가이드 start -->
    <div class="guide_box1" id="guide">
        <div class="guide_boxt1">
            <p class="txt_title fl">사용실행 안내</p> 
            <p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
        </div>
        <div class="guide_boxc1">
            <ul>
                <li>본 사용실행은 사업비 이체권한(총무담당자, 회계담당자)을 가진 사용자가 <span class="txt_or">'개인공인인증서'로 로그인</span>한 뒤 미리 설정된  <span class="txt_or">'이체비밀번호'와 '사업자법인범용공인인증서'를 통해 실시간계좌이체</span>를 하실 수 있습니다. </li>
                <li>'연구비사용실행' 버튼이 보이지 않는다면? 과제책임자에게 요청하여 이체권한을 받으시기 바랍니다.</li>
                <li>실시간계좌이체는 <span class="txt_or">전자세금계산서, 기타증빙 건에 한해 처리 가능</span>합니다.(카드증빙은 제외)</li>
            </ul>
            <p class="tip">복수개의 과제를 선택하여 복수개의 집행을 한번에 처리할 수 있습니다.</p>
            <ul>
                <li>카드증빙의 경우 결제일 이전 취소 건에 대해서는 이곳에서 “삭제”하시면 결제일에 집계되지 않습니다.</li>
                <li>사용실행(이체) 가능시간은 09:00~20:00 입니다.</li>
            </ul>
            
        </div>

        <p class="guide_boxb1"></p>
        
    </div>
    <!-- //안내 가이드 end// -->
    </div>
<!-- //content end// -->
 


    </div>
    <!-- //contaniner end//-->
    <div class="cb"></div>
    
    <!-- footer start -->
    <%@ include file="/inc/jspFooter.jsp" %>
    <!-- //footer end// -->
    
    <!-- 퀵메뉴 start -->
    <%@ include file="/inc/quickMenu.jsp" %>
    <!-- //퀵메뉴 end// -->
    
</div><!-- wrapper end -->

<script type="text/javascript">
/********************************************************
* Function      : uf_StAllCheck(idx)
* Parameter     : 
* Description   : 연구비사용실행 그리드 OnChange Evt시 일잔액 검증
********************************************************/
function uf_StAllCheck(){
    
    var bzRegNo = "";
    var idx = -1;
    
    //선택된 row의 값 가져오기
    var dataRow;
    
    selectorColumn = gridRoot.getObjectById("selector");    //체크된 ID 가져오기
    var arrIdx = selectorColumn.getSelectedIndices();       //체크된 row 가져오기
    
    for(var i=0;i<arrIdx.length;i++){
        var idx = arrIdx[i];
        
        dataRow = gridRoot.getItemAt(idx);
        
        if("정상" != dataRow.EXCTN_LIMT_ST){
            alert("선택한 내역중에 사용제한상태가 정지상태인 과제가 있습니다.\n과제의 사용제한상태가 정지상태인 건은 사용실행 할 수 없습니다.");
            return false;
        }
        
        if("8" != dataRow.AGRMT_ST_DV){
            alert("["+dataRow.SBJT_NM +"] 과제는 \n협약체결이 되지 않은 과제입니다.\n협약체결이 되지 않은 과제는 사용실행 할 수 없습니다.");
            return false;
        }
        
        if("N" == dataRow.PRIVT_ALOT_AMT_UN_PAY_YN){              
            alert("["+dataRow.SBJT_NM +"] 과제는 \n민간부담금이 미납되어 사용실행을 할 수 없습니다.");
            return false;
        }
        
        if("N"== dataRow.AGRMT_SEQ_NO3){
            alert("["+dataRow.SBJT_NM +"] 과제는 \n이체 권한이 없습니다.\n과제권한을 확인해 주시기 바랍니다.");
            return false;
        }
        
        if(bzRegNo=="") bzRegNo=dataRow.AGRMT_INST_BZ_REG_NO;
        if(bzRegNo!=dataRow.AGRMT_INST_BZ_REG_NO){
            alert("선택한 내역중에 기관(사업자등록번호)이 다른 과제가 있습니다.\n기관이 다른 과제는 동시에 사용실행 할수 없습니다.");
            return false;
        }
        
    }
    
    return true;
}

    



$(document).ready(function() {
        // rMateGrid 초기화
        rMateGridInit();
        
        $("a#example1").fancybox();
        $("a#example2").fancybox();
        
        $('#btn-guide').click(function(){
          if( $('#guide').css('height') == '17px' ){
            $('#guide').css({overflow:'hidden'}).animate({height:200},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
          }else{
            $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
          }
          return false;
        });
    
      
});

</script>






<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//레이아웃 설정
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"2\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
    <columns>\
    <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"45\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"EXCTN_TIME\"                 dataField=\"EXCTN_TIME\"              headerText=\"등록일시\"             width=\"120\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_DT\"                    dataField=\"TRSC_DT\"                 headerText=\"사용일자\"             width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_REG_YN_NM\"     dataField=\"BZ_EXP_EXCTN_REG_YN_NM\"  headerText=\"진행상태\"             width=\"100\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_REG_YN\"        dataField=\"BZ_EXP_EXCTN_REG_YN\"     headerText=\"집행등록여부\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_EVDC_DV_NM\"    dataField=\"BZ_EXP_EXCTN_EVDC_DV_NM\" headerText=\"증빙구분\"             width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_NM\"                    dataField=\"SBJT_NM\"                 headerText=\"과제명\"               width=\"130\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_ACCT_BNK_NM\"            dataField=\"RCV_ACCT_BNK_NM\"         headerText=\"입금은행\"             width=\"70\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_ACCT_NO\"                dataField=\"RCV_ACCT_NO\"             headerText=\"입금계좌번호\"         width=\"100\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OWAC_NM\"                    dataField=\"OWAC_NM\"                 headerText=\"예금주명\"             width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_AMT\"           dataField=\"BZ_EXP_EXCTN_AMT\"        headerText=\"금액\"                 width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_SPLY_AMT\"               dataField=\"USE_SPLY_AMT\"            headerText=\"공급금액\"             width=\"110\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_VAT_AMT\"                dataField=\"USE_VAT_AMT\"             headerText=\"부가가치세액\"         width=\"90\"    visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_ST_NM\"                dataField=\"EXCTN_ST_NM\"             headerText=\"집행단계\"             width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_SETL_METH_NM\"           dataField=\"CRD_SETL_METH_NM\"        headerText=\"이체방식\"             width=\"100\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USR_NM\"                     dataField=\"USR_NM\"                  headerText=\"과제책임자\"           width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_ID\"                    dataField=\"SBJT_ID\"                 headerText=\"과제번호\"             width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUTR_ID\"                    dataField=\"BUTR_ID\"                 headerText=\"증빙일련번호\"         width=\"200\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_EVDC_DV\"       dataField=\"BZ_EXP_EXCTN_EVDC_DV\"    headerText=\"증빙구분코드\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO\"               dataField=\"AGRMT_SEQ_NO\"            headerText=\"협약일련번호\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_SBJT_PRGR_ST\"          dataField=\"INST_SBJT_PRGR_ST\"       headerText=\"과제진행상태\"         width=\"90\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_LIMT_ST\"              dataField=\"EXCTN_LIMT_ST\"           headerText=\"사용제한상태\"         width=\"90\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_BZ_REG_NO\"       dataField=\"AGRMT_INST_BZ_REG_NO\"    headerText=\"사업자등록번호\"       width=\"95\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACHV_INST_INDV_1_CD\"        dataField=\"ACHV_INST_INDV_1_CD\"     headerText=\"기관용개별코드A\"      width=\"110\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACHV_INST_INDV_2_CD\"        dataField=\"ACHV_INST_INDV_2_CD\"     headerText=\"기관용개별코드B\"      width=\"110\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_ST_DV\"                dataField=\"AGRMT_ST_DV\"             headerText=\"협약상태구분\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PRIVT_ALOT_AMT_UN_PAY_YN\"   dataField=\"PRIVT_ALOT_AMT_UN_PAY_YN\" headerText=\"민간부담금미납여부\"  width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO2\"              dataField=\"AGRMT_SEQ_NO2\"           headerText=\"과제권한\"             width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO3\"              dataField=\"AGRMT_SEQ_NO3\"           headerText=\"이체가능권한여부\"     width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_SETL_METH\"              dataField=\"CRD_SETL_METH\"           headerText=\"이체방식코드\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"GRP_YN\"                     dataField=\"GRP_YN\"                  headerText=\"그룹YN\"               width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_ST\"                   dataField=\"EXCTN_ST\"               headerText=\"진행상태코드\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"G_PARAM\"                    dataField=\"G_PARAM\"                 headerText=\"G_PARAM\"              width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{BZ_EXP_EXCTN_REG_YN_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{BZ_EXP_EXCTN_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            </DataGridFooter>\
        </footers>\
    </DataGrid>\
    <Style>\
        .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                    fontFamily: 돋움; fontSize: 12; color: 0x000000; \
                    horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                    verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                    selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
        .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
        .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
    </Style>\
</rMateGrid>\
";


//그리드 레이아웃 호출 
var rMateGridInitLayout = function() {
    gridApp = FABridge.gridBridge.root();
    gridRoot = gridApp.getGridRoot();
    gridApp.setLayout(layoutStr); //그리드 레이아웃 생성

    //클릭 이벤트 추가
    var itemClickHandler = function(event) {
        var rowIndex = event.getRowIndex();
        var columnIndex = event.getColumnIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
         
        var columns = dataGrid.getColumns();
        var ii = 0;
        var jj = 0;
        for ( var i = 0; i < columns.length; i++){
            if (columns[i].getVisible()) {
                jj++;
                if (jj == columnIndex){
                    break;
                }
            } else{
                ii++;
            }
        }
        columnIndex = columnIndex + ii;
        var column = columns[columnIndex];
        var dataField = column.getDataField();
        
        //if (columnIndex == 3) { //그리드상의 더블클릭 컬럼번호. 0부터 시작.
        if (dataField == "selector") { //그리드상의 더블클릭 컬럼번호. 0부터 시작.
            //uf_Click(rowIndex, columnIndex, dataRow, dataField);
            selectorColumn = gridRoot.getObjectById("selector");
            //alert(selectorColumn.getSelectedIndices());
            
            //선택된 열의 합계금액 구하기
            uf_ExctnScheCnt(selectorColumn.getSelectedIndices()); 
        };
    };
    
    //더블클릭 상세보기 이벤트 추가
    var itemDoubleClickHandler = function(event) {
        
        var rowIndex = event.getRowIndex();
        var columnIndex = event.getColumnIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        var column = dataGrid.getColumns()[columnIndex];
        var dataField = column.getDataField();
        // 소계인지 여부
        if (dataRow.typeName == "mx.collections::SummaryObject") {
            return;
        }
        
        if (columnIndex == 0) {
            // 해당 데이타가 펼쳐진 행인지 여부
            var isOpen = gridRoot.isItemOpen(rowIndex);
            // 애니메이션 효과 줄지 여부
            var animate = true;
            // 해당 데이타의 하위 자식을 open/close합니다.
            gridRoot.expandItem(rowIndex, !isOpen, animate);
        }
        
        //group 구조인가 확인
        if(typeof(dataRow.children) != "undefined") return;
        
        //popupDetail(rowIndex, dataRow);
        layerDetail(dataGrid, dataRow);
        
    };

    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //이벤트 등록
        //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
        dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    gridRoot.addEventListener("dataComplete", getRowCount);

};



//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//로딩 후 rMadeGrid 출력
function rMateGridSetData() {
    //rMageGrid 초기화
    //gridApp.setData(null);

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    
    
    // 마우스 휠 이벤트 리스너를 적용합니다.
    addGridMouseWheelEventListener();

    
};


/********************************************************
* Function      : uf_ExctnScheCnt()
* Parameter     : 열인덱스(rIdx)
* Description   : 연구비사용실행 그리드 OnChange Evt시 일잔액 검증
********************************************************/
function uf_ExctnScheCnt(rIdx){
    var ExctnScheTrnAmt = 0;
    var ExctnScheTrnCnt = 0;
    
    if(!rIdx || rIdx.length < 1 ){
        document.all["idExctnScheTrnAmt"].innerHTML = toMoney(ExctnScheTrnAmt);
        document.all["idExctnScheTrnCnt"].innerHTML= toMoney(ExctnScheTrnCnt);
        return;
    }
    
    var idx;
    
    for(var i=0;i<rIdx.length;i++){
        idx = rIdx[i];
        ExctnScheTrnAmt = ExctnScheTrnAmt + Number(gridRoot.getItemFieldAt(idx, "BZ_EXP_EXCTN_AMT"));
        ExctnScheTrnCnt++;
    }
    
    document.all["idExctnScheTrnAmt"].innerHTML = toMoney(ExctnScheTrnAmt);
    document.all["idExctnScheTrnCnt"].innerHTML= toMoney(ExctnScheTrnCnt);
}


    
    

/**
 * 전체 선택을 설정하거나 해제합니다.
 */
function gridAllCheck() {
    selectorColumn = gridRoot.getObjectById("selector");
    var isSelected = selectorColumn.getAllItemSelected();
    selectorColumn.setAllItemSelected(!selectorColumn.getAllItemSelected());
    
    
    if(!isSelected){    // false 일 시 전체 선택
        selectorColumn = gridRoot.getObjectById("selector");
        //선택된 열의 합계금액 구하기
        uf_ExctnScheCnt(selectorColumn.getSelectedIndices()); 
    }else{
        uf_ExctnScheCnt();
    }
    
}



//세부비목 팝업 ( 기존 스타일과 거의 동일하게 사용 )
function uf_Click(rowIndex, columnIndex, dataRow, dataField) {

    editRowIndex = rowIndex; //라인idx
    editDataRow = dataRow; //라인data
    editDataField = dataField;

    get2post(document.frm, "AgrmtInstId=" + editDataRow.AGRMT_INST_ID); //협약기관ID
    get2post(document.frm, "AgrmtSeqNo=" + editDataRow.AGRMT_SEQ_NO); //협약일련번호
    get2post(document.frm, "DtlsItxpCd=" + editDataRow.ITXP_CD); //세부비목코드
    get2post(document.frm, "HgrkItxpNm=" + editDataRow.HGRK_ITXP_NM); //비목
    get2post(document.frm, "DtlsItxpNm=" + editDataRow.ITXP_NM); //세부비목

    //uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_10.jsp', 'TAXVIEW1', '800', '500', 'yes');
    uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_10.jsp', 'TAXVIEW1', '800', '1000', 'yes');
    removeTempAttribute(document.frm); //get2post 삭제

}




function getRowCount(){
    $("#InqPrsTotlNcnt2").html(getGridRowCount_rMate());
}

</script>
<!-- **********************  rMateGrid setting END ***********************  -->





<script type="text/javascript">
var cnt = 0;
function SetData(param){    

    try{
        
        var paramArray = param.split(",");
        var gridValue = [];
        cnt = 0;
        
        if(paramArray.length > 0){
            var paramValue = "";
            for(var i=0;i<paramArray.length;i++){
                
                paramValue = paramArray[i];
                if(paramValue == "1"){

                }else if(paramValue == "2"){
                    
                    gridValue[cnt++] = {"BZ_EXP_EXCTN_EVDC_DV":"T","EXCTN_TIME":"2014-03-20 17:01:42","TRSC_DT":"2014-03-11",  "BZ_EXP_EXCTN_REG_YN_NM":"연구비사용요청","BZ_EXP_EXCTN_REG_YN":"Y","BZ_EXP_EXCTN_EVDC_DV_NM":"전자세금계산서", "SBJT_NM":"RCMS 실습용 진행과제","RCV_ACCT_BNK_NM":"E 은행", "RCV_ACCT_NO":"555-55-555555-0","OWAC_NM":"㈜ 가 업체","BZ_EXP_EXCTN_AMT":"5500","USE_SPLY_AMT":"5000","USE_VAT_AMT":"500","EXCTN_ST_NM":"집행전",    "CRD_SETL_METH_NM":"실시간이체","USR_NM":"이책임","SBJT_ID":"TEST0002","INST_SBJT_PRGR_ST":"수행","EXCTN_LIMT_ST":"정상","AGRMT_INST_BZ_REG_NO":"111-11-11111","ACHV_INST_INDV_1_CD":"","ACHV_INST_INDV_2_CD":"","AGRMT_ST_DV":"8","CRD_SETL_METH":"2","G_PARAM":"SbjtId=TEST0002&SbjtNm=RCMS 실습용 진행과제&ExctnRegDt=20140320&ExctnRegDrtm=170142&BzExpExctnEvdcDv=T&ButrId=T201308192251542&RcvBnkCd=&RcvBnkNm=E은행&RcvAcctNo=100-10-100000&RcvPsbkPrtCtt=연구시설장비구입비&WdrwPsbkPrtCtt=연구시설장비구입비&BzExpExctnAmt=5500&SplyAmt=5000&VatAmt=500&PaymUsag=(주)RCMS&OwacNm=(주) 가 업체&TelNo=&ExctnStgDv=&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&BzMomAcctBnkCd=003&RchExpAcctBnkCd=003&BzMomAcctNo=10000000000&RchExpAcctNo=10000000000&AgrmtInstBzRegNo=1111111111&AchvInstIndv1Cd=&AchvInstIndv2Cd=&BzExpExctnRegYn=Y&CrdSetlMeth=2&InstLnkDatYn=N&ExctnSt="};
                    gridValue[cnt++] = {"BZ_EXP_EXCTN_EVDC_DV":"E","EXCTN_TIME":"2014-03-10 14:52:31","TRSC_DT":"",            "BZ_EXP_EXCTN_REG_YN_NM":"연구비등록",    "BZ_EXP_EXCTN_REG_YN":"N","BZ_EXP_EXCTN_EVDC_DV_NM":"기타증빙",       "SBJT_NM":"RCMS 실습용 진행과제","RCV_ACCT_BNK_NM":"",      "RCV_ACCT_NO":"",             "OWAC_NM":"",       "BZ_EXP_EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0",  "EXCTN_ST_NM":"",         "CRD_SETL_METH_NM":"실시간이체","USR_NM":"이책임","SBJT_ID":"TEST0002","INST_SBJT_PRGR_ST":"수행","EXCTN_LIMT_ST":"정상","AGRMT_INST_BZ_REG_NO":"111-11-11111","ACHV_INST_INDV_1_CD":"","ACHV_INST_INDV_2_CD":"","AGRMT_ST_DV":"8","CRD_SETL_METH":"2","G_PARAM":"SbjtId=TEST0002&SbjtNm=RCMS 실습용 진행과제&ExctnRegDt=20140310&ExctnRegDrtm=145231&BzExpExctnEvdcDv=E&ButrId=E201308192251542&RcvBnkCd=&RcvBnkNm=&RcvAcctNo=&RcvPsbkPrtCtt=연구시설장비구입비&WdrwPsbkPrtCtt=연구시설장비구입비&BzExpExctnAmt=2500&SplyAmt=2500&VatAmt=0&PaymUsag=(주) 가 업체&OwacNm=(주) 가 업체&TelNo=&ExctnStgDv=&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&BzMomAcctBnkCd=003&RchExpAcctBnkCd=003&BzMomAcctNo=10000000000&RchExpAcctNo=10000000000&AgrmtInstBzRegNo=1111111111&AchvInstIndv1Cd=&AchvInstIndv2Cd=&BzExpExctnRegYn=N&CrdSetlMeth=2&InstLnkDatYn=N&ExctnSt="};
                    gridValue[cnt++] = {"BZ_EXP_EXCTN_EVDC_DV":"C","EXCTN_TIME":"2014-02-18 17:33:43","TRSC_DT":"2014-02-14",  "BZ_EXP_EXCTN_REG_YN_NM":"연구비등록",    "BZ_EXP_EXCTN_REG_YN":"N","BZ_EXP_EXCTN_EVDC_DV_NM":"카드결제",       "SBJT_NM":"RCMS 실습용 진행과제","RCV_ACCT_BNK_NM":"",      "RCV_ACCT_NO":"",             "OWAC_NM":"",       "BZ_EXP_EXCTN_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","EXCTN_ST_NM":"집행전",    "CRD_SETL_METH_NM":"결제일집계방식","USR_NM":"이책임","SBJT_ID":"TEST0002","INST_SBJT_PRGR_ST":"수행","EXCTN_LIMT_ST":"정상","AGRMT_INST_BZ_REG_NO":"111-11-11111","ACHV_INST_INDV_1_CD":"","ACHV_INST_INDV_2_CD":"","AGRMT_ST_DV":"8","CRD_SETL_METH":"1","G_PARAM":"SbjtId=TEST0002&SbjtNm=RCMS 실습용 진행과제&ExctnRegDt=20140218&ExctnRegDrtm=173343&BzExpExctnEvdcDv=C&ButrId=C201304182250861&RcvBnkCd=&RcvBnkNm=&RcvAcctNo=&RcvPsbkPrtCtt=연구시설장비구입비&WdrwPsbkPrtCtt=연구시설장비구입비&BzExpExctnAmt=1100&SplyAmt=1000&VatAmt=100&PaymUsag=(주) 가 업체&OwacNm=(주) 가 업체&TelNo=&ExctnStgDv=&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&BzMomAcctBnkCd=003&RchExpAcctBnkCd=003&BzMomAcctNo=10000000000&RchExpAcctNo=10000000000&AgrmtInstBzRegNo=1111111111&AchvInstIndv1Cd=&AchvInstIndv2Cd=&BzExpExctnRegYn=N&CrdSetlMeth=2&InstLnkDatYn=N&ExctnSt="};
                    gridValue[cnt++] = {"BZ_EXP_EXCTN_EVDC_DV":"E","EXCTN_TIME":"2014-02-10 11:36:40","TRSC_DT":"",            "BZ_EXP_EXCTN_REG_YN_NM":"연구비사용요청","BZ_EXP_EXCTN_REG_YN":"Y","BZ_EXP_EXCTN_EVDC_DV_NM":"기타증빙",       "SBJT_NM":"RCMS 실습용 진행과제","RCV_ACCT_BNK_NM":"C 은행", "RCV_ACCT_NO":"300-30-300000","OWAC_NM":"㈜ 다 업체","BZ_EXP_EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0",   "EXCTN_ST_NM":"집행전",  "CRD_SETL_METH_NM":"실시간이체","USR_NM":"이책임","SBJT_ID":"TEST0002","INST_SBJT_PRGR_ST":"수행","EXCTN_LIMT_ST":"정상","AGRMT_INST_BZ_REG_NO":"111-11-11111","ACHV_INST_INDV_1_CD":"","ACHV_INST_INDV_2_CD":"","AGRMT_ST_DV":"8","CRD_SETL_METH":"2","GRP_YN":"Y","G_PARAM":"SbjtId=TEST0002&SbjtNm=RCMS 실습용 진행과제&ExctnRegDt=20140210&ExctnRegDrtm=113640&BzExpExctnEvdcDv=E&ButrId=E201308192251542&RcvBnkCd=&RcvBnkNm=C은행&RcvAcctNo=300-30-300000&RcvPsbkPrtCtt=연구시설장비구입비&WdrwPsbkPrtCtt=연구시설장비구입비&BzExpExctnAmt=2500&SplyAmt=2500&VatAmt=0&PaymUsag=(주) 가 업체&OwacNm=(주) 가 업체&TelNo=&ExctnStgDv=&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&BzMomAcctBnkCd=003&RchExpAcctBnkCd=003&BzMomAcctNo=10000000000&RchExpAcctNo=10000000000&AgrmtInstBzRegNo=1111111111&AchvInstIndv1Cd=&AchvInstIndv2Cd=&BzExpExctnRegYn=Y&CrdSetlMeth=2&InstLnkDatYn=N&ExctnSt="};
                    gridValue[cnt++] = {"BZ_EXP_EXCTN_EVDC_DV":"T","EXCTN_TIME":"2014-02-03 10:23:12","TRSC_DT":"2014-02-03",  "BZ_EXP_EXCTN_REG_YN_NM":"연구비등록",    "BZ_EXP_EXCTN_REG_YN":"N","BZ_EXP_EXCTN_EVDC_DV_NM":"전자세금계산서", "SBJT_NM":"RCMS 실습용 진행과제","RCV_ACCT_BNK_NM":"",      "RCV_ACCT_NO":"",                "OWAC_NM":"",       "BZ_EXP_EXCTN_AMT":"1320","USE_SPLY_AMT":"1200","USE_VAT_AMT":"120","EXCTN_ST_NM":"",       "CRD_SETL_METH_NM":"실시간이체","USR_NM":"이책임","SBJT_ID":"TEST0002","INST_SBJT_PRGR_ST":"수행","EXCTN_LIMT_ST":"정상","AGRMT_INST_BZ_REG_NO":"111-11-11111","ACHV_INST_INDV_1_CD":"","ACHV_INST_INDV_2_CD":"","AGRMT_ST_DV":"8","CRD_SETL_METH":"2","GRP_YN":"Y","G_PARAM":"SbjtId=TEST0002&SbjtNm=RCMS 실습용 진행과제&ExctnRegDt=20140203&ExctnRegDrtm=102312&BzExpExctnEvdcDv=T&ButrId=T201308192251542&RcvBnkCd=003&RcvBnkNm=&RcvAcctNo=20020200000&RcvPsbkPrtCtt=연구시설장비구입비&WdrwPsbkPrtCtt=연구시설장비구입비&BzExpExctnAmt=1320&SplyAmt=1200&VatAmt=120&PaymUsag=(주)RCMS&OwacNm=(주)RCMS&TelNo=2345&ExctnStgDv=2&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&BzMomAcctBnkCd=003&RchExpAcctBnkCd=003&BzMomAcctNo=10000000000&RchExpAcctNo=10000000000&AgrmtInstBzRegNo=1111111111&AchvInstIndv1Cd=(주)RCMS&AchvInstIndv2Cd=&BzExpExctnRegYn=Y&CrdSetlMeth=2&InstLnkDatYn=N&ExctnSt=B04101"};

                }else if(paramValue == "3"){
                    
                    
                }else if(paramValue == "4"){


                }
                
                paramValue = "";
            }

        }
    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
    }
}

function search(param){

    if(!param) return false;
    try{
        document.body.style.cursor = "wait";
        SetData(param); //Insert    Grid
        document.body.style.cursor = "auto";

    }finally{
        reset_submit();
        searchAlert();
    }
}

function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}
</script>



</body>
</html>