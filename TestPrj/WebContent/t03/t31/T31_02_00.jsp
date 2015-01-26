<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T31_02_00.jsp 
 *   Description        : 연구비사용증빙관리 > 연구비증빙문서 조회
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

<title>연구비증빙문서조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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

                                    <li><a href="#" onclick="fn_url('/t03/t31/T31_01_00.jsp'); return false;" class="menu_3dep">연구비사용실행조회</a></li>

                                    <li><a href="#" onclick="fn_url('/t03/t31/T31_02_00.jsp'); return false;" class="menu_3dep_on">연구비증빙문서관리</a></li>
                        
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
            
                <p class="title"><img src="/images/pefo/u31_02_00_t.gif" alt="연구비증빙문서관리"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>온라인정산</li>
                       <li><img src="/images/common/arr.gif" alt=" " />연구비사용증빙관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">연구비증빙문서관리</span></li>
                        
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
            <!-- 2011.10.20 조회 조건 추가 비목, 세목 Start  -->
            <input type="hidden" name="S_PMS_ID" value="" />
            <input type="hidden" name="S_AGRMT_SEQ_NO" value="" />
            <input type="hidden" name="S_AGRMT_INST_ID" value="" />
            <input type="hidden" name="S_BZ_CLAS_CD" value="" />
            <!-- 2011.10.20 조회 조건 추가 비목, 세목 End  -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""    />                  <!-- 리턴결과값(등록키) -->
            <input type="hidden" id="docNo"                 name="docNo"                    value=""    />                  <!-- 리턴결과값(등록파일시퀸스) -->
            <input type="hidden" id="docName"               name="docName"                  value=""    />                  <!-- 리턴결과값(등록파일명) -->
            <input type="hidden" id="methodName"            name="methodName"               value=""    />                  <!-- 메소드명 -->    
            <input type="hidden" id="evdcSeqNo"             name="evdcSeqNo"                value=""    />
            <input type="hidden" id="hidAgrmtSeqNo"         name="hidAgrmtSeqNo"            value=""    />
            <input type="hidden" id="hidAgrmtInstId"        name="hidAgrmtInstId"           value=""    />
            <input type="hidden" id="hidItxpRegDt"          name="hidItxpRegDt"             value=""    />
            <input type="hidden" id="hidItxpRegTm"          name="hidItxpRegTm"             value=""    />
            <input type="hidden" id="hidItxpRegSeq"         name="hidItxpRegSeq"            value=""    />
            <input type="hidden" id="hidBuitId"             name="hidBuitId"                value=""    />
            
            <input type="hidden" name="PrsPgno" value="0" />
            <input type="hidden" name="TrSupYn" value="" />
            
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" /> 
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" /> 
            <div class="cb b10"></div>
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
                            <col width="38%" />
                            <col width="12%" />
                            <col width="38%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col">비목</th>
                            <td>
                                <select name="SelItxpCd" id="SelItxpCd" onchange="SelItxpCdOnChange(this);" style="width:170px">
                                    <option value="">선택</option>
                                </select>                           
                            </td>
                            <th scope="col">세목</th>
                            <td>
                                <select name="SelDtlsItxpCd" id="SelDtlsItxpCd" style="width:187px" >
                                    <option value="">선택</option>
                                </select>                           
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">증빙구분</th>
                            <td>
                                <%=ComboUtil.getComboBox("RND134", "TrscEvdcDv", "", "", "", ComboUtil.OPT_ALL) %>
                            </td>
                            <th scope="col"><label for="txtSplyAmtFrom">금액</label></th>
                            <td>
                                <input type="text" name="txtSplyAmtFrom" id="txtSplyAmtFrom" style="width:80px;" class="inputl" maxlength="9" datatype="number" />
                                <span class="vb">~</span>
                                <input type="text" name="txtSplyAmtTo" id="txtSplyAmtTo" style="width:80px;" class="inputl" maxlength="9" datatype="number" />
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
                <div class="search_boxb1" id="search_boxb"></div>
                <!-- 검색단 상세조회 start -->
                <div class="detail_boxt" id="detail_box"style="display:none;">
                    <p class="ar07">
                        <a href="#" onclick="uf_hide_detail_condition('btnDetailShow'); return false;"><img src="/bt/bt_sclose.gif" alt="숨김" /></a>
                    </p>
                    <div class="detail_boxc">
                        <fieldset>
                            <legend>증빙문서조회 상세조회</legend>
                            <table width="680" summary="증빙문서조회 상세조회" class="tbl_search01">
                            <caption>증빙문서조회 상세조회</caption>
                            <colgroup>
                                <col width="12%" />
                                <col width="30%" />
                                <col width="25%"/>
                                <col width="36%"/>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th scope="col">인정구분</th>
                                <td>
                                    <select id="selRejctProcSt" name="selRejctProcSt" style="width:150px;">
                                        <option value="" selected>전체</option>
                                        <option value="B15000">미확정</option>
                                        <option value="B15003">보완요청</option>
                                    </select>                               
                                </td>
                                <th scope="col">비목증빙파일등록상태</th>
                                <td>
                                    <select id="selJobState" name="selJobState" style="width:150px;">
                                        <option value="" selected>전체</option>
                                        <option value="1">정상</option>
                                        <option value="2">비정상</option>
                                    </select>                               
                                </td>
                            </tr>
                            </tbody>
                            </table>
                        </fieldset>
                    </div>
                </div>
                <div id="detail_boxb" style="display:none;"><img src="/images/pefo/search_box5.gif" alt=" " /></div>
                <!-- //검색단 상세조회 end// -->
            </div>
            <div class="cb"></div>
            <!-- //검색단 end// -->
            <!-- 조회 상세조회 버튼 start -->
            <div class="search_bt1 ar">
                <a href="#" onclick="uf_show_detail_condition(this.id); return false;" id="btnDetailShow"><img src="/bt/bt_search1.gif" alt="상세조회" class="vt" /></a>
                <a href="#" class="bt_search" title="조회" onclick="uf_search(); return false;"></a>
            </div>
            <!-- //조회 상세조회 버튼 end// -->
