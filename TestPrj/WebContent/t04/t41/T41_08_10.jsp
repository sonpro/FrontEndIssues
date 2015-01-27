<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_08_10.jsp
 *   Description        : 과제연계데이터 상세팝업 조회
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==============================================================================
 *   2013.12.10                     예기해
 *
 *  @author 예기해
 *  @Since  
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<!-- //head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->


<% 
   String AgrmtSeqNo = SessionUtil.getRequestValue(request, "AgrmtSeqNo");  // 협약일련번호
   String SbjtId     = SessionUtil.getRequestValue(request, "SbjtId");      // 과제ID
   String HmpwRoleDv = SessionUtil.getRequestValue(request, "HmpwRoleDv");
   String InstRoleDv = SessionUtil.getRequestValue(request, "InstRoleDv");
   
%>



<title>협약정보 상세 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">협약정보 상세</p>
        </div>
        <!-- //head title// --> 
    </div>



<!-- **********************  rMateGrid setting START ***********************  -->




<script type="text/javaScript">
//layout 사업비구성
var layout1 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" lockedColumnCount=\"1\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <groupedColumns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridColumn id=\"STG_ANNL\"   dataField=\"STG_ANNL\"    headerText=\"단계연차\"   width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_ROLE_DV\"   dataField=\"AGRMT_INST_ROLE_DV\"    headerText=\"기관역할구분\"   width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_NM\"   dataField=\"AGRMT_INST_NM\"    headerText=\"기관명\"   width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumnGroup headerText=\"사업비분담\" headerStyleName=\"gridHeaderStyle\" >\
                <DataGridColumn id=\"MNSR_CTBT_AMT\"   dataField=\"MNSR_CTBT_AMT\"    headerText=\"정부출연금\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                <DataGridColumnGroup headerText=\"민간\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"PRIVT_CASH_AMT\"   dataField=\"PRIVT_CASH_AMT\"    headerText=\"현금\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"PRIVT_SPOT_AMT\"   dataField=\"PRIVT_SPOT_AMT\"    headerText=\"현물\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"지자체\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"ALOT_CASH_AMT\"   dataField=\"ALOT_CASH_AMT\"    headerText=\"현금\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"ALOT_SPOT_AMT\"   dataField=\"ALOT_SPOT_AMT\"    headerText=\"현물\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"합계\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"TOTALB_CASH\"   dataField=\"TOTALB_CASH\"    headerText=\"현금\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"TOTALB_SPOT\"   dataField=\"TOTALB_SPOT\"    headerText=\"현물\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerText=\"사업비목\" headerStyleName=\"gridHeaderStyle\" >\
                <DataGridColumnGroup headerText=\"합계\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"TOTAL_CASH\"   dataField=\"TOTAL_CASH\"    headerText=\"현금\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"TOTAL_SPOT\"   dataField=\"TOTAL_SPOT\"    headerText=\"현물\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"인건비\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"PERSN_CASH\"   dataField=\"PERSN_CASH\"    headerText=\"현금\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"PERSN_SPOT\"   dataField=\"PERSN_SPOT\"    headerText=\"현물\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"간접비\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"INDIR_CASH\"   dataField=\"INDIR_CASH\"    headerText=\"현금\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"INDIR_SPOT\"   dataField=\"INDIR_SPOT\"    headerText=\"현물\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"직접비\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"DIRCT_CASH\"   dataField=\"DIRCT_CASH\"    headerText=\"현금\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"DIRCT_SPOT\"   dataField=\"DIRCT_SPOT\"    headerText=\"현물\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"위탁연구개발비\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"CNSGR_CASH\"   dataField=\"CNSGR_CASH\"    headerText=\"현금\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"CNSGR_SPOT\"   dataField=\"CNSGR_SPOT\"    headerText=\"현물\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
            </DataGridColumnGroup>\
        </groupedColumns>\
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


//layout 협약기관
var layout2 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <DataGrid id=\"rgrid2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" lockedColumnCount=\"1\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\">\
        <columns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridColumn id=\"AGRMT_INST_BZ_REG_NO\"   dataField=\"AGRMT_INST_BZ_REG_NO\"    headerText=\"사업자등록번호\"     width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_NM\"          dataField=\"AGRMT_INST_NM\"           headerText=\"협약기관명\"         width=\"140\" visible=\"true\" textAlign=\"left\"   headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_ROLE_DV\"     dataField=\"AGRMT_INST_ROLE_DV\"      headerText=\"기관역할\"           width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"NPRF_INST_YN\"           dataField=\"NPRF_INST_YN\"            headerText=\"비영리여부\"         width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCH_EXP_ACCT_BNK_CD\"    dataField=\"RCH_EXP_ACCT_BNK_CD\"     headerText=\"은행명\"             width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCH_EXP_SAL_ACCT_NO\"    dataField=\"RCH_EXP_SAL_ACCT_NO\"     headerText=\"계좌번호\"           width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ARTE_YN\"                dataField=\"ARTE_YN\"                 headerText=\"대납여부\"           width=\"80\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CPCG_INST_NM\"           dataField=\"CPCG_INST_NM\"            headerText=\"사업비정산기관명\"   width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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

//layout 참여인력
var layout3 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <DataGrid id=\"rgrid3\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" lockedColumnCount=\"1\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\">\
        <columns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridColumn id=\"HMPW_SEQ_NO\"             dataField=\"HMPW_SEQ_NO\"             headerText=\"인력순번\"       width=\"80\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_NM\"                 dataField=\"INST_NM\"                 headerText=\"협약기관명\"     width=\"170\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PTCN_RCHR_NM\"            dataField=\"PTCN_RCHR_NM\"            headerText=\"성명\"           width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PTCN_RCHR_NM_RES_REG_NO\" dataField=\"PTCN_RCHR_NM_RES_REG_NO\" headerText=\"주민등록번호\"   width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"NATV_YN\"                 dataField=\"NATV_YN\"                 headerText=\"내국인여부\"     width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PTCN_RT\"                 dataField=\"PTCN_RT\"                 headerText=\"참여율\"         width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PTCN_STR_DT\"             dataField=\"PTCN_STR_DT\"             headerText=\"참여시작일자\"   width=\"90\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PTCN_END_DT\"             dataField=\"PTCN_END_DT\"             headerText=\"참여종료일자\"   width=\"90\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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

