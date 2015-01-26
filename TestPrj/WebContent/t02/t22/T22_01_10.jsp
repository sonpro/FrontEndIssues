 <%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T22_01_10.jsp
 *   Description        : 이체취소요청 상세조회
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
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!-- //2014 그리드 교체 작업 head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //2014 그리드 교체 작업 head end -->
<%
String TrscEvdcDv          = SessionUtil.getRequestValue(request, "pTrscEvdcDv");   // 증빙구분
String ButrId              = SessionUtil.getRequestValue(request, "pButrId");       // 사업비사용거래실적ID
String AgrmtSeqNo          = SessionUtil.getRequestValue(request, "AgrmtSeqNo");       // 사업비사용거래실적ID
%>

    <!-- head title -->
    <div class="title">
        <p class="pop_title">증빙등록 상세조회</p>
    </div>
    <!-- //head title// --> 

    <div id="body">
        <form name="frm" method="post">
        <input type="hidden" id="ButrId" name="ButrId" value="<%=ButrId%>"/>
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>증빙목록</h3>
            <div class="t10"></div>
			<!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->      
		     <!-- 그리드 Start -->
		     <div>
		         <script>
		         rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "140", "#FFFFFF", "transparent");
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
			<!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->            
            
        </div>
        <!-- //content end// -->
        </form>
    </div>

<!-- //2014 그리드 교체 작업 footer start -->
<%@ include file="/inc/jspFooter_popup.jsp" %>
<!-- //2014 그리드 교체 작업 footer end -->

<script type="text/javascript">

var seqNo = "<%=AgrmtSeqNo%>";
	//////////////////////////////////
	//선택조회
	//////////////////////////////////
	function uf_Search(){  
        uf_proce_display_on();  //로딩바
        setTimeout(function(){SetData(seqNo);}, 1000);   // 1초후 실행 1000 = 1초s	    
	}   

</script>

<script type="text/javascript">
$(document).ready(function() {
	/* ********** 2014 그리드 교체 작업 rMateGrid 초기화  ********** */
    rMateGridInit();
    /* ********** 2014 그리드 교체 작업 rMateGrid 초기화  ********** */
});


/* ********************** 2014 그리드 교체 작업 rMateGrid setting START *********************** */
 
 var layoutStr = "\
 <?xml version=\"1.0\" encoding=\"utf-8\"?>\
 <rMateGrid>\
 <NumberFormatter id=\"numfmt\" />\
 <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
 <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
 <DataGrid id=\"grid1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
	 <columns>\
	 <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
	 <DataGridColumn id=\"TRSC_EVDC_DV\"			dataField=\"TRSC_EVDC_DV\"   			headerText=\"증빙구분코드\"  	width=\"0\"		visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"TRSC_EVDC_DV_NM\"			dataField=\"TRSC_EVDC_DV_NM\"   		headerText=\"증빙구분\"   		width=\"150\" 	visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"SPLR_CO_NM\"				dataField=\"SPLR_CO_NM\"   				headerText=\"거래처\"    		width=\"160\" 	visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"ITXP_REG_NCNT\"       	dataField=\"ITXP_REG_NCNT\"   			headerText=\"비목등록건수\"  	width=\"90\" 	visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"USE_SPLY_AMT\"       		dataField=\"USE_SPLY_AMT\"   			headerText=\"공급금액\"    		width=\"120\" 	visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"USE_VAT_AMT\"				dataField=\"USE_VAT_AMT\"   			headerText=\"부가가치세액\"    	width=\"120\"	visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"EMPTY1\"					dataField=\"EMPTY1\"   					headerText=\"증빙일련번호\"    	width=\"170\" 	visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"EMPTY2\"					dataField=\"EMPTY2\"   					headerText=\"증빙참조구분1\"    	width=\"140\" 	visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"EMPTY3\"					dataField=\"EMPTY3\"  					headerText=\"증빙참조구분2\" 	width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"EMPTY4\"					dataField=\"EMPTY4\"  					headerText=\"증빙참조구분3\"   	width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"REPR_DTLSITXP_CD\"     	dataField=\"REPR_DTLSITXP_CD\"  		headerText=\"대표세목코드\" 		width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"REPR_DTLSITXP_CD_NM\"  	dataField=\"REPR_DTLSITXP_CD_NM\"  		headerText=\"대표세목\" 			width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"REPR_SUB_DTLSITXP_CD\"    dataField=\"REPR_SUB_DTLSITXP_CD\"  	headerText=\"대표세세목코드\" 	width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"REPR_SUB_DTLSITXP_CD_NM\" dataField=\"REPR_SUB_DTLSITXP_CD_NM\" 	headerText=\"대표세세목\" 		width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	</columns>\
	<footers>\
		<DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
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
            
            layerDetail(dataGrid,dataRow);            
        };
        

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);        
        gridRoot.addEventListener("layoutComplete", uf_Search);        

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    //데이터 셋팅    
    var cnt = 0;
    function setGridData(){        
        try{            
            var gridValue = [];       
            
            
            //1. 신규과제
            if("G00000000000001" == seqNo){

                
            //2. 진행과제
            }else if("G00000000000002" == seqNo){

            	gridValue[cnt++] ={"TRSC_EVDC_DV":"","TRSC_EVDC_DV_NM":"전자세금계산서","SPLR_CO_NM":"㈜ 가 업체","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","EMPTY1":"","EMPTY2":"","EMPTY3":"","EMPTY4":"","REPR_DTLSITXP_CD":"","REPR_DTLSITXP_CD_NM":"","REPR_SUB_DTLSITXP_CD":"","REPR_SUB_DTLSITXP_CD_NM":""};
            	
            //3. 정산과제(보고서 미제출)
            }else if("G00000000000003" == seqNo){
                
            	gridValue[cnt++] ={"TRSC_EVDC_DV":"","TRSC_EVDC_DV_NM":"카드","SPLR_CO_NM":"㈜ C가맹점","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","EMPTY1":"","EMPTY2":"","EMPTY3":"","EMPTY4":"","REPR_DTLSITXP_CD":"","REPR_DTLSITXP_CD_NM":"","REPR_SUB_DTLSITXP_CD":"","REPR_SUB_DTLSITXP_CD_NM":""};

            //4. 정산과제(보고서 제출 완료)
            }else if("G00000000000004" == seqNo){

                gridValue[cnt++] ={"TRSC_EVDC_DV":"","TRSC_EVDC_DV_NM":"기타","SPLR_CO_NM":"㈜ RCMS","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","EMPTY1":"","EMPTY2":"","EMPTY3":"","EMPTY4":"","REPR_DTLSITXP_CD":"","REPR_DTLSITXP_CD_NM":"","REPR_SUB_DTLSITXP_CD":"","REPR_SUB_DTLSITXP_CD_NM":""};
                
            }
            
            
        }finally{
            gridData = gridValue;    //조회결과 JSON 값 가져오기
            rMateGridSetData();  //rMateGrid 구현            
        }
    }

    function SetData(seqNo){
    	if(!seqNo) return false;
    	
        try{            
            document.body.style.cursor =    "wait";            
            setGridData(seqNo); //Insert    Grid
            document.body.style.cursor =    "auto";            
        }finally{
            reset_submit();
        }        
    }    
  
    /* ********************** 2014 그리드 교체 작업 rMateGrid setting START *********************** */

</script>

</body>
</html>  