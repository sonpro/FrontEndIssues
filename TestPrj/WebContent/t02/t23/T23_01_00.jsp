<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T23_01_00.jsp
 *   Description        : 카드결제 복원요청
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29                   예기해             
 *
 *  @author 예기해
 *  @Since  2014. 01. 16
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

<title>카드결제 복원요청 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
                    
                        <div class="navbox"><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_txt">연구비이체취소 요청</a></div>

                        <ul>

                            <li><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_3dep">연구비이체취소 요청</a></li>
                
                        </ul>
                        <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                    </div>


                    <div class="sub_bg">
                    
                        <div class="navbox"><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_txt_on">카드결제복원요청</a></div>

                        <ul>

                            <li><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_3dep_on">카드결제복원요청</a></li>
                
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
        
     
<!-- rMateGrid 관련 변수 선언 -->
<script type="text/javaScript">        
    //rMateGrid의 bridge 명을 다르게 주어 자바스크립트에서 제어할 수 있도록 합니다.
    var flashVars5 = "dataType=json&bridgeName=gridBridge5";
    var flashVars4 = "dataType=json&bridgeName=gridBridge4";
    //rMateGrid 관련 객체
    var gridApp5; // 플래시 기본 객체
    var gridApp4; // 플래시 기본 객체
    var gridData5; // 그리드 데이터 담기
    var gridData4; // 그리드 데이터 담기
    var gridRoot5; // 데이타와 그리드를 포함하는 객체
    var gridRoot4; // 데이타와 그리드를 포함하는 객체
    var dataGrid5; // 그리드 정보 담기
    var dataGrid4; // 그리드 정보 담기
    
    //그리드 레이아웃 출력여부
    var isGrid = false;
    var isGrid5 = false;
    var isGrid4 = false;
