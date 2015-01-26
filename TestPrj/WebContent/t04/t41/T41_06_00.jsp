<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_06_00.jsp
 *   Description        : 연구비카드사 등록
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

<title>연구비카드사 등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_06_00.jsp'); return false;" class="menu_3dep_on">연구비카드사 등록</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_07_00.jsp'); return false;" class="menu_3dep">연구비카드 과제 등록</a></li>
                        
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

	//////////////////////////////////
	//조회 처리
	//////////////////////////////////
	function uf_search(){
		
		var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        if(!seqNo) return;
        
		if( isSubmit() ) return;	// 이중처리

		
	
		
		
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
	    //=============================
	    //  실행시킬 메소드 들어갈 위치
	    //=============================
	    //uf_search();
	    uf_search();
	    //=============================
	    
	}

	

    //////////////////////////////////
    //등록 처리
    //////////////////////////////////
    function uf_create_rmate(){
        var frm = document.frm;
        var inx = document.frm.FncInstCd.selectedIndex;
        var i = 0;
        if(!bAutoSbjtSch()) return; // 과제조회 유무 확인
        if( isSubmit() ) return;    // 이중처리
        
        

        
        var dataRow;
        var gridCnt = getGridRowCountRia();
        // 등록가능여부체크 : 등록처리중,등록확인중,등록완료건 있으면 제한
        for(i=0;i<gridCnt;i++){
            dataRow = gridRoot.getItemAt(i);
            
            if(dataRow.CRDCO_REG_PROC_ST == "1" || dataRow.CRDCO_REG_PROC_ST == "2" || dataRow.CRDCO_REG_PROC_ST == "3"){
                alert("기등록된 카드사가 존재합니다");
                return;
            }
        }
        
        
        
        if(document.frm.FncInstCd.options[inx].value == ""){
            alert("카드사를 선택하세요.");
            document.frm.FncInstCd.focus();
            return;
        }
        
        
        for(i=0;i<gridCnt;i++){
            dataRow = gridRoot.getItemAt(i);
            if(dataRow.FNC_INST_CD == document.frm.FncInstCd.options[inx].value){
	            if(dataRow.CRDCO_REG_PROC_ST != "5"){
	                if(dataRow.CRDCO_REG_PROC_ST == "4"){
	                    alert("해지처리중이므로 등록할 수 없습니다.\n재등록은 해지완료후 가능합니다.");
	                    return;
	                }
	                alert("이미등록되었거나 등록처리중입니다.");
	                return;
	            }
            }
        }
        
        
        /* 연구비카드전용만 가능한 카드사 */
        if((document.frm.FncInstCd.options[inx].value == "HD") ||
                (document.frm.FncInstCd.options[inx].value == "SS") ||
                (document.frm.FncInstCd.options[inx].value == "SH")){
            //김봉민 수정 2011.11.21 외환카드 삭제(법인카드 및 연구비전용카드 사용 가능), 신한카드 추가, 농협카드 추가
            alert("삼성카드, 현대카드, 신한, 농협카드는 현재 RCMS 연구비전용카드만 등록이 가능합니다.\n연구비전용카드로 발급받으시기 바랍니다."); 
        }
        
        if(!confirm("등록 하시겠습니까?")){return;}

        var url = "/pop/sign_popup.jsp";
        var obj = "서명에 사용할 인증서 선택";
        var style = "dialogWidth:441px;dialogHeight:475px;center:yes;scroll:no;resizable:no;status:no;";
        var reValue = window.showModalDialog(url, obj, style);
        if(reValue == undefined){
            reValue = window.returnValue;
        }
        
        if(reValue == "ok"){
            uf_proce_display_on();  //로딩바
            
            setTimeout(
                    function(){
                    	//세션 사용안함 
                        //makeSessData(document.frm.FncInstCd.options[inx].value);
                    	var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
                    	
                    	if("G00000000000001" == seqNo)	makeCookieData(document.frm.FncInstCd.options[inx].value);
                    			
                        reset_submit();
                        alert("등록되었습니다.");
                        //alert("등록되었습니다.\n\n ** 실습환경 안내 **\n카드사 등록 후 1영업일 이후 카드 과제 등록이 가능합니다.\n페이지를 새로고침 혹은 좌측 메뉴를 클릭 시 1영업일이 지난것으로 처리됩니다.");
                        uf_search();
                        }, 1000);   // 1초후 실행 1000 = 1초s
        }
        return;
        
    }
    

    
    
    //////////////////////////////////
    //해지 처리
    //////////////////////////////////
    function uf_delete_rmate(){
        
       var frm = document.frm;
       var inx = document.frm.FncInstCd.selectedIndex;
       var vcnt=0, ccnt=0;

       if(!bAutoSbjtSch()) return; // 과제조회 유무 확인
       if( isSubmit() ) return;    // 이중처리

       if(getGridRowCount_rMate() <= 0){
       	alert("조회된 데이터가 없습니다.");
       	return;
       }
       
       selectorColumn = gridRoot.getObjectById("selector");
       if(selectorColumn.getSelectedIndex() < 0){ 
           alert("처리할 데이타를 선택하세요.");
           return; 
       }
       
       
       var rowIndex = selectorColumn.getSelectedIndex();
       var dataRow = gridRoot.getItemAt(rowIndex);
       
       if(dataRow.CRDCO_REG_PROC_ST != "3"){
           alert("해지할수 없는 상태이거나 이미 해지되었습니다.");
           return;
       }
       
       ccnt = Number(dataRow.REG_CRD_CNT);
       
           
       if(ccnt>0){alert("등록된 카드가 있으면 해지할 수 없습니다."); return;}
       if(!confirm("해지 하시겠습니까?")){return;}     

       
       var url = "/pop/sign_popup.jsp";
       var obj = "서명에 사용할 인증서 선택";
       var style = "dialogWidth:441px;dialogHeight:475px;center:yes;scroll:no;resizable:no;status:no;";
       var reValue = window.showModalDialog(url, obj, style);
       if(reValue == undefined){
           reValue = window.returnValue;
       }
       

       if(reValue == "ok"){
           uf_proce_display_on();  //로딩바
           
           setTimeout(
                   function(){
                	   //세션 사용안함 
                	   //delSessData(rowIndex);
                       reset_submit();
                       alert("해지되었습니다.");
                       uf_search();
                       }, 1000);   // 1초후 실행 1000 = 1초s
       }
       return;
    } 
    
