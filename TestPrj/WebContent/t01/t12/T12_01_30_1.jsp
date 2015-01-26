<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_01_30_1.jsp
 *   Description        : 인건비내역등록내역 조회
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.02                     예기해             
 *
 *  @author     예기해 
 *  @Since      
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

<script type="text/javascript">
    parentFrm = window.dialogArguments;
</script>

<%
    
	String AgrmtSeqNo                   = SessionUtil.getRequestValue(request, "AgrmtSeqNo");
	String AgrmtInstId                  = SessionUtil.getRequestValue(request, "AgrmtInstId");

%>


<title>인건비내역 조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">인건비내역 조회</p>
        </div>
        <!-- //head title// --> 
    </div>

<script type="text/javascript">
var agrmtSeqNo = "<%=AgrmtSeqNo%>";
var agrmtInstId = "<%=AgrmtInstId%>";
/******************************************************************
 * uf_search        조회 처리
 * @param
 * @return
******************************************************************/
function uf_search(){   
    var frm = document.frm;

    if( isSubmit() ) return;    // 이중처리
    
    
    uf_proce_display_on();  //로딩바

    setTimeout(
            function(){
                    try{   
                        document.body.style.cursor = "wait";
                        setGridData(agrmtSeqNo);
                        document.body.style.cursor = "auto";
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
    
    
}
/******************************************************************
 * uf_selected      선택 처리
 * @param
 * @return
******************************************************************/
function uf_selected(){
    var val = "";
    var key = "";
    
    
    //그리드 선택 체크
    selectorColumn = gridRoot.getObjectById("selector");
    var selLength = selectorColumn.getSelectedIndices().length;
    if(selLength == 0){ 
        alert("선택 항목이 없습니다.");
        return; 
    }
    
    
    
    var idx;
    
    var returnGridData = [];
    var rowValue = null;
    for(var i=0;i<selLength;i++){
        idx = selectorColumn.getSelectedIndices()[i];
        
        rowValue = null;
        var PTCN_RCHR_NM = gridRoot.getItemFieldAt(idx, "PTCN_RCHR_NM"); //연구원명
        var RES_REG_NO  = gridRoot.getItemFieldAt(idx, "RES_REG_NO"); //주민등록번호
        var RES_REG_NO2 = gridRoot.getItemFieldAt(idx, "RES_REG_NO2"); //생년월일
        var PTCN_PCT    = gridRoot.getItemFieldAt(idx, "PTCN_PCT"); //참여율(%)
        rowValue = {"RCHR":PTCN_RCHR_NM,"RCHR_NM":PTCN_RCHR_NM,"RES_REG_NO":RES_REG_NO,"REG_NO":RES_REG_NO2,"PTCN_PCT":PTCN_PCT,"AMT":0};
        
        returnGridData[i] = rowValue;
        
    }
    this.close();
    window.returnValue = returnGridData;
}
</script>







<div id="body">
  <!-- content start -->
  <div id="content">
    <form name="frm" method="post">
    <div class="t20"></div>
    <h3>인건비등록내역</h3>
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
              <th scope="row"><label for="usedaystart">사용일자</label></th>
              <td>
                <%@ include file="/inc/set_date_btn.jsp" %>
                <%@ include file="/inc/set_date_today.jsp" %>   
              </td>
            </tr>
            <tr>
              <th scope="row">세목명</th>
              <td>
                <select name="DtlsItxpCd" style="width: 150px;" onchange="uf_search();">
                    <option value="">전체</option>
                    <option value="B0101">내부인건비</option>
                    <option value="B0203">연구수당</option>
                    <option value="B0102">외부인건비</option>
                    <option value="B0204">인건비</option>
                    <option value="B0205">학생인건비</option>
                </select>
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
    <div class="t20"></div>
    
      <div>
        <p class="fl t05"></p>
        <p class="ar b05">
          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄"/></a>
          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="저장"/></a>
        </p>
        <p class="cb"></p>
      </div>    
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div>
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "230", "#FFFFFF");
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
    <div class="pop_action_bt">
        <div class="fl"><a href="#dummy" onclick="uf_search('N');" id="NextBtn" style="display:none;" class="bt_action2-01" title="다음"><span class="bt_sp">다음</span></a></div>
        <div class="ar"><a href="#dummy" onclick="uf_selected();" class="bt_action2-01" title="선택"><span class="bt_sp">선택</span></a></div>
    </div>    
    <!-- //action bt end// -->
    <div class="t10"></div>
    </form>
  </div>
</div>
<!-- //content end// -->
    




    

<%@ include file="/inc/jspFooter_popup.jsp" %> 


<script type="text/javascript">
$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();
    
    //rMateGrid의 그리드 세팅 시 gridInit() 호출함.

});
</script>



<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">


var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DateFormatter id=\"datefmt2\" formatString=\"YYYY-MM-DD\"/>\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"2\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"55\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" />\
                <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"사용일자\"             width=\"120\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_STR_DT\"        dataField=\"PTCN_STR_DT\"         headerText=\"시작일\"               width=\"120\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_END_DT\"        dataField=\"PTCN_END_DT\"         headerText=\"종료일\"               width=\"120\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_RCHR_NM\"       dataField=\"PTCN_RCHR_NM\"        headerText=\"연구원명\"             width=\"95\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"RES_REG_NO2\"        dataField=\"RES_REG_NO2\"         headerText=\"생년월일\"             width=\"95\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_PCT\"           dataField=\"PTCN_PCT\"            headerText=\"참여율(%)\"            width=\"90\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"세목코드\"             width=\"0\"  visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세목명\"               width=\"110\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"세세목코드\"           width=\"0\"  visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목명\"             width=\"130\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PAYM_AMT\"           dataField=\"PAYM_AMT\"            headerText=\"지급금액\"             width=\"100\"  visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"RES_REG_NO\"         dataField=\"RES_REG_NO\"          headerText=\"주민등록번호\"         width=\"0\"  visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
                    <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{PTCN_RCHR_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PAYM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
            var column = dataGrid.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid, dataRow, "window");
            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);

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
var cnt = 0;
function setGridData(seqNo){
	if(!seqNo) return;
    try{
        
        var gridValue = [];
        cnt = 0;
        
        //1. 신규과제
        if("G00000000000001" == seqNo){
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"이책임","RES_REG_NO2":"111111","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111111234567"};
            gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"25","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
            gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};

        //2. 진행과제
        }else if("G00000000000002" == seqNo){
    	    
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"이책임","RES_REG_NO2":"111111","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111111234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"25","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};

            
        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){
            
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"v"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-28","PTCN_STR_DT":"2014-02-01","PTCN_END_DT":"2014-02-28","PTCN_RCHR_NM":"이선임","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-28","PTCN_STR_DT":"2014-02-01","PTCN_END_DT":"2014-02-28","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-28","PTCN_STR_DT":"2014-02-01","PTCN_END_DT":"2014-02-28","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
            
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){
        	gridValue[cnt++] = {"USE_DT":"2013-03-08","PTCN_STR_DT":"2013-02-01","PTCN_END_DT":"2013-02-28","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-03-08","PTCN_STR_DT":"2013-02-01","PTCN_END_DT":"2013-02-28","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-03-08","PTCN_STR_DT":"2013-02-01","PTCN_END_DT":"2013-02-28","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"이수석","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"김전임","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"전연구","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"인건비","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};


        }
        
    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}



</script>

</body>
</html> 