</script>


        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->

            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u23_02_00_t.gif" alt="카드결제복원요청"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>연구비복원</li>
                       <li><img src="/images/common/arr.gif" alt=" " />카드결제복원요청</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">카드결제복원요청</span></li>
                        
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t30"></div>
            <!-------------------------------------------------------------------------------->
            <!--  공통부 시작 -->
            <!-------------------------------------------------------------------------------->

            <!-- 기관중심 과제조회 자동완성 공통부 시작
                과제조회 멀티체크 모드 isSbjtAutoSchMulti : true
                과제조회 싱글모드   isSbjtAutoSchMulti : false
                웹캐시 손은준 작성 20110426 -->
            <!-------------------------------------------------------------------------------->
            <% 
                boolean isSbjtAutoSchMulti = false; //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글  
                boolean beSearchBtn        = false;  //조회버튼 생성구분(실행메소드:uf_beSearchBtn();)
            %>
            <!-- 과제검색 -->
            <%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
            
            <!-------------------------------------------------------------------------------->
            <!--  공통부 끝 -->
            <!-------------------------------------------------------------------------------->
            
            <div class="cb b10"></div>
            <form name="frm2" method="post">
            <input type="hidden" name="PrsPgno"             value="0" />            <!-- 현재페이지번호        -->
            <input type="hidden" name="TrSupYn"             value="N" />
            </form>

            <form name="frm" method="post">
            <input type="hidden" name="ISSU_BNK_CD"         value=""  />            <!-- 가상계좌발급은행코드     -->
            <input type="hidden" name="EXIST_VACC"          value="N" />            <!-- 가상계좌발급여부       -->
            <input type="hidden" name="VrtlAcctNo"          value=""  />            <!-- 가상계좌번호         -->

            <input type="hidden" name="PrsPgno"             value="0" />            <!-- 현재페이지번호        -->
            <input type="hidden" name="TrSupYn"             value="N" />

            <input type="hidden" name="PayPlanDtlsRegNcnt"  value="0" />            <!-- 카드환급요청건수       -->
            <input type="hidden" name="PlanAmt"             value="0" />            <!-- 카드환급요청금액       -->
            <input type="hidden" name="searchDv"            value=""  />            <!-- 조회조건구분          -->
            <input type="hidden" name="CanDvCd"             value=""  />            <!-- 가맹점취소(전체/부분)   -->
            <input type="hidden" name="SacPrgrSt"           value=""  />            <!-- 정산진행상태-->
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" /> 
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />
            
            <!-- ------------------------       가상계좌발급정보 조회내역START      ------------------------ -->
			<h3>가상계좌발급정보</h3>
			<div class="t10">
				<table width="704" border="0" cellspacing="0" cellpadding="0"
					summary="가상계좌발급정보" class="tbl_type03">
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
							<td class="ac"><input type="hidden" name="ISSU_BNK_CD"
								value="" /><span id="idVrtlAcctIssuBnkNm"></span></td>
							<td class="ac"><input type="hidden" name="ISSU_DT" value="" /><span
								id="idVrtlAcctIssuDt"></span></td>
							<td class="ac"><input type="hidden" name="ISSU_ST" value="" /><span
								id="idVrtlAcctIssuSt"></span></td>
							<td class="ac" id="idPayUsagDv"></td>
							<td class="ar" id="idPlanAmt"></td>
							<td class="ac" id="idValdEndDt"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- ------------------------       가상계좌발급정보 조회내역END        ------------------------ -->                  
            <div class="cb b10"></div>
            <h3>내역조회</h3>      
            <!-- 검색단 start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>내역조회 검색</legend>
                        <table width="680" summary="내역조회 검색" class="tbl_search">
                        <caption>내역조회</caption>
                        <colgroup>
                            <col width="15%" />
                            <col width="25%" />
                            <col width="15%" />
                            <col width="45%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col">카드번호</th>
                            <td>
                                <select name='CrdNo_sel' id='select01'
											style='width: 140px;' title='카드번호 선택'><option
													value=''>전체카드</option>
												<option value=1111222233334444>1111222233334444</option>
												<option value=1111222233335555>1111222233335555</option>
												</select>
										</td>
                            <th scope="col">취소구분</th>
                            <td>
                                <input type="radio" name="CrdGbn" id="CrdGbn" value="4" class="radio1" title="등록취소(가맹점&RCMS)" onclick="fn_change('4');" checked/> <label for="CrdGbn">등록취소(가맹점&RCMS)</label>
                                <span class="l10"></span>
                                <input type="radio" name="CrdGbn" id="CrdGbn1" value="1" class="radio1" title="등록취소(RCMS)" onclick="fn_change('1');"/> <label for="CrdGbn1">등록취소(RCMS)</label>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">사용일자</th>
                            <td colspan="3">
                                <div id="DtBtn1" style="display: inline">
                                <%@ include file="/inc/set_date_btn.jsp" %>
                                <%@ include file="/inc/set_date_week.jsp" %>
                                </div>
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
            <div class="search_bt1 ar b10">
                <a href="#" class="bt_search" title="조회" onclick="fn_change(); uf_search(); return false;"></a>
            </div>
            <!-- //조회 상세조회 버튼 end// -->
            <!-- 주의사항 start -->
            <div class="guide_box" id="viewMsg1" style="display:inline;">
                <p class="guide_boxt"></p>
                <div class="guide_boxc">
                    <ul>
                        <li>등록취소(가맹점&RCMS)는 가맹점 또는 카드사를 통해 카드매입내역 자체를 취소한 후 RCMS에서 등록 취소를 하는 경우입니다.</li>
                        <li>등록취소(가맹점&RCMS)로 카드결제복원 요청하신 경우에는 해당 내역을 카드증빙으로 재집행 할 수 없습니다.</li>
                        <li>등록취소(RCMS)는 카드사 결제후에 카드의 매입내역 자체는 취소하지 않고 RCMS에서 비목등록한 내역을 취소하는 경우입니다.</li>
                    </ul>    
                </div>
                <p class="guide_boxb"></p>
            </div>
            <!-- //주의사항 end// --> 
            
            
            <!-- ================== 2014 그리드 교체 작업======================== -->
            <!-- *************************  rMateGrid ************************* -->   
            
            <div id="title1" style="display:none;">
                <h3>비목등록취소대상 목록</h3>
                <!-- 총건수 start -->
                <div class="total_box" id="Paging">
                   <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> 건/<span id="InqPrsTotlCnt">0</span> 건]</p>
                   <p class="fl l05 b05"><a href="#" onclick="uf_checkAll_rMate(); return false;"><img src="/images/bt/bt_total.gif" alt="전체선택" valign="top" /></a></p>
                </div>
                <!-- //총건수 end// -->
            </div>
            <!-- 그리드 start -->
            <div id="viewGrid1" style="display:none;" class="b10">
                <script type="text/javascript">                
                    rMateGridCreate("grid", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "369", "#FFFFFF", "transparent");
                </script>                
            </div>
            <!-- //그리드 end// -->
            <div id="title5" style="display:inline;">
                <h3>카드매입내역조회</h3>
                <!-- 총건수 start -->
                <div class="total_box b05" id="Paging1">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt1">0</span> 건/<span id="InqPrsTotlCnt1">0</span> 건]</div>
                <!-- //총건수 end// -->
            </div>
            <!-- 그리드 start -->
            <div id="viewGrid5" style="display:inline;" >
                <script type="text/javascript">                
                    rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars5, "100%", "360", "#FFFFFF", "transparent");
                </script>            
            </div>
            <!-- //그리드 end// -->
            <div class="b10"></div>
            <!-- 주의사항 start -->
            <div class="guide_box" id="viewMsg2" style="display:inline;">
                <p class="guide_boxt"></p>
                <div class="guide_boxc">
                    <ul>
                        <li>등록내역에 대한 취소내역들을 확인하시고 등록내역에 해당되는 취소내역 1건을 선택하신 후 카드결제복원요청을 하시면됩니다.</li>
                        <li>취소내역조회에서는 취소 및 할인 금액까지 모두 조회가 됩니다.</li>
                        <li>취소내역조회에서 취소하실 내역을 선택하신 후 카드결제복원 요청을 하시면 됩니다.</li>
                    </ul>    
                </div>
                <p class="guide_boxb"></p>
            </div>
            <!-- //주의사항 end// -->
            <div id="title4" style="display:inline;"> 
                <h3>카드취소내역조회</h3>
                <!-- 총건수 start -->
                <div class="total_box b05" id="Paging2">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건/<span id="InqPrsTotlCnt2">0</span> 건]</div>
                <!-- //총건수 end// -->
            </div>
            <!-- 그리드 start -->
            <div id="viewGrid4" style="display:inline">
                <script type="text/javascript">                
                    rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars4, "100%", "194", "#FFFFFF", "transparent");
                </script>                
            </div>
            <!-- //그리드 end// -->
            <!-- 복원신청내역정보 start -->
            <div class="t10" id="viewInfo" style="display:none;">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="복원신청내역정보" class="tbl_type03">
                <caption>복원신청내역정보</caption>
                <colgroup>
                    <col width="25%" />
                    <col width="25%" />
                    <col width="25%" />
                    <col width="25%" />
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">복원요청건수</th>
                    <th scope="col">복원요청금액</th>
                    <th scope="col">공급금액</th>
                    <th scope="col">부가가치세액</th>
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
            <!-- //복원신청내역정보 end// --> 
            <!-- action bt start -->
            <div class="action_bt ar">
                <a href="#" class="bt_action8" title="카드결제복원요청" onclick="uf_CrdRfnd(); return false;"><span class="bt_sp1">카드결제복원요청</span></a>
            </div>
            <!-- //action bt end// -->            
            <!-- 안내 가이드 start -->
            <div class="guide_box1" id="guide">
                <div class="guide_boxt1">
                    <p class="txt_title fl">카드결제 복원 요청 안내</p> 
                    <p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
                </div>
                <div class="guide_boxc1">
                    <ul>
                        <li>본 카드결제 복원요청은 RCMS에 등록된 카드의 결제일 이후 <span class="txt_or">RCMS를 통해서 카드결제계좌로 연구비 이체가 완료된 건</span>에 대해서 취소할 때 사용하실 수 있습니다.</li>
                        <li>결제일 이전의 취소건은 '연구비사용관리 → 사용실행'으로 이동하시고 등록건을 삭제하시면 됩니다.</li>
                    </ul>
                </div>
                <p class="guide_boxb1"></p>
            </div>
            <!-- //안내 가이드 end// -->
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

    //파라메터 전역변수
    var paramGb;
    
    //레이아웃 전역변수
    var layoutStrGb;

    /******************************************************************
     * uf_Click         그리드이벤트,체크내역 금액합도출(카드환급보전)
     * @param           
     * @return
     
        카드매입 부분취소의 경우 
        - 원매입건을 부가세복원 하였을 경우 10/11을 받을 수 없다. 
        --> 카드증빙 시점에서 부가세를 사용자 임의로 설정할 수 있기 때문에
    ******************************************************************/

    function uf_Click4(){
        
       	var frm             = document.frm;
        var cnt             =  0;
        var sumAmt          =  0;  // 합계금액
        var trnsAmt         =  0;  // 이체금액 
        var CanTrnsAmt      =  0;  // 부분취소금액
        var CanCelAmt       =  0;  // 취소금액 (카드취소내역의 취소금액)
        var SplyAmt         =  0;  // 공급금액
        var VatAmt          =  0;  // 부가세액
        var CanDvCd         = "P"; // 가맹점 {전체취소(A),부분취소(P)}, 비목등록취소 {U}
        
        var RtrtSt          = "";
        var RtrtFixSplyAmt  =  0;  // 환원확정공급금액
        var RtrtFixVatAmt   =  0;  // 환원확정부가세금액
            
        
        
        // 증빙목록 선택 건 처리 (가맹점 취소는 단건)                
        //그리드 선택 체크
        var selectorColumn4 = gridRoot4.getObjectById("selector");
        var rowIndex = selectorColumn4.getSelectedIndex();
        var dataRow;
        
        // 가맹점취소 (취소내역에서 취소가능금액 조회)
        if(rowIndex > -1){         
            dataRow = gridRoot4.getItemAt(rowIndex);
            CanCelAmt = Number(dataRow.KRW_BUY_SUM);    //취소금액
        }
        
        cnt+=1;
        
        RtrtSt          = dataRow.RTRT_ST;   //복원상태구분
        RtrtFixSplyAmt  = Number(dataRow.RTRT_FIX_SPLY_AMT);    //복원공급금액
        RtrtFixVatAmt   = Number(dataRow.RTRT_FIX_VAT_AMT);     //복원부가세금액
        SplyAmt         = Number(dataRow.USE_SPLY_AMT);         //공급금액
        VatAmt          = Number(dataRow.USE_VAT_AMT);          //부가가치세액

        sumAmt = (SplyAmt + VatAmt);
        
        // 환원진행상태
        if ("" != RtrtSt && ("B1000A" == RtrtSt || "B10001" == RtrtSt)) {
            alert("복원요청중인 내역은 카드결제복원 요청 할 수 없습니다.");
            selectorColumn4.setSelectedIndices([]); //선택해제
        } else {
            sumAmt  = sumAmt - (RtrtFixSplyAmt + RtrtFixVatAmt);
            trnsAmt = sumAmt;
            
            if((RtrtFixSplyAmt + RtrtFixVatAmt) == 0 && sumAmt == CanCelAmt) {
                CanDvCd = "A";    // 가맹점 전체취소
            }               
        } 

        if(CanCelAmt > trnsAmt) {
            alert("취소금액이 취소가능금액보다 크기 때문에 카드결제복원 요청 할 수 없습니다.");            
            selectorColumn4.setSelectedIndices([]); //선택해제
        }        

        frm.PayPlanDtlsRegNcnt.value =  cnt;        // 연구비환급요청건수
        frm.PlanAmt.value            =  CanCelAmt;  // 가맹점취소수신된 환원금액
        frm.CanDvCd.value            =  CanDvCd;    // 부분취소구분자 {A,P}
        
    }       
        
    
    /******************************************************************
     * uf_Click         그리드이벤트,체크내역 금액합도출
     * @param
     * @return
    ******************************************************************/
    function uf_Click1() {
        
        var frm    = document.frm;
        var cnt    = 0;
        var amt    = 0;
        var splamt = 0;
        var vatamt = 0;
        var RtrtSt = "";
        
        selectorColumn = gridRoot.getObjectById("selector");
        var arrChk = selectorColumn.getSelectedIndices();
        var dataRow;
        var chkArr = new Array();
        var isRtrtSt = false;   //복원요청내역 존재여부
        
        if(arrChk.length > 0 ){
           for(var i=0; i<arrChk.length; i++){         
        	   cnt+=1;
        	   
        	   dataRow = gridRoot.getItemAt(arrChk[i]);
        	   
               RtrtSt = dataRow.RTRT_ST;   //복원상태구분
               
               //환원진행상태
               if(RtrtSt != "" && ("B1000A" == RtrtSt || "B10001" == RtrtSt)) {
                    alert("복원요청중인 내역은 카드결제복원요청 할 수 없습니다.");
                    isRtrtSt = true;
                    continue;
               }
               
               amt += Number(dataRow.USE_VAT_AMT); //부가가치세액
               amt -= Number(dataRow.RTRT_FIX_VAT_AMT);    //복원부가세금액(환원금액)
               
               amt += Number(dataRow.USE_SPLY_AMT);    //공급금액
               amt -= Number(dataRow.RTRT_FIX_SPLY_AMT);   //복원공급금액(환원금액)
               
               splamt += Number(dataRow.USE_SPLY_AMT); //공급금액
               vatamt += Number(dataRow.USE_VAT_AMT);  //부가가치세액
               
               //복원요청중인 내역이 아닌 내역의 리스트 담기
               chkArr.push(arrChk[i]);
           }
           //복원요청중인 내역을 제외한 내역 체크
           if(isRtrtSt){
	           selectorColumn.setAllItemSelected(false);
	           selectorColumn.setSelectedIndices(chkArr);
           }
           
        }
        
        frm.CanDvCd.value                   = "U";               
        frm.PayPlanDtlsRegNcnt.value        = cnt;
        frm.PlanAmt.value                   = amt.toString();                     // 환원요청합계금액
        
        document.all['reqcnt'].innerHTML    = cnt;
        document.all['reqamt'].innerHTML    = cur_format(amt.toString());
        document.all['reqsplamt'].innerHTML = cur_format(splamt.toString());
        document.all['reqvatamt'].innerHTML = cur_format(vatamt.toString());
    
    }
        
    /******************************************************************
     * uf_CrdRfnd       카드환급요청 pop-up호출
     * @param
     * @return
    ******************************************************************/
    
    function uf_CrdRfnd(){
        
        var frm       = document.frm;
        var obj       = gridRoot;
        var obj4;
        var CanCelAmt =  0;
        var RtrtSt    = "";
        var splamt    = 0;
        var vatamt    = 0;
        var chkCnt    = 0;
        
        
        // 과제조회 유무 확인
        if(!bAutoSbjtSch()) return;
        
        
        // 가맹점취소
        if("4" == frm.searchDv.value){
        	obj = gridRoot5;
        	obj4 = gridRoot4;
            CanCelAmt =  0;
        
            if(!chkGridSelectedCount_rMate(gridRoot5, "카드매입")) return false;
            if(!chkGridSelectedCount_rMate(gridRoot4, "카드취소")) return false;            
        } else {
            // 비목등록취소           
            if(!chkGridSelectedCount_rMate(gridRoot, "카드등록")) return false;
        }
        
        // 계좌상태체크
        if(!uf_chkVaccState())  return false;           
        
        // 정산진행상태체크
        if(frm.SacPrgrSt.value == "1" || frm.SacPrgrSt.value == "2" || frm.SacPrgrSt.value == "3"){
            alert("보고서 제출이 된 상태이므로 부가세복원을 신청하실 수 없습니다.");
            return false;
        }
        
        if(!(frm.PlanAmt.value > 0)){
            alert("복원요청금액이 \"0\"원 입니다.");
            return false;
        }
    
        // 이중처리
        if( isSubmit() ) return;    
        
        // 비목등록취소   gridRoot
        if("1" == frm.searchDv.value) {         
            selectorColumn = obj.getObjectById("selector");
            var arrChk = selectorColumn.getSelectedIndices();         
            
            chkCnt = arrChk.length;
            
            var dataRow;
            var chkArr = []; //체크활성화 값
            var falseChkArr = [];    //체크 해제할값
            for(var i=0; i<arrChk.length; i++){
            	dataRow = obj.getItemAt(arrChk[i]);
            	
                RtrtSt = dataRow.RTRT_ST; //복원상태구분
                // 환원진행상태
                if (RtrtSt != "" && ("B1000A" == RtrtSt || "B10001" == RtrtSt)) {
                    alert("복원요청중인 내역은 카드결제복원요청 할 수 없습니다.");
                    
                    falseChkArr.push(arrChk[i]);   //체크 해제할 값 담기
                    continue;
                }
                
                if (chkCnt > 1) {
                    if (Number(dataRow.USE_SPLY_AMT) + Number(dataRow.USE_VAT_AMT) >= 10000000) { //공급금액:USE_SPLY_AMT, USE_VAT_AMT
                        alert("선택건 중 1천만원 이상 건이 존재합니다. 1천만원 이상건은 여러건 선택하여 신청하실 수 없습니다.");
                    
                        //현재까지 체크 해제할 값을 제외한 후 체크 실행
                      	for(var i=0; i<arrChk.length; i++){
	                      	 for(var j=0; j<falseChkArr.length; j++){
	                      		 if(arrChk[i] == falseChkArr[j]){
	                       			 arrChk.splice(i,1); //해당 체크값 해지
	                                 continue;
	                       		 }//if
	                       	 }//for	   
                        }//for
                        
                        chkArr = arrChk;
                        //복원요청중인 내역을 제외한 내역 체크
                        selectorColumn.setAllItemSelected(false);
                        selectorColumn.setSelectedIndices(chkArr);
                        
                        return false;
                    }//if
                }//if
                
                vatamt = Number(dataRow.USE_VAT_AMT);  //부가가치세액
                vatamt = vatamt - Number(dataRow.RTRT_FIX_VAT_AMT);   // 복원부가세금액(환원금액)

                splamt = Number(dataRow.USE_SPLY_AMT); //공급금액
                splamt = splamt - Number(dataRow.RTRT_FIX_SPLY_AMT);     // 복원공급금액(환원금액)
                
                get2post(frm, "CanVatAmt="  + vatamt);
                get2post(frm, "CanSplyAmt=" + splamt);
                get2post(frm, dataRow.GRIDKEY);
                
                //복원요청중인 내역이 아닌 내역의 리스트 담기
                chkArr.push(arrChk[i]);
            }//for
            
            //복원요청중인 내역을 제외한 내역 체크
            selectorColumn.setAllItemSelected(false);
            selectorColumn.setSelectedIndices(chkArr);
            
            get2post(frm, 'CanDvCd='      + frm.CanDvCd.value);
            get2post(frm, "AUTO_MAP_KEY=" + $("#SBJT_MAP_KEYS").val());
            
            var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
            get2post(frm, "AgrmtSeqNo=" + seqNo);
            
            uf_frmNewWinNs(frm, '/t02/t23/T23_01_20.jsp', 'TAXVIEW', '765', '650');
        
        // 가맹점취소    gridRoot5, gridRoot4
        } else if("4" == frm.searchDv.value) {
    
            var uAmt = 0;
            var pAmt = 0;
            var cAmt = 0;
            
            var selectorColumn5 = obj.getObjectById("selector");
            var rowIdx1 = selectorColumn5.getSelectedIndex();   
            var dataRow1 = obj.getItemAt(rowIdx1);
            
            var selectorColumn4 = obj4.getObjectById("selector");
            var rowIdx2 = selectorColumn4.getSelectedIndex();               
            var dataRow2 = obj4.getItemAt(rowIdx2);
            
            
            get2post(frm, dataRow1.GRIDKEY);
            
            // 카드매입내역 사용금액/부분취소금액
            uAmt = Number(dataRow1.OGN_BUY_SUM_AMT);  //사용금액                    
            pAmt = Number(dataRow1.RTRT_FIX_SPLY_AMT) + Number(dataRow1.RTRT_FIX_VAT_AMT); //복원공급금액:RTRT_FIX_SPLY_AMT, 복원부가세금액:RTRT_FIX_VAT_AMT
            
            get2post(document.frm, 'VatProcDv='      + dataRow1.VAT_PROC_DV);    // 부가세처리구분
            get2post(document.frm, 'RtrtFixSplyAmt=' + dataRow1.RTRT_FIX_SPLY_AMT);      // 환원확정공급금액
            get2post(document.frm, 'RtrtFixVatAmt='  + dataRow1.RTRT_FIX_VAT_AMT);    // 환원확정부가세금액                 




            cAmt = Number(dataRow2.KRW_BUY_SUM); // 카드취소내역 취소금액
            
            if(uAmt - pAmt < cAmt) {
                alert('취소가능금액은 ' + (uAmt-pAmt) + '원 입니다.\n해당 내역은 부분취소가능금액 보다 취소금액이 더 크기때문에\n카드결제복원 요청 하실 수 없습니다.');
                return;
            }
            
            
            get2post(document.frm, 'CrdNo='        + dataRow2.CRD_NO);         //카드번호
            get2post(document.frm, 'CanCelAmt='    + dataRow2.KRW_BUY_SUM);    // 취소금액
            get2post(document.frm, 'RevoAmt='      + (uAmt-pAmt));                                          // 부분취소가능금액
            get2post(document.frm, 'ApvDt='        + dataRow2.APV_DT);         // 원승인일자
            get2post(document.frm, 'RegSeq='       + dataRow2.REG_SEQ);        // 등록순번
            get2post(document.frm, 'CTblBuyApvNo=' + dataRow2.BUY_APV_NO);     // 매입승인번호                   

            
            get2post(frm, 'CanDvCd='       + frm.CanDvCd.value);
            get2post(frm, 'PlanAmt='       + frm.PlanAmt.value);
            get2post(frm, "AUTO_MAP_KEY=" + $("#SBJT_MAP_KEYS").val());

            uf_frmNewWinNs(document.frm, '/t02/t23/T23_01_10.jsp', 'TAXVIEW', '785', '620'); 
        } 
        removeTempAttribute(frm);
    }   
    
    /******************************************************************
     * uf_search        조회조건구분(카드사용내역/카드취소내역)
     * @param
     * @return
    ******************************************************************/
     
