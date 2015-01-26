<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T11_01_20.jsp
 *   Description        : 비목별 사용현황 일괄조회
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.04                      예기해             
 *
 *  @author     예기해 
 *  @Since      2013.12.04
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
    String AgrmtSeqNo     = SessionUtil.getRequestValue(request, "SBJT_MAP_KEYS");    //조회 번호
    
%>


<title>비목별 사용내역 조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">비목별 사용현황 일괄조회</p>
        </div>
        <!-- //head title// --> 
    </div>



<script type="text/javascript">
//////////////////////////////////
//조회 처리
//////////////////////////////////
function uf_search(){
    var frm     = document.frm;
    
    if( !chk_calTextdatediff() ) return false; // 조회기간 유효성체크
    
    if( isSubmit() ) return;    // 이중처리

    var seqNo = "<%=AgrmtSeqNo%>";
    
    rMateGridLayoutInit_rMate();
    uf_proce_display_on();  //로딩바
    setTimeout(function(){SetData(seqNo);}, 1000);   // 1초후 실행 1000 = 1초s

    removeTempAttribute(frm);   //get2post 삭제
    
}

</script>






<div id="body">
<form name="frm" method="post">
  <!-- content start -->
  <div id="content">
    <div class="t20"></div>
    <h3>비목별 사용현황 일괄조회</h3>
    <!-- 검색단 start -->
    <div class="pop_search">
      <p class="pop_search_boxt"></p>
      <div class="pop_search_boxc">
        <fieldset>
        <legend>현황조회검색</legend>
        <table width="680" summary="현황조회" class="tbl_search">
          <caption>
          현황조회검색
          </caption>
          <colgroup>
          <col width="12%" />
          <col width="88%" />
          </colgroup>
          <tbody>
            <tr>
              <th scope="col"><label for="usedaystart">사용일자</label></th>
              <td>
              <%@ include file="/inc/set_date_btn.jsp" %>
              <%@ include file="/inc/set_date_today.jsp" %>
              </td>
            </tr>
          </tbody>
        </table>
        </fieldset>
      </div>
      <p><img src="/pop/search_box6.gif" alt=" "/></p>
    </div>
    <div class="cb"></div>
    <!-- //검색단 end// -->
    <!-- 조회 버튼 start -->
    <div class="pop_search_bt1"><a href="#dummy" onclick="uf_search();" class="bt_search" title="조회"></a></div>
    <!-- //조회 버튼 end// -->
<!-- 총건수/인쇄 저장 버튼 start -->
    <div class="pop_total_box">
        <p class="fl t05"><!--  [조회건수 <span class="bu_01bb">25건</span>/150건]  -->
        <input type="checkbox" name="checkbox2" value="Y" onclick="chkGroup(this);" class="check1"/> 전체확장</p>
        <p class="ar b05">
        <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄"/></a>
        <a href="#dummy"  onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="저장"/></a>
        </p>
        <p class="cb"></p>
    </div>
<!-- //총건수/인쇄 저장 버튼 end// -->    
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div>
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
  </form>
</div>
<!-- //content end// -->
<%@ include file="/inc/jspFooter_popup.jsp" %> 



<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">
/* 그리드 생성 순서
1. html과 플래시의 sync : rMateGridInit() 함수 실행 ( onload 실행. 혹은 ready )
2. 레이아웃에 의거한 그리드 생성
3. 그리드에 데이타 넣기
*/