//layout 과제인력
var layout4 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <DataGrid id=\"rgrid4\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" lockedColumnCount=\"1\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\">\
        <columns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridColumn id=\"INST_NM\"            dataField=\"INST_NM\"         headerText=\"협약기관명\"     width=\"100\" visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HMPW_ROLE_DV\"       dataField=\"HMPW_ROLE_DV\"    headerText=\"역할구분\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USR_NM\"             dataField=\"USR_NM\"          headerText=\"성명\"           width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCMS_GRP_CD\"        dataField=\"RCMS_GRP_CD\"     headerText=\"그룹코드\"       width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HMPW_ROLE_SB_DV\"    dataField=\"HMPW_ROLE_SB_DV\" headerText=\"역할세부구분\"   width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_MANA_YN\"       dataField=\"INST_MANA_YN\"    headerText=\"기관책임자여부\" width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AUTO_ROLE_YN\"       dataField=\"AUTO_ROLE_YN\"    headerText=\"자동권한여부\"   width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CPCG_YN\"            dataField=\"CPCG_YN\"         headerText=\"전담여부\"       width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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

//rMateGrid의 bridge 명을 다르게 주어 자바스크립트에서 제어할 수 있도록 합니다.
var flashVars1 = "dataType=json&bridgeName=gridBridge1";
var flashVars2 = "dataType=json&bridgeName=gridBridge2";
var flashVars3 = "dataType=json&bridgeName=gridBridge3";
var flashVars4 = "dataType=json&bridgeName=gridBridge4";

//rMateGrid 관련 객체
var gridApp1; // 플래시 기본 객체
var gridApp2; // 플래시 기본 객체
var gridApp3; // 플래시 기본 객체
var gridApp4; // 플래시 기본 객체
var gridData1; // 그리드 데이터 담기
var gridData2; // 그리드 데이터 담기
var gridData3; // 그리드 데이터 담기
var gridData4; // 그리드 데이터 담기
var gridRoot1; // 데이타와 그리드를 포함하는 객체
var gridRoot2; // 데이타와 그리드를 포함하는 객체
var gridRoot3; // 데이타와 그리드를 포함하는 객체
var gridRoot4; // 데이타와 그리드를 포함하는 객체
var dataGrid1; // 그리드 정보 담기
var dataGrid2; // 그리드 정보 담기
var dataGrid3; // 그리드 정보 담기
var dataGrid4; // 그리드 정보 담기


//그리드 레이아웃 호출**********************************  사업비구성
var rMateGridInitLayout1 = function() {
    gridApp1 = FABridge.gridBridge1.root();
    gridRoot1 = gridApp1.getGridRoot();
    gridApp1.setLayout(layout1); //그리드 레이아웃 생성
    
    //더블클릭 상세보기 이벤트 추가
    var itemDoubleClickHandler = function(event) {
        
        var rowIndex = event.getRowIndex();
        var columnIndex = event.getColumnIndex();
        var dataRow = gridRoot1.getItemAt(rowIndex);
        var column = dataGrid1.getColumns()[columnIndex];
        var dataField = column.getDataField();
        
        layerDetail(dataGrid1, dataRow);
    };
   
    //그리드 이벤트 등록
    var layoutCompleteHandler = function(event) {
        dataGrid1 = gridApp1.getDataGrid();
        
        //이벤트 등록
        //dataGrid1.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
    };

    
    //layout 출력 후 실행될 이벤트 등록
    gridRoot1.addEventListener("layoutComplete", layoutCompleteHandler);
    gridRoot1.addEventListener("layoutComplete", uf_search);
    
    //data 출력 후 실행할 이벤트 등록
    gridRoot1.addEventListener("dataComplete", setTotCnt1);   //전체 조회건수 출력

};

//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge1", rMateGridInitLayout1);


//로딩 후 rMadeGrid 출력
function rMateGridSetData1() {
    gridApp1 = FABridge.gridBridge1.root();  
    gridApp1.setData(JSON.stringify(gridData1)); //데이터 출력

};






//그리드 레이아웃 호출**********************************  협약기관 
var rMateGridInitLayout2 = function() {
  gridApp2 = FABridge.gridBridge2.root();
  gridRoot2 = gridApp2.getGridRoot();
  gridApp2.setLayout(layout2); //그리드 레이아웃 생성
  
  //더블클릭 상세보기 이벤트 추가
  var itemDoubleClickHandler = function(event) {
      
      var rowIndex = event.getRowIndex();
      var columnIndex = event.getColumnIndex();
      var dataRow = gridRoot2.getItemAt(rowIndex);
      var column = dataGrid2.getColumns()[columnIndex];
      var dataField = column.getDataField();
      
      layerDetail(dataGrid2, dataRow);
  };
 
  //그리드 이벤트 등록
  var layoutCompleteHandler = function(event) {
      dataGrid2 = gridApp2.getDataGrid();
      
      //이벤트 등록
      //dataGrid2.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
  };

  
  //layout 출력 후 실행될 이벤트 등록
  gridRoot2.addEventListener("layoutComplete", layoutCompleteHandler);
  gridRoot2.addEventListener("layoutComplete", rMateGridSetData2);
  
  //data 출력 후 실행할 이벤트 등록
  gridRoot2.addEventListener("dataComplete", setTotCnt2);   //전체 조회건수 출력

};

//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge2", rMateGridInitLayout2);


//로딩 후 rMadeGrid 출력
function rMateGridSetData2() {
  gridApp2 = FABridge.gridBridge2.root();  
  gridApp2.setData(JSON.stringify(gridData2)); //데이터 출력

};
  



//그리드 레이아웃 호출**********************************  참여인력 
var rMateGridInitLayout3 = function() {
  gridApp3 = FABridge.gridBridge3.root();
  gridRoot3 = gridApp3.getGridRoot();
  gridApp3.setLayout(layout3); //그리드 레이아웃 생성
  
  //더블클릭 상세보기 이벤트 추가
  var itemDoubleClickHandler = function(event) {
      
      var rowIndex = event.getRowIndex();
      var columnIndex = event.getColumnIndex();
      var dataRow = gridRoot3.getItemAt(rowIndex);
      var column = dataGrid3.getColumns()[columnIndex];
      var dataField = column.getDataField();
      
      layerDetail(dataGrid3, dataRow);
  };
 
  //그리드 이벤트 등록
  var layoutCompleteHandler = function(event) {
      dataGrid3 = gridApp3.getDataGrid();
      
      //이벤트 등록
      //dataGrid3.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
  };

  
  //layout 출력 후 실행될 이벤트 등록
  gridRoot3.addEventListener("layoutComplete", layoutCompleteHandler);
  gridRoot3.addEventListener("layoutComplete", rMateGridSetData3);
  
  //data 출력 후 실행할 이벤트 등록
  gridRoot3.addEventListener("dataComplete", setTotCnt3);   //전체 조회건수 출력

};

//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge3", rMateGridInitLayout3);


