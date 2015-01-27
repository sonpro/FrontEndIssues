<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T33_01_00.jsp
 *   Description        : 정산서류 작성
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

<title>정산서류 작성 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t33/T33_01_00.jsp'); return false;" class="menu_txt_on">정산서류작성</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t33/T33_01_00.jsp'); return false;" class="menu_3dep_on">정산서류 작성</a></li>
                        
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
            
                <p class="title"><img src="/images/pefo/u33_01_00_t.gif" alt="정산서류 작성"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>온라인정산</li>
                       <li><img src="/images/common/arr.gif" alt=" " />정산서류작성</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">정산서류 작성</span></li>
                        
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
            <input type="hidden" name="frm_SacPrgrSt"       value=""/>
            <input type="hidden" name="AgrmtDv"             value=""/>               
            <input type="hidden" name="CrovStr"             value=""/>
            <input type="hidden" name="CrdSetlMeth"         value=""/>
            <input type="hidden" name="LstSacAnnl"          value=""/>
            <input type="hidden" name="PrblmSbjtSt"         value=""/>
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />         
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />
            
            <!-- 규정개정 관련 비목변경 협약상태일자, 개발시작일자 추가 -->
            <input type="hidden" name="DevStrDt"  value=""/>
            <input type="hidden" name="AgrmtStDt" value=""/>
            <!-- 규정개정 관련 비목변경 협약상태일자, 개발시작일자 추가 -->
                     
            <div class="cb b10"></div>
            <div class="t10">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="정산진행상태" class="tbl_type02">
                <caption>정산진행상태</caption>
                <colgroup>
                    <col width="20%" />
                    <col width="80%" />
                </colgroup>
                <tbody>
                <tr>
                    <th>정산진행상태</th>
                    <td class="ll"><span id="SacPrgrSt"></span></td>
                </tr>
                </tbody>
                </table>
            </div>
            <div class="t05 b10" id="TndwInfo" style="display:none;">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="반려사유" class="tbl_type02">
                <caption>"반려사유"</caption>
                <colgroup>
                    <col width="20%" />
                    <col width="15%" />
                    <col width="15%" />
                    <col width="50%" />
                </colgroup>
                <tbody>
                <tr>
                    <th>반려일자</th>
                    <td><span id="ExmnTndwDt"></span></td>
                    <th>반려사유</th>
                    <td class="ll"><span id="ExmnTndwRsn"></span></td>
                </tr>
                </tbody>
                </table>
            </div>
            <h3>사용내역</h3>
            <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
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
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;"/>
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="닫기"/></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
<!-- *************************  rMateGrid ************************* -->               
            <!-- action bt start -->
            <div class="action_bt">
                <p  class="">
                    <div class="fl">
                        <a href="#" onclick="crd_Pre_Settlement(); return false;"  class="bt_action12-1"   title="카드선결제"><span class="bt_sp">카드선결제</span></a>
                        <a href="#" onclick="fnExctnClose(); return false;"  class="bt_action4-1"   title="집행마감"><span class="bt_sp">집행마감</span></a>
                        <a href="#" onclick="fn_FileReg(); return false;"    class="bt_action6"     title="정산서류등록"><span class="bt_sp1">정산서류등록</span></a>
                    </div>
                    <div class="fr">
                        <a href="#" onclick="uf_ChngRegPop(); return false;" class="bt_action10"    title="수익금/이월신청등록"><span class="bt_sp1">수익금/이월신청등록</span></a>
                        <a href="#" onclick="uf_CrovRegPop(); return false;"   class="bt_action7"     title="이월금사용등록"><span class="bt_sp1">이월금사용등록</span></a>
                    </div>
                </p>
                <p>
                <div class="fl">
                    <a href="#" onclick="uf_CnsgrSac(); return false;"   class="bt_action8"     title="위탁과제정산등록"><span class="bt_sp1">위탁과제정산등록</span></a>
                </div>
                <div class="fr">
                    <a href="#" onclick="fn_oz(); return false;"         class="bt_action9"     title="사용실적보고서조회"><span class="bt_sp1">사용실적보고서조회</span></a>
                    <a href="#" onclick="showdiv('sbmdiv'); return false;"       class="bt_action5-1"   title="보고서제출"><span class="bt_sp">보고서제출</span></a>
                </div>              
                </p>
            </div>
            <div class="cb"></div>
            <!-- //action bt end// -->
            </form>
            <!-- 안내 가이드 start -->
            <div class="guide_box1" id="guide">
                <div class="guide_boxt1">
                    <p class="txt_title fl">정산서류작성 안내</p> 
                    <p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
                </div>
                <div class="guide_boxc1">
                    <ul>
                        <li>본 '정산서류 작성'에서는 정산준비를 하실 수 있습니다.</li>
                        <li><span class="txt_or">'카드선결제'</span>는 과제개발기간 종료 1개월 전부터 신청하여 카드증빙 등록된 건을 카드대금 결제계좌로 일괄이체를 받는 기능입니다.</li>
                        <li><span class="txt_or">'집행마감'는 개발기간 종료 후 2개월이 경과하기 전 수행기관에서 자율적으로 연구비집행정지를 하는 기능입니다.</span> 2개월이 경과하면 자동적으로 집행정지가 되며 정산을 준비하는 단계로 전환됩니다.</li>
                        <li><span class="txt_or">'정산서류등록'</span>은 집행내역에 대한 증빙 이외의 정산에 필요한 각종 서류들을 업로드 하실 수 있습니다.</li>
                        <li><span class="txt_or">'연차정산'</span>인 경우 이월 승인 받은 공문을 업로드하고 공문에 기재된 금액을 입력합니다.(승인받지 않은 금액을 입력하시면 적용되지 않습니다.)</li>
                        <li><span class="txt_or">'일괄정산'</span>인 경우 연차가 증가하는 경우 전년도 잔액을 등록하시면 차년도로 이월됩니다.</li>
                        <li>마지막으로 <span class="txt_or">'보고서제출'</span> 버튼을 클릭하여 사업비사용실적보고서 제출을 기한 내에 완료해주시기 바랍니다.</li>
                    </ul>
                </div>
                <p class="guide_boxb1"></p>
            </div>
            <!-- //안내 가이드 end// -->
        </div>
        <!-- //content end// -->

