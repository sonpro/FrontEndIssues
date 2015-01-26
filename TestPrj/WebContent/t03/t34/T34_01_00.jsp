<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T34_01_00.jsp
 *   Description        : 정산진행 현황
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

<title>정산진행 현황 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
            




                    <div><img src="/images/pefo/sub_navt3.gif" alt="온라인정산" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t31/T31_01_00.jsp'); return false;" class="menu_txt">연구비사용증빙관리</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t31/T31_01_00.jsp'); return false;" class="menu_3dep">연구비사용실행조회</a></li>

                                    <li><a href="#" onclick="fn_url('/t03/t31/T31_02_00.jsp'); return false;" class="menu_3dep">연구비증빙문서관리</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_txt">카드내역 조회</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">카드사용 내역</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">카드결제 복원 내역</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t33/T33_01_00.jsp'); return false;" class="menu_txt">정산서류작성</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t33/T33_01_00.jsp'); return false;" class="menu_3dep">정산서류 작성</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t34/T34_01_00.jsp'); return false;" class="menu_txt_on">정산진행현황</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t34/T34_01_00.jsp'); return false;" class="menu_3dep_on">정산진행 현황</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t35/T35_01_00.jsp'); return false;" class="menu_txt">과제별 상시점검</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t35/T35_01_00.jsp'); return false;" class="menu_3dep">연구비상시점검</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>

                        </div>
                    </div>
                    <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->




        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->
            



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u34_01_00_t.gif" alt="정산진행 현황"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>온라인정산</li>
                       <li><img src="/images/common/arr.gif" alt=" " />정산진행현황</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">정산진행 현황</span></li>
						
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
                  과제조회 싱글모드      isSbjtAutoSchMulti : false
                  웹캐시 이세상 작성 20110426 
            -->
            <!-------------------------------------------------------------------------------->
            
            



<!-- //auto search start -->
<% 
    boolean isSbjtAutoSchMulti = false;  //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글  
    boolean beSearchBtn        = false;  //조회버튼 생성구분(실행메소드:uf_beSearchBtn();)
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->  

            <!-------------------------------------------------------------------------------->
            <!--  공통부 끝 -->
            <!-------------------------------------------------------------------------------->            
            <form name="frm" method="post">
            <input type="hidden" name="frm_SacPrgrSt"      value="">             
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" /> 
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO" value="Y" /> 
                
            <input type="hidden" name="hidInstRoleDv"      id="" value="" />            
            
            <div class="cb b10"></div>
            <h3>정산진행현황</h3>
            <div id="cDiv" style="display:none;">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="선택된 과제 내용입니다" class="tbl_type02">
                <caption>과제검색</caption>
                <colgroup>
                    <col width="20%" />
                    <col width="80%" />
                </colgroup>
                <tbody>
                <tr>
                    <th scope="col">연구기관명</th>
                    <td class="ll">
                        <span id="inst">
                        </span>
                    </td>
                </tr>
                </tbody>
                </table>
            </div>
            <div class="t10 b05" id="infoDiv" >
                <table class="tbl_type02" width="704" border="0" cellspacing="0" cellpadding="0" summary="선택된 과제 내용입니다"  id="infoTbl">
                <caption>과제검색</caption>
                <colgroup>
                    <col width="20%" />
                    <col width="30%" />
                    <col width="20%" />
                    <col width="30%" />
                </colgroup>
                <tbody>
                <tr>
                    <th scope="col" rowspan="2">정산진행상태</th>
                    <td rowspan="2"><span id="SacPrgrSt"></span></td>
                    <th scope="col">정산금</th>
                    <td class="ar ll"><span id="SacAmt"></td>
                </tr>
                <tr>
                    <th scope="col">환수금</th>
                    <td class="ar ll"><span id="SacAmtRtunAmt"></td>
                </tr>
                </tbody>
                </table>
            </div>            
