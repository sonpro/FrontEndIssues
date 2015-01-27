<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T21_01_10.jsp
 *   Description        : 요청현황 상세조회
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
    String RegDt            =       StringUtil.null2void(SessionUtil.getRequestValue(request,"RegDt"));             // 등록일자
    String RegDrtm          =       StringUtil.null2void(SessionUtil.getRequestValue(request,"RegDrtm"));           // 등록시간
    String IssuAcctNo       =       StringUtil.null2void(SessionUtil.getRequestValue(request,"IssuAcctNo"));        // 발급계좌번호
    String IssuBnk          =       StringUtil.null2void(SessionUtil.getRequestValue(request,"IssuBnk"));           // 발급은행
    String Dv               =       StringUtil.null2void(SessionUtil.getRequestValue(request,"Dv"));                // 요청구분코드 (A:민간부담금, B:충전금, C:보전금, D:부가세보전금,E:카드환급)
    
    String AgrmtSeqNo       =       StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));
%>

    <!-- head title -->
    <div class="title">
        <p class="pop_title">요청현황 상세조회</p>
    </div>
    <!-- //head title// -->

    <div id="body">
        <form action="">
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>상세조회</h3>
            <!-- 과제별현황 상세조회 리스트 start -->
            <div class="t10 b25 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="요청현황 상세조회 리스트" class="tbl_type02">
                <caption>요청현황 상세조회 리스트</caption>
	<colgroup>
		<col width="20%" />
		<col width="80%" />
	</colgroup>
	<tbody>
		<tr>
			<th scope="col">요청일자</th>
			<td class="ll"><%=FormatUtil.setDelim(RegDt,"9999-99-99") %></td>
		</tr>
		<tr>
		
			<th scope="col">요청구분</th>
			<td class="ll"><%=CodeUtil.getCode("RND038",StringUtil.null2void(Dv)) %></td>
		</tr>
		<tr>
			<th scope="col">발급계좌번호</th>
			<td class="ll">[<%=IssuBnk%>] <%=IssuAcctNo %></td>
		</tr>
	</tbody>
	</table>
            </div>
            <!-- //요청현황 상세조회 리스트 end// -->

			<!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->
		    <div class="ar">
		      <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> 건]</p>
		      <p class="ar b05">
		          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄"/></a>
		          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="저장"/></a>
		      </p>
		      <p class="cb"></p>
		    </div>
		      
		     <!-- 그리드 Start -->
		     <div>
		         <script>
		         rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "226", "#FFFFFF", "transparent");
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
    var agrmtSeqNo = "<%=AgrmtSeqNo%>";

    function uf_search(){        
        uf_proce_display_on();  //로딩바
        setTimeout(function(){SetData(agrmtSeqNo);}, 1000);   // 1초후 실행 1000 = 1초s
    }
</script>

<script type="text/javascript">