<!-- 레이어 팝업 start -->
<div id="sbmdiv" class="layer_pop" style="display: none;">
    <iframe id="iframe_onac"
        style="position: absolute; z-index: -1; width: 0; height: 0; top: 0; left: 0; margin: 0; padding: 0; scrolling: no;"
        frameborder="0" src="/images/blank.html"></iframe>
    <div class="title">
        <p class="pop_title">
            보고서제출 확인사항 <span class="close_bt"><a href="#"
                onclick="fnExitCheck();"><img
                    src="/pop/layer_close.gif" alt="닫기" /></a></span>
        </p>
    </div>
    <br>
    <!-- <h3>보고서제출 시 확인사항</h3> -->
    <div class="t20">
        <table width="85%" class="tbl_type05" border="0" cellspacing="0"
            cellpadding="0" align="center">
            <tr>
                <td width="10" align="center"><img src="/bt/icon_bl01.gif"/></td>
                <td><label for="chkbox1">정산 담당자(전담기관, 회계법인)가 정산시 필요한 추가
                        정산 서류 </label></td>
                <td width="9"><input type='checkbox' id="chkbox1" /></td>
                <td width="68" valign="middle">
                    <a href="#" onclick="fn_FileReg(); return false;" title="바로가기"><img src="/bt/bt_1030_01.gif" width="66" height="20"/></a>
                </td>
            </tr>
            <tr>
                <td><img src="/bt/icon_bl01.gif"/></td>
                <td><b>이월금</b></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="none" align="center"></td>
                <td align="left" class="none"><img src="/bt/icon7.gif"/> &nbsp; 전담기관이 승인한 이월금 승인공문 등록</td>
                <td class="none"><input type='checkbox' id="chkbox2"/></td>
                <td class="none" width="68" valign="middle"><a href="#" onclick="fn_FileReg(); return false;" title="바로가기">
                    <img src="/bt/bt_1030_01.gif" width="66" height="20"/></a></td>
            </tr>
            <tr>
                <td class="none" align="center"></td>
                <td align="left" class="none"><img src="/bt/icon7.gif"/> &nbsp; 이월금 승인공문에 기재된 이월금 입력 및 과제 담당자 승인여부 확인</td>
                <td class="none"><input type='checkbox' id="chkbox3"/></td>
                <td class="none" width="68" valign="middle"><a href="#" onclick="uf_ChngRegPop(); return false;" title="바로가기">
                    <img src="/bt/bt_1030_01.gif" width="66" height="20"/></a></td>
            </tr>
            <tr>
                <td class="none" align="center"></td>
                <td align="left" class="none"><img src="/bt/icon7.gif"/> &nbsp; 전년도 이월금 사용내역(당해년도)선택 등록</td>
                <td class="none"><input type='checkbox' id="chkbox4"/></td>
                <td class="none" width="68" valign="middle"><a href="#" onclick="uf_CrovRegPop(); return false;" title="바로가기">
                    <img src="/bt/bt_1030_01.gif" width="66" height="20"/></a></td>
            </tr>
            <tr>
                <td align="center"><img src="/bt/icon_bl01.gif"/></td>
                <td><label for="chkbox5">과재 수행기간 내 사용한 부가세 복원 여부 확인 </label></td>
                <td><input type='checkbox' id="chkbox5"/></td>
                <td width="68" valign="middle"><a href="#" onclick="fn_url('/t02/t24/T24_01_00.jsp','_blank'); return false;" title="바로가기">
                    <img src="/bt/bt_1030_01.gif" width="66" height="20"/></a></td>
            </tr>
            <tr>
                <td align="center"><img src="/bt/icon_bl01.gif"/></td>
                <td><label for="chkbox6">등록한 카드증빙 결제완료 여부 확인 </label></td>
                <td><input type='checkbox' id="chkbox6"/></td>
                <td width="68" valign="middle"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" title="바로가기">
                    <img src="/bt/bt_1030_01.gif" width="66" height="20"/></a></td>
            </tr>
            <tr>
                <td align="center"><img src="/bt/icon_bl01.gif"/></td>
                <td><label for="chkbox7">사업비 사용실적 보고서 최종 확인 </label></td>
                <td><input type='checkbox' id="chkbox7"/></td>
                <td width="68" valign="middle"><a href="#" onclick="fn_oz(); return false;" title="바로가기">
                    <img src="/bt/bt_1030_01.gif" width="66" height="20"/></a></td>
            </tr>

        </table>

    </div>

    <div align="center" class="t20">


        <table width="85%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="50" align="center"><a href="#" onclick="uf_SubmitRpt(); return false;" class="bt_action5-1" title="보고서제출"><span class="bt_sp">보고서제출</span></a></td>
            </tr>
        </table>
    </div>
