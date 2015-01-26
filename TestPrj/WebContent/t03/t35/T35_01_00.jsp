<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T35_01_00.jsp
 *   Description        : 연구비상시점검
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

<title>연구비상시점검 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t34/T34_01_00.jsp'); return false;" class="menu_txt">정산진행현황</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t34/T34_01_00.jsp'); return false;" class="menu_3dep">정산진행 현황</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t35/T35_01_00.jsp'); return false;" class="menu_txt_on">과제별 상시점검</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t35/T35_01_00.jsp'); return false;" class="menu_3dep_on">연구비상시점검</a></li>
                        
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
            
                <p class="title"><img src="/images/pefo/u35_01_00_t.gif" alt="연구비상시점검"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>온라인정산</li>
                       <li><img src="/images/common/arr.gif" alt=" " />과제별 상시점검</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">연구비상시점검</span></li>
						
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
            <input type="hidden" name="frm_SacPrgrSt"                                   value=""  />
            <input type="hidden" name="S_PMS_ID"                                        value=""  />
            <input type="hidden" name="S_AGRMT_SEQ_NO"                                  value=""  />
            <input type="hidden" name="S_AGRMT_INST_ID"                                 value=""  />
            <input type="hidden" name="S_BZ_CLAS_CD"                                    value=""  />
            <input type="hidden" name="docKey"                id="docKey"               value=""  />                  <!-- 리턴결과값(등록키) -->
            <input type="hidden" name="docNo"                 id="docNo"                value=""  />                  <!-- 리턴결과값(등록파일시퀸스) -->
            <input type="hidden" name="docName"               id="docName"              value=""  />                  <!-- 리턴결과값(등록파일명) -->
            <input type="hidden" name="methodName"            id="methodName"           value=""  />                  <!-- 메소드명 -->    
            <input type="hidden" name="AgrmtDv"                                         value=""  />
            <input type="hidden" name="PrsPgno"                                         value="0" />
            <input type="hidden" name="TrSupYn"                                         value=""  />
            <input type="hidden" name="evdcSeqNo"             id="evdcSeqNo"            value=""  />
            <input type="hidden" name="hidAgrmtSeqNo"         id="hidAgrmtSeqNo"        value=""  />
            <input type="hidden" name="hidAgrmtInstId"        id="hidAgrmtInstId"       value=""  />
            <input type="hidden" name="hidItxpRegDt"          id="hidItxpRegDt"         value=""  />
            <input type="hidden" name="hidItxpRegTm"          id="hidItxpRegTm"         value=""  />
            <input type="hidden" name="hidItxpRegSeq"         id="hidItxpRegSeq"        value=""  />
            <input type="hidden" name="hidBuitId"             id="hidBuitId"            value=""  />
            <input type="hidden" name="hidPrblmYn"            id="hidPrblmYn"           value=""  />
            
            <input type="hidden" name="SBJT_LIST_SCH_AUTO"    id="SBJT_LIST_SCH_AUTO"   value="N" /> 
            <input type="hidden" name="SBJT_DET_SCH_AUTO"     id="SBJT_DET_SCH_AUTO"    value="Y" /> 
            <div class="cb b10"></div>
            <h3>연구비상시점검 내역목록</h3>
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
                                <select name="SelItxpCd" id="SelItxpCd" onchange="SelItxpCdOnChange(this);" style="width:55%">
                                    <option value="">선택</option>
                                </select>                           
                            </td>
                            <th scope="col">세목</th>
                            <td>
                                <select name="SelDtlsItxpCd" id="SelDtlsItxpCd" style="width:55%" >
                                    <option value="">선택</option>
                                </select>                           
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">증빙구분</th>
                            <td>
                                <%=ComboUtil.getComboBox("RND134", "TrscEvdcDv", "", "", "", ComboUtil.OPT_ALL) %>
                            </td>
                            <th scope="col"><label for="txtUseSplyAmtFrom">금액</label></th>
                            <td>
                                <input type="text" name="txtUseSplyAmtFrom" id="txtUseSplyAmtFrom" style="width:80px;" class="inputl" maxlength="9" datatype="number" />
                                <span class="vb">~</span>
                                <input type="text" name="txtUseSplyAmtTo" id="txtUseSplyAmtTo" style="width:80px;" class="inputl" maxlength="9" datatype="number" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">사용일자</th>
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
                <div class="detail_boxt" id="detail_box" style="display:none;">
                    <p class="ar07">
                        <a href="#" onclick="uf_hide_detail_condition('btnDetailShow'); return false;"><img src="/bt/bt_sclose.gif" alt="숨김" /></a>
                    </p>
                    <div class="detail_boxc">
                        <fieldset>
                            <legend>연구비상시점검 내역목록 상세조회</legend>
                            <table width="680" summary="연구비상시점검 내역목록 상세조회" class="tbl_search01">
                            <caption>연구비상시점검 내역목록 상세조회</caption>
                            <colgroup>
                                <col width="15%" />
                                <col width="85%" />
                            </colgroup>
                            <tbody>
                            <tr>
                                <th scope="col">점검상태</th>
                                <td>
                                    <%=ComboUtil.getComboBox("RNDB16", "isptSt", "", "", "", ComboUtil.OPT_ALL) %>
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
                <a href="#" onclick="uf_show_detail_condition('btnDetailShow'); return false;"><img src="/bt/bt_search1.gif" alt="상세조회" class="vt"  id="btnDetailShow"/></a>
                <a href="#" onclick="uf_search(); return false;" class="bt_search" title="조회" ></a>
            </div>
            <!-- //조회 상세조회 버튼 end// -->
