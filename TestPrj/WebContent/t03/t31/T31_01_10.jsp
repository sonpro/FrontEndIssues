<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T31_01_10.jsp
 *   Description        : 사용실행내역 상세조회 (팝업)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.15                     예기해             
 *
 *  @author     예기해
 *  @Since      2014.01.15
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

// 정산진행상태 조회
//String SacSt                = null2void(getSacPrgrSt(request));
String SacSt                = "";

String Input_pInqStrDt      = SessionUtil.getRequestValue(request, "pInqStrDt");            // 조회시작일
String Input_pInqEndDt      = SessionUtil.getRequestValue(request, "pInqEndDt");            // 조회종료일    

String Input_TrscEvdcDv     = SessionUtil.getRequestValue(request, "pTrscEvdcDv");          // 증빙구분
String Input_ButrId         = SessionUtil.getRequestValue(request, "pButrId");              // 증빙일련번호

String PmsId                = SessionUtil.getRequestValue(request, "PmsId");                // PMS_ID
String SbjtId               = SessionUtil.getRequestValue(request, "SbjtId");               // 과제번호
String AgrmtSeqNo           = SessionUtil.getRequestValue(request, "AgrmtSeqNo");           // 협약일련번호
String AgrmtInstId          = SessionUtil.getRequestValue(request, "AgrmtInstId");          // 협약기관아이디
String TrscDt               = SessionUtil.getRequestValue(request, "TrscDt");               // 거래일자

// 2011.08.30 
String pSbjt_map_keys       = SessionUtil.getRequestValue(request, "pSbjt_map_keys");
String pkeykey              = SessionUtil.getRequestValue(request, "pkeykey");
String pSTrscEvdcDv         = SessionUtil.getRequestValue(request, "pSTrscEvdcDv");

// 2011.12.02 EDMS관련
String hmpwRoleDv           = SessionUtil.getRequestValue(request, "hmpwRoleDv"); 
String rcmsGrpCd            = SessionUtil.getRequestValue(request, "rcmsGrpCd");


%>

<title>연구비사용실행 상세조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">연구비사용실행 상세조회</p>
        </div>
        <!-- //head title// --> 
    </div>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\"  >\
            <columns>\
                <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
                <DataGridColumn id=\"TRSC_EVDC_DV\"           dataField=\"TRSC_EVDC_DV\"            headerText=\"증빙구분코드\"           width=\"100\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"TRSC_EVDC_DV_NM\"        dataField=\"TRSC_EVDC_DV_NM\"         headerText=\"증빙구분\"               width=\"110\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" styleJsFunction=\"columnUnderline2\" itemRenderer=\"HandCursorItem\" secondLabelJsFunction=\"setHandCursor\" />\
                <DataGridColumn id=\"SPLR_CO_NM\"             dataField=\"SPLR_CO_NM\"              headerText=\"거래처\"                 width=\"120\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BZ_EXP_EXCTN_REG_YN\"    dataField=\"BZ_EXP_EXCTN_REG_YN\"     headerText=\"사업비사용등록여부\"     width=\"130\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUTR_ID\"                dataField=\"BUTR_ID\"                 headerText=\"사업비사용거래실적ID\"   width=\"190\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_REG_NCNT\"          dataField=\"ITXP_REG_NCNT\"           headerText=\"비목등록건수\"           width=\"110\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"USE_SPLY_AMT\"           dataField=\"USE_SPLY_AMT\"            headerText=\"공급금액\"               width=\"100\"    visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"USE_VAT_AMT\"            dataField=\"USE_VAT_AMT\"             headerText=\"부가가치세액\"           width=\"100\"    visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"FST_REGR_ID\"            dataField=\"FST_REGR_ID\"             headerText=\"등록자ID\"               width=\"80\"     visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"FILE_MODIFY\"            dataField=\"FILE_MODIFY\"             headerText=\"증빙파일수정\"           width=\"100\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
            <dataProvider>\
	            <SpanArrayCollection source=\"{$gridData}\"/>\
	        </dataProvider>\
	        <footers>\
	            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

    