//로딩 후 rMadeGrid 출력
function rMateGridSetData3() {
  gridApp3 = FABridge.gridBridge3.root();  
  gridApp3.setData(JSON.stringify(gridData3)); //데이터 출력

};
  



//그리드 레이아웃 호출**********************************  과제인력 
var rMateGridInitLayout4 = function() {
  gridApp4 = FABridge.gridBridge4.root();
  gridRoot4 = gridApp4.getGridRoot();
  gridApp4.setLayout(layout4); //그리드 레이아웃 생성
  
  //더블클릭 상세보기 이벤트 추가
  var itemDoubleClickHandler = function(event) {
      
      var rowIndex = event.getRowIndex();
      var columnIndex = event.getColumnIndex();
      var dataRow = gridRoot4.getItemAt(rowIndex);
      var column = dataGrid4.getColumns()[columnIndex];
      var dataField = column.getDataField();
      
      layerDetail(dataGrid4, dataRow);
  };
 
  //그리드 이벤트 등록
  var layoutCompleteHandler = function(event) {
      dataGrid4 = gridApp4.getDataGrid();
      
      //이벤트 등록
      //dataGrid4.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
  };

  
  //layout 출력 후 실행될 이벤트 등록
  gridRoot4.addEventListener("layoutComplete", layoutCompleteHandler);
  gridRoot4.addEventListener("layoutComplete", rMateGridSetData4);
  
  //data 출력 후 실행할 이벤트 등록
  gridRoot4.addEventListener("dataComplete", setTotCnt4);   //전체 조회건수 출력

};

//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge4", rMateGridInitLayout4);


//로딩 후 rMadeGrid 출력
function rMateGridSetData4() {
  gridApp4 = FABridge.gridBridge4.root();  
  gridApp4.setData(JSON.stringify(gridData4)); //데이터 출력
  
  addGridMouseWheelEventListener();

};
  
    
    
//전체 자료수 출력
function setTotCnt1(){
    $("#InqPrsTotlNcnt01").html(getGridRowCount_rMate(gridRoot1));
}
function setTotCnt2(){
    $("#InqPrsTotlNcnt02").html(getGridRowCount_rMate(gridRoot2));
}
function setTotCnt3(){
    $("#InqPrsTotlNcnt03").html(getGridRowCount_rMate(gridRoot3));
}
function setTotCnt4(){
    $("#InqPrsTotlNcnt04").html(getGridRowCount_rMate(gridRoot4));
}



/**
 * 그리드 마우스 휠 이벤트
 */
function addGridMouseWheelEventListener() {
    var ta = document.getElementById("gridDiv");
    if (window.addEventListener) {
        // Internet Explorer, Opera, Google Chrome and Safari
        ta.addEventListener('mousewheel', mouseWheelHandler, false);
        // Firefox
        ta.addEventListener('DOMMouseScroll', mouseWheelHandler, false);
    } else  // IE before version 9
        ta.onmousewheel = mouseWheelHandler;
}

function mouseWheelHandler(event) {
    if (!event)
        event = window.event;

    var ua = navigator.userAgent.toLowerCase();
    var edelta = event.wheelDelta / 40;
    if (/mozilla/.test(ua) && !/(compatible|webkit)/.test(ua))
        edelta = -event.detail;
    else if (/chrome/.test(ua))
        edelta = event.wheelDelta / 80;
    var o = {
        x : event.screenX,
        y : event.screenY,
        delta : edelta,
        ctrlKey : event.ctrlKey,
        altKey : event.altKey,
        shiftKey : event.shiftKey
    };
    // 그리드가 스크롤에 반응한 경우 true 아니면 false (즉 데이타가 없거나 적거나 맨위나 맨아래등 스크롤이 필요없는 경우 false)
    var ret = gridApp4.mouseWheelHandler(o);
    if (ret) {
        if (event.stopPropagation) {
            event.stopPropagation();
            event.preventDefault();
        } else {    // for IE
            event.cancelBubble = true;
            event.returnValue = false;
        }
    }
}

    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



    <div id="body" style="width:100%; height:100%; overflow:auto; overflow-y:scroll;  position: absolute; ">
	    <form name="frm" method="post">
		<div id="content">
			<div class="t20"></div>
			<h3>협약정보</h3>
			<div class="t10 pop_wh">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="협약정보 리스트" class="tbl_type02">
					<caption>협약정보부 리스트</caption>
					<colgroup>
                        <col width="15%" />
                        <col width="35%" />
                        <col width="13%" />
                        <col width="10%" />
                        <col width="13%" />
                        <col width="22%" />
					</colgroup>
					<tbody>
						<tr>
							<th scope="col">과제번호</th>
							<td><span id="SbjtId"></span></td>
		                    <th scope="col">단계/연차</th>
		                    <td><span id="StgAnnl"></span></td>  
		                    <th scope="col">협약구분</th>
							<td class="ll"><span id="AgrmtDv"></span></td>
						</tr>
						<tr>
							<th scope="col">사업분류명</th>
							<td colspan="3"><span id="BzClasNm"></span></td>
		                    <th scope="col">정산형태</th>
		                    <td class="ll"><span id="SacShp"></span></td>   					
						</tr>
						<tr>
		                    <th scope="col">과제명</th>
		                    <td colspan="3"><span id="SbjtNm"></span></td>	
		                    <th scope="row">개발기간</th>
		                    <td class="ll"><span id="DevDt"></span></td>    			
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 탭버튼 -->
			<div class="t20 b10">
				<div class="tab_line"> 
					<a href="#dummy" onclick="tabChange('1');" id="tab1" class="bt_tab2" title="사업비구성">사업비구성</a><a href="#dummy" onclick="tabChange('2');" id="tab2" class="bt_tab1" title="협약기관">협약기관</a><a href="#dummy" onclick="tabChange('3');" id="tab3" class="bt_tab1" title="참여인력">참여인력</a><a href="#dummy" onclick="tabChange('4');" id="tab4" class="bt_tab1" title="과제인력">과제인력</a>
				</div>
			</div>
			<!-- //탭버튼//-->
			<!-- 그리드 start -->
            <div class="pop_box" id="tabBlock1" style="display:block;">
<!-- *************************  rMateGrid1 Start  ************************* -->
                <div class="total_box">
                    <p class="fl">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> 건]</p>
                    <p class="cb"></p>
                </div>
                <!-- 그리드 Start -->
                <div id="gridDiv1" >
                    <script>rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars1, "100%", "250", "#FFFFFF", "transparent");</script>
                </div>
                <!-- 그리드 End -->
<!-- *************************  rMateGrid1 End  ************************* -->                
            </div>
            <div class="pop_box" id="tabBlock2" style="display:none;">
