<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T11_01_10.jsp
 *   Description        : 비목별 사용내역 조회
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.03                     예기해             
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
//kr.go.rcms.web.data.SbjtData sbjtData = (kr.go.rcms.web.data.SbjtData)kr.go.rcms.web.util.SessionUtil.getSessionValue(request, "sbjt_data");
    String AgrmtSeqNo   = SessionUtil.getRequestValue(request, "AgrmtSeqNo");       //협약기관ID
    String AgrmtInstId  = SessionUtil.getRequestValue(request, "AgrmtInstId");      //협약일련번호

    String InqDvCd      = SessionUtil.getRequestValue(request, "InqDvCd");          //조회구분코드
    String DtlsItxpCd   = SessionUtil.getRequestValue(request, "DtlsItxpCd");       //세부비목코드
    String HgrkItxpNm   = SessionUtil.getRequestValue(request, "HgrkItxpNm");       //비목
    String DtlsItxpNm   = SessionUtil.getRequestValue(request, "DtlsItxpNm");       //세부비목
    String bViewSbjtNm  = SessionUtil.getRequestValue(request, "bViewSbjtNm", "false");     //과제명보기여부
%>


<title>비목별 사용내역 조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">비목별 사용내역 조회</p>
        </div>
        <!-- //head title// --> 
    </div>



<script type="text/javascript">
    //////////////////////////////////
    //조회 처리
    //////////////////////////////////
    function uf_search(SchGb){
        var frm = document.frm;
        
        if( isSubmit() ) return;    // 이중처리
        
        if("<%=AgrmtSeqNo%>" == "" || "<%=AgrmtInstId%>" == "" || "<%=DtlsItxpCd%>" == "" ) return false;

        uf_proce_display_on();  //로딩바
        setTimeout(function(){SetData("<%=AgrmtInstId%>", "<%=AgrmtSeqNo%>", "<%=DtlsItxpCd%>", "<%=DtlsItxpNm%>");}, 1000);   // 1초후 실행 1000 = 1초s

        removeTempAttribute(frm);   //get2post 삭제
        
            
    }

</script>







<div id="body">
  <!-- content start -->
  <div id="content">
    <div class="t20"></div>
    <h3>비목별 사용내역 조회</h3>
    <!-- 과제별현황 상세조회 리스트 start -->
    <form name="frm" method="post">
            <input type="hidden" name="TrSupYn" value="N" />                <!--거래계속여부-->
            <input type="hidden" name="PrsPgno" value="0" />
            <input type="hidden" name="AgrmtSeqNo" value="<%=AgrmtSeqNo%>" />
            <input type="hidden" name="AgrmtInstId" value="<%=AgrmtInstId%>" />
            <input type="hidden" name="DtlsItxpCd" value="<%=DtlsItxpCd%>" />
            <input type="hidden" name="InqDvCd" value="<%=InqDvCd%>" />
            
    <div class="t10 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="비목별 사용내역 조회" class="tbl_type02">
        <caption>
        비목별 사용내역 조회
        </caption>
        <colgroup>
        <col width="20%" />
        <col width="80%" />
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">비목</th>
            <td class="ll"><%=HgrkItxpNm%> - <%=DtlsItxpNm%></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //비목별 사용내역 조회 end// -->
    <!-- 총건수/인쇄 저장 버튼 start -->
    <div class="pop_total_box">
      <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> 건 /<span id="InqPrsTotlCnt">0</span> 건]</p>
      <p class="ar b05">
          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄"/></a>
          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="저장"/></a>
      </p>
      <p class="cb"></p>
    </div>
    <!-- 총건수/인쇄 저장 버튼 start -->
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
    
    </form>
  </div>
  
</div>
<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %> 




