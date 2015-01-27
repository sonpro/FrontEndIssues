<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T33_01_10.jsp 
 *   Description        : 수익금/이월신청등록 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.17                     예기해             
 *
 *  @author     예기해
 *  @Since      2014.01.17
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

String sbjtId       = SessionUtil.getRequestValue(request, "sbjtId");
String agrmtSeqNo   = SessionUtil.getRequestValue(request, "agrmtSeqNo");
String agrmtInstId  = SessionUtil.getRequestValue(request, "agrmtInstId");
String RvcnAmt      = "0";                                                    // 수익금

Long IntBal     = 0L;                   // 이자잔액
Long IntBal_sum = 0L;                   // 이자잔액+수익금

String crovProcSt = "";

String sbjtData_instSbjtPrgrSt = "";
String sbjtData_sacShp = "";
String sbjtData_devStrDt = "";
String sbjtData_devEndDt = "";
 

//1. 신규과제
if("G00000000000001".equals(agrmtSeqNo)){
    crovProcSt = "0";
    sbjtData_instSbjtPrgrSt = "10";
    sbjtData_sacShp = "1";
    sbjtData_devStrDt = "20130201";
    sbjtData_devEndDt = "20990131";
    
//2. 진행과제
}else if("G00000000000002".equals(agrmtSeqNo)){
    
//3. 정산과제(보고서 미제출)
}else if("G00000000000003".equals(agrmtSeqNo)){
    crovProcSt = "1";
    sbjtData_instSbjtPrgrSt = "10";
    sbjtData_sacShp = "2";
    sbjtData_devStrDt = "20140101";
    sbjtData_devEndDt = "20130331";
    
//4. 정산과제(보고서 제출 완료)
}else if("G00000000000004".equals(agrmtSeqNo)){
    crovProcSt = "0";
    sbjtData_instSbjtPrgrSt = "07";
    sbjtData_sacShp = "1";
    sbjtData_devStrDt = "20100524";
    sbjtData_devEndDt = "20110524";
}

%>

<title>수익금이월신청등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">수익금이월신청등록</p>
        </div>
        <!-- //head title// --> 
    </div>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" lockedColumnCount=\"2\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <groupedColumns>\
            <DataGridColumn id=\"HGRK_ITXP_NM\"       dataField=\"HGRK_ITXP_NM\"        headerText=\"비목\"           width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITXP_NM\"            dataField=\"ITXP_NM\"             headerText=\"세부비목\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"협약예산\">\
                <DataGridColumn id=\"PRE_CASH_LIM_AMT\"   dataField=\"PRE_CASH_LIM_AMT\"    headerText=\"현금\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"PRE_SPOT_PLAN\"      dataField=\"PRE_SPOT_PLAN\"       headerText=\"현물\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"변경예산\">\
                <DataGridColumn id=\"AGRMT_CASH_LIM_AMT\" dataField=\"AGRMT_CASH_LIM_AMT\"  headerText=\"현금\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_PLAN\"          dataField=\"SPOT_PLAN\"           headerText=\"현물\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"전년도이월액\">\
                <DataGridColumn id=\"PRE_CROV_AMT\"       dataField=\"PRE_CROV_AMT\"        headerText=\"현금\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"PRE_SPOT_CROV_AMT\"  dataField=\"PRE_SPOT_CROV_AMT\"   headerText=\"현물\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"사용금액\">\
                <DataGridColumn id=\"EXCTN_EXEC_AMT\"     dataField=\"EXCTN_EXEC_AMT\"      headerText=\"현금\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_USE\"           dataField=\"SPOT_USE\"            headerText=\"현물\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"사용잔액\">\
                <DataGridColumn id=\"EXCTN_BAL\"          dataField=\"EXCTN_BAL\"           headerText=\"현금\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_BAL\"           dataField=\"SPOT_BAL\"            headerText=\"현물\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"차년도 이월금액\">\
                <DataGridColumn id=\"CROV_AMT\"           dataField=\"CROV_AMT\"            headerText=\"현금\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_CROV_AMT\"      dataField=\"SPOT_CROV_AMT\"       headerText=\"현물\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
        </groupedColumns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PRE_CASH_LIM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PRE_SPOT_PLAN}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{AGRMT_CASH_LIM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_PLAN}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PRE_CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PRE_SPOT_CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_EXEC_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_USE}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_USE}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

    
