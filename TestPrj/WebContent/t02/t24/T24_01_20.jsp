<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T24_01_20.jsp
 *   Description        : 부가세복원 신청 팝업 (카드)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014. 01. 15     				예기해        		
 *
 *  @author 예기해
 *  @Since  2014. 01. 15
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!-- //2014 그리드 교체 작업 head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //2014 그리드 교체 작업 head end -->


<%	
	String  INQ_STR_DT               =   SessionUtil.getRequestValue(request, "InqStrDt");               // 조회시작날짜
	String  INQ_END_DT               =   SessionUtil.getRequestValue(request, "InqEndDt");               // 조회종료날짜
	String  PayPlanDtlsRegNcnt       =   SessionUtil.getRequestValue(request, "PayPlanDtlsRegNcnt");     // 부가세복원요청건수
	String  PlanAmt                  =   SessionUtil.getRequestValue(request, "PlanAmt");                // 부가세복원요청금액
	String  VrtlAcctNo               =   SessionUtil.getRequestValue(request, "VrtlAcctNo");             // 가상계좌번호
	String  EXIST_VACC               =   SessionUtil.getRequestValue(request, "EXIST_VACC");             // 가상계좌발급유무
	String  BzExpExctnEvdcDv         =   SessionUtil.getRequestValue(request, "sel_BzExpExctnEvdcDv");   // 사업비사용증빙구분
	
	String  mapKey                   =   SessionUtil.getRequestValue(request, "AUTO_MAP_KEY");           // 
	
	String  SetlScheDt              []      =   request.getParameterValues("SetlScheDt");       // 결제예정일자
	String  BuyDt                   []      =   request.getParameterValues("BuyDt");            // 매입일자   
	String  CrdNo                   []      =   request.getParameterValues("CrdNo");            // 카드번호        
	String  BuyClctNo               []      =   request.getParameterValues("BuyClctNo");        // 매입추심번호
	String  BuySum                  []      =   request.getParameterValues("BuyAmt");           // 매입합계
	String  UseSplyAmt              []      =   request.getParameterValues("UseSplyAmt");       // 공급가액
	String  UseVatAmt               []      =   request.getParameterValues("UseVatAmt");        // 부가가치세액
	String  CanVatAmt               []      =   request.getParameterValues("UseVatAmt");        // 부가가치세액
	String  ButrId                  []      =   request.getParameterValues("ButrId");           // 카드결제증빙일련번호
	    
	
	
	/************************************************/
	/*      폼에 담기       START                       */
	/************************************************/
	String insertStr    =   "";
	if(SetlScheDt != null){
	    for(int i=0; i<SetlScheDt.length;i++){
	        insertStr   +=  "&SetlScheDt="          +   SetlScheDt  [i];    // 결제예정일자
	        insertStr   +=  "&BuyDt="               +   BuyDt       [i];    // 매입일자    
	        insertStr   +=  "&CrdNo="               +   CrdNo       [i];    // 카드번호        
	        insertStr   +=  "&BuyClctNo="           +   BuyClctNo   [i];    // 매입추심번호        
	        insertStr   +=  "&BuySum="              +   BuySum      [i];    // 매입합계        
	        insertStr   +=  "&UseSplyAmt="          +   UseSplyAmt  [i];    // 공급가액
	        insertStr   +=  "&CanVatAmt="           +   CanVatAmt   [i];    // 취소금액
	        insertStr   +=  "&UseVatAmt="           +   UseVatAmt   [i];    // 부가가치세액  
	        insertStr   +=  "&ButrId="              +   ButrId      [i];    // 카드결제증빙일련번호
	    }           
	    insertStr   +=  "&BzExpExctnEvdcDv="    +   BzExpExctnEvdcDv;   // 사업비사용증빙구분        
	}
%>

    <!-- head title -->
    <div class="title">
        <p class="pop_title">부가세 복원요청</p>
    </div>
    <!-- //head title// --> 
    
     <div id="body">
         <form name="frm" method="post">
            <input type="hidden" name="PayPlanDtlsRegNcnt" value='<%=PayPlanDtlsRegNcnt %>'>       <!-- 납부계획상세등록건수(부가세복원요청항목수) -->
            <input type="hidden" name="PlanAmt"            value='<%=PlanAmt %>'>                  <!-- 계획금액(부가세복원금액합계) -->
            <input type="hidden" name="VrtlAcctNo"         value='<%=VrtlAcctNo %>'>               <!-- 가상계좌번호 -->
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <!-- 부가세복원요청 리스트 start -->
            <div class="t10 b25 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="연구비복원요청의 조회기간,가상계좌번호 등을 제공한 표" class="tbl_type03">
                <caption>부가세복원요청 리스트</caption>
				<colgroup>
					<col width="20%" />
					<col width="30%" />
					<col width="20%" />
					<col width="30%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">조회기간</th>
						<th scope="row">가상계좌번호</th>
						<th scope="row">복원요청건수</th>
						<th scope="row">복원요청금액</th>
					</tr>
					<tr>
						<td class="ac"><%=INQ_STR_DT + "~" + INQ_END_DT%></td>
						<td class="ac">
						<%=VrtlAcctNo%>		
						</td>
						<td class="ac"><%=FormatUtil.getMoneyForm(PayPlanDtlsRegNcnt) %></td>
						<td class="ar"><%=FormatUtil.getMoneyForm(PlanAmt) %></td>
					</tr>
				</tbody>
				</table>
            </div>
            <!-- //부가세복원요청 리스트 end// -->
 

			<!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->
			      
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



                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-1" title="저장" onclick="uf_reqSave(); return false;"><span class="bt_sp">저장</span></a>
                </div>
                <!-- //action bt end// --> 


     </div>
     <!-- //content end// -->
     </form>
	</div>
	
                

