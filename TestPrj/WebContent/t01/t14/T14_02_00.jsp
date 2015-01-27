<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T14_02_00.jsp
 *   Description        : 현물사용내역 등록
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

<title>현물사용내역 등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_3dep">현물등록내역 조회</a></li>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_02_00.jsp'); return false;" class="menu_3dep_on">현물사용내역 등록</a></li>
                        
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
function uf_search(SchGb){
    var frm = document.frm;
    

    //if( isSubmit() ) return;    // 이중처리
    //getRegPossDis();          // 버튼권한


    
    var rFrm = document.rtr_str_form;
    if(rFrm.S_AGRMT_SEQ_NO == "" || typeof rFrm.S_AGRMT_SEQ_NO == "undefined") return;
    
    //그리드 초기화
    rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStr);
    
    if( isSubmit() ) return;    // 이중처리
    
    uf_proce_display_on();  //로딩바
    
    setTimeout(
           function(){
               setData(rFrm.S_AGRMT_SEQ_NO.value);
           }
           , 1000);   // 1초후 실행 1000 = 1초
           
    
    SpotBalTbl.style.display = "block";
           
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


//비목 테이블 콤보
var SelDtlsItxpCd = new Array();
var SelDtlsItxpNm = new Array();
var SelSubDtlsItxpCd = new Array();
var SelSubDtlsItxpNm = new Array();

function mkDtlsItxpCd(tObjIdx){
    var tObjItxp = document.all["ReprDtlsItxpCd"];
    var tObjDtlsItxp = document.all["ReprSubDtlsItxpCd"];
    var opt_name = "선택";
    
    tObjItxp.options.length = 1;
    tObjItxp.options[0] = new Option(opt_name);
    
    for(var i=0,j=SelDtlsItxpCd.length; i<j; i++){
        tObjItxp.options[i+1] = new Option(SelDtlsItxpNm[i], SelDtlsItxpCd[i]);
    }
    
    tObjDtlsItxp.options.length = 1;
    tObjDtlsItxp.options[0] = new Option(opt_name);
}

function SelDtlsItxpCdOnChange(obj, idx){
    if(typeof obj=="undefined" || obj==""){
        obj = document.all["ReprDtlsItxpCd"];
        tObjIdx = idx;
    }
    
    var k = 0;
    var tObjIdx = obj.id.split("_")[1];
    var tObj = document.all["ReprSubDtlsItxpCd"];
    var opt_name = "선택";
    if(obj.selectedIndex !=0 ){
        for(var j = 0;j < SelSubDtlsItxpCd.length; j++){
            if(obj.value == SelDtlsItxpCd[j]){k = j;}   
        }
        tObj.options.length = SelSubDtlsItxpCd[k].length+1;
        tObj.options[0] = new Option(opt_name);
        
        for(var i=0; i < SelSubDtlsItxpCd[k].length; i++){
            tObj.options[i+1] = new Option(SelSubDtlsItxpNm[k][i], SelSubDtlsItxpCd[k][i]);
        }
    }else{
        tObj.options.length = 1;
        tObj.options[0] = new Option(opt_name);
    }
}

</script>







<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//레이아웃 설정
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DateFormatter id=\"datefmt2\" formatString=\"YYYY-MM-DD\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" lockedColumnCount=\"2\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
        <columns>\
            <DataGridColumn id=\"\"                   dataField=\"\"                    itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"            headerText=\"선택\"           width=\"55\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" />\
            <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"사용일자\"       width=\"100\" visible=\"true\"  textAlign=\"center\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{datefmt2}\" itemEditor=\"DateEditor\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세부비목\"       width=\"100\"   visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목\"         width=\"110\"   visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_BTN\"  dataField=\"SUB_DTLS_ITXP_BTN\"   headerText=\"세목변경\"       width=\"90\" visible=\"true\"  textAlign=\"center\" editable=\"false\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle2\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PITM\"               dataField=\"PITM\"                headerText=\"사용처\"         width=\"100\" visible=\"true\"  textAlign=\"center\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_AMT\"            dataField=\"USE_AMT\"             headerText=\"사용금액\"       width=\"90\" visible=\"true\"  textAlign=\"right\" editable=\"true\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_PTCL\"           dataField=\"USE_PTCL\"            headerText=\"사용내역\"       width=\"200\" visible=\"true\"  textAlign=\"left\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"세부비목코드\"   width=\"0\" visible=\"false\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"세세목코드\"     width=\"0\" visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUIT_ID\"            dataField=\"BUIT_ID\"             headerText=\"증빙일련번호\"   width=\"130\" visible=\"false\"  textAlign=\"left\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUIT_INST\"          dataField=\"BUIT_INST\"           headerText=\"증빙추가\"       width=\"80\"   visible=\"false\"  textAlign=\"center\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{DTLS_ITXP_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
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

        eventFocusRowIndex = rowIndex;
        if (dataField == "SUB_DTLS_ITXP_BTN") { //그리드상의 더블클릭 컬럼번호. 0부터 시작.
            ItxpOneApcl("Y");               //현물사용여부
        };
        
        
    };
    

    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //이벤트 등록
        dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
    };

    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    gridRoot.addEventListener("layoutComplete", rMateGridSetData);
    
    //data 출력 후 실행할 이벤트 등록
    gridRoot.addEventListener("dataComplete", columnBackGroundStyle);
    
    //그리드의 데이터 변경시 호출
    gridRoot.addEventListener("itemDataChanged", uf_SetValue_rMate);
  

};



//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//로딩 후 rMadeGrid 출력
function rMateGridSetData() {

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData([]); //데이터 출력
    
};