var layoutStr_crov = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" lockedColumnCount=\"2\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\" >\
            <groupedColumns>\
                <DataGridColumn id=\"HGRK_ITXP_NM\"           dataField=\"HGRK_ITXP_NM\"            headerText=\"비목\"               width=\"100\" visible=\"true\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_NM\"                dataField=\"ITXP_NM\"                 headerText=\"세부비목\"           width=\"100\" visible=\"true\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"사용잔액(사용승인한도-사용금액)\">\
                    <DataGridColumn id=\"USE_APV_CASH_LIM_AMT2\"  dataField=\"USE_APV_CASH_LIM_AMT2\"   headerText=\"현금\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                    <DataGridColumn id=\"SPOT_BAL\"               dataField=\"SPOT_BAL\"                headerText=\"현물\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"이월신청금액\">\
                    <DataGridColumn id=\"CROV_CASH_APC_AMT2\"     dataField=\"CROV_CASH_APC_AMT2\"      headerText=\"현금\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                    <DataGridColumn id=\"CROV_SPOT_APC_AMT2\"     dataField=\"CROV_SPOT_APC_AMT2\"      headerText=\"현물\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"잔액\">\
                    <DataGridColumn id=\"BAL_CASH\"               dataField=\"BAL_CASH\"                headerText=\"현금\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                    <DataGridColumn id=\"BAL_SPOT\"               dataField=\"BAL_SPOT\"                headerText=\"현물\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                </DataGridColumnGroup>\
                <DataGridColumn id=\"CROV_APC_RSN\"           dataField=\"CROV_APC_RSN\"            headerText=\"이월신청사유\"       width=\"100\" visible=\"true\" textAlign=\"left\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"CROV_TNDW_RSN\"          dataField=\"CROV_TNDW_RSN\"           headerText=\"이월반려사유\"       width=\"100\" visible=\"true\" textAlign=\"left\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"HGRK_ITXP_CD\"           dataField=\"HGRK_ITXP_CD\"            headerText=\"비목코드\"           width=\"100\" visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_CD\"                dataField=\"ITXP_CD\"                 headerText=\"세목코드\"           width=\"100\" visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"USE_APV_CASH_LIM_AMT\"   dataField=\"USE_APV_CASH_LIM_AMT\"    headerText=\"사용승인한도금액\"   width=\"110\" visible=\"false\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"BF_YR_CASH_CROV_AMT\"    dataField=\"BF_YR_CASH_CROV_AMT\"     headerText=\"전년도현금이월금액\" width=\"110\" visible=\"false\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"BF_YR_SPOT_CROV_AMT\"    dataField=\"BF_YR_SPOT_CROV_AMT\"     headerText=\"전년도현물이월금액\" width=\"100\" visible=\"false\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </groupedColumns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
            <footers>\
                <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                    <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_APV_CASH_LIM_AMT2}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CROV_CASH_APC_AMT2}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CROV_SPOT_APC_AMT2}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{BAL_CASH}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{BAL_SPOT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

        //클릭 이

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", layoutComplete_rMate);
        

    };
    

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    
    
    
    //rMateGrid 관련 객체
    var flashVars_crov = "dataType=json&bridgeName=gridBridge_crov";
    var gridApp_crov; // 플래시 기본 객체
    var gridData_crov; // 그리드 데이터 담기
    var gridRoot_crov; // 데이타와 그리드를 포함하는 객체
    var dataGrid_crov; // 그리드 정보 담기
    var collection_crov; // 그리드의 데이타 객체
    var selectorColumn_crov; // 셀렉터 컬럼
    
    
    
    //그리드 레이아웃 호출 
    var rMateGridInitLayout_crov = function() {
      gridApp_crov = FABridge.gridBridge_crov.root();
      gridRoot_crov = gridApp_crov.getGridRoot();
      gridApp_crov.setLayout(layoutStr_crov);   //그리드 레이아웃 생성

      

      var layoutCompleteHandler = function(event) {
          dataGrid_crov = gridApp_crov.getDataGrid();
          
      };
      

      //layout 호출 완료 시 실행할 이벤트 등록
      gridRoot_crov.addEventListener("layoutComplete", layoutCompleteHandler);
      gridRoot_crov.addEventListener("layoutComplete", layoutComplete_crov);
      
      //색상변경
      gridRoot_crov.addEventListener("dataComplete", uf_cellColor_crov);   //색상변경
      
      gridRoot_crov.addEventListener("itemDataChanged", dataGrid_init);

  };

  //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
  FABridge.addInitializationCallback("gridBridge_crov", rMateGridInitLayout_crov);


  //로딩 후 rMadeGrid 출력
  function rMateGridSetData_crov() {
      gridApp_crov = FABridge.gridBridge_crov.root();
      gridApp_crov.setData(JSON.stringify(gridData_crov)); //데이터 출력
  };

    
    
    
    
    //rMateGrid 로딩이 완료 된 후 조회를 시작
    var isGrid = false;
    var isGrid_crov = false;
    var isLoading = false;
    
    // 처음 조회시에만 자동조회가 이루어 지게 한다.
    function layoutComplete_rMate(){
        isGrid = true;
        if(isLoading) return;  //처음조회시 isLoading을 true로 변경하여 자동조회가 되게 하고, 두번째부터는 자동조회가 되지 않게한다.
        gridComplit();
    }
    function layoutComplete_crov(){
        isGrid_crov = true;
        if(isLoading) return;  //처음조회시 isLoading을 true로 변경하여 자동조회가 되게 하고, 두번째부터는 자동조회가 되지 않게한다.
        gridComplit();
    }
    

    

    function gridComplit(){
        
        if( !(isGrid && isGrid_crov)) return;
        if(!isLoading) isLoading = true; // 그리드 초기화시 중복처리 되지 않기위해서 처리
            
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    try{
                        SetData();
                        reset_submit();
                    }finally{
                        reset_submit();
                    }
                }
                , 1000);   // 1초후 실행 1000 = 1초   
                
        
    }
   
    
    function uf_cellColor_crov(){
        if (collection_crov == null)
            collection_crov = gridRoot_crov.getCollection();
        if (collection_crov == null) {
            alert("collection 객체를 찾을 수 없습니다");
            return;
        }
        for (var i = 0; i < collection_crov.getLength(); i++) {
            if(document.frm.CrovProcSt.value == "1"){
                var columns = dataGrid_crov.getColumns();
                columns[4].setEditable(false);
                columns[5].setEditable(false);
                columns[8].setEditable(false);
            }else{
                collection_crov.addCellAttributeDetailAt(i, 4, 1, 1, null, 0xEDF2FE);
                collection_crov.addCellAttributeDetailAt(i, 5, 1, 1, null, 0xEDF2FE);
                collection_crov.addCellAttributeDetailAt(i, 8, 1, 1, null, 0xEDF2FE);
            }
            
        }
    }
    
    
     
    function dataGrid_init(event){
        var rowIndex = event.getRowIndex();                 // 변경된 행번호
        var columnIndex = event.getColumnIndex();       // 변경된 열번호
        var dataField = event.getDataField();               // 변경된 열의 데이타 필드
        var dataRow = gridRoot_crov.getItemAt(rowIndex); // 변경된 데이타 레코드
        
        if("CROV_CASH_APC_AMT2" == dataField || "CROV_SPOT_APC_AMT2" == dataField){
            
            var footer = gridRoot_crov.getObjectById("footer");
            footer.invalidateData();
            
            
            uf_CalAmt_rMate(dataRow, rowIndex, columnIndex);
        }else{
            dataGrid_crov.invalidateList();
        }
        
    }
    
    
    
    

    /*****************************************************************
     * uf_CalAmt        보충후한도,잔여한도 계산
     * @param
     * @return
    ******************************************************************/
    function uf_CalAmt_rMate(dataRow, rowIndex, columnIndex) {
        
        var change_amt1=0;              //현금잔액
        var change_amt2=0;              //현물잔액

        change_amt1 = Number(dataRow.USE_APV_CASH_LIM_AMT2)-Number(dataRow.CROV_CASH_APC_AMT2);
        change_amt2 = Number(dataRow.SPOT_BAL)-Number(dataRow.CROV_SPOT_APC_AMT2);
        
        if((change_amt1<0) || (change_amt2<0)){
            alert("신청금액이 사용잔액보다 클 수 없습니다.");
            gridRoot_crov.setItemFieldAt("0", rowIndex, "CROV_CASH_APC_AMT2");     // 값, row, id
            gridRoot_crov.setItemFieldAt("0", rowIndex, "CROV_SPOT_APC_AMT2");     // 값, row, id
            
            var footer = gridRoot_crov.getObjectById("footer");
            footer.invalidateData();
            
            return;
        }else{
            gridRoot_crov.setItemFieldAt("0", rowIndex, "BAL_CASH");     // 값, row, id   현금잔액 금액입력
            gridRoot_crov.setItemFieldAt("0", rowIndex, "BAL_SPOT");     // 값, row, id   현물잔액 금액입력
            
            var footer = gridRoot_crov.getObjectById("footer");
            footer.invalidateData();
        }
        
    }
    
    
    
    
    /*****************************************************************
     * uf_crovApc       이월신청요청
     * @param
     * @return
    ******************************************************************/
    function uf_crovApc_rMate() {
        
        var frm        = document.frm;
        var grid       = gridRoot_crov;
        var grid2      = gridRoot;
        
        var instAmt    = "";
        var insertData = "";   //서브밋데이터
        var cnt        = 0;
        // 2011.07.19 
        // 연차정산 : 기관과제진행상태(정상:10) 이고, 정산진행상태가 (보고서미재출:0,위탁과제정산등록완료:4)
        // --일괄정산 : 개발시작 ~ 개발종료 시점에 등록 가능
        // --단계정산 : 개발시작 ~ 개발종료 시점에 등록 가능
        // 일괄정산,단계정산 -> 개발종료 시점 이후에 등록 가능 하도록 변경
        // 정산형태 : 1(일괄),2(연차),3(단계),4(문제과제),5(특별)
        var sac_shp    = <%=sbjtData_sacShp%>;
        var dev_str_dt = <%=sbjtData_devStrDt%>;
        var dev_end_dt = <%=sbjtData_devEndDt%>;
        
        if(sac_shp == "1" || sac_shp =="3" ){
            var today = new Date();
            var year  = today.getFullYear();
            var month = today.getMonth()+1;
            var day   = today.getDate();
            if(day<10)   day   = "0" + day;
            if(month<10) month = "0" + month;       
            var valDate = year + "" + month + "" + day;
            
            if(valDate < dev_end_dt)
            {
                alert("이월등록신청 기간이 아닙니다.");
                return;
            }
             
        //연차정산
        }else if(sac_shp == "2"){
            //과제진행상태 10:"정산"
           if("10"!='<%=sbjtData_instSbjtPrgrSt%>'){
                alert("해당 기관은 정산단계가 아닙니다.");
                return;
            }  
                
        }else {
            alert("현재 이월신청등록은 일괄정산/연차정산/단계정산에서만 가능합니다.");
            return;
        }  
        
        
        for(var i=0; i<getGridRowCount_rMate(grid);i++){
            var dataRow_crov = grid.getItemAt(i);
            var dataRow = grid2.getItemAt(i);
        
            if((Number(dataRow_crov.CROV_CASH_APC_AMT2)<0) || (Number(dataRow_crov.CROV_SPOT_APC_AMT2)<0)){
                alert("마이너스 금액은 입력 할 수 없습니다.");
                grid.setItemFieldAt("0", rowIndex, "CROV_CASH_APC_AMT2");     // 값, row, id
                grid.setItemFieldAt("0", rowIndex, "CROV_SPOT_APC_AMT2");     // 값, row, id
                
                var footer = grid.getObjectById("footer");
                footer.invalidateData();
                return;
            }
            
            if((Number(dataRow_crov.CROV_CASH_APC_AMT2) == 0) && (Number(dataRow_crov.CROV_SPOT_APC_AMT2) == 0)){
                cnt++;
            }
            
            //2011.08.04
            //기이월신청등록 확인 : 재이월신청등록시 0원으로 이월신청등록 수정 가능
//            if( (Number(dataRow.CROV_AMT > 0)) || (Number(dataRow.SPOT_CROV_AMT > 0)) ){
            if( (Number(dataRow.CROV_AMT) > 0) || (Number(dataRow.SPOT_CROV_AMT) > 0) ){

    /*          if(""==grid.GetValue(i,8)|| null==grid.GetValue(i,8)){
                    alert("이월신청사유를 입력하세요.");
                    return;  */
                
                //  현물만 이월신청 할 경우 메세지 출력되는 부분 수정  2012.07.24   pkj
                if(  !((("0"==dataRow_crov.CROV_CASH_APC_AMT2)||(null==dataRow_crov.CROV_CASH_APC_AMT2)) && 
                        (("0"==dataRow_crov.CROV_SPOT_APC_AMT2)||(null==dataRow_crov.CROV_SPOT_APC_AMT2)) ) &&
                            ((""==dataRow_crov.CROV_APC_RSN)||(null==dataRow_crov.CROV_APC_RSN)) ){
                    
                    alert("이월신청 사유를 입력하세요.");
                    return;
                }else if(  (("0"==dataRow_crov.CROV_CASH_APC_AMT2)||(null==dataRow_crov.CROV_CASH_APC_AMT2)) &&
                         (("0"==dataRow_crov.CROV_SPOT_APC_AMT2)||(null==dataRow_crov.CROV_SPOT_APC_AMT2))  &&
                          !((""==dataRow_crov.CROV_APC_RSN)||(null==dataRow_crov.CROV_APC_RSN))  ){
                    
                    alert("이월신청 금액없이 신청 사유만 입력하신 비목이 있습니다. ");
                    return;
                            
                }else
                    {
                        insertData += "&ITXP_CD="+ dataRow_crov.ITXP_CD; //세목코드
                        insertData += "&ITXP_NM="+ dataRow_crov.ITXP_NM; //세부비목
                        //insertData += "&DTXP_CD="+dataRow.ITXP_CD;
                        if((""==dataRow_crov.CROV_CASH_APC_AMT2) || (null==dataRow_crov.CROV_CASH_APC_AMT2))
                            instAmt =   "0";
                        else
                            instAmt =   dataRow_crov.CROV_CASH_APC_AMT2;
                        insertData += "&CROV_CASH="+instAmt;
                        
                        if((""==dataRow_crov.CROV_SPOT_APC_AMT2) || (null==dataRow_crov.CROV_SPOT_APC_AMT2))
                            instAmt =   "0";
                        else
                            instAmt =   dataRow_crov.CROV_SPOT_APC_AMT2;

                        insertData += "&CROV_SPOT="+instAmt;
                        insertData += "&APC_RSN="+dataRow_crov.CROV_APC_RSN;
                        ////////2011.07.13 ///////////////// 
                        if(dataRow_crov.BAL_CASH=="" || (dataRow_crov.BAL_CASH == null))
                            instAmt = "0";
                        else 
                            instAmt = dataRow_crov.BAL_CASH;

                        insertData += "&EXCTN_BAL=" + instAmt;  //현금잔액

                        if(dataRow_crov.BAL_SPOT=="" || (dataRow_crov.BAL_SPOT == null))
                            instAmt = "0";
                        else 
                            instAmt = dataRow_crov.BAL_SPOT;

                        insertData += "&SPOT_BAL=" + instAmt;   //현물잔액
                        ////////2011.07.18 /////////////////
                        if(dataRow_crov.USE_APV_CASH_LIM_AMT == "" || (dataRow_crov.USE_APV_CASH_LIM_AMT == null))
                            instAmt = "0";
                        else
                            instAmt = dataRow_crov.USE_APV_CASH_LIM_AMT;  

                        insertData += "&USE_APV_CASH_LIM_AMT=" + instAmt;   //사용승인한도금액

                        if(dataRow_crov.BF_YR_CASH_CROV_AMT == "" || (dataRow_crov.BF_YR_CASH_CROV_AMT == null))
                            instAmt = "0";
                        else
                            instAmt = dataRow_crov.BF_YR_CASH_CROV_AMT;  

                        insertData += "&BF_YR_CASH_CROV_AMT=" + instAmt;    //전년도현금이월금액

                        if(dataRow_crov.BF_YR_SPOT_CROV_AMT == "" || (dataRow_crov.BF_YR_SPOT_CROV_AMT == null))
                            instAmt = "0";
                        else
                            instAmt = dataRow_crov.BF_YR_SPOT_CROV_AMT;  

                        insertData += "&BF_YR_SPOT_CROV_AMT=" + instAmt;    //전년도현물이월금액
                    
                        /////2011.07.20 /////////////////
                        insertData += "&SAC_SHP=" + sac_shp;        //정산형태
                        insertData += "&DEV_STR_DT=" + dev_str_dt;      //개발시작시간
                        insertData += "&DEV_END_DT=" + dev_end_dt;      //개발종료시간
                    }
                
            }else if( (Number(dataRow.CROV_AMT == 0))  && (Number(dataRow.SPOT_CROV_AMT == 0)) ) {


                if(  !((("0"==dataRow_crov.CROV_CASH_APC_AMT2)||(null==dataRow_crov.CROV_CASH_APC_AMT2)) && 
                        (("0"==dataRow_crov.CROV_SPOT_APC_AMT2)||(null==dataRow_crov.CROV_SPOT_APC_AMT2)) ) &&
                            ((""==dataRow_crov.CROV_APC_RSN)||(null==dataRow_crov.CROV_APC_RSN)) ){
                    
                    alert("이월신청 사유를 입력하세요.");
                    return;
                }else if(  (("0"==dataRow_crov.CROV_CASH_APC_AMT2)||(null==dataRow_crov.CROV_CASH_APC_AMT2)) &&
                         (("0"==dataRow_crov.CROV_SPOT_APC_AMT2)||(null==dataRow_crov.CROV_SPOT_APC_AMT2))  &&
                          !((""==dataRow_crov.CROV_APC_RSN)||(null==dataRow_crov.CROV_APC_RSN))  ){
                    
                    alert("이월신청 금액없이 신청 사유만 입력하신 비목이 있습니다. ");
                    return;
                            
                }else{
                    insertData += "&ITXP_CD="+ dataRow.ITXP_CD; //세목코드
                    insertData += "&ITXP_NM="+ dataRow.ITXP_NM;  //세부비목
                    //insertData += "&DTXP_CD="+dataRow.ITXP_CD;
                    if((""==dataRow_crov.CROV_CASH_APC_AMT2) || (null==dataRow_crov.CROV_CASH_APC_AMT2))
                        instAmt =   "0";
                    else
                        instAmt =   dataRow_crov.CROV_CASH_APC_AMT2;
                    insertData += "&CROV_CASH="+instAmt;
                    
                    if((""==dataRow_crov.CROV_SPOT_APC_AMT2) || (null==dataRow_crov.CROV_SPOT_APC_AMT2))
                        instAmt =   "0";
                    else
                        instAmt =   dataRow_crov.CROV_SPOT_APC_AMT2;

                    insertData += "&CROV_SPOT="+instAmt;
                    insertData += "&APC_RSN="+dataRow_crov.CROV_APC_RSN;
                    ////////2011.07.13 ///////////////// 
                    if(dataRow_crov.BAL_CASH=="" || (dataRow_crov.BAL_CASH == null))
                        instAmt = "0";
                    else 
                        instAmt = dataRow_crov.BAL_CASH;

                    insertData += "&EXCTN_BAL=" + instAmt;  //현금잔액

                    if(dataRow_crov.BAL_SPOT=="" || (dataRow_crov.BAL_SPOT == null))
                        instAmt = "0";
                    else 
                        instAmt = dataRow_crov.BAL_SPOT;

                    insertData += "&SPOT_BAL=" + instAmt;   //현물잔액
                    ////////2011.07.18 /////////////////
                    if(dataRow_crov.USE_APV_CASH_LIM_AMT == "" || (dataRow_crov.USE_APV_CASH_LIM_AMT == null))
                        instAmt = "0";
                    else
                        instAmt = dataRow_crov.USE_APV_CASH_LIM_AMT;  

                    insertData += "&USE_APV_CASH_LIM_AMT=" + instAmt;   //사용승인한도금액

                    if(dataRow_crov.BF_YR_CASH_CROV_AMT == "" || (dataRow_crov.BF_YR_CASH_CROV_AMT == null))
                        instAmt = "0";
                    else
                        instAmt = dataRow_crov.BF_YR_CASH_CROV_AMT;  

                    insertData += "&BF_YR_CASH_CROV_AMT=" + instAmt;    //전년도현금이월금액

                    if(dataRow_crov.BF_YR_SPOT_CROV_AMT == "" || (dataRow_crov.BF_YR_SPOT_CROV_AMT == null))
                        instAmt = "0";
                    else
                        instAmt = dataRow_crov.BF_YR_SPOT_CROV_AMT;  

                    insertData += "&BF_YR_SPOT_CROV_AMT=" + instAmt;    //전년도현물이월금액
                
                    /////2011.07.20 /////////////////
                    insertData += "&SAC_SHP=" + sac_shp;        //정산형태
                    insertData += "&DEV_STR_DT=" + dev_str_dt;      //개발시작시간
                    insertData += "&DEV_END_DT=" + dev_end_dt;      //개발종료시간
                }
            }
        }

        if(frm.CrovProcSt.value == "1"){
            alert("이월신청 진행상태가 취소 및 승인이 되어야만 다시 신청하실 수 있습니다.");
            return;
        }

        
        if(cnt == getGridRowCount_rMate(grid)){
            alert("이월신청 금액이 0원일 경우에는 이월신청이 안됩니다.");
            return;
        }
        
        get2post(frm, insertData);

        
                    
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    reset_submit();
                    alert("차년도 이월신청이 완료되었습니다.");
                    window.close();
                }
                , 1000);   // 1초후 실행 1000 = 1초   
        
        
        removeTempAttribute(frm);

    }
        
        
        
        
        
        
        
        
    /*****************************************************************
     * uf_crovCancel        연구기관 이월신청 취소
     * @param
     * @return
    ******************************************************************/
    function uf_crovCancel_rMate(){
        var frm     = document.frm;
        var grid    = gridRoot_crov;
        var grid2   = gridRoot;
        
        var instAmt    = "";
        var insertData = "";   //서브밋데이터
        var msg        = "";
        
        if(frm.CrovProcSt.value != "1"){
            alert("현재 이월신청상태는 취소 및 승인이 되어있는 상태이기 때문에 \n다시 취소를 하실 수 없습니다.\n다시 이월신청이 되어야만 취소가 가능합니다.");
            return;
        }
        for(var i=0; i<getGridRowCount_rMate(grid);i++){
            var dataRow_crov = grid.getItemAt(i);
            var dataRow = grid2.getItemAt(i);
            if( (Number(dataRow.CROV_AMT > 0)) || (Number(dataRow.SPOT_CROV_AMT > 0)) ){

                insertData += "&ITXP_CD="+ dataRow.ITXP_CD;
                insertData += "&ITXP_NM="+ dataRow.ITXP_NM;
                
                if((""==dataRow_crov.CROV_CASH_APC_AMT2) || (null==dataRow_crov.CROV_CASH_APC_AMT2)){
                    instAmt =   "0";
                } else{
                    instAmt =   dataRow_crov.CROV_CASH_APC_AMT2;
                }
                insertData += "&CROV_CASH="+instAmt;
                
                if((""==dataRow_crov.CROV_SPOT_APC_AMT2) || (null==dataRow_crov.CROV_SPOT_APC_AMT2)){
                    instAmt =   "0";
                }
                else{
                    instAmt =   dataRow_crov.CROV_SPOT_APC_AMT2;
                }
                insertData += "&CROV_SPOT="+instAmt;
                
                if(dataRow_crov.BAL_CASH=="" || (dataRow_crov.BAL_CASH == null)){
                    instAmt = "0";
                } else {
                    instAmt = dataRow_crov.BAL_CASH;
                }
                insertData += "&EXCTN_BAL=" + instAmt;  //현금잔액

                if(dataRow_crov.BAL_SPOT=="" || (dataRow_crov.BAL_SPOT == null)){
                    instAmt = "0";
                } else {
                    instAmt = dataRow_crov.BAL_SPOT;
                } 
                insertData += "&SPOT_BAL=" + instAmt;   //현물잔액

                if(dataRow.USE_APV_CASH_LIM_AMT == "" || (dataRow.USE_APV_CASH_LIM_AMT == null)){
                    instAmt = "0";
                } else {
                    instAmt = dataRow.USE_APV_CASH_LIM_AMT;  
                }
                insertData += "&USE_APV_CASH_LIM_AMT=" + instAmt;   //사용승인한도금액
                
                if(dataRow.CROV_AMT == "" || (dataRow.CROV_AMT == null)){
                    instAmt = "0";  
                } else {
                    instAmt = dataRow.CROV_AMT;
                }
                insertData += "&CROV_CASH_AMT=" + instAmt;  //차년도이월현금금액
                
                if(dataRow.SPOT_CROV_AMT == "" || (dataRow.SPOT_CROV_AMT == null)){
                    instAmt = "0";  
                } else {
                    instAmt = dataRow.SPOT_CROV_AMT;
                }
                insertData += "&CROV_SPOT_AMT=" + instAmt;  //차년도이월현물금액

            }else if( (Number(dataRow.CROV_AMT == 0))  && (Number(dataRow.SPOT_CROV_AMT == 0)) ) {

                insertData += "&ITXP_CD="+ dataRow.ITXP_CD;
                insertData += "&ITXP_NM="+ dataRow.ITXP_NM;
                if((""==dataRow_crov.CROV_CASH_APC_AMT2) || (null==dataRow_crov.CROV_CASH_APC_AMT2)){
                    instAmt =   "0";
                } else{
                    instAmt =   dataRow_crov.CROV_CASH_APC_AMT2;
                }
                insertData += "&CROV_CASH="+instAmt;
                
                if((""==dataRow_crov.CROV_SPOT_APC_AMT2) || (null==dataRow_crov.CROV_SPOT_APC_AMT2)){
                    instAmt =   "0";
                }
                else{
                    instAmt =   dataRow_crov.CROV_SPOT_APC_AMT2;
                }
                insertData += "&CROV_SPOT="+instAmt;

                if(dataRow_crov.BAL_CASH=="" || (dataRow_crov.BAL_CASH == null)){
                    instAmt = "0";
                } else {
                    instAmt = dataRow_crov.BAL_CASH;
                }
                insertData += "&EXCTN_BAL=" + instAmt;  //현금잔액

                if(dataRow_crov.BAL_SPOT=="" || (dataRow_crov.BAL_SPOT == null)){
                    instAmt = "0";
                } else {
                    instAmt = dataRow_crov.BAL_SPOT;
                } 
                insertData += "&SPOT_BAL=" + instAmt;   //현물잔액
                
                if(dataRow.USE_APV_CASH_LIM_AMT == "" || (dataRow.USE_APV_CASH_LIM_AMT == null)){
                    instAmt = "0";  
                } else {
                    instAmt = dataRow.USE_APV_CASH_LIM_AMT;
                }
                insertData += "&USE_APV_CASH_LIM_AMT=" + instAmt;   //사용승인한도금액
                
                if(dataRow.CROV_AMT == "" || (dataRow.CROV_AMT == null)){
                    instAmt = "0";  
                } else {
                    instAmt = dataRow.CROV_AMT;
                }
                insertData += "&CROV_CASH_AMT=" + instAmt;  //차년도이월현금금액
                
                if(dataRow.SPOT_CROV_AMT == "" || (dataRow.SPOT_CROV_AMT == null)){
                    instAmt = "0";  
                } else {
                    instAmt = dataRow.SPOT_CROV_AMT;
                }
                insertData += "&CROV_SPOT_AMT=" + instAmt;  //차년도이월현물금액

            }
        }
        
        get2post(frm, insertData);
        
        msg = "이월신청하신것을 취소하시겠습니까?";
        
        if(confirm(msg)) {
            uf_proce_display_on();  //로딩바
            
            setTimeout(
                    function(){
                        reset_submit();
                        alert("이월신청취소가 정상적으로 처리되었습니다.");
                        window.close();
                    }
                    , 1000);   // 1초후 실행 1000 = 1초   
            removeTempAttribute(frm);
                    
        }
    }
        
     
    $(document).ready(function() {
        // rMateGrid 초기화
        rMateGridInit();
    }); 
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<script type="text/javascript">
function SetData() { 
    
    var seqNo = "<%=agrmtSeqNo%>";

    if(!seqNo || seqNo == "") return;
    if( isSubmit() ) return;    // 이중처리
    
        
    try {
        
        var cnt = 0;
        var cnt_crov = 0;
        var gridValue = [];
        var gridValue_crov = [];
        
        //1. 신규과제
        if("G00000000000001" == seqNo){
            

            document.frm.CrovProcSt.value = "0";
            
            <%
            RvcnAmt = "0";
            IntBal = Long.parseLong("0");
            IntBal_sum = Long.parseLong("0");
            %>
 
            
        //2. 진행과제
        }else if("G00000000000002" == seqNo){


        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){

            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","PRE_CASH_LIM_AMT":"20000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"20000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"19500","SPOT_USE":"0","EXCTN_BAL":"500","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","PRE_CASH_LIM_AMT":"38000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"38000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"37200","SPOT_USE":"0","EXCTN_BAL":"800","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","PRE_CASH_LIM_AMT":"30000","PRE_SPOT_PLAN":"30000","AGRMT_CASH_LIM_AMT":"30000","SPOT_PLAN":"30000","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"30000","SPOT_USE":"30000","EXCTN_BAL":"0","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","PRE_CASH_LIM_AMT":"9000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"9000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"8900","SPOT_USE":"0","EXCTN_BAL":"100","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","PRE_CASH_LIM_AMT":"2000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"2000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"2000","SPOT_USE":"0","EXCTN_BAL":"0","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","PRE_CASH_LIM_AMT":"1000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"1000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"1000","SPOT_USE":"0","EXCTN_BAL":"0","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};

            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","USE_APV_CASH_LIM_AMT2":"500","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"1363","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","USE_APV_CASH_LIM_AMT2":"800","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"4181","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","USE_APV_CASH_LIM_AMT2":"0","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"0","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","USE_APV_CASH_LIM_AMT2":"100","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"100","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","USE_APV_CASH_LIM_AMT2":"0","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"0","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","USE_APV_CASH_LIM_AMT2":"0","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"90","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};

            
            document.frm.CrovProcSt.value = "1";
            
            <%
            RvcnAmt = "10000";
            IntBal = Long.parseLong("0");
            IntBal_sum = Long.parseLong("10000");
            %>
        
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){

            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","PRE_CASH_LIM_AMT":"20000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"20000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"18637","SPOT_USE":"0","EXCTN_BAL":"1363","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","PRE_CASH_LIM_AMT":"38000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"38000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"33819","SPOT_USE":"0","EXCTN_BAL":"4181","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","PRE_CASH_LIM_AMT":"30000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"30000","SPOT_PLAN":"30000","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"30000","SPOT_USE":"30000","EXCTN_BAL":"0","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","PRE_CASH_LIM_AMT":"9000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"9000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"8900","SPOT_USE":"0","EXCTN_BAL":"100","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","PRE_CASH_LIM_AMT":"2000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"2000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"2000","SPOT_USE":"0","EXCTN_BAL":"0","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","PRE_CASH_LIM_AMT":"1000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"1000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"910","SPOT_USE":"0","EXCTN_BAL":"90","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};

            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","USE_APV_CASH_LIM_AMT2":"1363","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"1363","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"1363","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","USE_APV_CASH_LIM_AMT2":"4181","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"4181","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"4181","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","USE_APV_CASH_LIM_AMT2":"0","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"0","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","USE_APV_CASH_LIM_AMT2":"100","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"100","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"100","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","USE_APV_CASH_LIM_AMT2":"0","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"0","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","USE_APV_CASH_LIM_AMT2":"90","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"90","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"90","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};

            
            document.frm.CrovProcSt.value = "0";
            
            <%
            RvcnAmt = "0";
            IntBal = Long.parseLong("0");
            IntBal_sum = Long.parseLong("0");
            %>
            
        }
                


    
        
    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        gridData_crov = gridValue_crov;
        rMateGridSetData();  //rMateGrid 구현
        rMateGridSetData_crov();
        
    }
}