//  ================== 2014 그리드 교체 작업========================
    function uf_search(SchGb) {
    	
    	var frm = document.frm;
            
        // 과제조회 유무 확인
        if(!bAutoSbjtSch()) return;
     
        if( isSubmit() ) return;            // 이중처리
    
      //가맹점취소
        if(frm.CrdGbn[0].checked == true){
            //내역조회 카드번호
            if(null != frm.select01.value && "" != frm.select01.value) {
                get2post(frm, "getCrdNo=" + frm.select01.value);      //카드번호
            } 
            
            gridPgScrollSchStart_rMate(SchGb, gridRoot5, undefined, undefined, undefined, gridApp5);
            
            frm.searchDv.value = "4";
        }else{
        //비목등록취소
            gridPgScrollSchStart_rMate(); 
            
            //전체선택 해제
            selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setAllItemSelected(false);
            
            frm.searchDv.value = "1";
        }
        

        var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        uf_proce_display_on();  //로딩바
        setTimeout(function(){search(seqNo);}, 1000);   // 1초후 실행 1000 = 1초s
        
        
        //체크내역 금액합도출 초기화
        uf_amtInit();           
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
        
        
        paramGb = param;
        uf_init();
    }
    
    //체크내역 금액합도출 초기화
    function uf_amtInit() {
        document.all['reqcnt'].innerHTML    = 0;
        document.all['reqamt'].innerHTML    = 0;
        document.all['reqsplamt'].innerHTML = 0;
        document.all['reqvatamt'].innerHTML = 0;        
    }
    
        