// 그리드에서 수정이 일어나면 불려집니다.
function uf_SetValue_rMate(event) {

    //columnBackGroundStyle();
    dataGrid.invalidateList();  //그리드 재호출
    var footer = gridRoot.getObjectById("footer");
    footer.invalidateData();    //footer 갱신
    
    
    
    var rowIndex = event.getRowIndex();                 // 변경된 행번호
    var columnIndex = event.getColumnIndex();       // 변경된 열번호
    var dataField = event.getDataField();               // 변경된 열의 데이타 필드
    var dataRow = gridRoot.getItemAt(rowIndex); // 변경된 데이타 레코드
    //var oldValue = event.getValue();                        // 변경전 값
    //var newValue = event.getNewValue();                 // 변경후 값

    
    // 그리드금액입력부 마이너스체크
    if("USE_AMT" == dataField){ //금액수정 시 합계를 재호출하여 총 금액 변경
        if(isNaN(dataRow.USE_AMT)){
            alert("[사용금액] 은 숫자만 입력하실 수 없습니다.");
            gridRoot.setItemFieldAt("0", rowIndex, "USE_AMT");
            return false;
        }else{
            if(Number(dataRow.USE_AMT) < 0){
                alert("[사용금액] 에 \"-\" 를 입력하실 수 없습니다.");
                gridRoot.setItemFieldAt("0", rowIndex, "USE_AMT");
                return false;
            }
        }

        var useAmt  = parseFloat(dataRow.TRNS_AMT);     //사용금액
        var vatAmt  = parseFloat(dataRow.USE_VAT_AMT);  //부가가치세액

        gridRoot.setItemFieldAt((useAmt-vatAmt), rowIndex, "USE_SPLY_AMT");
        
        uf_sbjt_itxp_trn1();
    }
    
}


//컬럼 색상변경
function columnBackGroundStyle() {
  collection = gridRoot.getCollection();
  if (collection == null) {
      alert("collection 객체를 찾을 수 없습니다");
      return;
  }
  
  for (var i = 0; i < collection.getLength(); i++) {
      collection.addCellAttributeDetailAt(i, 2, 1, 1, null, 0xEDF2FE);
      collection.addCellAttributeDetailAt(i, 3, 1, 1, null, 0xEDF2FE);
      collection.addCellAttributeDetailAt(i, 4, 1, 1, null, 0xEDF2FE);
      collection.addCellAttributeDetailAt(i, 5, 1, 1, null, 0xF0F0F0);
      collection.addCellAttributeDetailAt(i, 6, 1, 1, null, 0xEDF2FE);
      collection.addCellAttributeDetailAt(i, 7, 1, 1, null, 0xEDF2FE);
      collection.addCellAttributeDetailAt(i, 8, 1, 1, null, 0xEDF2FE);
  }
}



function columnButtonStyle2(item, value, column) {
  if (value && value != "")
      return { color: 0xFF0000,       backgroundColor: 0xCCCCCC   };
  return null;
}



//맨끝에 행 추가
function ItxpRecordInsert_setPitm_rMate() {
  
  if(null == document.rtr_str_form.SBJT_MAP_KEYS.value || ''==document.rtr_str_form.SBJT_MAP_KEYS.value ){
      alert("과제를 선택하세요.");
      return false;
  }
  
  //세팅 할 값만 써줘도 됨.
  var item = {
          "USE_DT": "",            
          "DTLS_ITXP_NM": "",      
          "SUB_DTLS_ITXP_NM": "",  
          "SUB_DTLS_ITXP_BTN": "세목변경", 
          "PITM": "산기평",              
          "USE_AMT": "0",           
          "USE_PTCL": "",          
          "DTLS_ITXP_CD": "",      
          "SUB_DTLS_ITXP_CD": "",  
          "BUIT_ID": "",           
          "BUIT_INST": ""         
  };
  gridRoot.addItemAt(item);   //컬럼추가
  columnBackGroundStyle();    //색상변경
}







/**
* 현물비목별 이체금액 추가
* param : obj(비목그리드), itx_cd_col_nm(비목코드), trn_amt_col_nm(금액)
*/
function uf_sbjt_itxp_trn1(obj, itx_cd_col_nm, trn_amt_col_nm){
    if( typeof obj=="undefined" ) obj = gridRoot;
    if( typeof itx_cd_col_nm=="undefined" )  itx_cd_col_nm = "DTLS_ITXP_CD";
    if( typeof trn_amt_col_nm=="undefined" )  trn_amt_col_nm = "USE_AMT";

    var itxp_sum = 0;   // 합계
    uf_sbjt_itxp_reset();
    
    
    collection = obj.getCollection();
    
    var dataRow;
    var gridCnt = collection.getLength();
    
    
    for(var i=0;i<gridCnt;i++){
        dataRow = obj.getItemAt(i);
        
        if(eval("dataRow."+itx_cd_col_nm) != ""){
            var trn_obj = eval('document.all["'+eval("dataRow."+itx_cd_col_nm)+'_extcn_trn"]');
            var trn_amt =Number(trn_obj.innerHTML.replace(/,/gi,''));
            trn_amt = trn_amt + Number(eval("dataRow."+trn_amt_col_nm)); 
            trn_obj.innerHTML = toMoney(trn_amt);
        }
        itxp_sum = itxp_sum + Number(eval("dataRow."+trn_amt_col_nm));
    }

    document.all["itxp_extcn_sum"].innerHTML = toMoney(itxp_sum);
}

/**
* 비목금액 reset
* param : obj(param : item_key=item_value&...)
*/
function uf_sbjt_itxp_reset(){
var test =0;
    $("#TblSbjtItxpBal span[id$=_extcn_trn]").each(function(){
        $(this).text("0");
    });

    $("#itxp_extcn_sum").text("0");
}



//삭제
function ItxpRecordDelete(SpotUsePossItxpYn){

    if(null == document.rtr_str_form.SBJT_MAP_KEYS.value || ''==document.rtr_str_form.SBJT_MAP_KEYS.value ){
        alert("과제를 선택하세요.");
        return false;
    }
    
    selectorColumn = gridRoot.getObjectById("selector");

    if(selectorColumn.getSelectedIndices().length < 1){
        alert("선택된 내역이 없습니다.");
        return;
    }
    
    removeItem(selectorColumn.getSelectedIndices());
    
    uf_sbjt_itxp_trn(gridRoot, SpotUsePossItxpYn);
}



