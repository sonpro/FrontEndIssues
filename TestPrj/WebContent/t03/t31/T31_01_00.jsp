<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T31_01_00.jsp
 *   Description        : 연구비사용실행조회
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

<%
    String Input_pInqStrDt = StringUtil.null2void(SessionUtil.getRequestValue(request, "pInqStrDt").replaceAll("-",""),DateUtil.getDateSimple());               // 조회시작일
    String Input_pInqEndDt = StringUtil.null2void(SessionUtil.getRequestValue(request, "pInqEndDt").replaceAll("-",""),DateUtil.getDateSimple());               // 조회종료일    
    
    // 2011.08.30
    String pSbjt_map_keys  = SessionUtil.getRequestValue(request, "pSbjt_map_keys");
    String pkeykey         = SessionUtil.getRequestValue(request, "pkeykey");
    String pSTrscEvdcDv    = SessionUtil.getRequestValue(request, "pSTrscEvdcDv");
    
%>


<title>연구비사용실행조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t31/T31_01_00.jsp'); return false;" class="menu_txt_on">연구비사용증빙관리</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t31/T31_01_00.jsp'); return false;" class="menu_3dep_on">연구비사용실행조회</a></li>

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
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t34/T34_01_00.jsp'); return false;" class="menu_txt">정산진행현황</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t34/T34_01_00.jsp'); return false;" class="menu_3dep">정산진행 현황</a></li>
                        
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
            
                <p class="title"><img src="/images/pefo/u31_01_00_t.gif" alt="연구비사용실행조회"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>온라인정산</li>
                       <li><img src="/images/common/arr.gif" alt=" " />연구비사용증빙관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">연구비사용실행조회</span></li>
						
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
            <div class="cb b10"></div>
            <form name="frm" method="post">
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" /> 
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" /> 
            <input type="hidden" name="PrsPgno" value="0" />
            <input type="hidden" name="TrSupYn" value="N" />            <!--거래계속여부-->
            <input type="hidden" name="OnLoadSearch" value="<%=StringUtil.null2void(SessionUtil.getRequestValue(request, "OnLoadSearch"),"N")%>">
            <h3>집행등록내역조회</h3>
            <!-- 검색단 start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>집행등록내역조회 검색</legend>
                        <table width="680" summary="집행등록내역조회" class="tbl_search">
                        <caption>집행등록내역조회 검색</caption>
                        <colgroup>
                            <col width="12%" />
                            <col width="88%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col">증빙구분</th>
                            <td>
                                <%=ComboUtil.getComboBox("RND134", "TrscEvdcDv", "", "", "", ComboUtil.OPT_ALL,"key") %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">사용일자</th>
                            <td>
                                <!-------------------------------------------------------------------------------->
                                <!--  날짜선택 시작 -->
                                <!-------------------------------------------------------------------------------->
                                <%@ include file="/inc/set_date_btn.jsp" %>          
                                <%@ include file="/inc/set_date_today.jsp" %>          
                                <!-------------------------------------------------------------------------------->
                                <!--  날짜선택 끝 -->
                                <!--------------------------------------------------------------------------------> 
                                <script type="text/javascript">
                                    document.frm.InqStrDt.value = "<%=Input_pInqStrDt%>";
                                    document.frm.InqEndDt.value = "<%=Input_pInqEndDt%>";
                                </script>                           
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
            </form>
            <!-- 조회 상세조회 버튼 start -->
            <div class="search_bt1 ar">
                <a href="#" class="bt_search" title="조회" onclick="uf_search('S'); return false;"></a>
            </div>
            <!-- //조회 상세조회 버튼 end// -->
