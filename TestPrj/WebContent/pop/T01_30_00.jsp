<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_30_00.jsp
 *   Description        : 사용자 권한 조회 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.21                     예기해             
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



<title>사용자 권한 조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">사용자 권한 조회</p>
        </div>
        <!-- //head title// --> 
    </div>





    <div id="body"> 
        <form name="frm" method="post">
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>사용자 권한 목록</h3>
            <!-- 사용자 권한 리스트 start -->
            <div class="t10 b25 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사용자 권한 리스트" class="tbl_type02">
                <caption>사용자 권한 리스트</caption>
                <colgroup>
                    <col width="20%" />
                    <col width="80%" />
                </colgroup>
                <tbody>
                <tr>
                    <th scope="row">권한명</th>
                    <td class="ll">과제책임자
                    </td>
                </tr>
                </tbody>
                </table>
            </div>
            <!-- //사용자 권한 리스트 end// -->            
            <h3>과제별 권한 목록</h3>
            <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
            <!-- 그리드 Start -->
            <div id="gridDiv">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "350", "#FFFFFF", "transparent");
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



<%@ include file="/inc/jspFooter_popup.jsp" %> 



<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"SBJT_ID\"          dataField=\"SBJT_ID\"           headerText=\"과제번호\"         width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_NM\"          dataField=\"SBJT_NM\"           headerText=\"과제명\"           width=\"150\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_ID\"          dataField=\"INST_ID\"           headerText=\"기관ID\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_NM\"          dataField=\"INST_NM\"           headerText=\"기관명\"           width=\"100\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCMS_GRP_CD\"      dataField=\"RCMS_GRP_CD\"       headerText=\"권한그룹명\"       width=\"110\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HMPW_ROLE_DV\"     dataField=\"HMPW_ROLE_DV\"      headerText=\"인력역할\"         width=\"90\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_YN\"           dataField=\"USE_YN\"            headerText=\"사용여부\"         width=\"80\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FST_REG_DTM\"      dataField=\"FST_REG_DTM\"       headerText=\"최초등록일자\"     width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"LST_CORC_DTM\"     dataField=\"LST_CORC_DTM\"      headerText=\"최종수정일자\"     width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HMPW_ROLE_SB_DV\"  dataField=\"HMPW_ROLE_SB_DV\"   headerText=\"인력역할세부\"     width=\"90\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_MANA_YN\"     dataField=\"INST_MANA_YN\"      headerText=\"기관책임자여부\"   width=\"100\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AUTO_ROLE_YN\"     dataField=\"AUTO_ROLE_YN\"      headerText=\"자동부여여부\"     width=\"80\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CPCG_YN\"          dataField=\"CPCG_YN\"           headerText=\"전담여부\"         width=\"80\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
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
        gridApp.setLayout(layoutStr);   //그리드 레이아웃 생성

        

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", SetData);   //rMateGrid 레이아웃 출력 후 조회시작
        

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

function SetData() {
    
        var cnt = 0;
        var gridValue = [];

        gridValue[cnt++] = {"HMPW_ROLD_SB_DV":"총괄책임자","HMPW_ROLE_SB_DV":"2A","LST_CORC_DTM":"2011-10-26","USE_YN":"Y","CPCG_YN":"N","RCMS_GRP_CD":"과제책임자","AUTO_ROLE_YN":"N","FST_REG_DTM":"2010-05-24","SBJT_ID":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","INST_NM":"㈜RCMS","INST_ID":"10112249","INST_MANA_YN":"N","HMPW_ROLE_DV":"과제책임자"};
        gridValue[cnt++] = {"HMPW_ROLD_SB_DV":"총괄책임자","HMPW_ROLE_SB_DV":"2A","LST_CORC_DTM":"2011-10-26","USE_YN":"Y","CPCG_YN":"N","RCMS_GRP_CD":"과제책임자","AUTO_ROLE_YN":"N","FST_REG_DTM":"2010-07-12","SBJT_ID":"TEST0002","SBJT_NM":"RCMS 실습용 정산과제","INST_NM":"㈜RCMS","INST_ID":"10112249","INST_MANA_YN":"N","HMPW_ROLE_DV":"과제책임자"};
        gridValue[cnt++] = {"HMPW_ROLD_SB_DV":"총괄책임자","HMPW_ROLE_SB_DV":"2D","LST_CORC_DTM":"2013-01-02","USE_YN":"Y","CPCG_YN":"N","RCMS_GRP_CD":"과제책임자","AUTO_ROLE_YN":"N","FST_REG_DTM":"2013-01-02","SBJT_ID":"TEST0001","SBJT_NM":"RCMS 실습용 신규과제","INST_NM":"㈜RCMS","INST_ID":"10000001","INST_MANA_YN":"N","HMPW_ROLE_DV":"과제책임자"};

        
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현

}


$(document).ready(function() {
    
    // rMateGrid 초기화
    rMateGridInit();
    
});  


</script>

</body>
</html> 