$(document).ready(function() {
	/* ********** 2014 그리드 교체 작업 rMateGrid 초기화  ********** */
    rMateGridInit();
    uf_search();
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
         <DataGridColumn id=\"EXCTN_REG_DT\"			dataField=\"EXCTN_REG_DT\"   		headerText=\"사용등록일자\"		width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"EXCTN_EXEC_DT\"			dataField=\"EXCTN_EXEC_DT\"  		headerText=\"사용실행일시\"  	width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"DTLS_ITXP_NM\"			dataField=\"DTLS_ITXP_NM\"   		headerText=\"세목명\"    	   	width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"    	dataField=\"SUB_DTLS_ITXP_NM\"  	headerText=\"세세목명\"    		width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"PLAN_AMT\"       			dataField=\"PLAN_AMT\"   			headerText=\"요청금액\"    		width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"SPLY_AMT\"				dataField=\"SPLY_AMT\"   			headerText=\"공급금액\"    		width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"VAT_AMT\"					dataField=\"VAT_AMT\"   			headerText=\"부가가치세액\"    	width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"COMM\"					dataField=\"COMM\"   				headerText=\"봉사료/수수료\"    	width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"BZ_EXP_EXCTN_EVDC_DV\"	dataField=\"BZ_EXP_EXCTN_EVDC_DV\"  headerText=\"증빙구분\" 			width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"EVDC_SEQ_NO\"				dataField=\"EVDC_SEQ_NO\"  			headerText=\"증빙일련번호\" 		width=\"120\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"EVDC_REFN_DV1\"			dataField=\"EVDC_REFN_DV1\"  		headerText=\"카드번호\"   		width=\"130\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"EVDC_REFN_DV2\"      		dataField=\"EVDC_REFN_DV2\"  		headerText=\"매입승인번호\" 		width=\"140\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"RCV_BNK_CD\"      		dataField=\"RCV_BNK_CD\"  			headerText=\"입금은행\" 			width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"RCV_ACCT_NO\"      		dataField=\"RCV_ACCT_NO\"  			headerText=\"입금계좌\" 			width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"OWAC_NM\"      			dataField=\"OWAC_NM\"  				headerText=\"예금주명\" 			width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
     </columns>\
     <footers>\
     	<DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
	         <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PLAN_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
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
    
    
    //토탈 수 구하기
    function setTotCnt() {
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            return;
        };

        var clen = collection.getLength();
        $("#InqPrsTotlNcnt").text(clen);    //그리드 자료수                
    }
    
    //데이터 셋팅    
    var cnt = 0;
    function setGridData(seqNo){        
        try{            
            var gridValue = [];      

            //1. 신규과제
            if("G00000000000001" == seqNo){

            	
            //2. 진행과제
            }else if("G00000000000002" == seqNo){

            	gridValue[cnt++] = {"EXCTN_REG_DT":"2014-03-07","EXCTN_EXEC_DT":"2014-03-07 12:27:13","DTLS_ITXP_NM":"연구시설·장비 및 재료비","SUB_DTLS_ITXP_NM":"복사비","PLAN_AMT":"1100","SPLY_AMT":"1000","VAT_AMT":"100","COMM":"0","BZ_EXP_EXCTN_EVDC_DV":"전자세금계산서","EVDC_SEQ_NO":"","EVDC_REFN_DV1":"","EVDC_REFN_DV2":"","RCV_BNK_CD":"E 은행","RCV_ACCT_NO":"555-55-555555-0","OWAC_NM":"㈜ 가 업체"};
            	
            //3. 정산과제(보고서 미제출)
            }else if("G00000000000003" == seqNo){
            	
            	gridValue[cnt++] = {"EXCTN_REG_DT":"2013-09-30","EXCTN_EXEC_DT":"2013-09-30 00:00:00","DTLS_ITXP_NM":"연구활동비","SUB_DTLS_ITXP_NM":"복사비","PLAN_AMT":"10000","SPLY_AMT":"10000","VAT_AMT":"0","COMM":"0","BZ_EXP_EXCTN_EVDC_DV":"기타증빙","EVDC_SEQ_NO":"","EVDC_REFN_DV1":"","EVDC_REFN_DV2":"","RCV_BNK_CD":"A 은행","RCV_ACCT_NO":"100-00-000000","OWAC_NM":"㈜ RCMS"};

            //4. 정산과제(보고서 제출 완료)
            }else if("G00000000000004" == seqNo){

            	gridValue[cnt++] = {"EXCTN_REG_DT":"2013-10-29","EXCTN_EXEC_DT":"2013-10-29 13:12:08","DTLS_ITXP_NM":"연구시설·장비 및 재료비","SUB_DTLS_ITXP_NM":"복사비","PLAN_AMT":"520","SPLY_AMT":"5200","VAT_AMT":"520","COMM":"1520","BZ_EXP_EXCTN_EVDC_DV":"전자세금계산서","EVDC_SEQ_NO":"","EVDC_REFN_DV1":"","EVDC_REFN_DV2":"","RCV_BNK_CD":"F 은행","RCV_ACCT_NO":"999-99-999999-0","OWAC_NM":"㈜ 라 업체"};
            	
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