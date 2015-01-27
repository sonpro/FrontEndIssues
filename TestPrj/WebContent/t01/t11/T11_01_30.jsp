<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T11_01_30.jsp
 *   Description        : 비목별 사업비 구성내역
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.05                     예기해             
 *
 *  @author     예기해 
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
    String AgrmtSeqNo     = SessionUtil.getRequestValue(request, "SBJT_MAP_KEYS");    //조회 번호
%>

<title>사업비 구성내역 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">사업비 구성내역</p>
        </div>
        <!-- //head title// --> 
    </div>



<script type="text/javascript">
    //////////////////////////////////
    //조회 처리
    //////////////////////////////////
    function uf_search(){
        var frm     = document.frm;

        if( isSubmit() )    return;         // 이중처리


        var seqNo = "<%=AgrmtSeqNo%>";

        rMateGridLayoutInit_rMate();
        uf_proce_display_on();  //로딩바
        setTimeout(function(){SetData(seqNo);}, 1000);   // 1초후 실행 1000 = 1초s

        removeTempAttribute(frm);   //get2post 삭제

    }

</script>






<div id="body">
  <!-- content start -->
  <div id="content">
    <div class="t20"></div>
    <h3>사업비구성내역</h3>
    <!-- 총건수/인쇄 저장 버튼 start -->
    <form name="frm" method="post">
    <div class="ar b05">
    <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄"/></a>
    </div>
    <!-- //총건수/인쇄 저장 버튼 end// -->
<!-- *************************  rMateGrid ************************* -->      
     <!-- 그리드 Start -->
     <div>
         <script>
          rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "260", "#FFFFFF", "transparent");
         </script>
     </div>
     <!-- 그리드 End -->
     <!-- 상세보기 레이어 팝업 -->
     <div id="layerPopup" style="z-index:999999;display:none;">
         <div id="layerPopupTitle" style="width:355px;height:30px;">
             <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
             <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="닫기"></a>
         </div>
         <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
     </div>
<!-- *************************  rMateGrid ************************* -->
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

