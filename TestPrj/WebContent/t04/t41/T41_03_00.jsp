<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_03_00.jsp
 *   Description        : 과제별 권한 관리
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

<title>과제별 권한 관리 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_03_00.jsp'); return false;" class="menu_3dep_on">과제별 권한 관리</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_05_00.jsp'); return false;" class="menu_3dep">이체비밀번호 등록</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_06_00.jsp'); return false;" class="menu_3dep">연구비카드사 등록</a></li>

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






        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->
            



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u41_03_00_t.gif" alt="과제별 권한 관리"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>이용환경관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />기본설정</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">과제별 권한 관리</span></li>
						
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
            <div class="cb b10"></div>
            <form name="frm" method="post">
            <input type="hidden" name="SBJT_LIST_SCH_AUTO"  id="SBJT_LIST_SCH_AUTO"     value="N" />
            <input type="hidden" name="SBJT_DET_SCH_AUTO"   id="SBJT_DET_SCH_AUTO"      value="Y" />
            <input type="hidden" name="InstManaYn"          id="InstManaYn"             value="" /> <!--  기관책임자여부 -->  
            <input type="hidden" name="inqHmpwRoleDv"       id="inqHmpwRoleDv"          value="" /> <!--  인력역할구분   -->
            <input type="hidden" name="Dv" value="" />
            <h3>권한조회</h3>      
            <!-- 검색단 start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>권한조회검색</legend>
						<table width="680" summary="권한조회" class="tbl_search">
						<caption>권한조회검색</caption>
						<colgroup>
							<col width="18%" />
							<col width="35%" />
							<col width="12%"/>
							<col width="36%"/>
						</colgroup>
						<tbody>
						<tr>
							<th scope="col">RCMS 권한구분</th>
							<td>
                                <select name='sel_RcmsGrpCd'  id='sel_RcmsGrpCd'  class='' style="width:200px" ><option value=''>전체</option><option value='MR010' >과제책임자</option><option value='MR030' >기관대표자</option><option value='MR050' >일반사용자</option><option value='MR042' >일반사용자(구매담당자)</option><option value='MR043' >일반사용자(이체담당자)</option><option value='MR020' >참여연구원</option><option value='MR023' >참여연구원(이체담당자)</option></select>
							</td>
							<th scope="col"><label for="sel_UsrNm">성명</label></th>
							<td><input type="text" name="sel_UsrNm" id="sel_UsrNm" title="성명" class="inputl" /></td>    
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
                <a href="#dummy" onclick="uf_search(); return false;" class="bt_search" title="조회"></a>
            </div>
            <!-- //조회 상세조회 버튼 end// -->
            
            
            
            
            
<!-- *************************  rMateGrid ************************* -->
            <!-- 총건수/인쇄 저장 버튼 start -->
            <div class="total_box b05">
                <div class="srchcount">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건]</div>
                <p class="cb"></p>
            </div>
            <!-- //총건수/인쇄 저장 버튼 end// -->
            <!-- 그리드 Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "369", "#FFFFFF", "transparent");
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
                <p class="ar">       
                    <p id="btn_c1" style="display:none;"><a href="#dummy"  onclick="uf_CUpop('C'); return false;" class="bt_action2" title="등록"><span class="bt_sp">등록</span></a></p> 
                    <p id="btn_u1" style="display:none;"><a href="#dummy"  onclick="uf_CUpop('U'); return false;" class="bt_action2" title="수정"><span class="bt_sp">수정</span></a></p>
                </p>
                <p class="cb"></p>
            </div>
            <!-- //action bt end// -->             