//  ================== 2014 그리드 교체 작업========================   
    
    
    
    /******************************************************************
     * searchCrdInfo 카드매입건에 대한 카드취소내역 조회이벤트     
     * @param
     * @return
    ******************************************************************/
    function searchCrdInfo() {
    
        var frm  = document.frm2;   
        var getCrdNo      = '';
        var getBuyApvNo   = '';
        var getRcmsSetlDt = '';
        var getApcPrgrSt  = '';
        var getClmTotlAmt = 0;
        var getVatAmt     = 0;
        var getCanTrnsAmt = 0;
        var setAmt        = 0;
        var idx           = -1;     

        
        var selectorColumn5 = gridRoot5.getObjectById("selector");
        var rowIndex = selectorColumn5.getSelectedIndex();
        var dataRow;
        
        if(rowIndex > -1){
        	dataRow = gridRoot5.getItemAt(rowIndex);
        	
            getCrdNo      = dataRow.CRD_NO; //카드번호
            //getRcmsSetlDt = data.;//결제일자  - 그리드에 컬럼이 존재하지 않음.              
            getClmTotlAmt = dataRow.OGN_BUY_SUM_AMT;    //사용금액              
            getBuyDt      = dataRow.BUY_DT; //매입일자              
            getRtrtSt     = dataRow.RTRT_ST;    //복원상태
            
            if("B01003" == dataRow.VAT_PROC_DV) {
                //초기화
                rMateGridLayoutInit_rMate(gridRoot4, gridApp4);
                alert('부가세가 환원된 내역에 대해서는 카드결제복원 요청을 할 수 없습니다.');
                return;
            }
            
            if("B1000A" == getRtrtSt || "B10001" == getRtrtSt) {
                //초기화
                rMateGridLayoutInit_rMate(gridRoot4, gridApp4);
                alert('선택하신 내역은 복원 요청상태입니다.\n해당내역은 카드결제복원 요청을 할 수 없습니다.');
                return;
            }
            
            if(getClmTotlAmt > 0) {
                get2post(frm, "getCrdNo="      + getCrdNo);      //카드번호
                get2post(frm, "getRcmsSetlDt=" + getRcmsSetlDt); //결제일자
                get2post(frm, "getClmTotlAmt=" + getClmTotlAmt); //사용금액
            }              

            if( isSubmit() ) return;

            //데이터초기화
            gridData4 = null;
            //그리드 초기화
            rMateGridLayoutInit_rMate(gridRoot4, gridApp4);
            
            var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
            uf_proce_display_on();  //로딩바
            setTimeout(function(){search2(seqNo);}, 1000);   // 1초후 실행 1000 = 1초s           
            
        } else {
            return;
        }
    }   
    
    /******************************************************************
     * uf_search        조회조건 변경시 그리드 초기화
     * @param
     * @return
    ******************************************************************/
    function fn_change(gbn){
    
        var frm;
        var frm2 = document.frm2;
        var InqPrsTotlNcnt, InqPrsTotlNcnt1, InqPrsTotlNcnt2;
        
        frm = document.frm;
        frm.PrsPgno.value           = "0";
        frm2.PrsPgno.value          = "0";
        
        document.getElementById("InqPrsTotlNcnt").innerHTML  = "0";     
        document.getElementById("InqPrsTotlNcnt1").innerHTML = "0";
        document.getElementById("InqPrsTotlNcnt2").innerHTML = "0";        
        document.getElementById("InqPrsTotlCnt").innerHTML  = "0";      
        document.getElementById("InqPrsTotlCnt1").innerHTML = "0";
        document.getElementById("InqPrsTotlCnt2").innerHTML = "0";        
        
        //체크내역 금액합도출 초기화
        //uf_amtInit();       
    
        switch (gbn) {
        case "1" : //비목등록취소
            if(isGrid) rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStr);
        
        	document.getElementById("viewGrid1").style.display   = "inline";
            document.getElementById("viewGrid4").style.display   = "none";
            document.getElementById("viewGrid5").style.display   = "none";
            document.getElementById("viewMsg1").style.display    = "inline";
            document.getElementById("viewMsg2").style.display    = "none";      
            document.getElementById("title1").style.display      = "inline";
            document.getElementById("title4").style.display      = "none";
            document.getElementById("title5").style.display      = "none";
            document.getElementById("viewInfo").style.display    = "block";
            //등록취소(RCMS)
            //gridApp5.setLayout(layoutStr);
            
            break;
        case "4" : //가맹점취소

        	if(isGrid5) rMateGridLayoutInit_rMate(gridRoot5, gridApp5, layoutStr5);
        	if(isGrid4) rMateGridLayoutInit_rMate(gridRoot4, gridApp4, layoutStr4); 
            
        	document.getElementById("viewGrid1").style.display   = "none";
            document.getElementById("viewGrid4").style.display   = "inline";    
            document.getElementById("viewGrid5").style.display   = "inline";
            document.getElementById("viewMsg1").style.display    = "inline";
            document.getElementById("viewMsg2").style.display    = "inline";        
            document.getElementById("title1").style.display      = "none";
            document.getElementById("title4").style.display      = "inline";    
            document.getElementById("title5").style.display      = "inline";    
            document.getElementById("viewInfo").style.display    = "none";
            //등록취소(가맹점&RCMS)
            //gridApp5.setLayout(layoutStr5);
            
            break;
        
        default : //가맹점취소

            if(isGrid5) rMateGridLayoutInit_rMate(gridRoot5, gridApp5, layoutStr5);
            if(isGrid4) rMateGridLayoutInit_rMate(gridRoot4, gridApp4, layoutStr4); 
            
            document.getElementById("viewGrid1").style.display   = "none";
            document.getElementById("viewGrid4").style.display   = "inline";    
            document.getElementById("viewGrid5").style.display   = "inline";
            document.getElementById("viewMsg1").style.display    = "inline";
            document.getElementById("viewMsg2").style.display    = "inline";        
            document.getElementById("title1").style.display      = "none";
            document.getElementById("title4").style.display      = "inline";    
            document.getElementById("title5").style.display      = "inline";    
            document.getElementById("viewInfo").style.display    = "none";
            //등록취소(가맹점&RCMS)
            //gridApp5.setLayout(layoutStr5);
            
            break;
        }
        
        if(frm.CrdGbn[0].checked == true){
        	if(isGrid5) rMateGridLayoutInit_rMate(gridRoot5, gridApp5, layoutStr5);
            if(isGrid4) rMateGridLayoutInit_rMate(gridRoot4, gridApp4, layoutStr4); 
            
            document.getElementById("viewGrid1").style.display   = "none";
            document.getElementById("viewGrid4").style.display   = "inline";    
            document.getElementById("viewGrid5").style.display   = "inline";
            document.getElementById("viewMsg1").style.display    = "inline";
            document.getElementById("viewMsg2").style.display    = "inline";        
            document.getElementById("title1").style.display      = "none";
            document.getElementById("title4").style.display      = "inline";    
            document.getElementById("title5").style.display      = "inline";    
            document.getElementById("viewInfo").style.display    = "none";
        }else{
        	if(isGrid) rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStr);
            
            document.getElementById("viewGrid1").style.display   = "inline";
            document.getElementById("viewGrid4").style.display   = "none";
            document.getElementById("viewGrid5").style.display   = "none";
            document.getElementById("viewMsg1").style.display    = "inline";
            document.getElementById("viewMsg2").style.display    = "none";      
            document.getElementById("title1").style.display      = "inline";
            document.getElementById("title4").style.display      = "none";
            document.getElementById("title5").style.display      = "none";
            document.getElementById("viewInfo").style.display    = "block";
        }
    }
    
    function uf_init() {
        fn_change();
    }
    
    function fn_cardCan() {
        var frm2 = document.frm2;                
        frm2.PrsPgno.value          = "0";        
        document.getElementById("InqPrsTotlNcnt2").innerHTML = "0";
        document.getElementById("InqPrsTotlCnt2").innerHTML = "0";
    }
    
    /******************************************************************
     * uf_checkAll : 전체선택
     * @param
     * @return
    ******************************************************************/ 
    function uf_checkAll_rMate() {
    	gridAllCheck_rMate(gridRoot);
        uf_Click1();
    }