/**
* 비목별 이체금액 추가
* param : obj(비목그리드), itx_cd_col_nm(비목코드), trn_amt_col_nm(금액)
*/
function uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn,itx_cd_col_nm,trn_amt_col_nm){
    if( typeof obj=="undefined" ) obj = gridRoot;
    if( typeof itx_cd_col_nm=="undefined" )  itx_cd_col_nm = "DTLS_ITXP_CD";    //세부비목코드
    if( typeof trn_amt_col_nm=="undefined" )  trn_amt_col_nm = "품목별합계"; //품목별합계
    if( typeof SpotUsePossItxpYn=="undefined" )  SpotUsePossItxpYn = "";

    var itxp_sum = 0;   // 합계
    uf_sbjt_itxp_reset();
    
    
    
    collection = obj.getCollection();
    
    var dataRow;
    var gridCnt = collection.getLength();
    
    
    for(var i=0;i<gridCnt;i++){
        dataRow = obj.getItemAt(i);
        
        if( obj.getItemFieldAt(i, itx_cd_col_nm) != "" ){
            //var trn_obj = eval('document.all["'+getCell(obj,i,itx_cd_col_nm)+'_extcn_trn"]');
            var col_extcn_trn = dataRow.DTLS_ITXP_CD+'_extcn_trn';
            var trn_obj = document.all[col_extcn_trn];
            var trn_amt =Number(trn_obj.innerHTML.replace(/,/gi,''));
            //trn_amt += Number(getCell(obj,i,trn_amt_col_nm));
            //itxp_sum += Number(getCell(obj,i,trn_amt_col_nm));
            if( SpotUsePossItxpYn=="Y" ){
                trn_amt = trn_amt + Number(dataRow.USE_AMT); 
            }else{
                trn_amt = trn_amt + Number(dataRow.SPLY_AMT) + Number(dataRow.EXCTN_REG_VAT_AMT);
            } 
            trn_obj.innerHTML = toMoney(trn_amt);
        }
        if( SpotUsePossItxpYn=="Y" ){
            itxp_sum = itxp_sum + Number(dataRow.USE_AMT);
        }else{
            itxp_sum = itxp_sum + Number(dataRow.SPLY_AMT) + Number(dataRow.EXCTN_REG_VAT_AMT);
        }
    }

    document.all["itxp_extcn_sum"].innerHTML = toMoney(itxp_sum);

    
}

//일괄적용
function ItxpBachApcl(SpotUsePossItxpYn, dtlsItxpCd, dtlsItxpNm, subDtlsItxpCd, subDtlsItxpNm, itx_cd_col_nm, trn_amt_col_nm){
    if( typeof obj=="undefined" ) obj = gridRoot;
    var cbReprDtlsItxpCd = document.all["ReprDtlsItxpCd"];              // 세목콤보
    var cbReprSubDtlsItxpCd = document.all["ReprSubDtlsItxpCd"];        // 세부비목콤보
    
    var ReprDtlsItxpCd = "";
    var ReprDtlsItxpNm = "";
    var ReprSubDtlsItxpCd = "";
    var ReprSubDtlsItxpNm = "";
    
    if(cbReprDtlsItxpCd.selectedIndex!=0 && cbReprSubDtlsItxpCd.selectedIndex!=0){
        ReprDtlsItxpCd = cbReprDtlsItxpCd[cbReprDtlsItxpCd.selectedIndex].value;
        ReprDtlsItxpNm = cbReprDtlsItxpCd[cbReprDtlsItxpCd.selectedIndex].text;
        
        ReprSubDtlsItxpCd = cbReprSubDtlsItxpCd[cbReprSubDtlsItxpCd.selectedIndex].value;
        ReprSubDtlsItxpNm = cbReprSubDtlsItxpCd[cbReprSubDtlsItxpCd.selectedIndex].text;
    }else{
        alert("대표세부비목을 선택해 주십시오.");
        return;
    }
    
        
    if(typeof dtlsItxpCd=="undefined") dtlsItxpCd="DTLS_ITXP_CD"; //세부비목코드
    if(typeof dtlsItxpNm=="undefined") dtlsItxpNm="DTLS_ITXP_NM";   //세부비목
    if(typeof subDtlsItxpCd=="undefined") subDtlsItxpCd="SUB_DTLS_ITXP_CD";    //세세목코드
    if(typeof subDtlsItxpNm=="undefined") subDtlsItxpNm="SUB_DTLS_ITXP_NM";  //세세목
    if(typeof SpotUsePossItxpYn=="undefined") SpotUsePossItxpYn="";
    
    
    collection = obj.getCollection();
    
    var dataRow;
    var gridCnt = collection.getLength();
    for(var i=0;i<gridCnt;i++){
        dataRow = obj.getItemAt(i);
        
        //eval(dataRow+dtlsItxpNm ) = ReprDtlsItxpNm;
        dataRow.DTLS_ITXP_CD = ReprDtlsItxpCd;
        dataRow.DTLS_ITXP_NM = ReprDtlsItxpNm;
        dataRow.SUB_DTLS_ITXP_CD = ReprSubDtlsItxpCd;
        dataRow.SUB_DTLS_ITXP_NM = ReprSubDtlsItxpNm;
        obj.setItemAt(dataRow, i);
    }
    
    columnBackGroundStyle();    //
    uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn, itx_cd_col_nm, trn_amt_col_nm);
}




//arItxp.jsp 파일에 존재
function ItxpOneApcl(SpotUsePossItxpYn){
    var frm = document.frm;
    var rFrom = document.rtr_str_form;
    var seqNo = rFrom.S_AGRMT_SEQ_NO.value;
    var idx = eventFocusRowIndex;
    //if(!chk_sbjt_sch()) return false;
    uf_popup_SubDtlsItxp_rMate(frm, idx, SpotUsePossItxpYn, seqNo);
}