</script>







        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->
            



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u42_01_00_t.gif" alt="연구비카드사 등록"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>이용환경관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />기본설정</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">연구비카드사 등록</span></li>
						
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




    

            <form name="frm" method="post">
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />    
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />    
            <!-------------------------------------------------------------------------------->
            <!--  공통부 끝 -->
            <!-------------------------------------------------------------------------------->
            <div class="cb b10"></div>
            <h3>카드사등록내역</h3>      
            <!-- 검색단 start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>권한조회검색</legend>
                        <table width="680" summary="권한조회" class="tbl_search">
                        <caption>권한조회검색</caption>
                        <colgroup>
                            <col width="12%" />
                            <col width="88%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col">카드사</th>
                            <td><SELECT name='FncInstCd'><option value=''>카드사를 선택하세요.</option><option value='A'>A 카드</option><option value='B'>B 카드</option><option value='C'>C 카드</option></SELECT>
                                <a href="#dummy" onclick="uf_create_rmate();return false;"><img src="/bt/bt_regist.gif" alt="등록"/></a>
                                <a href="#dummy" onclick="alert('실습환경에서는 지원하지 않는 기능입니다.');"><img src="/bt/bt_guide7.gif" alt="카드발급안내"/></a>
                                <!-- //20140306 카드사 개인정보로 인해 팝업 중지
                                <a href="#dummy" onclick="uf_frmNewWinNs(frm, '/pop/T01_17_00.jsp', 'CRD_GUD_POP', 650, 728); return false;"><img src="/bt/bt_guide7.gif" alt="카드발급안내"/></a>
                                 -->
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
            
            
            