</script> 
<!-- 그리드 이벤트 START -->


<script type="text/javascript">

$(document).ready(function() {
//  ================== 2014 그리드 교체 작업========================       
    // rMateGrid 초기화
    rMateGridInit();
//  ================== 2014 그리드 교체 작업========================   
    
    $("a#example1").fancybox();
    $("a#example2").fancybox(); 
  
    $('#btn-guide').click(function(){
        if( $('#guide').css('height') == '17px' ){
            $('#guide').css({overflow:'hidden'}).animate({height:110},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
        }else{
            $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
        }
        return false;
    });
});

</script>


<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">
    
    //레이아웃 설정[등록취소 (RCMS) : U23_01_00_r.jsp  ]
    var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\" />\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
        <DataGrid id=\"dg1\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                <DataGridSelectorColumn id=\"selector\"      dataField=\"selector\"               headerText=\"선택\"                  width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowAllSelection=\"false\" allowMultipleSelection=\"true\" />\
                <DataGridColumn id=\"CRD_NO\"                dataField=\"CRD_NO\"                 headerText=\"카드번호\"              width=\"130\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
                <DataGridColumn id=\"BUY_CLCT_NO\"           dataField=\"BUY_CLCT_NO\"            headerText=\"매입승인번호\"            width=\"170\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
                <DataGridColumn id=\"CRD_APV_DT\"            dataField=\"CRD_APV_DT\"             headerText=\"승인일자\"              width=\"100\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\"  />\
                <DataGridColumn id=\"BUY_DT\"                dataField=\"BUY_DT\"                 headerText=\"매입일자\"              width=\"100\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\"  />\
                <DataGridColumn id=\"TRSC_PFMC_REG_DT\"      dataField=\"TRSC_PFMC_REG_DT\"       headerText=\"증빙등록일자\"              width=\"100\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_REG_NCNT\"        dataField=\"ITXP_REG_NCNT\"         headerText=\"비목등록건수\"               width=\"90\"    visible=\"true\"    textAlign=\"center\"    headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"SPLR_CO_NM\"           dataField=\"SPLR_CO_NM\"            headerText=\"사용처\"                  width=\"120\"   visible=\"true\"    textAlign=\"center\"    headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SPLR_BZ_REG_NO\"       dataField=\"SPLR_BZ_REG_NO\"        headerText=\"사업자번호\"                width=\"90\"    visible=\"true\"    textAlign=\"center\"    headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"USE_SPLY_AMT\"          dataField=\"USE_SPLY_AMT\"           headerText=\"공급금액\"              width=\"90\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"USE_VAT_AMT\"           dataField=\"USE_VAT_AMT\"            headerText=\"부가가치세액\"          width=\"90\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"RTRT_ST_NM\"            dataField=\"RTRT_ST_NM\"             headerText=\"복원상태\"              width=\"100\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"RTRT_ST\"               dataField=\"RTRT_ST\"                headerText=\"복원상태구분\"          width=\"90\"   visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"     dataField=\"RTRT_FIX_SPLY_AMT\"      headerText=\"복원공급금액\"          width=\"90\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"      dataField=\"RTRT_FIX_VAT_AMT\"       headerText=\"복원부가세금액\"        width=\"100\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"BUTR_ID\"               dataField=\"BUTR_ID\"                headerText=\"사업비사용거래실적ID\"  width=\"90\"   visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"GRIDKEY\"               dataField=\"GRIDKEY\"                headerText=\"GRIDKEY\"               width=\"0\"    visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
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
    
    //레이아웃 설정[카드매입내역 조회 (가맹점취소) : U23_01_00_r1.jsp ]
    var layoutStr5 = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\" />\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
        <DataGrid id=\"dg1\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                <DataGridSelectorColumn id=\"selector\"      dataField=\"selector\"               headerText=\"선택\"                  width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
                <DataGridColumn id=\"CRD_NO\"                dataField=\"CRD_NO\"                 headerText=\"카드번호\"              width=\"130\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUY_CLCT_NO\"           dataField=\"BUY_CLCT_NO\"            headerText=\"원매입번호\"            width=\"130\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"CRD_APV_DT\"            dataField=\"CRD_APV_DT\"             headerText=\"승인일자\"              width=\"80\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\"  />\
                <DataGridColumn id=\"BUY_DT\"                dataField=\"BUY_DT\"                 headerText=\"매입일자\"              width=\"80\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"TRSC_PFMC_REG_DT\"      dataField=\"TRSC_PFMC_REG_DT\"       headerText=\"등록일자\"              width=\"80\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\"  />\
                <DataGridColumn id=\"OGN_BUY_SUM_AMT\"       dataField=\"OGN_BUY_SUM_AMT\"        headerText=\"사용금액\"              width=\"100\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"USE_SPLY_AMT\"          dataField=\"USE_SPLY_AMT\"           headerText=\"공급금액\"              width=\"100\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"USE_VAT_AMT\"           dataField=\"USE_VAT_AMT\"            headerText=\"부가가치세액\"          width=\"100\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"RTRT_ST_NM\"            dataField=\"RTRT_ST_NM\"             headerText=\"복원상태\"              width=\"80\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"RTRT_ST\"               dataField=\"RTRT_ST\"                headerText=\"복원상태구분\"          width=\"80\"   visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"     dataField=\"RTRT_FIX_SPLY_AMT\"      headerText=\"복원공급금액\"          width=\"110\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"      dataField=\"RTRT_FIX_VAT_AMT\"       headerText=\"복원부가세금액\"        width=\"120\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"SPLR_CO_NM\"            dataField=\"SPLR_CO_NM\"             headerText=\"가맹점명\"              width=\"130\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUTR_ID\"               dataField=\"BUTR_ID\"                headerText=\"사업비사용거래실적ID\"  width=\"90\"   visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"VAT_PROC_DV\"           dataField=\"VAT_PROC_DV\"            headerText=\"부가세처리구분\"        width=\"90\"   visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"GRIDKEY\"               dataField=\"GRIDKEY\"                headerText=\"GRIDKEY\"               width=\"0\"    visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
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
    
    
    //레이아웃 설정[카드 취소내역 조회 : U23_01_00_r2.jsp  ]
    var layoutStr4 = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\" />\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
        <DataGrid id=\"dg2\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                <DataGridSelectorColumn id=\"selector\"      dataField=\"selector\"          headerText=\"선택\"                  width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
                <DataGridColumn id=\"CRD_NO\"                dataField=\"CRD_NO\"            headerText=\"카드번호\"              width=\"130\"  visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"OGN_BUY_CLCT_NO\"       dataField=\"OGN_BUY_CLCT_NO\"   headerText=\"원매입번호\"            width=\"130\"  visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"APV_DT\"                dataField=\"APV_DT\"            headerText=\"원승인일자\"            width=\"80\"   visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"OGN_BUY_DT\"            dataField=\"OGN_BUY_DT\"        headerText=\"원매입일자\"            width=\"80\"   visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUY_DT\"                dataField=\"BUY_DT\"            headerText=\"사용자취소일자\"        width=\"100\"  visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"KRW_BUY_SUM\"           dataField=\"KRW_BUY_SUM\"       headerText=\"취소금액\"              width=\"100\"  visible=\"true\"   textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"OVRS_USE_YN\"           dataField=\"OVRS_USE_YN\"       headerText=\"해외사용여부\"          width=\"100\"  visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"REG_YN\"                dataField=\"REG_YN\"            headerText=\"취소등록여부\"          width=\"80\"   visible=\"false\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUY_APV_NO\"            dataField=\"BUY_APV_NO\"        headerText=\"매입승인번호\"          width=\"80\"   visible=\"false\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"REG_SEQ\"               dataField=\"REG_SEQ\"           headerText=\"등록순번\"              width=\"80\"   visible=\"false\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"GRIDKEY\"               dataField=\"GRIDKEY\"           headerText=\"GRIDKEY\"               width=\"0\"    visible=\"false\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
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
            
            
            if (dataField == "selector") {  //체크박스
                uf_Click1(rowIndex);
            }else if(dataField == "CRD_NO"){    //카드번호
                var crdNo = dataRow.CRD_NO;
                uf_popup_crd_sbjt_dtls_info(crdNo);
            } else if(dataField == "BUY_CLCT_NO"){
                var ButrId = dataRow.BUTR_ID;
                uf_popup_crd_sel_slip(ButrId);
            }

        };
        
        //더블클릭 상세보기 이벤트 추가
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var column = dataGrid.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetai(dataGrid,dataRow);
            
        };
        
        //그리드 이벤트 등록
        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트
            
            isGrid = true;
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
        
    //그리드 레이아웃 호출 
    var rMateGridInitLayout5 = function() {
        gridApp5 = FABridge.gridBridge5.root();
        gridRoot5 = gridApp5.getGridRoot();
        gridApp5.setLayout(layoutStr5); //그리드 레이아웃 생성

        
        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot5.getItemAt(rowIndex);

            var columns = dataGrid5.getColumns();
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
            
            
            //셀클릭시 라디오 체크되게
            var selectorColumn5 = gridRoot5.getObjectById("selector");
            selectorColumn5.setSelectedIndices([rowIndex]);

            
            //카드취소내역 조회            
            searchCrdInfo(rowIndex);  
            
        };
        
        //더블클릭 상세보기 이벤트 추가
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot5.getItemAt(rowIndex);
            var column = dataGrid5.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid5,dataRow);
            
        };
        
        //그리드 이벤트 등록
        var layoutCompleteHandler = function(event) {
            dataGrid5 = gridApp5.getDataGrid();
            
            //이벤트 등록
            //dataGrid5.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid5.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트
            
            isGrid5 = true;
        };

        
        //layout 출력 후 실행될 이벤트 등록
        gridRoot5.addEventListener("layoutComplete", layoutCompleteHandler);
        //data 출력 후 실행할 이벤트 등록
        gridRoot5.addEventListener("dataComplete", setTotCnt5);   //전체 조회건수 출력

    };


    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge5", rMateGridInitLayout5);
    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData5() {
        gridApp5 = FABridge.gridBridge5.root();
        gridApp5.setData(JSON.stringify(gridData5)); //데이터 출력
    };

    //-------------------------------------------------------------------------
    //그리드 레이아웃 호출 
    var rMateGridInitLayout4 = function() {
        gridApp4 = FABridge.gridBridge4.root();
        gridRoot4 = gridApp4.getGridRoot();
        gridApp4.setLayout(layoutStr4); //그리드 레이아웃 생성
        
        
        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
        	var rowIndex = event.getRowIndex();
            //셀클릭시 라디오 체크되게
            var selectorColumn4 = gridRoot4.getObjectById("selector");
            selectorColumn4.setSelectedIndices([rowIndex]);      
            
            uf_Click4(rowIndex);
        };        
       
        //더블클릭 상세보기 이벤트 추가
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot4.getItemAt(rowIndex);
            var column = dataGrid4.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid4,dataRow);
            
        };
        
        //그리드 이벤트 등록
        var layoutCompleteHandler = function(event) {
            dataGrid4 = gridApp4.getDataGrid();
            
            //이벤트 등록
            //dataGrid4.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid4.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트
            
            isGrid4 = true;
            
        };

        
        //layout 출력 후 실행될 이벤트 등록
        gridRoot4.addEventListener("layoutComplete", layoutCompleteHandler);
        //gridRoot4.addEventListener("layoutComplete", rMateGridSetData4);
        //data 출력 후 실행할 이벤트 등록
        gridRoot4.addEventListener("dataComplete", setTotCnt4);   //전체 조회건수 출력
    };    


    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge4", rMateGridInitLayout4);    
    
    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData4() {
        gridApp4 = FABridge.gridBridge4.root();
        gridApp4.setData(JSON.stringify(gridData4)); //데이터 출력        
    };
        

   //전체 자료수 출력
    function setTotCnt(){
	    var cnt = getGridRowCount_rMate(gridRoot);
        $("#InqPrsTotlNcnt").html(cnt);
        $("#InqPrsTotlCnt").html(cnt);
    }
    function setTotCnt5(){
    	var cnt = getGridRowCount_rMate(gridRoot5);
        $("#InqPrsTotlNcnt1").html(cnt);
        $("#InqPrsTotlCnt1").html(cnt);
    }
    function setTotCnt4(){
    	var cnt = getGridRowCount_rMate(gridRoot4);
        $("#InqPrsTotlNcnt2").html(cnt);
        $("#InqPrsTotlCnt2").html(cnt);
    }    