<!-- *************************  rMateGrid ************************* -->
            <!-- 총건수/인쇄 저장 버튼 start -->
            <div class="total_box">
                <p class="ar b05">
                    <a href="#" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄" /></a>
                    <a href="#" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="저장" /></a>
                </p>
                <p class="cb"></p>
            </div>
            <!-- //총건수/인쇄 저장 버튼 end// -->  
            <!-- 그리드 Start -->
            <div id="gridDiv">
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
            <div class="action_bt ar">
                <a href="#" onclick="fn_oz2(); return false;" class="bt_action7" title="검토결과서조회"><span class="bt_sp">검토결과서조회</span></a>
            </div>
            <!-- //action bt end// -->
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

});  

    function uf_search() {
        
        var frm = document.frm;
        var arr;
        if( isSubmit() ) return;    // 이중처리 
        //if(!chk_sbjt_sch()) return false; //유효성체크 

        if( frm.hidInstRoleDv.value == "C") {
            var tmp = frm.selBox.options[document.frm.selBox.options.selectedIndex].value;
            arr = tmp.split("|");
            get2post(document.frm, "AgrmtInstId="+arr[0]);
        }else{
            get2post(frm, "AgrmtInstId=" + document.rtr_str_form.S_AGRMT_INST_ID.value);
        }
        
        get2post(frm, "AgrmtSeqNo=" + document.rtr_str_form.S_AGRMT_SEQ_NO.value);
        get2post(frm, "SacSn="      + document.rtr_str_form.S_SAC_SN.value);
        
        
        rMateGridLayoutInit_rMate();
        
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    try{
                        document.body.setCapture(); // 'wait'
                        document.body.style.cursor =    "wait";
                        //SetData(); //Insert   Grid
                        setGridData(document.rtr_str_form.S_AGRMT_SEQ_NO.value); //Insert    Grid
                        document.body.style.cursor =    "auto";
                        document.body.releaseCapture(); //setCapture()_Next
                    }finally{
                        reset_submit();
                        searchAlert();
                    }
                }
                , 1000);   // 1초후 실행 1000 = 1초
        
        
        removeTempAttribute(frm);
        
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
        
        //=============================
        //  실행시킬 메소드 들어갈 위치
        //=============================
            uf_search(); 
        //=============================
        
    }

    function uf_Click(inx, dataRow) {
        
        if( frm.hidInstRoleDv.value == "C") {
            var tmp = frm.selBox.options[document.frm.selBox.options.selectedIndex].value;
            arr = tmp.split("|");
            get2post(document.frm, "AgrmtInstId=" + arr[0]);
        }else{
            get2post(document.frm, "AgrmtInstId=" + document.rtr_str_form.S_AGRMT_INST_ID.value);
        }
        
        get2post(document.frm, "SbjtId="        + document.rtr_str_form.S_SBJT_ID.value);
        get2post(document.frm, "AgrmtSeqNo="    + document.rtr_str_form.S_AGRMT_SEQ_NO.value);
        get2post(document.frm, "DtlsItxpCd="    + dataRow.ITXP_CD);   //세부비목코드
        get2post(document.frm, "HgrkItxpNm="    + dataRow.HGRK_ITXP_NM);   //비목
        get2post(document.frm, "DtlsItxpNm="    + dataRow.ITXP_NM); //세부비목
        
        uf_frmNewWinNs(document.frm, '/t03/t34/T34_01_10.jsp', 'TAXVIEW1', '785', '500');
        removeTempAttribute(document.frm);  //get2post 삭제     
        
    }   

    /*****************************************************************
     * fn_oz        검토결과서
     * @param
     * @return
    ******************************************************************/
    function fn_oz2(){
        
        var frm = document.frm;
        var rtr_str = document.rtr_str_form;
        
        // 과제조회 유무 확인
        if(!bAutoSbjtSch()) return;

        get2post(frm, "ozPage=U34");
        
        if(rtr_str.S_SAC_SHP.value == '1'  || rtr_str.S_SAC_SHP.value == '3'  ) // 일괄정산 및 단계정산의 경우
        {
            get2post(frm, "url=/REPT/N01_01_02.ozr");
            get2post(frm, "SbjtId="     +rtr_str.S_SBJT_ID.value);
            get2post(frm, "SacSn="      +rtr_str.S_SAC_SN.value);
            uf_newWinNs('/pop/oz_popup.jsp','ozview2','1000','1000', frm); 
            
        }
        else if(rtr_str.S_SAC_SHP.value == '2'  )   // 연차정산의 경우
        {
            get2post(frm, "url=/REPT/N01_01_01.ozr");
            get2post(frm, "SbjtId="     +rtr_str.S_SBJT_ID.value);
            get2post(frm, "SacSn="      +rtr_str.S_SAC_SN.value);
            uf_newWinNs('/pop/oz_popup.jsp','ozview1','1000','1000', frm);
        }
        
        removeTempAttribute(frm);
             
    }

    function showInst() {
        $("#cDiv").show();
        $("#cDiv").css("padding-top","10px");
        $("#infoTbl").css("border-top","0px");
        $("#infoDiv").css("padding-top", "0px");
    }
    
    function hideInst() {
        $("#cDiv").hide();
        $("#cDiv").css("padding-top","");
        $("#infoTbl").css("border-top","");
        $("#infoDiv").css("padding-top", "");
    }

