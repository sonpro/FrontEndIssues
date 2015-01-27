<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T41_07_00.jsp
 *   Description        : 연구비카드 과제 등록
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

<title>연구비카드 과제 등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
            




                    <div><img src="/images/pefo/sub_navt4.gif" alt="이용환경관리" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t04/t41/T41_08_00.jsp'); return false;" class="menu_txt_on">기본설정</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_08_00.jsp'); return false;" class="menu_3dep">협약정보 확인</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_04_00.jsp'); return false;" class="menu_3dep">펌뱅킹 이용신청</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_03_00.jsp'); return false;" class="menu_3dep">과제별 권한 관리</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_05_00.jsp'); return false;" class="menu_3dep">이체비밀번호 등록</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_06_00.jsp'); return false;" class="menu_3dep">연구비카드사 등록</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_07_00.jsp'); return false;" class="menu_3dep_on">연구비카드 과제 등록</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_txt">부가설정</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자주쓰는 사업자</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자주쓰는 입금계좌</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">기관별 권한관리</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">지방비분리회계관리</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_txt">기관계좌관리</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">인건비성 지급계좌 설정</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자계좌이체용 계좌 설정</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">카드결제 지정계좌 설정</a></li>
                        
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
var schParam = "";
	//////////////////////////////////
	//조회 처리
	//////////////////////////////////
	function uf_search(){
		var frm = document.frm;
		
		if( isSubmit() ) return;	// 이중처리
		
		var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
		if(!seqNo) return;
    
		rMateGridLayoutInit_rMate();
		
        $("#InqPrsTotlNcnt2").html("0");
        
        uf_proce_display_on();  //로딩바
        setTimeout(
               function(){
                   search(seqNo);
               }
               , 1000);   // 1초후 실행 1000 = 1초
	}
	
	function uf_autoSbjtSchCallBack(param){
		schParam = param;
		
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


	

    //////////////////////////////////
    //등록팝업
    //////////////////////////////////
    function uf_create_rmate(){
        var frm = document.frm;
        if(!bAutoSbjtSch()) return; // 과제조회 유무 확인
        
        if('20120517' == '<%=DateUtil.getDate("YYYYMMDD")%>'){
            alert("카드등록은 카드사등록일로 부터 영업일 1일 후에 가능합니다.\n(카드사등록일자 : 2012-05-17)");
            return;
        } 
        //if("N" == < CrdcoRegYn >){ 
        //  alert("카드등록을 하시기 위해서는 먼저 [연구비카드사신청] 을 해주셔야 합니다.");
        //  return;
        //}     
        get2post(frm, "Dv=C");
        get2post(frm, "schParam="+schParam);
        get2post(frm, "S_AGRMT_SEQ_NO="+document.rtr_str_form.S_AGRMT_SEQ_NO.value);
        uf_frmNewWinNs(document.frm, 'T41_07_10.jsp', 'TAXVIEW1', '795', '600','no');
        removeTempAttribute(document.frm);  //get2post 삭제       
    }

    //////////////////////////////////
    //사용중지신청팝업
    //////////////////////////////////  
    function uf_cancel_rmate(){
        var frm = document.frm;
        var tmp;

        if(!bAutoSbjtSch()) return; // 과제조회 유무 확인
        if( isSubmit() ) return;    // 이중처리

        
        var cnt = getGridRowCount_rMate();
        if( cnt <= 0 ){
            alert("조회된 데이타가 없습니다.");
            return;
        } 
        
        selectorColumn = gridRoot.getObjectById("selector");
        if(selectorColumn.getSelectedIndex() < 0){ 
            alert("처리할 데이타를 선택하세요.");
            return; 
        }
        
        var rowIndex = selectorColumn.getSelectedIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        
        if("3" != dataRow.CRDCO_REG_PROC_ST){
            alert(dataRow.CRDCO_REG_PROC_ST_NM+"상태는 사용중지할 수 없습니다.");
            return;
        }

        
        get2post(frm, "CARD_NO="    + dataRow.CRD_NO            ); //카드번호
        get2post(frm, "CARD_NO2="    + dataRow.CRD_NO            ); //카드번호
        get2post(frm, "CARD_CO_NO=" + dataRow.CRDCO_CD          ); //카드사코드
        get2post(frm, "CARD_CO_NM=" + dataRow.CRDCO_CD_NM       ); //카드사명
        get2post(frm, "VALD_TRM="   + dataRow.VALD_TRM          ); //유효기간
        get2post(frm, "SET_BNK_CD=" + dataRow.SETL_BNK_CD       ); //결제은행코드
        get2post(frm, "SET_BNK_NM=" + dataRow.SETL_BNK_CD_NM    ); //결제은행명
        get2post(frm, "SETL_ACC_NO="+ dataRow.SETL_ACCT_NO      ); //결제계좌번호
        get2post(frm, "SETL_ACC_NO2="+ dataRow.SETL_ACCT_NO      ); //결제계좌번호
        get2post(frm, "CARD_DV="    + dataRow.CRD_PRD_DV        ); //구분코드. 명
        get2post(frm, "CARD_DV_NM=" + dataRow.CRD_PRD_DV_NM     ); //구분명
        get2post(frm, "SETL_DD="    + dataRow.SETL_DD           ); //결제일
        
        //세션 그리드 데이터 삭제를 위해 추가
        get2post(frm, "rowIndex="    + rowIndex           ); //삭제할 row
        var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        get2post(frm, "argmtSeqNo="    + seqNo           ); //seqNo
            
        
        uf_frmNewWinNs(document.frm, 'T41_07_20.jsp', 'TAXVIEW', '400', '400');
        removeTempAttribute(document.frm);  //get2post 삭제
        
    }
    /**************************************
        카드정보업데이트
    **************************************/
    function uf_crdUpdate_rmate(){
        var frm = document.frm;
        var vcnt=0;
        
        if(!bAutoSbjtSch()) return; // 과제조회 유무 확인
        if( isSubmit() ) return;     // 이중처리

        
        var cnt = getGridRowCount_rMate();
        if( cnt <= 0 ){
            alert("조회된 데이타가 없습니다.");
            return;
        } 
        
        selectorColumn = gridRoot.getObjectById("selector");
        if(selectorColumn.getSelectedIndex() < 0){ 
            alert("카드를 선택하세요.");
            return; 
        }
        
        
        if(!confirm("카드사로부터 정보를 업데이트합니다.\n실행하시겠습니까?")){return;}
        
        
        var rowIndex = selectorColumn.getSelectedIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        
        get2post(frm, "CARD_NO="    + dataRow.CRD_NO ); //카드번호
        get2post(frm, "CARD_CO_NO=" + dataRow.CRDCO_CD ); //카드사코드
        
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    reset_submit();
                    alert("정상 처리되었습니다.");
                    }, 1000);   // 1초후 실행 1000 = 1초s
        
        
    }
		
