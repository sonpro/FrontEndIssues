<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T14_01_00.jsp
 *   Description        : 현물등록내역 조회
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29     				예기해        		
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

<title>현물등록내역 조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_txt">연구비사용관리</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep">사용등록</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_02_00.jsp'); return false;" class="menu_3dep">사용실행</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_03_00.jsp'); return false;" class="menu_3dep">사용결과내역 조회</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_txt_on">현물등록관리</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_3dep_on">현물등록내역 조회</a></li>

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
/******************************************************************
 * uf_search			 현물등록내역조회요청
 * @param
 * @return
******************************************************************/
 
function uf_search(SchGb){
    var frm = document.frm;
    
    if( isSubmit() ) return;    // 이중처리
    
    
    var rFrm = document.rtr_str_form;
    if(rFrm.S_AGRMT_SEQ_NO == "" || typeof rFrm.S_AGRMT_SEQ_NO == "undefined") return;
    
    uf_proce_display_on();  //로딩바
    rMateGridLayoutInit_rMate();    //그리드 초기화
    
    $("#InqPrsTotlNcnt2").text("0");
    $("#InqPrsTotlCnt2").text("0");
    
    setTimeout(
           function(){
               setGrid(rFrm.S_AGRMT_SEQ_NO.value);
           }
           , 1000);   // 1초후 실행 1000 = 1초
           
           
}

function uf_autoSbjtSchCallBack(param) {
    
    if(!param){
        alert("에러가 발생하였습니다. 잠시후 다시 시도해주세요.");
        return;
    }

    var responseXML = "";
    
    if("1" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 신규과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
    }else if("2" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 진행과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
    }else if("3" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
    }else if("4" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
    }
    
    
    
    document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
    
    uf_search();
    
}

/******************************************************************
 * uf_sptDelete			 현물사용내역삭제(EDMS첨부파일삭제)
 * @param
 * @return
******************************************************************/
function uf_sptDelete(){
	var frm = document.frm;
	var idx = -1;

	// 과제조회 유무 확인
    if(!bAutoSbjtSch()) return;
	
	if(!chkGridSelectedCount_rMate(gridRoot)) return false;		//그리드선택내역확인
	
	if(!confirm("해당내역을 삭제하시겠습니까?")){
		return false;
	}
	
	if( isSubmit() ) return;	// 이중처리

	
    //선택된 row의 값 체크
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot.getItemAt(rowIndex);
    
	get2post(frm, dataRow.GRIDKEY);
	
	
	get2post(frm, "&AgrmtInstId="+document.rtr_str_form.S_AGRMT_INST_ID.value);
	get2post(frm, "&AgrmtSeqNo="+document.rtr_str_form.S_AGRMT_SEQ_NO.value);
	get2post(frm, "&PmsId="+document.rtr_str_form.S_PMS_ID.value);
	get2post(frm, "&SbjtId="+document.rtr_str_form.S_SBJT_ID.value);
	
	
	uf_proce_display_on();  //로딩바
    
    setTimeout(
           function(){
        	    reset_submit();
                alert("현물사용내역이 삭제되었습니다.");
                uf_search('S');
           }
           , 1000);   // 1초후 실행 1000 = 1초
           
    removeTempAttribute(frm);    
	//***************************************************************************
}

</script>





    
    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
      



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u15_01_00_t.gif" alt="현물등록내역 조회"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>연구비관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />현물등록관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">현물등록내역 조회</span></li>
						
                    </ul>
                </div>
            </div>                
      <!-- //pagenav end// -->
      <div class="t30"></div>
      
      

<!-- ---------------------------------------------------------------------------- -->
			
			





