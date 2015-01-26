<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T21_01_00.jsp
 *   Description        : 요청내역 조회
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
    String autosrch = StringUtil.null2void(SessionUtil.getRequestValue(request, "autosrch"));     // 요청후전환화면시 자동조회
    String sbjtChk  = StringUtil.null2void(SessionUtil.getRequestValue(request, "sbjtChk"));
    String mapKey   = StringUtil.null2void(SessionUtil.getRequestValue(request, "AUTO_MAP_KEY"));
%>

<title>요청내역 조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
            

                    <div><img src="/images/pefo/sub_navt2.gif" alt="연구비복원" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t21/T21_01_00.jsp'); return false;" class="menu_txt_on">요청내역조회</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t21/T21_01_00.jsp'); return false;" class="menu_3dep_on">요청내역조회</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_txt">연구비이체취소 요청</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_3dep">연구비이체취소 요청</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_txt">카드결제복원요청</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_3dep">카드결제복원요청</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t02/t24/T24_01_00.jsp'); return false;" class="menu_txt">부가세 복원요청</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t02/t24/T24_01_00.jsp'); return false;" class="menu_3dep">부가세 복원요청</a></li>
                        
                                </ul>
                                <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
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
            
                <p class="title"><img src="/images/pefo/u21_01_00_t.gif" alt="요청내역조회"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>연구비복원</li>
                       <li><img src="/images/common/arr.gif" alt=" " />요청내역조회</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">요청내역조회</span></li>
						
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
        
            <% 
               boolean isSbjtAutoSchMulti = false;  //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글  
               boolean beSearchBtn        = false;  //조회버튼 생성구분(실행메소드:uf_beSearchBtn();)
            %>
   
   			<!-- *************************  2014 그리드 교체 작업 과제선택( check box 사용안함)    ************************* -->
   					          
			<!-- //auto search start -->
			<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
			<!-- //auto search end -->            
 			<!-- *************************  2014 그리드 교체 작업 과제선택( check box 사용안함)    ************************* -->
 
 
 
            <!-------------------------------------------------------------------------------->
            <!--  공통부 끝 -->
            <!-------------------------------------------------------------------------------->            
            <div class="cb b10"></div>
            <h3>현황조회</h3>
            <form name="frm" method="post">    
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" /> 
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />
            <input type="hidden" name="PrsPgno" value="0" /> <!--현재페이지번호-->
            <input type="hidden" name="TrSupYn" value="N" /> <!--거래계속여부-->
            <!-- 검색단 start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>현황조회검색</legend>
                        <table width="680" summary="현황조회" class="tbl_search">
                        <caption>현황조회검색</caption>
						<colgroup>
							<col width="12%" />
							<col width="37%" />
							<col width="12%"/>
							<col width="37%"/>
						</colgroup>
						<tbody>
						<tr>
                            <th scope="col">상태</th>
                            <td>
                                <%=ComboUtil.getComboBox("RND039", "PayPrgrSt", "", "", "", ComboUtil.OPT_ALL) %>
                            </td>
                            <th scope="col">요청구분</th>
                            <td>
                                <%=ComboUtil.getComboBox("RND038", "PayUsagDv", "", "", "", ComboUtil.OPT_ALL) %>
                            </td>  
						</tr>
						<tr>
	       					<th scope="col">등록일자</th>
                            <td colspan="3">
                                <!-------------------------------------------------------------------------------->
                                <!--  날짜선택 시작 -->
                                <!-------------------------------------------------------------------------------->
                                <%@ include file="/inc/set_date_btn.jsp" %>          
                                <%@ include file="/inc/set_date_week.jsp" %>
                                <!-------------------------------------------------------------------------------->
                                <!--  날짜선택 끝 -->
                                <!-------------------------------------------------------------------------------->
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
            <div class="search_bt1 ar">
                <a href="#" class="bt_search" title="조회" onclick="uf_search('S'); return false;"></a>
            </div>
            <!-- //조회 상세조회 버튼 end// -->
            
            <div class="cb t10"></div>
            
            <!-- *************************  2014 그리드 교체 작업 rMateGrid ************************* -->            
            <div class="total_box">
                <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt"> 0 </span> 건]</p>
                <p class="ar b05">
                    <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄" /></a>  
                    <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="저장" /></a>
                </p>
                <p class="cb"></p>
            </div>
            <!-- //총건수/인쇄 저장 버튼 end// -->
            <!-- 그리드 start -->
            <div>
                <script type="text/javascript">                
                	rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "378", "#FFFFFF", "transparent");
                </script>
	            <!-- 상세보기 레이어 팝업 -->
	            <div id="layerPopup" style="display:none;z-index:999999;">
	                <div id="layerPopupTitle" style="width:355px;height:30px;">
	                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
	                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="닫기"></a>
	                </div>
	                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
	            </div>                
            </div> 
                
            <!-- *************************  2014 그리드 교체 작업 rMateGrid ************************* -->
            
            
            <!-- action bt start -->
            <div class="action_bt">
                <a href="#" class="bt_action4-1" title="요청취소" onclick="uf_cnclPsv(); return false;"><span class="bt_sp">요청취소</span></a>
                <a href="#" class="bt_action9" title="가상계좌발급증명서" onclick="uf_VrtlIssueCerti(); return false;"><span class="bt_sp1">가상계좌발급증명서</span></a>
            </div>
            <!-- //action bt end// --> 
            </form>
			<!-- 안내 가이드 start -->
			<div class="guide_box1" id="guide">
				<div class="guide_boxt1">
					<p class="txt_title fl">요청내역조회 안내</p> 
					<p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
				</div>
				<div class="guide_boxc1">
					<ul>
						<li>본 요청내역조회에서는 RCMS로 복원하는 경우(연구비이체취소, 카드결제복원, 부가세복원)의 모든 내역을 확인할 수 있습니다.</li>
						<li>RCMS 가상계좌는 요청내역 <span class="txt_or">한 건당 처리가 가능하오니 추가 복원건이 있는 경우 기존 요청</span>한 내역의 입금 업무를 완료하시고 요청하시기 바랍니다.</li>
						<li><strong>가상계좌의 입금대기는 <span class="txt_or">7일간</span>입니다.</strong></li>
					</ul>
					<p class="tip">기한이 초과된 경우에는 '요청취소' 버튼을 이용하여 요청건을 취소하시고 다시 요청하시면 됩니다.</p>
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
	//파라메터 전역변수
	var paramGb;
	/******************************************************************
	 * uf_search        요청내역조회
	 * @param
	 * @return
	******************************************************************/
	function uf_search(){
	    var frm = document.frm;
	
	    if(!bAutoSbjtSch()) return false;         //과제조회여부확인
	    if( isSubmit() ) return;         // 이중처리

 
	    /* *************************  2014 그리드 교체 작업 rMateGrid  ************************* */ 	
	    var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
    	rMateGridDataInit();
    	uf_proce_display_on();  //로딩바
    	setTimeout(function(){search(seqNo);}, 1000);   // 1초후 실행 1000 = 1초s   	
	    /* *************************  2014 그리드 교체 작업 rMateGrid   ************************* */
	    
	    removeTempAttribute(frm);   //get2post 삭제    	
	    
	}
	
	
	//파라메터 셋팅
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
		paramGb = param;	
        
        if("Y" == '<%=autosrch%>') {
            uf_search();
        }
        
        //=============================
        	
	}	
	

	/******************************************************************
	 * uf_dtlsInq       요청내역상세조회 팝업호출
	 * @param
	 * @return
	******************************************************************/
	function uf_dtlsInq(){

	    var frm = document.frm;	  
	    var frm_key = document.rtr_str_form;
	    var insertStr = "";
	    var trg_fileNM  = ""; 
	    
        var selectorColumn = gridRoot.getObjectById("selector");
        var rowIndex = selectorColumn.getSelectedIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);	    
	    
	    if(!bAutoSbjtSch()) return;                               // 과제조회여부	    
	    if(!chkGridSelectedCount_rMate(gridRoot, "")) return false;      // 그리드선택내역확인

	    var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
	    
		insertStr += "&RegDt="     +dataRow.REG_DT.replace(/-/gi,"");
		insertStr += "&RegDrtm="   +dataRow.REG_DRTM.replace(/:/gi,"");
		insertStr += "&IssuAcctNo="+dataRow.ISSU_ACCT_NO.replace(/-/gi,"");
		insertStr += "&IssuBnk="   +dataRow.ISSU_BNK_CD;
		insertStr += "&Dv="        +dataRow.PAY_USAG_DV;
		insertStr += "&AgrmtSeqNo="+seqNo;    //실습환경 추가

		if( isSubmit() ) return;    // 이중처리

		get2post(document.frm,insertStr );		
		
		uf_frmNewWinNs(document.frm, '/t02/t21/T21_01_10.jsp', 'DTLSVIEW', '770', '540', 'yes');
		
	    removeTempAttribute(document.frm);  //get2post 삭제       
	}
	/******************************************************************
	 * uf_VrtlIssueCerti        가상계좌발급증명서
	 * @param       
	 * @return
	******************************************************************/
	function uf_VrtlIssueCerti(){
		
	    var frm = document.frm;
	    var insertStr = "";
	    var trg_fileNM  = "";
	    
	    if(!chkGridSelectedCount_rMate(gridRoot, "")) return false;      // 그리드선택내역확인
	    
        //그리드 선택 체크
        selectorColumn = gridRoot.getObjectById("selector");

        //선택된 row의 값 체크
        var rowIndex = selectorColumn.getSelectedIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        
        if(("5" == dataRow.PAY_PRGR_ST || "6" == dataRow.PAY_PRGR_ST)){
            alert("["+dataRow.PAY_PRGR_ST_NM+"] 상태는 증명서발급이 불가능합니다.");
            return false;
        }        
	    
        
        insertStr += "&RegDt="      +dataRow.REG_DT.replace(/-/gi,"");   //요청일자
        insertStr += "&RegDrtm="    +dataRow.REG_DRTM.replace(/:/gi,"");    //요청시간
        insertStr += "&IssuAcctNo=" +dataRow.ISSU_ACCT_NO.replace(/-/gi,"");  //발급계좌번호
        insertStr += "&IssuBnkCd="  +dataRow.ISSU_BNK_CD;    //발급은행코드
        insertStr += "&Dv="         +dataRow.PAY_USAG_DV;    //요청구분코드
        insertStr += "&RcvAmt="     +dataRow.RQST_AMT;  //요청금액
        insertStr += "&InqDv="      +dataRow.PAY_USAG_DV_NM;  //요청구분
        insertStr += "&AvblDate="   +dataRow.VALD_END_DT; //입금마감일
        insertStr += "&AgrmtSeqNo=" +document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        insertStr += "&AgrmtInstId="+document.rtr_str_form.S_AGRMT_INST_ID.value;
        get2post(document.frm,insertStr );
        
        
		uf_frmNewWinNs(document.frm, "/pop/T01_01_00.jsp", 'DTLSVIEW', '780', '790');
	    removeTempAttribute(document.frm);  //get2post 삭제   
	}
	
	/******************************************************************
	 * uf_cnclPsv       보충환급취소요청
	 * @param       납부진행상태(0:납부요청,1:승인대기,3:입금대기)
	 * @return
	******************************************************************/
	function uf_cnclPsv(){
		
	    var frm = document.frm;
	    var confirmStr = "취소처리 하시겠습니까?";
	    var insertStr = "";

	    if(!bAutoSbjtSch()) return;                               // 과제조회여부
	    if(!chkGridSelectedCount_rMate(gridRoot, "")) return false;      // 그리드선택내역확인
	    
	    
        //그리드 선택 체크
        selectorColumn = gridRoot.getObjectById("selector");

        //선택된 row의 값 체크
        var rowIndex = selectorColumn.getSelectedIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        
    	if(("A" == dataRow.PAY_USAG_DV ||"H" == dataRow.PAY_USAG_DV ||"N" == dataRow.PAY_USAG_DV ||"J" == dataRow.PAY_USAG_DV ||"F" == dataRow.PAY_USAG_DV ||"Y" == dataRow.PAY_USAG_DV ||"G" == dataRow.PAY_USAG_DV ||"X" == dataRow.PAY_USAG_DV)&& "3" == dataRow.PAY_PRGR_ST)
    	{ 
    		alert("["+dataRow.PAY_USAG_DV_NM+"]는(은) 요청취소가 불가능합니다.");
    		return;
    	}   	
    	
        if(!("0" == dataRow.PAY_PRGR_ST || "1" == dataRow.PAY_PRGR_ST || "3" == dataRow.PAY_PRGR_ST )){
        	alert("["+dataRow.PAY_PRGR_ST_NM+"] 상태는 요청취소가 불가능합니다.");
            return false;
        }        
	    

	    if(confirm(confirmStr)){
	        var msg = "취소처리가 완료되었습니다.";
            if("B" == dataRow.PAY_USAG_DV || "G" == dataRow.PAY_USAG_DV ){
                msg = "보충취소 되었습니다.";
            }
            
            
            uf_proce_display_on();  //로딩바
            setTimeout(
            		function(){
                        try{
                            reset_submit();
                            alert(msg);
                        }finally{
                            uf_search();
                        }
           			},
           			1000);   // 1초후 실행 1000 = 1초s    
	                
	    }else{	    	
	        return false;
	    }
	    
	}
