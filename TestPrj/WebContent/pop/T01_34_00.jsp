<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_34_00.jsp
 *   Description        : 비목선택팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.16                     예기해             
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
        String agrmtSeqNo   = SessionUtil.getRequestValue(request, "agrmtSeqNo");
        String agrmtInstId  = SessionUtil.getRequestValue(request, "agrmtInstId");
%>


<title>카드선결제요청 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">카드선결제요청</p>
        </div>
        <!-- //head title// --> 
    </div>


<script type="text/javascript">
function uf_search(SchGb){
    var frm = document.frm;
    
    get2post(frm, "agrmtSeqNo=" +"<%= agrmtSeqNo%>");  
    get2post(frm, "agrmtInstId="+"<%= agrmtInstId%>");
    
    if( isSubmit() ) return;    // 이중처리
    
    setData("<%=agrmtSeqNo%>");
}


function uf_save_rMate(){
    var frm = document.frm;
    var idx = -1;
    
    if( isSubmit() ) return; 
    
    
    if(!chkGridSelectedCount_rMate(gridRoot)) return false;

    
    selectorColumn = gridRoot.getObjectById("selector");    //체크된 ID 가져오기
    var arrIdx = selectorColumn.getSelectedIndices();       //체크된 row 가져오기
    
    for(var i=0;i<arrIdx.length;i++){
        var dataRow = gridRoot.getItemAt(arrIdx[i]);
        
        if("실시간이체" == dataRow.CRD_SETL_MTHD_DV_NM)  //카드결제방식
        {
            alert("카드실시간이체증빙은 \n연구비관리 - 연구비사용관리 - 사용실행 메뉴에서\n처리해주시기 바랍니다.");
            return;
        }
         
        if("B14012" == dataRow.CLM_CNFM_DV)   //청구확인상태코드
        {
            alert("요청건 중 일부는 청구취소건 입니다.\n선결제요청 하실 수 없습니다.");    
            return;
        }
        
        if("B04020" == dataRow.TRSC_PFMC_ST)   //증빙등록상태코드
        {
            alert("요청건 중 일부는 금일 결제예정내역 입니다.\n선결제요청 하실 수 없습니다.");    
            return;
        }
        
        if("0" == dataRow.ITXP_REG_NCNT)    //비목등록건수
        {
            alert("요청건 중 일부가 비목내역이 존재하지 않습니다. 운영팀에 문의해주시기 바랍니다.");  
            return;
        }
        
        get2post(frm, dataRow.GridKey);
    }
    
    

    get2post(frm,"agrmtSeqNo="+"<%= agrmtSeqNo%>");
    get2post(frm,"agrmtInstId="+"<%= agrmtInstId%>");
  
    if(!confirm("카드선결제처리를 하시겠습니까?")) {
        return;
    }
    

    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                try{
                    reset_submit();
                    alert("선결제 요청이 완료되었습니다.\n금일 이후 결제내역 확인하실 수 있습니다.");
                }finally{
                    removeTempAttribute(document.frm);  //get2post 삭제;
                    window.close();
                }
            }
            , 1000);   // 1초후 실행 1000 = 1초
            
    
}

$(document).ready(function(){
	
    // rMateGrid 초기화
    rMateGridInit();
    
    //uf_search('S');
});



</script>


<div id="body" style="margin:-48px 0 -25px;">
<form name="frm" method="post">
            <!-------------------------------------------------------------------------------->
            <!--  공통부 끝 -->
            <!-------------------------------------------------------------------------------->
            <input type="hidden" name="PrsPgno" value="1" /> <!--현재페이지번호-->
            <input type="hidden" name="InqDvCd" id="InqDvCd" value="1" /> <!--조회조건-->
            <input type="hidden" name="TrSupYn" value="" />
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" /> 
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" /> 

            <div id="content">
                <div class="t20"></div>
                <h3>카드선결제요청</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
            <!-- 그리드 Start -->
            <div id="viewGrid1" style="display: inline">
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
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-01" title="요청" onclick="uf_save_rMate(); return false;"><span class="bt_sp">요청</span></a> 
                </div>
                <!-- //action bt end// -->
                
                    <!-- 주의사항 start -->
    <div class="guide_box">
        <p class="guide_boxt"></p>
        <div class="guide_boxc">
            <ul>
                <li>카드증빙 등록건에 대해서 선결제 요청이 가능합니다.</li>          
                <li>카드선결제 요청한 카드증빙등록건은 익일(영업일기준) 카드대금 결제계좌로 입금됩니다.</li> 
            </ul>    
        </div>
        <p class="guide_boxb"></p>
    </div>
    <!-- //주의사항 end// -->
    
            </div>
            <!-- //content end// -->

