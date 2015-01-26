<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_01_30_2.jsp
 *   Description        : 과제참여연구원조회 검색
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.03                     예기해             
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


<%
    
String AgrmtSeqNo           = SessionUtil.getRequestValue(request, "AgrmtSeqNo");       // 협약일련번호
String AgrmtInstId          = SessionUtil.getRequestValue(request, "AgrmtInstId");      // 협약기관ID
String PmsId                = SessionUtil.getRequestValue(request, "PmsId");            // 전담기관ID
String SbjtId               = SessionUtil.getRequestValue(request, "SbjtId");           // 과제ID
String BzClasCd             = SessionUtil.getRequestValue(request, "BzClasCd");         // 사업분류코드

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
    var idx = -1;
    
    
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
        var RES_REG_NO  = gridRoot.getItemFieldAt(idx, "PTCN_RCHR_NM_RES_REG_NO"); //주민등록번호
        var RES_REG_NO2 = gridRoot.getItemFieldAt(idx, "PTCN_RCHR_NM_RES_REG_NO2"); //생년월일
        var PTCN_RT     = gridRoot.getItemFieldAt(idx, "PTCN_RT"); //참여율(%)
        rowValue = {"RCHR":PTCN_RCHR_NM,"RCHR_NM":PTCN_RCHR_NM,"RES_REG_NO":RES_REG_NO,"REG_NO":RES_REG_NO2,"PTCN_PCT":PTCN_RT,"AMT":0};
        
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
    <h3>과제참여연구원조회</h3>
    
    <div class="t20"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div>
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "292", "#FFFFFF");
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
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" editable=\"false\" />\
                <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"55\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" />\
                <DataGridColumn id=\"PTCN_STR_DT\"                dataField=\"PTCN_STR_DT\"             headerText=\"시작일\"             width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_END_DT\"                dataField=\"PTCN_END_DT\"             headerText=\"종료일\"             width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_RCHR_NM\"               dataField=\"PTCN_RCHR_NM\"            headerText=\"연구원명\"           width=\"70\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_RCHR_NM_RES_REG_NO2\"   dataField=\"PTCN_RCHR_NM_RES_REG_NO2\" headerText=\"생년월일\"          width=\"70\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_RT\"                    dataField=\"PTCN_RT\"                 headerText=\"참여율(%)\"          width=\"80\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ETC_SBJT_PTCN_RT\"           dataField=\"ETC_SBJT_PTCN_RT\"        headerText=\"기타과제참여율(%)\"  width=\"120\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ETC_SBJT_PTCN_CNT\"          dataField=\"ETC_SBJT_PTCN_CNT\"       headerText=\"기타과제참여수\"     width=\"100\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_RCHR_NM_RES_REG_NO\"    dataField=\"PTCN_RCHR_NM_RES_REG_NO\" headerText=\"주민등록번호\"       width=\"0\"  visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
            <footers>\
                <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                    <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{PTCN_RCHR_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
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
        gridRoot.addEventListener("layoutComplete", uf_search);
        
        //data 출력 후 실행할 이벤트 등록
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
var cnt = 0;
function setGridData(seqNo){
	if(!seqNo) return;
    try{
        
        var gridValue = [];
        cnt = 0;
        
        gridValue[cnt++] = {"PTCN_STR_DT":"20140101","PTCN_END_DT":"20990131","PTCN_RCHR_NM":"이총괄","PTCN_RCHR_NM_RES_REG_NO2":"123456","PTCN_RT":"15","ETC_SBJT_PTCN_RT":"15","ETC_SBJT_PTCN_CNT":"1","PTCN_RCHR_NM_RES_REG_NO":"1234561234567"};
        gridValue[cnt++] = {"PTCN_STR_DT":"20140101","PTCN_END_DT":"20990131","PTCN_RCHR_NM":"김전임","PTCN_RCHR_NM_RES_REG_NO2":"222222","PTCN_RT":"25","ETC_SBJT_PTCN_RT":"25","ETC_SBJT_PTCN_CNT":"2","PTCN_RCHR_NM_RES_REG_NO":"2222221234567"};
        gridValue[cnt++] = {"PTCN_STR_DT":"20140101","PTCN_END_DT":"20990131","PTCN_RCHR_NM":"전연구","PTCN_RCHR_NM_RES_REG_NO2":"333333","PTCN_RT":"30","ETC_SBJT_PTCN_RT":"30","ETC_SBJT_PTCN_CNT":"3","PTCN_RCHR_NM_RES_REG_NO":"3333331234567"};

        
    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}



</script>

</body>
</html> 