</div>

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

    function showdiv(id) {
        
        var frm     = document.frm;
        var sbjtfrm = document.rtr_str_form;
    
        if(!bAutoSbjtSch()) return;     // 과제조회여부
        
        if("5"==frm.frm_SacPrgrSt.value || "B28001"==frm.PrblmSbjtSt.value || "B28002"==frm.PrblmSbjtSt.value){
            alert("환수대상기관은 보고서제출이 불가능합니다.");
            return;
        } 
        
        // 2012.05.16 태동현
        // 정산원장의 연차와 세션의 연차가 같은지 여부 판단 (일괄/단계 정산시, 마지막 연차에서만 제출 가능하도록 설정하기 위함)
        if(frm.LstSacAnnl.value != sbjtfrm.S_ANNL.value){
            alert("일괄/단계정산의 보고서제출은 최종 연차인 " + frm.LstSacAnnl.value + "차년도에서 가능합니다.");
            return;
        }
        
        
        //과제진행상태 10:"정산"
        if("10"!=sbjtfrm.S_INST_SBJT_PRGR_ST.value){
            alert("해당 기관은 정산단계가 아닙니다.");
            return;
        }
     
        if(""==frm.frm_SacPrgrSt.value){
            alert("정산진행상태 정보가 없습니다.");
            return;
        }
    
        if("1"==frm.frm_SacPrgrSt.value){
            alert("보고서제출이 완료된 이후에는 수정이 불가능합니다.");
            return;
        }
    
        if("2"==frm.frm_SacPrgrSt.value){
            alert("검토완료된 이후에는 수정이 불가능합니다.");
            return;
        }
    
        if("3"==frm.frm_SacPrgrSt.value){
            alert("정산확정된 이후에는 수정이 불가능합니다.");
            return;
        }
        
        $("BODY").append('<div id="popup_overlay_onac"></div>');
        $("#popup_overlay_onac").css({
            position: 'absolute',
            zIndex: 999998,
            top: '0px',
            left: '0px',
            width: '98%',
            height: $(document).height(),
            background: '#FFF',
            opacity: .50
        });   
        $("#sbmdiv").css("z-index", "999999");
        $("#sbmdiv").css("top", 405);
        $("#sbmdiv").css("left", 210);
        $("#sbmdiv").css("width", 720);
        $("#sbmdiv").css("height", 448);
        $("#iframe_onac").css("height", "100%");
        $("#iframe_onac").css("width", "100%");
        document.getElementById("sbmdiv").style.display="inline";   
    }
    
    function fnExitCheck(){
        if (confirm("보고서 제출시 체크 사항을 모두 확인 해 주셔야 합니다.\n화면을 닫으시겠습니까?")) {
            document.getElementById("sbmdiv").style.display="none";     
            document.getElementById("popup_overlay_onac").style.display="none";
            document.getElementById("chkbox1").checked = false;
            document.getElementById("chkbox2").checked = false;
            document.getElementById("chkbox3").checked = false;
            document.getElementById("chkbox4").checked = false;
            document.getElementById("chkbox5").checked = false;
            document.getElementById("chkbox6").checked = false;
            document.getElementById("chkbox7").checked = false;
        }           
        return false;
    }
    
    function uf_search() {
        
        var frm = document.frm;
        var frm_key = document.rtr_str_form;
        
        var sbjtId      = frm_key.S_SBJT_ID.value;
        var agrmtSeqNo  = frm_key.S_AGRMT_SEQ_NO.value;
        var agrmtInstId = frm_key.S_AGRMT_INST_ID.value;
        var sacSn       = frm_key.S_SAC_SN.value;
                
        if( isSubmit() ) return;    // 이중처리
        //if(!chk_sbjt_sch()) return false; //유효성체크
        
        get2post(frm, "sbjtId="+sbjtId);
        get2post(frm, "agrmtSeqNo="+agrmtSeqNo);
        get2post(frm, "agrmtInstId="+agrmtInstId);
        get2post(frm, "sacSn="+sacSn);
    
        rMateGridLayoutInit_rMate();
        setData(frm_key.S_AGRMT_SEQ_NO.value);
        
        
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
        
    
    function changeIns(val) {
        
        var arr;
        arr = val.split("|");
        document.getElementById("setVal0").innerHTML = arr[1];
        document.getElementById("setVal1").innerHTML = arr[2];
        document.getElementById("setVal2").innerHTML = arr[3];
        document.getElementById("setVal3").innerHTML = arr[4];
        
    }
    
    
    /*****************************************************************
     * uf_SubmitRpt     보고서제출
     * @param
     * @return
    ******************************************************************/
    function uf_SubmitRpt() {
        
        var frm     = document.frm;
        var sbjtfrm = document.rtr_str_form;
        
        if(!bAutoSbjtSch()) return;     // 과제조회여부
        
        if(!document.getElementById("chkbox1").checked){
            alert("정산 담당자(전담기관, 회계법인)가 정산시 필요한 추가 정산 서류를 확인(체크) 하지 않으셨습니다.");
            return;
        }
        
        if(!document.getElementById("chkbox2").checked){
            alert("전담기관이 승인한 이월금 승인공문 등록을 확인(체크) 하지 않으셨습니다.");
            return;
        }
        
        if(!document.getElementById("chkbox3").checked){
            alert("이월금 승인공문에 기재된 이월금 입력 및 과제 담당자 승인여부 확인을 확인(체크) 하지 않으셨습니다.");
            return;
        }
        
        if(!document.getElementById("chkbox4").checked){
            alert("전년도 이월금 사용내역(당해년도)선택 등록을 확인(체크) 하지 않으셨습니다.");
            return;
        }
        
        if(!document.getElementById("chkbox5").checked){
            alert("과재 수행기간 내 사용한 부가세 복원 여부 확인을 확인(체크) 하지 않으셨습니다.");
            return;
        }
         
        if(!document.getElementById("chkbox6").checked){
            alert("등록한 카드증빙 결제완료 여부 확인을 확인(체크) 하지 않으셨습니다.");
            return;
        }
        
        /* 
        if(document.getElementById("chkbox6").checked){
            alert("등록한 카드증빙 결제완료 여부 확인기능은 실습환경에서 지원하지 않는 기능입니다.\n\n확인(체크) 해제 하시기 바랍니다.");
            return;
        }
        */
        if(!document.getElementById("chkbox7").checked){
            alert("사업비 사용실적 보고서 최종 확인을 확인(체크) 하지 않으셨습니다.");
            return;
        }
        
        if("5"==frm.frm_SacPrgrSt.value || "B28001"==frm.PrblmSbjtSt.value || "B28002"==frm.PrblmSbjtSt.value){
            alert("환수대상기관은 보고서제출이 불가능합니다.");
            return;
        } 
        
        // 2012.05.16 태동현
        // 정산원장의 연차와 세션의 연차가 같은지 여부 판단 (일괄/단계 정산시, 마지막 연차에서만 제출 가능하도록 설정하기 위함)
        if(frm.LstSacAnnl.value != sbjtfrm.S_ANNL.value){
            alert("일괄/단계정산의 보고서제출은 최종 연차인 " + frm.LstSacAnnl.value + "차년도에서 가능합니다.");
            return;
        }
        
        
        //과제진행상태 10:"정산"
        if("10"!=sbjtfrm.S_INST_SBJT_PRGR_ST.value){
            alert("해당 기관은 정산단계가 아닙니다.");
            return;
        }
     
        if(""==frm.frm_SacPrgrSt.value){
            alert("정산진행상태 정보가 없습니다.");
            return;
        }
    
        if("1"==frm.frm_SacPrgrSt.value){
            alert("보고서제출이 완료된 이후에는 수정이 불가능합니다.");
            return;
        }
    
        if("2"==frm.frm_SacPrgrSt.value){
            alert("검토완료된 이후에는 수정이 불가능합니다.");
            return;
        }
    
        if("3"==frm.frm_SacPrgrSt.value){
            alert("정산확정된 이후에는 수정이 불가능합니다.");
            return;
        }
        
        if(!confirm("보고서제출이 완료된 이후에는 수정이 불가능합니다.\n보고서를 제출 하시겠습니까?")){
            return;
        }
    
        if( isSubmit() ) return;    // 이중처리
    
        get2post(frm, "pmsId="          + sbjtfrm.S_PMS_ID.value);
        get2post(frm, "sbjtId="         + sbjtfrm.S_SBJT_ID.value);
        get2post(frm, "sacSn="          + sbjtfrm.S_SAC_SN.value);
        get2post(frm, "agrmtSeqNo="     + sbjtfrm.S_AGRMT_SEQ_NO.value);
        get2post(frm, "agrmtInstId="    + sbjtfrm.S_AGRMT_INST_ID.value);
        
        
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    reset_submit();
                    alert('보고서제출이 완료되었습니다.');
                }
                , 1000);   // 1초후 실행 1000 = 1초
                
        
        document.getElementById("sbmdiv").style.display="none";     
        document.getElementById("popup_overlay_onac").style.display="none";
        document.getElementById("chkbox1").checked = false;
        document.getElementById("chkbox2").checked = false;
        document.getElementById("chkbox3").checked = false;
        document.getElementById("chkbox4").checked = false;
        document.getElementById("chkbox5").checked = false;
        document.getElementById("chkbox6").checked = false;
        document.getElementById("chkbox7").checked = false;
        
    }
    
    /*****************************************************************
     * fn_FileReg        정산서류등록
     * @param
     * @return
    ******************************************************************/
    function fn_FileReg() {
        
        // 과제조회 유무 확인
        if(!bAutoSbjtSch()) return;
        
        var frm     = document.frm;
        var frm_key = document.rtr_str_form;
        var sacSn   = frm_key.S_SAC_SN.value;

        
        if("5"==frm.frm_SacPrgrSt.value || "B28001"==frm.PrblmSbjtSt.value || "B28002"==frm.PrblmSbjtSt.value){
            alert("환수대상기관은 보고서제출이 불가능합니다.");
            return;
        }
        
        if($('#SacPrgrSt').text() == "정산진행상태가 아닙니다.") {
            alert("정산진행상태일때만 정산서류등록이 가능합니다.");
            return;
        }
        
        // 2012.05.16 태동현
        // 정산원장의 연차와 세션의 연차가 같은지 여부 판단 (일괄/단계 정산시, 마지막 연차에서만 등록 가능하도록 설정하기 위함)
        if(frm.LstSacAnnl.value != frm_key.S_ANNL.value){
            alert("일괄/단계정산의 정산서류등록은 최종 연차인 " + frm.LstSacAnnl.value + "차년도에서 가능합니다.");
            return;
        }
        
        if (sacSn == "" || sacSn == "null") sacSn = 0;
    
        get2post(frm, "pmsId="      +frm_key.S_PMS_ID.value);
        get2post(frm, "hmpwRoleDv=" +frm_key.S_HMPW_ROLE_DV.value);
        get2post(frm, "rcmsGrpCd="  +frm_key.S_RCMS_GRP_CD.value);
        get2post(frm, "sbjtId="     +frm_key.S_SBJT_ID.value);   
        get2post(frm, "agrmtSeqNo=" +frm_key.S_AGRMT_SEQ_NO.value);  
        get2post(frm, "agrmtInstId="+frm_key.S_AGRMT_INST_ID.value);
        get2post(frm, "sacPrgrSt="  +frm.frm_SacPrgrSt.value);
        get2post(frm, "sacSn="      +sacSn);
            
        uf_frmNewWinNs(document.frm, '/pop/T01_26_00.jsp', 'TAXVIEW21', '765', '480', 'no');
        
        removeTempAttribute(frm);    
    }
    
    
    /*****************************************************************
     * fnExctnClose        집행마감
     * @param
     * @return
    ******************************************************************/
    function fnExctnClose() {
        
        var frm     = document.frm;
        var sbjtfrm = document.rtr_str_form;
     
        if(!bAutoSbjtSch()) return;     // 과제조회여부
        
        if("10" == sbjtfrm.S_INST_SBJT_PRGR_ST.value){
            alert("정산단계이므로 집행마감을 할 수 없습니다.");
            return;
        }
        
        if("5"==frm.frm_SacPrgrSt.value || "B28001"==frm.PrblmSbjtSt.value || "B28002"==frm.PrblmSbjtSt.value){
            alert("환수대상기관은 집행마감이 불가능합니다.");
            return;
        }
    
        
        var today = new Date();
        var year  = today.getFullYear();
        var month = today.getMonth()+1;
        var day   = today.getDate();
        if(day<10)   day   = "0" + day;
        if(month<10) month = "0" + month;       
        var valDate = year + "" + month + "" + day;
            
        if(valDate < sbjtfrm.S_DEV_END_DT.value){
            alert("협약기간이 종료된 후 집행마감을 할 수 있습니다.");
            return;
        }else{
                     
            if(confirm("과제를 집행마감 하시겠습니까?")){
                get2post(frm, "pmsId="          +   sbjtfrm.S_PMS_ID.value);           
                get2post(frm, "sbjtId="         +   sbjtfrm.S_SBJT_ID.value);           
                get2post(frm, "agrmtSeqNo="     +   sbjtfrm.S_AGRMT_SEQ_NO.value);  
                get2post(frm, "agrmtInstId="    +   sbjtfrm.S_AGRMT_INST_ID.value);
                get2post(frm, "agrmtTgtStrStg=" +   sbjtfrm.S_AGRMT_TGT_STR_STG.value);
                get2post(frm, "agrmtTgtStrAnnl="+   sbjtfrm.S_AGRMT_TGT_STR_ANNL.value);
                get2post(frm, "agrmtTgtEndStg=" +   sbjtfrm.S_AGRMT_TGT_END_STG.value);
                get2post(frm, "agrmtTgtEndAnnl="+   sbjtfrm.S_AGRMT_TGT_END_ANNL.value);
                get2post(frm, "sacShp="         +   sbjtfrm.S_SAC_SHP.value);
                        
                if( isSubmit() ) return;    // 이중처리
        
                    
                uf_proce_display_on();  //로딩바
                
                setTimeout(
                        function(){
                            reset_submit();
                            alert('과제가 집행마감이 되었습니다.');
                            autoSbjtFormGen();
                        }
                        , 1000);   // 1초후 실행 1000 = 1초
                        
                
            }
        }
    }
    
    
    
    
    /*****************************************************************
     * crd_Pre_Settlement        카드선결제
     * @param
     * @return
    ******************************************************************/
    function crd_Pre_Settlement() {
                
        var frm     = document.frm;
        var sbjtfrm = document.rtr_str_form;  
        var idx = -1;
        
        if(!bAutoSbjtSch()) return;     // 과제조회여부
    
        var today = new Date();
        var year  = today.getFullYear();
        var month = (today.getMonth()+1)>9 ? ''+(today.getMonth()+1) : '0'+(today.getMonth()+1);
        var today = year+month;
        var devend = (sbjtfrm.S_DEV_END_DT.value).substr(0,6);
        var y = (sbjtfrm.S_DEV_END_DT.value).substr(0,4);
        var m = (sbjtfrm.S_DEV_END_DT.value).substr(4,2);
        var ckday = getYearMonth(y,m,2);
        var crdSetlMthdDv = frm.CrdSetlMeth.value;
        
        
        if( !(("10" == sbjtfrm.S_INST_SBJT_PRGR_ST.value && "0"==frm.frm_SacPrgrSt.value && today<=ckday) || ("07" == sbjtfrm.S_INST_SBJT_PRGR_ST.value && (today>=devend && today<=ckday))) )
        {
            alert("카드선결제를 요청하실 수 있는 상태가 아닙니다.");
            return;
        }
        
        if("2"==crdSetlMthdDv)
        {
            alert("카드결제 실시간이체기관은 연구비사용관리-사용실행내역에서\n처리해주시기 바랍니다.");
            return;
        }
        
        get2post(frm, "agrmtSeqNo="+sbjtfrm.S_AGRMT_SEQ_NO.value);
        get2post(frm, "agrmtInstId="+sbjtfrm.S_AGRMT_INST_ID.value);
        
        if( isSubmit() ) return;    // 이중처리
        
        //frm.target = "sendIfrm";
        uf_frmNewWinNs(document.frm, '/pop/T01_34_00.jsp', 'TAXVIEW21', '750', '570');

    }
    
    

    
    
    
    
   
    
    
    /*****************************************************************
     * uf_ChngRegPop        수익금/이월신청등록
     * @param
     * @return
    ******************************************************************/
    function uf_ChngRegPop(){
        
        var frm     = document.frm;
        var sbjtfrm = document.rtr_str_form;
     
        if(!bAutoSbjtSch()) return;     // 과제조회여부
    
        
        if("5"==frm.frm_SacPrgrSt.value || "B28001"==frm.PrblmSbjtSt.value || "B28002"==frm.PrblmSbjtSt.value){
            alert("환수대상기관은 수익금/이월신청등록이 불가능합니다.");
            return;
        } 
        
        
        // 2011.07.19 
        // 연차정산 : 기관과제진행상태(정상:10) 이고, 정산진행상태가 (보고서미제출:0,위탁과제정산등록완료:4)
        // --일괄정산 : 개발시작 ~ 개발종료 시점에 등록 가능
        // --단계정산 : 개발시작 ~ 개발종료 시점에 등록 가능
        // 일괄정산,단계정산 -> 개발종료 시점 이후에 등록 가능 하도록 변경
        // 정산형태 : 1(일괄),2(연차),3(단계),4(문제과제),5(특별)
        
        // 일괄정산
        if("1" == sbjtfrm.S_SAC_SHP.value || "3" == sbjtfrm.S_SAC_SHP.value) {
            
            var today = new Date();
            var year  = today.getFullYear();
            var month = today.getMonth()+1;
            var day   = today.getDate();
            if(day<10)   day   = "0" + day;
            if(month<10) month = "0" + month;       
            var valDate = year + "" + month + "" + day;
    
            if(valDate < sbjtfrm.S_DEV_END_DT.value)
            {
                alert("이월등록신청 기간이 아닙니다.");
                return;
            }
               
        // 연차정산
        } else if("2" == sbjtfrm.S_SAC_SHP.value){
    
            // 과제진행상태 10:"정산"
            if("10"!=sbjtfrm.S_INST_SBJT_PRGR_ST.value){
                alert("해당 기관은 정산단계가 아닙니다.");
                return;
            }
            if("1"==frm.frm_SacPrgrSt.value || "2"==frm.frm_SacPrgrSt.value || "3"==frm.frm_SacPrgrSt.value ){
                alert("보고서제출이 완료된 이후에는 수정이 불가능합니다.");
                return;
            }
            if(""==frm.frm_SacPrgrSt.value){
                alert("정산진행상태 정보가 없습니다.");
                return;
            }  
                
        }else{
            alert("현재 이월신청등록은 일괄정산/연차정산/단계정산에서만 가능합니다.");
            return;
        }
        
        // 연차정산일 경우에만 이월금 신청시 정산서류등록에 이월승인공문 등록을 안하면 체크함.
        if (sbjtfrm.S_SAC_SHP.value == "2"){
            if(frm.CrovStr.value != "1"){
                alert("정산서류등록에 이월승인공문이 등록되지 않았습니다.");
                return;
            }
        } 
        
        get2post(frm, "sbjtId="         + sbjtfrm.S_SBJT_ID.value);
        get2post(frm, "agrmtSeqNo="     + sbjtfrm.S_AGRMT_SEQ_NO.value);
        get2post(frm, "agrmtInstId="    + sbjtfrm.S_AGRMT_INST_ID.value);
        
        uf_frmNewWinNs(document.frm, '/t03/t33/T33_01_10.jsp', 'TAXVIEW23', '765', '840');
        
        removeTempAttribute(frm);    
    }   
    
    
    
    
    /*****************************************************************
     * uf_CnsgrSac      위탁정산등록
     * @param
     * @return
    ******************************************************************/
    function uf_CnsgrSac() {
        
        var frm     = document.frm;
        var sbjtfrm = document.rtr_str_form;
        var grid    = gridRoot;
        var itxpCnt = 0;
        
        if(!bAutoSbjtSch()) return;     // 과제조회여부
    
        if("5"==frm.frm_SacPrgrSt.value || "B28001"==frm.PrblmSbjtSt.value || "B28002"==frm.PrblmSbjtSt.value){
            alert("환수대상기관은 위탁과제정산등록이 불가능합니다.");
            return;
        } 
        
        // 2012.05.16 태동현
        // 정산원장의 연차와 세션의 연차가 같은지 여부 판단 (일괄/단계 정산시, 마지막 연차에서만 등록 가능하도록 설정하기 위함)
        if(frm.LstSacAnnl.value != sbjtfrm.S_ANNL.value){
            alert("일괄/단계정산의 위탁과제정산등록은 최종 연차인 " + frm.LstSacAnnl.value + "차년도에서 가능합니다.");
            return;
        }
        
        //과제진행상태 10:"정산"
        if("10"!=sbjtfrm.S_INST_SBJT_PRGR_ST.value){
            alert("해당 기관은 정산단계가 아닙니다.");
            return;
        }
        if(""==frm.frm_SacPrgrSt.value){
            alert("정산진행상태 정보가 없습니다.");
            return;
        }
        if("1"==frm.frm_SacPrgrSt.value || "2"==frm.frm_SacPrgrSt.value || "3"==frm.frm_SacPrgrSt.value){
            alert("보고서제출이 완료된 이후에는 수정이 불가능합니다.");
            return;
        }
        
        for(var i=0; i<getGridRowCount_rMate(grid);i++){
            var dataRow = grid.getItemAt(i);
            if("B0401" == dataRow.ITXP_CD){
                if(0 < Number(dataRow.AGRMT_CASH_LIM_AMT)){
                    itxpCnt++;
                }
            }
        }
        if(0==itxpCnt){
            alert("위탁연구개발비의 협약한도가 존재하지 않습니다.");
            return;
        }
    
        get2post(frm, "agrmtSeqNo="     + sbjtfrm.S_AGRMT_SEQ_NO.value);
        get2post(frm, "agrmtInstId="    + sbjtfrm.S_AGRMT_INST_ID.value);
        
        uf_frmNewWinNs(document.frm, '/t03/t33/T33_01_20.jsp', 'TAXVIEW21', '765', '470');
        
        removeTempAttribute(frm);    
    }
    
    
    
    
    /*****************************************************************
     * fn_oz        사용실적보고서
     * @param
     * @return
    ******************************************************************/
    function fn_oz(){
        
        var frm     = document.frm;
        var sbjtfrm = document.rtr_str_form;
    
        if(!bAutoSbjtSch()) return;     // 과제조회여부
        
        //alert(sbjtfrm.S_INST_SBJT_PRGR_ST.value);
        
        if("10" != sbjtfrm.S_INST_SBJT_PRGR_ST.value){
            alert("정산단계에서만 조회가 가능합니다.");
            return;
        }
        
        get2post(frm, "SbjtId="     +sbjtfrm.S_SBJT_ID.value);
        get2post(frm, "SacSn="      +sbjtfrm.S_SAC_SN.value);
        get2post(frm, "AgrmtInstId="+sbjtfrm.S_AGRMT_INST_ID.value);
        
            
        get2post(frm, "ozPage=U33");
        
        // 12년 규정개정 관련 비목변경(12.7.12)
        // 협약상태일자 2012년 8월 7일 이후 && 개발시작일자 2012년 9월 1일 이후
        // 구비목(4비목7세목)->신비목(2비목7세목)
        // 2013.10.07 kbm : 타전담기관은 개발시작일을 2012.08.01 이후로 조회되도록 수정
        
        
        if( (sbjtfrm.S_PMS_ID.value == "G01" && frm.AgrmtStDt.value >= "20120807" && frm.DevStrDt.value >= "20120901")
                || (sbjtfrm.S_PMS_ID.value != "G01" && frm.AgrmtStDt.value >= "20120807" && frm.DevStrDt.value >= "20120801") ) {
            
            if("10037742" == sbjtfrm.S_SBJT_ID.value){
                
                if("C" == sbjtfrm.S_INST_ROLE_DV.value){
                    get2post(frm, "url=/REPT/N04_01_03.ozr");
                    uf_newWinNs('/pop/oz_popup.jsp','ozview4','1000','1000', frm); 
                } else {
                    get2post(frm, "url=/REPT/N04_01_04.ozr");
                    uf_newWinNs('/pop/oz_popup.jsp','ozview4','1000','1000', frm); 
                }       
                
            } else {
                
                if("C" == sbjtfrm.S_INST_ROLE_DV.value){
                    
                    if("1" == sbjtfrm.S_AGRMT_DV.value && "2" == sbjtfrm.S_SAC_SHP.value) { //일괄과제 이면서 연차정산
                        
                        get2post(frm, "url=/REPT/N04_03_03.ozr");
                        uf_newWinNs('/pop/oz_popup.jsp','ozview3','1000','1000', frm);
                    } else {
                        if("1" == sbjtfrm.S_SAC_SHP.value ||"3" == sbjtfrm.S_SAC_SHP.value){    //일괄 및 단계정산
                            get2post(frm, "url=/REPT/N04_01_03.ozr");
                            uf_newWinNs('/pop/oz_popup.jsp','ozview1','1000','1000', frm);
                        }else if("2" == sbjtfrm.S_SAC_SHP.value){       //연차정산
                            get2post(frm, "url=/REPT/N04_02_03.ozr");
                            uf_newWinNs('/pop/oz_popup.jsp','ozview2','1000','1000', frm);
                        }
                    }
    
                } else {
                    
                    if("1" == sbjtfrm.S_AGRMT_DV.value && "2" == sbjtfrm.S_SAC_SHP.value) { //일괄과제 이면서 연차정산
                        get2post(frm, "url=/REPT/N04_03_04.ozr");
                        uf_newWinNs('/pop/oz_popup.jsp','ozview3','1000','1000', frm);
                    } else {
                        if("1" == sbjtfrm.S_SAC_SHP.value ||"3" == sbjtfrm.S_SAC_SHP.value){    //일괄 및 단계정산
                            get2post(frm, "url=/REPT/N04_01_04.ozr");
                            uf_newWinNs('/pop/oz_popup.jsp','ozview1','1000','1000', frm);
                        }else if("2" == sbjtfrm.S_SAC_SHP.value){       //연차정산
                            get2post(frm, "url=/REPT/N04_02_04.ozr");
                            uf_newWinNs('/pop/oz_popup.jsp','ozview2','1000','1000', frm);
                        }
                    }
                }
            }           

        } else {
            
            if("10037742" == sbjtfrm.S_SBJT_ID.value){
                if("C" == sbjtfrm.S_INST_ROLE_DV.value){
                    get2post(frm, "url=/REPT/N04_01_01.ozr");
                    uf_newWinNs('/pop/oz_popup.jsp','ozview4','1000','1000', frm); 
                } else {
                    get2post(frm, "url=/REPT/N04_01_02.ozr");
                    uf_newWinNs('/pop/oz_popup.jsp','ozview4','1000','1000', frm); 
                }       
            } else {
                
                if("C" == sbjtfrm.S_INST_ROLE_DV.value){
                    
                    if("1" == sbjtfrm.S_AGRMT_DV.value && "2" == sbjtfrm.S_SAC_SHP.value) { //일괄과제 이면서 연차정산
                        
                        get2post(frm, "url=/REPT/N04_03_01.ozr");
                        uf_newWinNs('/pop/oz_popup.jsp','ozview3','1000','1000', frm);
                    } else {
                        if("1" == sbjtfrm.S_SAC_SHP.value ||"3" == sbjtfrm.S_SAC_SHP.value){    //일괄 및 단계정산
                            get2post(frm, "url=/REPT/N04_01_01.ozr");
                            uf_newWinNs('/pop/oz_popup.jsp','ozview1','1000','1000', frm);
                        }else if("2" == sbjtfrm.S_SAC_SHP.value){       //연차정산
                            get2post(frm, "url=/REPT/N04_02_01.ozr");
                            uf_newWinNs('/pop/oz_popup.jsp','ozview2','1000','1000', frm);
                        }
                    }
    
                } else {
                    
                    if("1" == sbjtfrm.S_AGRMT_DV.value && "2" == sbjtfrm.S_SAC_SHP.value) { //일괄과제 이면서 연차정산
                        get2post(frm, "url=/REPT/N04_03_02.ozr");
                        uf_newWinNs('/pop/oz_popup.jsp','ozview3','1000','1000', frm);
                    } else {
                        if("1" == sbjtfrm.S_SAC_SHP.value ||"3" == sbjtfrm.S_SAC_SHP.value){    //일괄 및 단계정산
                            get2post(frm, "url=/REPT/N04_01_02.ozr");
                            uf_newWinNs('/pop/oz_popup.jsp','ozview1','1000','1000', frm);
                        }else if("2" == sbjtfrm.S_SAC_SHP.value){       //연차정산
                            get2post(frm, "url=/REPT/N04_02_02.ozr");
                            uf_newWinNs('/pop/oz_popup.jsp','ozview2','1000','1000', frm);
                        }
                    }
                }
            }
            
        }
       
    
        removeTempAttribute(frm);
    }
    
    
    
    
    /*****************************************************************
     * uf_CrovRegPop        이월금사용등록
     * @param
     * @return
    ******************************************************************/
    function uf_CrovRegPop(){
        
        var frm     = document.frm;
        var sbjtfrm = document.rtr_str_form;
     
        if(!bAutoSbjtSch()) return;     // 과제조회여부
    
        get2post(frm, "SbjtId="         + sbjtfrm.S_SBJT_ID.value);
        get2post(frm, "SbjtNm="         + sbjtfrm.S_SBJT_NM.value);
        get2post(frm, "BzClasCd="       + sbjtfrm.S_BZ_CLAS_CD.value);
        get2post(frm, "BzClasNm="       + sbjtfrm.S_BZ_CLAS_NM.value);
        get2post(frm, "AgrmtSeqNo="     + sbjtfrm.S_AGRMT_SEQ_NO.value);
        get2post(frm, "AgrmtInstId="    + sbjtfrm.S_AGRMT_INST_ID.value);
        get2post(frm, "SacPrgrSt="  + frm.frm_SacPrgrSt.value);
        
        uf_frmNewWinNs(document.frm, '/t03/t33/T33_01_30.jsp', 'TAXVIEW33', '800', '780');
        
        removeTempAttribute(frm);    
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
                <DataGridColumn id=\"\"                     dataField=\"\"                      itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
                <DataGridColumn id=\"HGRK_ITXP_NM\"           dataField=\"HGRK_ITXP_NM\"            headerText=\"비목\"               width=\"95\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_NM\"                dataField=\"ITXP_NM\"                 headerText=\"세부비목\"           width=\"140\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"AGRMT_CASH_LIM_AMT\"     dataField=\"AGRMT_CASH_LIM_AMT\"      headerText=\"협약한도\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"USE_APV_CASH_LIM_AMT\"   dataField=\"USE_APV_CASH_LIM_AMT\"    headerText=\"사용승인한도\"       width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"EXCTN_EXEC_AMT\"         dataField=\"EXCTN_EXEC_AMT\"          headerText=\"사용실행금액\"       width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_PLAN\"              dataField=\"SPOT_PLAN\"               headerText=\"현물계획금액\"       width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_USE\"               dataField=\"SPOT_USE\"                headerText=\"현물사용금액\"       width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPLM_AMT\"               dataField=\"SPLM_AMT\"                headerText=\"보충금액\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"EXCTN_BAL\"              dataField=\"EXCTN_BAL\"               headerText=\"사용잔액\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"CROV_AMT\"               dataField=\"CROV_AMT\"                headerText=\"차년도현금이월액\"   width=\"120\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_CROV_AMT\"          dataField=\"SPOT_CROV_AMT\"           headerText=\"차년도현물이월액\"   width=\"120\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"HGRK_ITXP_CD\"           dataField=\"HGRK_ITXP_CD\"            headerText=\"비목코드\"           width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_CD\"                dataField=\"ITXP_CD\"                 headerText=\"세부비목코드\"       width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPLM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
            
            if("EXCTN_EXEC_DT" == dataField){
                uf_DtlView_rMate(dataRow, rowIndex);
            }
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid.addEventListener("itemClick", itemClickHandler); //클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        //gridRoot.addEventListener("layoutComplete", setInitTotCnt);
        //gridRoot.addEventListener("layoutComplete", uf_search);   //rMateGrid 레이아웃 출력 후 조회시작
        
        //gridRoot.addEventListener("dataComplete", setTotCnt);   

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


$(document).ready(function() {
    
    // rMateGrid 초기화
    rMateGridInit();
    
    
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
});  

</script>




<script type="text/javascript">
var cnt = 0;
function setGridData(seqNo){    
    try{
        cnt = 0;
        var gridValue = [];
        
        //1. 신규과제
        if("G00000000000001" == seqNo){
            
            document.frm.CrovStr.value = "0";
            document.frm.CrdSetlMeth.value = "1";
            document.frm.AgrmtDv.value="1";

            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","AGRMT_CASH_LIM_AMT":"20000","USE_APV_CASH_LIM_AMT":"20000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"20000","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","AGRMT_CASH_LIM_AMT":"38000","USE_APV_CASH_LIM_AMT":"38000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"38000","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","AGRMT_CASH_LIM_AMT":"30000","USE_APV_CASH_LIM_AMT":"30000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"30000","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"30000","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","AGRMT_CASH_LIM_AMT":"9000","USE_APV_CASH_LIM_AMT":"9000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"9000","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","AGRMT_CASH_LIM_AMT":"2000","USE_APV_CASH_LIM_AMT":"2000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"2000","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","AGRMT_CASH_LIM_AMT":"1000","USE_APV_CASH_LIM_AMT":"1000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"1000","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};

            document.getElementById("TndwInfo").style.display = "none";
            document.getElementById("ExmnTndwDt").innerHTML = "";
            document.getElementById("ExmnTndwRsn").innerHTML = "";
            document.getElementById("SacPrgrSt").innerHTML="정산진행상태가 아닙니다.";
            
        //2. 진행과제
        }else if("G00000000000002" == seqNo){

            document.frm.CrovStr.value = "0";
            document.frm.CrdSetlMeth.value = "1";
            document.frm.AgrmtDv.value="1";

            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","AGRMT_CASH_LIM_AMT":"20000","USE_APV_CASH_LIM_AMT":"20000","EXCTN_EXEC_AMT":"220","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"19780","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","AGRMT_CASH_LIM_AMT":"38000","USE_APV_CASH_LIM_AMT":"38000","EXCTN_EXEC_AMT":"1100","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"36900","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","AGRMT_CASH_LIM_AMT":"30000","USE_APV_CASH_LIM_AMT":"30000","EXCTN_EXEC_AMT":"2500","SPOT_PLAN":"30000","SPOT_USE":"5000","SPLM_AMT":"0","EXCTN_BAL":"27500","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","AGRMT_CASH_LIM_AMT":"9000","USE_APV_CASH_LIM_AMT":"9000","EXCTN_EXEC_AMT":"22500","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"6750","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","AGRMT_CASH_LIM_AMT":"2000","USE_APV_CASH_LIM_AMT":"2000","EXCTN_EXEC_AMT":"0","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"2000","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","AGRMT_CASH_LIM_AMT":"1000","USE_APV_CASH_LIM_AMT":"1000","EXCTN_EXEC_AMT":"100","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"900","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};

            document.getElementById("TndwInfo").style.display = "none";
            document.getElementById("ExmnTndwDt").innerHTML = "";
            document.getElementById("ExmnTndwRsn").innerHTML = "";
            document.getElementById("SacPrgrSt").innerHTML="정산진행상태가 아닙니다.";
 
        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){

            document.frm.CrovStr.value = "1";
            document.frm.CrdSetlMeth.value = "1";
            document.frm.AgrmtDv.value="1";

            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","AGRMT_CASH_LIM_AMT":"20000","USE_APV_CASH_LIM_AMT":"20000","EXCTN_EXEC_AMT":"19500","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"500","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","AGRMT_CASH_LIM_AMT":"38000","USE_APV_CASH_LIM_AMT":"38000","EXCTN_EXEC_AMT":"37200","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"800","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","AGRMT_CASH_LIM_AMT":"30000","USE_APV_CASH_LIM_AMT":"30000","EXCTN_EXEC_AMT":"30000","SPOT_PLAN":"30000","SPOT_USE":"30000","SPLM_AMT":"0","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","AGRMT_CASH_LIM_AMT":"9000","USE_APV_CASH_LIM_AMT":"9000","EXCTN_EXEC_AMT":"8900","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"100","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","AGRMT_CASH_LIM_AMT":"2000","USE_APV_CASH_LIM_AMT":"2000","EXCTN_EXEC_AMT":"2000","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","AGRMT_CASH_LIM_AMT":"1000","USE_APV_CASH_LIM_AMT":"1000","EXCTN_EXEC_AMT":"1000","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"위탁연구개발비","ITXP_NM":"위탁연구개발비","AGRMT_CASH_LIM_AMT":"1000","USE_APV_CASH_LIM_AMT":"1000","EXCTN_EXEC_AMT":"1000","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0400","ITXP_CD":"B0401"};

            document.getElementById("TndwInfo").style.display = "none";
            document.getElementById("ExmnTndwDt").innerHTML = "";
            document.getElementById("ExmnTndwRsn").innerHTML = "";
            document.frm.DevStrDt.value="20130301";
            document.frm.AgrmtStDt.value="20140228";
            document.frm.LstSacAnnl.value="1";
            document.frm.PrblmSbjtSt.value="null";
            document.frm.frm_SacPrgrSt.value="0";
            document.getElementById("SacPrgrSt").innerHTML="보고서미제출";
            document.getElementById("S_INST_SBJT_PRGR_ST").value="10";
            document.getElementById("S_SAC_SN").value="1";

        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){

            document.frm.CrovStr.value = "0";
            document.frm.CrdSetlMeth.value = "1";
            document.frm.AgrmtDv.value="1";

            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","AGRMT_CASH_LIM_AMT":"20000","USE_APV_CASH_LIM_AMT":"20000","EXCTN_EXEC_AMT":"18637","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"1363","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","AGRMT_CASH_LIM_AMT":"38000","USE_APV_CASH_LIM_AMT":"38000","EXCTN_EXEC_AMT":"33819","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"4181","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","AGRMT_CASH_LIM_AMT":"30000","USE_APV_CASH_LIM_AMT":"30000","EXCTN_EXEC_AMT":"30000","SPOT_PLAN":"30000","SPOT_USE":"30000","SPLM_AMT":"0","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","AGRMT_CASH_LIM_AMT":"9000","USE_APV_CASH_LIM_AMT":"9000","EXCTN_EXEC_AMT":"8900","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"100","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","AGRMT_CASH_LIM_AMT":"2000","USE_APV_CASH_LIM_AMT":"2000","EXCTN_EXEC_AMT":"2000","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","AGRMT_CASH_LIM_AMT":"1000","USE_APV_CASH_LIM_AMT":"1000","EXCTN_EXEC_AMT":"910","SPOT_PLAN":"0","SPOT_USE":"0","SPLM_AMT":"0","EXCTN_BAL":"90","CROV_AMT":"0","SPOT_CROV_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101"};

            document.getElementById("TndwInfo").style.display = "none";
            document.getElementById("ExmnTndwDt").innerHTML = "";
            document.getElementById("ExmnTndwRsn").innerHTML = "";
            document.frm.DevStrDt.value="20130201";
            document.frm.AgrmtStDt.value="20140131";
            document.frm.LstSacAnnl.value="1";
            document.frm.PrblmSbjtSt.value="null";
            document.frm.frm_SacPrgrSt.value="1";
            document.getElementById("SacPrgrSt").innerHTML="보고서제출완료";
            document.getElementById("S_INST_SBJT_PRGR_ST").value="07";
            document.getElementById("S_SAC_SN").value="0";

        }
                


    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}

function setData(seqNo){
    
    if(!seqNo || typeof seqNo == "udnefined" || seqNo == "") return;
    
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