</script>







<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" lockedColumnCount=\"3\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"false\"  >\
            <columns>\
                <DataGridColumn id=\"\"                       dataField=\"\"                       itemRenderer=\"IndexNoItem\"       width=\"40\" sortable=\"false\" textAlign=\"center\" />\
                <DataGridColumn id=\"HGRK_ITXP_NM\"           dataField=\"HGRK_ITXP_NM\"            headerText=\"비목\"               width=\"95\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_NM\"                dataField=\"ITXP_NM\"                 headerText=\"세부비목\"           width=\"140\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
                <DataGridColumn id=\"AGRMT_CASH_LIM_AMT\"     dataField=\"AGRMT_CASH_LIM_AMT\"      headerText=\"협약한도\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"USE_APV_CASH_LIM_AMT\"   dataField=\"USE_APV_CASH_LIM_AMT\"    headerText=\"사용승인한도\"       width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"EXCTN_EXEC_AMT\"         dataField=\"EXCTN_EXEC_AMT\"          headerText=\"사용금액\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_PLAN\"              dataField=\"SPOT_PLAN\"               headerText=\"현물계획금액\"       width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_USE\"               dataField=\"SPOT_USE\"                headerText=\"현물사용금액\"       width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"EXCTN_BAL\"              dataField=\"EXCTN_BAL\"               headerText=\"사용잔액\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"CROV_AMT\"               dataField=\"CROV_AMT\"                headerText=\"차년도현금이월액\"   width=\"120\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_CROV_AMT\"          dataField=\"SPOT_CROV_AMT\"           headerText=\"차년도현물이월액\"   width=\"120\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"REJCT_AMT1\"             dataField=\"REJCT_AMT1\"              headerText=\"불인정현금금액\"     width=\"120\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"REJCT_AMT2\"             dataField=\"REJCT_AMT2\"              headerText=\"불인정현물금액\"     width=\"120\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"LST_AMT\"                dataField=\"LST_AMT\"                 headerText=\"최종현금잔액\"       width=\"120\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_LST_AMT\"           dataField=\"SPOT_LST_AMT\"            headerText=\"최종현물잔액\"       width=\"120\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"HGRK_ITXP_CD\"           dataField=\"HGRK_ITXP_CD\"            headerText=\"비목코드\"           width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_CD\"                dataField=\"ITXP_CD\"                 headerText=\"세부비목코드\"       width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SPLM_AMT\"               dataField=\"SPLM_AMT\"                headerText=\"보충금액\"           width=\"110\" visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </columns>\
            <dataProvider>\
                <!--  그리드의 자료를 dataProvider가 아닌 별도의 컴포넌트에 입력해야 할 경우 아래와 같이 $gridData를 넣어줍니다  -->\
                <SpanSummaryCollection source=\"{$gridData}\" >\
                    <!--  병합을 원하는 필드의 필드명을 차례대로 넣어줍니다   -->\
                    <mergingFields>\
                        <SpanMergingField name=\"HGRK_ITXP_NM\" colNum=\"1\" />\
                    </mergingFields>\
                </SpanSummaryCollection>\
            </dataProvider>\
            <footers>\
                <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{AGRMT_CASH_LIM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_APV_CASH_LIM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_EXEC_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_PLAN}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_USE}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{REJCT_AMT1}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{REJCT_AMT2}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{LST_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_LST_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
        gridApp.setLayout(layoutStr);   //그리드 레이아웃 생성

        //더블클릭 상세보기 이벤트 추가
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            
        };
        
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
            
            if("ITXP_NM" == dataField){
                uf_Click(rowIndex, dataRow);
            }
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            dataGrid.addEventListener("itemClick", itemClickHandler); //클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->