//레이아웃 설정 (그루핑)
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"on\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn id=\"AGRMT_INST_NM\"      dataField=\"AGRMT_INST_NM\"       headerText=\"기관명\"          width=\"170\"  visible=\"true\"  sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"세목코드\"        width=\"80\"  visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세목\"            width=\"80\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_DT\"      dataField=\"EXCTN_EXEC_DT\"       headerText=\"사용일자\"        width=\"80\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"세세목코드\"      width=\"100\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목\"          width=\"90\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CASH_SPOT_DV\"       dataField=\"CASH_SPOT_DV\"        headerText=\"사업비구분\"      width=\"90\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"            headerText=\"사용금액\"        width=\"90\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\"  formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"lastNumericGroupingSort\" />\
            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"공급가액\"        width=\"90\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\"  formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"lastNumericGroupingSort\" />\
            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"부가가치세액\"    width=\"100\" visible=\"true\"  sortable=\"true\" textAlign=\"right\"  formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"lastNumericGroupingSort\" />\
            <DataGridColumn id=\"VAT_PSV_APC_YN\"     dataField=\"VAT_PSV_APC_YN\"      headerText=\"부가세환원여부\"  width=\"100\" visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PART_PROC_AMT\"      dataField=\"PART_PROC_AMT\"       headerText=\"부분취소금액\"    width=\"90\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\"  formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"lastNumericGroupingSort\" />\
            <DataGridColumn id=\"SBJT_NM\"            dataField=\"SBJT_NM\"             headerText=\"과제명\"          width=\"80\"  visible=\"false\" sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HGRK_ITXP_NM\"       dataField=\"HGRK_ITXP_NM\"        headerText=\"세목명\"          width=\"80\"  visible=\"false\" sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <rendererProviders>\
            <AdvancedDataGridRendererProvider column=\"{AGRMT_INST_NM}\" columnSpan=\"0\" depth=\"1\" renderer=\"GroupItem\"/>\
            <AdvancedDataGridRendererProvider column=\"{AGRMT_INST_NM}\" columnSpan=\"5\" depth=\"2\" renderer=\"GroupItem\"/>\
        </rendererProviders>\
        <dataProvider>\
            <!--  그리드의 자료를 dataProvider가 아닌 별도의 컴포넌트에 입력해야 할 경우 아래와 같이 $gridData를 넣어줍니다   -->\
            <GroupingCollection source=\"{$gridData}\">\
                <Grouping>\
                    <GroupingField name=\"SBJT_NM\">\
                        <summaries>\
                            <SummaryRow>\
                                <SummaryField dataField=\"TRNS_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"USE_SPLY_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"USE_VAT_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"PART_PROC_AMT\" operation=\"SUM\" />\
                            </SummaryRow>\
                        </summaries>\
                    </GroupingField>\
                    <GroupingField name=\"HGRK_ITXP_NM\">\
                        <summaries>\
                            <SummaryRow>\
                                <SummaryField dataField=\"TRNS_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"USE_SPLY_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"USE_VAT_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"PART_PROC_AMT\" operation=\"SUM\" />\
                            </SummaryRow>\
                        </summaries>\
                    </GroupingField>\
                </Grouping>\
            </GroupingCollection>\
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

    
    //더블클릭 상세보기 이벤트 추가
    var itemDoubleClickHandler = function(event) {
        
        var rowIndex = event.getRowIndex();
        var columnIndex = event.getColumnIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        var column = dataGrid.getColumns()[columnIndex];
        var dataField = column.getDataField();
        // 소계인지 여부
        if (dataRow.typeName == "mx.collections::SummaryObject") {
            return;
        }
        
        if (columnIndex == 0) {
            // 해당 데이타가 펼쳐진 행인지 여부
            var isOpen = gridRoot.isItemOpen(rowIndex);
            // 애니메이션 효과 줄지 여부
            var animate = true;
            // 해당 데이타의 하위 자식을 open/close합니다.
            gridRoot.expandItem(rowIndex, !isOpen, animate);
        }
        
        //group 구조인가 확인
        if(typeof(dataRow.children) != "undefined") return;
        
        //popupDetail(rowIndex, dataRow);
        //layerDetail(dataGrid,dataRow);
        
    };

   
    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //그루핑 그리드에서 이미지 안보이게 처리
        dataGrid.setStyle("defaultLeafIcon", null);
        dataGrid.setStyle("folderOpenIcon", null);
        dataGrid.setStyle("folderClosedIcon", null);
        
        //이벤트 등록
        dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);

};



//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);


//로딩 후 rMadeGrid 출력
function rMateGridSetData() {
    //rMageGrid 초기화
    //gridApp.setData(null);

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    
    document.frm.checkbox2.checked = false; //전체보기 체크박스

};


/**************************************************************************
 * 그리드 그룹핑 확장
 * elem : checkbox 객체 
 **************************************************************************/
function chkGroup(elem){
    
    if (collection == null)
        collection = gridRoot.getCollection();
    if (collection == null) 
        return;
    
    if(elem.checked){
        dataGrid.expandAll();
    }else{
        dataGrid.collapseAll();
    }
}

 $(document).ready(function() {
     // rMateGrid 초기화
     rMateGridInit();
     
   });

</script>
<!-- **********************  rMateGrid setting END ***********************  -->