</script>












        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->
            



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u42_02_00_t.gif" alt="연구비카드 과제 등록"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>이용환경관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />기본설정</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">연구비카드 과제 등록</span></li>
						
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t30"></div>
            <!-------------------------------------------------------------------------------->
            <!--  공통부 시작 -->
            <!-------------------------------------------------------------------------------->
            <!-- 
                기관중심 과제조회 자동완성 공통부 시작
                과제조회 멀티체크 모드 isSbjtAutoSchMulti : true
                과제조회 싱글모드   isSbjtAutoSchMulti : false
                웹캐시 이세상 작성 20110426 
            -->
            <!-------------------------------------------------------------------------------->
            
            







<!-- //auto search start -->
<% 
    boolean isSbjtAutoSchMulti   =  false;  //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글
    boolean beSearchBtn          =  false;  //조회버튼 생성구분(실행메소드:uf_beSearchBtn();)
%> 
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->




            <!-------------------------------------------------------------------------------->
            <!--  공통부 끝 -->
            <!-------------------------------------------------------------------------------->
            <form name="frm" method="post">
            <input type="hidden" name="TrSupYn" value="N" />
            <input type="hidden" name="PrsPgno" value="0" />
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />  
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />  
            
            
            
            
<!-- *************************  rMateGrid ************************* -->
            <div class="cb b10"></div>
            <h3>카드정보관리</h3>   
            <!-- 총건수/인쇄 저장 버튼 start -->
            <div class="total_box">
                <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2"> 0 </span> 건/<span id="InqPrsTotlCnt2"> 0 </span> 건]</p>
                <p class="cb"></p>
            </div>
            <!-- //총건수/인쇄 저장 버튼 end// -->  
            <!-- 그리드 Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "378", "#FFFFFF", "transparent");
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
            <!-- action bt start -->
            <div class="action_bt ar">
                <div class="fl">
                    <a href="#dummy" onclick="uf_crdUpdate_rmate(); return false;" class="bt_action8-1" title="카드정보업데이트"><span class="bt_sp">카드정보업데이트</span></a>
                </div>
                <a href="#dummy" onclick="uf_create_rmate(); return false;" class="bt_action4" title="신규등록"><span class="bt_sp1">신규등록</span></a>
                <a href="#dummy" onclick="uf_cancel_rmate(); return false;" class="bt_action6" title="사용중지요청"><span class="bt_sp1">사용중지요청</span></a>
            </div>
            <!-- //action bt end// -->             