<!-- *************************  rMateGrid ************************* -->   
            <!-- 총건수/인쇄 저장 버튼 start -->
            <div class="total_box">
                <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건/<span id="InqPrsTotlCnt2">0</span> 건]</p>
                <p class="fl l05"><a href="#" onclick="gridAllCheck_rMate(); return false;"><img src="/images/bt/bt_total.gif" alt="전체선택" valign="top" /></a></p>
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
                <a href="#" class="bt_action8-1" title="증빙파일일괄조회" onclick="getEDMS(); return false;"><span class="bt_sp">증빙파일일괄조회</span></a> 
            </div>
            <!-- //action bt end// -->
            </form>
            <!-- 안내 가이드 start -->
            <div class="guide_box1" id="guide">
                <div class="guide_boxt1">
                    <p class="txt_title fl">연구비증빙문서 관리 안내</p> 
                    <p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
                </div>
                <div class="guide_boxc1">
                    <ul>
                        <li>본 '연구비증빙문서관리'에서는 RCMS로 집행된 모든 내역에 대해 <span class="txt_or">‘증빙 중심’으로 조회가 가능</span>합니다.</li>
                        <li>'증빙파일일괄조회'를 이용하여 업로드한 증빙파일 수정 및 확인이 가능합니다.</li>
                        <li>연구비사용실행 이후 '추가증빙 업로드, 상시점검결과통보와 관련된 증빙 수정, 온라인정산시 증빙수정'을 요청 받은 경우 증빙문서관리를 통해 <span class="txt_or">후속조치</span>를 하시기 바랍니다.</li>
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

    ////////////////////////2011.10.20 비목,세목 시작  ////////////////////////////////
    function uf_onLoadPage(){
        
        //비목콤보생성
        if( isSubmit() ) return;    // 이중처리
        var frm =   document.frm;

        frm.S_PMS_ID.value          = rtr_str_form.S_PMS_ID.value;
        frm.S_AGRMT_SEQ_NO.value    = rtr_str_form.S_AGRMT_SEQ_NO.value;
        frm.S_AGRMT_INST_ID.value   = rtr_str_form.S_AGRMT_INST_ID.value;
        frm.S_BZ_CLAS_CD.value      = rtr_str_form.S_BZ_CLAS_CD.value;
        
        setOnLoadPage(rtr_str_form.S_AGRMT_SEQ_NO.value);
        
    }
    
    // 비목 테이블 콤보
    var SelItxpCd = new Array();
    var SelItxpNm = new Array();
    var SelDtlsItxpCd = new Array();
    var SelDtlsItxpNm = new Array();

    function mkItxpCd() {
        
        var tObj = document.all["SelItxpCd"];
        var opt_name = "선택";

        tObj.options.length = 1;
        tObj.options[0] = new Option(opt_name);

        for(var i=0,j=SelItxpCd.length; i<j; i++){
            tObj.options[i+1] = new Option(SelItxpNm[i], SelItxpCd[i]);
        }
        
    }

    function SelItxpCdOnChange(obj) {
        
        if(typeof(obj)=="undefined" || obj==""){
            obj = document.all["SelItxpCd"];
            tObjIdx = idx;
        }

        var k = 0;
        var tObjIdx = obj.id.split("_")[1];
        var tObj = document.all["SelDtlsItxpCd"];
        var opt_name = "선택";
        if(obj.selectedIndex !=0 ){
            for(var j = 0;j < SelDtlsItxpCd.length; j++){
                if(obj.value == SelItxpCd[j]){k = j;}
            }
            tObj.options.length = SelDtlsItxpCd[k].length+1;
            tObj.options[0] = new Option(opt_name);

            for(var i=0; i < SelDtlsItxpCd[k].length; i++){
                tObj.options[i+1] = new Option(SelDtlsItxpNm[k][i], SelDtlsItxpCd[k][i]);
            }
        }else{
            tObj.options.length = 1;
            tObj.options[0] = new Option(opt_name);
        }
        
    }
    ////////////////////////2011.10.20 비목,세목 끝 ////////////////////////////////

    
    /******************************************************************
     * edmsReturnAction     EDMS 반환값 셋팅
     * @param
     * @return
    ******************************************************************/
    function edmsReturnAction(){
        fnSetEDMS();
    }

    function fnSetEDMS() {
        
        var frm = document.frm;

        if(frm.docKey.value == "") {
            alert("수정 된 증빙 파일이 없습니다.");
            return false;
        }
    
        frm.action = "/jsp/u03/u31/U31_02_00_u.jsp";
        frm.target = "sendIfrm";
        fn_submit(frm);

    }

    //////////////////////////////////
    //조회 처리
    //////////////////////////////////
    function uf_search(SchGb) {
        
        var frm = document.frm;

        if(null == rtr_str_form.SBJT_MAP_KEYS.value || ''==rtr_str_form.SBJT_MAP_KEYS.value ){
            alert("과제를 선택하세요.");
            return;
        }
                
        if( isSubmit() ) return;    // 이중처리
        //if(!chk_sbjt_sch()) return false; //유효성체크
        
        if(frm.txtSplyAmtFrom.value != ""&& frm.txtSplyAmtTo.value != "" ){
            if(Number(frm.txtSplyAmtFrom.value) > Number(frm.txtSplyAmtTo.value)){
                alert("금액을 올바르게 입력하세요");
                frm.txtSplyAmtFrom.value = "";
                frm.txtSplyAmtTo.value = "";
                return;
            }
        }
        
        //gridPgScrollSchStart(SchGb);
        rMateGridLayoutInit_rMate();    //그리드 초기화
        //전체선택 해제처리
        selectorColumn = gridRoot.getObjectById("selector");
        selectorColumn.setAllItemSelected(false);
    
        setData(rtr_str_form.S_AGRMT_SEQ_NO.value);
        
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
        uf_onLoadPage();
        rMateGridLayoutInit_rMate();    //그리드 초기화
        //=============================
        
    }
    
    
    

    //2011.10.31 EDMS 호출 테스트
    function getEDMS() {
        
        var frm = document.frm;
        var obj = gridRoot;
        var idx = -1;
        var edmsDocId   = "";
        var butrId      = "";
        var agrmtSeqNo  = "";
        var agrmtInstId = "";
        var useRegTm    = "";
        var useRegDt    = "";
        var useRegSn    = "";
        var buitId      = "";
        
        // 과제조회 유무 확인
        if(!bAutoSbjtSch()) return;

        selectorColumn = gridRoot.getObjectById("selector");    //체크된 ID 가져오기
        var arrIdx = selectorColumn.getSelectedIndices();       //체크된 row 가져오기
        
        if(arrIdx.length < 1){
            alert("선택 된 항목이 없습니다.");
            return false;
        }
        
        for(var i=0;i<arrIdx;i++){
            var dataRow = gridRoot.getItemAt(arrIdx[i]);
            
            edmsDocId    = edmsDocId    + dataRow.EDMS_DOC_ID + ";";    //EDMS문서ID
            butrId       = butrId       + dataRow.BUTR_ID + ";";        //사업비사용거래실적ID
            agrmtSeqNo   = agrmtSeqNo   + dataRow.AGRMT_SEQ_NO + ";";   //AGRMT_SEQ_NO
            agrmtInstId  = agrmtInstId  + dataRow.AGRMT_INST_ID + ";";  //AGRMT_INST_ID
            useRegDt     = useRegDt     + dataRow.USE_REG_DT + ";";     //USE_REG_DT
            useRegTm     = useRegTm     + dataRow.USE_REG_TM + ";";     //USE_REG_TM
            useRegSn     = useRegSn     + dataRow.USE_REG_SN + ";";     //USE_REG_SN
            buitId       = buitId       + dataRow.BUIT_ID + ";";        //사업비사용비목ID
        }
    
        frm.evdcSeqNo.value      = butrId;
        frm.hidAgrmtSeqNo.value  = agrmtSeqNo;
        frm.hidAgrmtInstId.value = agrmtInstId;
        frm.hidItxpRegDt.value   = useRegDt;
        frm.hidItxpRegTm.value   = useRegTm;
        frm.hidItxpRegSeq.value  = useRegSn;
        frm.hidBuitId.value      = buitId;
        
        uf_edmsUploadFile("get", edmsDocId);
                    
    }
    
    
    
    
    /******************************************************************
     * uf_edmsUploadFile        EDMS파일업로드 공통메소드 호출
     * @param
     * @return
    ******************************************************************/
    function uf_edmsUploadFile(mode, edmsDocId){
        
        var usrId;          //사용자ID
        var hmpwRoleDv;     //사용자권한 
        var rcmsGrpCd;      //RCMS그룹코드 
        var frm     = document.frm;
        var frm_key = document.rtr_str_form;
        
        usrId               = "SMTEST";
        hmpwRoleDv          = frm_key.S_HMPW_ROLE_DV.value;
        rcmsGrpCd           = frm_key.S_RCMS_GRP_CD.value;  

        if(rcmsGrpCd == "MR030" || rcmsGrpCd == "MR042" || rcmsGrpCd == "MR043" || rcmsGrpCd == "MR023" ){
            hmpwRoleDv = "03";
        } 

        // EDMS첨부파일등록호출
        edmsUploadFileNew("frm", mode, edmsDocId, usrId, hmpwRoleDv , "/pop/file_popup.jsp?mode=search");
        
    }
    
    
    
