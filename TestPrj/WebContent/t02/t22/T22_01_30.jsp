<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T22_01_30.jsp 
 *   Description        : 연구비부분취소요청 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.03                     예기해             
 *
 *  @author     예기해 
 *  @Since      
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- //2014 그리드 교체 작업 head start -->
<%@ include file="/inc/jspHead_popup.jsp"%>
<!-- //2014 그리드 교체 작업 head end -->

<%
    String INQ_STR_DT = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "InqStrDt")); // 조회시작날짜
    String INQ_END_DT = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "InqEndDt")); // 조회종료날짜
    String PayPlanDtlsRegNcnt = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "PayPlanDtlsRegNcnt")); // 연구비보전요청건수
    String PlanAmt = StringUtil.null2void(SessionUtil.getRequestValue(
            request, "PlanAmt")); // 연구비보전요청금액
    String VrtlAcctNo = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "VrtlAcctNo")); // 가상계좌번호
    String EXIST_VACC = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "EXIST_VACC")); // 가상계좌발급유무
    String AgrmtSeqNo = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "pAgrmtSeqNo")); // 협약일련번호
    String AgrmtInstId = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "pAgrmtInstId")); // 협약기관ID

    String mapKey = StringUtil.null2void(SessionUtil.getRequestValue(
            request, "AUTO_MAP_KEY"));

    String ButrId[] = request.getParameterValues("ButrId"); // 사업비사용거래실적ID
    String TrscEvdcDv[] = request.getParameterValues("TrscEvdcDv"); // 증빙구분

    String gridHeight = "300";

    
    String AgrmtSeqNo2 = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "AgrmtSeqNo")); // 협약일련번호
%>

<script type="text/javascript">

    //rMateGrid 관련 객체
    var flashVars_itxp = "dataType=json&bridgeName=gridBridge_itxp";
    var gridApp_itxp; // 플래시 기본 객체
    var gridData_itxp; // 그리드 데이터 담기
    var gridRoot_itxp; // 데이타와 그리드를 포함하는 객체
    var dataGrid_itxp; // 그리드 정보 담기
    var collection_itxp; // 그리드의 데이타 객체
    
    //rMateGrid 로딩이 완료 된 후 조회를 시작
    var isGrid_itxp = false;

    
    var agrmtSeqNo = "<%=AgrmtSeqNo2%>";
    
</script>


<!-- head title -->
<div class="title">
    <p class="pop_title">연구비부분취소 요청</p>
</div>
<!-- //head title// -->

<div id="body">
    <form name="frm" method="post">
        <input type="hidden" id="S_NPRF_INST_YN" name="S_NPRF_INST_YN"
            value="<%//=null2void(result0.getNprfInstYn())%>"> <input
            type="hidden" id="Evdc_Dv" name="Evdc_Dv"
            value="<%=StringUtil.null2void(TrscEvdcDv[0])%>" />
        <!-- 증빙구분                    -->
        <input type="hidden" id="itxp_cnt" name="itxp_cnt" value="1" />
        <!-- 비목등록건수 -->
        <input type="hidden" id="dockeyNo" name="dockeyNo" value="" />
        <!-- 선택된 증빙테이블키 -->
        <input type="hidden" id="doc_dv" name="doc_dv" value="" />
        <!-- 증빙서류/인건비내역 -->
        <input type="hidden" id="docKey" name="docKey" value="" />
        <!-- 생성된EDMS_dockey -->
        <input type="hidden" id="docName" name="docName" value="" />
        <!-- 리턴결과값(등록파일명) -->
        <input type="hidden" id="attr98" name="attr98" value="" />
        <!-- 리턴결과값(등록파일명) -->
        <input type="hidden" id="attr99" name="attr99" value="" />
        <!-- 리턴결과값(등록파일갯수) -->
        <input type="hidden" id="p_rchrInfo" name="p_rchrInfo" value="" />
        <!-- 인건비내역 -->
        <input type="hidden" id="methodName" name="methodName" value="" />
        <!-- 메소드명 -->

        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>연구비부분취소요청</h3>
            <div class="t10"></div>

            <!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->
            <!-- 그리드 Start -->
            <div class="t05">
                <script>
                     rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "<%=gridHeight%>", "#FFFFFF", "transparent");
                     </script>
            </div>
            <!-- 그리드 End -->
            <!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->

            <div id="grpView" style="display: none;">
                <div class="t10"></div>
                <h3>비목우선연결증빙목록</h3>
                <!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->
                <!-- 그리드 Start -->
                <div class="t05">
                    <script>rMateGridCreate("grid_itxp", "/rMateGrid/Component/rMateGridWeb", flashVars_itxp, "100%", "167", "#FFFFFF", "transparent");</script>
                </div>
                <!-- 그리드 End -->
                <!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->

                <!-- 가이드 start -->
                <div class="pop_line_gbox">
                    <div class="pop_line_gboxc">
                        <ul>
                            <li>비목우선으로 등록된 내역은 증빙문서 교체시 연결된 비목의 문서가 함께 변경됩니다.</li>
                            <li>비목우선 전체 내역에 맞추어 증빙문서를 작성하시기 바랍니다.</li>
                        </ul>
                    </div>
                </div>
                <!-- //가이드 end// -->
            </div>

            <!-- 취소사유 리스트 start -->
            <div class="t10 b25 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0"
                    summary="취소사유 리스트" class="tbl_type02">
                    <caption>취소사유 리스트</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row"><label for="ApcRsn">취소사유</label></th>
                            <td class="ll"><input type="text" name="ApcRsn" id="ApcRsn"
                                title="취소사유입력" class="inputl" style="width: 550px;" /></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- //취소사유 리스트 end// -->
            <!-- 가이드 start -->
            <div class="pop_line_gbox">
                <div class="pop_line_gboxc">
                    <ul>
                        <li>부분취소금액은 공급금액보다 작거나 같게 또는 공급금액 + 부가세액과 동일하게 입력해야 합니다.</li>
                        <li>부분취소내용에 맞게 증빙문서 및 인건비상세를 수정하셔야 합니다.</li>
                    </ul>
                </div>
            </div>
            <!-- //가이드 end// -->
            <!-- action bt start -->
            <div class="pop_action_bt ar">
                <a href="#" class="bt_action2-1" title="저장"
                    onclick="uf_save(); return false;"><span class="bt_sp">저장</span></a>
            </div>
            <!-- //action bt end// -->
        </div>
    </form>
    <!-- //content end// -->