<!-- 그리드의 layout 설정..  기존 xml호출형식을 사용하지 않고 javascript 에서 xml 형식을 생성하여 사용한다. -->
    //레이아웃 설정 (그루핑)
    var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
  <NumberFormatter id=\"numfmt\" />\
  <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
  <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"true\">\
      <columns>\
          <DataGridColumn id=\"AGRMT_INST_NM\"          dataField=\"AGRMT_INST_NM\"           headerText=\"기관명\"             width=\"120\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"AGRMT_INST_ROLE_DV\"     dataField=\"AGRMT_INST_ROLE_DV\"      headerText=\"기관역할\"           width=\"100\"   visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"INST_TOTL_INST_AMT\"     dataField=\"INST_TOTL_INST_AMT\"      headerText=\"당해총사업비\"       width=\"110\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"MNSR_CTBT_AMT\"          dataField=\"MNSR_CTBT_AMT\"           headerText=\"정부출연금액\"       width=\"110\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"UPAY_MNSR_CTBT_AMT\"     dataField=\"UPAY_MNSR_CTBT_AMT\"      headerText=\"미지급정부출연금액\" width=\"140\"  visible=\"true\" sortable=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"MNSR_CTBT_AMT_RCV_DT\"   dataField=\"MNSR_CTBT_AMT_RCV_DT\"    headerText=\"출연금입금일자\"     width=\"100\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"PRIVT_CASH_AMT\"         dataField=\"PRIVT_CASH_AMT\"          headerText=\"민간현금금액\"       width=\"110\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"PRIVT_ALOT_AMT_RCV_DT\"  dataField=\"PRIVT_ALOT_AMT_RCV_DT\"   headerText=\"민간부담금입금일자\" width=\"140\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"ALOT_CASH_AMT\"          dataField=\"ALOT_CASH_AMT\"           headerText=\"지자체부담금액\"     width=\"110\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"LAF_ALOT_AMT_RCV_DT\"    dataField=\"LAF_ALOT_AMT_RCV_DT\"     headerText=\"지자체부담금입금일자\" width=\"140\" visible=\"true\"  sortable=\"true\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"PRIVT_SPOT_AMT\"         dataField=\"PRIVT_SPOT_AMT\"          headerText=\"민간현물금액\"       width=\"110\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"VRTL_ACCT_ISSU_BNK\"     dataField=\"VRTL_ACCT_ISSU_BNK\"      headerText=\"가상계좌발급은행\"   width=\"120\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"VRTL_ACCT_NO\"           dataField=\"VRTL_ACCT_NO\"            headerText=\"가상계좌번호\"       width=\"150\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"EXCTN_BAL\"              dataField=\"EXCTN_BAL\"               headerText=\"사업비잔액\"         width=\"100\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\"  formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"SBJT_ID\"                dataField=\"SBJT_ID\"                 headerText=\"과제번호\"           width=\"80\"   visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
          <DataGridColumn id=\"SBJT_NM\"                dataField=\"SBJT_NM\"                 headerText=\"과제명\"             width=\"80\"   visible=\"false\" sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
      </columns>\
      <rendererProviders>\
          <AdvancedDataGridRendererProvider column=\"{AGRMT_INST_NM}\" columnSpan=\"14\" depth=\"1\" renderer=\"GroupItem\"/>\
          <!-- <AdvancedDataGridRendererProvider column=\"{AGRMT_INST_NM}\" columnSpan=\"14\" depth=\"2\" renderer=\"GroupItem\"/>\  //서브그루핑은 되지만 메인그루핑의 소계가 나오지 않음 -->\
      </rendererProviders>\
      <dataProvider>\
          <!--  그리드의 자료를 dataProvider가 아닌 별도의 컴포넌트에 입력해야 할 경우 아래와 같이 $gridData를 넣어줍니다   -->\
          <GroupingCollection source=\"{$gridData}\">\
              <Grouping>\
                  <GroupingField name=\"SBJT_NM\">\
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
            if (typeof (dataRow.children) != "undefined")
                return;

            //popupDetail(rowIndex, dataRow);
            //layerDetail(dataGrid, dataRow);

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
        gridRoot.addEventListener("layoutComplete", uf_search);

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        //rMageGrid 초기화
        //gridApp.setData(null);

        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력

    };
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<script type="text/javascript">
var cnt = 0;
function setGridData(seqNo){
    try{
        
        var param = seqNo.split(",");
        var gridValue = [];
        if(param.length > 0){
            var paramValue = "";
            for(var i=0;i<param.length;i++){
                paramValue = param[i];
                
                if("1" == paramValue){
                	gridValue[cnt++] = {"EXCTN_LIMT_RSN_CD":null,"MM_TRNS_LIM_AMT":"100000000","PRIVT_ALOT_AMT_RCV_DT":"2014-01-20","RCH_EXP_SAL_ACCT_BNK_CD":null,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"10000000000","TMP_MM_TRNS_LIM_AMT":"100000000","AGRMT_INST_NM":"㈜RCMS","AGRMT_SEQ_NO":"G00000000000001","VRTL_ACCT_NO":"111-22-333333330","AGRMT_CASH_LIM_AMT":"110000000","ALOT_SPOT_AMT":"0","EXCTN_LIMT_ST":"0","LST_CORC_DTM":"1293548400000","ALOT_CASH_AMT":"0","DD_TRNS_LIM_AMT":"30000000","MNSR_CTBT_AMT":"80000","VRTL_ACCT_ISSU_BNK":"A은행","OTM_TRNS_LIM_AMT":"30000000","NPRF_INST_YN":"Y","EXCTN_BAL":"100000","TMP_DD_TRNS_LIM_AMT":"30000000","UPD_LIM_VALD_DT":null,"AGRMT_INST_ROLE_DV":"공동연구기관","MNSR_CTBT_AMT_RCV_DT":"2014-01-28","PMS_ID":"G01","UPAY_MNSR_CTBT_AMT":"0","OWAC_NM":"㈜RCMS","PRIVT_SPOT_AMT":"30000","FST_REG_DTM":"1292511600000","SBJT_ID":"TEST0001","SBJT_NM":"과제명 : RCMS 실습용 신규과제","PRIVT_CASH_AMT":"20000","CRDT_CRD_ISSU_YN":"N","INST_SBJT_PRGR_ST":"10","AGRMT_INST_CRPN_REG_NO":"1111111111111","TMP_OTM_TRNS_LIM_AMT":"30000000","LST_CORPR_ID":"KEITPMS","INST_TOTL_INST_AMT":"130000","RCH_EXP_SAL_ACCT_NO":null,"EXCTN_STG_DV":"1","EXCTN_LIMT_RSN":null,"RCH_EXP_ACCT_BNK_CD":"020","FST_REGR_ID":"KEITPMS","FNC_INST_BR_NM":"대전지점","LAF_ALOT_AMT_RCV_DT":"","AGRMT_INST_BZ_REG_NO":"1111111111"};
                	
                }else if("2" == paramValue){
                	gridValue[cnt++] = {"EXCTN_LIMT_RSN_CD":null,"MM_TRNS_LIM_AMT":"100000000","PRIVT_ALOT_AMT_RCV_DT":"2014-01-20","RCH_EXP_SAL_ACCT_BNK_CD":null,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"10000000000","TMP_MM_TRNS_LIM_AMT":"100000000","AGRMT_INST_NM":"㈜RCMS","AGRMT_SEQ_NO":"G00000000000002","VRTL_ACCT_NO":"111-22-333333331","AGRMT_CASH_LIM_AMT":"110000000","ALOT_SPOT_AMT":"0","EXCTN_LIMT_ST":"0","LST_CORC_DTM":"1293548400000","ALOT_CASH_AMT":"0","DD_TRNS_LIM_AMT":"30000000","MNSR_CTBT_AMT":"80000","VRTL_ACCT_ISSU_BNK":"A은행","OTM_TRNS_LIM_AMT":"30000000","NPRF_INST_YN":"Y","EXCTN_BAL":"93830","TMP_DD_TRNS_LIM_AMT":"30000000","UPD_LIM_VALD_DT":null,"AGRMT_INST_ROLE_DV":"공동연구기관","MNSR_CTBT_AMT_RCV_DT":"2014-01-28","PMS_ID":"G01","UPAY_MNSR_CTBT_AMT":"0","OWAC_NM":"㈜RCMS","PRIVT_SPOT_AMT":"30000","FST_REG_DTM":"1292511600000","SBJT_ID":"TEST0002","SBJT_NM":"과제명 : RCMS 실습용 진행과제","PRIVT_CASH_AMT":"20000","CRDT_CRD_ISSU_YN":"N","INST_SBJT_PRGR_ST":"10","AGRMT_INST_CRPN_REG_NO":"1111111111111","TMP_OTM_TRNS_LIM_AMT":"30000000","LST_CORPR_ID":"KEITPMS","INST_TOTL_INST_AMT":"130000","RCH_EXP_SAL_ACCT_NO":null,"EXCTN_STG_DV":"1","EXCTN_LIMT_RSN":null,"RCH_EXP_ACCT_BNK_CD":"020","FST_REGR_ID":"KEITPMS","FNC_INST_BR_NM":"대전지점","LAF_ALOT_AMT_RCV_DT":"","AGRMT_INST_BZ_REG_NO":"1111111111"};
                	
                }else if("3" == paramValue){
                	gridValue[cnt++] = {"EXCTN_LIMT_RSN_CD":null,"MM_TRNS_LIM_AMT":"100000000","PRIVT_ALOT_AMT_RCV_DT":"2014-01-20","RCH_EXP_SAL_ACCT_BNK_CD":null,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"10000000000","TMP_MM_TRNS_LIM_AMT":"100000000","AGRMT_INST_NM":"㈜RCMS","AGRMT_SEQ_NO":"G00000000000003","VRTL_ACCT_NO":"111-22-333333332","AGRMT_CASH_LIM_AMT":"110000000","ALOT_SPOT_AMT":"0","EXCTN_LIMT_ST":"0","LST_CORC_DTM":"1293548400000","ALOT_CASH_AMT":"0","DD_TRNS_LIM_AMT":"30000000","MNSR_CTBT_AMT":"80000","VRTL_ACCT_ISSU_BNK":"A은행","OTM_TRNS_LIM_AMT":"30000000","NPRF_INST_YN":"Y","EXCTN_BAL":"1400","TMP_DD_TRNS_LIM_AMT":"30000000","UPD_LIM_VALD_DT":null,"AGRMT_INST_ROLE_DV":"공동연구기관","MNSR_CTBT_AMT_RCV_DT":"2014-01-28","PMS_ID":"G01","UPAY_MNSR_CTBT_AMT":"0","OWAC_NM":"㈜RCMS","PRIVT_SPOT_AMT":"30000","FST_REG_DTM":"1292511600000","SBJT_ID":"TEST0003","SBJT_NM":"과제명 : RCMS 실습용 정산과제","PRIVT_CASH_AMT":"20000","CRDT_CRD_ISSU_YN":"N","INST_SBJT_PRGR_ST":"10","AGRMT_INST_CRPN_REG_NO":"1111111111111","TMP_OTM_TRNS_LIM_AMT":"30000000","LST_CORPR_ID":"KEITPMS","INST_TOTL_INST_AMT":"130000","RCH_EXP_SAL_ACCT_NO":null,"EXCTN_STG_DV":"1","EXCTN_LIMT_RSN":null,"RCH_EXP_ACCT_BNK_CD":"020","FST_REGR_ID":"KEITPMS","FNC_INST_BR_NM":"대전지점","LAF_ALOT_AMT_RCV_DT":"","AGRMT_INST_BZ_REG_NO":"1111111111"};
                    
                }else if("4" == paramValue){
                	gridValue[cnt++] = {"EXCTN_LIMT_RSN_CD":null,"MM_TRNS_LIM_AMT":"100000000","PRIVT_ALOT_AMT_RCV_DT":"2014-02-21","RCH_EXP_SAL_ACCT_BNK_CD":null,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"10000000000","TMP_MM_TRNS_LIM_AMT":"100000000","AGRMT_INST_NM":"㈜RCMS","AGRMT_SEQ_NO":"G00000000000004","VRTL_ACCT_NO":"111-22-333333333","AGRMT_CASH_LIM_AMT":"110000000","ALOT_SPOT_AMT":"0","EXCTN_LIMT_ST":"0","LST_CORC_DTM":"1293548400000","ALOT_CASH_AMT":"0","DD_TRNS_LIM_AMT":"30000000","MNSR_CTBT_AMT":"80000","VRTL_ACCT_ISSU_BNK":"A은행","OTM_TRNS_LIM_AMT":"30000000","NPRF_INST_YN":"Y","EXCTN_BAL":"5644","TMP_DD_TRNS_LIM_AMT":"30000000","UPD_LIM_VALD_DT":null,"AGRMT_INST_ROLE_DV":"공동연구기관","MNSR_CTBT_AMT_RCV_DT":"2014-02-26","PMS_ID":"G01","UPAY_MNSR_CTBT_AMT":"0","OWAC_NM":"㈜RCMS","PRIVT_SPOT_AMT":"30000","FST_REG_DTM":"1292511600000","SBJT_ID":"TEST0004","SBJT_NM":"과제명 : RCMS 실습용 정산과제","PRIVT_CASH_AMT":"20000","CRDT_CRD_ISSU_YN":"N","INST_SBJT_PRGR_ST":"10","AGRMT_INST_CRPN_REG_NO":"1111111111111","TMP_OTM_TRNS_LIM_AMT":"30000000","LST_CORPR_ID":"KEITPMS","INST_TOTL_INST_AMT":"130000","RCH_EXP_SAL_ACCT_NO":null,"EXCTN_STG_DV":"1","EXCTN_LIMT_RSN":null,"RCH_EXP_ACCT_BNK_CD":"020","FST_REGR_ID":"KEITPMS","FNC_INST_BR_NM":"대전지점","LAF_ALOT_AMT_RCV_DT":"","AGRMT_INST_BZ_REG_NO":"1111111111"};
                	
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
