<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T22_01_00.jsp
 *   Description        : 연구비이체취소 요청
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

<title>연구비이체취소 요청 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
                    
                        <div class="navbox"><a href="#" onclick="fn_url('/t02/t21/T21_01_00.jsp'); return false;" class="menu_txt">요청내역조회</a></div>

                        <ul>

                            <li><a href="#" onclick="fn_url('/t02/t21/T21_01_00.jsp'); return false;" class="menu_3dep">요청내역조회</a></li>
                
                        </ul>
                        <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                    </div>


                    <div class="sub_bg">
                    
                        <div class="navbox"><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_txt_on">연구비이체취소 요청</a></div>

                        <ul>

                            <li><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_3dep_on">연구비이체취소 요청</a></li>
                
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
            
                <p class="title"><img src="/images/pefo/u22_01_00_t.gif" alt="연구비이체취소 요청"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>연구비복원</li>
                       <li><img src="/images/common/arr.gif" alt=" " />연구비이체취소 요청</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">연구비이체취소 요청</span></li>
						
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
            
                             
            <div class="cb b10"></div>
			<form name="frm" method="post">
			<input type="hidden" name="ISSU_BNK_CD"        value=""  />   <!-- 가상계좌발급은행코드 -->
			<input type="hidden" name="EXIST_VACC"         value=""  />   <!-- 가상계좌발급여부 -->
			<input type="hidden" name="VrtlAcctNo"         value=""  />   <!-- 가상계좌번호 -->
			<input type="hidden" name="PayPlanDtlsRegNcnt" value="0" />   <!-- 연구비환급요청건수 -->
			<input type="hidden" name="PlanAmt"            value="0" />   <!-- 연구비환급요청금액 -->
			<input type="hidden" name="PrsPgno"            value="0" />   <!-- 현재페이지번호-->
			<input type="hidden" name="TrSupYn"            value="N" />   <!-- 거래계속여부-->
			<!-- 추가 -->
			<input type="hidden" name="MNG_ID"             value="" />    <!-- 관리기관 ID -->
			<input type="hidden" name="PMS_ID"             value="" />    <!-- 전담기관 ID -->
			<input type="hidden" name="BZ_CLAS_CD"         value="" />    <!-- 사업분류ID -->
			<input type="hidden" name="SBJT_ID"            value="" />    <!-- 과제 ID -->
			<input type="hidden" name="PRS_SBJT_STG"       value="" />    <!-- 과제단계 -->
			<input type="hidden" name="ANNL"               value="" />    <!-- 연차 -->
			<input type="hidden" name="AGRMT_SEQ_NO"       value="" />    <!-- 협약번호 -->
			<input type="hidden" name="AGRMT_INST_ID"      value="" />    <!-- 협약기관 ID -->
			<input type="hidden" name="SacPrgrSt"          value="" />    <!-- 정산진행상태-->
			<!-- 추가 -->
			<input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" />
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />
			<!-- ------------------------       가상계좌발급정보 조회내역START      ------------------------ -->
			<h3>가상계좌발급정보</h3>
			<div class="t10">      
			<table width="704" border="0" cellspacing="0" cellpadding="0" summary="가상계좌발급정보" class="tbl_type03">
			      <caption>가상계좌발급정보</caption>      
			      <colgroup>          
				      <col width="18%" />          
				      <col width="14%" />          
				      <col width="13%" />          
				      <col width="10%" />          
				      <col width="17%" />          
				      <col width="15%" />          
				      <col width="13%" />      
			      </colgroup>      
			      <thead>      
			      <tr>          
				      <th scope="col">가상계좌번호</th>          
				      <th scope="col">발급은행</th>          
				      <th scope="col">발급일자</th>          
				      <th scope="col">상태</th>          
				      <th scope="col">현재사용용도</th>          
				      <th scope="col">입금예정금액</th>          
				      <th scope="col" class="">입금마감일자</th>      
			      </tr>      
			      </thead>      
			      <tbody>      
			      <tr>          
				      <td class="ac" id="idVrtlAcctNo"></td>          
				      <td class="ac"><input type="hidden" name="ISSU_BNK_CD" value="" /><span id="idVrtlAcctIssuBnkNm"></span></td>          
				      <td class="ac"><input type="hidden" name="ISSU_DT" value="" /><span id="idVrtlAcctIssuDt"></span></td>          
				      <td class="ac"><input type="hidden" name="ISSU_ST" value="" /><span id="idVrtlAcctIssuSt"></span></td>          
				      <td class="ac" id="idPayUsagDv"></td>          
				      <td class="ar" id="idPlanAmt"></td>          
				      <td class="ac" id="idValdEndDt"></td>      
			      </tr>
			      </tbody>
			</table>
			</div>
			<!-- ------------------------       가상계좌발급정보 조회내역END        ------------------------ -->
            <div class="cb b10"></div>
            <h3>사용내역조회</h3>      
            <!-- 검색단 start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>사용내역조회 검색</legend>
                        <table width="680" summary="사용내역조회 검색" class="tbl_search">
                        <caption>사용내역조회</caption>
						<colgroup>
							<col width="12%" />
							<col width="88%" />
						</colgroup>
						<tbody>
						<tr>
							<th scope="col">증빙구분</th>
							<td>
                                <select id="BzExpExctnEvdcDv_sel" name="BzExpExctnEvdcDv_sel">
                                    <option value="">전체</option>
                                    <option value="T">전자세금계산서</option>
                                    <option value="E">기타증빙</option>
                                </select>
							</td>
						</tr>
						<tr>
							<th scope="col">등록일자</th>
                            <td colspan="3">
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
            <div class="search_bt1 ar">
                <a href="#" class="bt_search" title="조회" onclick="uf_ExecListSearch('S'); return false;"></a>
            </div>
            <!-- //조회 상세조회 버튼 end// -->
            
            <div class="cb t10"></div>
            
            <!-- *************************  2014 그리드 교체 작업 rMateGrid ************************* -->
            <div class="total_box">
                <p class="fl t03">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> 건/<span id="InqPrsTotlCnt">0</span> 건]</p>
                <p class="fl l05 b05"><a href="#" onclick="uf_checkAll_rMate(); return false;"><img src="/images/bt/bt_total.gif" alt="전체선택" valign="top" /></a></p>         
            </div>            
            <!-- //총건수/인쇄 저장 버튼 end// -->
            <!-- 그리드 start -->
            <div>
                <script type="text/javascript">                
                	rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "387", "#FFFFFF", "transparent");
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
            
            
            <!-- 이체취소 start -->
            <div class="t10">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="이체취소" class="tbl_type03">
                <caption>이체취소</caption>
				<colgroup>
					<col width="25%" />
					<col width="25%" />
					<col width="25%" />
					<col width="25%" />
				</colgroup>
				<thead>
				<tr>
					<th scope="col">이체취소 요청건수</th>
					<th scope="col">이체취소 요청금액</th>
					<th scope="col">이체취소 공급금액</th>
					<th scope="col">이체취소 부가가치세액</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td class="ac"><span id="reqcnt">0</span></td>
					<td class="ar"><span id="reqamt">0</span></td>
					<td class="ar"><span id="reqsplamt">0</span></td>
					<td class="ar"><span id="reqvatamt">0</span></td>
				</tr>
				</tbody>
				</table>
            </div>
            <!-- //이체취소 end// -->  
            <!-- action bt start -->
            <div class="action_bt ar">
                <a href="#" class="bt_action9" title="연구비부분취소요청" onclick="uf_psvreqpart(); return false;"><span class="bt_sp1">연구비부분취소요청</span></a>
                <a href="#" class="bt_action9" title="연구비이체취소요청" onclick="uf_psvreq(); return false;"><span class="bt_sp">연구비이체취소요청</span></a>
            </div>
            <!-- //action bt end// --> 
            </form>
			<!-- 안내 가이드 start -->
			<div class="guide_box1" id="guide">
				<div class="guide_boxt1">
					<p class="txt_title fl">연구비이체취소요청 안내</p> 
					<p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
				</div>
				<div class="guide_boxc1">
					<ul>
						<li>연구비이체취소요청은 실시간계좌이체방식의 이체건(전자세금계산서, 기타증빙)에 대해서 총액 및 부분 금액을 취소하여 연구비로 복원할 때 사용합니다.</li>
						<li>이체완료된 사용건중 집행건 총액을 취소하실때에는 '연구비이체취소요청'을 클릭하세요.</li>
						<li>이체완료된 사용건중 부분금액을 취소하실때에는 '연구비부분취소요청'을 클릭하세요.</li>
					</ul>
					<p class="tip">부분취소는 금액을 조정하는 부분과 추가 증빙 업로드가 필수입니다.</p>
					<ul>
						<li>연구비이체취소요청 금액이 천만원 이상일 경우 간사의 승인이 필요합니다.</li>
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
	//파라메터 전역변수
	var paramGb;

	/******************************************************************
	 * uf_ExecListSearch    사용내역목록조회
	 * @param
	 * @return
	******************************************************************/
	function uf_ExecListSearch(SchGb){
	    var frm   = document.frm;
	    var sdate = frm.InqStrDt.value;
	    var edate = frm.InqEndDt.value;
	
	    // 가상계좌 초기화
	    frm.EXIST_VACC.value    = "N";
	    frm.VrtlAcctNo.value    = "";
	
	 	// 과제조회 유무 확인
	    if(!bAutoSbjtSch()) return;
	 
	    if( isSubmit() ) return;         // 이중처리
	    
	    var agrmtSeqNoVal = frm.AGRMT_SEQ_NO.value;
	    
	    if(sdate>edate){
	        alert("조회시작날짜가 종료날짜보다 클 수 없습니다..");
	        return;
	    }

		/*** 2014 그리드교체작업 그리드이벤트 체크값 초기화***/
		uf_init();
		selectorColumn = gridRoot.getObjectById("selector");
	    selectorColumn.setAllItemSelected(false);
		/*** 2014 그리드교체작업 그리드이벤트 체크값 초기화***/
		
	    /* *************************  2014 그리드 교체 작업 rMateGrid  ************************* */
	    var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
    	rMateGridDataInit();
    	uf_proce_display_on();  //로딩바
    	setTimeout(function(){search(seqNo);}, 1000);   // 1초후 실행 1000 = 1초s   	
	    /* *************************  2014 그리드 교체 작업 rMateGrid   ************************* */
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
        
		paramGb = param;
		
		rMateGridLayoutInit_rMate();
	}
	
	/******************************************************************
	 * uf_Click         그리드이벤트,체크내역 금액합도출
	 * @param
	 * @return
	******************************************************************/
	function uf_Click(){
 
 		/*** 2014 그리드교체작업 그리드이벤트 체크내역 ***/
		selectorColumn = gridRoot.getObjectById("selector");
		var data = selectorColumn.getSelectedIndices();
	    var ReqCnt = 0;
	    var ReqAmt = 0;
	    var ReqSplAmt = 0;
	    var ReqVatAmt = 0;
	    
	    var checkBox = new Array();;
	    
	    
        // 체크가능내역 : 연구비환원미신청내역, !부가세복원 요청중
        // 부가세복원요청전 및 요청완료건은 연구비환원요청가능함
	    if(data.length > 0 ){
	       for(var i=0; i<data.length; i++){
	    	var isCheck = true;
	    	var dataRow = gridRoot.getItemAt(data[i]);
	        if(dataRow.RTRT_ST != "" && (dataRow.RTRT_ST == "B1000A" || dataRow.RTRT_ST == "B10001")){	        	
	            alert("연구비이체취소 기신청 또는 부가세복원요청중인 내역은 요청 할 수 없습니다.");	            
	            //selectorColumn.setAllItemSelected(false);   //선택해제
	            
	            //uf_Click("");
	            isCheck = false;
	            continue;	            
	        }
	        if(isCheck){
	        	checkBox.push(data[i]);
	        }
	       }
	       
	       if(data.length != checkBox.length ){
		       selectorColumn.setAllItemSelected(false);   //선택해제
		       selectorColumn.setSelectedIndices(checkBox);
	       }
	       data = checkBox;
	       
	    }

	    if(data != "" && data.length > 0 ){
	       for(var i=0; i<data.length; i++){	
	    	   var dataRow = gridRoot.getItemAt(data[i]);
	       
	           ReqAmt += Number(dataRow.USE_SPLY_AMT) - Number(dataRow.RTRT_FIX_SPLY_AMT);
	           ReqAmt += Number(dataRow.USE_VAT_AMT) - Number(dataRow.VAT_PROC_RTRT_AMT);
	           ReqVatAmt += Number(dataRow.USE_VAT_AMT) - Number(dataRow.VAT_PROC_RTRT_AMT);
	           ReqSplAmt += Number(dataRow.USE_SPLY_AMT) - Number(dataRow.RTRT_FIX_SPLY_AMT);
	           
	           ReqCnt++;
	       }  
	    }     
	    frm.PayPlanDtlsRegNcnt.value        = ReqCnt;            // 연구비이체취소요청건수
	    frm.PlanAmt.value                   = ReqAmt.toString(); // 연구비이체취소요청금액
	    
		$("#reqcnt").html(ReqCnt);
		$("#reqamt").html(ReqAmt);
		$("#reqsplamt").html(ReqSplAmt);
		$("#reqvatamt").html(ReqVatAmt); 
		/*** 2014 그리드교체작업 그리드이벤트 체크내역 ***/
	}
	
	/******************************************************************
	 * uf_psvreq                연구비환급요청 pop-up호출
	 * @param
	 * @return
	******************************************************************/
	function uf_psvreq(){

	    var frm     = document.frm;	    
	    var idx     = -1;
	    var chkCnt  = 0;
	    
	    if( isSubmit() ) return;                // 이중처리
	
	    if(!bAutoSbjtSch())     return;         // 과제조회여부
	    if(!chkGridSelectedCount_rMate(gridRoot, "")) return false;      // 그리드선택내역확인	    
	    if(!uf_chkVaccState())  return false;   // 계좌상태체크
	    
	    if(frm.SacPrgrSt.value == "1" || frm.SacPrgrSt.value == "2" || frm.SacPrgrSt.value == "3"){
	        alert("보고서 제출이 된 상태이므로 연구비이체취소을 신청하실 수 없습니다.");
	        return false;
	    }   
	    
	    if(!(frm.PlanAmt.value > 0)){
	        alert("이체취소 요청금액이 \"0\"원 입니다.");
	        return false;
	    }    

	    
        //그리드 선택 체크
        selectorColumn = gridRoot.getObjectById("selector");
        //선택된 row의 값 체크
        var data = selectorColumn.getSelectedIndices();     
        
		for(var i=0; i<data.length; i++){
			var dataRow = gridRoot.getItemAt(data[i]);
		
	    	if(dataRow.RTRT_ST != "" && (dataRow.RTRT_ST == "B1000A" || dataRow.RTRT_ST == "B10001")){   // 진행중인 내용은 신청 불가....
	            alert("기신청한 내역은 다시 신청할 수 없습니다.");
	            return false;
	        }
	    	
	    	if (Number(dataRow.EXCTN_AMT) - Number(dataRow.RTRT_FIX_AMT) <= 0) {    		
	            alert("취소가능금액이 남아있지 않은 건은 신청할 수 없습니다.");
	            return false;
	    	}
	    	
	    	if (data.length > 1) {
	            if (Number(dataRow.EXCTN_AMT) >= 10000000) {
	                alert("선택건 중 1천만원 이상 건이 존재합니다. 이체금액이 1천만원 이상건은 여러건 선택하여 신청하실 수 없습니다.");
	                return false;
	            }
	        }
	    	get2post(frm, dataRow.GRIDKEY);
	        
		}   
		get2post(frm, "AUTO_MAP_KEY=" + $("#SBJT_MAP_KEYS").val());
    
		uf_frmNewWinNs(frm, '/t02/t22/T22_01_20.jsp', 'PSVPOP1', '770', '550');
	    removeTempAttribute(frm);
	
	}
	
	/******************************************************************
	 * uf_psvreqpart                연구비부분환급요청 pop-up호출
	 * @param
	 * @return
	******************************************************************/
	function uf_psvreqpart(){
 		
		if(!bAutoSbjtSch())     return;         // 과제조회여부
		
	    var frm     = document.frm;	    
	    var idx     = -1;
	    	    
	    if( isSubmit() ) return;                // 이중처리	    
	    if(!chkGridOneSelectedCount_rMate(gridRoot, "")) return false;      // 그리드선택내역확인	    
	    if(!uf_chkVaccState())  return false;   // 계좌상태체크
	    
	    
	    if(frm.SacPrgrSt.value == "1" || frm.SacPrgrSt.value == "2" || frm.SacPrgrSt.value == "3"){
	        alert("보고서 제출이 된 상태이므로 연구비부분취소를 신청하실 수 없습니다.");
	        return false;
	    }   
	    
	  //그리드 선택 체크
        selectorColumn = gridRoot.getObjectById("selector");
        //선택된 row의 값 체크
        var data = selectorColumn.getSelectedIndices();     
        
        for(var i=0; i<data.length; i++){
            var dataRow = gridRoot.getItemAt(data[i]);

	        if(dataRow.RTRT_ST != "" && (dataRow.RTRT_ST == "B1000A" || dataRow.RTRT_ST == "B10001")){   // 진행중인 내용은 신청 불가....
	            alert("기신청한 내역은 다시 신청할 수 없습니다.");
	            return false;
	        }
	    	
	        if (Number(dataRow.EXCTN_AMT) - Number(dataRow.RTRT_FIX_AMT) <= 0) {
	            alert("취소가능금액이 남아있지 않은 건은 신청할 수 없습니다.");
	            return false;
	        }
	        get2post(frm, dataRow.GRIDKEY);
        }
        
        
        
        var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        
        get2post(frm, "AgrmtSeqNo=" + seqNo);
       
        uf_frmNewWinNs(frm, '/t02/t22/T22_01_30.jsp', 'PSVPOP1', '770', '760');
	    removeTempAttribute(frm);	    
	}
	
	function uf_Click2(inx) {
		
	    var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        
	    get2post(frm, "AgrmtSeqNo=" + seqNo);
        
 		uf_frmNewWinNs(document.frm, '/t02/t22/T22_01_10.jsp', 'RCMS_MKE_POPUP1', '766', '300');
	    removeTempAttribute(document.frm);  
	    
	}
	
	/******************************************************************
	 * uf_psvreq : 화면상단에서  인클루드된 조회조건 페이지에서 선택한 조회조건을 hidden에 셋팅 -> 공통
	 * @param
	 * @return
	******************************************************************/
	function setRetriveCondition() {
		 
	    var frmRtr  = document.rtr_str_form;        
	    var frm     = document.frm;
	
	    frm.MNG_ID.value        = frmRtr.S_MNG_ID.value;
	    frm.PMS_ID.value        = frmRtr.S_PMS_ID.value;
	    frm.BZ_CLAS_CD.value    = frmRtr.S_BZ_CLAS_CD.value;
	    frm.SBJT_ID.value       = frmRtr.S_SBJT_ID.value;
	    frm.PRS_SBJT_STG.value  = frmRtr.S_PRS_SBJT_STG.value;
	    frm.ANNL.value          = frmRtr.S_ANNL.value;
	    frm.AGRMT_SEQ_NO.value  = frmRtr.S_AGRMT_SEQ_NO.value;
	    frm.AGRMT_INST_ID.value = frmRtr.S_AGRMT_INST_ID.value;
	    
	}
	 
	/******************************************************************
	 * uf_init : 화면 초기화
	 * @param
	 * @return
	******************************************************************/ 
	function uf_init() {
	
		frm.PayPlanDtlsRegNcnt.value        = ""; 
		frm.PlanAmt.value                   = ""; 	 
		 
		document.all['reqcnt'].innerHTML    = "0";
	    document.all['reqamt'].innerHTML    = "0";
	    document.all['reqsplamt'].innerHTML = "0";
	    document.all['reqvatamt'].innerHTML = "0";	
	
	}
	