<!-- *************************  rMateGrid ************************* -->   



            
            </form>
            <!-- 주의사항 start -->
            <div class="guide_box">
                <p class="guide_boxt"></p>
                <div class="guide_boxc">
                    <ul>
                        <li>카드등록은 카드사등록 후 영업일기준 1일(BC카드사는 2일) 소요 후 가능합니다.</li>         
                        <li>발급 받으신 카드가 신규등록에서 조회가 안되시는 경우는 다음과 같습니다.<br />
                            1. 협약을 맺은 사업자등록번호와 발급 받으신 카드의 사업자등록번호가 다른경우.<br />
                            2. 등록하신 카드사가 BC카드사인데 발급 받으신 카드는 은행카드인 경우.<br />
                            3. 기타 경우에는 과제번호, 연구기관명, 성함, 연락처, 카드사, 카드번호를 아래의메일로 작성하여 보내주시길 바랍니다.</li> 
                    </ul>    
                </div>
                <p class="guide_boxb"></p>
            </div>
            <!-- //주의사항 end// -->
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
});


</script>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">
/* 그리드 생성 순서
1. html과 플래시의 sync : rMateGridInit() 함수 실행 ( onload 실행. 혹은 ready )
2. 레이아웃에 의거한 그리드 생성
3. 그리드에 데이타 넣기
*/


    //레이아웃 설정
    var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"2\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"40\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"CRD_NO\"                 dataField=\"CRD_NO\"                  headerText=\"카드번호\"       width=\"135\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_CD\"               dataField=\"CRDCO_CD\"                headerText=\"카드사코드\"     width=\"90\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_CD_NM\"            dataField=\"CRDCO_CD_NM\"             headerText=\"카드사\"         width=\"100\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_BNK_CD\"            dataField=\"SETL_BNK_CD\"             headerText=\"결제은행코드\"   width=\"90\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_BNK_CD_NM\"         dataField=\"SETL_BNK_CD_NM\"          headerText=\"결제은행\"       width=\"110\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_ACCT_NO\"           dataField=\"SETL_ACCT_NO\"            headerText=\"결제계좌번호\"   width=\"130\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_PRD_DV\"             dataField=\"CRD_PRD_DV\"              headerText=\"구분코드\"       width=\"90\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_PRD_DV_NM\"          dataField=\"CRD_PRD_DV_NM\"           headerText=\"구분\"           width=\"110\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_DD\"                dataField=\"SETL_DD\"                 headerText=\"결제일\"         width=\"60\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"REG_DTM\"                dataField=\"REG_DTM\"                 headerText=\"등록일자\"       width=\"100\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_REG_PROC_ST\"      dataField=\"CRDCO_REG_PROC_ST\"       headerText=\"상태코드\"       width=\"90\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_REG_PROC_ST_NM\"   dataField=\"CRDCO_REG_PROC_ST_NM\"    headerText=\"상태\"           width=\"90\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"VALD_TRM\"               dataField=\"VALD_TRM\"                headerText=\"유효기간\"       width=\"90\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
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

        
        //클릭 이벤트 추가 ( 라디오 선택 )
        var itemClickHandler = function(event) {
            selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
        };
        
       
        //더블클릭 상세보기 이벤트 추가
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var column = dataGrid.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid,dataRow);
            
        };
        
        //그리드 이벤트 등록
        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
        };

        
        //layout 출력 후 실행될 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        
        //data 출력 후 실행할 이벤트 등록
        gridRoot.addEventListener("dataComplete", setTotCnt);   //전체 조회건수 출력

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {

        gridApp = FABridge.gridBridge.root();  
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력

    };
    
  
    //전체 자료수 출력
    function setTotCnt(){
        var cnt = getGridRowCount_rMate();
        $("#InqPrsTotlNcnt2").html(cnt);
        $("#InqPrsTotlCnt2").html(cnt);
        
    }
    