<!-- *************************  rMateGrid2 Start  ************************* -->
                <div class="total_box">
                    <p class="fl">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt1">0</span> 건]</p>
                    <p class="cb"></p>
                </div>
                <!-- 그리드 Start -->
                <div id="gridDiv2" >
                    <script>rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars2, "100%", "250", "#FFFFFF", "transparent");</script>
                </div>
                <!-- 그리드 End -->
<!-- *************************  rMateGrid2 End  ************************* -->                
            </div>
            <div class="pop_box" id="tabBlock3" style="display:none;">
<!-- *************************  rMateGrid3 Start  ************************* -->
                <div class="total_box">
                    <p class="fl">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건]</p>
                    <p class="cb"></p>
                </div>
                <!-- 그리드 Start -->
                <div id="gridDiv3" >
                    <script>rMateGridCreate("grid3", "/rMateGrid/Component/rMateGridWeb", flashVars3, "100%", "250", "#FFFFFF", "transparent");</script>
                </div>
                <!-- 그리드 End -->
<!-- *************************  rMateGrid3 End  ************************* -->                
            </div>
            <div class="pop_box" id="tabBlock4" style="display:none;">
<!-- *************************  rMateGrid4 Start  ************************* -->
                <div class="total_box">
                    <p class="fl">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt3">0</span> 건]</p>
                    <p class="cb"></p>
                </div>
                <!-- 그리드 Start -->
                <div id="gridDiv4" >
                    <script>rMateGridCreate("grid4", "/rMateGrid/Component/rMateGridWeb", flashVars4, "100%", "250", "#FFFFFF", "transparent");</script>
                </div>
                <!-- 그리드 End -->
<!-- *************************  rMateGrid4 End  ************************* -->                
            </div>
			<!-- //그리드 end// -->
			