</script>


<script type="text/javascript">

$(document).ready(function() {
    $("a#example1").fancybox();
	$("a#example2").fancybox();	
	  
    $('#btn-guide').click(function(){
        if( $('#guide').css('height') == '17px' ){
            $('#guide').css({overflow:'hidden'}).animate({height:190},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
        }else{
           $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
        }
	    return false;
   });
    
	/* *************************  2014 그리드 교체 작업 rMateGrid 초기화  ************************* */    
    rMateGridInit();
});


/* **********************  2014 그리드 교체 작업 rMateGrid setting START ***********************  */

var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
<NumberFormatter id=\"numfmt\" />\
<SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
<SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
<DataGrid id=\"dg1\" lockedColumnCount=\"2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
    <columns>\
    <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
    <DataGridSelectorColumn id=\"selector\" 	dataField=\"selector\" 			headerText=\"선택\" 					width=\"50\" visible=\"true\" textAlign=\"center\" allowAllSelection=\"false\" allowMultipleSelection=\"true\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"EXCTN_EXEC_DT\"		dataField=\"EXCTN_EXEC_DT\"   	headerText=\"사용일시\"    			width=\"130\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
    <DataGridColumn id=\"TRSC_PFMC_ST\"			dataField=\"TRSC_PFMC_ST\"   	headerText=\"사용상태\"   	 		width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RTRT_TYP_DV_NM\"		dataField=\"RTRT_TYP_DV_NM\"   	headerText=\"최종복원유형구분\"    	width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"TRSC_EVDC_DV_NM\"		dataField=\"TRSC_EVDC_DV_NM\"  	headerText=\"증빙구분\"    			width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RTRT_ST_NM\"			dataField=\"RTRT_ST_NM\"   		headerText=\"복원상태\"    			width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"VAT_PROC_DV\"       	dataField=\"VAT_PROC_DV\"   	headerText=\"부가세처리구분\"    	width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RCV_ACCT_BNK_CD\"      dataField=\"RCV_ACCT_BNK_CD\"   headerText=\"입금은행\"    			width=\"80\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RCV_ACCT_NO\"			dataField=\"RCV_ACCT_NO\"   	headerText=\"입금계좌번호\"    		width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RCV_ACCT_OWAC_NM\"		dataField=\"RCV_ACCT_OWAC_NM\"  headerText=\"수취인\"    			width=\"80\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"EXCTN_AMT\"			dataField=\"EXCTN_AMT\"   		headerText=\"이체금액\"    			width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"USE_SPLY_AMT\"			dataField=\"USE_SPLY_AMT\"  	headerText=\"공급금액\" 				width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"USE_VAT_AMT\"			dataField=\"USE_VAT_AMT\"  		headerText=\"부가가치세액\"   		width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"RTRT_TYP_DV\"			dataField=\"RTRT_TYP_DV\"  		headerText=\"복원유형구분\"  	 	width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RTRT_ST\"				dataField=\"RTRT_ST\"  			headerText=\"복원상태구분\"  	 	width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"TRSC_EVDC_DV\"			dataField=\"TRSC_EVDC_DV\"  	headerText=\"증빙구분코드\"  	 	width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RTRT_FIX_AMT\"      	dataField=\"RTRT_FIX_AMT\"  	headerText=\"복원금액\" 				width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"    dataField=\"VAT_PROC_RTRT_AMT\" headerText=\"복원부가세금액\" 		width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"    dataField=\"RTRT_FIX_SPLY_AMT\" headerText=\"복원공급금액\" 			width=\"110\" visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"BUTR_ID\"      		dataField=\"BUTR_ID\"  			headerText=\"사업비사용거래실적ID\" 	width=\"110\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"GRIDKEY\"      		dataField=\"GRIDKEY\"  			headerText=\"GRIDKEY\" 				width=\"110\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    </columns>\
    <footers>\
    	<DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"총\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{EXCTN_EXEC_DT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"건\" textAlign=\"right\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn />\
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
        
		//checkbox 선택시 합산
        if (dataField == "selector") {            
/*             if(dataRow.RTRT_ST == "B10001") {
                selectorColumn = gridRoot.getObjectById("selector");
                selectorColumn.setAllItemSelected(false);   //선택해제                
                alert("연구비이체취소 기신청 또는 부가세복원요청중인 내역은 요청 할 수 없습니다.");
                uf_Click("");
                return false;
            }   */       
        	uf_Click("");
        };        
        
        //상세보기 팝업
        if (dataField == "EXCTN_EXEC_DT") {
        	uf_Click2("");        	
        };         
        
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
    $("#InqPrsTotlNcnt").html(cnt);
    $("#InqPrsTotlCnt").html(cnt);
   
}

//전체선택/해제시
function uf_checkAll_rMate() {		
	
	if(isGridData(gridRoot)){  // 그리드 값이 존재하는경우
		selectorColumn = gridRoot.getObjectById("selector");
	    selectorColumn.setAllItemSelected(!selectorColumn.getAllItemSelected());
    }
    
    uf_Click();	
}		


/* **********************  2014 그리드 교체 작업 상세보기 ***********************  */

var cnt = 0;
function SetData(seqNo){

   try{

	   var gridValue = [];
       
	   cnt = 0;       

	   
       //1. 신규과제
       if("G00000000000001" == seqNo){
           
           document.frm.SacPrgrSt.value ="";
           
           //가상계좌조회
           document.all["idVrtlAcctNo"].innerHTML="0010200000030";
           document.all["idVrtlAcctIssuBnkNm"].innerHTML="A 은행";
           document.all["idVrtlAcctIssuDt"].innerHTML="2014-02-21";
           document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
           document.all["idPlanAmt"].innerHTML="0";
           document.all["idValdEndDt"].innerHTML="";
           document.all["idPayUsagDv"].innerHTML="미사용";
           document.frm.ISSU_BNK_CD.value="003";
           document.frm.ISSU_DT.value="20140217";
           document.frm.ISSU_ST.value="1";
           document.frm.EXIST_VACC.value="Y";
           document.frm.VrtlAcctNo.value="0010200000030";
              
       //2. 진행과제
       }else if("G00000000000002" == seqNo){

    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-03-07 12:27:13","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"E 은행","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"㈜ 가 업체","EXCTN_AMT":"1100","USE_SPLY_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140307&ExctnExecTm=122713&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=E 은행&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=㈜ 가 업체&ExctnAmt=1100&UseSplyAmt=1100&UseVatAmt=100&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-10 13:07:20","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140210&ExctnExecTm=130720&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000 &RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13 15:46:58","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"B 은행","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"㈜ 나 업체","EXCTN_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140113&ExctnExecTm=154658&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=B 은행&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=㈜ 나 업체&ExctnAmt=100&UseSplyAmt=91&UseVatAmt=9&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13 15:44:36","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140113&ExctnExecTm=154436&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000 &RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};

    	   
           //정산진행상태
           document.frm.SacPrgrSt.value = "";
           //가상계좌조회
           document.all["idVrtlAcctNo"].innerHTML="0010200000030";
           document.all["idVrtlAcctIssuBnkNm"].innerHTML="A 은행";
           document.all["idVrtlAcctIssuDt"].innerHTML="2014-02-21";
           document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
           document.all["idPlanAmt"].innerHTML="0";
           document.all["idValdEndDt"].innerHTML="";
           document.all["idPayUsagDv"].innerHTML="미사용";
           document.frm.ISSU_BNK_CD.value="003";
           document.frm.ISSU_DT.value="20140217";
           document.frm.ISSU_ST.value="1";
           document.frm.EXIST_VACC.value="Y";
           document.frm.VrtlAcctNo.value="0010200000030";
           
	   //3. 정산과제(보고서 미제출)
       }else if("G00000000000003" == seqNo){
           
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-06 10:31:01","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"E 은행","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"㈜ 가 업체","EXCTN_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130306&ExctnExecTm=103101&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=E 은행&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=㈜ 가 업체&ExctnAmt=1100&UseSplyAmt=1000&UseVatAmt=100&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-21 10:44:38","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130321&ExctnExecTm=104438&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10 13:07:20","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130410&ExctnExecTm=130720&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10 13:41:58","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"B 은행","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"㈜ 나 업체","EXCTN_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130410&ExctnExecTm=134158&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=B 은행&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=㈜ 나 업체&ExctnAmt=100&UseSplyAmt=91&UseVatAmt=9&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-05-10 11:01:45","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130510&ExctnExecTm=110145&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-06-04 10:22:30","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130604&ExctnExecTm=102230&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-06-10 12:12:56","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130610&ExctnExecTm=121256&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-08 16:02:09","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"G 은행","RCV_ACCT_NO":"777-77-777777-0","RCV_ACCT_OWAC_NM":"㈜ 바 업체","EXCTN_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130708&ExctnExecTm=160209&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=G 은행&RcvAcctBnkCd=003&RcvAcctNo=777777777770&RcvAcctOwacNm=㈜ 바 업체&ExctnAmt=100&UseSplyAmt=91&UseVatAmt=9&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-10 10:54:37","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130710&ExctnExecTm=105437&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-22 17:26:25","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"C 은행","RCV_ACCT_NO":"300-30-300000","RCV_ACCT_OWAC_NM":"㈜ 다 업체","EXCTN_AMT":"20000","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130722&ExctnExecTm=172625&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=C 은행&RcvAcctBnkCd=003&RcvAcctNo=30030300000&RcvAcctOwacNm=㈜ 다 업체&ExctnAmt=20000&UseSplyAmt=18182&UseVatAmt=1818&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-08-09 09:58:01","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130809&ExctnExecTm=095801&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-03 09:45:27","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130903&ExctnExecTm=094527&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-10 10:15:21","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130910&ExctnExecTm=101521&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-30 17:52:50","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"10000","USE_SPLY_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130930&ExctnExecTm=175250&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=10000&UseSplyAmt=10000&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-10 14:51:08","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131010&ExctnExecTm=145108&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-29 13:12:08","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"F 은행","RCV_ACCT_NO":"999-99-999999-0","RCV_ACCT_OWAC_NM":"㈜ 라 업체","EXCTN_AMT":"15000","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131029&ExctnExecTm=131208&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=F 은행&RcvAcctBnkCd=003&RcvAcctNo=999999999990&RcvAcctOwacNm=㈜ 라 업체&ExctnAmt=15000&UseSplyAmt=13637&UseVatAmt=1363&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-11-08 12:01:28","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131108&ExctnExecTm=120128&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-02 11:50:19","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2150","USE_SPLY_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131202&ExctnExecTm=115019&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2150&UseSplyAmt=2150&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-10 11:10:12","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131210&ExctnExecTm=111012&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-10 10:46:32","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140110&ExctnExecTm=104632&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13 15:46:58","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"H 은행","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"㈜ 마 업체","EXCTN_AMT":"300","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140113&ExctnExecTm=154658&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=H 은행&RcvAcctBnkCd=003&RcvAcctNo=222222222220&RcvAcctOwacNm=㈜ 마 업체&ExctnAmt=300&UseSplyAmt=273&UseVatAmt=27&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-10 15:36:41","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140210&ExctnExecTm=153641&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-28 11:49:19","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140228&ExctnExecTm=114919&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   
           //정산진행상태
           document.frm.SacPrgrSt.value = "0";
           
           //가상계좌조회
           document.all["idVrtlAcctNo"].innerHTML="0010200000030";
           document.all["idVrtlAcctIssuBnkNm"].innerHTML="A 은행";
           document.all["idVrtlAcctIssuDt"].innerHTML="2014-02-21";
           document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
           document.all["idPlanAmt"].innerHTML="0";
           document.all["idValdEndDt"].innerHTML="";
           document.all["idPayUsagDv"].innerHTML="미사용";
           document.frm.ISSU_BNK_CD.value="003";
           document.frm.ISSU_DT.value="20140217";
           document.frm.ISSU_ST.value="1";
           document.frm.EXIST_VACC.value="Y";
           document.frm.VrtlAcctNo.value="0010200000030";
           
	   //4. 정산과제(보고서 제출 완료)
       }else if("G00000000000004" == seqNo){
           
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-21 10:44:38","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130321&ExctnExecTm=104438&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-06 10:31:01","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"E 은행","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"㈜ 가 업체","EXCTN_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130306&ExctnExecTm=103101&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=E 은행&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=㈜ 가 업체&ExctnAmt=1100&UseSplyAmt=1000&UseVatAmt=100&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-21 10:44:38","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130321&ExctnExecTm=104438&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10 13:07:20","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130410&ExctnExecTm=130720&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10 13:41:58","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"B 은행","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"㈜ 나 업체","EXCTN_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130410&ExctnExecTm=134158&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=B 은행&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=㈜ 나 업체&ExctnAmt=100&UseSplyAmt=91&UseVatAmt=9&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-05-10 11:01:45","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130510&ExctnExecTm=110145&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-06-04 10:22:30","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130604&ExctnExecTm=102230&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-06-10 12:12:56","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130610&ExctnExecTm=121256&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-08 16:02:09","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"G 은행","RCV_ACCT_NO":"777-77-777777-0","RCV_ACCT_OWAC_NM":"㈜ 바 업체","EXCTN_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130708&ExctnExecTm=160209&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=G 은행&RcvAcctBnkCd=003&RcvAcctNo=777777777770&RcvAcctOwacNm=㈜ 바 업체&ExctnAmt=100&UseSplyAmt=91&UseVatAmt=9&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-10 10:54:37","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130710&ExctnExecTm=105437&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-22 17:26:25","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"C 은행","RCV_ACCT_NO":"300-30-300000","RCV_ACCT_OWAC_NM":"㈜ 다 업체","EXCTN_AMT":"20000","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130722&ExctnExecTm=172625&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=C 은행&RcvAcctBnkCd=003&RcvAcctNo=30030300000&RcvAcctOwacNm=㈜ 다 업체&ExctnAmt=20000&UseSplyAmt=18182&UseVatAmt=1818&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-08-09 09:58:01","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130809&ExctnExecTm=095801&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-03 09:45:27","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130903&ExctnExecTm=094527&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-10 10:15:21","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130910&ExctnExecTm=101521&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-30 17:52:50","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"10000","USE_SPLY_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130930&ExctnExecTm=175250&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=10000&UseSplyAmt=10000&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-10 14:51:08","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131010&ExctnExecTm=145108&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-29 13:12:08","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"F 은행","RCV_ACCT_NO":"999-99-999999-0","RCV_ACCT_OWAC_NM":"㈜ 라 업체","EXCTN_AMT":"15000","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131029&ExctnExecTm=131208&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=F 은행&RcvAcctBnkCd=003&RcvAcctNo=999999999990&RcvAcctOwacNm=㈜ 라 업체&ExctnAmt=15000&UseSplyAmt=13637&UseVatAmt=1363&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-11-08 12:01:28","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131108&ExctnExecTm=120128&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-02 11:50:19","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2150","USE_SPLY_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131202&ExctnExecTm=115019&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2150&UseSplyAmt=2150&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-10 11:10:12","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131210&ExctnExecTm=111012&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-10 10:46:32","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140110&ExctnExecTm=104632&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13 15:46:58","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"전자세금계산서","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"H 은행","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"㈜ 마 업체","EXCTN_AMT":"300","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140113&ExctnExecTm=154658&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=H 은행&RcvAcctBnkCd=003&RcvAcctNo=222222222220&RcvAcctOwacNm=㈜ 마 업체&ExctnAmt=300&UseSplyAmt=273&UseVatAmt=27&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-10 15:36:41","TRSC_PFMC_ST":"집행(이체) 완료","TRSC_EVDC_DV_NM":"기타증빙","RTRT_ST_NM":"","VAT_PROC_DV":"부가세 미처리","RCV_ACCT_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"㈜ RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140210&ExctnExecTm=153641&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A 은행&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=㈜ RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};

           //정산진행상태
           document.frm.SacPrgrSt.value = "1";
           
           //가상계좌조회
           document.all["idVrtlAcctNo"].innerHTML="0010200000030";
           document.all["idVrtlAcctIssuBnkNm"].innerHTML="A 은행";
           document.all["idVrtlAcctIssuDt"].innerHTML="2013-02-21";
           document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
           document.all["idPlanAmt"].innerHTML="0";
           document.all["idValdEndDt"].innerHTML="";
           document.all["idPayUsagDv"].innerHTML="미사용";
           document.frm.ISSU_BNK_CD.value="003";
           document.frm.ISSU_DT.value="20130217";
           document.frm.ISSU_ST.value="1";
           document.frm.EXIST_VACC.value="Y";
           document.frm.VrtlAcctNo.value="0010200000030";

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