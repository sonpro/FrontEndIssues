<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T34_01_10.jsp
 *   Description        : 정산진행현황 상세조회 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.18                     예기해             
 *
 *  @author     예기해
 *  @Since      2014.01.18
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
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->


<%
    String SbjtId       = SessionUtil.getRequestValue(request, "SbjtId");                                   // 과제번호
    String AgrmtSeqNo   = SessionUtil.getRequestValue(request, "AgrmtSeqNo");                               // 협약기관ID
    String AgrmtInstId  = SessionUtil.getRequestValue(request, "AgrmtInstId");                              // 협약일련번호

    String DtlsItxpCd   = SessionUtil.getRequestValue(request, "DtlsItxpCd");                               // 세부비목코드
    String HgrkItxpNm   = SessionUtil.getRequestValue(request, "HgrkItxpNm");                               // 비목
    String DtlsItxpNm   = SessionUtil.getRequestValue(request, "DtlsItxpNm");                               // 세부비목
%>

<title>정산진행현황 상세조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">정산진행현황 상세조회</p>
        </div>
        <!-- //head title// --> 
    </div>




        <div id="body">
            <form name="frm" method="post">
            <input type="hidden" name="PrsPgno"     value="0" />
            <input type="hidden" name="TrSupYn"     value="" />
            <input type="hidden" name="AgrmtInstId" value="<%=AgrmtInstId%>" />
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>정산진행현황 상세조회</h3>
                <!-- 정산진행현황 상세조회 start -->
                <div class="t10  pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="정산진행현황 상세조회" class="tbl_type02">
                    <caption>정산진행현황 상세조회</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="col">비목</th>
                        <td class="ll"><%=HgrkItxpNm%> - <%=DtlsItxpNm%></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //정산진행현황 상세조회 end// -->
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->
                <!-- 총건수/인쇄 저장 버튼 start -->
                <div class="pop_total_box">
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
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "255", "#FFFFFF", "transparent");
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
                
            </div>
            <!-- //content end// -->
            </form>
        </div>






<%@ include file="/inc/jspFooter_popup.jsp" %> 


<script type="text/javascript">

    //////////////////////////////////
    // 조회 처리
    //////////////////////////////////
    function uf_search(SchGb){
        var frm = document.frm;
        
        if( isSubmit() ) return;    // 이중처리
        //if(!chk_sbjt_sch()) return false; //유효성체크 
        
        get2post(document.frm, "SbjtId=<%=SbjtId%>" );
        get2post(document.frm, "AgrmtSeqNo=<%=AgrmtSeqNo%>" );
        get2post(document.frm, "DtlsItxpCd=<%=DtlsItxpCd%>" );
        get2post(document.frm, "AgrmtInstId=<%=AgrmtInstId%>" );
        
        
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    try{
                        document.body.setCapture(); // 'wait'
                        document.body.style.cursor =    "wait";
                        //SetData(); //Insert   Grid
                        setGridData("<%=AgrmtSeqNo%>", "<%=DtlsItxpCd%>", "<%=DtlsItxpNm%>"); //Insert    Grid
                        document.body.style.cursor =    "auto";
                        document.body.releaseCapture(); //setCapture()_Next
                    }finally{
                        reset_submit();
                        searchAlert();
                    }
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
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
        <columns>\
            <DataGridColumn id=\"\"                   dataField=\"\"                    itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"TRSC_DT\"            dataField=\"TRSC_DT\"             headerText=\"사용일자\"       width=\"80\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_DT\"      dataField=\"EXCTN_EXEC_DT\"       headerText=\"집행일시\"       width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"세부비목코드\"   width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세부비목\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CASH_SPOT_NM\"       dataField=\"CASH_SPOT_NM\"        headerText=\"사업비구분\"     width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_EVDC_DV_NM\"    dataField=\"TRSC_EVDC_DV_NM\"     headerText=\"증빙구분\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"VAT_PSV_APC_YN_NM\"  dataField=\"VAT_PSV_APC_YN_NM\"   headerText=\"부가세보전여부\" width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_PFMC_ST_NM\"    dataField=\"TRSC_PFMC_ST_NM\"     headerText=\"집행상태\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"            headerText=\"사용금액\"       width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"  dataField=\"RTRT_FIX_SPLY_AMT\"   headerText=\"복원공급금액\"   width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"   dataField=\"RTRT_FIX_VAT_AMT\"    headerText=\"복원부가세금액\" width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"공급금액\"       width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"REJCT_PROC_ST_NM\"   dataField=\"REJCT_PROC_ST_NM\"    headerText=\"불인정여부\"     width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"REJCT_SUM_AMT\"      dataField=\"REJCT_SUM_AMT\"       headerText=\"불인정금액\"     width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"SEJCT_RSN\"          dataField=\"SEJCT_RSN\"           headerText=\"불인정사유\"     width=\"150\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SAC_CMPL_RQST_CTT\"  dataField=\"SAC_CMPL_RQST_CTT\"   headerText=\"보완요청사유\"   width=\"150\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
            <DataGridFooterColumn />\
            <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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


        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
        };

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", setInitTotCnt);
        gridRoot.addEventListener("layoutComplete", uf_search);
        
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
     
    $(document).ready(function() {
        // rMateGrid 초기화
        rMateGridInit();
    }); 
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->