<%
    // 주관기관, 과제책임자
    if ("C".equals(InstRoleDv) && ("02".equals(HmpwRoleDv)||"01".equals(HmpwRoleDv))) {
%>	
	  <div class="b10 ar"></div>
<!-- ***************************************************************** chekbox ***************************************************************** -->
      <div class="b10" style="height:260px;">
		
<!-- *************************  tab 1 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock1" style="display:block;">
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />
				<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사업비구성 체크박스" class="tbl_type123">
					<tr>
                    <td width="9" height="28"><input type='checkbox' id="chkbox1"></td>
                   	  <td>연차, 기관역할구분, 기관명 등 해당과제 협약서 상의 정보와 RCMS 협약 정보가 일치함</td>
					
						
					</tr>
					<tr>
                    <td width="9" valign="top"><input type='checkbox' id="chkbox2"></td>
                    <td><p>사업비 구성 재원(정부출연금, 민간부담금, 지자체부담금) 금액이 일치함<br />
	         
	                  - 사업비분담(납부기준)과 사업비목(사용기준)의 현금 및 현물 금액의 구성이 협약서와 동일<br />
	                  - 일반적으로 사업비 분담(납부기준) 합계와 사업비목 합계(사용기준)금액이 일치함<br />
	   &nbsp  (민간·지자체 부담금 대리 납부 등의 경우 제외)
                      </p></td>
						
						
					</tr>
	                <tr>
                    	<td width="9" valign="top"><input type='checkbox' id="chkbox3"></td> 
                    <td >민간부담금 대리 납부의 경우, 다음과 같이 사업비 구성 금액이 표시됨 <a href="#" onmouseover="showdiv('sbmdiv'); return false;" onmouseout="fnExitCheck()"><img src="/images/bt/U41_08_10_bt.gif" /></a>
						</td>
					</tr>
	                <tr>
                    	<td width="9" valign="top"><input type='checkbox' id="chkbox4"></td> 
                    <td >
                    	민간부담금 납부기관은 분기별(3/6/9/12월) 이자가 발생하며,<br />
                    	[이용환경관리]-[이자관리]-[이자발생내역 조회]에서 상시 출금가능(사업자 유형별 이자소득세 원청징수)
                    </td>
					</tr>
				</table>
	 	 	</div>
	  	</div>
    	</div>
        
        
<!-- *************************  tab 1 checkbox end ************************* --> 

<!-- *************************  tab 2 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock2" style="display:none;"> 
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />           
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사업비구성 체크박스" class="tbl_type123">
				<tr>
					<td width="9" valign="top"><input type='checkbox' id="chkbox5"></td>
					<td>수행기관별 사업자등록번호와 협약기관명이 일치함<br />
                    	- 연구비 집행 증빙자료(전자세금계산서, 카드증빙 등) 등록, 사업비 자금이제 치 사업자등록번호 일치여부 확인
					</td>
				</tr>
				<tr>
					<td width="9" valign="top"><input type='checkbox' id="chkbox6"></td>
					<td>연구비 계좌번호 및 은행 일치함<br />
					- 자금이체 시 연구비 계좌 예금주와 협약기관 실명번호 일치여부 검증
                    
					</td>
				</tr>
			</table>
			</div>
		</div>
		</div>
<!-- *************************  tab 2 checkbox end ************************* --> 

<!-- *************************  tab 3 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock3" style="display:none;">   
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />               
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사업비구성 체크박스" class="tbl_type123">
				<tr>
					<td width="9" valign="top"><input type='checkbox' id="chkbox7"></td>
					<td>참여인력 정보 일치함<br />
						- 참여인력 : 해당과제의 참여연구원(인건비 지급 대상)<br />
                    	- 주민등록번호, 참여율 등 필수확인<br />
                    	- 누락된 참여인력은 인건비 지급 불가<br />
					</td>
				</tr>
			</table>
			</div>
		</div>
		</div>
<!-- *************************  tab 3 checkbox end ************************* --> 


<!-- *************************  tab 4 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock4" style="display:none;"> 
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />              
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사업비구성 체크박스" class="tbl_type123">
				<tr>
					<td width="9" valign="top"><input type='checkbox' id="chkbox8"></td>
					<td>과제인력 정보 일치함<br />
                    	- 과제인력이 RCMS 사용권한(사용등록 및 이체 등)이 부여 된 사용자<br />
                    	- 사용자별 RCMS에 부여 된 역할 및 권한 확인 필수<br />
					</td>
				</tr>
				<tr>
					<td width="9" valign="top"><input type='checkbox' id="chkbox9"></td>
					<td>참여인력에는 있으나 과제인력에 보이지 않는 경우<br />
                    	- 해당 인력은 과제에는 참여하나 RCMS는 사용하지 않고 인건비만 지급받는 경우임<br />
                    	- 사용자별 RCMS에 부여 된 역할 및 권한 확인 필수<br />
					</td>
				</tr>
			</table>
			</div>		
        </div>
        </div>
        </div>
        <!-- action bt start -->
        <div class="pop_action_bt ar">
		     <a href="#" onclick="fn_save(); return false;" class="bt_action7-1" title="사업비사용시작"><span class="bt_sp">사업비사용시작</span></a>
		</div>
		<!-- //action bt end// -->
        		<span class="txt_or">&nbsp;※ 협약서의 내용과 상단의 RCMS 정보가 상이한 경우 전담기관 과제담당자에게 문의주시기 바랍니다.<br>
        		&nbsp;&nbsp;&nbsp;&nbsp;(각 전담기관 과제관리사이트에서 정보를 수정하고 RCMS에 수정 된 정보가 반영이 된 이후 '사업비사용시작'을 개시하시기 바랍니다.)</span>
		</div>
        
<!-- *************************  tab 4 checkbox end ************************* --> 	

<!-- 레이어 팝업 start -->
	<div id="sbmdiv" class="layer_pop" style="display:none;">
		<!-- <h3>민간부담금 대리납부일 경우</h3> -->
		<div>
			<img src="/images/info/U41_08_10_tb.gif" />
	  	</div>    
	</div>
<!-- 레이어 팝업 start -->

<!-- ***************************************************************** chekbox ***************************************************************** -->

<%
    } else {
%>	

	  <div class="b10 ar"></div>
<!-- ***************************************************************** chekbox ***************************************************************** -->
      <div class="b10" style="height:260px;">
		
<!-- *************************  tab 1 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock1" style="display:block;">
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />
				<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사업비구성 체크박스" class="tbl_type123">
					<tr>
                    <td width="9" height="28" valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
                   	  <td>연차, 기관역할구분, 기관명 등 해당과제 협약서 상의 정보와 RCMS 협약 정보가 일치함</td>
					
						
					</tr>
					<tr>
                    <td width="9"valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
                    <td><p>사업비 구성 재원(정부출연금, 민간부담금, 지자체부담금) 금액이 일치함<br />
	         
	                  - 사업비분담(납부기준)과 사업비목(사용기준)의 현금 및 현물 금액의 구성이 협약서와 동일<br />
	                  - 일반적으로 사업비 분담(납부기준) 합계와 사업비목 합계(사용기준)금액이 일치함<br />
	   &nbsp  (민간·지자체 부담금 대리 납부 등의 경우 제외)
                      </p></td>
						
						
					</tr>
	                <tr>
                    	<td width="9" valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td> 
                    <td >민간부담금 대리 납부의 경우, 다음과 같이 사업비 구성 금액이 표시됨 <a href="#" onmouseover="showdiv('sbmdiv'); return false;" onmouseout="fnExitCheck()"><img src="/images/bt/U41_08_10_bt.gif" /></a>
						</td>
					</tr>
	                <tr>
                    	<td width="9" valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td> 
                    <td >
                    	민간부담금 납부기관은 분기별(3/6/9/12월) 이자가 발생하며,<br />
                    	[이용환경관리]-[이자관리]-[이자발생내역 조회]에서 상시 출금가능(사업자 유형별 이자소득세 원청징수)
                    </td>
					</tr>
				</table>
	 	 	</div>
	  	</div>
    	</div>
        
        
<!-- *************************  tab 1 checkbox end ************************* --> 

<!-- *************************  tab 2 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock2" style="display:none;"> 
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />           
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사업비구성 체크박스" class="tbl_type123">
				<tr>
					<td width="9"  height="28"  valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
					<td>수행기관별 사업자등록번호와 협약기관명이 일치함<br />
                    	- 연구비 집행 증빙자료(전자세금계산서, 카드증빙 등) 등록, 사업비 자금이제 치 사업자등록번호 일치여부 확인
					</td>
				</tr>
				<tr>
					<td width="9" valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
					<td>연구비 계좌번호 및 은행 일치함<br />
					- 자금이체 시 연구비 계좌 예금주와 협약기관 실명번호 일치여부 검증
                    
					</td>
				</tr>
			</table>
			</div>
		</div>
		</div>
<!-- *************************  tab 2 checkbox end ************************* --> 

<!-- *************************  tab 3 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock3" style="display:none;">   
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />               
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사업비구성 체크박스" class="tbl_type123">
				<tr>
					<td width="9"  height="28"  valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
					<td>참여인력 정보 일치함<br />
						- 참여인력 : 해당과제의 참여연구원(인건비 지급 대상)<br />
                    	- 주민등록번호, 참여율 등 필수확인<br />
                    	- 누락된 참여인력은 인건비 지급 불가<br />
					</td>
				</tr>
			</table>
			</div>
		</div>
		</div>
<!-- *************************  tab 3 checkbox end ************************* --> 


<!-- *************************  tab 4 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock4" style="display:none;"> 
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />              
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사업비구성 체크박스" class="tbl_type123">
				<tr>
					<td width="9"  height="28"  valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
					<td>과제인력 정보 일치함<br />
                    	- 과제인력이 RCMS 사용권한(사용등록 및 이체 등)이 부여 된 사용자<br />
                    	- 사용자별 RCMS에 부여 된 역할 및 권한 확인 필수<br />
					</td>
				</tr>
				<tr>
					<td width="9" valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
					<td>참여인력에는 있으나 과제인력에 보이지 않는 경우<br />
                    	- 해당 인력은 과제에는 참여하나 RCMS는 사용하지 않고 인건비만 지급받는 경우임<br />
                    	- 사용자별 RCMS에 부여 된 역할 및 권한 확인 필수<br />
					</td>
				</tr>
			</table>
			</div>		
        </div>
        </div>
        </div>
        <!-- action bt start -->
        <div style="height:40px;"></div>
		<!-- //action bt end// -->
        		<span class="txt_or">&nbsp;※ 협약서의 내용과 상단의 RCMS 정보가 상이한 경우 전담기관 과제담당자에게 문의주시기 바랍니다.<br>
        		&nbsp;&nbsp;&nbsp;&nbsp;(각 전담기관 과제관리사이트에서 정보를 수정하고 RCMS에 수정 된 정보가 반영이 된 이후 '사업비사용시작'을 개시하시기 바랍니다.)</span>
        
<!-- *************************  tab 4 checkbox end ************************* --> 	

<!-- 레이어 팝업 start -->
	<div id="sbmdiv" class="layer_pop" style="display:none;">
		<!-- <h3>민간부담금 대리납부일 경우</h3> -->
		<div>
			<img src="/images/info/U41_08_10_tb.gif" />
	  	</div>    
	</div>
<!-- 레이어 팝업 start -->

<!-- ***************************************************************** chekbox ***************************************************************** -->

<%} %>
	</form>
	</div>
    <!-- //content end// -->