/******************************************************************
 * uf_sptSave       현물사용내역등록 저장
 * @param
 * @return
******************************************************************/
function uf_sptSave(){
    var frm = document.frm;
    var obj = gridRoot;
    var insertStr       =   "";
    var idxlength       =   getGridRowCount_rMate(obj);           //등록한세부비목

    if(!bAutoSbjtSch()) return false;                           // 과제조회여부확인
    
    //20140402 이현욱전임 alert 안뜨게 요청
    //if(!chkGridSelectedCount_rMate(obj)) return false;      // 그리드선택내역확인
    
    
    if(!chk_sbjt_itxp_trnAmt("Y")) return false;                // 사용금액체크
    
    if(idxlength <= 0){
        alert("등록하신 내역이 없습니다.\n추가버튼을 클릭하여 내역을 추가하세요");
        return false;
    }
    frm.ReptNcnt.value  =   idxlength;                          //현물등록건수
 
    
    
    selectorColumn = gridRoot.getObjectById("selector");    //체크된 ID 가져오기
    var arrIdx = selectorColumn.getSelectedIndices();       //체크된 row 가져오기
    arrIdx = arrIdx.sort(sortNumber);   //오름차순정렬
    var dataRow;
    
    
    for(var i=0;i<idxlength;i++){
//        dataRow = obj.getItemAt(arrIdx[i]);
        dataRow = obj.getItemAt(i);
        var useDt = dataRow.USE_DT.replace(/-/gi,"");
        
        if( useDt.length == 8)  insertStr   +=      "&UseDt=" +useDt;
        else{
            alert((i+1)+"번째 내역의 사용일자를 입력하세요");
            return false;
        }
        
        if(!chkGridNullValue_rMate( dataRow.DTLS_ITXP_NM, "세부비목"))
            return false;
        else{
            insertStr   +=      "&DtlsItxpNm=" +dataRow.DTLS_ITXP_NM;
            insertStr   +=      "&DtlsItxpCd=" +dataRow.DTLS_ITXP_CD;
        }
        if(!chkGridNullValue_rMate(dataRow.SUB_DTLS_ITXP_NM, "세세목"))
            return false;
        else{
            insertStr   +=      "&SubDtlsItxpNm=" +dataRow.SUB_DTLS_ITXP_NM;
            insertStr   +=      "&SubDtlsItxpCd=" +dataRow.SUB_DTLS_ITXP_CD;
        }
        if(!chkGridNullValue_rMate(dataRow.PITM, "사용처"))
            return false;
        else{
            insertStr   +=      "&Pitm=" +dataRow.PITM;
        }
        
        if(!chkGridNullValue_rMate(dataRow.USE_AMT, "사용금액")){
            return false;
        }else if(Number(dataRow.USE_AMT) <= 0){
            alert("[사용금액]의 내용을 입력하세요.");
            return false;
        }
        else{
            insertStr   +=      "&UseAmt=" +dataRow.USE_AMT;
        }
        
        if(!chkGridNullValue_rMate(dataRow.USE_PTCL, "사용내역"))
            return false;
        else{
            insertStr   +=      "&UsePtcl=" +dataRow.USE_PTCL;
        }
        //if(!chkGridNullValue(obj, i, "증빙일련번호"))
        //  return false;
        //else{
        //  insertStr   +=  "&EvdcSeqNo=" +getCell(obj, i, "증빙일련번호");
        //}
    }
    //alert(document.rtr_str_form.S_AGRMT_INST_ID.value + ' ' + document.rtr_str_form.S_SBJT_ID.value + ' ' + document.rtr_str_form.S_ANNL.value);
    if( isSubmit() ) return;                    // 이중처리
    get2post(frm, insertStr);                   //폼에담기
    
    get2post(frm, "&AgrmtInstId="+document.rtr_str_form.S_AGRMT_INST_ID.value);
    get2post(frm, "&AgrmtSeqNo="+document.rtr_str_form.S_AGRMT_SEQ_NO.value);
    get2post(frm, "&PmsId="+document.rtr_str_form.S_PMS_ID.value);
    get2post(frm, "&SbjtId="+document.rtr_str_form.S_SBJT_ID.value);
    
    

    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                try{
                    reset_submit();
                    alert("현물사용내역이 등록되었습니다.");
                }finally{
                    //fn_url("T14_02_00.jsp","CC3","CC00301");
                    fn_url("/t01/t14/T14_02_00.jsp"); 
                    removeTempAttribute(frm);
                }
            }
            , 1000);   // 1초후 실행 1000 = 1초
            
    
    
    
    
}


function chk_sbjt_itxp_trnAmt(SpotUsePossItxpYn){
    var elem = document.body.all.tags('span');
    
    var idx=0;
    
    while (idx < elem.length) {
    
        //_extcn_bal
        //_extcn_trn
        //_extcn_tit
        if( elem[idx].id.indexOf('_extcn_trn') > 0 ){
        
            var trn = elem[idx].innerHTML;
            trn = trn.replace(/,/gi, '');
            if( trn == "0" ){
                idx++;
                continue;
            }
            
            var bal = document.getElementById( elem[idx].id.substring(0, elem[idx].id.length-10) + "_extcn_bal" ).innerHTML;
            bal = bal.replace(/,/gi, '');
            
            if( Number(trn) > Number(bal) ){
                var msg;
                if( typeof SpotUsePossItxpYn!="undefined" && SpotUsePossItxpYn=="Y" ){
                    msg = " 현물사용금액이 현물잔액을 초과하였습니다.\n\n현물잔액을 확인하시기 바랍니다.";
                }else{
                    msg = " 사용예정금액이 사용잔액을 초과하였습니다.\n\n사용잔액을 확인하시기 바랍니다.";                   
                }
                
                var tit = document.getElementById( elem[idx].id.substring(0, elem[idx].id.length-10) + "_extcn_tit" ).innerHTML;
                alert(tit + msg);
                return false;
            }
        }
        idx++;
    }
    
    return true;    
}