</form>
</div>



<%@ include file="/inc/jspFooter_popup.jsp" %> 




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
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"            headerText=\"선택\"                   width=\"50\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" />\
            <DataGridColumn id=\"CRD_NO\"             dataField=\"CRD_NO\"              headerText=\"카드번호\"               width=\"130\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_APV_DT\"         dataField=\"CRD_APV_DT\"          headerText=\"승인일자\"               width=\"80\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_DT\"             dataField=\"BUY_DT\"              headerText=\"매입일자\"               width=\"80\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_PFMC_REG_DT\"   dataField=\"TRSC_PFMC_REG_DT\"    headerText=\"RCMS등록일자\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCMS_SETL_DT\"       dataField=\"RCMS_SETL_DT\"        headerText=\"결제(예정)일자\"         width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CLM_CNFM_DV_NM\"     dataField=\"CLM_CNFM_DV_NM\"      headerText=\"청구확인상태\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_PFMC_ST_NM\"    dataField=\"TRSC_PFMC_ST_NM\"     headerText=\"증빙등록상태\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITXP_REG_NCNT\"      dataField=\"ITXP_REG_NCNT\"       headerText=\"비목등록건수\"           width=\"80\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_BZ_REG_NO\"     dataField=\"INST_BZ_REG_NO\"      headerText=\"사업자번호\"             width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"          headerText=\"사용처\"                 width=\"120\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TOTL_AMT\"           dataField=\"TOTL_AMT\"            headerText=\"사용금액\"               width=\"90\" visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"공급금액\"               width=\"90\" visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"부가가치세액\"           width=\"90\" visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"RTRT_FIX_AMT\"       dataField=\"RTRT_FIX_AMT\"        headerText=\"복원금액\"               width=\"90\" visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"  dataField=\"VAT_PROC_RTRT_AMT\"   headerText=\"복원부가세금액\"         width=\"90\" visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"BUY_CLCT_NO\"        dataField=\"BUY_CLCT_NO\"         headerText=\"매입승인번호\"           width=\"130\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_SETL_MTHD_DV_NM\" dataField=\"CRD_SETL_MTHD_DV_NM\" headerText=\"카드결제방식\"          width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CODE_RND045\"        dataField=\"CODE_RND045\"         headerText=\"매입승인구분\"           width=\"0\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CLM_CNFM_DV\"        dataField=\"CLM_CNFM_DV\"         headerText=\"청구확인상태코드\"       width=\"0\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_PFMC_ST\"       dataField=\"TRSC_PFMC_ST\"        headerText=\"증빙등록상태코드\"       width=\"0\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUTR_ID\"            dataField=\"BUTR_ID\"             headerText=\"사업비사용거래실적ID\"   width=\"0\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"GridKey\"            dataField=\"GridKey\"             headerText=\"GridKey\"                width=\"0\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footer>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{CRD_APV_DT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TOTL_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_PROC_RTRT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            </DataGridFooter>\
        </footer>\
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
            
            uf_insert_rMate(dataRow);
            
        };
        
        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
            selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            //dataGrid.addEventListener("itemClick", itemClickHandler); //더블클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", uf_search);   //rMateGrid 레이아웃 출력 후 조회시작

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
    try{
        cnt = 0;
        var gridValue = [];
        
        //1. 신규과제
        if("G00000000000001" == seqNo){

        //2. 진행과제
        }else if("G00000000000002" == seqNo){

        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){

        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){

        }
        

    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}

function setData(seqNo){
    
    if(!seqNo || "udnefined" == typeof seqNo || "" == seqNo) return;
    
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
    	alert("조회내역이 없습니다.");
        window.close();
    }
}
</script>

</body>
</html> 