</script>


<script type="text/javascript">
$(document).ready(function() {
	$("a#example1").fancybox();
	$("a#example2").fancybox();

	$('#btn-guide').click(function(){
	    if( $('#guide').css('height') == '17px' ){
	        $('#guide').css({overflow:'hidden'}).animate({height:220},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
	    }else{
	        $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
	    }
	    return false;
    });
	
	/* 2014 그리드 교체 작업 rMateGrid 초기화 */    
    rMateGridInit();
	
});


/* **********************  2014 그리드 교체 작업 rMateGrid setting START ***********************  */

 var layoutStr = "\
 <?xml version=\"1.0\" encoding=\"utf-8\"?>\
 <rMateGrid>\
 <NumberFormatter id=\"numfmt\" />\
 <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
 <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
 <DataGrid id=\"dg1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
     <columns>\
         <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
         <DataGridSelectorColumn id=\"selector\" 	dataField=\"selector\" 			headerText=\"선택\" 			width=\"40\" visible=\"true\" textAlign=\"center\" allowMultipleSelection=\"false\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"REG_DT\"				dataField=\"REG_DT\"   			headerText=\"요청일자\" 	   	width=\"80\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
         <DataGridColumn id=\"REG_DRTM\"			dataField=\"REG_DRTM\" 			headerText=\"요청시간\"    	width=\"61\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"PAY_USAG_DV\"		    dataField=\"PAY_USAG_DV\"   	headerText=\"요청구분코드\" 	width=\"60\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"PAY_USAG_DV_NM\"		dataField=\"PAY_USAG_DV_NM\"   	headerText=\"요청구분\"    	width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"PAY_PRGR_ST_NM\"      dataField=\"PAY_PRGR_ST_NM\"   	headerText=\"진행상태\"    	width=\"90\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"VRTL_ACCT_TRSC_DT\"   dataField=\"VRTL_ACCT_TRSC_DT\" headerText=\"입금일시\"    	width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"RQST_NCNT\"			dataField=\"RQST_NCNT\"   		headerText=\"요청건수\"    	width=\"61\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"RQST_AMT\"			dataField=\"RQST_AMT\"   		headerText=\"요청금액\"    	width=\"80\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\"/>\
         <DataGridColumn id=\"ISSU_BNK_CD\"			dataField=\"ISSU_BNK_CD\" 		headerText=\"발급은행\"    	width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"ISSU_ACCT_NO\"		dataField=\"ISSU_ACCT_NO\"  	headerText=\"발급계좌번호\"	width=\"130\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"VALD_END_DT\"			dataField=\"VALD_END_DT\"  		headerText=\"입금마감일\"   	width=\"80\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"LIM_UPD_DTM\"  	   	dataField=\"LIM_UPD_DTM\"  		headerText=\"한도변경일시\" 	width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"PAY_PRGR_ST\"    		dataField=\"PAY_PRGR_ST\"  		headerText=\"상태코드\" 		width=\"120\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"APC_RSN\"      		dataField=\"APC_RSN\"  			headerText=\"취소요청사유\" 	width=\"120\" visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"CAN_RSN\"      		dataField=\"CAN_RSN\"  			headerText=\"승인거부사유\" 	width=\"120\" visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
     </columns>\
     <footers>\
	     <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RQST_NCNT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RQST_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
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
         
         //셀클릭시 라디오 체크되게         
         selectorColumn = gridRoot.getObjectById("selector");
         selectorColumn.setSelectedIndices([event.getRowIndex()]);
         
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
         
         if (dataField == "REG_DT") {        	          
             uf_dtlsInq();             
         };         
         
     };
     
    
     //더블클릭 상세보기 이벤트 추가
     var itemDoubleClickHandler = function(event) {
         
         var rowIndex = event.getRowIndex();
         var columnIndex = event.getColumnIndex();
         var dataRow = gridRoot.getItemAt(rowIndex);
         var column = dataGrid.getColumns()[columnIndex];
         
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
    $("#InqPrsTotlNcnt").html(getGridRowCount_rMate());
}