var layoutStr_itxp = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\"  >\
            <columns>\
                <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
	            <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"사용일자\"           width=\"80\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"세부비목코드\"       width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세부비목\"           width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"세세목코드\"         width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목\"             width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"품목\"               width=\"80\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"MITM_NRM\"           dataField=\"MITM_NRM\"            headerText=\"규격\"               width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"MITM_UPRC\"          dataField=\"MITM_UPRC\"           headerText=\"단가\"               width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	            <DataGridColumn id=\"MITM_QNT\"           dataField=\"MITM_QNT\"            headerText=\"수량\"               width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"공급금액\"           width=\"90\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"부가가치세액\"       width=\"90\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	            <DataGridColumn id=\"BTN_01\"             dataField=\"BTN_01\"              headerText=\"세목변경\"           width=\"70\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BTN_02\"             dataField=\"BTN_02\"              headerText=\"증빙서류등록\"       width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" />\
	            <DataGridColumn id=\"BTN_03\"             dataField=\"BTN_03\"              headerText=\"인건비내역\"         width=\"70\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BEIF_REG_YN\"        dataField=\"BEIF_REG_YN\"         headerText=\"증빙서류등록여부\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BEAI_REG_YN\"        dataField=\"BEAI_REG_YN\"         headerText=\"인건비내역등록여부\" width=\"120\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"RMK\"                dataField=\"RMK\"                 headerText=\"비고\"               width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"MITM_SUM\"           dataField=\"MITM_SUM\"            headerText=\"품목별합계\"         width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"REJCT_PROC_ST\"      dataField=\"REJCT_PROC_ST\"       headerText=\"불인정여부\"         width=\"90\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BEIF_JSON\"          dataField=\"BEIF_JSON\"           headerText=\"RcmsBeif\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BEAI_JSON\"          dataField=\"BEAI_JSON\"           headerText=\"RcmsBeai\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"FST_REGR_ID\"        dataField=\"FST_REGR_ID\"         headerText=\"등록자ID\"           width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"HMPW_ROLE_DV\"       dataField=\"HMPW_ROLE_DV\"        headerText=\"hmpwRoleDv\"         width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"RCMS_GRP_CD\"        dataField=\"RCMS_GRP_CD\"         headerText=\"rcmsGrpCd\"          width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"PMS_ID\"             dataField=\"PMS_ID\"              headerText=\"PMS_ID\"             width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"SBJT_ID\"            dataField=\"SBJT_ID\"             headerText=\"과제번호\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"AGRMT_SEQ_NO_S\"     dataField=\"AGRMT_SEQ_NO_S\"      headerText=\"협약일련번호\"       width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"AGRMT_INST_ID_S\"    dataField=\"AGRMT_INST_ID_S\"     headerText=\"협약기관아이디\"     width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"ITXP_CD\"            dataField=\"AGRMT_INST_ID_S\"     headerText=\"비목코드\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"INPUT_TRSC_EVDC_DV\" dataField=\"INPUT_TRSC_EVDC_DV\"  headerText=\"증빙구분\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"TRSC_DT_S\"          dataField=\"TRSC_DT_S\"           headerText=\"사용일자만\"         width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BUIT_ID\"            dataField=\"BUIT_ID\"             headerText=\"사업비사용비목ID\"   width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"EVDC_DCMT_CMAD_ID\"  dataField=\"EVDC_DCMT_CMAD_ID\"   headerText=\"증빙서류첨부문서ID\" width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"EXT_EDMS_DOC_ID\"    dataField=\"EXT_EDMS_DOC_ID\"     headerText=\"기존EDMS문서ID\"     width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"EDMS_DOC_ID\"        dataField=\"EDMS_DOC_ID\"         headerText=\"EDMS문서ID\"         width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"FILE_NM\"            dataField=\"FILE_NM\"             headerText=\"파일명\"             width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
            <footers>\
                <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{DTLS_ITXP_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
        	if("<%=Input_TrscEvdcDv%>" == "E") return false; 
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var columns = dataGrid.getColumns();
            
            
            var ii = 0;
            var jj = 0;
//            for ( var i = 0; i < columns.length; i++){
            for ( var i = 1; i < columns.length; i++){ //실제 시작되는 셀(index 가 0으로 인식됨)
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
                        
            if (dataField == "TRSC_EVDC_DV_NM") { //그리드상의 더블클릭 컬럼번호. 0부터 시작.
                //fnFileEvdc_rMate_itxp(rowIndex, dataRow);
            
                uf_popup_evdc_dtls_brws(document.frm, dataRow.BUTR_ID, dataRow.TRSC_EVDC_DV);
                
            };
            
            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            dataGrid.addEventListener("itemClick", itemClickHandler); //더블클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", layoutComplete_rMate);
        
        //data 출력 후 실행할 이벤트 등록
        //gridRoot.addEventListener("dataComplete", setColumnStyle);  //증빙구분 처리
        
        
        //그리드의 데이터 변경시 호출
        //gridRoot.addEventListener("itemDataChanged", uf_SetValue_rMate);
        
        

    };
    

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    
    
    /**
     * 밑줄표시
     */
    function columnUnderline2(item, value, column) {
    
        if (value && value != "" && value != "기타")
            return {
                textDecoration : "underline"
                , color :"0x0000FF"
            };
        return null;
    }


    //핸드커서 컨트롤
    function setHandCursor(item, value, column) {
    	
    	if (item.TRSC_EVDC_DV_NM != "기타"){
    		return true;
    	}
        return false;
    }
    
    
    
  //rMateGrid 관련 객체
  var flashVars_itxp = "dataType=json&bridgeName=gridBridge_itxp";
  var gridApp_itxp; // 플래시 기본 객체
  var gridData_itxp; // 그리드 데이터 담기
  var gridRoot_itxp; // 데이타와 그리드를 포함하는 객체
  var dataGrid_itxp; // 그리드 정보 담기
  var collection_itxp; // 그리드의 데이타 객체
  var selectorColumn_itxp; // 셀렉터 컬럼
  var rMateGrid_rowIndex;


  //그리드 레이아웃 호출 
  var rMateGridInitLayout_itxp = function() {
      gridApp_itxp = FABridge.gridBridge_itxp.root();
      gridRoot_itxp = gridApp_itxp.getGridRoot();
      gridApp_itxp.setLayout(layoutStr_itxp);   //그리드 레이아웃 생성

      //클릭 이벤트 추가
      var itemClickHandler = function(event) {
    	  
          var rowIndex = event.getRowIndex();
          var columnIndex = event.getColumnIndex();
          var dataRow = gridRoot_itxp.getItemAt(rowIndex);
 
          
          /*******************************
           * 컬럼을 보이지 않게 하는 visible="false"를 사용시
           * 클릭 이벤트 컬럼은 화면에 보이는 순서대로 사용하지만
           * 실제 처리되는 컬럼은 visible="false"를 포함한 컬럼이 포함되게 처리가 되어 
           * 아래 column,dataField 는 주석처리 하여 아래 내용을 삽입 후 처리한다.
           *************************************/
          //var column = dataGrid.getColumns()[columnIndex];
          //var dataField = column.getDataField();
           
          var columns = dataGrid_itxp.getColumns();
          
          
          var ii = 0;
          var jj = 0;
//          for ( var i = 0; i < columns.length; i++){
          for ( var i = 1; i < columns.length; i++){ //실제 시작되는 셀(index 가 0으로 인식됨)
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
          
          
          if (dataField == "BTN_02") { //그리드상의 더블클릭 컬럼번호. 0부터 시작.
        	  rMateGrid_rowIndex = rowIndex;
        	  fnFileEvdc_rMate_itxp(rowIndex, dataRow);
          };
          
          
      };
      
      //더블클릭 상세보기 이벤트 추가
      var itemDoubleClickHandler = function(event) {
          
          var rowIndex = event.getRowIndex();
          var columnIndex = event.getColumnIndex();
          var dataRow = gridRoot_itxp.getItemAt(rowIndex);
          var column = dataGrid_itxp.getColumns()[columnIndex];
          var dataField = column.getDataField();
          
          layerDetail(dataGrid_itxp, dataRow, "window");
          
      };

      var layoutCompleteHandler = function(event) {
          dataGrid_itxp = gridApp_itxp.getDataGrid();
          
          //이벤트 등록
          dataGrid_itxp.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
          //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
      };
      

      //layout 호출 완료 시 실행할 이벤트 등록
      gridRoot_itxp.addEventListener("layoutComplete", layoutCompleteHandler);
      gridRoot_itxp.addEventListener("layoutComplete", layoutComplete_itxp);
      
      //data 출력 후 실행할 이벤트 등록
      //gridRoot_itxp.addEventListener("dataComplete", setTotCnt);
      
      //색상변경
      //gridRoot_itxp.addEventListener("dataComplete", uf_rowColor_rmate);   //조건에따른 색상처리
      gridRoot_itxp.addEventListener("dataComplete", columnBackGroundStyle_itxp);   //부가세 색상변경

  };

  //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
  FABridge.addInitializationCallback("gridBridge_itxp", rMateGridInitLayout_itxp);


  //로딩 후 rMadeGrid 출력
  function rMateGridSetData_itxp() {
      gridApp_itxp = FABridge.gridBridge_itxp.root();
      gridApp_itxp.setData(JSON.stringify(gridData_itxp)); //데이터 출력
  };

    
    
    
    
    
    

    
    
    
    //컬럼 색상변경
    function columnBackGroundStyle_itxp() {
        if (collection_itxp == null)
            collection_itxp = gridRoot_itxp.getCollection();
        if (collection_itxp == null) {
            alert("collection 객체를 찾을 수 없습니다");
            return;
        }
        for (i = 0; i < collection_itxp.getLength(); i++) {
            collection_itxp.addCellAttributeDetailAt(i, 13, 1, 1, null, 0xEDF2FE);
        }
    }

    
    
    
    /******************************************************************
     * fnFileEvdc        증빙서류 등록
     * @param
     * @return
    ******************************************************************/
    function fnFileEvdc_rMate_itxp(rIdx, rData){
    	
        var mode;
        var dockey;
        var DocTypDv;
        var frm             = document.frm;
        var hmpwRoleDvEdms      = "<%=hmpwRoleDv%>";
        var rcmsGrpCdEdms   = "<%=rcmsGrpCd%>";
        var edmsDocId       = "";
        var pmsId           = "<%=PmsId%>";
        var sbjtId          = "<%=SbjtId%>";
        var agrmtInstId     = "<%=AgrmtInstId%>";
        var agrmtSeqNo      = "<%=AgrmtSeqNo%>";
        var usrId           = "TEST";

        if("<%=SacSt%>" == "1"){
            alert("보고서제출완료 상태입니다.");
            return;
        }

        if("<%=SacSt%>" == "2"){
            alert("검토완료 상태입니다.");
            return;
        }

        if("<%=SacSt%>" == "3"){
            alert("정산확정 상태입니다.");
            return;
        }
        
        
        if(rcmsGrpCdEdms == "MR030" || rcmsGrpCdEdms == "MR042" || rcmsGrpCdEdms == "MR043" || rcmsGrpCdEdms == "MR023" ){
            hmpwRoleDvEdms = "03";
        }
        
        
        if( "" == rData.EDMS_DOC_ID ){ //EDMS문서ID

            mode            = "create";
            useDt           = rData.USE_DT;  //사용일자
            evdcDv          = rData.INPUT_TRSC_EVDC_DV;  //증빙구분
            itxpCd          = rData.DTLS_ITXP_CD.substring(0,4)+"0"; //세부비목코드
            DtlsItxpCd      = rData.DTLS_ITXP_CD;    //세부비목코드
            SubDtlsItxpCd   = rData.SUB_DTLS_ITXP_CD; //세세목코드
            
            //2011 신규 EDMS 연계키 생성
            //연계키생성( PMSID + 과제ID + 협약일련번호 + 협약기관 + 사용일 + 증빙구분 + 비목 + 세목 + 세세목)
            dockey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
            frm.docKey.value    =   dockey;
    
            // EDMS첨부파일등록호출
            edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDvEdms , "/pop/file_popup.jsp?mode="+mode);
        }else{
            
            mode     = "update";
            edmsDocId   = rData.EDMS_DOC_ID; //EDMS문서ID
            
            // EDMS첨부파일등록호출
            edmsUploadFileNew("frm", mode, edmsDocId, usrId , hmpwRoleDvEdms , "/pop/file_popup.jsp?mode="+mode);
        }
        
    }
    
    
    
    /******************************************************************
     * edmsReturnAction     EDMS 반환값그리드셋팅
     * @param
     * @return
    ******************************************************************/
    function setEvdcState(BuitId,CmadId,EdmsDocId) {
        var obj = gridRoot_itxp;
        
        for(var i = 0 ; i < getGridRowCount_rMate(obj); i++ ){
            if( obj.getItemFieldAt(i,"BUIT_ID") == BuitId ){ //사업비사용비목ID
                
                obj.setItemFieldAt(CmadId, i, "EVDC_DCMT_CMAD_ID");   //증빙서류첨부문서ID   // 값, row, id
                obj.setItemFieldAt("등록", i, "BEIF_REG_YN");   //증빙서류등록여부
                obj.setItemFieldAt(EdmsDocId, i, "EXT_EDMS_DOC_ID");    //기존EDMS문서ID
            }
        }
    }

    /******************************************************************
     * edmsReturnAction     EDMS 반환값그리드셋팅
     * @param
     * @return
    ******************************************************************/
    function edmsReturnAction() {
        var dockeyNo, docname,dockey;
        var frm     = document.frm;
        var obj = gridRoot_itxp;
        
        docKeyNo= frm.dockeyNo.value;
        docKey  = frm.docKey.value;
        docName = (frm.docName.value).replace(/=/gi,"-").replace(/&/gi,"n");

        if(docName.length>0){
            obj.setItemFieldAt(docKey, rMateGrid_rowIndex, "EDMS_DOC_ID" );  //EDMS문서ID
            obj.setItemFieldAt(docName, rMateGrid_rowIndex, "FILE_NM" );   //파일명
            obj.setItemFieldAt("등록대기중", rMateGrid_rowIndex, "BEIF_REG_YN");  //증빙서류등록여부
        }
    }
    
    
    
    
    // 그리드에서 수정이 일어나면 불려집니다.
    function uf_SetValue_rMate(event) {
        var rowIndex = event.getRowIndex();                 // 변경된 행번호
        var columnIndex = event.getColumnIndex();       // 변경된 열번호
        var dataField = event.getDataField();               // 변경된 열의 데이타 필드
        var dataRow = gridRoot.getItemAt(rowIndex); // 변경된 데이타 레코드
        //var oldValue = event.getValue();                        // 변경전 값
        //var newValue = event.getNewValue();                 // 변경후 값

        // 수정한 필드에 따라 재호출 한다.
        if("USE_VAT_AMT" == dataField){ //금액수정 시 합계를 재호출하여 총 금액 변경
            //dataGrid.invalidateList();  //그리드 재호출

            var useAmt  = parseFloat(dataRow.TRNS_AMT);     //사용금액
            var vatAmt  = parseFloat(dataRow.USE_VAT_AMT);  //부가가치세액

            gridRoot.setItemFieldAt((useAmt-vatAmt), rowIndex, "USE_SPLY_AMT");
        }
    }
    
    
  //부가세정보 수정
    function uf_save_vat_rMate(){
        var frm = document.frm;
        var vat = "";
        var chk = false;
        
        var totlSplyAmt = 0;
        var totlVatAmt = 0;
        
        
        if( frm.VatPsvApcYn.value == 'Y' ){
            alert('부가세보전신청건에 대해서는 부가가치세액을 변경할 수 없습니다.');
            return false;
        }
        
        
        var rows = getGridRowCount_rMate();
        
        for( idx = 0 ; idx < rows ; idx++ ){
            var dataRow = gridRoot.getItemAt(idx);
            
            var splyAmt = dataRow.USE_SPLY_AMT; //공급가액
            var vatAmt = dataRow.USE_VAT_AMT;   //부가가치세액
            var vatAmt2 = dataRow.USE_VAT_AMT2;  //수정전부가세
            
            if( vatAmt != vatAmt2 ){
                
                get2post(frm, "UseSplyAmt=" + splyAmt);
                get2post(frm, "UseVatAmt=" + vatAmt);
                get2post(frm, dataRow.GRIDKEY);
                chk = true; 
            }
            
            totlSplyAmt += splyAmt;
            totlVatAmt += vatAmt;
        }
        
        get2post(frm, "TotlSplyAmt=" + totlSplyAmt);
        get2post(frm, "TotlVatAmt=" + totlVatAmt);
        
        
        if( chk == false ){
            alert('부가가치세액 변경된 내용이 없습니다.');
            return false;
        }
        
        if( confirm("부가가치세액 변경된 내용을 수정하시겠습니까?") ){
             
             uf_proce_display_on();  //로딩바
             
             setTimeout(
            		 function(){
            			 try{
            				 reset_submit();
                             alert("수정되었습니다.");
                         }finally{
                             reset_submit();
                         }
                 
                 }, 1000);   // 1초후 실행 1000 = 1초s
                 
                 
              
        }
        removeTempAttribute(frm);
        return false;
    }
    
  
  
  
  

    /********************************************************
    * Function      : uf_evdcUpdate
    * Description   : 증빙파일수정
    ********************************************************/
    function uf_evdcUpdate() {
        var frm = document.frm;
        var obj, gridItxpIdx;
        var gridCnt = 0;
        
        if("<%=SacSt%>" == "1"){
            alert("보고서제출완료 상태로 증빙서류를 등록할 수 없습니다.");
            return;
        }

        if("<%=SacSt%>" == "2"){
            alert("검토완료 상태로 증빙서류를 등록할 수 없습니다.");
            return;
        }

        if("<%=SacSt%>" == "3"){
            alert("정산확정 상태로 증빙서류를 등록할 수 없습니다.");
            return;
        }
        
        gridCnt = getGridRowCount_rMate(gridRoot_itxp);
        
        if(gridCnt<=0){
            alert("등록된 비목내역이 없습니다.");
            return;
        }
                  
        if( isSubmit() ) return;                    // 이중처리
        
        var cnt = 0;
        for(var i=0; i<gridCnt; i++){
        	var dataRow = gridRoot_itxp.getItemAt(i);
          
        	if(dataRow.BEIF_REG_YN == "등록대기중"){ //증빙서류등록여부
        		
                
                get2post(frm, "EvdcDcmtCmadId=" + dataRow.EVDC_DCMT_CMAD_ID); //증빙서류첨부문서ID
                get2post(frm, "ExtEdmsDocId="   + dataRow.EXT_EDMS_DOC_ID);   //기존EDMS문서ID
                get2post(frm, "EdmsDocId="      + dataRow.EDMS_DOC_ID);    //EDMS문서ID
                get2post(frm, "FileNm="         + dataRow.FILE_NM);    //파일명
                get2post(frm, "BuitId="         + dataRow.BUIT_ID);    //사업비사용비목ID
                
                cnt++;
            }
        }
        
        if( cnt == 0 ){
            alert("등록대기중인 증빙서류가 존재하지 않습니다.");
            return;
        }
        
        if(!confirm("저장하시겠습니까?")){
            removeTempAttribute(frm);
            return;
        }

        
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    try{
                    	alert("저장되었습니다.");
                        reset_submit();
                    }finally{
                        reset_submit();
                    }
                }
                , 1000);   // 1초후 실행 1000 = 1초   
                
        
        
        removeTempAttribute(frm);
    }
    
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->





    <div id="body">
        <div class="t25"></div>
        <!-- content start -->  
        <div id="content">
            <form name="frm" method="post">
            <input type="hidden" name="pTrscEvdcDv" value="<%=Input_TrscEvdcDv%>">
            <input type="hidden" name="pButrId"     value="<%=Input_ButrId%>">
            
            <input type="hidden" name="Evdc_Dv"     value="<%=Input_TrscEvdcDv%>" />    <!-- 증빙구분 -->
            <input type="hidden" name="ButrId"      value="<%=Input_ButrId%>" />        <!-- 사업비사용거래실적ID -->
            
            <input type="hidden" name="PmsId"      value="<%=PmsId%>" />
            <input type="hidden" name="SbjtId"      value="<%=SbjtId%>" />
            <input type="hidden" name="AgrmtInstId"      value="<%=AgrmtInstId%>" />
            <input type="hidden" name="AgrmtSeqNo"      value="<%=AgrmtSeqNo%>" />
    
            <input type="hidden" name="docKey"      value="" /> <!-- 생성된EDMS_dockey -->
            <input type="hidden" name="docName"      value="" /> <!-- EDMS 파일명 -->
            <input type="hidden" name="dockeyNo"    value="" /> <!-- EDMS 선택된 증빙테이블키 -->
            <input type="hidden" name="methodName"    value="" /> <!-- EDMS method -->

        
            <%@ include file="/inc/sbjt_info_pop.jsp" %>
            <div class="t10"></div>
            <h3>증빙내역</h3>
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "90", "#FFFFFF");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->              
            <div class="guide_bu">증빙구분을 클릭하시면 증빙에 대한 상세내역을 확인 할 수 있습니다.</div>
            <div class="t10"></div>
            <!-- 비목별 잔액내역 시작 -->