<iframe name="sendIfrm" style="display:none;" frameborder="0" width="0" height="0" marginwidth="0" marginheight="0" title="처리용 아이프래임"></iframe>

<script type="text/javascript">

    function uf_search(){
        var frm = document.frm;
        
        if( isSubmit() ) return;    // 이중처리

        
        uf_proce_display_on();  //로딩바
        setTimeout(function(){SetData("<%=AgrmtSeqNo%>", "<%=SbjtId%>");}, 1000);   // 1초후 실행 1000 = 1초s

        removeTempAttribute(frm);   //get2post 삭제
         
    }
    
    $(window).load(function () {
        rMateGridInit();
        //uf_search();
    });
    
    //TAB Event
    function tabChange(gbn){
        switch (gbn) {
            case "1" :
                
                document.getElementById('tab1').className = "bt_tab2";
                document.getElementById('tab2').className = "bt_tab1";
                document.getElementById('tab3').className = "bt_tab1";
                document.getElementById('tab4').className = "bt_tab1";
                
                document.all.tabBlock1.style.display="block";
                document.all.tabBlock2.style.display="none";
                document.all.tabBlock3.style.display="none";
                document.all.tabBlock4.style.display="none";
                
                document.getElementById("chekBlock1").style.display   = "inline";
                document.getElementById("chekBlock2").style.display   = "none";
                document.getElementById("chekBlock3").style.display   = "none";
                document.getElementById("chekBlock4").style.display   = "none";
                
                break;
            case "2" :
                document.getElementById('tab1').className = "bt_tab1";
                document.getElementById('tab2').className = "bt_tab2";
                document.getElementById('tab3').className = "bt_tab1";
                document.getElementById('tab4').className = "bt_tab1";
                
                document.all.tabBlock1.style.display="none";
                document.all.tabBlock2.style.display="block";
                document.all.tabBlock3.style.display="none";
                document.all.tabBlock4.style.display="none";
                
                document.getElementById("chekBlock1").style.display   = "none";
                document.getElementById("chekBlock2").style.display   = "inline";
                document.getElementById("chekBlock3").style.display   = "none";
                document.getElementById("chekBlock4").style.display   = "none";
                
                break;
            case "3" :
                document.getElementById('tab1').className = "bt_tab1";
                document.getElementById('tab2').className = "bt_tab1";
                document.getElementById('tab3').className = "bt_tab2";
                document.getElementById('tab4').className = "bt_tab1";
                
                document.all.tabBlock1.style.display="none";
                document.all.tabBlock2.style.display="none";
                document.all.tabBlock3.style.display="block";
                document.all.tabBlock4.style.display="none";
                
                document.getElementById("chekBlock1").style.display   = "none";
                document.getElementById("chekBlock2").style.display   = "none";
                document.getElementById("chekBlock3").style.display   = "inline";
                document.getElementById("chekBlock4").style.display   = "none";
                
                break;  
            case "4" :
                document.getElementById('tab1').className = "bt_tab1";
                document.getElementById('tab2').className = "bt_tab1";
                document.getElementById('tab3').className = "bt_tab1";
                document.getElementById('tab4').className = "bt_tab2";
                
                document.all.tabBlock1.style.display="none";
                document.all.tabBlock2.style.display="none";
                document.all.tabBlock3.style.display="none";
                document.all.tabBlock4.style.display="block";
                
                document.getElementById("chekBlock1").style.display   = "none";
                document.getElementById("chekBlock2").style.display   = "none";
                document.getElementById("chekBlock3").style.display   = "none";
                document.getElementById("chekBlock4").style.display   = "inline";
                
                break;                 
        }       
    }
    
    function fn_save() {
        
        var frm = document.frm;

	    if(!((document.getElementById("chkbox1").checked)&&(document.getElementById("chkbox2").checked)&&(document.getElementById("chkbox3").checked)&&(document.getElementById("chkbox4").checked))){
	    	alert("사업비구성내역의 필수확인사항에 미확인 항목이 존재합니다.");
	    	return;
	    }
	    if(!((document.getElementById("chkbox5").checked)&&(document.getElementById("chkbox6").checked))){
	    	alert("협약기관내역의 필수확인사항에 미확인 항목이 존재합니다.");
	    	return;
	    }
	    if(!document.getElementById("chkbox7").checked){
	    	alert("참여인력내역의 필수확인사항에 미확인 항목이 존재합니다.");
	    	return;
	    }
	    if(!((document.getElementById("chkbox8").checked)&&(document.getElementById("chkbox9").checked))){
	    	alert("과제인력내역의 필수확인사항에 미확인 항목이 존재합니다.");
	    	return;
	    }
        
        if(!confirm("협약정보를 확인처리하시겠습니까?")){return;}
        
        get2post(frm, "AgrmtSeqNo=<%=AgrmtSeqNo%>");
        
        uf_proce_display_on();  //로딩바
        
        setTimeout(
            function(){
            	    if("G00000000000001" == "<%=AgrmtSeqNo%>"){
            		    makeCookieData("<%=AgrmtSeqNo%>");
            	    }
                    reset_submit();
                    alert("협약정보 확인 처리가 완료되었습니다.");
                    opener.uf_search();
                    window.close();
                
                }, 1000);   // 1초후 실행 1000 = 1초s
    }
    
    
    //사업비 사용시작
    function makeCookieData(AgrmtSeqNo){
        if(typeof AgrmtSeqNo == "undefined" || AgrmtSeqNo == "") return;
        
        var _COOKIE_DATA = getCookieTraning("T41_08_10"); 
        if(_COOKIE_DATA == false){
        	setCookieTraning("T41_08_10", AgrmtSeqNo, 1);
            
        }else{
        	//값 추가
            var cookieData = _COOKIE_DATA;
            var cookieArr = _COOKIE_DATA.split("|");
            
            if(cookieArr.length > 0){
            	cookieData += "|" + AgrmtSeqNo;
            }
            
            setCookieTraning("T41_08_10", cookieData, 1);

        }
    }
    
	/* -------------------- 예제 팝업 -------------------- */
	function showdiv(id) {
		var frm     = document.frm;
		
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
		$("#sbmdiv").css("top", 754);
		$("#sbmdiv").css("left", 9);
        $("#sbmdiv").css("width", 773);
        $("#sbmdiv").css("height", 155);
        $("#iframe_onac").css("height", "100%");
        $("#iframe_onac").css("width", "100%");
		document.getElementById("sbmdiv").style.display="inline";
	}
	function fnExitCheck(){
		document.getElementById("sbmdiv").style.display="none";		
  		document.getElementById("popup_overlay_onac").style.display="none";
		return;
	}
	/* -------------------- 예제 팝업 -------------------- */
    
</script>



<script type="text/javascript">