</script>
<!-- **********************  rMateGrid setting END ***********************  -->
            
            
<!--  ================== 2014 그리드 교체 작업======================== -->
<script type="text/javascript">
var cnt5 = 0;
function SetData(seqNo){    
    var frm = document.frm;    
    try{
        cnt5 = 0;       
        var gridValue5 = [];
        
        
        //1. 신규과제
        if("G00000000000001" == seqNo){            
            
            //정산상태
            document.frm.SacPrgrSt.value ="";
            
            //가상계좌조회
            document.all["idVrtlAcctNo"].innerHTML="00000010000000";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A 은행";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-03-21";
            document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="미사용";
            document.frm.ISSU_BNK_CD.value="003";
            document.frm.ISSU_DT.value="20140321";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="00000010000000";

        //2. 진행과제
        }else if("G00000000000002" == seqNo){
            if(frm.searchDv.value == "4") {
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"H000000000","CRD_APV_DT":"2014-02-04","BUY_DT":"2014-02-06","TRSC_PFMC_REG_DT":"2014-02-11","OGN_BUY_SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ A 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233334444&BuyClctNo=H0000000000&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20140206&TrscPfmcRegDt=20140211&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=220&UseSplyAmt=200&UseVatAmt=20&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20140206&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000002"};

            } else if(frm.searchDv.value == "1") {
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"H000000000","CRD_APV_DT":"2014-02-04","BUY_DT":"2014-02-06","TRSC_PFMC_REG_DT":"2014-02-11","ITXP_REG_NCNT":"1","SPLR_CO_NM":"㈜ A 가맹점","SPLR_BZ_REG_NO":"222-22-22222","USE_SPLY_AMT":"220","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334444&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=H000000000&CrdApvDt=20140204&BuyDt=20140206&TrscPfmcRegDt=20140211&ItxpRegNcnt=1&SplrBzRegNo=2222222222&SplrCoNm=㈜ A 가맹점&UseSplyAmt=220&UseVatAmt=20&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	
            } else {}
            //가상계좌발급정보
            document.all["idVrtlAcctNo"].innerHTML="00000010000000";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A 은행";
            document.all["idVrtlAcctIssuDt"].innerHTML="2012-03-18";
            document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="미사용";
            document.frm.ISSU_BNK_CD.value="003";
            document.frm.ISSU_DT.value="20140418";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="00000010000000";    
            //정산상태
            document.frm.SacPrgrSt.value = "";
            
        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){
            if(frm.searchDv.value == "4") {
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"N000000000","CRD_APV_DT":"2013-02-26","BUY_DT":"2013-03-04","TRSC_PFMC_REG_DT":"2013-03-13","OGN_BUY_SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ A 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233334444&BuyClctNo=N000000000&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20130304&TrscPfmcRegDt=20130313&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=220&UseSplyAmt=200&UseVatAmt=20&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130226&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000003"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4445","BUY_CLCT_NO":"N000000001","CRD_APV_DT":"2013-03-19","BUY_DT":"2013-03-22","TRSC_PFMC_REG_DT":"2013-03-27","OGN_BUY_SUM_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ B 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233334445&BuyClctNo=N000000001&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20130322&TrscPfmcRegDt=20130327&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=1100&UseSplyAmt=1000&UseVatAmt=100&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130319&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000003"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000003","CRD_APV_DT":"2013-04-16","BUY_DT":"2013-04-19","TRSC_PFMC_REG_DT":"2013-04-29","OGN_BUY_SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ C 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233335555&BuyClctNo=N000000003&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20130419&TrscPfmcRegDt=20130429&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=220&UseSplyAmt=200&UseVatAmt=20&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130416&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000003"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4446","BUY_CLCT_NO":"N000000002","CRD_APV_DT":"2013-10-18","BUY_DT":"2013-10-23","TRSC_PFMC_REG_DT":"2013-11-01","OGN_BUY_SUM_AMT":"500","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ E 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01003","GRIDKEY":"&CrdNo=1111222233334446&BuyClctNo=N000000002&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20131023&TrscPfmcRegDt=20131101&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=500&UseSplyAmt=455&UseVatAmt=45&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20131018&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000003"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000004","CRD_APV_DT":"2013-12-02","BUY_DT":"2013-12-04","TRSC_PFMC_REG_DT":"2013-12-17","OGN_BUY_SUM_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ D 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233335555&BuyClctNo=N000000004&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20131204&TrscPfmcRegDt=20131217&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=9060&UseSplyAmt=8237&UseVatAmt=823&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20131202&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000003"};

            } else if(frm.searchDv.value == "1") {              
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"N000000000","CRD_APV_DT":"2013-02-26","BUY_DT":"2013-03-04","TRSC_PFMC_REG_DT":"2013-03-13","ITXP_REG_NCNT":"1","SPLR_CO_NM":"㈜ A 가맹점","SPLR_BZ_REG_NO":"222-22-22222","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334444&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=N000000000&CrdApvDt=20130226&BuyDt=20130304&TrscPfmcRegDt=20130313&ItxpRegNcnt=1&SplrBzRegNo=2222222222&SplrCoNm=㈜ A 가맹점&UseSplyAmt=200&UseVatAmt=20&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4445","BUY_CLCT_NO":"N000000001","CRD_APV_DT":"2013-03-19","BUY_DT":"2013-03-22","TRSC_PFMC_REG_DT":"2013-03-27","ITXP_REG_NCNT":"2","SPLR_CO_NM":"㈜ B 가맹점","SPLR_BZ_REG_NO":"333-33-33333","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334445&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=N000000001&CrdApvDt=20130319&BuyDt=20130322&TrscPfmcRegDt=20130327&ItxpRegNcnt=1&SplrBzRegNo=3333333333&SplrCoNm=㈜ B 가맹점&UseSplyAmt=1000&UseVatAmt=100&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000002","CRD_APV_DT":"2013-04-16","BUY_DT":"2013-04-19","TRSC_PFMC_REG_DT":"2013-04-29","ITXP_REG_NCNT":"3","SPLR_CO_NM":"㈜ C 가맹점","SPLR_BZ_REG_NO":"444-44-44444","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233335555&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=N000000002&CrdApvDt=20130416&BuyDt=20130419&TrscPfmcRegDt=20130429&ItxpRegNcnt=1&SplrBzRegNo=4444444444&SplrCoNm=㈜ C 가맹점&UseSplyAmt=200&UseVatAmt=20&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4446","BUY_CLCT_NO":"N000000003","CRD_APV_DT":"2013-10-18","BUY_DT":"2013-10-23","TRSC_PFMC_REG_DT":"2013-11-01","ITXP_REG_NCNT":"4","SPLR_CO_NM":"㈜ E 가맹점","SPLR_BZ_REG_NO":"555-55-55555","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334446&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=N000000003&CrdApvDt=20131018&BuyDt=20131023&TrscPfmcRegDt=20131101&ItxpRegNcnt=1&SplrBzRegNo=5555555555&SplrCoNm=㈜ E 가맹점&UseSplyAmt=455&UseVatAmt=45&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5556","BUY_CLCT_NO":"N000000004","CRD_APV_DT":"2013-12-02","BUY_DT":"2013-12-04","TRSC_PFMC_REG_DT":"2013-12-17","ITXP_REG_NCNT":"5","SPLR_CO_NM":"㈜ D 가맹점","SPLR_BZ_REG_NO":"666-66-66666","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233335556&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=N000000004&CrdApvDt=20131202&BuyDt=20131204&TrscPfmcRegDt=20131217&ItxpRegNcnt=1&SplrBzRegNo=6666666666&SplrCoNm=㈜ D 가맹점&UseSplyAmt=8237&UseVatAmt=823&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
                
            } else {}
            //가상계좌발급정보
            document.all["idVrtlAcctNo"].innerHTML="080000000080";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="B은행";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-02-18";
            document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="미사용";
            document.frm.ISSU_BNK_CD.value="003";
            document.frm.ISSU_DT.value="20140218";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="080000000080";
            //정산상태
            document.frm.SacPrgrSt.value = "0";             
            
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){
            if(frm.searchDv.value == "4") {
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"N000000000","CRD_APV_DT":"2013-02-26","BUY_DT":"2013-03-04","TRSC_PFMC_REG_DT":"2013-03-13","OGN_BUY_SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ A 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233334444&BuyClctNo=N000000000&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20130304&TrscPfmcRegDt=20130313&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=220&UseSplyAmt=200&UseVatAmt=20&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130226&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000004"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4445","BUY_CLCT_NO":"N000000001","CRD_APV_DT":"2013-03-19","BUY_DT":"2013-03-22","TRSC_PFMC_REG_DT":"2013-03-27","OGN_BUY_SUM_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ B 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233334445&BuyClctNo=N000000001&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20130322&TrscPfmcRegDt=20130327&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=1100&UseSplyAmt=1000&UseVatAmt=100&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130319&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000004"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000003","CRD_APV_DT":"2013-04-16","BUY_DT":"2013-04-19","TRSC_PFMC_REG_DT":"2013-04-29","OGN_BUY_SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ C 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233335555&BuyClctNo=N000000003&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20130419&TrscPfmcRegDt=20130429&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=220&UseSplyAmt=200&UseVatAmt=20&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130416&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000004"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4446","BUY_CLCT_NO":"N000000002","CRD_APV_DT":"2013-10-18","BUY_DT":"2013-10-23","TRSC_PFMC_REG_DT":"2013-11-01","OGN_BUY_SUM_AMT":"500","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ E 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01003","GRIDKEY":"&CrdNo=1111222233334446&BuyClctNo=N000000002&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20131023&TrscPfmcRegDt=20131101&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=500&UseSplyAmt=455&UseVatAmt=45&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20131018&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000004"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000004","CRD_APV_DT":"2013-12-02","BUY_DT":"2013-12-04","TRSC_PFMC_REG_DT":"2013-12-17","OGN_BUY_SUM_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"㈜ D 가맹점","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233335555&BuyClctNo=N000000004&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A 카드&BuyDt=20131204&TrscPfmcRegDt=20131217&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=㈜ A 가맹점&OgnBuySumAmt=9060&UseSplyAmt=8237&UseVatAmt=823&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20131202&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000004"};

            } else if(frm.searchDv.value == "1") {
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"N000000000","CRD_APV_DT":"2013-02-26","BUY_DT":"2013-03-04","TRSC_PFMC_REG_DT":"2013-03-13","ITXP_REG_NCNT":"1","SPLR_CO_NM":"㈜ A 가맹점","SPLR_BZ_REG_NO":"222-22-22222","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334444&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=N000000000&CrdApvDt=20130226&BuyDt=20130304&TrscPfmcRegDt=20130313&ItxpRegNcnt=1&SplrBzRegNo=2222222222&SplrCoNm=㈜ A 가맹점&UseSplyAmt=200&UseVatAmt=20&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4445","BUY_CLCT_NO":"N000000001","CRD_APV_DT":"2013-03-19","BUY_DT":"2013-03-22","TRSC_PFMC_REG_DT":"2013-03-27","ITXP_REG_NCNT":"2","SPLR_CO_NM":"㈜ B 가맹점","SPLR_BZ_REG_NO":"333-33-33333","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334445&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=N000000001&CrdApvDt=20130319&BuyDt=20130322&TrscPfmcRegDt=20130327&ItxpRegNcnt=1&SplrBzRegNo=3333333333&SplrCoNm=㈜ B 가맹점&UseSplyAmt=1000&UseVatAmt=100&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000002","CRD_APV_DT":"2013-04-16","BUY_DT":"2013-04-19","TRSC_PFMC_REG_DT":"2013-04-29","ITXP_REG_NCNT":"3","SPLR_CO_NM":"㈜ C 가맹점","SPLR_BZ_REG_NO":"444-44-44444","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233335555&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=N000000002&CrdApvDt=20130416&BuyDt=20130419&TrscPfmcRegDt=20130429&ItxpRegNcnt=1&SplrBzRegNo=4444444444&SplrCoNm=㈜ C 가맹점&UseSplyAmt=200&UseVatAmt=20&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4446","BUY_CLCT_NO":"N000000003","CRD_APV_DT":"2013-10-18","BUY_DT":"2013-10-23","TRSC_PFMC_REG_DT":"2013-11-01","ITXP_REG_NCNT":"4","SPLR_CO_NM":"㈜ E 가맹점","SPLR_BZ_REG_NO":"555-55-55555","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334446&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=N000000003&CrdApvDt=20131018&BuyDt=20131023&TrscPfmcRegDt=20131101&ItxpRegNcnt=1&SplrBzRegNo=5555555555&SplrCoNm=㈜ E 가맹점&UseSplyAmt=455&UseVatAmt=45&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5556","BUY_CLCT_NO":"N000000004","CRD_APV_DT":"2013-12-02","BUY_DT":"2013-12-04","TRSC_PFMC_REG_DT":"2013-12-17","ITXP_REG_NCNT":"5","SPLR_CO_NM":"㈜ D 가맹점","SPLR_BZ_REG_NO":"666-66-66666","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233335556&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A 카드&BuyClctNo=N000000004&CrdApvDt=20131202&BuyDt=20131204&TrscPfmcRegDt=20131217&ItxpRegNcnt=1&SplrBzRegNo=6666666666&SplrCoNm=㈜ D 가맹점&UseSplyAmt=8237&UseVatAmt=823&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};

                
            } else {}
            
            //가상계좌발급정보
            document.all["idVrtlAcctNo"].innerHTML="080000000080";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="B은행";
            document.all["idVrtlAcctIssuDt"].innerHTML="2013-05-25";
            document.all["idVrtlAcctIssuSt"].innerHTML="사용가능";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="미사용";
            document.frm.ISSU_BNK_CD.value="020";
            document.frm.ISSU_DT.value="20130525";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="080000000080";         
            //정산상태
            document.frm.SacPrgrSt.value = "1";          
            
        }

    }finally{
    	if(frm.searchDv.value == "1"){ //가맹점취소
	        gridData = gridValue5;    //조회결과 JSON 값 가져오기        
	        rMateGridSetData();  //rMateGrid 구현
    	}else{ //비목등록취소
    		gridData5 = gridValue5;    //조회결과 JSON 값 가져오기        
            rMateGridSetData5();  //rMateGrid 구현
    	}
    }
}