<div class="t10 b10"><table width="704" border="0" cellspacing="0" cellpadding="0" id="TblSbjtItxpBal" summary="비목,세부비목 등 등록내역조회내용을 제공한 표" class="tbl_type03" style="display:none;">
        <caption>등록내역조회</caption>
        <colgroup>
        <col width="20%" />
        <col width="20%" />
        <col width="30%" />
        <col width="*" />
        </colgroup>
        <thead>
                <tr>
                        <th scope="col" class="first-child">비목</th>
                        <th scope="col">세부비목</th>
                        <th scope="col">사용가능잔액</th>
                        <th scope="col" class="last-child">사용예정금액</th>
                </tr>
        </thead>
        <tbody>
                <tr>
                        <td class="first-child" rowspan="2">인건비</td>
                        <td><span id="B0101_extcn_tit">내부인건비</span></td>
                        <td class="ar">
                                <span id="B0101_extcn_bal">90</span><BR>
                                (<span id="B0101_extcn_bal2">90</span>)
                        </td>
                        <td class="ar"><span id="B0101_extcn_trn">0</span></td>
                </tr>
                <tr>
                        <td><span id="B0102_extcn_tit">외부인건비</span></td>
                        <td class="ar">
                                <span id="B0102_extcn_bal">5,464</span><BR>
                                (<span id="B0102_extcn_bal2">5,464</span>)
                        </td>
                        <td class="ar"><span id="B0102_extcn_trn">0</span></td>
                </tr>
                <tr>
                        <td class="first-child" rowspan="1">직접비</td>
                        <td><span id="B0202_extcn_tit">연구활동비</span></td>
                        <td class="ar"><span id="B0202_extcn_bal">30,934</span></td>
                        <td class="ar"><span id="B0202_extcn_trn">0</span></td>
                </tr>
                <tr>
                        <td colspan="2" class="sum"><strong>합계</strong></td>
                        <td class="sum"><strong><span id="itxp_extcn_bal_sum">36,488</span></strong></td>
                        <td class="sum"><strong><span id="itxp_extcn_sum">0</span></strong></td>
                </tr>
        </tbody>