<script type="text/javascript">
$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();
    
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
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" lockedColumnCount=\"1\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
            <columns>\
                <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                <DataGridColumn id=\"BZ_CLAS_NM\"       dataField=\"BZ_CLAS_NM\"        headerText=\"사업명\"      width=\"140\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SBJT_ID\"          dataField=\"SBJT_ID\"           headerText=\"과제번호\"     width=\"110\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SBJT_NM\"          dataField=\"SBJT_NM\"           headerText=\"과제명\"      width=\"140\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"EXCTN_EXEC_DT\"    dataField=\"EXCTN_EXEC_DT\"     headerText=\"사용일자\"     width=\"100\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"EXCTN_EXEC_TM\"    dataField=\"EXCTN_EXEC_TM\"     headerText=\"사용시간\"     width=\"100\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_CD\" dataField=\"SUB_DTLS_ITXP_CD\"  headerText=\"세부비목코드\" width=\"110\" textAlign=\"center\" visible=\"false\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_NM\" dataField=\"SUB_DTLS_ITXP_NM\"  headerText=\"세부비목\"     width=\"120\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"CASH_SPOT_DV\"     dataField=\"CASH_SPOT_DV\"      headerText=\"사업비구분\"    width=\"120\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"TRNS_AMT\"         dataField=\"TRNS_AMT\"          headerText=\"사용금액\"     width=\"110\" textAlign=\"right\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"SPLY_AMT\"         dataField=\"SPLY_AMT\"          headerText=\"공급금액\"     width=\"110\" textAlign=\"right\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"VAT_AMT\"          dataField=\"VAT_AMT\"           headerText=\"부가가치세액\" width=\"110\" textAlign=\"right\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"VAT_PSV_APC_YN\"   dataField=\"VAT_PSV_APC_YN\"    headerText=\"부가세복원여부\" width=\"110\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PART_PROC_AMT\"    dataField=\"PART_PROC_AMT\"     headerText=\"부분취소금액\" width=\"110\" textAlign=\"right\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            </columns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
            <footers>\
                <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PART_PROC_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
            
            setColumnVisible(); //파라미터 값에따라 visible 설정
            uf_search();    // 검색실행
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        
        //data 출력 후 실행할 이벤트 등록
        gridRoot.addEventListener("dataComplete", setTotCnt);

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    //컬럼 보이게 안보이게 설정
    function setColumnVisible() {
        var columns = dataGrid.getColumns();
        if("false" == "<%=bViewSbjtNm%>"){
            columns[1].setVisible(false);
            columns[2].setVisible(false);
            columns[3].setVisible(false);
        }
    }
    
    //토탈 수 구하기
    function setTotCnt() {
        var totCnt = getGridRowCount_rMate();

        $("#InqPrsTotlNcnt").text(totCnt);    //그리드 자료수
        $("#InqPrsTotlCnt").text(totCnt);     //전체 자료수
        
    }
  
  
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<script type="text/javascript">
var cnt = 0;
function setGridData(instId, seqNo, itxpCd, itxpNm){
	var id = instId;
	var no = seqNo;
	var cd = itxpCd;
	var nm = itxpNm;
	
    try{
        
        var gridValue = [];
        cnt = 0;
        
        //1. 신규과제
        if("G00000000000001" == no){
	        
	    //2. 진행과제
        }else if("G00000000000002" == no){
            if("연구시설·장비 및 재료비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"1","SUB_DTLS_ITXP_NM":"연구시설장비구입비","SUB_DTLS_ITXP_CD":"B0201009","VAT_AMT":"100","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201302052249302","EXCTN_EXEC_TM":"12:27:13","EXCTN_EXEC_DT":"2014-03-07","TRNS_AMT":"1100","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","SPLY_AMT":"1000","DTLS_ITXP_NM":"연구시설·장비 및 재료비","PRS_INQ_NCNT":"1","DTLS_ITXP_CD":"B0201"};
                
            }else if("인건비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"1","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0201009","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201302052249302","EXCTN_EXEC_TM":"13:07:20","EXCTN_EXEC_DT":"2014-02-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구시설·장비 및 재료비","PRS_INQ_NCNT":"1","DTLS_ITXP_CD":"B0201"};
                
            }else if("연구활동비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"1","SUB_DTLS_ITXP_NM":"세미나개최비","SUB_DTLS_ITXP_CD":"B0201009","VAT_AMT":"20","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201302052249302","EXCTN_EXEC_TM":"14:51:38","EXCTN_EXEC_DT":"2014-02-24","TRNS_AMT":"220","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","SPLY_AMT":"200","DTLS_ITXP_NM":"연구시설·장비 및 재료비","PRS_INQ_NCNT":"1","DTLS_ITXP_CD":"B0201"};
                
            }else if("연구과제추진비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"1","SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0201009","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201302052249302","EXCTN_EXEC_TM":"15:44:36","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","SPLY_AMT":"2250","DTLS_ITXP_NM":"연구시설·장비 및 재료비","PRS_INQ_NCNT":"1","DTLS_ITXP_CD":"B0201"};
                
            }else if("간접비" == nm){
            	gridValue[cnt++] = {"INQ_TOTL_NCNT":"1","SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0201009","VAT_AMT":"9","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201302052249302","EXCTN_EXEC_TM":"15:46:58","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"100","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","SPLY_AMT":"91","DTLS_ITXP_NM":"연구시설·장비 및 재료비","PRS_INQ_NCNT":"1","DTLS_ITXP_CD":"B0201"};
                
            }
            
        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == no){
        	if("연구시설·장비 및 재료비" == nm){
	            gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구시설장비구입비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"100","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-06","TRNS_AMT":"1100","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"1000","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
	            gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구시설장비구입비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"100","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-04-23","TRNS_AMT":"1100","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"1000","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
	            gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"시약재료구입비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"1818","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-07-22","TRNS_AMT":"20000","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"18182","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
	            gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"시작품제작비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"1363","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-10-29","TRNS_AMT":"15000","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"13637","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
	            
        	}else if("인건비" == nm){
        		gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202037","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201203212648755","EXCTN_EXEC_TM":"14:56:33","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201205072732291","EXCTN_EXEC_TM":"17:02:00","EXCTN_EXEC_DT":"2013-05-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"C201203222413357","EXCTN_EXEC_TM":"12:00:08","EXCTN_EXEC_DT":"2013-06-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"C","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201201052412250","EXCTN_EXEC_TM":"09:46:15","EXCTN_EXEC_DT":"2013-07-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202013","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"C201111212383103","EXCTN_EXEC_TM":"12:05:44","EXCTN_EXEC_DT":"2013-08-09","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"C","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009042908026","EXCTN_EXEC_TM":"12:40:31","EXCTN_EXEC_DT":"2013-09-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009042908026","EXCTN_EXEC_TM":"12:40:31","EXCTN_EXEC_DT":"2013-10-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009082908481","EXCTN_EXEC_TM":"11:55:36","EXCTN_EXEC_DT":"2013-11-08","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202011","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009062908018","EXCTN_EXEC_TM":"11:45:31","EXCTN_EXEC_DT":"2013-12-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202011","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"T201009042362577","EXCTN_EXEC_TM":"11:31:27","EXCTN_EXEC_DT":"2014-01-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201006282907538","EXCTN_EXEC_TM":"16:05:50","EXCTN_EXEC_DT":"2014-02-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201006142907597","EXCTN_EXEC_TM":"10:45:53","EXCTN_EXEC_DT":"2014-02-28","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                
        	}else if("연구활동비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"세미나개최비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"20","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-25","TRNS_AMT":"220","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"200","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"세미나개최비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"20","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-05-23","TRNS_AMT":"220","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"200","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"전문가활용비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-09-30","TRNS_AMT":"10000","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"10000","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"교육훈련비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"823","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-12-23","TRNS_AMT":"9060","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"8237","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
        	}else if("연구과제추진비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-21","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2250","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-06-04","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2250","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-09-03","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2250","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-12-02","TRNS_AMT":"2150","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2150","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
        	}else if("간접비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"9","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"13:41:58","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"100","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"91","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"9","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"16:02:09","EXCTN_EXEC_DT":"2013-07-08","TRNS_AMT":"100","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"91","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"45","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"09:21:09","EXCTN_EXEC_DT":"2013-11-25","TRNS_AMT":"500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"455","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"27","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"15:46:59","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"300","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"273","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
        	}
        	
       	//4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == no){
            if("연구시설·장비 및 재료비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구시설장비구입비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"100","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-06","TRNS_AMT":"1100","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"1000","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구시설장비구입비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"100","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-04-23","TRNS_AMT":"1100","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"1000","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"시약재료구입비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"1818","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-07-22","TRNS_AMT":"20000","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"18182","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"시작품제작비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"1363","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-10-29","TRNS_AMT":"15000","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"13637","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
            }else if("인건비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202037","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201203212648755","EXCTN_EXEC_TM":"14:56:33","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201205072732291","EXCTN_EXEC_TM":"17:02:00","EXCTN_EXEC_DT":"2013-05-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"C201203222413357","EXCTN_EXEC_TM":"12:00:08","EXCTN_EXEC_DT":"2013-06-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"C","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201201052412250","EXCTN_EXEC_TM":"09:46:15","EXCTN_EXEC_DT":"2013-07-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202013","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"C201111212383103","EXCTN_EXEC_TM":"12:05:44","EXCTN_EXEC_DT":"2013-08-09","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"C","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009042908026","EXCTN_EXEC_TM":"12:40:31","EXCTN_EXEC_DT":"2013-09-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009042908026","EXCTN_EXEC_TM":"12:40:31","EXCTN_EXEC_DT":"2013-10-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009082908481","EXCTN_EXEC_TM":"11:55:36","EXCTN_EXEC_DT":"2013-11-08","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202011","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009062908018","EXCTN_EXEC_TM":"11:45:31","EXCTN_EXEC_DT":"2013-12-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202011","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"T201009042362577","EXCTN_EXEC_TM":"11:31:27","EXCTN_EXEC_DT":"2014-01-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201006282907538","EXCTN_EXEC_TM":"16:05:50","EXCTN_EXEC_DT":"2014-02-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201006142907597","EXCTN_EXEC_TM":"10:45:53","EXCTN_EXEC_DT":"2014-02-28","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2500","DTLS_ITXP_NM":"연구활동비","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                
            }else if("연구활동비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"세미나개최비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"20","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-25","TRNS_AMT":"220","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"200","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"세미나개최비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"20","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-05-23","TRNS_AMT":"220","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"200","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"전문가활용비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-09-30","TRNS_AMT":"10000","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"10000","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"교육훈련비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"823","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-12-23","TRNS_AMT":"9060","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"8237","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
            }else if("연구과제추진비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-21","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2250","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-06-04","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2250","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-09-03","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2250","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-12-02","TRNS_AMT":"2150","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"2150","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
            }else if("간접비" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"9","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"13:41:58","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"100","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"91","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"9","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"16:02:09","EXCTN_EXEC_DT":"2013-07-08","TRNS_AMT":"100","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"91","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"45","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"09:21:09","EXCTN_EXEC_DT":"2013-11-25","TRNS_AMT":"500","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"455","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"27","VAT_PSV_APC_YN":"미신청","CASH_SPOT_DV":"현금","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"15:46:59","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"300","BZ_CLAS_NM":"RCMS 실습","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","SPLY_AMT":"273","DTLS_ITXP_NM":"외부인건비","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
            }
            
        }
                
    }finally{
        
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}

function SetData(instId, seqNo, itxpCd, itxpNm){
    if(!instId) return false;
    
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor =    "wait";
        //SetData(); //Insert   Grid
        setGridData(instId, seqNo, itxpCd, itxpNm); //Insert    Grid
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