</div>

<!-- //2014 그리드 교체 작업 footer start -->
<%@ include file="/inc/jspFooter_popup.jsp"%>
<!-- //2014 그리드 교체 작업 footer end -->

<script type="text/javascript">

    /******************************************************************
     * uf_save      연구비이체취소요청
     * @param
     * @return
    ******************************************************************/
    function uf_save(){     
        var frm         = document.frm;     
        var vcnt        = 0;
        var sumAmt      = 0;
        var planAmt     = 0;
        var allAmt      = 0;
        var vatAmt      = 0;
        var arr,arr_amt;
        var arr_sum     = 0;
        var total_sum   = 0;
        var existAllCan = false;
        var NprfInstYn  = frm.S_NPRF_INST_YN.value;
        
        for(var i=0; i<getGridRowCount_rMate(); i++) {          
            allAmt += Number(gridRoot.getItemFieldAt(i, "TOTL_AMT"));           //취소가능금액
            sumAmt += Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT"));       //부분취소금액
            vatAmt += Number(gridRoot.getItemFieldAt(i, "USE_VAT_AMT"));        //부가세액
        }
        
        if(sumAmt == 0){
            alert("부분취소금액을 입력하세요");
            return;
        }
        
        for(var i=0; i<collection.getLength(); i++) {
            var canAmt = Number(gridRoot.getItemFieldAt(i, "RTRT_FIX_SPLY_AMT")) + Number(gridRoot.getItemFieldAt(i, "RTRT_FIX_VAT_AMT"));      // 취소금액
            if(Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) < 0){
                alert("부분취소금액은 양수만 가능합니다.");
                return;
            }
            
            if(Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) > Number(gridRoot.getItemFieldAt(i, "TOTL_AMT"))){
                alert("부분취소금액이 취소가능금액보다 큽니다.");
                return;
            }
                        
            if(Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) > (Number(gridRoot.getItemFieldAt(i, "USE_SPLY_AMT")) - Number(gridRoot.getItemFieldAt(i, "RTRT_FIX_SPLY_AMT"))) 
                &&  Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) < Number(gridRoot.getItemFieldAt(i, "TOTL_AMT"))){
                alert("부가세액까지 부분취소할 수 없습니다.");
                return;
            }
            
            // 비목이 전체 취소되었는지 확인.
            if (Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) == Number(gridRoot.getItemFieldAt(i, "TOTL_AMT"))) {
                existAllCan = true;
            } else {
                
                if ((vatAmt > 0 && gridRoot.getItemFieldAt(i, "VAT_PROC_D") != "B01003") && existAllCan) {
                    alert("비목전체 취소건이 있는 경우 비목의 일부금액 취소는 불가능합니다.");
                    return;
                }
            } 
            
            
            for(var i=0; i<collection.getLength(); i++) {
                if( !(("B0301" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "Y" == NprfInstYn) 
                        || ("B0206" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "E"!=frm.Evdc_Dv.value)
                        || ("B0206006" == gridRoot.getItemFieldAt(i, "SUB_DTLS_ITXP_CD"))) ){
                        if(Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) > 0 && gridRoot.getItemFieldAt(i, "POP_EXE") == "N") {
                            alert("증빙수정작업이 실행되지 않은 건이 있습니다. 증빙수정 후 저장하시기 바랍니다.");
                            return;
                        }
                }               
            }           
        }
    
        // 최종적으로 취소가능금액 전체가 아닌 경우 공급가액내로만 취소 가능.
        //   * 비목별로 공급금액 내인지 여부는 위의 루프에서 체크하고 있음.
        if(sumAmt != allAmt) {
            
            var butrUseSplyAmt  = Number(gridRoot.getItemFieldAt(0, "BUTR_USE_SPLY_AMT"));
            var butrUseVatAmt   = Number(gridRoot.getItemFieldAt(0, "BUTR_USE_VAT_AMT"));
            var butrRtrtSplyAmt = Number(gridRoot.getItemFieldAt(0, "BUTR_RTRT_SPLY_AMT"));
            var butrRtrtVatAmt  = Number(gridRoot.getItemFieldAt(0, "BUTR_RTRT_VAT_AMT"));
            
            if(sumAmt > (butrUseSplyAmt - butrRtrtSplyAmt)) {
                alert("부가세액은 전체 취소시 취소 가능합니다.");
                return;
            }
        }
    
        //-----------------------------------
        //  증빙서류 체크 제외 상황
        //  1.비영리기관의 간접비
        //  2.연구과제추진비 세목의 전자증빙
        //  3.연구과제추진비 세세목의 기타증빙
        //-----------------------------------       
        for(var i=0; i<collection.getLength(); i++) {
            if( !(("B0301" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "Y" == NprfInstYn) 
                    || ("B0206" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "E"!=frm.Evdc_Dv.value)
                    || ("B0206006" == gridRoot.getItemFieldAt(i, "SUB_DTLS_ITXP_CD"))) ){
                if(null==gridRoot.getItemFieldAt(i, "FILE_NM") || ""==gridRoot.getItemFieldAt(i, "FILE_NM")){
                    alert("증빙서류를 등록해주세요.");
                    return;
                }
            }           
        }
        
        //-----------------------------------
        //  인건비내역 체크(인건비,연구수당인경우만 등록필수)
        //-----------------------------------       
        for(var i=0; i<collection.getLength(); i++) {
            if(uf_AdtnRegItxpChk(gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD"), false)){
                if(null==gridRoot.getItemFieldAt(i, "ADTN_INFO_CTT") || ""==gridRoot.getItemFieldAt(i, "ADTN_INFO_CTT")){
                    alert("인건비상세를 등록해주세요.");
                    return;
                }else{
                    arr=gridRoot.getItemFieldAt(i, "ADTN_INFO_CTT").split("\|");
                    for(var j=0;j<arr.length;j++){
                        arr_amt = arr[j].split(",");
                        if(typeof arr_amt[5] != "undefined"){
                            arr_sum += Number(arr_amt[5].replace("\\",''));
                        }
                    }
                    total_sum += (gridRoot.getItemFieldAt(i, "TOTL_AMT") - gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT"));

                    /*// 20140408 연구시설장비구입비로 강제 데이터 변경으로 인해 금액 체크 추석처리
                    if(total_sum != arr_sum) {
                        alert("비목금액의 합계와 등록된 인건비내역의 금액과 일치하지 않습니다.");
                        return;
                    }
                     */
                }
            }           
        }
        
        if (sumAmt >= 10000000 && frm.ApcRsn.value == "") {
            alert("취소사유를 입력하세요.");
            return;
        }
        
        if (!confirm("연구비이체취소 요청하시겠습니까?")) {
            return;
        }
    
        /* ************************************************** */
        /*                  개별부 DATA                        */
        /* ************************************************** */        
        get2post(frm, "ButrId=<%=ButrId[0]%>");
        get2post(frm, "PlanAmt="+sumAmt);
        get2post(frm, "PayPlanDtlsRegNcnt=1");  
        get2post(frm, "VrtlAcctNo=<%=VrtlAcctNo%>");
        get2post(frm, "AUTO_MAP_KEY=<%=mapKey%>");
    
        /****************************************************/
        /*                  반복부 DATA                        */
        /****************************************************/      
        for(var i=0; i<collection.getLength(); i++) {
            if(Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) > 0){
                get2post(frm, gridRoot.getItemFieldAt(i, "GRIDKEY"));
                get2post(frm, "CanPlanAmt="     +gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT"));         // 증빙구분
                get2post(frm, "TotlVatAmt="     +gridRoot.getItemFieldAt(i, "TOTL_VAT_AMT"));   // 부가세취소가능금액
                
                get2post(frm, "EvdcDcmtCmadId=" +gridRoot.getItemFieldAt(i, "EVDC_DCMT_CMAD_ID"));   // 증빙서류첨부문서ID
                get2post(frm, "EtcEvdcSeqNo="   +gridRoot.getItemFieldAt(i, "ETC_EVDC_SEQ_NO"));     // 증빙서류일련번호
                get2post(frm, "FileNm="         +gridRoot.getItemFieldAt(i, "FILE_NM"));               // 파일명
                get2post(frm, "AdtnInfoCtt="    +gridRoot.getItemFieldAt(i, "ADTN_INFO_CTT"));           // 인건비내역
            }           
        }
        
        
        uf_proce_display_on();  //로딩바

        setTimeout(
                function(){
                        try{   
                            alert("연구비이체취소 요청되었습니다.");
                            reset_submit();
                            window.close();
                        }finally{
                            opener.fn_url("/t02/t21/T21_01_00.jsp");
                        }
                    
                    }, 1000);   // 1초후 실행 1000 = 1초s
    }
    
    /******************************************************************
     * edmsReturnAction     EDMS 반환값 셋팅
     * @param
     * @return
    ******************************************************************/
    function edmsReturnAction(){        
        var dockeyNo, docname,dockey;
        var frm = document.frm;     
        docKeyNo= frm.dockeyNo.value;
        docKey  = frm.docKey.value;
        docName = (frm.docName.value).replace(/=/gi,"-").replace(/&/gi,"n");

        if(docName.length>0){
            if("1"==document.frm.doc_dv.value){             
                gridRoot.setItemFieldAt(docKey, docKeyNo, "ETC_EVDC_SEQ_NO");
                gridRoot.setItemFieldAt(docName, docKeyNo, "FILE_NM");
                gridRoot.setItemFieldAt("[등록]", docKeyNo, "FILE_YN");           
            }
        }
        
    }
    
    /******************************************************************
     * fnFileEvdc        Grid Event
     * @param
     * @return
    ******************************************************************/ 
    //증빙서류등록/인건비상세등록
    function fnGridEvent(rowIndex, columnIndex, dataRow, dataField){        
        if(dataField == "BTN1") {           
            fnGridFileEvdc(rowIndex, columnIndex, dataRow, dataField);
        } else {
            fnAdtnInfo(rowIndex, columnIndex, dataRow, dataField);
        }   
    }   
    
    /******************************************************************
     * fnFileEvdc        증빙서류 등록
     * @param
     * @return
    ******************************************************************/
    function fnGridFileEvdc(rowIndex, columnIndex, dataRow, dataField){
        var frm  = document.frm;        
        var mode = "update";
        var etcEvdcSeqNo = "";
    
        
        etcEvdcSeqNo = gridRoot.getItemFieldAt(rowIndex, "ETC_EVDC_SEQ_NO");
        if(etcEvdcSeqNo == "") {
            alert("등록된 증빙서류파일이 없습니다.\n[연구비사용결과조회-비목수정] 기능을 이용하여 해당 증빙의 증빙서류파일을 먼저 등록하십시오.");
            return;
        }       
        
        gridRoot.setItemFieldAt("Y", rowIndex, "POP_EXE");      
        frm.doc_dv.value = "1";     
        uf_edmsUpload(mode, rowIndex, etcEvdcSeqNo);
    }   
    
    
    
    /******************************************************************
     * uf_edmsUploadFile        EDMS파일업로드 공통메소드 호출
     * @param
     * @return
    ******************************************************************/
    function uf_edmsUpload(mode,idx, etcEvdcSeqNo){
        var frm     =   document.frm;
        var docKey;
        var usrId;          // 사용자ID
        var hmpwRoleDv;     // 사용자권한 
        var rcmsGrpCd;      // RCMS그룹코드
        var evdcDv;
    
        frm.dockeyNo.value  = idx; 
    
        usrId               = "SMTEST";
        hmpwRoleDv          = "03";
        evdcDv              = frm.Evdc_Dv.value;
    
        // EDMS첨부파일등록호출     
        edmsUploadFileNew("frm", mode, docKey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
    }
    
    /******************************************************************
     * fnAdtnInfo        인건비내역 등록
     * @param
     * @return
    ******************************************************************/
    function fnAdtnInfo(rowIndex, columnIndex, dataRow, dataField){
        var frm = document.frm;     
        var url, result,amt,param,arr_result;
        
        if(!uf_AdtnRegItxpChk(gridRoot.getItemFieldAt(rowIndex, "DTLS_ITXP_CD"), true)) return;
        
        amt = Number(gridRoot.getItemFieldAt(rowIndex, "TOTL_AMT")) - Number(gridRoot.getItemFieldAt(rowIndex, "CAN_PLAN_AMT"));

        param   =   "ChkAmt="           + amt;
        param   +=  "&AgrmtInstId="     + gridRoot.getItemFieldAt(rowIndex, "AGRMT_INST_ID");
        param   +=  "&AgrmtSeqNo="      + gridRoot.getItemFieldAt(rowIndex, "AGRMT_SEQ_NO");
        param   +=  "&ItxpCd="          + gridRoot.getItemFieldAt(rowIndex, "DTLS_ITXP_CD");
        param   +=  "&PmsId="           + "<%//=result0.getPmsId()%>";
        param   +=  "&BzClasCd="        + "<%//=result0.getBzClasCd()%>";
        param   +=  "&SbjtId="          + "<%//=result0.getSbjtId()%>";
        param += "&tObjIdx=" + rowIndex;

        frm.p_rchrInfo.value = gridRoot.getItemFieldAt(rowIndex,
                "ADTN_INFO_CTT");

        url = "/t01/t12/T12_01_30_0.jsp?" + param;
        result = openModalNs(url, frm,
                "dialogWidth:800px; dialogHeight:570px; scroll:no;");

        if (typeof result != "undefined") {
            if (result.length > 20) {
                gridRoot.setItemFieldAt("[등록]", rowIndex, "BTN4");
                gridRoot.setItemFieldAt(result, rowIndex, "ADTN_INFO_CTT");
            } else {
            }
        }
    }

    /********************************************************
     * Function      : uf_AdtnRegItxpChk()
     * Parameter     : String itxp_cd (세부비목코드)
     * Description   : 인건비내역 등록가능 비목체크
     ********************************************************/
    function uf_AdtnRegItxpChk(itxp_cd, msg) {
        if ("B0101" === itxp_cd || "B0102" === itxp_cd || "B0203" === itxp_cd
                || "B0204" === itxp_cd || "B0205" === itxp_cd) {

            return true;
        } else {

            if (typeof msg !== undefined && msg === true) {
                alert("인건비내역은 아래 세부비목에서만 등록 가능합니다.\n\n[내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비]");
            }

            return false;
        }
    }
</script>

<script type="text/javascript">
    /* ********** 2014 그리드 교체 작업 시작시 데이터 셋팅  ********** */
    function uf_search() {
        uf_proce_display_on(); //로딩바
        setTimeout(function() {
            
            SetData1(agrmtSeqNo);
        }, 1000); // 1초후 실행 1000 = 1초s
    }
    /* ********** 2014 그리드 교체 작업 시작시 데이터 셋팅  ********** */

    $(document).ready(function() {
        /* ********** 2014 그리드 교체 작업 rMateGrid 초기화  ********** */
        rMateGridInit();
        /* ********** 2014 그리드 교체 작업 rMateGrid 초기화  ********** */
    });

    /* ********************** 2014 그리드 교체 작업 rMateGrid setting START *********************** */

    var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
<NumberFormatter id=\"numfmt\" />\
<SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
<SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
<DataGrid id=\"grid1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
     <columns>\
     <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
     <DataGridColumn id=\"DTLS_ITXP_NM\"        dataField=\"DTLS_ITXP_NM\"      headerText=\"세목명\"             width=\"90\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"    dataField=\"SUB_DTLS_ITXP_NM\"  headerText=\"세세목명\"           width=\"90\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"MITM_NM\"             dataField=\"MITM_NM\"           headerText=\"품목\"               width=\"80\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"TRNS_AMT\"            dataField=\"TRNS_AMT\"          headerText=\"이체금액\"            width=\"80\"    visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"      headerText=\"공급금액\"            width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"       headerText=\"부가세액\"            width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"   dataField=\"RTRT_FIX_SPLY_AMT\" headerText=\"복원공급금액\"          width=\"110\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"    dataField=\"RTRT_FIX_VAT_AMT\"  headerText=\"복원부가세금액\"          width=\"120\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"TOTL_AMT\"            dataField=\"TOTL_AMT\"          headerText=\"취소가능금액\"           width=\"110\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"CAN_PLAN_AMT\"        dataField=\"CAN_PLAN_AMT\"      headerText=\"부분취소금액\"           width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"true\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"BTN1\"                dataField=\"BTN1\"              headerText=\"증빙서류등록\"           width=\"100\"   visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" />\
     <DataGridColumn id=\"BTN2\"                dataField=\"BTN2\"              headerText=\"증빙서류등록여부\"     width=\"110\"   visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"BTN3\"                dataField=\"BTN3\"              headerText=\"인건비상세등록\"          width=\"100\"   visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" />\
     <DataGridColumn id=\"BTN4\"                dataField=\"BTN4\"              headerText=\"인건비상세등록여부\"        width=\"120\"   visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"POP_EXE\"             dataField=\"POP_EXE\"           headerText=\"증빙팝업실행여부\"     width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"VAT_PROC_D\"          dataField=\"VAT_PROC_D\"        headerText=\"부가세보전\"                width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"BUTR_USE_SPLY_AMT\"    dataField=\"BUTR_USE_SPLY_AMT\"  headerText=\"거래실적공급금액\"     width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"BUTR_USE_VAT_AMT\"     dataField=\"BUTR_USE_VAT_AMT\"   headerText=\"거래실적부가세금액\"        width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"BUTR_RTRT_SPLY_AMT\"   dataField=\"BUTR_RTRT_SPLY_AMT\" headerText=\"거래실적환원공급금액\"   width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"BUTR_RTRT_VAT_AMT\"    dataField=\"BUTR_RTRT_VAT_AMT\"  headerText=\"거래실적환원부가세금액\"  width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"AGRMT_SEQ_NO\"        dataField=\"AGRMT_SEQ_NO\"      headerText=\"협약일련번호\"           width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"AGRMT_INST_ID\"       dataField=\"AGRMT_INST_ID\"     headerText=\"협약기관ID\"           width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"USE_REG_DT\"          dataField=\"USE_REG_DT\"        headerText=\"비목등록일자\"           width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"USE_REG_TM\"          dataField=\"USE_REG_TM\"        headerText=\"비목등록시간\"           width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"USE_REG_SN\"          dataField=\"USE_REG_SN\"        headerText=\"비목등록순번\"           width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"DTLS_ITXP_CD\"        dataField=\"DTLS_ITXP_CD\"      headerText=\"세목코드\"             width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"    dataField=\"SUB_DTLS_ITXP_CD\"  headerText=\"세세목코드\"                width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"TOTL_VAT_AMT\"        dataField=\"TOTL_VAT_AMT\"      headerText=\"부가세취소가능금액\"        width=\"110\"   visible=\"false\"   textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"ETC_EVDC_SEQ_NO\"     dataField=\"ETC_EVDC_SEQ_NO\"   headerText=\"증빙서류일련번호\"     width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"FILE_NM\"             dataField=\"FILE_NM\"           headerText=\"파일명\"              width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"FILE_CNT\"            dataField=\"FILE_CNT\"          headerText=\"파일수\"              width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"ADTN_INFO_CTT\"       dataField=\"ADTN_INFO_CTT\"     headerText=\"인건비상세\"                width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"EVDC_DCMT_CMAD_ID\"   dataField=\"EVDC_DCMT_CMAD_ID\" headerText=\"증빙서류첨부문서ID\"       width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"GRIDKEY\"             dataField=\"GRIDKEY\"           headerText=\"GRIDKEY\"              width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
    </columns>\
    <footers>\
        <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
             <DataGridFooterColumn />\
             <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
             <DataGridFooterColumn />\
             <DataGridFooterColumn />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TOTL_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
         </DataGridFooter>\
    </footers>\
   <dataProvider>\
    <SpanArrayCollection source=\"{$gridData}\"/>\
    </dataProvider>\
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

    var layoutStr_itxp = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"grid2\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
         <columns>\
         <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
         <DataGridColumn id=\"DTLS_ITXP_NM\"        dataField=\"DTLS_ITXP_NM\"      headerText=\"세목명\"              width=\"90\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"    dataField=\"SUB_DTLS_ITXP_NM\"  headerText=\"세세목명\"             width=\"90\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"MITM_NM\"             dataField=\"MITM_NM\"           headerText=\"품목\"                   width=\"80\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"TRNS_AMT\"            dataField=\"TRNS_AMT\"          headerText=\"이체금액\"             width=\"80\"    visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"      headerText=\"공급금액\"             width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"       headerText=\"부가세액\"             width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"   dataField=\"RTRT_FIX_SPLY_AMT\" headerText=\"복원공급금액\"           width=\"110\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"    dataField=\"RTRT_FIX_VAT_AMT\"  headerText=\"복원부가세금액\"          width=\"120\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"TOTL_AMT\"            dataField=\"TOTL_AMT\"          headerText=\"취소가능금액\"           width=\"110\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"CAN_PLAN_AMT\"        dataField=\"CAN_PLAN_AMT\"      headerText=\"부분취소금액\"           width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"true\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"AGRMT_SEQ_NO\"        dataField=\"AGRMT_SEQ_NO\"      headerText=\"협약일련번호\"           width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"AGRMT_INST_ID\"       dataField=\"AGRMT_INST_ID\"     headerText=\"협약기관ID\"           width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"USE_REG_DT\"          dataField=\"USE_REG_DT\"        headerText=\"비목등록일자\"           width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"USE_REG_TM\"          dataField=\"USE_REG_TM\"        headerText=\"비목등록시간\"           width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"USE_REG_SN\"          dataField=\"USE_REG_SN\"        headerText=\"비목등록순번\"           width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"DTLS_ITXP_CD\"        dataField=\"DTLS_ITXP_CD\"      headerText=\"세목코드\"             width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"    dataField=\"SUB_DTLS_ITXP_CD\"  headerText=\"세세목코드\"                width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"TOTL_VAT_AMT\"        dataField=\"TOTL_VAT_AMT\"      headerText=\"부가세취소가능금액\"        width=\"110\"   visible=\"false\"   textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"ETC_EVDC_SEQ_NO\"     dataField=\"ETC_EVDC_SEQ_NO\"   headerText=\"증빙서류일련번호\"     width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"GRIDKEY\"             dataField=\"GRIDKEY\"           headerText=\"GRIDKEY\"              width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                 <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                 <DataGridFooterColumn />\
                 <DataGridFooterColumn />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TOTL_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             </DataGridFooter>\
        </footers>\
       <dataProvider>\
        <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
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
            for ( var i = 0; i < columns.length; i++) {
                if (columns[i].getVisible()) {
                    jj++;
                    if (jj == columnIndex) {
                        break;
                    }
                } else {
                    ii++;
                }
            }
            columnIndex = columnIndex + ii;
            var column = columns[columnIndex];
            var dataField = column.getDataField();

            //증빙서류등록/인건비상세등록
            if (dataField == "BTN1" || dataField == "BTN3") {
                fnGridEvent(rowIndex, columnIndex, dataRow, dataField);
            }
            ;

        };

        //더블클릭 상세보기 이벤트 추가
        var itemDoubleClickHandler = function(event) {

            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var column = dataGrid.getColumns()[columnIndex];
            var dataField = column.getDataField();

            layerDetail(dataGrid, dataRow);
        };

        //그리드 수정 시 그리드 자료 갱신
        var dataGridChanged_init = function(event) {
            var footer = gridRoot.getObjectById("footer");
            footer.invalidateData();
            dataGrid.invalidateList();

        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();

            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트
            
            uf_search();
        };

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("dataComplete", columnBackGroundStyle);
        gridRoot.addEventListener("dataComplete", gridinit_itxp);
        //그리드 수정 시 그리드 자료 갱신
        gridRoot.addEventListener("itemDataChanged", dataGridChanged_init);

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };

    /******************************************************************
     *                   비목우선연결증빙목록 
     ******************************************************************/

    //그리드 레이아웃 호출_itxp 
    var rMateGridInitLayout_itxp = function() {
        gridApp_itxp = FABridge.gridBridge.root();
        gridRoot_itxp = gridApp_itxp.getgridRoot();
        gridApp_itxp.setLayout(layoutStr_itxp); //그리드 레이아웃 생성

        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot_itxp.getItemAt(rowIndex);

            var columns = dataGrid_itxp.getColumns();
            var ii = 0;
            var jj = 0;
            for ( var i = 0; i < columns.length; i++) {
                if (columns[i].getVisible()) {
                    jj++;
                    if (jj == columnIndex) {
                        break;
                    }
                } else {
                    ii++;
                }
            }
            columnIndex = columnIndex + ii;
            var column = columns[columnIndex];
            var dataField = column.getDataField();

            //증빙서류등록/인건비상세등록
            if (dataField == "BTN1" || dataField == "BTN3") {
                fnGridEvent(rowIndex, columnIndex, dataRow, dataField);
            }
            ;

        };

        var layoutCompleteHandler = function(event) {
            dataGrid_itxp = gridApp_itxp.getdataGrid();

            //이벤트 등록
            dataGrid_itxp.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트
            
        };

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot_itxp.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot_itxp.addEventListener("layoutComplete", rMateGridSetData_itxp);
    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    function gridinit_itxp() {
        if (isGrid_itxp) {
            FABridge.addInitializationCallback("gridBridge_itxp",
                    rMateGridInitLayout_itxp);
        }
    };

    //로딩 후 rMadeGrid 출력
    function rMateGridSetData_itxp() {
        gridApp_itxp = FABridge.gridBridge_itxp.root();
        gridApp_itxp.setData(JSON.stringify(gridData_itxp)); //데이터 출력
    };

    //데이터 셋팅    
    var cnt = 0;
    function setGridData(seqNo) {
        try {
            var gridValue = [];
            
            //1. 신규과제
            if("G00000000000001" == seqNo){

                
            //2. 진행과제
            }else if("G00000000000002" == seqNo){

                gridValue[cnt++] = {"DTLS_ITXP_NM" : "연구시설장비재료비","SUB_DTLS_ITXP_NM" : "연구시설장비구입비","MITM_NM" : "장비구입비","TRNS_AMT" : "2500","USE_SPLY_AMT" : "2500","USE_VAT_AMT" : "0","RTRT_FIX_SPLY_AMT" : "0","RTRT_FIX_VAT_AMT" : "0","TOTL_AMT" : "2500","CAN_PLAN_AMT" : "0","BTN1" : "증빙서류등록","BTN2" : "[등록]","BTN3" : "인건비상세등록","BTN4" : "[등록]","AGRMT_SEQ_NO" : "G00000000000002","AGRMT_INST_ID" : "10112249","USE_REG_DT" : "20110114","USE_REG_TM" : "164634","USE_REG_SN" : "1","DTLS_ITXP_CD" : "B0102","SUB_DTLS_ITXP_CD" : "B0102001","BUTR_RTRT_VAT_AMT" : "0","ADTN_INFO_CTT" : "20120302,20120330,김삿갓,7901011100000,30,0\\|","VAT_PROC_RTRT_AMT" : "0","CAN_TRNS_AMT" : "0","BUTR_ID" : "E201012152917530","BUIT_GRP_ID" : null,"BUIT_GRP_YN" : "N","BUTR_USE_VAT_AMT" : "0","BUTR_USE_SPLY_AMT" : "2500","TOTL_VAT_AMT" : "0","ETC_EVDC_SEQ_NO" : "P20110114164735-G00000000000003-10112249","VAT_PROC_DV" : "B01001","BUTR_RTRT_SPLY_AMT" : "0","BUIT_ID" : "U201101144724617","FILE_CNT" : "","FILE_NM" : "i_20101005164028.jpg\\;","POP_EXE" : "N","TOTL_SPLY_AMT" : "2500","EVDC_DCMT_CMAD_ID" : "D201301211195670","GRIDKEY" : "&BuitId=U201101144724617&AgrmtSeqNo=G00000000000003&AgrmtInstId=10112249&UseRegDt=20110114&UseRegTm=164634&UseRegSn=1&DtlsItxpCd=B0102&DtlsItxpNm=인건비&SubDtlsItxpCd=B0102001&SubDtlsItxpNm=인건비&MitmNm=1월 인건비&TrnsAmt=2500&UseSplyAmt=2500&UseVatAmt=0&CanTrnsAmt=0&TotlAmt=2500"};
    
            //3. 정산과제(보고서 미제출)
            }else if("G00000000000003" == seqNo){
                
                gridValue[cnt++] = {"DTLS_ITXP_NM" : "연구시설장비재료비","SUB_DTLS_ITXP_NM" : "연구시설장비구입비","MITM_NM" : "장비구입비","TRNS_AMT" : "2500","USE_SPLY_AMT" : "2500","USE_VAT_AMT" : "0","RTRT_FIX_SPLY_AMT" : "0","RTRT_FIX_VAT_AMT" : "0","TOTL_AMT" : "2500","CAN_PLAN_AMT" : "0","BTN1" : "증빙서류등록","BTN2" : "[등록]","BTN3" : "인건비상세등록","BTN4" : "[등록]","AGRMT_SEQ_NO" : "G00000000000003","AGRMT_INST_ID" : "10112249","USE_REG_DT" : "20110114","USE_REG_TM" : "164634","USE_REG_SN" : "1","DTLS_ITXP_CD" : "B0102","SUB_DTLS_ITXP_CD" : "B0102001","BUTR_RTRT_VAT_AMT" : "0","ADTN_INFO_CTT" : "20120302,20120330,김삿갓,7901011100000,30,0\\|","VAT_PROC_RTRT_AMT" : "0","CAN_TRNS_AMT" : "0","BUTR_ID" : "E201012152917530","BUIT_GRP_ID" : null,"BUIT_GRP_YN" : "N","BUTR_USE_VAT_AMT" : "0","BUTR_USE_SPLY_AMT" : "2500","TOTL_VAT_AMT" : "0","ETC_EVDC_SEQ_NO" : "P20110114164735-G00000000000003-10112249","VAT_PROC_DV" : "B01001","BUTR_RTRT_SPLY_AMT" : "0","BUIT_ID" : "U201101144724617","FILE_CNT" : "","FILE_NM" : "i_20101005164028.jpg\\;","POP_EXE" : "N","TOTL_SPLY_AMT" : "2500","EVDC_DCMT_CMAD_ID" : "D201301211195670","GRIDKEY" : "&BuitId=U201101144724617&AgrmtSeqNo=G00000000000003&AgrmtInstId=10112249&UseRegDt=20110114&UseRegTm=164634&UseRegSn=1&DtlsItxpCd=B0102&DtlsItxpNm=인건비&SubDtlsItxpCd=B0102001&SubDtlsItxpNm=인건비&MitmNm=3월 인건비&TrnsAmt=2500&UseSplyAmt=2500&UseVatAmt=0&CanTrnsAmt=0&TotlAmt=2500"};

            //4. 정산과제(보고서 제출 완료)
            }else if("G00000000000004" == seqNo){

                
            }
            
            
            
        } finally {
            gridData = gridValue; //조회결과 JSON 값 가져오기
            rMateGridSetData(); //rMateGrid 구현            
        }
    }

    function SetData1(seqNo) {
        if(!seqNo) return false;
        try {
            document.body.style.cursor = "wait";
            setGridData(seqNo); //Insert    Grid
            document.body.style.cursor = "auto";
        } finally {
            reset_submit();
        }
    }

    //컬럼 색상변경
    function columnBackGroundStyle() {
        collection = gridRoot.getCollection();
        if (collection == null) {
            alert("collection 객체를 찾을 수 없습니다");
            return;
        }

        for ( var i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 10, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 11, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 13, 1, 1, null, 0xEDF2FE);
        }
    }

    /* ********************** 2014 그리드 교체 작업 rMateGrid setting START *********************** */
</script>
</body>
</html>