</table></div>
            <!-- 비목별 잔액내역 끝 -->
<% 
    if("T".equals(Input_TrscEvdcDv)){
%>
            <h3>거래처정보</h3>
            <div class="t10">
                <table summary=""  class="tbl_type02" width="100%">
                <caption></caption>
                <colgroup>
                    <col width="20%" />
                    <col width="30%" />
                    <col width="15%" />
                    <col width="35%" />
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><strong>세금계산서승인번호</strong></th>
                        <td colspan="3" id="AA_T" class="ll"></td>
                    </tr>
                    <tr>
                        <th scope="row"><strong>상호(법인명)</strong></th>
                        <td id="BB_T"></td>
                        <th scope="row">사업자번호</th>
                        <td id="CC_T" class="ll"></td>
                    </tr>
                    <tr>
                        <th scope="row"><strong>사업장주소</strong></th>
                        <td colspan="3" id="DD_T" class="ll"></td>
                    </tr>
                    <tr>
                        <th scope="row"><strong>업태</strong></th>
                        <td id="EE_T"></td>
                        <th scope="row">업종</th>
                        <td id="FF_T" class="ll"></td>
                    </tr>
                    <tr>
                        <th scope="row"><strong>성명(대표자)</strong></th>
                        <td id="GG_T" colspan="3" class="ll"></td>
                    </tr>
                </tbody>
                </table>
            </div>
<%
    } else if("C".equals(Input_TrscEvdcDv)) {
%>                  
            <h3>카드 승인(매입) 내역</h3>
            <div class="t10">
                <table summary="구분에 따라 승인번호,카드번호,사용일자 등 내역을 제공한 표"  class="tbl_type02" width="100%">
                    <caption>카드승인내역</caption>
                    <colgroup>
                        <col width="9%" />
                        <col width="14%" />
                        <col width="10%" />
                        <col width="10%" />
                        <col width="6%" />
                        <col width="10%" />
                        <col width="10%" />
                        <col width="10%" />
                        <col width="10%" />
                    </colgroup>
                    <tr>
                        <th rowspan="2" scope="col" class="ac">승인번호</th>
                        <th rowspan="2" scope="col" class="ac">카드번호</th>
                        <th rowspan="2" scope="col" class="ac">사용일자</th>
                        <th rowspan="2" scope="col" class="ac">가맹점명</th>
                        <th rowspan="2" scope="col" class="ac">사용<br />구분</th>
                        <th colspan="4" scope="col" class="ac ll">사용내역</th>
                    </tr>
                    <tr>
                        <th scope="col" class="ac">사용금액</th>
                        <th scope="col" class="ac">공급가액</th>
                        <th scope="col" class="ac">부가가치세액</th>
                        <th scope="col" class="ac ll">봉사료</th>
                    </tr>
                    <tr>
                        <td><span id="BB_C"></span></td>
                        <td><span id="CC_C"></span></td>
                        <td><span id="DD_C"></span></td>
                        <td><span id="EE_C"></span></td>
                        <td><span id="FF_C"></span></td>
                        <td class="ar"><span id="GG_C"></span></td>
                        <td class="ar"><span id="HH_C"></span></td>
                        <td class="ar"><span id="II_C"></span></td>
                        <td class="ar ll"><span id="JJ_C"></span></td>
                    </tr>
                </table>
            </div>
<%
    } else if("E".equals(Input_TrscEvdcDv)){
%>  
            <h3>거래처정보</h3>
            <div class="t10">
                <table summary=""  class="tbl_type02" width="100%">
                    <caption></caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="30%" />
                        <col width="20%" />
                        <col width="30%" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row"><strong>상호(법인명)</strong></th>
                            <td id="BB_E"></td>
                            <th scope="row"><strong>사업자번호</strong></th>
                            <td id="CC_E" class="ll"></td>
                        </tr>
                        <tr>
                            <th scope="row"><strong>사업장주소</strong></th>
                            <td colspan="3" id="DD_E" class="ll"></td>
                        </tr>
                        <tr>
                            <th scope="row"><strong>업태</strong></th>
                            <td id="EE_E"></td>
                            <th scope="row"><strong>업종</strong></th>
                            <td id="FF_E" class="ll"></td>
                        </tr>
                        <tr>
                            <th scope="row"><strong>공급금액</strong></th>
                            <td id="GG_E"></td>
                            <th scope="row"><strong>부가가치세액</strong></th>
                            <td id="HH_E" class="ll"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
<%
    }