</script>


<!-- 그리드 이벤트 시작 -->
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






<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"2\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\"                   dataField=\"\"                    itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"            headerText=\"선택\"                   width=\"50\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"TRSC_PFMC_REG_DT\"   dataField=\"TRSC_PFMC_REG_DT\"    headerText=\"등록일자\"               width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_EVDC_DV_NM\"    dataField=\"TRSC_EVDC_DV_NM\"     headerText=\"증빙구분\"               width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
            <DataGridColumn id=\"ITXP_NM\"            dataField=\"ITXP_NM\"             headerText=\"비목\"                   width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세목\"                   width=\"90\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"용도\"                   width=\"90\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_PRMC_SC_NM\"    dataField=\"TRSC_PRMC_SC_NM\"     headerText=\"사용상태\"               width=\"150\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_DT\"      dataField=\"EXCTN_EXEC_DT\"       headerText=\"사용일자\"               width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"          headerText=\"거래처\"                 width=\"90\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"공급금액\"               width=\"80\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"부가세\"                 width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"RTRT_FIX_AMT\"       dataField=\"RTRT_FIX_AMT\"        headerText=\"복원금액\"               width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"  dataField=\"VAT_PROC_RTRT_AMT\"   headerText=\"복원부가세금액\"         width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"REJCT_PROC_ST\"      dataField=\"REJCT_PROC_ST\"       headerText=\"인정구분\"               width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"REJCT_RSN\"          dataField=\"REJCT_RSN\"           headerText=\"불인정사유\"             width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SAC_CMPL_RQST_CTT\"  dataField=\"SAC_CMPL_RQST_CTT\"   headerText=\"보완요청사유\"           width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"JOBSTATE_NM\"        dataField=\"JOBSTATE_NM\"         headerText=\"비목증빙파일등록상태\"   width=\"150\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_EVDC_DV\"       dataField=\"TRSC_EVDC_DV\"        headerText=\"증빙구분코드\"           width=\"120\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUTR_ID\"            dataField=\"BUTR_ID\"             headerText=\"사업비사용거래실적ID\"   width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EDMS_DOC_ID\"        dataField=\"EDMS_DOC_ID\"         headerText=\"EDMS문서ID\"             width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO\"       dataField=\"AGRMT_SEQ_NO\"        headerText=\"AGRMT_SEQ_NO\"           width=\"150\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_ID\"      dataField=\"AGRMT_INST_ID\"       headerText=\"AGRMT_INST_ID\"          width=\"150\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_REG_DT\"         dataField=\"USE_REG_DT\"          headerText=\"USE_REG_DT\"             width=\"150\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_REG_TM\"         dataField=\"USE_REG_TM\"          headerText=\"USE_REG_TM\"             width=\"150\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_REG_SN\"         dataField=\"USE_REG_SN\"          headerText=\"USE_REG_SN\"             width=\"150\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUIT_ID\"            dataField=\"BUIT_ID\"             headerText=\"사업비사용비목ID\"       width=\"150\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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

        
        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var columns = dataGrid.getColumns();
            var ii = 0;
            var jj = 0;
            //for ( var i = 0; i < columns.length; i++){
            for ( var i = 1; i < columns.length; i++){
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
            
            if("TRSC_EVDC_DV_NM" == dataField){ //증빙구분
                if(dataRow.TRSC_EVDC_DV != "E"){    //증빙구분코드
                    uf_popup_evdc_dtls_brws(document.frm, dataRow.BUTR_ID, dataRow.TRSC_EVDC_DV);   //사업비사용거래실적ID:BUTR_ID
                }else{
                    alert("기타증빙은 증빙파일을 확인하세요.");
                }
                
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
    
    
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->





<script type="text/javascript">

//setOnLoadPage(rtr_str_form.S_AGRMT_SEQ_NO.value);
function setOnLoadPage(seqNo){
	
	if(!seqNo || typeof seqNo == "udnefined" || seqNo == "") return;
	
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                try{
                    document.body.setCapture(); // 'wait'
                    document.body.style.cursor =    "wait";
                    //SetData(); //Insert   Grid
                    setOnLoadData(seqNo); //Insert    Grid
                    document.body.style.cursor =    "auto";
                    document.body.releaseCapture(); //setCapture()_Next
                }finally{
                    reset_submit();
                    mkItxpCd();
                }
            }
            , 1000);   // 1초후 실행 1000 = 1초
}         