/******************************************************************
 * uf_edmsDelete        그리드삭제시 EDMS첨부파일삭제
 * @param               복수건인경우 docKey '|'로 구분
 * @return
******************************************************************/
function uf_edmsDelete(){
    var frm = document.frm;
    var trgdocKey   =   "";     //삭제할 연계키"|" 구분자사용
    var isDelEvdc   =   false;  //삭제하는내역에 증빙일련번호가 존재하면 true 그리드만삭제시 false

    
    selectorColumn = gridRoot.getObjectById("selector");    //체크된 ID 가져오기
    var arrIdx = selectorColumn.getSelectedIndices();       //체크된 row 가져오기
    arrIdx = arrIdx.sort(sortNumber);   //오름차순정렬
    var dataRow;
    
    for(var i=0;i<arrIdx.length;i++){
        dataRow = gridRoot.getItemAt(arrIdx[i]);
    
        if(dataRow.BUIT_ID != ""){
            trgdocKey   +=  dataRow.BUIT_ID + "|";
            isDelEvdc = true;
        }
    }
    if(isDelEvdc){
        frm.reqkeys.value = trgdocKey;
        // EMDS등록내역삭제
        edmsDeleteItem('frm','edms101','DELETE','INKIND', trgdocKey,'SMTEST','null','');
    }
}
</script>
<!-- **********************  rMateGrid setting END ***********************  -->




    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
      

    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u15_02_00_t.gif" alt="현물사용내역 등록"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>연구비관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />현물등록관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">현물사용내역 등록</span></li>
                        
                    </ul>
                </div>
            </div>                
      <!-- //pagenav end// -->
      <div class="t30"></div>
        <!-- 기관중심 과제조회 자동완성 공통부 시작
              과제조회 멀티체크 모드 isSbjtAutoSchMulti : true
             과제조회 싱글모드   isSbjtAutoSchMulti : false
             웹캐시 이세상 작성 20110426 -->
        <!-------------------------------------------------------------------------------->
        
        













<!-- //auto search start -->
<%
    boolean isSbjtAutoSchMulti  =   false;  //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글
    boolean beSearchBtn         =   false;   //조회버튼 생성구분
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->





<form name="frm" method="post">
                <input type="hidden" name="ReptNcnt"    value="">               <!-- 현물등록건수 -->
                <input type="hidden" name="selectedGrdIdx"  value="">           <!-- 선택한그리드row -->
                <!-- ---    EDMS 현물증빙 form START    -- -->
                <input type="hidden" name="reqkeys"     value="">               <!-- 삭제요청한key -->
                <input type="hidden" name="docKey"      value="">               <!-- 연동키(과제번호-년월일-시분초-사용자ID) -->
                <input type="hidden" name="methodName"  value="">               <!-- 메소드명 -->    
                <input type="hidden" name="attr20"      value="">               <!-- 사용금액 -->
                <input type="hidden" name="attr98"      value="" />             <!--edms등록파일명-->
                <input type="hidden" name="attr99"      value="">               <!-- 삭제시 리턴결과값 -->
                <!-- ---    EDMS 현물증빙 form END  -- -->
                <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />
                <input type="hidden" name="SelSbjtId"       value="">           <!-- 선택된 과제ID-->
                <input type="hidden" name="SelSbjtNm"       value="">           <!-- 선택된 과제명-->
                <input type="hidden" name="SeltBzClasNm"    value="">           <!-- 선택된 사업명 -->
                       
      <div class="cb b10"></div>
      <div id="SpotBalTbl" style="display:none;">
      </div>
      
      
<!-- *************************  rMateGrid ************************* -->
      <h3>대표세부비목</h3>
      <div class="t10 b05">
        <span id="ItxpbachApclCombo">
            <select name="SelDtlsItxpCd" id="ReprDtlsItxpCd" onchange="SelDtlsItxpCdOnChange(this);" style="width:150px">
                <option value="">선택</option>
            </select>
            <select name="SelSubDtlsItxpCd" id="ReprSubDtlsItxpCd" style="width:150px">
                <option value="">선택</option>
            </select>
        </span>
        <a href="#dummy" onclick="ItxpBachApcl('Y', undefined, undefined, undefined, undefined, undefined, undefined, document.all['SelDtlsItxpCd_0'], document.all['SelSubDtlsItxpCd_0'])"><img src="/bt/bt_apply.gif" alt="일괄적용"/></a>
      </div>
      
            <!-- 그리드 Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "387", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- 그리드 End -->
            
      <!-- action bt start -->
      <div class="action_bt ar">
        <div class="fl">
        <a href="#dummy" onclick="ItxpRecordDelete('Y');uf_edmsDelete();" class="bt_action2-1" title="삭제"><span class="bt_sp">삭제</span></a> 
        <a href="#dummy" onclick="ItxpRecordInsert_setPitm_rMate();" class="bt_action2" title="추가"><span class="bt_sp1">추가</span></a> 
         
        </div>
        <a href="#dummy" onclick="uf_sptSave();" class="bt_action2-1" title="저장"><span class="bt_sp">저장</span></a> </div>
      <!-- //action bt end// -->
      
<!-- *************************  rMateGrid ************************* -->      
      </form>
      
    <!-- 안내 가이드 start -->
    <div class="guide_box1" id="guide">
        <div class="guide_boxt1">
            <p class="txt_title fl">현물사용내역 등록 안내</p> 
            <p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
        </div>
        <div class="guide_boxc1">
            <ul>
                <li>현물이 계상되어 있는 경우 RCMS 시스템에 현물집행내역을 등록하시고 증빙은 ‘현물출자확인서’로 정산서류등록 메뉴를 통해 등록하시면 됩니다.</li>
                <li>실수로 잘못 입력하신 경우는 '삭제'하시고 다시 등록하실 수 있습니다.</li>
                <li>사업비사용실적보고서 제출 이후에는 등록이 불가능 하오니 유의하시기 바랍니다.</li>
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
          $('#guide').css({overflow:'hidden'}).animate({height:130},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
        }else{
          $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
        }
        return false;
      });
    });
        
</script>