<!-- //2014 그리드 교체 작업 footer start -->
<%@ include file="/inc/jspFooter_popup.jsp" %>
<!-- //2014 그리드 교체 작업 footer end -->



<script type="text/javascript">
	
	/******************************************************************
	 * uf_reqSave       부가세복원요청
	 * @param
	 * @return
	******************************************************************/	
	function uf_reqSave(){
	    var frm = document.frm;
	    var i   = 0;
	
	    if(frm.VrtlAcctNo.value == ""){
	        alert("발급된 가상계좌가 없습니다.\n관리자에게 문의하시기 바랍니다.");
	        return false;
	    }
			
	    if(!confirm("부가세복원요청 하시겠습니까?")) {
	    	return;
	    }	           

        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                        try{   
                            reset_submit(); // 'wait'
                            alert("부가세복원 요청되었습니다.");  
                        }finally{
                            removeTempAttribute(document.frm);  //get2post 삭제
                            opener.fn_url("/t02/t21/T21_01_00.jsp?autosrch=Y&AUTO_MAP_KEY="+<%=mapKey%>);
                            window.close();
                        }
                    
                    }, 1000);   // 1초후 실행 1000 = 1초s		    
	}	
	
</script>


<script type="text/javascript">
    function SetData(){        
        uf_proce_display_on();  //로딩바
        setTimeout(function(){SetData();}, 1000);   // 1초후 실행 1000 = 1초s
    }
</script>

<script type="text/javascript">
function gridInit(){	
	SetData();
}

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
 <DataGrid id=\"grid1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
	 <columns>\
	 <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
	 <DataGridColumn id=\"SETL_SCHE_DT\"        dataField=\"SETL_SCHE_DT\"   headerText=\"결제일자\"       width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"BUY_DT\"              dataField=\"BUY_DT\"         headerText=\"매입일자\"       width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"CRD_NO\"              dataField=\"CRD_NO\"         headerText=\"카드번호\"       width=\"130\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"BUY_CLCT_NO\"         dataField=\"BUY_CLCT_NO\"    headerText=\"매입번호\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"BUY_SUM\"             dataField=\"BUY_SUM\"        headerText=\"매입합계\"       width=\"90\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	 <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"   headerText=\"공급금액\"       width=\"80\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	 <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"    headerText=\"부가가치세액\"   width=\"90\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
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
        gridRoot.addEventListener("layoutComplete", gridInit);
        
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
    function setGridData(){        
        try{            
            var gridValue = [];
            cnt = 0;
			<%for(int i=0; i<SetlScheDt.length; i++){%>            
	            gridValue[cnt++] =
	            {            	
	            	"SETL_SCHE_DT":"<%=StringUtil.null2void(FormatUtil.setDelim(SetlScheDt[i],"9999-99-99"))%>",
	            	"BUY_DT":"<%=StringUtil.null2void(FormatUtil.setDelim(BuyDt[i],"9999-99-99"))%>",
	            	"CRD_NO":"<%=StringUtil.null2void(FormatUtil.setDelim(CrdNo[i], "9999-9999-9999-9999"))%>",
	            	"BUY_CLCT_NO":"<%=StringUtil.null2void(BuyClctNo[i])%>",
	            	"BUY_SUM":"<%=StringUtil.null2void(FormatUtil.getMoneyForm(BuySum[i]))%>",
	            	"USE_SPLY_AMT":"<%=StringUtil.null2void(FormatUtil.getMoneyForm(UseSplyAmt[i]))%>",
	            	"USE_VAT_AMT":"<%=StringUtil.null2void(FormatUtil.getMoneyForm(UseVatAmt[i]))%>"
	            };
            <%}%>
            
        }finally{
            gridData = gridValue;    //조회결과 JSON 값 가져오기
            rMateGridSetData();  //rMateGrid 구현            
        }
    }

    function SetData(){        
        try{            
            document.body.style.cursor =    "wait";            
            setGridData(); //Insert    Grid
            document.body.style.cursor =    "auto";            
        }finally{
            reset_submit();
        }        
    }    
  
    /* ********************** 2014 그리드 교체 작업 rMateGrid setting START *********************** */

</script>
</body>
</html> 