<!-- *************************  rMateGrid ************************* -->
            <!-- 총건수/인쇄 저장 버튼 start -->
            <div class="total_box b05">
                <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건/<span id="InqPrsTotlCnt2">0</span> 건]</p>
                <p class="fl l05"><a href="#" onclick="gridAllCheck_rMate(); return false;"><img src="/images/bt/bt_total.gif" alt="전체선택" valign="top" /></a></p>
                <p class="fr">
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
                <div class="fl">
                    <a href="#" class="bt_action9" title="사용실적보고서조회" onclick="fn_useoz(); return false;"><span class="bt_sp1">사용실적보고서조회</span></a> 
                    <a href="#" class="bt_action10" title="상시점검검토결과조회" onclick="fn_oz(); return false;"><span class="bt_sp1">상시점검검토결과조회</span></a> 
                </div>
                <a href="#" class="bt_action8" title="증빙파일일괄조회" onclick="getEDMS(); return false;"><span class="bt_sp1">증빙파일일괄조회</span></a> 
                <a href="#" class="bt_action6" title="정산서류등록" onclick="fn_FileReg(); return false;"><span class="bt_sp1">정산서류등록</span></a>
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

    //////////////////////// 비목,세목 시작  ////////////////////////////////
    function uf_onLoadPage(){
        //비목콤보생성
        if( isSubmit() ) return;    // 이중처리
        var frm = document.frm;

        frm.S_PMS_ID.value          = rtr_str_form.S_PMS_ID.value;
        frm.S_AGRMT_SEQ_NO.value    = rtr_str_form.S_AGRMT_SEQ_NO.value;
        frm.S_AGRMT_INST_ID.value   = rtr_str_form.S_AGRMT_INST_ID.value;
        frm.S_BZ_CLAS_CD.value      = rtr_str_form.S_BZ_CLAS_CD.value;

        rMateGridLayoutInit_rMate();
        
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    try{
                        document.body.setCapture(); // 'wait'
                        document.body.style.cursor =    "wait";
                        //SetData(); //Insert   Grid
                        onLoadPage(frm.S_AGRMT_INST_ID.value);
                        document.body.style.cursor =    "auto";
                        document.body.releaseCapture(); //setCapture()_Next
                    }finally{
                        reset_submit();
                        mkItxpCd();
                    }
                }
                , 1000);   // 1초후 실행 1000 = 1초
        
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
    //////////////////////// 비목,세목 끝 ////////////////////////////////

    //////////////////////////////////
    // 조회 처리
    //////////////////////////////////
    function uf_search(SchGb) {

        var frm = document.frm;

        if(null == rtr_str_form.SBJT_MAP_KEYS.value || ''==rtr_str_form.SBJT_MAP_KEYS.value ){
            alert("과제를 선택하세요.");
            return;
        }
                
        if( isSubmit() ) return;    // 이중처리
        //if(!chk_sbjt_sch()) return false; //유효성체크
        
        if(frm.txtUseSplyAmtFrom.value != ""&& frm.txtUseSplyAmtTo.value != "" ){
            if(Number(frm.txtUseSplyAmtFrom.value) > Number(frm.txtUseSplyAmtTo.value)){
                alert("금액을 올바르게 입력하세요");
                frm.txtUseSplyAmtFrom.value = "";
                frm.txtUseSplyAmtTo.value = "";
                return;
            }
        }
        
        rMateGridLayoutInit_rMate();
        //전체선택 해제처리
        selectorColumn = gridRoot.getObjectById("selector");
        selectorColumn.setAllItemSelected(false);
    
        
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
        //setGridData
        
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
        //=============================
        
    }

    /*****************************************************************
     * fn_FileReg        정산서류등록
     * @param
     * @return
    ******************************************************************/
    function fn_FileReg() {
        
        if(!bAutoSbjtSch()) return;     // 과제조회여부

        var frm     = document.frm;
        var frm_key = document.rtr_str_form;
        var sacSn   = frm_key.S_SAC_SN.value;
        
        // 환수대상기관 여부 확인
        if("Y"==frm.hidPrblmYn.value){
            alert("문제과제로 정산서류등록을 진행할 수 없습니다.");
            return;
        }
     
        get2post(frm, "hmpwRoleDv=" +frm_key.S_HMPW_ROLE_DV.value);
        get2post(frm, "rcmsGrpCd="  +frm_key.S_RCMS_GRP_CD.value);
        get2post(frm, "pmsId="      +frm_key.S_PMS_ID.value);   
        get2post(frm, "sbjtId="     +frm_key.S_SBJT_ID.value);   
        get2post(frm, "agrmtSeqNo=" +frm_key.S_AGRMT_SEQ_NO.value);  
        get2post(frm, "agrmtInstId="+frm_key.S_AGRMT_INST_ID.value);    

        if(sacSn == "" || sacSn == "null") {
            //uf_frmNewWinNs(document.frm, '/pop/T01_29_00.jsp', 'TAXVIEW21', '785', '480');   // 정산시작전 문서 등록
            uf_frmNewWinNs(document.frm, '/pop/T01_26_00.jsp', 'TAXVIEW21', '785', '480');   // 차이점 발견을 못하여 우선 기존 생성한 T01_26_00 페이지 사용
        } else {
            get2post(frm, "sacPrgrSt="  +frm.frm_SacPrgrSt.value);
            get2post(frm, "sacSn="      +sacSn);
            
            uf_frmNewWinNs(document.frm, '/pop/T01_26_00.jsp', 'TAXVIEW21', '785', '470');
        }
        
    }
    
    // 상시점검검토결과조회
    function fn_oz() {
        
        var frm = document.frm;
        
        // 과제조회 유무 확인
        if(!bAutoSbjtSch()) return;
     
        var sbjtfrm = document.rtr_str_form;
        
        if( isSubmit() ) return;    // 이중처리

        get2post(frm, "ozPage=U35");
        
        if(getGridRowCount_rMate()){
            var dataRow = gridRoot.getItemAt(0);
            // 점검진행상태
            if(dataRow.ISPT_PRGR_ST == "B17001" || dataRow.ISPT_PRGR_ST == "B17010"){
                
                // 2012년 규정개정 관련하여 개발시작일자 2012.09.01 이후 과제는 신규비목을 사용함
                // 2013.10.07 kbm : 타전담기관은 개발시작일을 2012.08.01 이후로 조회되도록 수정
                if( (sbjtfrm.S_PMS_ID.value == "G01" && sbjtfrm.S_DEV_STR_DT.value >= "20120901" && sbjtfrm.S_AGRMT_ST_DT.value >= "20120807") 
                        || (sbjtfrm.S_PMS_ID.value != "G01" && sbjtfrm.S_DEV_STR_DT.value >= "20120801" && sbjtfrm.S_AGRMT_ST_DT.value >= "20120807") ){
                    
                    get2post(frm, "sbjtId="             + dataRow.SBJT_ID);
                    get2post(frm, "prsSbjtStg="         + dataRow.PRS_SBJT_STG);
                    get2post(frm, "isptScheSn="         + dataRow.ISPT_SCHE_SN);
                    get2post(frm, "annl="               + dataRow.ANNL);
                    
                    get2post(frm, "url=/REPT/N03_05_02.ozr");
                    uf_newWinScrNo('/pop/oz_popup.jsp','ozview4','1000','1000', frm);
                }else{
                
                    get2post(frm, "sbjtId="             + dataRow.SBJT_ID);
                    get2post(frm, "prsSbjtStg="         + dataRow.PRS_SBJT_STG);
                    get2post(frm, "isptScheSn="         + dataRow.ISPT_SCHE_SN);
                    get2post(frm, "annl="               + dataRow.ANNL);
                    
                    get2post(frm, "url=/REPT/N03_05_01.ozr");
                    uf_newWinScrNo('/pop/oz_popup.jsp','ozview4','1000','1000', frm);
                }
                 
                removeTempAttribute(frm);       
                
            }else{
                alert("상시점검검토결과조회는 상시점검단계에서만 가능합니다.");
                return;  
            }
            
        }else{
            alert("상시점검검토결과조회는 상시점검단계에서만 가능합니다.");
            return;  
        }
        
    }
    
    // 사용실적보고서조회
    function fn_useoz() {
        
        var frm     = document.frm;
        var sbjtfrm = document.rtr_str_form;

        if(!bAutoSbjtSch()) return;     // 과제조회여부
        
        get2post(frm, "ozPage=U33");
        // 2012년 규정개정 관련하여 개발시작일자 2012.09.01 이후 과제는 신규비목을 사용함으로써, 사용실적보고서 차등 적용
        // 2013.10.07 kbm : 타전담기관은 개발시작일을 2012.08.01 이후로 조회되도록 수정
        if( (sbjtfrm.S_PMS_ID.value == "G01" && sbjtfrm.S_DEV_STR_DT.value >= "20120901" && sbjtfrm.S_AGRMT_ST_DT.value >= "20120807") 
                || (sbjtfrm.S_PMS_ID.value != "G01" && sbjtfrm.S_DEV_STR_DT.value >= "20120801" && sbjtfrm.S_AGRMT_ST_DT.value >= "20120807") ){
            
            //주관기관
            if("C" == sbjtfrm.S_INST_ROLE_DV.value){
                
                get2post(frm, "Sbjt_Id="    +sbjtfrm.S_SBJT_ID.value);
                get2post(frm, "prsSbjtStg=" +sbjtfrm.S_PRS_SBJT_STG.value);
                get2post(frm, "Annl="       +sbjtfrm.S_ANNL.value);
                
                get2post(frm, "url=/REPT/N03_01_05.ozr");
                uf_newWinScrNo('/pop/oz_popup.jsp','ozview1','1000','1000', frm);
    
            } else {
                
                get2post(frm, "Sbjt_Id="    +sbjtfrm.S_SBJT_ID.value);
                get2post(frm, "prsSbjtStg=" +sbjtfrm.S_PRS_SBJT_STG.value);
                get2post(frm, "Annl="       +sbjtfrm.S_ANNL.value);
                get2post(frm, "agrmtInstId="+sbjtfrm.S_AGRMT_INST_ID.value);
                
                get2post(frm, "url=/REPT/N03_01_05.ozr");
                uf_newWinScrNo('/pop/oz_popup.jsp','ozview1','1000','1000', frm);
            }
        }else{
            //주관기관
            if("C" == sbjtfrm.S_INST_ROLE_DV.value){
                
                get2post(frm, "Sbjt_Id="    +sbjtfrm.S_SBJT_ID.value);
                get2post(frm, "prsSbjtStg=" +sbjtfrm.S_PRS_SBJT_STG.value);
                get2post(frm, "Annl="       +sbjtfrm.S_ANNL.value);
                
                get2post(frm, "url=/REPT/N03_01_01.ozr");
                uf_newWinScrNo('/pop/oz_popup.jsp','ozview1','1000','1000', frm);
    
            } else {
                get2post(frm, "Sbjt_Id="    +sbjtfrm.S_SBJT_ID.value);
                get2post(frm, "prsSbjtStg=" +sbjtfrm.S_PRS_SBJT_STG.value);
                get2post(frm, "Annl="       +sbjtfrm.S_ANNL.value);
                get2post(frm, "agrmtInstId="+sbjtfrm.S_AGRMT_INST_ID.value);
                
                get2post(frm, "url=/REPT/N03_01_01.ozr");
                uf_newWinScrNo('/pop/oz_popup.jsp','ozview1','1000','1000', frm);
            }
        }
        removeTempAttribute(frm);
        
    }   

    function getEDMS() {
        
        var frm = document.frm;
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
        
        if(arrIdx.length <= 0){ 
            alert("선택 된 항목이 없습니다.");
            return; 
        }
        
        
        for(var i=0;i<arrIdx.length;i++){
            var dataRow = gridRoot.getItemAt(arrIdx[i]);
            
            edmsDocId    = edmsDocId    + dataRow.EDMS_DOC_ID + ";";    //EDMS문서ID
            butrId       = butrId       + dataRow.BUTR_ID + ";"; //사업비사용거래실적ID
            agrmtSeqNo   = agrmtSeqNo   + dataRow.AGRMT_SEQ_NO + ";";    //AGRMT_SEQ_NO
            agrmtInstId  = agrmtInstId  + dataRow.AGRMT_INST_ID + ";";   //AGRMT_INST_ID
            useRegDt     = useRegDt     + dataRow.USE_REG_DT + ";";  //USE_REG_DT
            useRegTm     = useRegTm     + dataRow.USE_REG_TM + ";";  //USE_REG_TM
            useRegSn     = useRegSn     + dataRow.USE_REG_SN + ";";  //USE_REG_SN
            buitId       = buitId       + dataRow.BUIT_ID + ";";   //사업비사용비목ID
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
        
        var usrId;          // 사용자ID
        var hmpwRoleDv;     // 사용자권한 
        var rcmsGrpCd;      // RCMS그룹코드 
        var frm     = document.frm;
        var frm_key = document.rtr_str_form;
        
        usrId               = "SMTEST";
        hmpwRoleDv          = frm_key.S_HMPW_ROLE_DV.value;
        rcmsGrpCd           = frm_key.S_RCMS_GRP_CD.value;  

        if(rcmsGrpCd == "MR042" || rcmsGrpCd == "MR043" || rcmsGrpCd == "MR023" ){
            hmpwRoleDv = "03";
        } 

        // EDMS첨부파일등록호출
        edmsUploadFileNew("frm", mode, edmsDocId, usrId, hmpwRoleDv, "/pop/file_popup.jsp?mode="+mode);
        
    }   
    
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
    

        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                	alert("저장되었습니다.");
                    reset_submit();
                }
                , 1000);   // 1초후 실행 1000 = 1초
                
    }    
