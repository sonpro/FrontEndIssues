<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T22_01_20.jsp 
 *   Description        : 연구비이체취소요청 팝업
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
    String  INQ_STR_DT              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqStrDt"));             // 조회시작날짜
    String  INQ_END_DT              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqEndDt"));             // 조회종료날짜
    String  PayPlanDtlsRegNcnt      =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PayPlanDtlsRegNcnt"));   // 연구비보전요청건수
    String  PlanAmt                 =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PlanAmt"));              // 연구비보전요청금액
    String  VrtlAcctNo              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "VrtlAcctNo"));           // 가상계좌번호
    String  EXIST_VACC              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "EXIST_VACC"));           // 가상계좌발급유무
    
    String  mapKey                  =   StringUtil.null2void(SessionUtil.getRequestValue(request, "AUTO_MAP_KEY"));
    
    String  ButrId                  []      =   request.getParameterValues("ButrId");                   // 사업비사용거래실적ID
    String  ExctnStgDv              []      =   request.getParameterValues("ExctnStgDv");               // 집행단계구분    
    String  ExctnExecDt             []      =   request.getParameterValues("ExctnExecDt");              // 사용실행일자
    String  ExctnExecTm             []      =   request.getParameterValues("ExctnExecTm");              // 사용실행시간
    String  TrscPfmcSt              []      =   request.getParameterValues("TrscPfmcSt");               // 거래실적상태  
    String  TrscEvdcDv              []      =   request.getParameterValues("TrscEvdcDv");               // 거래증빙구분  
    String  ItxpRegNcnt             []      =   request.getParameterValues("ItxpRegNcnt");              // 비목등록건수        
    String  RcvBnkNm                []      =   request.getParameterValues("RcvBnkNm");                 // 입금은행명          
    String  RcvAcctBnkCd            []      =   request.getParameterValues("RcvAcctBnkCd");             // 입금은행코드        
    String  RcvAcctNo               []      =   request.getParameterValues("RcvAcctNo");                // 입금계좌번호        
    String  RcvAcctOwacNm           []      =   request.getParameterValues("RcvAcctOwacNm");            // 예금주명            
    String  ExctnAmt                []      =   request.getParameterValues("ExctnAmt");                 // 집행금액            
    String  UseSplyAmt              []      =   request.getParameterValues("UseSplyAmt");               // 공급금액            
    String  UseVatAmt               []      =   request.getParameterValues("UseVatAmt");                // 부가가치세액        
    String  RtrtFixAmt              []      =   request.getParameterValues("RtrtFixAmt");               // 환원확정금액            
    String  RtrtFixSplyAmt          []      =   request.getParameterValues("RtrtFixSplyAmt");           // 환원확정공급금액            
    String  RtrtFixVatAmt           []      =   request.getParameterValues("RtrtFixVatAmt");            // 환원확정부가세금액            
    String  VatProcRtrtAmt          []      =   request.getParameterValues("VatProcRtrtAmt");           // 부가세처리금액     
     
  
    /************************************************/
    /*      사용내역 폼에 담기      START           */
    /************************************************/    
    
    String insertStr    =   "";
    if(ButrId != null){
        for(int i=0; i<ButrId.length;i++){
            insertStr   +=  "&ButrId="                      +   ButrId                  [i];        // 증빙일련번호
            insertStr   +=  "&ExctnStgDv="                  +   ExctnStgDv              [i];        // 사용업무구분코드    
            insertStr   +=  "&ExctnExecDt="                 +   ExctnExecDt             [i];        // 사용실행일자        
            insertStr   +=  "&ExctnExecTm="                 +   ExctnExecTm             [i];        // 사용실행시간
            insertStr   +=  "&TrscPfmcSt="                  +   TrscPfmcSt              [i];        // 사업비사용처리상태  
            insertStr   +=  "&TrscEvdcDv="                  +   TrscEvdcDv              [i];        // 사업비사용증빙구분
            insertStr   +=  "&ItxpRegNcnt="                 +   ItxpRegNcnt             [i];        // 비목등록건수        
            insertStr   +=  "&RcvBnkNm="                    +   RcvBnkNm                [i];        // 입금은행명          
            insertStr   +=  "&RcvAcctBnkCd="                +   RcvAcctBnkCd            [i];        // 입금은행코드        
            insertStr   +=  "&RcvAcctNo="                   +   RcvAcctNo               [i];        // 입금계좌번호        
            insertStr   +=  "&RcvAcctOwacNm="               +   RcvAcctOwacNm           [i];        // 예금주명            
            insertStr   +=  "&ExctnAmt="                    +   ExctnAmt                [i];        // 이체금액            
            insertStr   +=  "&UseSplyAmt="                  +   UseSplyAmt              [i];        // 공급금액            
            insertStr   +=  "&UseVatAmt="                   +   UseVatAmt               [i];        // 부가가치세액        
        }   
    }