<!-- //auto search start -->
<%
    boolean isSbjtAutoSchMulti  =   false;  //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글
    boolean beSearchBtn         =   false;   //조회버튼 생성구분
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->

			
			
			
      <div class="cb b10"></div>
      <h3>사용내역</h3>
      <!-- 검색단 start -->
      <!-- ---------------------------------------------------------------------------- --> 
            <form name="frm" method="post">
            
                <input type="hidden" name="TrSupYn" value="N" />        
                <input type="hidden" name="PrsPgno" value="0" />                         <!--현재페이지번호-->
                <input type="hidden" name="attr98" value="" />                           <!--edms등록파일명-->
                <input type="hidden" name="attr99" value="" />                           <!--edms삭제 결과값-->
                
                <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" /> 
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
            <col width="12%" />
            <col width="88%" />
            </colgroup>
            <tbody>
              <tr>
                <th scope="row">조회구분</th>
                <td colspan="3">
                <select name="Dv" class=''>
                    <option value="R">등록일자</option>
                    <option value="U">사용일자</option>
                </select>
                <%@ include file="/inc/set_date_btn.jsp" %>
                <%@ include file="/inc/set_date_week.jsp" %>
                </td>
              </tr>
            </tbody>
          </table>
          </fieldset>
        </div>
        <div class="search_boxb1"></div>
      </div>
      <div class="cb"></div>
      <!-- //검색단 end// -->
      <!-- 조회 상세조회 버튼 start -->
      <div class="search_bt1 ar"><a href="#dummy" onclick="autoSbjtFormGen();" class="bt_search" title="조회"></a></div>
      <!-- //조회 상세조회 버튼 end// -->
      <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->
      <div class="t10"></div>
      <!-- 총건수/인쇄 저장 버튼 start -->
      <div class="total_box">
        <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건 /<span id="InqPrsTotlCnt2">0</span> 건]</p>
        <p class="ar b05">
          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄"/></a>
          <a href="#dummy" onclick="excelExport_rMate(); return false;" ><img src="/bt/bt_save.gif" alt="저장"/></a>
        </p>
        <p class="cb"></p>
      </div>
      <!-- //총건수/인쇄 저장 버튼 end// -->
      
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
      <!-- action bt start -->
      <div class="action_bt"> 
        <div class="fl">
        <a href="#dummy" onclick="uf_search('N');" id="NextBtn" style="display:none;" class="bt_action2-01" title="다음"><span class="bt_sp">다음</span></a>
        </div>
        <a href="#dummy" onclick="uf_sptDelete();" class="bt_action2-1" title="삭제"><span class="bt_sp">삭제</span></a> 
      </div>
      <!-- //action bt end// -->
      </form>
    <!-- 안내 가이드 start -->
    <div class="guide_box1" id="guide">
        <div class="guide_boxt1">
            <p class="txt_title fl">현물등록내역 조회 안내</p> 
            <p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
        </div>
        <div class="guide_boxc1">
            <ul>
            <li>현물이 계상되어 있는 경우 RCMS 시스템에 현물집행내역을 등록하시고 증빙은 '현물출자확인서'로 정산서류등록 메뉴를 통해 등록하시면 됩니다.</li>
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
	
	
	