</script>






<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" lockedColumnCount=\"2\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"false\"  >\
            <columns>\
                <DataGridColumn id=\"\"                   dataField=\"\"                    itemRenderer=\"IndexNoItem\"     width=\"40\" sortable=\"false\" textAlign=\"center\" />\
                <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"            headerText=\"선택\"               width=\"50\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"false\" />\
                <DataGridColumn id=\"TRSC_DT\"            dataField=\"TRSC_DT\"             headerText=\"사용일자\"           width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"TRSC_PFMC_REG_DT\"   dataField=\"TRSC_PFMC_REG_DT\"    headerText=\"등록일자\"           width=\"90\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"TRSC_EVDC_DV_NM\"    dataField=\"TRSC_EVDC_DV_NM\"     headerText=\"증빙구분\"           width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
                <DataGridColumn id=\"ITXP_NM\"            dataField=\"ITXP_NM\"             headerText=\"비목\"               width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세목\"               width=\"90\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"용도\"               width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"TRSC_PFMC_ST_NM\"    dataField=\"TRSC_PFMC_ST_NM\"     headerText=\"사용상태\"           width=\"130\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"          headerText=\"거래처\"             width=\"90\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"공급금액\"           width=\"80\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"부가세\"             width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"RTRT_FIX_AMT\"       dataField=\"RTRT_FIX_AMT\"        headerText=\"복원금액\"           width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"  dataField=\"VAT_PROC_RTRT_AMT\"   headerText=\"복원부가세금액\"     width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"LST_ISPT_ST_NM\"     dataField=\"LST_ISPT_ST_NM\"      headerText=\"점검상태\"           width=\"70\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ISPT_RSN_DV_NM\"     dataField=\"ISPT_RSN_DV_NM\"      headerText=\"점검사유구분\"       width=\"120\" visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"EXMN_OPI\"           dataField=\"EXMN_OPI\"            headerText=\"점검의견\"           width=\"100\" visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ISPT_DT\"            dataField=\"ISPT_DT\"             headerText=\"점검일자\"           width=\"80\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"TRSC_EVDC_DV\"       dataField=\"TRSC_EVDC_DV\"        headerText=\"증빙구분코드\"       width=\"120\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUTR_ID\"            dataField=\"BUTR_ID\"             headerText=\"사업비사용거래실적ID\" width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"EVDC_DCMT_CMAD_ID\"  dataField=\"EVDC_DCMT_CMAD_ID\"   headerText=\"증빙서류첨부문서ID\" width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SBJT_ID\"            dataField=\"SBJT_ID\"             headerText=\"SBJT_ID\"            width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PRS_SBJT_STG\"       dataField=\"PRS_SBJT_STG\"        headerText=\"PRS_SBJT_STG\"       width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ANNL\"               dataField=\"ANNL\"                headerText=\"ANNL\"               width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ISPT_SCHE_SN\"       dataField=\"ISPT_SCHE_SN\"        headerText=\"ISPT_SCHE_SN\"       width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ISPT_PRGR_ST\"       dataField=\"ISPT_PRGR_ST\"        headerText=\"ISPT_PRGR_ST\"       width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"EDMS_DOC_ID\"        dataField=\"EDMS_DOC_ID\"         headerText=\"EDMS문서ID\"         width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"AGRMT_SEQ_NO\"       dataField=\"AGRMT_SEQ_NO\"        headerText=\"AGRMT_SEQ_NO\"       width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"AGRMT_INST_ID\"      dataField=\"AGRMT_INST_ID\"       headerText=\"AGRMT_INST_ID\"      width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"USE_REG_DT\"         dataField=\"USE_REG_DT\"          headerText=\"USE_REG_DT\"         width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"USE_REG_TM\"         dataField=\"USE_REG_TM\"          headerText=\"USE_REG_TM\"         width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"USE_REG_SN\"         dataField=\"USE_REG_SN\"          headerText=\"USE_REG_SN\"         width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUIT_ID\"            dataField=\"BUIT_ID\"             headerText=\"사업비사용비목ID\"   width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
            
            if("TRSC_EVDC_DV_NM" == dataField){
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
        gridRoot.addEventListener("layoutComplete", setInitTotCnt);
        
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
    
    function uf_Click(rowIndex, dataRow){
        if(dataRow.TRSC_EVDC_DV != "E"){    //증빙구분코드
            uf_popup_evdc_dtls_brws(document.frm, dataRow.BUTR_ID, dataRow.TRSC_EVDC_DV);  //사업비사용거래실적ID
        }else{
            alert("기타증빙은 증빙파일을 확인하세요.");
        }
    }
    
    
    $(document).ready(function() {
        // rMateGrid 초기화
        rMateGridInit();
    }); 
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<script type="text/javascript">

function onLoadPage(seqNo){
	if(!seqNo) return;
	
	//1. 신규과제
	if("G00000000000001" == seqNo){
        
		document.frm.hidPrblmYn.value="N";
        document.frm.hidPrblmYn.value="N";

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

    	document.frm.hidPrblmYn.value="N";
        document.frm.hidPrblmYn.value="N";

        SelItxpCd[0] = "B0100";
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

    	document.frm.hidPrblmYn.value="N";
        document.frm.hidPrblmYn.value="N";

        SelItxpCd[0] = "B0100";
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

    	document.frm.hidPrblmYn.value="N";
        document.frm.hidPrblmYn.value="N";

        SelItxpCd[0] = "B0400";
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

        	gridValue[cnt++] = {"TRSC_DT":"2014-01-13","TRSC_PFMC_REG_DT":"2014-01-13","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"1분기 연구과제추진비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS   ","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0002","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000002","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-01-13","TRSC_PFMC_REG_DT":"2014-01-13","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"간접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 나 업체","USE_SPLY_AMT":"91","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0002","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000002","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-02-10","TRSC_PFMC_REG_DT":"2014-02-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"1월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS   ","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0002","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000002","USE_REG_DT":"20140210","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-02-24","TRSC_PFMC_REG_DT":"2014-02-11","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"세미나개최비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ A 가맹점","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0002","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000002","USE_REG_DT":"20140224","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-03-07","TRSC_PFMC_REG_DT":"2014-03-07","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"장비구입비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 가 업체","USE_SPLY_AMT":"100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0002","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000002","USE_REG_DT":"20140307","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};

        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){

        	gridValue[cnt++] = {"TRSC_DT":"2013-03-06","TRSC_PFMC_REG_DT":"2013-03-06","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"장비구입비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 가 업체","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"100 ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130306","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-03-21","TRSC_PFMC_REG_DT":"2013-03-21","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"1/4 연구과제추진비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130310","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-03-25","TRSC_PFMC_REG_DT":"2013-03-13","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"세미나 개최비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ A 가맹점","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"20  ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130321","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-04-10","TRSC_PFMC_REG_DT":"2013-04-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"3월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"2500","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130325","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-04-10","TRSC_PFMC_REG_DT":"2013-04-10","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 나 업체","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"9   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130410","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-04-23","TRSC_PFMC_REG_DT":"2013-03-27","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"장비구입비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ B 가맹점","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"100 ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130410","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-05-10","TRSC_PFMC_REG_DT":"2013-05-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"4월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130423","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-05-23","TRSC_PFMC_REG_DT":"2013-04-29","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"세미나 개최비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ C 가맹점","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"20  ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130510","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-06-04","TRSC_PFMC_REG_DT":"2013-06-04","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"2/4 연구과제추진비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130523","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-06-10","TRSC_PFMC_REG_DT":"2013-06-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"5월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130604","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-07-08","TRSC_PFMC_REG_DT":"2013-07-08","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 바 업체","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130610","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-07-10","TRSC_PFMC_REG_DT":"2013-07-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"6월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"2500","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"9   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130708","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-07-22","TRSC_PFMC_REG_DT":"2013-07-22","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"재료구입비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 다 업체","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130710","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-08-09","TRSC_PFMC_REG_DT":"2013-08-09","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"7월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"1818","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130722","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-09-03","TRSC_PFMC_REG_DT":"2013-09-03","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"3/4 연구과제추진비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130809","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-09-10","TRSC_PFMC_REG_DT":"2013-09-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"8월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130903","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-09-30","TRSC_PFMC_REG_DT":"2013-09-30","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"전문가활용비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130910","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-10-10","TRSC_PFMC_REG_DT":"2013-10-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"9월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"2500","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20130930","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-10-29","TRSC_PFMC_REG_DT":"2013-10-29","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"제작비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 라 업체","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20131010","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-11-08","TRSC_PFMC_REG_DT":"2013-11-08","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"10월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"1363","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20131029","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-11-25","TRSC_PFMC_REG_DT":"2013-11-01","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ E 가맹점","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"45  ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20131108","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-12-02","TRSC_PFMC_REG_DT":"2013-12-02","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"4/4 연구과제추진비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20131125","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-12-10","TRSC_PFMC_REG_DT":"2013-12-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"11월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20131202","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-12-23","TRSC_PFMC_REG_DT":"2013-12-17","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"훈련비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ D 가맹점","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20131210","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-01-10","TRSC_PFMC_REG_DT":"2014-01-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"12월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"823 ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20131223","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-01-13","TRSC_PFMC_REG_DT":"2014-01-13","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 마 업체","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0   ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20140110","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-02-10","TRSC_PFMC_REG_DT":"2014-02-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"1월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"27  ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-02-28","TRSC_PFMC_REG_DT":"2014-02-28","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"2월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"27  ","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0003","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000003","USE_REG_DT":"20140210","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};

        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){

        	gridValue[cnt++] = {"TRSC_DT":"2013-03-06","TRSC_PFMC_REG_DT":"2013-03-06","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"장비구입비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 가 업체","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"100","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130306","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-03-10","TRSC_PFMC_REG_DT":"2013-03-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"2월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130310","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-03-21","TRSC_PFMC_REG_DT":"2013-03-21","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"1/4 연구과제추진비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"20","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130321","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-03-25","TRSC_PFMC_REG_DT":"2013-03-13","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"세미나 개최비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ A 가맹점","USE_SPLY_AMT":"200","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130325","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-04-10","TRSC_PFMC_REG_DT":"2013-04-10","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 나 업체","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"9","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130410","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-04-10","TRSC_PFMC_REG_DT":"2013-04-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"3월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"100","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130410","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-04-23","TRSC_PFMC_REG_DT":"2013-03-27","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"장비구입비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ B 가맹점","USE_SPLY_AMT":"1000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130423","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-05-10","TRSC_PFMC_REG_DT":"2013-05-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"4월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"20","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130510","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-05-23","TRSC_PFMC_REG_DT":"2013-04-29","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"세미나 개최비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ C 가맹점","USE_SPLY_AMT":"200","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130523","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-06-04","TRSC_PFMC_REG_DT":"2013-06-04","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"2/4 연구과제추진비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130604","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-06-10","TRSC_PFMC_REG_DT":"2013-06-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"5월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130610","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-07-08","TRSC_PFMC_REG_DT":"2013-07-08","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 바 업체","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"9","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130708","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-07-10","TRSC_PFMC_REG_DT":"2013-07-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"6월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130710","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-07-22","TRSC_PFMC_REG_DT":"2013-07-22","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"재료구입비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 다 업체","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"1818","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130722","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-08-09","TRSC_PFMC_REG_DT":"2013-08-09","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"7월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130809","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-09-03","TRSC_PFMC_REG_DT":"2013-09-03","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"3/4 연구과제추진비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130903","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-09-10","TRSC_PFMC_REG_DT":"2013-09-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"8월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130910","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-09-30","TRSC_PFMC_REG_DT":"2013-09-30","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"전문가활용비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20130930","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-10-10","TRSC_PFMC_REG_DT":"2013-10-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"9월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20131010","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-10-29","TRSC_PFMC_REG_DT":"2013-10-29","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구시설·장비 및 재료비","MITM_NM":"제작비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 라 업체","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"1363","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20131029","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-11-08","TRSC_PFMC_REG_DT":"2013-11-08","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"10월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"45","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"45","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20131108","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-11-25","TRSC_PFMC_REG_DT":"2013-11-01","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ E 가맹점","USE_SPLY_AMT":"455","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20131125","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-12-02","TRSC_PFMC_REG_DT":"2013-12-02","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"4/4 연구과제추진비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20131202","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-12-10","TRSC_PFMC_REG_DT":"2013-12-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"11월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20131210","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2013-12-23","TRSC_PFMC_REG_DT":"2013-12-17","TRSC_EVDC_DV_NM":"카드","ITXP_NM":"직접비","DTLS_ITXP_NM":"연구활동비","MITM_NM":"훈련비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ D 가맹점","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"823","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"C","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20131223","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-01-10","TRSC_PFMC_REG_DT":"2014-01-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"12월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20140110","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-01-13","TRSC_PFMC_REG_DT":"2014-01-13","TRSC_EVDC_DV_NM":"전자세금계산서","ITXP_NM":"직접비","DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ 마 업체","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"27","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"T","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20140113","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};
        	gridValue[cnt++] = {"TRSC_DT":"2014-02-10","TRSC_PFMC_REG_DT":"2014-02-10","TRSC_EVDC_DV_NM":"기타","ITXP_NM":"직접비","DTLS_ITXP_NM":"인건비","MITM_NM":"1월 인건비","TRSC_PFMC_ST_NM":"정상완료","SPLR_CO_NM":"㈜ RCMS","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","LST_ISPT_ST_NM":"미확정","ISPT_RSN_DV_NM":"","EXMN_OPI":"","ISPT_DT":"","TRSC_EVDC_DV":"E","BUTR_ID":"E201312242251919","EVDC_DCMT_CMAD_ID":"D201312243022612","SBJT_ID":"TEST0004","PRS_SBJT_STG":"0","ANNL":"3","ISPT_SCHE_SN":"","ISPT_PRGR_ST":"","EDMS_DOC_ID":"1387882712850038","AGRMT_SEQ_NO":"G00000000000004","USE_REG_DT":"20140210","USE_REG_TM":"211457","USE_REG_SN":"1","BUIT_ID":"U201312243766104"};

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