function setOnLoadData(seqNo){
    
	//1. 신규과제
	if("G00000000000001" == seqNo){
            
		SelItxpCd[0] = "B0300";
        SelItxpNm[0] = "간접비";
        SelDtlsItxpCd[0] = new Array();
        SelDtlsItxpNm[0] = new Array();
        SelDtlsItxpCd[0][0] = "B0301";
        SelDtlsItxpNm[0][0] = "간접비";
        SelItxpCd[1] = "B0100";
        SelItxpNm[1] = "인건비";
        SelDtlsItxpCd[1] = new Array();
        SelDtlsItxpNm[1] = new Array();
        SelDtlsItxpCd[1][0] = "B0101";
        SelDtlsItxpNm[1][0] = "내부인건비";
        SelItxpCd[2] = "B0200";
        SelItxpNm[2] = "직접비";
        SelDtlsItxpCd[2] = new Array();
        SelDtlsItxpNm[2] = new Array();
        SelDtlsItxpCd[2][0] = "B0203";
        SelDtlsItxpNm[2][0] = "연구수당";
        SelDtlsItxpCd[2][1] = "B0201";
        SelDtlsItxpNm[2][1] = "연구시설·장비 및 재료비";
        SelDtlsItxpCd[2][2] = "B0202";
        SelDtlsItxpNm[2][2] = "연구활동비";

    //2. 진행과제
	}else if("G00000000000002" == seqNo){

    	SelItxpNm[0] = "인건비";
        SelDtlsItxpCd[0] = new Array();
        SelDtlsItxpNm[0] = new Array();
        SelDtlsItxpCd[0][0] = "B0101";
        SelDtlsItxpNm[0][0] = "내부인건비";
        SelDtlsItxpCd[0][1] = "B0102";
        SelDtlsItxpNm[0][1] = "외부인건비";
        SelItxpCd[1] = "B0200";
        SelItxpNm[1] = "직접비";
        SelDtlsItxpCd[1] = new Array();
        SelDtlsItxpNm[1] = new Array();
        SelDtlsItxpCd[1][0] = "B0201";
        SelDtlsItxpNm[1][0] = "연구시설·장비 및 재료비";
        SelDtlsItxpCd[1][1] = "B0202";
        SelDtlsItxpNm[1][1] = "연구활동비";

    //3. 정산과제(보고서 미제출)
    }else if("G00000000000003" == seqNo){

    	SelItxpNm[0] = "인건비";
        SelDtlsItxpCd[0] = new Array();
        SelDtlsItxpNm[0] = new Array();
        SelDtlsItxpCd[0][0] = "B0101";
        SelDtlsItxpNm[0][0] = "내부인건비";
        SelDtlsItxpCd[0][1] = "B0102";
        SelDtlsItxpNm[0][1] = "외부인건비";
        SelItxpCd[1] = "B0200";
        SelItxpNm[1] = "직접비";
        SelDtlsItxpCd[1] = new Array();
        SelDtlsItxpNm[1] = new Array();
        SelDtlsItxpCd[1][0] = "B0202";
        SelDtlsItxpNm[1][0] = "연구활동비";

    //4. 정산과제(보고서 제출 완료)
    }else if("G00000000000004" == seqNo){

    	SelItxpNm[0] = "위탁연구개발비";
        SelDtlsItxpCd[0] = new Array();
        SelDtlsItxpNm[0] = new Array();
        SelDtlsItxpCd[0][0] = "B0401";
        SelDtlsItxpNm[0][0] = "위탁연구개발비";
        SelItxpCd[1] = "B0200";
        SelItxpNm[1] = "직접비";
        SelDtlsItxpCd[1] = new Array();
        SelDtlsItxpNm[1] = new Array();
        SelDtlsItxpCd[1][0] = "B0202";
        SelDtlsItxpNm[1][0] = "연구활동비";

    }
                
}