</script>
<!-- **********************  rMateGrid setting END ***********************  -->




<script type="text/javascript">
var cnt = 0;
function SetData(seqNo){    
    var frm = document.frm;
    try{
        
        cnt = 0;
        var gridValue = [];
        
        //1. 신규과제
        if("G00000000000001" == seqNo){
        	

            //세션값이 있을시 값 변경
            var _COOKIE_DATA = getCookieTraning("T41_07_10"); 
            if(_COOKIE_DATA != false){
                
            	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-4444","CRDCO_CD":"IB","CRDCO_CD_NM":"A 카드","SETL_BNK_CD":"003","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO":"100-00-000000","CRD_PRD_DV":"F","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DD":"23","REG_DTM":"2014-01-03","CRDCO_REG_PROC_ST":"3","CRDCO_REG_PROC_ST_NM":"등록완료","VALD_TRM":"2014/09"};
                
                
            } //if(_COOKIE_DATA

        //2. 진행과제
        }else if("G00000000000002" == seqNo){
        	
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-4444","CRDCO_CD":"IB","CRDCO_CD_NM":"A 카드","SETL_BNK_CD":"003","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO":"100-00-000000","CRD_PRD_DV":"F","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DD":"23","REG_DTM":"2014-01-03","CRDCO_REG_PROC_ST":"3","CRDCO_REG_PROC_ST_NM":"등록완료","VALD_TRM":"2014/09"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-5555","CRDCO_CD":"IB","CRDCO_CD_NM":"A 카드","SETL_BNK_CD":"003","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO":"100-00-000000","CRD_PRD_DV":"F","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DD":"23","REG_DTM":"2014-01-14","CRDCO_REG_PROC_ST":"3","CRDCO_REG_PROC_ST_NM":"등록완료","VALD_TRM":"2014/09"};

        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){
        	
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-4444","CRDCO_CD":"IB","CRDCO_CD_NM":"A 카드","SETL_BNK_CD":"003","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO":"100-00-000000","CRD_PRD_DV":"F","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DD":"23","REG_DTM":"2014-01-03","CRDCO_REG_PROC_ST":"3","CRDCO_REG_PROC_ST_NM":"등록완료","VALD_TRM":"2014/09"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-5555","CRDCO_CD":"IB","CRDCO_CD_NM":"A 카드","SETL_BNK_CD":"003","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO":"100-00-000000","CRD_PRD_DV":"F","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DD":"23","REG_DTM":"2014-01-14","CRDCO_REG_PROC_ST":"3","CRDCO_REG_PROC_ST_NM":"등록완료","VALD_TRM":"2014/09"};

        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){
        	
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-4444","CRDCO_CD":"IB","CRDCO_CD_NM":"A 카드","SETL_BNK_CD":"003","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO":"100-00-000000","CRD_PRD_DV":"F","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DD":"23","REG_DTM":"2014-01-03","CRDCO_REG_PROC_ST":"3","CRDCO_REG_PROC_ST_NM":"등록완료","VALD_TRM":"2014/09"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-5555","CRDCO_CD":"IB","CRDCO_CD_NM":"A 카드","SETL_BNK_CD":"003","SETL_BNK_CD_NM":"A 은행","SETL_ACCT_NO":"100-00-000000","CRD_PRD_DV":"F","CRD_PRD_DV_NM":"기업(법인)카드","SETL_DD":"23","REG_DTM":"2014-01-14","CRDCO_REG_PROC_ST":"3","CRDCO_REG_PROC_ST_NM":"등록완료","VALD_TRM":"2014/09"};

        }

    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
    }
}

function search(seqNo){

    if(!seqNo) return false;
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        SetData(seqNo); //Insert    Grid
        //SetData(); //Insert Grid
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
        searchAlert();
        
    }
}

function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">현재 등록된 카드가 없습니다. 과제에 사용할 카드를 등록하십시요.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}
</script>



</body>
</html>