<script type="text/javascript">
var cnt = 0;
function setGridData(seqNo){    
    try{
        cnt = 0;
        var gridValue = [];
        
        //1. 신규과제
        if("G00000000000001" == seqNo){
            
        	hideInst();
            document.getElementById("inst").innerHTML="";
            document.frm.hidInstRoleDv.value="E";

            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","AGRMT_CASH_LIM_AMT":"20000","USE_APV_CASH_LIM_AMT":"20000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"20000","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"20000","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","AGRMT_CASH_LIM_AMT":"38000","USE_APV_CASH_LIM_AMT":"38000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"38000","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"38000","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","AGRMT_CASH_LIM_AMT":"30000","USE_APV_CASH_LIM_AMT":"30000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"30000","SPOT_USE":"0","EXCTN_BAL":"30000","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"30000","SPOT_LST_AMT":"30000","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","AGRMT_CASH_LIM_AMT":"9000","USE_APV_CASH_LIM_AMT":"9000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"9000","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"9000","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","AGRMT_CASH_LIM_AMT":"2000","USE_APV_CASH_LIM_AMT":"2000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"2000","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"2000","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","AGRMT_CASH_LIM_AMT":"1000","USE_APV_CASH_LIM_AMT":"1000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"1000","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"1000","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};


            document.getElementById("SacPrgrSt").innerHTML="정산진행상태가 아닙니다.";
            document.getElementById("SacAmtRtunAmt").innerHTML="0";
            
        //2. 진행과제
        }else if("G00000000000002" == seqNo){

        	document.getElementById("inst").innerHTML="<select name='selBox' onchange='autoSbjtFormGen();' ><option value='10112249|주관기관|110,000,000|정상|수행|G00000000000002' selected >㈜RCMS</option></select>";
            showInst();

            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","AGRMT_CASH_LIM_AMT":"20000","USE_APV_CASH_LIM_AMT":"20000","EXCTN_EXEC_AMT":"220","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"19780","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"19780","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","AGRMT_CASH_LIM_AMT":"38000","USE_APV_CASH_LIM_AMT":"38000","EXCTN_EXEC_AMT":"1100","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"36900","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"36900","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","AGRMT_CASH_LIM_AMT":"30000","USE_APV_CASH_LIM_AMT":"30000","EXCTN_EXEC_AMT":"2500","SPOT_PLAN":"30000","SPOT_USE":"5000","EXCTN_BAL":"27500","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"27500","SPOT_LST_AMT":"25000","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","AGRMT_CASH_LIM_AMT":"9000","USE_APV_CASH_LIM_AMT":"9000","EXCTN_EXEC_AMT":"2250","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"6750","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"6750","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","AGRMT_CASH_LIM_AMT":"2000","USE_APV_CASH_LIM_AMT":"2000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"2000","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"2000","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","AGRMT_CASH_LIM_AMT":"1000","USE_APV_CASH_LIM_AMT":"1000","EXCTN_EXEC_AMT":"100","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"900","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"900","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};


            document.getElementById("SacPrgrSt").innerHTML="정산진행상태가 아닙니다.";
            document.getElementById("SacAmtRtunAmt").innerHTML="0";
 
        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){

        	document.getElementById("inst").innerHTML="<select name='selBox' onchange='autoSbjtFormGen();' ><option value='00011272|공동개발기관||정지|정산|G00000000000003'  >㈜RCMS</option><option value='10112249|주관기관|111,100|정지|정산|G00000000000003' selected >㈜RCMS</option></select>";
            showInst();

            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","AGRMT_CASH_LIM_AMT":"20000","USE_APV_CASH_LIM_AMT":"20000","EXCTN_EXEC_AMT":"19500","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"500","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"500","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","AGRMT_CASH_LIM_AMT":"38000","USE_APV_CASH_LIM_AMT":"38000","EXCTN_EXEC_AMT":"37200","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"800","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"800","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","AGRMT_CASH_LIM_AMT":"30000","USE_APV_CASH_LIM_AMT":"30000","EXCTN_EXEC_AMT":"30000","SPOT_PLAN":"30000","SPOT_USE":"30000","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"0","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","AGRMT_CASH_LIM_AMT":"9000","USE_APV_CASH_LIM_AMT":"9000","EXCTN_EXEC_AMT":"8900","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"100","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"100","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","AGRMT_CASH_LIM_AMT":"2000","USE_APV_CASH_LIM_AMT":"2000","EXCTN_EXEC_AMT":"2000","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"0","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","AGRMT_CASH_LIM_AMT":"1000","USE_APV_CASH_LIM_AMT":"1000","EXCTN_EXEC_AMT":"1000","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"0","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};


            document.frm.frm_SacPrgrSt.value="0";
            document.getElementById("SacPrgrSt").innerHTML="보고서미제출";
            document.getElementById("SacAmtRtunAmt").innerHTML="0";
            document.getElementById("SacAmt").innerHTML="6,352";

        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){

        	document.getElementById("inst").innerHTML="<select name='selBox' onchange='autoSbjtFormGen();' ><option value='10112249|주관기관|21,000|정지|수행|G00000000000004' selected >㈜RCMS</option></select>";
            showInst();
            
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","AGRMT_CASH_LIM_AMT":"20000","USE_APV_CASH_LIM_AMT":"20000","EXCTN_EXEC_AMT":"18637","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"1363","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"1363","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","AGRMT_CASH_LIM_AMT":"38000","USE_APV_CASH_LIM_AMT":"38000","EXCTN_EXEC_AMT":"33819","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"4181","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"4181","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","AGRMT_CASH_LIM_AMT":"30000","USE_APV_CASH_LIM_AMT":"30000","EXCTN_EXEC_AMT":"30000","SPOT_PLAN":"30000","SPOT_USE":"30000","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","AGRMT_CASH_LIM_AMT":"9000","USE_APV_CASH_LIM_AMT":"9000","EXCTN_EXEC_AMT":"8900","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"100","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"100","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","AGRMT_CASH_LIM_AMT":"2000","USE_APV_CASH_LIM_AMT":"2000","EXCTN_EXEC_AMT":"2000","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0",};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","AGRMT_CASH_LIM_AMT":"1000","USE_APV_CASH_LIM_AMT":"1000","EXCTN_EXEC_AMT":"910","SPOT_PLAN":"0","SPOT_USE":"0","EXCTN_BAL":"90","CROV_AMT":"0","SPOT_CROV_AMT":"0","REJCT_AMT1":"0","REJCT_AMT2":"0","LST_AMT":"90 ","SPOT_LST_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","SPLM_AMT":"0"};

            document.frm.frm_SacPrgrSt.value="1";
            document.getElementById("SacPrgrSt").innerHTML="보고서제출완료";
            document.getElementById("SacAmtRtunAmt").innerHTML="0";
            document.getElementById("SacAmt").innerHTML="6,590";

        }
                


    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
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