var cnt = 0;
function setGridData(seqNo){    
    try{
        cnt = 0;
        var gridValue = [];
        
        //1. 신규과제
        if("G00000000000001" == seqNo){
            
      
        //2. 진행과제
        }else if("G00000000000002" == seqNo){

        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-01-13","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"1분기 연구과제추진비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-01-13","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-01-13","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"간접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-01-13","SPLR_CO_NM":"㈜ 나 업체","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-02-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"1월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-02-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140210","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-02-11","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"세미나개최비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-02-24","SPLR_CO_NM":"㈜ A 가맹점","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140224","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-03-07","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"장비구입비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-03-07","SPLR_CO_NM":"㈜ 가 업체","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140407","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};

        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){

        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-03-06","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"장비구입비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-03-06","SPLR_CO_NM":"㈜ 가 업체","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-03-21","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"1/4 연구과제추진비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-03-21","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-03-13","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"세미나 개최비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-03-25","SPLR_CO_NM":"㈜ A 가맹점","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-04-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"3월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-04-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"2500","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-04-10","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"간접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-04-10","SPLR_CO_NM":"㈜ 나 업체","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-03-27","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"장비구입비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-04-23","SPLR_CO_NM":"㈜ B 가맹점","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-05-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"4월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-05-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-04-29","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"세미나 개최비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-05-23","SPLR_CO_NM":"㈜ C 가맹점","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-06-04","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"2/4 연구과제추진비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-06-04","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-06-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"5월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-06-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-07-08","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"간접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-07-08","SPLR_CO_NM":"㈜ 바 업체","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-07-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"6월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-07-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"2500","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-07-22","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"재료구입비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-07-22","SPLR_CO_NM":"㈜ 다 업체","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-08-09","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"7월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-08-09","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-09-03","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"3/4 연구과제추진비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-09-03","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-09-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"8월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-09-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-09-30","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"전문가활용비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-09-30","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-10-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"9월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-10-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"2500","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-10-29","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"제작비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-10-29","SPLR_CO_NM":"㈜ 라 업체","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-11-08","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"10월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-11-08","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-11-01","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"간접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-11-25","SPLR_CO_NM":"㈜ E 가맹점","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-12-02","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"4/4 연구과제추진비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-12-02","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-12-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"11월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-12-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-12-17","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"훈련비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-12-23","SPLR_CO_NM":"㈜ D 가맹점","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-01-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"12월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-01-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-01-13","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"간접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-01-13","SPLR_CO_NM":"㈜ 마 업체","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-02-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"1월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-02-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-02-28","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"2월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-02-28","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-03-06","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"장비구입비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-03-06","SPLR_CO_NM":"㈜ 가 업체","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-03-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"2월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-03-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-03-21","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"1/4 연구과제추진비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-03-21","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-03-13","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"세미나 개최비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-03-25","SPLR_CO_NM":"㈜ A 가맹점","USE_SPLY_AMT":"200","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-04-10","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"간접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-04-10","SPLR_CO_NM":"㈜ 나 업체","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-04-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"3월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-04-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-03-27","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"장비구입비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-04-23","SPLR_CO_NM":"㈜ B 가맹점","USE_SPLY_AMT":"1000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-05-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"4월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-05-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-04-29","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"세미나 개최비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-05-23","SPLR_CO_NM":"㈜ C 가맹점","USE_SPLY_AMT":"200","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-06-04","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"2/4 연구과제추진비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-06-04","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-06-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"5월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-06-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-07-08","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"간접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-07-08","SPLR_CO_NM":"㈜ 바 업체","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-07-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"6월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-07-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-07-22","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"재료구입비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-07-22","SPLR_CO_NM":"㈜ 다 업체","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-08-09","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"7월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-08-09","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-09-03","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"3/4 연구과제추진비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-09-03","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-09-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"8월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-09-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-09-30","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"전문가활용비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-09-30","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-10-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"9월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-10-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-10-29","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"제작비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-10-29","SPLR_CO_NM":"㈜ 라 업체","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-11-08","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"10월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-11-08","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"45","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-11-01","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"간접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-11-25","SPLR_CO_NM":"㈜ E 가맹점","USE_SPLY_AMT":"455","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-12-02","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"4/4 연구과제추진비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-12-02","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-12-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"11월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-12-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2013-12-17","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"훈련비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2013-12-23","SPLR_CO_NM":"㈜ D 가맹점","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-01-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"12월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-01-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-01-13","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"간접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-01-13","SPLR_CO_NM":"㈜ 마 업체","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_PFMC_REG_DT":"2014-02-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"1월 인건비","TRSC_PRMC_SC_NM":"정상완료","EXCTN_EXEC_DT":"2014-02-10","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","REJCT_PROC_ST":"미확정","REJCT_RSN":"","SAC_CMPL_RQST_CTT":"","JOBSTATE_NM":"정상","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};

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