<!-- *************************  rMateGrid ************************* -->
            <div class="t20"></div>
            <!-- 총건수/인쇄 저장 버튼 start -->
            <div class="total_box">
                [조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건]
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
                <a href="#dummy" onclick="uf_delete_rmate(); return false;" class="bt_action4-1" title="해지요청"><span class="bt_sp">해지요청</span></a>
            </div>
            <!-- //action bt end// --> 
<!-- *************************  rMateGrid ************************* -->

            <!-- 주의사항 start -->
            <div class="guide_box">
                <p class="guide_boxt"></p>
                <div class="guide_boxc">
                    <ul>
                        <li>카드사는 과제별로 한 곳만 등록 가능합니다.</li>          
                        <li>카드사가 등록 되어 있거나 등록처리중이면 등록 할 수 없습니다.</li> 
                        <li>기업은행카드 신규신청인 경우 연구비카드사 등록 후 1영업일 이후 카드사 방문 하여 발급신청 하시기 바랍니다.</li> 
                        <li>기업은행 이외의 카드사를 사용하실 경우 카드를 먼저 발급받으신 후에 등록신청을 하시기 바랍니다.</li>
                        <li>연구비카드사 등록은 처리완료까지 하루가 소요됩니다.</li>
                        <li>연구비카드 등록 절차는 카드사등록 → 카드등록의 순서로 진행하시면 됩니다.</li>
                    </ul>    
                </div>
                <p class="guide_boxb"></p>
            </div>
            <!-- //주의사항 end// -->
            </form>
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

    /*//세션 컨트롤 사용안함
    var _SESS_DATA = dataCtrl.getObjData("T41_06_00");

    // 페이지 재 로딩시 카드 등록 정보 업데이트 진행 ( 기존에는 하루가 소요 )
    if(_SESS_DATA != null){
        
        var sessGridData = JSON.parse(_SESS_DATA);
        
        if(sessGridData.length > 0){
            for(var i=0;i<sessGridData.length;i++){
                //등록 처리중 -> 등록완료 변경
                if("1" == sessGridData[i].CRDCO_REG_PROC_ST){
                	sessGridData[i].CRDCO_REG_PROC_ST = "3";
                	sessGridData[i].CRDCO_REG_PROC_ST_NM = getCodeVal("RND085", "3");
                	
                }
                
                //해지 처리중 -> 해지완료
                if("4" == sessGridData[i].CRDCO_REG_PROC_ST){
                    sessGridData[i].CRDCO_REG_PROC_ST = "5";
                    sessGridData[i].CRDCO_REG_PROC_ST_NM = getCodeVal("RND085", "5");
                    
                }
                
            } // for

            dataCtrl.setObjData("T41_06_00", JSON.stringify(sessGridData));
            
        } // if(param.length)
        
    } // if(getCookie(
    */
    
    
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
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"40\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"FNC_INST_CD\"            dataField=\"FNC_INST_CD\"             headerText=\"카드사코드\"             width=\"140\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FNC_INST_NM\"            dataField=\"FNC_INST_NM\"             headerText=\"카드사\"                 width=\"150\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_REG_PROC_ST\"      dataField=\"CRDCO_REG_PROC_ST\"       headerText=\"카드사용등록상태코드\"   width=\"120\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_REG_PROC_ST_NM\"   dataField=\"CRDCO_REG_PROC_ST_NM\"    headerText=\"카드사용등록상태\"       width=\"140\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HOLD_CRD_CNT\"           dataField=\"HOLD_CRD_CNT\"            headerText=\"보유카드수\"             width=\"80\"   visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"REG_CRD_CNT\"            dataField=\"REG_CRD_CNT\"             headerText=\"등록카드수\"             width=\"90\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
            <DataGridColumn id=\"REGR_NM\"                dataField=\"REGR_NM\"                 headerText=\"등록자\"                 width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"REG_DTM\"                dataField=\"REG_DTM\"                 headerText=\"등록일\"                 width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
        $("#InqPrsTotlNcnt2").html(getGridRowCount_rMate());
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
            var _COOKIE_DATA = getCookieTraning("T41_06_00"); 
            if(_COOKIE_DATA != false){
                
            	gridValue[cnt++] = {"FNC_INST_CD":"JB","FNC_INST_NM":"A 카드","CRDCO_REG_PROC_ST":"3","CRDCO_REG_PROC_ST_NM":"등록완료","HOLD_CRD_CNT":"3","REG_CRD_CNT":"0","REGR_NM":"이총괄","REG_DTM":"2014-01-02"};
            	
            } //if(_COOKIE_DATA
            

        //2. 진행과제
        }else if("G00000000000002" == seqNo){
            
        	gridValue[cnt++] = {"FNC_INST_CD":"JB","FNC_INST_NM":"A 카드","CRDCO_REG_PROC_ST":"3","CRDCO_REG_PROC_ST_NM":"등록완료","HOLD_CRD_CNT":"3","REG_CRD_CNT":"0","REGR_NM":"이책임","REG_DTM":"2014-01-02"};
            
        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){
            
        	gridValue[cnt++] = {"FNC_INST_CD":"JB","FNC_INST_NM":"A 카드","CRDCO_REG_PROC_ST":"3","CRDCO_REG_PROC_ST_NM":"등록완료","HOLD_CRD_CNT":"3","REG_CRD_CNT":"0","REGR_NM":"이선임","REG_DTM":"2013-03-01"};
            
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){

        	gridValue[cnt++] = {"FNC_INST_CD":"JB","FNC_INST_NM":"A 카드","CRDCO_REG_PROC_ST":"5","CRDCO_REG_PROC_ST_NM":"해지완료","HOLD_CRD_CNT":"3","REG_CRD_CNT":"0","REGR_NM":"이수석","REG_DTM":"2013-02-11"};

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
//        searchAlert();
        
    }
}