%>

<%-- 
<%@ include file="/jsp/inc/header_popup.jsp" %>
--%>

 
	    <!-- head title -->
	    <div class="title">
	        <p class="pop_title">연구비이체취소 요청</p>
	    </div>
	    <!-- //head title// --> 
	

        <div id="body">
            <form name="frm" method="post">
            <input type="hidden" name="PayPlanDtlsRegNcnt"  value='<%=PayPlanDtlsRegNcnt %>'>            <!-- 납부계획상세등록건수(연구비보전요청항목수) -->
            <input type="hidden" name="PlanAmt"             value='<%=PlanAmt %>'>                       <!-- 계획금액(연구비보전금액합계) -->
            <input type="hidden" name="VrtlAcctNo"          value='<%=VrtlAcctNo %>'>                    <!-- 가상계좌번호 -->
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>연구비이체취소요청</h3>
                <!-- 연구비이체취소요청 리스트 start -->
                <div class="t10 b25 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="연구비이체취소요청 리스트" class="tbl_type03">
                    <caption>연구비이체취소요청 리스트</caption>
					<colgroup>
						<col width="25%" />
						<col width="25%" />
						<col width="25%" />
						<col width="25%" />
					</colgroup>
					<thead>
					<tr>
						<th scope="col">조회기간</th>
						<th scope="col">가상계좌번호</th>
						<th scope="col">복원요청건수</th>
						<th scope="col">복원요청금액</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="ac"><%=INQ_STR_DT+" ~ " +INQ_END_DT%></td>
						<td class="ac">
						<%=VrtlAcctNo%>
						</td>
						<td class="ac"><%=FormatUtil.getMoneyForm(PayPlanDtlsRegNcnt)%></td>
						<td class="ar"><%=FormatUtil.getMoneyForm(PlanAmt) %></td>
					</tr>
					</tbody>
					</table>
                </div>
                <!-- //연구비이체취소요청 리스트 end// -->
               
				<!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->					      
			     <!-- 그리드 Start -->
			     <div>
			         <script>
			         rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "226", "#FFFFFF", "transparent");
			         </script>
			     </div>
			     <!-- 그리드 End -->
				<!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->                
                
                <!-- 취소사유 리스트 start -->
                <div class="t10 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="취소사유 리스트" class="tbl_type02">
                    <caption>취소사유 리스트</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row"><label for="ApcRsn">취소사유</label></th>
                        <td class="ll"><input type="text" name="ApcRsn" id="ApcRsn" title="취소사유입력" class="inputl" style="width:550px;" /></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //취소사유 리스트 end// -->                
                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-1" title="저장" onclick="uf_save(); return false;"><span class="bt_sp">저장</span></a>
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
	 * uf_save      연구비이체취소요청
	 * @param
	 * @return
	******************************************************************/
	function uf_save(){
	    
	    var frm = document.frm;
	    var i   = 0;
	
	    if(frm.VrtlAcctNo.value == ""){
	        alert("발급된 가상계좌가 없습니다.\n관리자에게 문의하시기 바랍니다.");
	        return false;
	    }
	    
	    // 단건이면서 1천만원 이상.
	    if(frm.PayPlanDtlsRegNcnt.value == "1") {
		    if(Number(frm.PlanAmt.value) >= 10000000 && frm.ApcRsn.value == "") {
		    	alert("1천만원 이상 이체취소 시 취소사유를 입력하시기 바랍니다.");
		    	return;
		    }
	    }
	    
	    if(!confirm("이체취소요청 하시겠습니까?")) {
	        return;
	    }

	    uf_proce_display_on();  //로딩바

	    setTimeout(
	            function(){
	                    try{   
	                    	reset_submit(); // 'wait'
	                    	alert("연구비이체취소 요청되었습니다.");
	                    }finally{
	                    	removeTempAttribute(document.frm);  //get2post 삭제
	                    	opener.fn_url("/t02/t21/T21_01_00.jsp?autosrch=Y&AUTO_MAP_KEY="+<%=mapKey%>);
	                    	window.close();
	                    }
	                
	                }, 1000);   // 1초후 실행 1000 = 1초s
	                
 		
	    
	}	
