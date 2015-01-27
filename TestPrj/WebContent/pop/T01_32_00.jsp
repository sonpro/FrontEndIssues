<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_32_00.jsp
 *   Description        : 자계좌이체용 계좌
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==========================================================================================
 *   2013. 1. 14.                  kjs                 
 *
 *  @author 
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
    
    String RowIdx           = kr.go.rcms.web.util.SessionUtil.getRequestValue(request, "pRowIdx");
    String AgrmtInstId      = kr.go.rcms.web.util.SessionUtil.getRequestValue(request, "sAgrmtInstId"); // 협약기관ID
    
%>


<title>자계좌이체용 계좌 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">자계좌이체용 계좌</p>
        </div>
        <!-- //head title// --> 
    </div>


<script type="text/javascript">
///////////////////////////////////////////////////////////////////
//
// 협약기관ID *카드번호, *카드결제계좌, *결제지정계좌 조회
// 
///////////////////////////////////////////////////////////////////


function uf_rtn(){
	var ridx = "<%=RowIdx%>";
	
    //선택항목이 유무 체크
    selectorColumn = gridRoot.getObjectById("selector");
    if(selectorColumn.getSelectedIndex() < 0){ 
        alert("선택된 항목이 없습니다.");
        return; 
    }
    
    
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot.getItemAt(rowIndex);
    
    
    
    var rcvBnkCd    = dataRow.ACCT_BNK_CD;
    var rcvBnkNm    = dataRow.ACCT_BNK_CD_NM;
    rcvBnkNm = rcvBnkNm.replace("은행","");
    var rcvAcctNo   = dataRow.ACCT_NO;
    var owacNm  = dataRow.ACCT_OWAC_NM;
    
    
    opener.setMyAcctNo(rcvBnkCd,rcvBnkNm,rcvAcctNo,owacNm,ridx);
    self.close();

}
</script>




<div id="body"> 
<!-- content start -->
<div id="content">
    <p class="pop_text t20"></p>
    <!-- 로그인 유저 기관정보 취득 -------------------------------------------------------------------------------------------->
    <form name="frm" method="post">
	    <input type="hidden" name="AgrmtInstId"  id="AgrmtInstId"   value="10112249" />
	    <input type="hidden" name="UsrId"   id="UsrId"    value="SMTEST" />
	    <!-- xGrid Paging ------------------------------------------------------------------------------------------------------->
	    <input type="hidden" name="PrsPgno" value="0" /> <!--현재페이지번호-->
	    <input type="hidden" name="TrSupYn" value="N" /> <!--거래계속여부-->
	    <!-- xGrid Paging ------------------------------------------------------------------------------------------------------->      
           
        <!-- 연구과제추진비 이체시 수행기관 안내 start -->
        <div class="t10 b10 pop_wh">
            <div class="total_box b05">
                <p class="fl t03 r05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt"> 0 </span> 건/<span id="InqPrsTotlCnt"> 0 </span> 건]</p>
                <p class="cb"></p>
            </div>
            <!-- //총건수/인쇄 저장 버튼 end// -->              
            
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "262", "#FFFFFF", "transparent");
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
        <div class="pop_action_bt ar">
            <a href="#dummy" onclick="uf_rtn(); return false;" class="bt_action2-01" title="선택"><span class="bt_sp">선택</span></a>
        </div>
    </form>
</div>
<!-- //content end// -->
</div>



<!-- //content end// -->


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
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"ACCT_BNK_CD_NM\" dataField=\"ACCT_BNK_CD_NM\"  headerText=\"은행\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACCT_BNK_CD\"    dataField=\"ACCT_BNK_CD\"     headerText=\"RcvBnkCd\"   width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACCT_NO_FORMAT\" dataField=\"ACCT_NO_FORMAT\"  headerText=\"계좌번호\"   width=\"180\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACCT_NO\"        dataField=\"ACCT_NO\"         headerText=\"RcvAcctNo\"  width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACCT_OWAC_NM\"   dataField=\"ACCT_OWAC_NM\"    headerText=\"예금주\"     width=\"160\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
        gridApp.setLayout(layoutStr); //그리드 레이아웃 생성
    
        
        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
            selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
        };
        
       
        //더블클릭 상세보기 이벤트 추가
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var column = dataGrid.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid,dataRow);
            
        };
        
        //그리드 이벤트 등록
        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
        };
    
        
        //layout 출력 후 실행될 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", SetData);
        
        //data 출력 후 실행할 이벤트 등록
        //gridRoot.addEventListener("dataComplete", setTotCnt);   //전체 조회건수 출력
    
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

$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();
    //rMateGrid의 그리드 세팅 시 gridInit() 호출함.

});
</script>



<script type="text/javascript">
var rowIdx   = "<%=RowIdx%>";    //협약일련번호
var instId  = "<%=AgrmtInstId%>";   //협약기관ID
var cnt = 0;
function setGridData(){
    try{
        
        var gridValue = [];
        cnt = 0;
        if(!instId) return;
        
        

            gridValue[cnt++] = {"AGRMT_INST_NM":"(주) RCMS","AGRMT_INST_ID":"10112249","ACCT_NO_FORMAT":"100-00-000000","REG_DTM":"2013-12-28","ACCT_OWAC_NM":"산기평","ACCT_NO":"10000000000","USE_YN":"Y","ACCT_BNK_CD_NM":"A 은행","REGR_NM":"산기평","REGR_ID":"KEIT","ACCT_BNK_CD":"020"};
            //gridValue[cnt++] = {"AGRMT_INST_NM":"(주) 가 업체","AGRMT_INST_ID":"10112249","ACCT_NO_FORMAT":"555-55-555555-0","REG_DTM":"2013-12-20","ACCT_OWAC_NM":"(주) 가 업체","ACCT_NO":"555555555550","USE_YN":"Y","ACCT_BNK_CD_NM":"E 은행","REGR_NM":"가사장","REGR_ID":"RKDJQCP","ACCT_BNK_CD":"003"};
        
    }finally{
        
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}

function SetData(){
    
     try {
         document.body.setCapture(); // 'wait'
         document.body.style.cursor = "wait";
         setGridData(); //Insert    Grid
         document.body.style.cursor = "auto";
         document.body.releaseCapture(); //setCapture()_Next
     } finally {
    	 $("#InqPrsTotlNcnt").html(cnt);
    	 $("#InqPrsTotlCnt").html(cnt);
         reset_submit();
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