<script type="text/javascript">
function setInitData(agrmtSeqNo){    

    //1. 신규과제
    if(agrmtSeqNo == "G00000000000001"){
        
        document.frm.SelSbjtId.value     = "TEST0001";
        document.frm.SelSbjtNm.value     = "RCMS 실습용 신규과제";
        document.frm.SeltBzClasNm.value     = "RCMS 실습";
        document.all['SpotBalTbl'].innerHTML     = "<h3>한도내역</h3>  <div class=\"t10 b10\">      <div class=\"guide_bu\">인건비의경우 월사용가능잔액(총사용가능잔액)으로 표시됨    </div>        <table width=\"704\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"TblSbjtItxpBal\" summary=\"비목,세부비목 등 등록내역조회내용을 제공한 표\" class=\"tbl_type03\">               <caption>등록내역조회    </caption>        <colgroup>            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"*\" />        </colgroup>        <thead>            <tr>                <th scope=\"col\" class=\"first-child\">비목</th>                <th scope=\"col\">세부비목</th>                <th scope=\"col\">현물계획금액</th>                <th scope=\"col\">현물잔액</th>                <th scope=\"col\" class=\"last-child\">현물사용예정금액</th>            </tr>        </thead>        <tbody>            <tr>                <td class=\"first-child\" rowspan=\"5\">직접비</td>                <td><span id=\"B0206_extcn_tit\">연구과제추진비</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0203_extcn_tit\">연구수당</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0201_extcn_tit\">연구시설·장비 및 재료비</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0202_extcn_tit\">연구활동비</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0204_extcn_tit\">인건비</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_Plan\">30,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_bal\">30,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_trn\">0</span></td>            </tr>            <tr>                <td class=\"first-child\" rowspan=\"1\">간접비</td>                <td><span id=\"B0301_extcn_tit\">간접비</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_trn\">0</span></td>            </tr>            <tr>                <td colspan=\"2\" class=\"sum\"><strong>합계</strong></td>                <td class=\"sum\"><strong>30,000</strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_bal_sum\">30,000</span></strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_sum\">0</span></strong></td>            </tr>        </tbody>    </table></div>";
        
        
    //2. 진행과제
    }else if(agrmtSeqNo == "G00000000000002"){
        document.frm.SelSbjtId.value = "TEST0002";
        document.frm.SelSbjtNm.value = "RCMS 실습용 진행과제";
        document.frm.SeltBzClasNm.value = "RCMS 실습";
        document.all['SpotBalTbl'].innerHTML = "<h3>한도내역</h3>  <div class=\"t10 b10\">      <div class=\"guide_bu\">인건비의경우 월사용가능잔액(총사용가능잔액)으로 표시됨    </div>        <table width=\"704\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"TblSbjtItxpBal\" summary=\"비목,세부비목 등 등록내역조회내용을 제공한 표\" class=\"tbl_type03\">               <caption>등록내역조회    </caption>        <colgroup>            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"*\" />        </colgroup>        <thead>            <tr>                <th scope=\"col\" class=\"first-child\">비목</th>                <th scope=\"col\">세부비목</th>                <th scope=\"col\">현물계획금액</th>                <th scope=\"col\">현물잔액</th>                <th scope=\"col\" class=\"last-child\">현물사용예정금액</th>            </tr>        </thead>        <tbody>            <tr>                <td class=\"first-child\" rowspan=\"5\">직접비</td>                <td><span id=\"B0206_extcn_tit\">연구과제추진비</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0203_extcn_tit\">연구수당</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0201_extcn_tit\">연구시설·장비 및 재료비</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0202_extcn_tit\">연구활동비</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0204_extcn_tit\">인건비</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_Plan\">30,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_bal\">25,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_trn\">0</span></td>            </tr>            <tr>                <td class=\"first-child\" rowspan=\"1\">간접비</td>                <td><span id=\"B0301_extcn_tit\">간접비</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_trn\">0</span></td>            </tr>            <tr>                <td colspan=\"2\" class=\"sum\"><strong>합계</strong></td>                <td class=\"sum\"><strong>30,000</strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_bal_sum\">25,000</span></strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_sum\">0</span></strong></td>            </tr>        </tbody>    </table></div>";

        
    //3. 정산과제(보고서 미제출)
    }else if(agrmtSeqNo == "G00000000000003"){
        document.frm.SelSbjtId.value = "TEST0003";
        document.frm.SelSbjtNm.value = "RCMS 실습용 정산과제";
        document.frm.SeltBzClasNm.value = "RCMS 실습";
        document.all['SpotBalTbl'].innerHTML = "<h3>한도내역</h3>  <div class=\"t10 b10\">      <div class=\"guide_bu\">인건비의경우 월사용가능잔액(총사용가능잔액)으로 표시됨    </div>        <table width=\"704\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"TblSbjtItxpBal\" summary=\"비목,세부비목 등 등록내역조회내용을 제공한 표\" class=\"tbl_type03\">               <caption>등록내역조회    </caption>        <colgroup>            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"*\" />        </colgroup>        <thead>            <tr>                <th scope=\"col\" class=\"first-child\">비목</th>                <th scope=\"col\">세부비목</th>                <th scope=\"col\">현물계획금액</th>                <th scope=\"col\">현물잔액</th>                <th scope=\"col\" class=\"last-child\">현물사용예정금액</th>            </tr>        </thead>        <tbody>            <tr>                <td class=\"first-child\" rowspan=\"5\">직접비</td>                <td><span id=\"B0206_extcn_tit\">연구과제추진비</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0203_extcn_tit\">연구수당</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0201_extcn_tit\">연구시설·장비 및 재료비</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0202_extcn_tit\">연구활동비</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0204_extcn_tit\">인건비</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_Plan\">30,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_trn\">0</span></td>            </tr>            <tr>                <td class=\"first-child\" rowspan=\"1\">간접비</td>                <td><span id=\"B0301_extcn_tit\">간접비</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_trn\">0</span></td>            </tr>            <tr>                <td colspan=\"2\" class=\"sum\"><strong>합계</strong></td>                <td class=\"sum\"><strong>30,000</strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_bal_sum\">0</span></strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_sum\">0</span></strong></td>            </tr>        </tbody>    </table></div>";

        
    //4. 정산과제(보고서 제출 완료)
    }else if(agrmtSeqNo == "G00000000000004"){
        document.frm.SelSbjtId.value = "TEST0004";
        document.frm.SelSbjtNm.value = "RCMS 실습용 정산과제";
        document.frm.SeltBzClasNm.value = "RCMS 실습";
        document.all['SpotBalTbl'].innerHTML = "<h3>한도내역</h3>  <div class=\"t10 b10\">      <div class=\"guide_bu\">인건비의경우 월사용가능잔액(총사용가능잔액)으로 표시됨    </div>        <table width=\"704\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"TblSbjtItxpBal\" summary=\"비목,세부비목 등 등록내역조회내용을 제공한 표\" class=\"tbl_type03\">               <caption>등록내역조회    </caption>        <colgroup>            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"*\" />        </colgroup>        <thead>            <tr>                <th scope=\"col\" class=\"first-child\">비목</th>                <th scope=\"col\">세부비목</th>                <th scope=\"col\">현물계획금액</th>                <th scope=\"col\">현물잔액</th>                <th scope=\"col\" class=\"last-child\">현물사용예정금액</th>            </tr>        </thead>        <tbody>            <tr>                <td class=\"first-child\" rowspan=\"5\">직접비</td>                <td><span id=\"B0206_extcn_tit\">연구과제추진비</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0203_extcn_tit\">연구수당</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0201_extcn_tit\">연구시설·장비 및 재료비</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0202_extcn_tit\">연구활동비</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0204_extcn_tit\">인건비</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_Plan\">30,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_trn\">0</span></td>            </tr>            <tr>                <td class=\"first-child\" rowspan=\"1\">간접비</td>                <td><span id=\"B0301_extcn_tit\">간접비</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_trn\">0</span></td>            </tr>            <tr>                <td colspan=\"2\" class=\"sum\"><strong>합계</strong></td>                <td class=\"sum\"><strong>30,000</strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_bal_sum\">0</span></strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_sum\">0</span></strong></td>            </tr>        </tbody>    </table></div>";

        
    }
    
    
    SelDtlsItxpCd[0] = "B0201";
    SelDtlsItxpNm[0] = "연구시설·장비 및 재료비";
    SelSubDtlsItxpCd[0] = new Array();
    SelSubDtlsItxpNm[0] = new Array();
    SelSubDtlsItxpCd[0][0]  = "B0201009";    SelSubDtlsItxpNm[0][0]  = "건물구입비";
    SelSubDtlsItxpCd[0][1]  = "B0201010";    SelSubDtlsItxpNm[0][1]  = "건물임차비";
    SelSubDtlsItxpCd[0][2]  = "B0201005";    SelSubDtlsItxpNm[0][2]  = "건축비";
    SelSubDtlsItxpCd[0][3]  = "B0201006";    SelSubDtlsItxpNm[0][3]  = "부지매입비";
    SelSubDtlsItxpCd[0][4]  = "B0201008";    SelSubDtlsItxpNm[0][4]  = "부지임차비";
    SelSubDtlsItxpCd[0][5]  = "B0201007";    SelSubDtlsItxpNm[0][5]  = "부지조성비";
    SelSubDtlsItxpCd[0][6]  = "B0201015";    SelSubDtlsItxpNm[0][6]  = "시약·재료구입비";
    SelSubDtlsItxpCd[0][7]  = "B0201018";    SelSubDtlsItxpNm[0][7]  = "시작품제작비";
    SelSubDtlsItxpCd[0][8]  = "B0201019";    SelSubDtlsItxpNm[0][8]  = "시제품제작비";
    SelSubDtlsItxpCd[0][9]  = "B0201016";    SelSubDtlsItxpNm[0][9]  = "시험분석료";
    SelSubDtlsItxpCd[0][10] = "B0201020";    SelSubDtlsItxpNm[0][10] = "시험설비제작비";
    SelSubDtlsItxpCd[0][11] = "B0201001";    SelSubDtlsItxpNm[0][11] = "연구시설·장비구입비";
    SelSubDtlsItxpCd[0][12] = "B0201021";    SelSubDtlsItxpNm[0][12] = "연구시설·장비사용비";
    SelSubDtlsItxpCd[0][13] = "B0201002";    SelSubDtlsItxpNm[0][13] = "연구시설·장비설치비";
    SelSubDtlsItxpCd[0][14] = "B0201004";    SelSubDtlsItxpNm[0][14] = "연구시설·장비운영비";
    SelSubDtlsItxpCd[0][15] = "B0201003";    SelSubDtlsItxpNm[0][15] = "연구시설·장비임차비";
    SelSubDtlsItxpCd[0][16] = "B0201017";    SelSubDtlsItxpNm[0][16] = "전산처리·관리비";

    SelDtlsItxpCd[1] = "B0202";
    SelDtlsItxpNm[1] = "연구활동비";
    SelSubDtlsItxpCd[1] = new Array();
    SelSubDtlsItxpNm[1] = new Array();
    SelSubDtlsItxpCd[1][0]  = "B0202010";   SelSubDtlsItxpNm[1][0]  = "공공요금·세금";
    SelSubDtlsItxpCd[1][1]  = "B0202022";   SelSubDtlsItxpNm[1][1]  = "교육훈련비";
    SelSubDtlsItxpCd[1][2]  = "B0202001";   SelSubDtlsItxpNm[1][2]  = "국내여비";
    SelSubDtlsItxpCd[1][3]  = "B0202002";   SelSubDtlsItxpNm[1][3]  = "국외여비";
    SelSubDtlsItxpCd[1][4]  = "B0202032";   SelSubDtlsItxpNm[1][4]  = "기술도입비";
    SelSubDtlsItxpCd[1][5]  = "B0202019";   SelSubDtlsItxpNm[1][5]  = "기술정보수집비";
    SelSubDtlsItxpCd[1][6]  = "B0202041";   SelSubDtlsItxpNm[1][6]  = "기업지원비";
    SelSubDtlsItxpCd[1][7]  = "B0202043";   SelSubDtlsItxpNm[1][7]  = "네트워크 운영비";
    SelSubDtlsItxpCd[1][8]  = "B0202020";   SelSubDtlsItxpNm[1][8]  = "도서·문헌구입비";
    SelSubDtlsItxpCd[1][9]  = "B0202042";   SelSubDtlsItxpNm[1][9]  = "마케팅홍보비";
    SelSubDtlsItxpCd[1][10] = "B0202005";   SelSubDtlsItxpNm[1][10] = "복사비";
    SelSubDtlsItxpCd[1][11] = "B0202013";   SelSubDtlsItxpNm[1][11] = "비품구입비";
    SelSubDtlsItxpCd[1][12] = "B0202012";   SelSubDtlsItxpNm[1][12] = "사무용품비";
    SelSubDtlsItxpCd[1][13] = "B0202023";   SelSubDtlsItxpNm[1][13] = "세미나개최비";
    SelSubDtlsItxpCd[1][14] = "B0202036";   SelSubDtlsItxpNm[1][14] = "세부과제관리비";
    SelSubDtlsItxpCd[1][15] = "B0202030";   SelSubDtlsItxpNm[1][15] = "속기료";
    SelSubDtlsItxpCd[1][16] = "B0202011";   SelSubDtlsItxpNm[1][16] = "수수료";
    SelSubDtlsItxpCd[1][17] = "B0202037";   SelSubDtlsItxpNm[1][17] = "야근식대";
    SelSubDtlsItxpCd[1][18] = "B0202038";   SelSubDtlsItxpNm[1][18] = "연구인력활용비";
    SelSubDtlsItxpCd[1][19] = "B0202040";   SelSubDtlsItxpNm[1][19] = "연계활동비";
    SelSubDtlsItxpCd[1][20] = "B0202028";   SelSubDtlsItxpNm[1][20] = "원고료";
    SelSubDtlsItxpCd[1][21] = "B0202004";   SelSubDtlsItxpNm[1][21] = "인쇄비";
    SelSubDtlsItxpCd[1][22] = "B0202014";   SelSubDtlsItxpNm[1][22] = "전문가활용비";
    SelSubDtlsItxpCd[1][23] = "B0202039";   SelSubDtlsItxpNm[1][23] = "전문인력양성비";
    SelSubDtlsItxpCd[1][24] = "B0202035";   SelSubDtlsItxpNm[1][24] = "정보DB 및 네트워크 사용료";
    SelSubDtlsItxpCd[1][25] = "B0202034";   SelSubDtlsItxpNm[1][25] = "컨설팅비";
    SelSubDtlsItxpCd[1][26] = "B0202029";   SelSubDtlsItxpNm[1][26] = "통역료";
    SelSubDtlsItxpCd[1][27] = "B0202033";   SelSubDtlsItxpNm[1][27] = "특허정보조사비";
    SelSubDtlsItxpCd[1][28] = "B0202024";   SelSubDtlsItxpNm[1][28] = "학회·세미나참가비";
    SelSubDtlsItxpCd[1][29] = "B0202044";   SelSubDtlsItxpNm[0][29] = "협의회 운영비";
    SelSubDtlsItxpCd[1][30] = "B0202021";   SelSubDtlsItxpNm[1][30] = "회의비";

    SelDtlsItxpCd[2] = "B0203";
    SelDtlsItxpNm[2] = "연구수당";
    SelSubDtlsItxpCd[2] = new Array();
    SelSubDtlsItxpNm[2] = new Array();
    SelSubDtlsItxpCd[2][0]  = "B0203001";    SelSubDtlsItxpNm[2][0]  = "연구수당";

    SelDtlsItxpCd[3] = "B0204";
    SelDtlsItxpNm[3] = "인건비";
    SelSubDtlsItxpCd[3] = new Array();
    SelSubDtlsItxpNm[3] = new Array();
    SelSubDtlsItxpCd[3][0]  = "B0204001";    SelSubDtlsItxpNm[3][0]  = "인건비";

    SelDtlsItxpCd[4] = "B0206";
    SelDtlsItxpNm[4] = "연구과제추진비";
    SelSubDtlsItxpCd[4] = new Array();
    SelSubDtlsItxpNm[4] = new Array();
    SelSubDtlsItxpCd[4][0]  = "B0206001";    SelSubDtlsItxpNm[4][0]  = "국내여비";
    SelSubDtlsItxpCd[4][1]  = "B0206002";    SelSubDtlsItxpNm[4][1]  = "사무용품비";
    SelSubDtlsItxpCd[4][2]  = "B0206005";    SelSubDtlsItxpNm[4][2]  = "야근식대";
    SelSubDtlsItxpCd[4][3]  = "B0206006";    SelSubDtlsItxpNm[4][3]  = "연구과제추진비";
    SelSubDtlsItxpCd[4][4]  = "B0206003";    SelSubDtlsItxpNm[4][4]  = "연구환경유지비";
    SelSubDtlsItxpCd[4][5]  = "B0206004";    SelSubDtlsItxpNm[4][5]  = "회의비";

    SelDtlsItxpCd[5] = "B0301";
    SelDtlsItxpNm[5] = "간접비";
    SelSubDtlsItxpCd[5] = new Array();
    SelSubDtlsItxpNm[5] = new Array();
    SelSubDtlsItxpCd[5][0] = "B0301001";    SelSubDtlsItxpNm[5][0] = "간접비";
    
}

function setData(agrmtSeqNo){

    if(!agrmtSeqNo) return false;
    try{
        document.body.style.cursor = "wait";
        setInitData(agrmtSeqNo); //Insert    Grid
        //SetData(); //Insert Grid
        document.body.style.cursor = "auto";
    }finally{
        reset_submit();
        mkDtlsItxpCd("0");
    }
}

</script>


</body>
</html>