</script>



        <div id="body">
            <form name="frm" method="post">
            <input type="hidden" name="CrovProcSt" value="">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>사업비사용현황</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "255", "#FFFFFF");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->                 
                <div class="t20"></div>
                <h3>차년도 이월신청</h3>
                <div class="t10"></div>
                <div class="guide_bu">연차정산 과제의 경우 이월금 신청은 담당간사의 승인을 받은 경우에만 가능합니다(승인공문 필수)</div>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv_crov">
                <script>
                rMateGridCreate("grid_crov", "/rMateGrid/Component/rMateGridWeb", flashVars_crov, "100%", "255", "#FFFFFF");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->                    
                <div class="t10"></div>
                <div class="guide_bu">이월신청금액,이월신청사유는 입력이 가능한 항목입니다.</div>
                <!-- action bt start -->
                <div class="ar">
                    <a href="#" onclick="uf_crovCancel_rMate(); return false;" class="bt_action6-01" title="취소"><span class="bt_sp">이월신청취소</span></a>
                    <a href="#" onclick="uf_crovApc_rMate(); return false;" class="bt_action2-01" title="저장"><span class="bt_sp">저장</span></a>
                </div>
                <!-- //action bt end// -->
                <h3>수익금 입력</h3>
                <!-- 수익금 입력 start -->
                <div class="t10  pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="수익금 입력" class="tbl_type03">
                    <caption>수익금 입력</caption>
                    <colgroup>
                        <col width="30%" />
                        <col width="35%" />
                        <col width="35%" />
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col">이자</th>
                        <th scope="col"><label for="money">수익금</label></th>
                        <th scope="col">합계</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="ar"><%=FormatUtil.getMoneyForm( IntBal.toString()) %></td>
                        <td class="ac"><input type="text" name="RvnAmt" datatype="dotcurrency" class="inputr" onKeyUp="uf_calRvnsum(this);" title="수익금" style="width:220px" value="<%=FormatUtil.getMoneyForm(RvcnAmt)%>"/></td>
                        <td class="ar"><span id="RvnSum"><%=FormatUtil.getMoneyForm( IntBal_sum.toString()) %></span></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //수익금 입력 end// -->
                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" onclick="uf_saveRvnAmt(); return false;" class="bt_action2-01" title="저장"><span class="bt_sp">저장</span></a>
                </div>
                <!-- //action bt end// -->
            </div>
            </form>
        </div>
        <!-- //content end// -->