<script type="text/javascript">
var cnt = 0;
function setGridData(seqNo, itxpCd, itxpNm){    
    try{
        cnt = 0;
        var gridValue = [];
        
        //1. 신규과제
        if("G00000000000001" == seqNo){
        	if("B0101" == itxpCd){


            }else if("B0201" == itxpCd){


            }else if("B0202" == itxpCd){


            }else if("B0203" == itxpCd){


            }else if("B0301" == itxpCd){


            }
            
        //2. 진행과제
        }else if("G00000000000002" == seqNo){

        	if("연구활동비" == itxpNm){

        		gridValue[cnt++] = {"TRSC_DT":"2014-02-24","EXCTN_EXEC_DT":"2014-02-24 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구활동비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};

            }else if("연구시설·장비 및 재료비" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2014-03-07","EXCTN_EXEC_DT":"2014-03-07 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구시설·장비구입비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"1100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"1000","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};

            }else if("인건비" == itxpNm){
            
            	gridValue[cnt++] = {"TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-02-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};

            }else if("연구과제추진비" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구과제추진비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};

            }else if("간접비" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 16:02:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"간접비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};

            }

        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){

            if("연구활동비" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2013-03-25","EXCTN_EXEC_DT":"2013-03-25 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구활동비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-05-23","EXCTN_EXEC_DT":"2013-05-23 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구활동비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-09-30","EXCTN_EXEC_DT":"2013-09-30 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구활동비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"10000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"10000","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-12-23","EXCTN_EXEC_DT":"2013-12-23 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구활동비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"9060","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"8237","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("연구시설·장비 및 재료비" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2013-03-06","EXCTN_EXEC_DT":"2013-03-06 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구시설·장비구입비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"1100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"1000","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-04-23","EXCTN_EXEC_DT":"2013-04-23 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구시설·장비구입비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"1100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"1000","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-07-22","EXCTN_EXEC_DT":"2013-07-22 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구시설·장비구입비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"20000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"18182","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-10-29","EXCTN_EXEC_DT":"2013-10-29 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구시설·장비구입비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"15000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"13637","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("인건비" == itxpNm){
            
            	gridValue[cnt++] = {"TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-05-10","EXCTN_EXEC_DT":"2013-05-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-06-10","EXCTN_EXEC_DT":"2013-06-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-07-10","EXCTN_EXEC_DT":"2013-07-10 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-08-09","EXCTN_EXEC_DT":"2013-08-09 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-09-10","EXCTN_EXEC_DT":"2013-09-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-10-10","EXCTN_EXEC_DT":"2013-10-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-11-08","EXCTN_EXEC_DT":"2013-11-08 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-12-10","EXCTN_EXEC_DT":"2013-12-10 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2014-01-10","EXCTN_EXEC_DT":"2014-01-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-02-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2014-02-28","EXCTN_EXEC_DT":"2014-02-28 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("연구과제추진비" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2013-03-21","EXCTN_EXEC_DT":"2013-03-21 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구과제추진비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-06-04","EXCTN_EXEC_DT":"2013-06-04 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구과제추진비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-09-03","EXCTN_EXEC_DT":"2013-09-03 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구과제추진비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-12-02","EXCTN_EXEC_DT":"2013-12-02 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구과제추진비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2150","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2150","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("간접비" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"간접비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"91","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-07-08","EXCTN_EXEC_DT":"2013-07-08 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"간접비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"91","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-11-25","EXCTN_EXEC_DT":"2013-11-25 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"간접비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"455","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"간접비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"300","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"273","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }

        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){

            if("연구활동비" == itxpNm){

                gridValue[cnt++] = {"TRSC_DT":"2013-03-25","EXCTN_EXEC_DT":"2013-03-25 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구활동비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-05-23","EXCTN_EXEC_DT":"2013-05-23 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구활동비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-09-30","EXCTN_EXEC_DT":"2013-09-30 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구활동비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"10000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"10000","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-12-23","EXCTN_EXEC_DT":"2013-12-23 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구활동비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"9060","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"8237","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("연구시설·장비 및 재료비" == itxpNm){

                gridValue[cnt++] = {"TRSC_DT":"2013-03-06","EXCTN_EXEC_DT":"2013-03-06 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구시설·장비구입비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"1100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"1000","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-04-23","EXCTN_EXEC_DT":"2013-04-23 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구시설·장비구입비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"1100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"1000","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-07-22","EXCTN_EXEC_DT":"2013-07-22 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구시설·장비구입비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"20000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"18182","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-10-29","EXCTN_EXEC_DT":"2013-10-29 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구시설·장비구입비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"15000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"13637","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("인건비" == itxpNm){
            
                gridValue[cnt++] = {"TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-05-10","EXCTN_EXEC_DT":"2013-05-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-06-10","EXCTN_EXEC_DT":"2013-06-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-07-10","EXCTN_EXEC_DT":"2013-07-10 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-08-09","EXCTN_EXEC_DT":"2013-08-09 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-09-10","EXCTN_EXEC_DT":"2013-09-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-10-10","EXCTN_EXEC_DT":"2013-10-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-11-08","EXCTN_EXEC_DT":"2013-11-08 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-12-10","EXCTN_EXEC_DT":"2013-12-10 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2014-01-10","EXCTN_EXEC_DT":"2014-01-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-02-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2014-02-28","EXCTN_EXEC_DT":"2014-02-28 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("연구과제추진비" == itxpNm){

                gridValue[cnt++] = {"TRSC_DT":"2013-03-21","EXCTN_EXEC_DT":"2013-03-21 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구과제추진비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-06-04","EXCTN_EXEC_DT":"2013-06-04 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구과제추진비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-09-03","EXCTN_EXEC_DT":"2013-09-03 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구과제추진비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-12-02","EXCTN_EXEC_DT":"2013-12-02 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"연구과제추진비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"2150","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2150","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("간접비" == itxpNm){

                gridValue[cnt++] = {"TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"간접비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"91","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-07-08","EXCTN_EXEC_DT":"2013-07-08 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"간접비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"기타","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"91","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-11-25","EXCTN_EXEC_DT":"2013-11-25 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"간접비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"카드","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"455","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"간접비","CASH_SPOT_NM":"현금","TRSC_EVDC_DV_NM":"전자세금계산서","VAT_PSV_APC_YN_NM":"미신청","TRSC_PFMC_ST_NM":"집행(이체) 완료","TRNS_AMT":"300","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"273","REJCT_PROC_ST_NM":"미확정","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }

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

</body></html>