function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}
</script>


<script type="text/javascript">

/**
 * 세션 생성
 * param FncInstCd 선택된 카드사 코드
 */
function makeSessData(FncInstCd){
    if(typeof FncInstCd == "undefined" || FncInstCd == "") return;
    
    //T41_06_00
    //setCookieTraning()
    
    var sessGridData = [];
    var _SESS_DATA = dataCtrl.getObjData("T41_06_00"); 
    
    if(_SESS_DATA == null){
    	sessGridData[0] = {"CRDCO_REG_PROC_ST_NM":"등록처리중","REG_CRD_CNT":"0","FNC_INST_CD":FncInstCd,"FNC_INST_NM":getCodeVal("BNK_CD_NM", FncInstCd),"REG_DTM":currentNowDate2,"REGR_NM":"이총괄","HOLD_CRD_CNT":"0","CRDCO_REG_PROC_ST":"1"};
    	dataCtrl.setObjData("T41_06_00", JSON.stringify(sessGridData));
        
    }else{
    	sessGridData = JSON.parse(_SESS_DATA);
        var gridCnt = sessGridData.length;
        
        sessGridData[gridCnt] = {"CRDCO_REG_PROC_ST_NM":"등록처리중","REG_CRD_CNT":"0","FNC_INST_CD":FncInstCd,"FNC_INST_NM":getCodeVal("BNK_CD_NM", FncInstCd),"REG_DTM":currentNowDate2,"REGR_NM":"이총괄","HOLD_CRD_CNT":"0","CRDCO_REG_PROC_ST":"1"};
        
        dataCtrl.setObjData("T41_06_00", JSON.stringify(sessGridData));
        
        gridData = sessGridData;
    }
    
}
    
//세션값 삭제
function delSessData(rowIdx){
    if(rowIdx < 0) {
    	return;
    }
    
    //T41_06_00
    var _SESS_DATA = dataCtrl.getObjData("T41_06_00"); 
    var sessGridData = JSON.parse(_SESS_DATA);
    
    //해지처리중 코드 삽입
    sessGridData[rowIdx].CRDCO_REG_PROC_ST = "4";
    sessGridData[rowIdx].CRDCO_REG_PROC_ST_NM = getCodeVal("RND085", "4");
    
    dataCtrl.setObjData("T41_06_00", JSON.stringify(sessGridData));
    
    gridData = sessGridData;
    
}



//쿠키값 생성
function makeCookieData(type){
    if(typeof type == "undefined" || type == "") return;
    
    setCookieTraning( "T41_06_00", "Y", 1 );
}

</script>
    
    
</body>
</html>