<%@ include file="/inc/jspFooter_popup.jsp" %> 




<script type="text/javascript">
/*****************************************************************
 * uf_saveRvnAmt        수익금저장
 * @param       RvnAmt
 * @return
******************************************************************/
function uf_saveRvnAmt() {
    
    var frm = document.frm;

    // 과제진행상태 10:"정산"
    if("10"!='<%=sbjtData_instSbjtPrgrSt%>'){
        alert("해당 기관은 정산단계가 아닙니다.");
        return;
    }
    
    // 김봉민 2012.06.29 : 수익금 입력안해도 0원으로 입력되도록 수정
    if( frm.RvnAmt.value == null || frm.RvnAmt.value == '' ) {
        frm.RvnAmt.value = "0";
    }
    
    frm.RvnAmt.value = removeComma(frm.RvnAmt);
    
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                reset_submit();
                alert("수익금을 저장하였습니다.");
                window.close();
            }
            , 1000);   // 1초후 실행 1000 = 1초   
    
            
}

/*****************************************************************
 * uf_calRvnsum     수익금합계계산
 * @param
 * @return
******************************************************************/
function uf_calRvnsum(obj) {
    
    var frm = document.frm;
    
    document.getElementById("RvnSum").innerHTML = putComma( (Number(('<%=IntBal%>')) + Number(removeComma(obj)))+ "");

    frm.RvnAmt.value = putComma(removeComma(obj));
    
}



</script>



</body></html>