/* **********************  2014 그리드 교체 작업 상세보기 ***********************  */
function uf_Click(rowIndex, columnIndex, dataRow, dataField) {
    uf_frmNewWinNs(document.frm, '/t02/t21/T21_01_10.jsp', 'TAXVIEW1', '800', '1000', 'yes');
}
/* **********************  2014 그리드 교체 작업 상세보기 ***********************  */

var cnt = 0;
function SetData(seqNo){
    try{
    	var gridValue = [];
        cnt = 0;

        //1. 신규과제
        if("G00000000000001" == seqNo){
        	gridValue[cnt++] = {"REG_DT":"2014-01-02","REG_DRTM":"12:12:37","PAY_USAG_DV":"A","PAY_USAG_DV_NM":"부담금현금입금","PAY_PRGR_ST_NM":"한도변경완료",    "VRTL_ACCT_TRSC_DT":"2014-01-20 15:47:02","RQST_NCNT":"1","RQST_AMT":"30000","ISSU_BNK_CD":"A 은행","ISSU_ACCT_NO":"11-22-33333330","VALD_END_DT":"2014-01-31","LIM_UPD_DTM":"2014-01-20 16:02:05","PAY_PRGR_ST":"8","APC_RSN":"","CAN_RSN":""};
            
        //2. 진행과제
        }else if("G00000000000002" == seqNo){
            gridValue[cnt++] = {"REG_DT":"2014-03-27","REG_DRTM":"17:51:39","PAY_USAG_DV":"D","PAY_USAG_DV_NM":"부가세복원","PAY_PRGR_ST_NM":"입금대기",    "VRTL_ACCT_TRSC_DT":"","RQST_NCNT":"3","RQST_AMT":"129","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2014-04-03","LIM_UPD_DTM":"","PAY_PRGR_ST":"3","APC_RSN":"부가세복원","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2014-03-11","REG_DRTM":"09:25:23","PAY_USAG_DV":"C","PAY_USAG_DV_NM":"연구비이체취소","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2014-03-14 09:25:23","RQST_NCNT":"1","RQST_AMT":"110","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2014-03-18","LIM_UPD_DTM":"2014-03-14 09:41:56","PAY_PRGR_ST":"8","APC_RSN":"이체취소복원","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2014-03-11","REG_DRTM":"09:23:41","PAY_USAG_DV":"C","PAY_USAG_DV_NM":"연구비이체취소","PAY_PRGR_ST_NM":"사용자취소",  "VRTL_ACCT_TRSC_DT":"","RQST_NCNT":"1","RQST_AMT":"110","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2014-03-18","LIM_UPD_DTM":"","PAY_PRGR_ST":"6","APC_RSN":"이체취소복원","CAN_RSN":"사용자취소"};
            gridValue[cnt++] = {"REG_DT":"2014-02-28","REG_DRTM":"16:55:39","PAY_USAG_DV":"E","PAY_USAG_DV_NM":"카드결제복원","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2014-03-05 13:34:21","RQST_NCNT":"1","RQST_AMT":"220","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2014-03-07","LIM_UPD_DTM":"2014-03-05 13:57:08","PAY_PRGR_ST":"8","APC_RSN":"카드취소","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2014-01-02","REG_DRTM":"00:12:37","PAY_USAG_DV":"A","PAY_USAG_DV_NM":"부담금현금입금","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2014-01-20 15:47:02","RQST_NCNT":"1","RQST_AMT":"30000","ISSU_BNK_CD":"A 은행","ISSU_ACCT_NO":"111-22-333333330 ","VALD_END_DT":"2014-01-31","LIM_UPD_DTM":"2014-01-20 16:02:05","PAY_PRGR_ST":"8","APC_RSN":"","CAN_RSN":""};

        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){

            gridValue[cnt++] = {"REG_DT":"2014-03-27","REG_DRTM":"17:51:39","PAY_USAG_DV":"D","PAY_USAG_DV_NM":"부가세복원","PAY_PRGR_ST_NM":"입금대기","VRTL_ACCT_TRSC_DT":"","RQST_NCNT":"3","RQST_AMT":"129","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2014-04-03","LIM_UPD_DTM":"2013-11-07 13:47:32","PAY_PRGR_ST":"3","APC_RSN":"부가세복원","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2013-11-05","REG_DRTM":"14:45:01","PAY_USAG_DV":"C","PAY_USAG_DV_NM":"연구비이체취소","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2013-11-07 13:30:08","RQST_NCNT":"1","RQST_AMT":"15000","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2013-11-07","LIM_UPD_DTM":"","PAY_PRGR_ST":"8","APC_RSN":"이체취소복원","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2013-07-24","REG_DRTM":"11:43:11","PAY_USAG_DV":"C","PAY_USAG_DV_NM":"연구비이체취소","PAY_PRGR_ST_NM":"사용자취소","VRTL_ACCT_TRSC_DT":"","RQST_NCNT":"1","RQST_AMT":"20000","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2014-03-18","LIM_UPD_DTM":"2013-06-12 16:41:48","PAY_PRGR_ST":"6","APC_RSN":"이체취소복원","CAN_RSN":"사용자취소"};
            gridValue[cnt++] = {"REG_DT":"2013-06-11","REG_DRTM":"09:25:23","PAY_USAG_DV":"C","PAY_USAG_DV_NM":"연구비이체취소","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2013-06-12 16:27:21","RQST_NCNT":"1","RQST_AMT":"2500","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2013-06-18","LIM_UPD_DTM":"2013-04-29 11:49:56","PAY_PRGR_ST":"8","APC_RSN":"이체취소복원","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2013-04-26","REG_DRTM":"17:51:39","PAY_USAG_DV":"E","PAY_USAG_DV_NM":"카드결제복원","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2013-04-29 11:34:21","RQST_NCNT":"1","RQST_AMT":"1100","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2013-04-29","LIM_UPD_DTM":"2013-01-20 16:02:05","PAY_PRGR_ST":"8","APC_RSN":"카드취소","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2013-01-17","REG_DRTM":"10:19:27","PAY_USAG_DV":"A","PAY_USAG_DV_NM":"부담금현금입금","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2013-01-20 15:47:02","RQST_NCNT":"1","RQST_AMT":"30000","ISSU_BNK_CD":"A 은행","ISSU_ACCT_NO":"111-22-333333330 ","VALD_END_DT":"2013-01-31","LIM_UPD_DTM":"","PAY_PRGR_ST":"8","APC_RSN":"","CAN_RSN":""};

        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){
            gridValue[cnt++] = {"REG_DT":"2014-02-11","REG_DRTM":"16:51:17","PAY_USAG_DV":"D","PAY_USAG_DV_NM":"부가세복원","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2014-02-11 17:18:54","RQST_NCNT":"9","RQST_AMT":"4205","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2014-02-18","LIM_UPD_DTM":"","PAY_PRGR_ST":"8","APC_RSN":"부가세복원","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2013-11-05","REG_DRTM":"14:45:01","PAY_USAG_DV":"C","PAY_USAG_DV_NM":"연구비이체취소","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2013-11-07 13:30:08","RQST_NCNT":"1","RQST_AMT":"15000","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2013-11-12","LIM_UPD_DTM":"2013-11-07 13:47:32","PAY_PRGR_ST":"8","APC_RSN":"이체취소복원","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2013-09-23","REG_DRTM":"10:51:35","PAY_USAG_DV":"D","PAY_USAG_DV_NM":"부가세복원","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2013-09-23 13:07:29","RQST_NCNT":"3","RQST_AMT":"129","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2013-09-30","LIM_UPD_DTM":"2014-09-23 13:31:45","PAY_PRGR_ST":"8","APC_RSN":"부가세복원","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2013-07-24","REG_DRTM":"11:43:11","PAY_USAG_DV":"C","PAY_USAG_DV_NM":"연구비이체취소","PAY_PRGR_ST_NM":"사용자취소","VRTL_ACCT_TRSC_DT":"","RQST_NCNT":"1","RQST_AMT":"20000","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"","LIM_UPD_DTM":"","PAY_PRGR_ST":"6","APC_RSN":"이체취소복원","CAN_RSN":"사용자취소"};
            gridValue[cnt++] = {"REG_DT":"2013-06-11","REG_DRTM":"09:25:23","PAY_USAG_DV":"C","PAY_USAG_DV_NM":"연구비이체취소","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2013-06-12 16:27:21","RQST_NCNT":"1","RQST_AMT":"2500","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2013-06-18","LIM_UPD_DTM":"2013-06-12 16:41:48","PAY_PRGR_ST":"8","APC_RSN":"이체취소복원","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2013-04-26","REG_DRTM":"17:51:39","PAY_USAG_DV":"E","PAY_USAG_DV_NM":"카드결제복원","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2013-04-29 11:34:21","RQST_NCNT":"1","RQST_AMT":"1100","ISSU_BNK_CD":"B 은행","ISSU_ACCT_NO":"100-200-300000000","VALD_END_DT":"2013-05-03","LIM_UPD_DTM":"2013-04-29 11:49:56","PAY_PRGR_ST":"8","APC_RSN":"카드취소","CAN_RSN":""};
            gridValue[cnt++] = {"REG_DT":"2013-01-17","REG_DRTM":"10:19:27","PAY_USAG_DV":"A","PAY_USAG_DV_NM":"부담금현금입금","PAY_PRGR_ST_NM":"한도변경완료","VRTL_ACCT_TRSC_DT":"2013-01-20 15:47:02","RQST_NCNT":"1","RQST_AMT":"30000","ISSU_BNK_CD":"A 은행","ISSU_ACCT_NO":"111-22-333333330","VALD_END_DT":"2013-01-31","LIM_UPD_DTM":"2013-01-20 16:02:05","PAY_PRGR_ST":"8","APC_RSN":"","CAN_RSN":""};

        }
        
    }finally{        
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
    }
}

function search(seqNo){
	if(!seqNo) return false;
	
	try{
		document.body.style.cursor =	"wait";	    
		SetData(seqNo); //Insert	Grid
		document.body.style.cursor =	"auto";
		
	}finally{
		reset_submit();
		searchAlert();		
	}
}

function searchAlert(){
    if(cnt<1){    	
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }	 
}

/* **********************  2014 그리드 교체 작업 rMateGrid setting END ***********************  */

</script>
</body>
</html> 