function setGridData(seqNo, sbjtId){
	
    try{
        
        var gridValue1 = [];
        var gridValue2 = [];
        var gridValue3 = [];
        var gridValue4 = [];
        var cnt1 = 0;
        var cnt2 = 0;
        var cnt3 = 0;
        var cnt4 = 0;
        
        var SbjtId = "";
        var StgAnnl = "";
        var BzClasNm = "";
        var SacShp = "";
        var SbjtNm = "";
        var AgrmtDv = "";
        var DevDt = "";
        
        
        
        //1. 신규과제
        if(seqNo == "G00000000000001" && sbjtId == "TEST0001"){
            
            SbjtId = "TEST0001";
            StgAnnl = "0 / 1";
            BzClasNm = "RCMS 실습";
            SacShp = "일괄";
            SbjtNm = "RCMS 실습용 신규과제";
            AgrmtDv = "일괄";
            DevDt = "2014-01-01 ~ 2099-01-31";
            

            gridValue1[cnt1++] = {"STG_ANNL":"0/1","AGRMT_INST_ROLE_DV":"공동연구기관","AGRMT_INST_NM":"㈜RCMS","MNSR_CTBT_AMT":"80000","PRIVT_CASH_AMT":"20000","PRIVT_SPOT_AMT":"30000","ALOT_CASH_AMT":"0","ALOT_SPOT_AMT":"0","TOTALB_CASH":"100000","TOTALB_SPOT":"30000","TOTAL_CASH":"100000","TOTAL_SPOT":"0","PERSN_CASH":"0","PERSN_SPOT":"0","INDIR_CASH":"1000","INDIR_SPOT":"0","DIRCT_CASH":"99000","DIRCT_SPOT":"0","CNSGR_CASH":"0","CNSGR_SPOT":"0"};

            gridValue2[cnt2++] = {"AGRMT_INST_BZ_REG_NO":"111-11-11111","AGRMT_INST_NM":"㈜RCMS","AGRMT_INST_ROLE_DV":"공동연구기관","NPRF_INST_YN":"Y","RCH_EXP_ACCT_BNK_CD":"A 은행","RCH_EXP_SAL_ACCT_NO":"100-00-000000","ARTE_YN":"N","CPCG_INST_NM":"한국산업기술평가관리원"};

            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"1","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"이수석","PTCN_RCHR_NM_RES_REG_NO":"123456-*******","NATV_YN":"Y","PTCN_RT":"15","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"2","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"김전임","PTCN_RCHR_NM_RES_REG_NO":"234567-*******","NATV_YN":"Y","PTCN_RT":"25","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"3","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"전연구","PTCN_RCHR_NM_RES_REG_NO":"345678-*******","NATV_YN":"Y","PTCN_RT":"30","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};

            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"과제책임자","USR_NM":"이총괄","RCMS_GRP_CD":"과제책임자","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"Y","AUTO_ROLE_YN":"Y","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"참여연구원","USR_NM":"김전임","RCMS_GRP_CD":"참여연구원","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"참여연구원","USR_NM":"전연구","RCMS_GRP_CD":"참여연구원","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"일반사용자","USR_NM":"최재무","RCMS_GRP_CD":"일반사용자(이체담당자)","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"한국산업기술평가관리원","HMPW_ROLE_DV":"전담기관담당자","USR_NM":"나전담","RCMS_GRP_CD":"전담기관총괄담당자","HMPW_ROLE_SB_DV":"전담기관담당자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"Y"};


        //2. 진행과제
        }else if(seqNo == "G00000000000002" && sbjtId == "TEST0002"){
            //4-3, 5-3, 6-3
            SbjtId = "TEST0002";
            StgAnnl = "0 / 1";
            BzClasNm = "RCMS 실습";
            SacShp = "연차";
            SbjtNm = "RCMS 실습용 진행과제";
            AgrmtDv = "일괄";
            DevDt = "2014-01-01 ~ 2099-01-31";
            

            gridValue1[cnt1++] = {"STG_ANNL":"0/1","AGRMT_INST_ROLE_DV":"공동연구기관","AGRMT_INST_NM":"㈜RCMS","MNSR_CTBT_AMT":"80000","PRIVT_CASH_AMT":"20000","PRIVT_SPOT_AMT":"30000","ALOT_CASH_AMT":"0","ALOT_SPOT_AMT":"0","TOTALB_CASH":"130000","TOTALB_SPOT":"0","TOTAL_CASH":"100000","TOTAL_SPOT":"0","PERSN_CASH":"0","PERSN_SPOT":"0","INDIR_CASH":"1000","INDIR_SPOT":"0","DIRCT_CASH":"99000","DIRCT_SPOT":"0","CNSGR_CASH":"0","CNSGR_SPOT":"0"};

            gridValue2[cnt2++] = {"AGRMT_INST_BZ_REG_NO":"111-11-11111","AGRMT_INST_NM":"㈜RCMS","AGRMT_INST_ROLE_DV":"공동연구기관","NPRF_INST_YN":"Y","RCH_EXP_ACCT_BNK_CD":"A 은행","RCH_EXP_SAL_ACCT_NO":"100-00-000000","ARTE_YN":"N","CPCG_INST_NM":"한국산업기술평가관리원"};
            
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"1","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"이수석","PTCN_RCHR_NM_RES_REG_NO":"123456-*******","NATV_YN":"Y","PTCN_RT":"15","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"2","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"김전임","PTCN_RCHR_NM_RES_REG_NO":"234567-*******","NATV_YN":"Y","PTCN_RT":"25","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"3","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"전연구","PTCN_RCHR_NM_RES_REG_NO":"345678-*******","NATV_YN":"Y","PTCN_RT":"30","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};

            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"과제책임자","USR_NM":"이총괄","RCMS_GRP_CD":"과제책임자","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"Y","AUTO_ROLE_YN":"Y","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"참여연구원","USR_NM":"김전임","RCMS_GRP_CD":"참여연구원","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"참여연구원","USR_NM":"전연구","RCMS_GRP_CD":"참여연구원","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"일반사용자","USR_NM":"최재무","RCMS_GRP_CD":"일반사용자(이체담당자)","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"한국산업기술평가관리원","HMPW_ROLE_DV":"전담기관담당자","USR_NM":"나전담","RCMS_GRP_CD":"전담기관총괄담당자","HMPW_ROLE_SB_DV":"전담기관담당자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"Y"};


        //3. 정산과제(보고서 미제출)
        }else if(seqNo == "G00000000000003" && sbjtId == "TEST0003"){
            //4-1, 5-1, 6-1
            SbjtId = "TEST0003";
            StgAnnl = "0 / 1";
            BzClasNm = "RCMS 실습";
            SacShp = "연차";
            SbjtNm = "RCMS 실습용 정산과제";
            AgrmtDv = "일괄";
            DevDt = "2013-03-01 ~ 2014-02-28";
            

            gridValue1[cnt1++] = {"STG_ANNL":"0/1","AGRMT_INST_ROLE_DV":"공동연구기관","AGRMT_INST_NM":"㈜RCMS","MNSR_CTBT_AMT":"80000","PRIVT_CASH_AMT":"20000","PRIVT_SPOT_AMT":"30000","ALOT_CASH_AMT":"0","ALOT_SPOT_AMT":"0","TOTALB_CASH":"130000","TOTALB_SPOT":"0","TOTAL_CASH":"100000","TOTAL_SPOT":"0","PERSN_CASH":"0","PERSN_SPOT":"0","INDIR_CASH":"1000","INDIR_SPOT":"0","DIRCT_CASH":"99000","DIRCT_SPOT":"0","CNSGR_CASH":"0","CNSGR_SPOT":"0"};

            gridValue2[cnt2++] = {"AGRMT_INST_BZ_REG_NO":"111-11-11111","AGRMT_INST_NM":"㈜RCMS","AGRMT_INST_ROLE_DV":"공동연구기관","NPRF_INST_YN":"Y","RCH_EXP_ACCT_BNK_CD":"A 은행","RCH_EXP_SAL_ACCT_NO":"100-00-000000","ARTE_YN":"N","CPCG_INST_NM":"한국산업기술평가관리원"};
            
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"1","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"이수석","PTCN_RCHR_NM_RES_REG_NO":"123456-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"2","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"김전임","PTCN_RCHR_NM_RES_REG_NO":"234567-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"3","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"전연구","PTCN_RCHR_NM_RES_REG_NO":"345678-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};

            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"과제책임자","USR_NM":"이총괄","RCMS_GRP_CD":"과제책임자","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"Y","AUTO_ROLE_YN":"Y","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"참여연구원","USR_NM":"김전임","RCMS_GRP_CD":"참여연구원","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"참여연구원","USR_NM":"전연구","RCMS_GRP_CD":"참여연구원","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"일반사용자","USR_NM":"최재무","RCMS_GRP_CD":"일반사용자(이체담당자)","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"한국산업기술평가관리원","HMPW_ROLE_DV":"전담기관담당자","USR_NM":"나전담","RCMS_GRP_CD":"전담기관총괄담당자","HMPW_ROLE_SB_DV":"전담기관담당자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"Y"};

         
        //4. 정산과제(보고서 제출 완료)
        }else if(seqNo == "G00000000000004" && sbjtId == "TEST0004"){
            //1
            
            SbjtId = "TEST0004";
            StgAnnl = "0 / 1";
            BzClasNm = "RCMS 실습";
            SacShp = "일괄";
            SbjtNm = "RCMS 실습용 정산과제";
            AgrmtDv = "일괄";
            DevDt = "2013-02-01 ~ 2014-01-31";
        
            
            gridValue1[cnt1++] = {"STG_ANNL":"0/1","AGRMT_INST_ROLE_DV":"공동연구기관","AGRMT_INST_NM":"㈜RCMS","MNSR_CTBT_AMT":"80000","PRIVT_CASH_AMT":"20000","PRIVT_SPOT_AMT":"30000","ALOT_CASH_AMT":"0","ALOT_SPOT_AMT":"0","TOTALB_CASH":"130000","TOTALB_SPOT":"0","TOTAL_CASH":"100000","TOTAL_SPOT":"0","PERSN_CASH":"0","PERSN_SPOT":"0","INDIR_CASH":"1000","INDIR_SPOT":"0","DIRCT_CASH":"99000","DIRCT_SPOT":"0","CNSGR_CASH":"0","CNSGR_SPOT":"0"};

            gridValue2[cnt2++] = {"AGRMT_INST_BZ_REG_NO":"111-11-11111","AGRMT_INST_NM":"㈜RCMS","AGRMT_INST_ROLE_DV":"공동연구기관","NPRF_INST_YN":"Y","RCH_EXP_ACCT_BNK_CD":"A 은행","RCH_EXP_SAL_ACCT_NO":"100-00-000000","ARTE_YN":"N","CPCG_INST_NM":"한국산업기술평가관리원"};
            
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"1","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"이수석","PTCN_RCHR_NM_RES_REG_NO":"123456-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"2","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"김전임","PTCN_RCHR_NM_RES_REG_NO":"234567-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"3","INST_NM":"㈜RCMS","PTCN_RCHR_NM":"전연구","PTCN_RCHR_NM_RES_REG_NO":"345678-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};

            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"과제책임자","USR_NM":"이총괄","RCMS_GRP_CD":"과제책임자","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"Y","AUTO_ROLE_YN":"Y","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"참여연구원","USR_NM":"김전임","RCMS_GRP_CD":"참여연구원","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"참여연구원","USR_NM":"전연구","RCMS_GRP_CD":"참여연구원","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"㈜ RCMS","HMPW_ROLE_DV":"일반사용자","USR_NM":"최재무","RCMS_GRP_CD":"일반사용자(이체담당자)","HMPW_ROLE_SB_DV":"일반사용자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"한국산업기술평가관리원","HMPW_ROLE_DV":"전담기관담당자","USR_NM":"나전담","RCMS_GRP_CD":"전담기관총괄담당자","HMPW_ROLE_SB_DV":"전담기관담당자","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"Y"};

            
        }
        
        
    }finally{
        
        document.getElementById("SbjtId").innerHTML = SbjtId;
        document.getElementById("StgAnnl").innerHTML = StgAnnl;
        document.getElementById("BzClasNm").innerHTML = BzClasNm;
        document.getElementById("SacShp").innerHTML = SacShp;
        document.getElementById("SbjtNm").innerHTML = SbjtNm;
        document.getElementById("AgrmtDv").innerHTML = AgrmtDv;
        document.getElementById("DevDt").innerHTML = DevDt;
        
        gridData1 = gridValue1;    //조회결과 JSON 값 가져오기
        gridData2 = gridValue2;    //조회결과 JSON 값 가져오기
        gridData3 = gridValue3;    //조회결과 JSON 값 가져오기
        gridData4 = gridValue4;    //조회결과 JSON 값 가져오기
        
        rMateGridSetData1();  //rMateGrid 구현
        
    }
}

function SetData(seqNo, sbjtId){
	
	
    if(!seqNo) return false;
    
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor =    "wait";
        //SetData(); //Insert   Grid
        setGridData(seqNo, sbjtId); //Insert    Grid
        document.body.style.cursor =    "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
    }
    
}
</script>


</body>
</html> 