<!-- *************************  rMateGrid ************************* -->   
            <!-- 총건수/인쇄 저장 버튼 start -->
            <div class="total_box">
                <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건/<span id="InqPrsTotlCnt2">0</span> 건]</p>
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
<!-- *************************  rMateGrid ************************* -->            
            <!-- 안내 가이드 start -->
            <div class="guide_box1" id="guide">
                <div class="guide_boxt1">
                    <p class="txt_title fl">연구비사용실행 내역 안내</p> 
                    <p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
                </div>
                <div class="guide_boxc1">
                    <ul>
                        <li>본 연구비사용실행 내역에서는 RCMS를 통해 집행된 모든 집행건에 대해서 조회가 가능합니다.</li>
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

    //////////////////////////////////
    //조회 처리
    //////////////////////////////////
    function uf_search(SchGb) {
    	
        var frm = document.frm;
        
        if( isSubmit() ) return;    // 이중처리
    	// 과제조회 유무 확인
	    if(!bAutoSbjtSch()) return;

        var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;

        if(seqNo == "" || typeof seqNo == "undefined") return;
        
        
        rMateGridLayoutInit_rMate();
        setData(seqNo);
                                    
        
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
            rMateGridLayoutInit_rMate();
        //=============================
        
    }

    
    if("Y"==frm.OnLoadSearch.value){
        document.getElementById("SBJT_MAP_KEYS").value = '';
        document.getElementById("keykey").value        = '';
        document.getElementById("TrscEvdcDv").value    = '';  
        
        window.attachEvent('onload', autoSbjtFormGen);
    }





$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();
    
    $("a#example1").fancybox();
    $("a#example2").fancybox();	
	  
    $('#btn-guide').click(function(){
	    if( $('#guide').css('height') == '17px' ){
	      $('#guide').css({overflow:'hidden'}).animate({height:70},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
	    }else{
	      $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
	    }
	    return false;
    });
});  

</script>