<!-- *************************  rMateGrid ************************* -->            
            
            
            
            
            
            
            
            
            
            
            
            
            
            </form>
            <!-- 안내 가이드 start -->
			<div class="guide_box1" id="guide">
				<div class="guide_boxt1">
					<p class="txt_title fl">과제별권한관리 안내</p> 
					<p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
				</div>
				<div class="guide_boxc1">
					<ul>
						<li>본 '과제별 권한관리'에서는 RCMS 사용에 따른 이체권한 및 기타권한을 관리하실 수 있습니다.</li>
						<li><span class="txt_or">과제책임자, 기관대표자만 권한 등록/수정이 가능</span>합니다.</li>
						<li>각 전담기관 과제관리시스템에 등록된 참여연구원이 연계되어 조회됩니다.</li>
					</ul>
					<p class="tip">이곳에서 참여연구원이 보이지 않으면 각 전담기관 과제관리시스템에서 확인하세요.</p>
					<ul>
						<li>참여연구원이 아닌 수행기관 직원의 정보를 등록하여 RCMS 과제의 권한을 부여할 수 있습니다.(등록 → 직원 조회 → 권한 부여 → 저장)</li>
						<li>이체권한을 받게 되는 참여연구원 및 기관 직원은 개인공인인증서 로그인, 사용비밀번호 설정, 사업자법인범용공인인증서 보유가 필요합니다.</li>
						<li>과제책임자 정보 수정은 승인사항으로 각 전담기관 과제관리시스템에서 신청 가능합니다.</li>
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

	/******************************************************************
	 * uf_search        연구원목록조회
	 * @param
	 * @return
	******************************************************************/
	function uf_search(SchGb){
	    var frm    = document.frm;
	    var frmRtr = document.rtr_str_form;      
	    
	    
	 // 과제조회 유무 확인
	    if(!bAutoSbjtSch()) return;
	    
	    var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
	    
	    if(!seqNo) return;
	    var RcmsGrpCd = $("#sel_RcmsGrpCd option:selected").val();
	
	    rMateGridLayoutInit_rMate();
        $("#InqPrsTotlNcnt2").html("0");
        
	    uf_proce_display_on();  //로딩바
	    setTimeout(
	           function(){
	               search(seqNo, RcmsGrpCd);
	           }
	           , 1000);   // 1초후 실행 1000 = 1초
	           
	           
	}
	
	/******************************************************************
	 * uf_search        기관대표자, 과제책임자, 기관총괄책임자 여부 조회에 따른 버튼 활성화
	 * @param
	 * @return
	******************************************************************/
	function uf_InstManaYn()
	{
	    var frm = document.frm;

	    if(frm.inqHmpwRoleDv.value=="01" || frm.inqHmpwRoleDv.value=="02"){
	        document.getElementById("btn_u1").style.display = "inline";
	        document.getElementById("btn_c1").style.display = "inline";
	    }else if(frm.inqHmpwRoleDv.value=="00" && frm.InstManaYn.value=="Y"){
	        document.getElementById("btn_u1").style.display = "inline";
	        document.getElementById("btn_c1").style.display = "inline";
	    }else{
	        document.getElementById("btn_u1").style.display = "none";
	        document.getElementById("btn_c1").style.display = "none";
	    }
	}
	
	
	var schParam = "";
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
        
		uf_init();
		
	}
	
	function uf_init() {
		
	    var frm    = document.frm;
	    var frmRtr = document.rtr_str_form;      
	    
	
	    
	    rMateGridLayoutInit_rMate();
        $("#InqPrsTotlNcnt2").html("0");
        document.getElementById("btn_u1").style.display = "none";
        document.getElementById("btn_c1").style.display = "none";
	    
	}
	
	
	

    
    /******************************************************************
     * uf_CUpop     권한등록/수정팝업창호출
     * @param       mode = U:수정, C:등록
     * @return
    ******************************************************************/
    function  uf_CUpop(mode){
        var frm = document.frm;
        var idx = -1;
        
        // 과제조회 유무 확인
        if(!bAutoSbjtSch()) return;
        
        
        
        
        if(mode == "U"){
            
            if(!chkGridSelectedCount_rMate(gridRoot, "사용자목록조회")) return false;
            
	        selectorColumn = gridRoot.getObjectById("selector");
	        var rowIndex = selectorColumn.getSelectedIndex();
	        var dataRow = gridRoot.getItemAt(rowIndex);
            if(dataRow.HMPW_ROLE_DV == "01" || dataRow.HMPW_ROLE_DV == "02" || dataRow.HMPW_ROLE_DV == "03"){
                alert("기관대표자, 과제책임자, 실무담당자는 RCMS에서 수정할 수 없습니다.");
                return;
            }
            
            get2post(frm, "HM_HMPW_ROLE_DV="   + dataRow.HM_HMPW_ROLE_DV);
            
            get2post(frm, dataRow.GRIDKEY);
        }
        
        get2post(frm, "schParam=" + schParam);
        
        var argmtSeqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        get2post(frm, "argmtSeqNo=" + argmtSeqNo);
        
        if( isSubmit() ) return;    // 이중처리
        frm.Dv.value = mode;
        uf_frmNewWinNs(frm, "/t04/t41/T41_03_10.jsp", "MEMPOP", "605", "400",'no');
        removeTempAttribute(frm);
    }
    
    
    
    
    $(document).ready(function() {
    	
    	
        // rMateGrid 초기화
        rMateGridInit();
        
        $("a#example1").fancybox();
        $("a#example2").fancybox();
        
        $('#btn-guide').click(function(){
           if( $('#guide').css('height') == '17px' ){
               $('#guide').css({overflow:'hidden'}).animate({height:250},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
           }else{
               $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
           }
           return false;
        });
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
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"USR_NM\"             dataField=\"USR_NM\"          headerText=\"성명\"           width=\"70\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HM_HMPW_ROLE_DV\"    dataField=\"HM_HMPW_ROLE_DV\" headerText=\"과제권한\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HM_RCMS_GRP_CD\"     dataField=\"HM_RCMS_GRP_CD\"  headerText=\"RCMS권한구분\"   width=\"150\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_YN\"             dataField=\"USE_YN\"          headerText=\"사용여부\"       width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USR_ID\"             dataField=\"USR_ID\"          headerText=\"ID\"             width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RES_REG_NO\"         dataField=\"RES_REG_NO\"      headerText=\"생년월일\"       width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"GRIDKEY\"            dataField=\"GRIDKEY\"         headerText=\"GRIDKEY\"        width=\"0\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HMPW_ROLE_DV\"       dataField=\"HMPW_ROLE_DV\"    headerText=\"과제권한코드\"   width=\"0\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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

        
        //클릭 이벤트 추가
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
function SetData(seqNo, RcmsGrpCd){    
	var frm = document.frm;
    try{
    	
    	frm.InstManaYn.value    = "N";
    	frm.inqHmpwRoleDv.value = "02";
    	cnt = 0;
        var gridValue = [];
        
        //1. 신규과제
        if("G00000000000001" == seqNo){
        	gridValue[cnt++] = {"USR_NM":"이총괄","HM_HMPW_ROLE_DV":"과제책임자","HM_RCMS_GRP_CD":"과제책임자","USE_YN":"사용","USR_ID":"RCMSAAA","RES_REG_NO":"12-34-56","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0001&UsrId=RCMSAAA&InstId=10000001&InstNm=㈜RCMS&UsrNm=이총괄&HmpwRoleDv=02&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"02"};
        	gridValue[cnt++] = {"USR_NM":"김전임","HM_HMPW_ROLE_DV":"참여연구원","HM_RCMS_GRP_CD":"참여연구원","USE_YN":"사용","USR_ID":"RCMSBBB","RES_REG_NO":"23-45-67","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0001&UsrId=RCMSBBB&InstId=10000001&InstNm=㈜RCMS&UsrNm=김전임&HmpwRoleDv=04&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"04"};
        	gridValue[cnt++] = {"USR_NM":"전연구","HM_HMPW_ROLE_DV":"참여연구원","HM_RCMS_GRP_CD":"참여연구원","USE_YN":"사용","USR_ID":"RCMSCCC","RES_REG_NO":"34-56-78","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0001&UsrId=RCMSCCC&InstId=10000001&InstNm=㈜RCMS&UsrNm=전연구&HmpwRoleDv=04&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"04"};

            /*//쿠키사용으로 변경
            var _SESS_DATA = dataCtrl.getObjData("T41_03_00");
            var sessGridData = [];
            if(_SESS_DATA != null){
                sessGridData = JSON.parse(_SESS_DATA);
                for(var i=0;i<sessGridData.length;i++){
                    gridValue[cnt++] = sessGridData[i];
                }
            }
             */
            
        
        //2. 진행과제
        }else if("G00000000000002" == seqNo){
        	gridValue[cnt++] = {"USR_NM":"이책임","HM_HMPW_ROLE_DV":"과제책임자","HM_RCMS_GRP_CD":"과제책임자","USE_YN":"사용","USR_ID":"RCMSAAA","RES_REG_NO":"12-34-56","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0002&UsrId=RCMSAAA&InstId=10000001&InstNm=㈜RCMS&UsrNm=이책임&HmpwRoleDv=02&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"02"};
        	gridValue[cnt++] = {"USR_NM":"김전임","HM_HMPW_ROLE_DV":"참여연구원","HM_RCMS_GRP_CD":"참여연구원","USE_YN":"사용","USR_ID":"RCMSBBB","RES_REG_NO":"23-45-67","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0002&UsrId=RCMSBBB&InstId=10000001&InstNm=㈜RCMS&UsrNm=김전임&HmpwRoleDv=04&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"04"};
        	gridValue[cnt++] = {"USR_NM":"전연구","HM_HMPW_ROLE_DV":"참여연구원","HM_RCMS_GRP_CD":"참여연구원","USE_YN":"사용","USR_ID":"RCMSCCC","RES_REG_NO":"34-56-78","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0002&UsrId=RCMSCCC&InstId=10000001&InstNm=㈜RCMS&UsrNm=전연구&HmpwRoleDv=04&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"04"};
        	gridValue[cnt++] = {"USR_NM":"최재무","HM_HMPW_ROLE_DV":"일반사용자","HM_RCMS_GRP_CD":"일반사용자(이체담당자)","USE_YN":"사용","USR_ID":"RCMSDDD","RES_REG_NO":"98-76-54","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0002&UsrId=RCMSDDD&InstId=10000001&InstNm=㈜RCMS&UsrNm=최재무&HmpwRoleDv=00&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"00"};

        
        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){
        	
        	gridValue[cnt++] = {"USR_NM":"이책임","HM_HMPW_ROLE_DV":"과제책임자","HM_RCMS_GRP_CD":"과제책임자","USE_YN":"사용","USR_ID":"RCMSAAA","RES_REG_NO":"12-34-56","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0003&UsrId=RCMSAAA&InstId=10000001&InstNm=㈜RCMS&UsrNm=이책임&HmpwRoleDv=02&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"02"};
        	gridValue[cnt++] = {"USR_NM":"김전임","HM_HMPW_ROLE_DV":"참여연구원","HM_RCMS_GRP_CD":"참여연구원","USE_YN":"사용","USR_ID":"RCMSBBB","RES_REG_NO":"23-45-67","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0003&UsrId=RCMSBBB&InstId=10000001&InstNm=㈜RCMS&UsrNm=김전임&HmpwRoleDv=04&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"04"};
        	gridValue[cnt++] = {"USR_NM":"전연구","HM_HMPW_ROLE_DV":"참여연구원","HM_RCMS_GRP_CD":"참여연구원","USE_YN":"사용","USR_ID":"RCMSCCC","RES_REG_NO":"34-56-78","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0003&UsrId=RCMSCCC&InstId=10000001&InstNm=㈜RCMS&UsrNm=전연구&HmpwRoleDv=04&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"04"};
        	gridValue[cnt++] = {"USR_NM":"최재무","HM_HMPW_ROLE_DV":"일반사용자","HM_RCMS_GRP_CD":"일반사용자(이체담당자)","USE_YN":"사용","USR_ID":"RCMSDDD","RES_REG_NO":"98-76-54","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0003&UsrId=RCMSDDD&InstId=10000001&InstNm=㈜RCMS&UsrNm=최재무&HmpwRoleDv=00&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"00"};

        	
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){
        	gridValue[cnt++] = {"USR_NM":"이책임","HM_HMPW_ROLE_DV":"과제책임자","HM_RCMS_GRP_CD":"과제책임자","USE_YN":"사용","USR_ID":"RCMSAAA","RES_REG_NO":"12-34-56","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST00042UsrId=RCMSAAA&InstId=10000001&InstNm=㈜RCMS&UsrNm=이책임&HmpwRoleDv=02&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"02"};
        	gridValue[cnt++] = {"USR_NM":"김전임","HM_HMPW_ROLE_DV":"참여연구원","HM_RCMS_GRP_CD":"참여연구원","USE_YN":"사용","USR_ID":"RCMSBBB","RES_REG_NO":"23-45-67","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0004&UsrId=RCMSBBB&InstId=10000001&InstNm=㈜RCMS&UsrNm=김전임&HmpwRoleDv=04&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"04"};
        	gridValue[cnt++] = {"USR_NM":"전연구","HM_HMPW_ROLE_DV":"참여연구원","HM_RCMS_GRP_CD":"참여연구원","USE_YN":"사용","USR_ID":"RCMSCCC","RES_REG_NO":"34-56-78","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0004&UsrId=RCMSCCC&InstId=10000001&InstNm=㈜RCMS&UsrNm=전연구&HmpwRoleDv=04&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"04"};
        	gridValue[cnt++] = {"USR_NM":"최재무","HM_HMPW_ROLE_DV":"일반사용자","HM_RCMS_GRP_CD":"일반사용자(이체담당자)","USE_YN":"사용","USR_ID":"RCMSDDD","RES_REG_NO":"98-76-54","GRIDKEY":"PmsId=G01&BzClasCd=S1056&SbjtId=TEST0004&UsrId=RCMSDDD&InstId=10000001&InstNm=㈜RCMS&UsrNm=최재무&HmpwRoleDv=00&RcmsGrpCd=MR010&UseYn=Y","HMPW_ROLE_DV":"00"};

        }
        
        
    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
    }
}

function search(seqNo, RcmsGrpCd){

    if(!seqNo) return false;
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        SetData(seqNo, RcmsGrpCd); //Insert    Grid
        //SetData(); //Insert Grid
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
        uf_InstManaYn();
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