%>          
            <div class="t10"></div>
            <h3>비목내역</h3>
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv2">
                <script>
                rMateGridCreate("grid_itxp", "/rMateGrid/Component/rMateGridWeb", flashVars_itxp, "100%", "150", "#FFFFFF");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->               
            <!-- action bt start -->
            <div class="t10 ar">
                <a href="#dummy" class="bt_action6-1" title="증빙서류저장" onclick="uf_evdcUpdate();"><span class="bt_sp">증빙서류저장</span></a> 
            </div>
            <!-- //action bt end// -->
            </form>
            
        </div>
        <!-- //content end// -->
    </div>










<%@ include file="/inc/jspFooter_popup.jsp" %> 



<script type="text/javascript">
//rMateGrid 로딩이 완료 된 후 조회를 시작
var isGrid = false;
var isGrid_itxp = false;
var isLoading = false;

// 처음 조회시에만 자동조회가 이루어 지게 한다.
function layoutComplete_rMate(){
    isGrid = true;
    if(isLoading) return;  //처음조회시 isLoading을 true로 변경하여 자동조회가 되게 하고, 두번째부터는 자동조회가 되지 않게한다.
    AutoSearch();
}
function layoutComplete_itxp(){
    isGrid_itxp = true;
    if(isLoading) return;  //처음조회시 isLoading을 true로 변경하여 자동조회가 되게 하고, 두번째부터는 자동조회가 되지 않게한다.
    AutoSearch();
}

    function AutoSearch(){
    	var frm = document.frm;
    	var trscEvdcDv = "<%=Input_TrscEvdcDv%>";
        
    	if(!trscEvdcDv || trscEvdcDv == "" || trscEvdcDv == "null") return;
    	
        if( isSubmit() ) return;    // 이중처리
        //if(!chk_sbjt_sch()) return false; //유효성체크
 
        get2post(frm, "hmpwRoleDv="  +"<%=hmpwRoleDv%>"); 
        get2post(frm, "rcmsGrpCd="   +"<%=rcmsGrpCd%>");   
        get2post(frm, "PmsId="       +"<%=PmsId%>");
        get2post(frm, "SbjtId="      +"<%=SbjtId%>");
        get2post(frm, "AgrmtSeqNo="  +"<%=AgrmtSeqNo%>");
        get2post(frm, "AgrmtInstId=" +"<%=AgrmtInstId%>");
        get2post(frm, "TrscDt="      +"<%=TrscDt%>");       
        /* 
        frm.target = "sendIfrm";
        frm.action = "/jsp/u03/u31/U31_01_10_r.jsp";
        fn_submit(frm); 
        */
        
        setData(trscEvdcDv);
         
        
    }



    
    // 2011.08.30
    function goList(){
        fn_link('/t03/t31/T31_01_00.jsp?OnLoadSearch=Y&pSbjt_map_keys='+"<%=pSbjt_map_keys%>"+'&pInqStrDt='+"<%=Input_pInqStrDt%>" + '&pkeykey=' + "<%=pkeykey%>" +'&pInqEndDt='+"<%=Input_pInqEndDt%>" + '&pSTrscEvdcDv='+"<%=pSTrscEvdcDv%>");
    }
   