<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\"                        dataField=\"\"                      itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"TRSC_EVDC_DV_NM\"    dataField=\"TRSC_EVDC_DV_NM\"     headerText=\"증빙구분\"       width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_DT\"            dataField=\"TRSC_DT\"             headerText=\"사용일자\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_DT\"      dataField=\"EXCTN_EXEC_DT\"       headerText=\"집행일시\"       width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
            <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"          headerText=\"거래처\"         width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TOTL_AMT\"           dataField=\"TOTL_AMT\"            headerText=\"사용금액\"       width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"부가세\"         width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"RTRT_FIX_AMT\"       dataField=\"RTRT_FIX_AMT\"        headerText=\"복원금액\"       width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"  dataField=\"VAT_PROC_RTRT_AMT\"   headerText=\"복원부가세금액\" width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"RCV_BNK_NM\"         dataField=\"RCV_BNK_NM\"          headerText=\"입금은행\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_ACCT_NO\"        dataField=\"RCV_ACCT_NO\"         headerText=\"입금계좌번호\"   width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_ACCT_OWAC_NM\"   dataField=\"RCV_ACCT_OWAC_NM\"    headerText=\"예금주명\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PAYM_USAG\"          dataField=\"PAYM_USAG\"           headerText=\"지급용도\"       width=\"100\" visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUTR_ID\"            dataField=\"BUTR_ID\"             headerText=\"사업비사용거래실적ID\"    width=\"140\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_EVDC_DV\"       dataField=\"TRSC_EVDC_DV\"        headerText=\"증빙구분코드\"   width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_ACCT_BNK_CD\"    dataField=\"RCV_ACCT_BNK_CD\"     headerText=\"입금은행코드\"   width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PMS_ID\"             dataField=\"PMS_ID\"              headerText=\"PMS_ID\"         width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_ID\"            dataField=\"SBJT_ID\"             headerText=\"과제번호\"       width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO\"       dataField=\"AGRMT_SEQ_NO\"        headerText=\"협약일련번호\"   width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_ID\"      dataField=\"AGRMT_INST_ID\"       headerText=\"협약기관아이디\" width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
            
            if("EXCTN_EXEC_DT" == dataField){
                uf_DtlView(dataRow, rowIndex);
            }
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid.addEventListener("itemClick", itemClickHandler); //더블클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", setInitTotCnt);
        //gridRoot.addEventListener("layoutComplete", uf_search);   //rMateGrid 레이아웃 출력 후 조회시작
        
        gridRoot.addEventListener("dataComplete", setTotCnt);   

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    
    //카운트 초기화
    function setInitTotCnt(){
        $("#InqPrsTotlNcnt2").html("0");
        $("#InqPrsTotlCnt2").html("0");
        
    }
    function setTotCnt(){
        var rowCnt = getGridRowCount_rMate();
        var totCnt = rowCnt;
        $("#InqPrsTotlNcnt2").html(rowCnt);
        $("#InqPrsTotlCnt2").html(totCnt);
        
    }
    
    
    //////////////////////////////////
    // 상세화면
    //////////////////////////////////
    function uf_DtlView(rData, rIdx) {
        
        
        var frm_key = document.rtr_str_form;
        var frm     = document.frm;
        var vcnt    = 0;

        if(getGridRowCount_rMate()<=0){
            alert("조회된 데이타가 없습니다.");
            return;
        }
            
        get2post(frm, "pInqStrDt="     +frm.InqStrDt.value);                                 // 조회시작일
        get2post(frm, "pInqEndDt="     +frm.InqEndDt.value);                                 // 조회종료일

        // 2011.08.30 
        get2post(frm, "pSbjt_map_keys="+document.getElementById("SBJT_MAP_KEYS").value);
        get2post(frm, "pkeykey="       +document.getElementById("keykey").value);
        get2post(frm, "pSTrscEvdcDv="  +document.getElementById("TrscEvdcDv").value);
        // 2011.12.02 EDMS관련
        get2post(frm, "hmpwRoleDv="    +frm_key.S_HMPW_ROLE_DV.value);
        get2post(frm, "rcmsGrpCd="     +frm_key.S_RCMS_GRP_CD.value);
        
        get2post(frm, "pTrscEvdcDv="   +rData.TRSC_EVDC_DV);                  // 거래증빙구분
        get2post(frm, "pButrId="       +rData.BUTR_ID);          // 사업비사용거래실적ID

        get2post(frm, "PmsId="         +rData.PMS_ID);                        // PMS_ID
        get2post(frm, "SbjtId="        +rData.SBJT_ID);                      // 과제번호
        get2post(frm, "AgrmtSeqNo="    +rData.AGRMT_SEQ_NO);                  // 협약일련번호
        get2post(frm, "AgrmtInstId="   +rData.AGRMT_INST_ID);                // 협약기관아이디
        get2post(frm, "TrscDt="        +rData.TRSC_DT);                      // 거래일자

        uf_newWinNs('/t03/t31/T31_01_10.jsp', '', '800', '750');
        removeTempAttribute(frm);
        
    }
    
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
        
        	
        //2. 진행과제
        }else if("G00000000000002" == seqNo){

        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 15:44:36","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"1분기 연구과제추진비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0002","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2014-01-07","EXCTN_EXEC_DT":"2014-01-13 15:46:58","SPLR_CO_NM":"㈜ 나 업체","TOTL_AMT":"100","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"B 은행","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"㈜ 나 업체","PAYM_USAG":"간접비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0002","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-02-10 13:07:20","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"1월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0002","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2014-02-04","EXCTN_EXEC_DT":"2014-02-24 14:51:38","SPLR_CO_NM":"㈜ A 가맹점","TOTL_AMT":"220","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"세미나개최비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0002","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2014-02-27","EXCTN_EXEC_DT":"2014-03-07 12:27:13","SPLR_CO_NM":"㈜ 가 업체","TOTL_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"E 은행","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"㈜ 가 업체","PAYM_USAG":"장비구입비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0002","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249"};

        
        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){

        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-03-21","EXCTN_EXEC_DT":"2013-02-21 13:44:48","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"1/4 연구과제추진비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2013-03-04","EXCTN_EXEC_DT":"2013-03-06 10:31:01","SPLR_CO_NM":"㈜ 가 업체","TOTL_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"E 은행","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"㈜ 가 업체","PAYM_USAG":"장비구입비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-03-08 13:07:20","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"2월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2013-02-26","EXCTN_EXEC_DT":"2013-03-25 14:52:47","SPLR_CO_NM":"㈜ A 가맹점","TOTL_AMT":"220","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"세미나 개최비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-05-10","EXCTN_EXEC_DT":"2013-04-10 13:07:20","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"3월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2013-03-28","EXCTN_EXEC_DT":"2013-04-10 13:41:58","SPLR_CO_NM":"㈜ 나 업체","TOTL_AMT":"100","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"B 은행","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"㈜ 나 업체","PAYM_USAG":"간접비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2013-03-19","EXCTN_EXEC_DT":"2013-04-23 15:54:12","SPLR_CO_NM":"㈜ B 가맹점","TOTL_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"장비구입비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-06-04","EXCTN_EXEC_DT":"2013-05-06 10:59:20","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"2/4 연구과제추진비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-06-10","EXCTN_EXEC_DT":"2013-05-10 11:01:45","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"4월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2013-04-16","EXCTN_EXEC_DT":"2013-05-23 16:32:11","SPLR_CO_NM":"㈜ C 가맹점","TOTL_AMT":"220","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"세미나 개최비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-07-10","EXCTN_EXEC_DT":"2013-06-10 12:12:56","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"5월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-07-08","EXCTN_EXEC_DT":"2013-07-08 16:02:09","SPLR_CO_NM":"㈜ 바 업체","TOTL_AMT":"100","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"G 은행","RCV_ACCT_NO":"777-77-777777-","RCV_ACCT_OWAC_NM":"㈜ 바 업체","PAYM_USAG":"간접비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-08-09","EXCTN_EXEC_DT":"2013-07-10 10:54:37","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"6월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2013-07-10","EXCTN_EXEC_DT":"2013-07-22 17:26:25","SPLR_CO_NM":"㈜ 다 업체","TOTL_AMT":"20000","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"C 은행","RCV_ACCT_NO":"300-30-300000  ","RCV_ACCT_OWAC_NM":"㈜ 다 업체","PAYM_USAG":"재료구입비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-09-03","EXCTN_EXEC_DT":"2013-08-02 09:37:25","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"3/4 연구과제추진비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-09-10","EXCTN_EXEC_DT":"2013-08-09 09:58:01","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"7월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-10-10","EXCTN_EXEC_DT":"2013-09-10 10:15:21","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"8월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-09-30","EXCTN_EXEC_DT":"2013-09-30 17:52:50","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"전문가활용비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-11-08","EXCTN_EXEC_DT":"2013-10-10 14:51:08","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"9월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2013-10-14","EXCTN_EXEC_DT":"2013-10-29 13:12:08","SPLR_CO_NM":"㈜ 라 업체","TOTL_AMT":"15000","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"F 은행","RCV_ACCT_NO":"999-99-999999-0","RCV_ACCT_OWAC_NM":"㈜ 라 업체","PAYM_USAG":"제작비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-12-02","EXCTN_EXEC_DT":"2013-11-04 11:41:15","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"4/4 연구과제추진비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-12-10","EXCTN_EXEC_DT":"2013-11-08 12:01:28","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"10월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2013-10-18","EXCTN_EXEC_DT":"2013-11-25 09:21:09","SPLR_CO_NM":"㈜ E 가맹점","TOTL_AMT":"500","USE_VAT_AMT":"45","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"간접비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2014-01-10","EXCTN_EXEC_DT":"2013-12-10 11:10:12","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"11월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2013-12-02","EXCTN_EXEC_DT":"2013-12-23 15:47:26","SPLR_CO_NM":"㈜ D 가맹점","TOTL_AMT":"9060","USE_VAT_AMT":"823","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"훈련비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-01-10 10:46:32","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"12월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2014-01-04","EXCTN_EXEC_DT":"2014-01-13 15:46:58","SPLR_CO_NM":"㈜ 마 업체","TOTL_AMT":"300","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"H 은행","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"㈜ 마 업체","PAYM_USAG":"간접비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2014-02-28","EXCTN_EXEC_DT":"2014-02-10 15:36:41","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"1월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};

        	
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){
            
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2013-03-06","EXCTN_EXEC_DT":"2013-03-06 10:31:01","SPLR_CO_NM":"㈜ 가 업체","TOTL_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"100","RCV_BNK_NM":"E 은행","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"㈜ 가 업체","PAYM_USAG":"장비구입비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-03-10","EXCTN_EXEC_DT":"2013-03-10 13:07:20","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"2월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-03-21","EXCTN_EXEC_DT":"2013-03-21 10:44:38","SPLR_CO_NM":"㈜ A 가맹점","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"1/4 연구과제추진비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2013-03-25","EXCTN_EXEC_DT":"2013-03-25 14:52:47","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"220","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"20","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"세미나 개최비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 13:07:20","SPLR_CO_NM":"㈜ B 가맹점","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"3월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 13:41:58","SPLR_CO_NM":"㈜ 나 업체","TOTL_AMT":"100","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"9","RCV_BNK_NM":"B 은행","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"㈜ 나 업체","PAYM_USAG":"간접비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2013-04-23","EXCTN_EXEC_DT":"2013-04-23 15:54:12","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"100","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"장비구입비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-05-10","EXCTN_EXEC_DT":"2013-05-06 10:59:20","SPLR_CO_NM":"㈜ C 가맹점","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"4월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2013-05-23","EXCTN_EXEC_DT":"2013-05-10 11:01:45","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"220","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"20","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"세미나 개최비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-06-04","EXCTN_EXEC_DT":"2013-05-23 16:32:11","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"2/4 연구과제추진비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-06-10","EXCTN_EXEC_DT":"2013-06-10 12:12:56","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"5월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-07-08","EXCTN_EXEC_DT":"2013-07-08 16:02:09","SPLR_CO_NM":"㈜ 바 업체","TOTL_AMT":"100","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"9","RCV_BNK_NM":"G 은행","RCV_ACCT_NO":"777-77-777777-0","RCV_ACCT_OWAC_NM":"㈜ 바 업체","PAYM_USAG":"간접비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-07-10","EXCTN_EXEC_DT":"2013-07-10 10:54:37","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"6월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2013-07-22","EXCTN_EXEC_DT":"2013-07-22 17:26:25","SPLR_CO_NM":"㈜ 다 업체","TOTL_AMT":"20000","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"1818","RCV_BNK_NM":"C 은행","RCV_ACCT_NO":"300-30-300000","RCV_ACCT_OWAC_NM":"㈜ 다 업체","PAYM_USAG":"재료구입비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-08-09","EXCTN_EXEC_DT":"2013-08-02 09:37:25","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"7월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-09-03","EXCTN_EXEC_DT":"2013-08-09 09:58:01","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"3/4 연구과제추진비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-09-10","EXCTN_EXEC_DT":"2013-09-10 10:15:21","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"8월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-09-30","EXCTN_EXEC_DT":"2013-09-30 17:52:50","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"전문가활용비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-10-10","EXCTN_EXEC_DT":"2013-10-10 14:51:08","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"9월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2013-10-29","EXCTN_EXEC_DT":"2013-10-29 13:12:08","SPLR_CO_NM":"㈜ 라 업체","TOTL_AMT":"15000","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"1363","RCV_BNK_NM":"F 은행","RCV_ACCT_NO":"999-99-999999-0","RCV_ACCT_OWAC_NM":"㈜ 라 업체","PAYM_USAG":"제작비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-11-08","EXCTN_EXEC_DT":"2013-11-08 12:01:28","SPLR_CO_NM":"㈜ E 가맹점","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"10월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2013-11-25","EXCTN_EXEC_DT":"2013-11-25 09:21:09","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"500","USE_VAT_AMT":"45","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"45","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"간접비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-12-02","EXCTN_EXEC_DT":"2013-12-02 11:50;19","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"4/4 연구과제추진비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2013-12-10","EXCTN_EXEC_DT":"2013-12-10 11:10:12","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"11 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"카드","TRSC_DT":"2013-12-23","EXCTN_EXEC_DT":"2013-12-23 15:47:26","SPLR_CO_NM":"㈜ D 가맹점","TOTL_AMT":"9060","USE_VAT_AMT":"823","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"823","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"훈련비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2014-01-10","EXCTN_EXEC_DT":"2014-01-10 10:46:32","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"12월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"전자세금계산서","TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 15:46:58","SPLR_CO_NM":"㈜ 마 업체","TOTL_AMT":"300","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"27","RCV_BNK_NM":"H 은행","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"㈜ 마 업체","PAYM_USAG":"간접비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"기타","TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-02-10 15:36:41","SPLR_CO_NM":"㈜ RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","PAYM_USAG":"1월 인건비","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
 
        }

                


    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}

function setData(seqNo){
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                try{
                    document.body.setCapture(); // 'wait'
                    document.body.style.cursor =    "wait";
                    //SetData(); //Insert   Grid
                    setGridData(seqNo); //Insert    Grid
                    document.body.style.cursor =    "auto";
                    document.body.releaseCapture(); //setCapture()_Next
                }finally{
                    reset_submit();
                    searchAlert();
                }
            }
            , 1000);   // 1초후 실행 1000 = 1초

}
function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}
</script>

</body>
</html> 