$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();	
    
    $("a#example1").fancybox();
    $("a#example2").fancybox();
  
	  $('#btn-guide').click(function(){
	    if( $('#guide').css('height') == '17px' ){
	      $('#guide').css({overflow:'hidden'}).animate({height:90},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
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
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"            headerText=\"선택\"           width=\"50\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"USE_REG_DT\"         dataField=\"USE_REG_DT\"          headerText=\"등록일자\"       width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"사용일자\"       width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"세목코드\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세목\"           width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"세세목코드\"     width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목\"         width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PITM\"               dataField=\"PITM\"                headerText=\"사용처\"         width=\"130\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_AMT\"            dataField=\"USE_AMT\"             headerText=\"사용금액\"       width=\"100\" visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_PTCL\"           dataField=\"USE_PTCL\"            headerText=\"사용내역\"       width=\"200\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUIT_ID\"            dataField=\"BUIT_ID\"             headerText=\"증빙일련번호\"   width=\"150\" visible=\"false\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"GRIDKEY\"            dataField=\"GRIDKEY\"             headerText=\"GRIDKEY\"        width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{USE_DT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
        selectorColumn = gridRoot.getObjectById("selector");
        selectorColumn.setSelectedIndices([event.getRowIndex()]);
    };
    

    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //이벤트 등록
        dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    //gridRoot.addEventListener("layoutComplete", gridInit);
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


//count
function getRowCount(){
    var cnt = getGridRowCount_rMate();
    
    $("#InqPrsTotlNcnt2").text(cnt);
    $("#InqPrsTotlCnt2").text(cnt);
}

</script>
<!-- **********************  rMateGrid setting END ***********************  -->




<script type="text/javascript">
var cnt = 0;
function setGridData(agrmtSeqNo){    

    try{
        
        var gridValue = [];
        cnt = 0;
        
        //1. 신규과제
        if(agrmtSeqNo == "G00000000000001"){
            
        //2. 진행과제
        }else if(agrmtSeqNo == "G00000000000002"){

        	gridValue[cnt++] = {"USE_REG_DT":"2014-02-10","USE_DT":"2014-02-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"1월 인건비","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=1월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-03-10","USE_DT":"2014-03-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"2월 인건비","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=2월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};

        //3. 정산과제(보고서 미제출)
        }else if(agrmtSeqNo == "G00000000000003"){

        	gridValue[cnt++] = {"USE_REG_DT":"2013-04-10","USE_DT":"2013-04-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 3월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 3월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-05-10","USE_DT":"2013-05-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 4월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 4월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-06-10","USE_DT":"2013-06-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 5월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 5월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-07-10","USE_DT":"2013-07-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 6월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 6월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-08-09","USE_DT":"2013-08-09","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 7월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 7월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-09-10","USE_DT":"2013-09-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 8월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 8월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-10-10","USE_DT":"2013-10-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 9월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 9월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-11-08","USE_DT":"2013-11-08","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 10월 인건비","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 10월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-12-10","USE_DT":"2013-12-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 11월 인건비","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 11월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-01-10","USE_DT":"2014-01-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 12월 인건비","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 12월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-02-10","USE_DT":"2014-02-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"14년 1월 인건비" ,"BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=14년 1월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-02-28","USE_DT":"2014-02-28","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"14년 2월 인건비" ,"BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=14년 2월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};

        //4. 정산과제(보고서 제출 완료)
        }else if(agrmtSeqNo == "G00000000000004"){

        	gridValue[cnt++] = {"USE_REG_DT":"2013-03-08","USE_DT":"2013-03-08","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 2월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 2월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-04-10","USE_DT":"2013-04-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 3월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 3월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-05-10","USE_DT":"2013-05-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 4월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 4월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-06-10","USE_DT":"2013-06-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 5월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 5월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-07-10","USE_DT":"2013-07-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 6월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 6월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-08-09","USE_DT":"2013-08-09","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 7월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 7월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-09-10","USE_DT":"2013-09-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 8월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 8월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-10-10","USE_DT":"2013-10-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 9월 인건비", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 9월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-11-08","USE_DT":"2013-11-08","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 10월 인건비","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 10월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-12-10","USE_DT":"2013-12-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 11월 인건비","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 11월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-01-10","USE_DT":"2014-01-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"13년 12월 인건비","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=13년 12월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-02-10","USE_DT":"2014-02-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"인건비","PITM":"㈜RCMS","USE_AMT":"2500","USE_PTCL":"14년 1월 인건비" ,"BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=㈜RCMS&UsePtcl=14년 1월 인건비&SubDtlsItxpCd=B0101001&UseDt=20140210"};

        }
        

    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
    }
}

function setGrid(agrmtSeqNo){

    if(!agrmtSeqNo) return false;
    try{
        document.body.style.cursor = "wait";
        setGridData(agrmtSeqNo); //Insert    Grid
        //SetData(); //Insert Grid
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