var cnt4 = 0;
function SetData2(seqNo){   
    var frm = document.frm;    
    try{
        cnt4 = 0;       
        var gridValue4 = [];
        
        //1. 신규과제   
        if("G00000000000001" == seqNo){
            
        //2. 진행과제
        }else if("G00000000000002" == seqNo){
        	gridValue4[cnt4++] = {"CRD_NO":"1111-2222-3333-4444","OGN_BUY_CLCT_NO":"H000000000","APV_DT":"2014-02-04","OGN_BUY_DT":"2014-02-06","BUY_DT":"2014-02-12","KRW_BUY_SUM":"100","OVRS_USE_YN":"국내","REG_YN":"미등록","BUY_APV_NO":"H000000000","REG_SEQ":"0","GRIDKEY":"&CrdNo=1111222233334444&OgnBuyClctNo=H000000000&ApvDt=20140204&BuyDt=20140212&KrwBuySum=100&OvrsUseYn=A&RegYn=N&BuyApvNo=H000000000&RegSeq=0",};

        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){
        	gridValue4[cnt4++] = {"CRD_NO":"1111-2222-3333-4444","OGN_BUY_CLCT_NO":"N000000000","APV_DT":"2013-02-26","OGN_BUY_DT":"2013-03-04","BUY_DT":"2013-03-12","KRW_BUY_SUM":"100","OVRS_USE_YN":"국내","REG_YN":"미등록","BUY_APV_NO":"N000000000","REG_SEQ":"0","GRIDKEY":"&CrdNo=1111222233334444&OgnBuyClctNo=N000000000&ApvDt=20140226&BuyDt=20140312&KrwBuySum=50&OvrsUseYn=A&RegYn=N&BuyApvNo=N000000000&RegSeq=0",};
        	gridValue4[cnt4++] = {"CRD_NO":"1111-2222-3333-5555","OGN_BUY_CLCT_NO":"N000000003","APV_DT":"2014-04-16","OGN_BUY_DT":"2013-04-19","BUY_DT":"2013-04-24","KRW_BUY_SUM":"100","OVRS_USE_YN":"국내","REG_YN":"미등록","BUY_APV_NO":"N000000003","REG_SEQ":"0","GRIDKEY":"&CrdNo=1111222233335555&OgnBuyClctNo=N000000003&ApvDt=20140416&BuyDt=20140424&KrwBuySum=20&OvrsUseYn=A&RegYn=N&BuyApvNo=N000000003&RegSeq=0",};

        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){    
        
        }


     
     
    }finally{             
        gridData4 = gridValue4;    //조회결과 JSON 값 가져오기
        rMateGridSetData4();  //rMateGrid 구현
    }
}



function search(seqNo){
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        SetData(seqNo); //Insert    Grid        
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
        searchAlert1();
        
    }
}

function search2(seqNo){
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        SetData2(seqNo); //Insert    Grid        
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
        searchAlert2();
    }
}


function searchAlert1(){
	   if(cnt5<1){      
	       window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
	   }     
	}
function searchAlert2(){
	   if(cnt4<1){      
	       window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
	   }     
	}
	
</script>           
            
<!-- ======== 2014 그리드 교체 작업 =========-->

</body>
</html> 