</script>

<script type="text/javascript">

/* ********** 2014 그리드 교체 작업 시작시 데이터 셋팅  ********** */
function uf_search(){	
    uf_proce_display_on();  //로딩바    
    setTimeout(function(){SetData1();}, 1000);   // 1초후 실행 1000 = 1초s
}
/* ********** 2014 그리드 교체 작업 시작시 데이터 셋팅  ********** */
 
$(document).ready( function () {	
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
	 <DataGridColumn id=\"EXCTN_EXEC_DT\"		dataField=\"EXCTN_EXEC_DT\"		headerText=\"집행일자\"			width=\"80\"	visible=\"true\"	textAlign=\"center\"	headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"TRSC_EVDC_DV\"		dataField=\"TRSC_EVDC_DV\"		headerText=\"증빙구분\"			width=\"100\"	visible=\"true\"	textAlign=\"center\"	headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"RCV_BNK_NM\"			dataField=\"RCV_BNK_NM\"		headerText=\"입금은행\"			width=\"110\"	visible=\"true\"	textAlign=\"center\"	headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"RCV_ACCT_NO\"			dataField=\"RCV_ACCT_NO\"		headerText=\"입금계좌번호\"		width=\"110\"	visible=\"true\"	textAlign=\"center\"	headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"EXCTN_AMT\"			dataField=\"EXCTN_AMT\"			headerText=\"이체금액\"			width=\"80\"	visible=\"true\"	textAlign=\"right\"		headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"USE_SPLY_AMT\"		dataField=\"USE_SPLY_AMT\"		headerText=\"공급금액\"			width=\"80\"	visible=\"true\"	textAlign=\"right\"		headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"USE_VAT_AMT\"			dataField=\"USE_VAT_AMT\"		headerText=\"부가가치세액\"		width=\"85\"	visible=\"true\"	textAlign=\"right\"		headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"RTRT_FIX_AMT\"		dataField=\"RTRT_FIX_AMT\"		headerText=\"복원금액\"			width=\"100\"	visible=\"true\"	textAlign=\"right\"		headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"	dataField=\"VAT_PROC_RTRT_AMT\"	headerText=\"복원부가가치세액\"	width=\"110\"	visible=\"true\"	textAlign=\"right\"		headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	</columns>\
	<footers>\
		<DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
	     	 <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_PROC_RTRT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
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
        //gridRoot.addEventListener("layoutComplete", gridInit);

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);
        
    //로딩 후 rMadeGrid 출력
    function rMateGridOnLoad() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    //데이터 셋팅    
    var cnt = 0;
    function setGridData(){        
        try{            
            var gridValue = [];       
            cnt = 0;  
            <%for(int i=0; i<ExctnExecDt.length;i++){%>	       
	            gridValue[cnt++] =
	            {
	           		"EXCTN_EXEC_DT":"<%=StringUtil.null2void(FormatUtil.setDelim(ExctnExecDt[i], "9999-99-99"))%>",
	           		"TRSC_EVDC_DV":"<%=StringUtil.null2void(CodeUtil.getCode("RND080",TrscEvdcDv[i]))%>",
	           		"RCV_BNK_NM":"<%=StringUtil.null2void(RcvBnkNm[i])%>",
	           		"RCV_ACCT_NO":"<%=StringUtil.null2void(AcctFormatUtil.getAcctForm(RcvAcctNo[i], RcvAcctBnkCd[i]))%>",
	           		"EXCTN_AMT":"<%=StringUtil.null2void(ExctnAmt[i])%>",
	           		"USE_SPLY_AMT":"<%=StringUtil.null2void(UseSplyAmt[i])%>",
	           		"USE_VAT_AMT":"<%=StringUtil.null2void(UseVatAmt[i])%>",
	           		"RTRT_FIX_AMT":"<%=StringUtil.null2void(RtrtFixAmt[i])%>",
	           		"VAT_PROC_RTRT_AMT":"<%=StringUtil.null2void(VatProcRtrtAmt[i])%>"     	           		
				};       
            <%}%>
             
        }finally{                        
            gridData = gridValue;    //조회결과 JSON 값 가져오기
            rMateGridOnLoad();  //rMateGrid 구현            
        }
    }

    function SetData1(){        
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
 