<script type="text/javascript">
var cnt = 0;
function setGridData(seqNo){
    
    try{
    	cnt = 0;
        var param = seqNo.split(",");
        var gridValue = [];
        if(param.length > 0){
            var paramValue = "";
            for(var i=0;i<param.length;i++){
                paramValue = param[i];
                
        
		        if("1" == paramValue){
		        	
		        	
		        }else if("2" == paramValue){
		        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구시설·장비구입비","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"100","CASH_SPOT_DV":"현금","ITXP_NM":"인건비","ITXP_CD":"B0100","HGRK_ITXP_NM":"3. 연구시설·장비 및 재료비","EXCTN_EXEC_DT":"2014-03-07","TRNS_AMT":"1100","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 진행과제 (과제번호 : TEST0002)","SBJT_NM":"RCMS 실습용 진행과제","USE_SPLY_AMT":"1000","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"세미나개최비","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"20","CASH_SPOT_DV":"현금","ITXP_NM":"인건비","ITXP_CD":"B0100","HGRK_ITXP_NM":"4. 연구활동비","EXCTN_EXEC_DT":"2014-02-24","TRNS_AMT":"220","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 진행과제 (과제번호 : TEST0002)","SBJT_NM":"RCMS 실습용 진행과제","USE_SPLY_AMT":"200","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"인건비","ITXP_CD":"B0100","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2014-02-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 진행과제 (과제번호 : TEST0002)","SBJT_NM":"RCMS 실습용 진행과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0201009","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"8. 연구과제추진비","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"2250","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 진행과제 (과제번호 : TEST0002)","SBJT_NM":"RCMS 실습용 진행과제","USE_SPLY_AMT":"2250","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0201"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0202001","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"9. 간접비","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"100","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 진행과제 (과제번호 : TEST0002)","SBJT_NM":"RCMS 실습용 진행과제","USE_SPLY_AMT":"91","DTLS_ITXP_NM":"간접비","DTLS_ITXP_CD":"B0202"};
                    
		        }else if("3" == paramValue){
		        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구시설·장비구입비","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"100","CASH_SPOT_DV":"현금","ITXP_NM":"인건비","ITXP_CD":"B0100","HGRK_ITXP_NM":"3. 연구시설·장비 및 재료비","EXCTN_EXEC_DT":"2013-04-23","TRNS_AMT":"1100","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"1000","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"시약재료구입비","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"1818","CASH_SPOT_DV":"현금","ITXP_NM":"인건비","ITXP_CD":"B0100","HGRK_ITXP_NM":"3. 연구시설·장비 및 재료비","EXCTN_EXEC_DT":"2013-07-22","TRNS_AMT":"20000","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"18182","DTLS_ITXP_NM":"외부인건비","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"시제품제작비","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"1363","CASH_SPOT_DV":"현금","ITXP_NM":"인건비","ITXP_CD":"B0100","HGRK_ITXP_NM":"3. 연구시설·장비 및 재료비","EXCTN_EXEC_DT":"2013-10-29","TRNS_AMT":"15000","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"13637","DTLS_ITXP_NM":"외부인건비","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"세미나개최비","SUB_DTLS_ITXP_CD":"B0202001","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"20","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"4. 연구활동비","EXCTN_EXEC_DT":"2013-05-23","TRNS_AMT":"220","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"200","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"전문가활용비","SUB_DTLS_ITXP_CD":"B0202021","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"4. 연구활동비","EXCTN_EXEC_DT":"2013-09-30","TRNS_AMT":"10000","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"10000","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"교육훈련비","SUB_DTLS_ITXP_CD":"B0202001","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"823","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"4. 연구활동비","EXCTN_EXEC_DT":"2013-12-23","TRNS_AMT":"9060","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"8237","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2013-06-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2013-07-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2013-08-09","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2013-09-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2013-10-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2013-11-08","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2013-12-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2014-01-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2014-02-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2014-02-28","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"8. 연구과제추진비","EXCTN_EXEC_DT":"2013-06-04","TRNS_AMT":"2250","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2250","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"8. 연구과제추진비","EXCTN_EXEC_DT":"2013-09-03","TRNS_AMT":"2250","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2250","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"8. 연구과제추진비","EXCTN_EXEC_DT":"2013-12-02","TRNS_AMT":"2250","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2250","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"9","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"9. 간접비","EXCTN_EXEC_DT":"2013-07-08","TRNS_AMT":"91","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"91","DTLS_ITXP_NM":"간접비","DTLS_ITXP_CD":"B0202"}
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"45","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"9. 간접비","EXCTN_EXEC_DT":"2013-11-25","TRNS_AMT":"500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"455","DTLS_ITXP_NM":"간접비","DTLS_ITXP_CD":"B0202"}
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"27","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"9. 간접비","EXCTN_EXEC_DT":"2013-01-13","TRNS_AMT":"300","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"273","DTLS_ITXP_NM":"간접비","DTLS_ITXP_CD":"B0202"}
                    
		        }else if("4" == paramValue){
		        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구시설·장비구입비","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"100","CASH_SPOT_DV":"현금","ITXP_NM":"인건비","ITXP_CD":"B0100","HGRK_ITXP_NM":"3. 연구시설·장비 및 재료비","EXCTN_EXEC_DT":"2013-03-06","TRNS_AMT":"1100","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"1000","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"세미나개최비","SUB_DTLS_ITXP_CD":"B0202037","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"20","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"4. 연구활동비","EXCTN_EXEC_DT":"2013-03-25","TRNS_AMT":"220","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"200","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. 인건비","EXCTN_EXEC_DT":"2013-05-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"0","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"8. 연구과제추진비","EXCTN_EXEC_DT":"2013-03-21","TRNS_AMT":"2250","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"2250","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"㈜RCMS","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"9","CASH_SPOT_DV":"현금","ITXP_NM":"직접비","ITXP_CD":"B0200","HGRK_ITXP_NM":"9. 간접비","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"91","PART_PROC_AMT":0,"SBJT_ID":"RCMS 실습용 정산과제 (과제번호 : TEST0003)","SBJT_NM":"RCMS 실습용 정산과제","USE_SPLY_AMT":"91","DTLS_ITXP_NM":"간접비","DTLS_ITXP_CD":"B0202"}
                    
		        }
            }
        }
    }finally{
        
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}

function SetData(seqNo){
	if(!seqNo) return;
	
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
function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}
</script>

</body>
</html> 