</script>



<script type="text/javascript">
    
    $(document).ready(function() {
        // rMateGrid 초기화
        rMateGridInit();
    }); 
</script>


<script type="text/javascript">
function setData(trscEvdcDv){
	
	
	if( !(isGrid && isGrid_itxp)) return;
	if(!isLoading) isLoading = true; // 그리드 초기화시 중복처리 되지 않기위해서 처리
	
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                try{
                    document.body.setCapture(); // 'wait'
                    document.body.style.cursor =    "wait";
                    setGridData(trscEvdcDv); //Insert
                    document.body.style.cursor =    "auto";
                    document.body.releaseCapture(); //setCapture()_Next
                }finally{
                    reset_submit();
                }
            }
            , 1000);   // 1초후 실행 1000 = 1초
    
}


function setGridData(trscEvdcDv){
	
	var cnt = 0;
    try{
        
        var gridValue = [];
        cnt = 0;
        
        //C : card
        if("C" == trscEvdcDv){
        	gridValue[cnt++] = {"TRSC_EVDC_DV":"C","TRSC_EVDC_DV_NM":"카드","SPLR_CO_NM":"㈜ E 가맹점","BZ_EXP_EXCTN_REG_YN":"등록","BUTR_ID":"C201111212383103","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","FST_REGR_ID":"TEST","LST_CORPR_ID":"TEST"};

        //E : 기타
        }else if("E" == trscEvdcDv){
        	gridValue[cnt++] = {"TRSC_EVDC_DV":"E","TRSC_EVDC_DV_NM":"기타","SPLR_CO_NM":"㈜ RCMS","BZ_EXP_EXCTN_REG_YN":"등록","BUTR_ID":"C201111212383103","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","FST_REGR_ID":"TEST","LST_CORPR_ID":"TEST"};

        //T : 전자세금계산서
        }else if("T" == trscEvdcDv){
        	gridValue[cnt++] = {"TRSC_EVDC_DV":"T","TRSC_EVDC_DV_NM":"전자세금계산서","SPLR_CO_NM":"㈜ B 가맹점","BZ_EXP_EXCTN_REG_YN":"등록","BUTR_ID":"C201111212383103","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","FST_REGR_ID":"TEST","LST_CORPR_ID":"TEST"};

        }
        
    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
    
    
    
    try{
        
        var gridValue_itxp = [];
        cnt = 0;
        
        //C : card
        if("C" == trscEvdcDv){

        	gridValue_itxp[cnt++] = {"USE_DT":"2013-12-23","DTLS_ITXP_CD":"B0202","DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"간접비","MITM_NM":"간접비","MITM_NRM":null,"MITM_UPRC":"0","MITM_QNT":null,"USE_SPLY_AMT":"455","USE_VAT_AMT":"45","BTN_01":"","BTN_02":"증빙서류등록","BTN_03":"","BEIF_REG_YN":"등록","BEAI_REG_YN":"미등록","RMK":"","MITM_SUM":34750,"REJCT_PROC_ST":"미확정","BEIF_JSON":"{\"RcmsBeif\":[{\"FileList\":\"비목증빙_예제.xlsx\",\"EtcEvdcSeqNo\":\"P20111121093755-G00000000000003-10112249\"}]}","BEAI_JSON":"","FST_REGR_ID":"TEST","HMPW_ROLE_DV":"02","RCMS_GRP_CD":"MR010","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO_S":"G00000000000003","AGRMT_INST_ID_S":"10112249","ITXP_CD":"B0200","INPUT_TRSC_EVDC_DV":"C","TRSC_DT_S":"2014-02-22","BUIT_ID":"U201111214175230","EVDC_DCMT_CMAD_ID":"D201301211195649","EXT_EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","FILE_NM":""};

            document.getElementById('BB_C').innerHTML= 'N000000000';
            document.getElementById('CC_C').innerHTML= '1111222233334444';
            document.getElementById('DD_C').innerHTML= '(주) A 가맹점';
            document.getElementById('EE_C').innerHTML= '(주) A 가맹점';
            document.getElementById('FF_C').innerHTML= '국내';
            document.getElementById('GG_C').innerHTML= '34,750';
            document.getElementById('HH_C').innerHTML= '31,591';
            document.getElementById('II_C').innerHTML= '3,159';
            document.getElementById('JJ_C').innerHTML= '0';
            
        //E : 기타
        }else if("E" == trscEvdcDv){

        	gridValue_itxp[cnt++] = {"USE_DT":"2013-03-08","DTLS_ITXP_CD":"B0202","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"인건비","MITM_NM":"2월 인건비","MITM_NRM":null,"MITM_UPRC":"0","MITM_QNT":null,"USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","BTN_01":"","BTN_02":"증빙서류등록","BTN_03":"","BEIF_REG_YN":"등록","BEAI_REG_YN":"등록","RMK":"","MITM_SUM":34750,"REJCT_PROC_ST":"미확정","BEIF_JSON":"{\"RcmsBeif\":[{\"FileList\":\"비목증빙_예제.xlsx\",\"EtcEvdcSeqNo\":\"P20111121093755-G00000000000003-10112249\"}]}","BEAI_JSON":"","FST_REGR_ID":"TEST","HMPW_ROLE_DV":"02","RCMS_GRP_CD":"MR010","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO_S":"G00000000000003","AGRMT_INST_ID_S":"10112249","ITXP_CD":"B0200","INPUT_TRSC_EVDC_DV":"E","TRSC_DT_S":"2014-03-07","BUIT_ID":"U201111214175230","EVDC_DCMT_CMAD_ID":"D201301211195649","EXT_EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","FILE_NM":""};

            document.getElementById('BB_E').innerHTML= '(주) A 가맹점';
            document.getElementById('CC_E').innerHTML= '222-22-2222';
            document.getElementById('DD_E').innerHTML= '서울특별시 중구 태평로1가 31';
            document.getElementById('EE_E').innerHTML= '연구';
            document.getElementById('FF_E').innerHTML= '개발';
            document.getElementById('GG_E').innerHTML= '1,000';
            document.getElementById('HH_E').innerHTML= '100';
            
        //T : 전자세금계산서
        }else if("T" == trscEvdcDv){

        	gridValue_itxp[cnt++] = {"USE_DT":"2013-04-23","DTLS_ITXP_CD":"B0202","DTLS_ITXP_NM":"연구시설·장비 및 재료비","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"연구시설·장비구입비","MITM_NM":"장비구입비","MITM_NRM":null,"MITM_UPRC":"0","MITM_QNT":null,"USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","BTN_01":"","BTN_02":"증빙서류등록","BTN_03":"","BEIF_REG_YN":"등록","BEAI_REG_YN":"미등록","RMK":"","MITM_SUM":34750,"REJCT_PROC_ST":"미확정","BEIF_JSON":"{\"RcmsBeif\":[{\"FileList\":\"비목증빙_예제.xlsx\",\"EtcEvdcSeqNo\":\"P20111121093755-G00000000000003-10112249\"}]}","BEAI_JSON":"","FST_REGR_ID":"TEST","HMPW_ROLE_DV":"02","RCMS_GRP_CD":"MR010","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO_S":"G00000000000003","AGRMT_INST_ID_S":"10112249","ITXP_CD":"B0200","INPUT_TRSC_EVDC_DV":"T","TRSC_DT_S":"2014-03-17","BUIT_ID":"U201111214175230","EVDC_DCMT_CMAD_ID":"D201301211195649","EXT_EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","FILE_NM":""};

            document.getElementById('AA_T').innerHTML= '201401110000000000000000';
            document.getElementById('BB_T').innerHTML= '(주) A 가맹점';
            document.getElementById('CC_T').innerHTML= '222-22-2222';
            document.getElementById('DD_T').innerHTML= '서울특별시 중구 태평로1가 31';
            document.getElementById('EE_T').innerHTML= '연구';
            document.getElementById('FF_T').innerHTML= '개발';
            document.getElementById('GG_T').innerHTML= '가대표';
        }
        
    }finally{
        gridData_itxp = gridValue_itxp;    //조회결과 JSON 값 가져오기
        rMateGridSetData_itxp();  //rMateGrid 구현
        
    }
}
</script>



</body></html>