<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T23_01_20.jsp
 *   Description        : 부가세복원 신청 팝업 (카드)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014. 01. 16                   예기해             
 *
 *  @author 예기해
 *  @Since  2014. 01. 16
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!-- //2014 그리드 교체 작업 head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //2014 그리드 교체 작업 head end -->

<%
String INQ_STR_DT           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqStrDt"));                 // 조회시작날짜
String INQ_END_DT           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqEndDt"));                 // 조회종료날짜
String PayPlanDtlsRegNcnt   =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PayPlanDtlsRegNcnt"));       // 카드환급보전요청건수
String PlanAmt              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PlanAmt"));                  // 카드환급보전요청금액
String CanAmt               =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CanAmt"));                   // 부분취소금액
String VrtlAcctNo           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "VrtlAcctNo"));               // 가상계좌번호
String EXIST_VACC           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "EXIST_VACC"));               // 가상계좌발급유무
String RfndPsvApcDv         =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CanDvCd"));                  // 환급보전신청구분
String cancelDate           =   jex.util.DateTime.getInstance().getDate("yyyymmdd");
String mapKey               =   StringUtil.null2void(SessionUtil.getRequestValue(request, "AUTO_MAP_KEY"));
        
String CrdNo                [] = null;
String BuyClctNo            [] = null;
String BuyDt                [] = null;
String SetlScheDt           [] = null;
String RcmsSetlDt           [] = null;
String TrscPfmcRegDt        [] = null;
String ItxpRegNcnt          [] = null;
String SplrCoNm             [] = null;
String ClmTotlAmt           [] = null;
String TotlAmt              [] = null;
String RfndAmt              [] = null;
String StoffAmt             [] = null;
String UseSplyAmt           [] = null;
String UseVatAmt            [] = null;
String ButrId               [] = null;
String CrdcoCd              [] = null;
String CrdcoNm              [] = null;
String SplrBzRegNo          [] = null;
String CanSplyAmt           [] = null;
String CanVatAmt            [] = null;

String insertStr    =   "";
String totalAmt     =   "";

// 카드사용내역 전체취소
CrdNo                =      request.getParameterValues("CrdNo");                // 카드번호              
CrdcoCd              =      request.getParameterValues("CrdcoCd");              // 카드사코드          
CrdcoNm              =      request.getParameterValues("CrdcoNm");              // 카드사명          
ButrId               =      request.getParameterValues("ButrId");               // 사업비사용거래실적ID         
BuyClctNo            =      request.getParameterValues("BuyClctNo");            // 매입추심번호          
BuyDt                =      request.getParameterValues("BuyDt");                // 매입일자          
TrscPfmcRegDt        =      request.getParameterValues("TrscPfmcRegDt");        // 등록일자          
ItxpRegNcnt          =      request.getParameterValues("ItxpRegNcnt");          // 비목등록건수              
SplrBzRegNo          =      request.getParameterValues("SplrBzRegNo");          // 기관사업자등록번호            
SplrCoNm             =      request.getParameterValues("SplrCoNm");             // 공급자회사명                
UseSplyAmt           =      request.getParameterValues("UseSplyAmt");           // 공급금액              
UseVatAmt            =      request.getParameterValues("UseVatAmt");            // 부가가치세액              
CanSplyAmt           =      request.getParameterValues("CanSplyAmt");           // 취소공급금액              
CanVatAmt            =      request.getParameterValues("CanVatAmt");            // 취소부가가치세액              

/************************************************/
/*      증빙일련번호 폼에 담기        START           */
/************************************************/
 if(CrdNo != null){
    for(int i=0; i<CrdNo.length;i++){
        insertStr   +=      "&CrdNo="               +       CrdNo               [i];    // 카드번호               
        insertStr   +=      "&CrdcoCd="             +       CrdcoCd             [i];    // 카드사코드           
        insertStr   +=      "&CrdcoNm="             +       CrdcoNm             [i];    // 카드사명           
        insertStr   +=      "&ButrId="              +       ButrId              [i];    // 사업비사용거래실적ID               
        insertStr   +=      "&BuyClctNo="           +       BuyClctNo           [i];    // 매입추심번호           
        insertStr   +=      "&BuyDt="               +       BuyDt               [i];    // 매입승인일자           
        insertStr   +=      "&TrscPfmcRegDt="       +       TrscPfmcRegDt       [i];    // 증빙등록일자           
        insertStr   +=      "&ItxpRegNcnt="         +       ItxpRegNcnt         [i];    // 비목등록건수           
        insertStr   +=      "&SplrBzRegNo="         +       SplrBzRegNo         [i];    // 기관사업자등록번호               
        insertStr   +=      "&SplrCoNm="            +       SplrCoNm            [i];    // 공급자회사명                 
        insertStr   +=      "&UseSplyAmt="          +       UseSplyAmt          [i];    // 사용공급금액               
        insertStr   +=      "&UseVatAmt="           +       UseVatAmt           [i];    // 사용부가가치세액               
        insertStr   +=      "&CanSplyAmt="          +       CanSplyAmt          [i];    // 취소공급금액               
        insertStr   +=      "&CanVatAmt="           +       CanVatAmt           [i];    // 취소부가가치세액               
    }
    totalAmt = (Integer.parseInt(CanSplyAmt[0]) + Integer.parseInt(CanVatAmt[0])) + "";
}



 String AgrmtSeqNo           =   SessionUtil.getRequestValue(request, "AgrmtSeqNo");                            // 협약일련번호
%>


<!-- ================== 2014 그리드 교체 작업======================== -->
<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var agrmtSeqNo = "<%=AgrmtSeqNo%>";
/* ********************** 2014 그리드 교체 작업 rMateGrid setting START *********************** */

 //카드결제 복원요청 대상
 var layoutStr1 = "\
 <?xml version=\"1.0\" encoding=\"utf-8\"?>\
 <rMateGrid>\
 <NumberFormatter id=\"numfmt\" />\
 <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
 <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
 <DataGrid id=\"grid1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
     <columns>\
         <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
         <DataGridColumn id=\"CRD_NO\"              dataField=\"CRD_NO\"        headerText=\"카드번호\"         width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"CANCEL_DATE\"         dataField=\"CANCEL_DATE\"   headerText=\"취소년월일\"       width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"BUY_CLCT_NO\"         dataField=\"BUY_CLCT_NO\"   headerText=\"매입승인번호\"     width=\"140\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"CAN_SPLY_AMT\"        dataField=\"CAN_SPLY_AMT\"  headerText=\"취소공급금액\"     width=\"120\"  visible=\"true\" textAlign=\"right\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"CAN_VAT_AMT\"         dataField=\"CAN_VAT_AMT\"   headerText=\"취소부가세금액\"   width=\"120\"  visible=\"true\" textAlign=\"right\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"  headerText=\"사용공급금액\"     width=\"120\"  visible=\"true\" textAlign=\"right\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"   headerText=\"사용부가금액\"     width=\"120\"  visible=\"true\" textAlign=\"right\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"BUTR_ID\"             dataField=\"BUTR_ID\"       headerText=\"사업비사용거래실적ID\"     width=\"140\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
 
 var layoutStr2 = "\
     <?xml version=\"1.0\" encoding=\"utf-8\"?>\
     <rMateGrid>\
     <NumberFormatter id=\"numfmt\" />\
     <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
     <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
     <DataGrid id=\"grid2\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
     <columns>\
         <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
         <DataGridColumn id=\"DTLS_ITXP_NM\"            dataField=\"DTLS_ITXP_NM\"     headerText=\"세목명\"           width=\"120\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"        dataField=\"SUB_DTLS_ITXP_CD\" headerText=\"세세목코드\"       width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"        dataField=\"SUB_DTLS_ITXP_NM\" headerText=\"세세목명\"         width=\"120\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"CASH_SPOT_DV\"            dataField=\"CASH_SPOT_DV\"     headerText=\"현금현물구분\"     width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"TRSC_EVDC_DV\"            dataField=\"TRSC_EVDC_DV\"     headerText=\"증빙구분\"         width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\"  />\
         <DataGridColumn id=\"BUTR_ID\"                 dataField=\"BUTR_ID\"          headerText=\"증빙일련번호\"     width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"VAT_PSV_APC_YN\"          dataField=\"VAT_PSV_APC_YN\"   headerText=\"부가세복원여부\"   width=\"140\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"TRNS_AMT\"                dataField=\"TRNS_AMT\"         headerText=\"이체금액\"        width=\"90\"   visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_SPLY_AMT\"            dataField=\"USE_SPLY_AMT\"     headerText=\"공급금액\"        width=\"90\"   visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_VAT_AMT\"             dataField=\"USE_VAT_AMT\"      headerText=\"부가가치세액\"    width=\"90\"   visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"DATA1\"                   dataField=\"DATA1\"            headerText=\"수수료\"          width=\"90\"   visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"DATA2\"                   dataField=\"DATA2\"            headerText=\"봉사금액\"        width=\"90\"   visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     </columns>\
     <footers>\
     <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"     formatter=\"{numfmt}\" textAlign=\"right\" />\
         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
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
 
    //rMateGrid의 bridge 명을 다르게 주어 자바스크립트에서 제어할 수 있도록 합니다.
    var flashVars1 = "dataType=json&bridgeName=gridBridge1";
    var flashVars2 = "dataType=json&bridgeName=gridBridge2";
    //rMateGrid 관련 객체
    var gridApp1; // 플래시 기본 객체
    var gridApp2; // 플래시 기본 객체
    var gridData1; // 그리드 데이터 담기
    var gridData2; // 그리드 데이터 담기
    var gridRoot1; // 데이타와 그리드를 포함하는 객체
    var gridRoot2; // 데이타와 그리드를 포함하는 객체
    var dataGrid1; // 그리드 정보 담기
    var dataGrid2; // 그리드 정보 담기

    //그리드 레이아웃 호출 
    var rMateGridInitLayout = function() {
        gridApp1 = FABridge.gridBridge1.root();
        gridRoot1 = gridApp1.getGridRoot();
        gridApp1.setLayout(layoutStr1);   //그리드 레이아웃 생성
        
        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot1.getItemAt(rowIndex);

            var columns = dataGrid1.getColumns();
            var ii = 0;
            var jj = 0;
            for ( var i = 0; i < columns.length; i++){
                if (columns[i].getVisible()) {              
                    jj++;
                    if (jj == columnIndex){
                        break;
                    }
                } else{
                    ii++;
                }
            }
            columnIndex = columnIndex + ii;
            var column = columns[columnIndex];
            var dataField = column.getDataField();   
            
            //데이터2 셋팅
            uf_BuyByItxpPtcl();
                                     
        };        

        //더블클릭 상세보기 이벤트 추가
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot1.getItemAt(rowIndex);
            var column = dataGrid1.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid1,dataRow);            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid1 = gridApp1.getDataGrid();
            
            //이벤트 등록
            dataGrid1.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid1.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트
        };
      
        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot1.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot1.addEventListener("layoutComplete", uf_search);
    };
    
    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge1", rMateGridInitLayout);
    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData1() {
        gridApp1 = FABridge.gridBridge1.root();
        gridApp1.setData(JSON.stringify(gridData1)); //데이터 출력
    };
    

    //=====================
    //그리드 레이아웃 호출 
    var rMateGridInitLayout2 = function() {
      gridApp2 = FABridge.gridBridge2.root();
      gridRoot2 = gridApp2.getGridRoot();
      gridApp2.setLayout(layoutStr2); //그리드 레이아웃 생성
      
      //그리드 이벤트 등록
      var layoutCompleteHandler = function(event) {
          dataGrid2 = gridApp2.getDataGrid();
      };
    
      //layout 출력 후 실행될 이벤트 등록
      gridRoot2.addEventListener("layoutComplete", layoutCompleteHandler);

    };
    
    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge2", rMateGridInitLayout2);
    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData2() {
      gridApp2 = FABridge.gridBridge2.root();  
      gridApp2.setData(JSON.stringify(gridData2)); //데이터 출력
    };
    
    
    //========================
    function SetData(){        
        try{            
            document.body.style.cursor =    "wait";            
            setGridData(); //Insert    Grid
            document.body.style.cursor =    "auto";            
        }finally{
            reset_submit();
        }        
    }  
    
    function SetData2(seqNo){
        if(!seqNo) return false;
        
        try{            
            document.body.style.cursor =    "wait";            
            setGridData2(seqNo); //Insert    Grid
            document.body.style.cursor =    "auto";            
        }finally{
            reset_submit();
        }        
    }      
    /* ********************** 2014 그리드 교체 작업 rMateGrid setting START *********************** */



</script>     
<!-- ================== 2014 그리드 교체 작업======================== -->
<!-- **********************  rMateGrid setting START ***********************  -->
    <!-- head title -->
    <div class="title">
        <p class="pop_title">카드결제 복원요청(등록취소[RCMS])</p>
    </div>
    <!-- //head title// -->
     <div id="body">
        <div id="content">
        <form name="frm1" method="post">
        <input type="hidden" name="PrsPgno" value="0" /> <!--현재페이지번호-->
        <input type="hidden" name="TrSupYn" value="Y" /> <!--거래계속여부-->
        </form>
              <div class="t20"></div>
              <div id="can" style="display:inline;">
     
         <form name="frm" method="post">
            <input type="hidden" name="PayPlanDtlsRegNcnt" value='<%=PayPlanDtlsRegNcnt %>'>       <!-- 납부계획상세등록건수(부가세복원요청항목수) -->
            <input type="hidden" name="PlanAmt"            value='<%=PlanAmt %>'>                  <!-- 계획금액(부가세복원금액합계) -->
            <input type="hidden" name="VrtlAcctNo"         value='<%=VrtlAcctNo %>'>               <!-- 가상계좌번호 -->
        <!-- content start -->
            <div class="t20"></div>
            <!-- 과제별현황 상세조회 리스트 start -->
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
            <!-- //사용내역 상세조회 리스트 end// -->

            <!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->
             <div class="t10"></div>
             <!-- 그리드 Start -->
             <h3>카드결제 복원요청 대상</h3>
             <div class="t10">
                 <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars1, "100%", "150", "#FFFFFF", "transparent");
                 </script>
             </div>
             <!-- 그리드 End -->
            <!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->

               
            <!-- ************************* 2014 그리드 교체 작업 rMateGrid ************************* -->
            <!-- 그리드 Start -->
            <div class="t10"></div>
            <h3>사용내역 상세조회</h3>
            <div class="t10">
                <script>
                    rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars2, "100%", "130", "#FFFFFF", "transparent");
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
                      <a href="#" class="bt_action2-1" title="신청" onclick="uf_CrdRfndPsv(); return false;"><span class="bt_sp">신청</span></a>
               </div>
               <!-- //action bt end// --> 

     </form>
     </div>
     </div>     
     <!-- //content end// -->
</div>
                

<!-- //2014 그리드 교체 작업 footer start -->
<%@ include file="/inc/jspFooter_popup.jsp" %>
<!-- //2014 그리드 교체 작업 footer end -->


<script type="text/javascript">
    /******************************************************************
     * uf_SearchDv      카드사용내역-매입별비목내역
     * @param
     * @return
    ******************************************************************/
    function uf_BuyByItxpPtcl(){
    
        //데이터초기화
        gridData2 = null;
        //그리드 초기화
        rMateGridLayoutInit_rMate(gridRoot2, gridApp2, layoutStr2);
        
        //데이터2셋팅
        uf_proce_display_on();  //로딩바
        
        setTimeout(function(){SetData2(agrmtSeqNo);}, 1000);   // 1초후 실행 1000 = 1초s    
    }

    
    /******************************************************************
     * uf_reqSave       부가세복원요청
     * @param
     * @return
    ******************************************************************/ 
    function uf_CrdRfndPsv(){
        
        var frm = document.frm;
    
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
        
        if(!confirm("복원요청 처리하시겠습니까?")) {
            return;
        }
        
        get2post(frm,"<%=insertStr%>");
        get2post(frm,"AUTO_MAP_KEY=<%=mapKey%>");
        
        uf_proce_display_on();  //로딩바

        setTimeout(
                function(){
                        try{   
                            reset_submit(); // 'wait'
                            alert("카드결제복원 요청되었습니다.");
                        }finally{
                            removeTempAttribute(document.frm);  //get2post 삭제
                            opener.fn_url("/t02/t21/T21_01_00.jsp?autosrch=Y&AUTO_MAP_KEY="+<%=mapKey%>);
                            window.close();
                        }
                    
                    }, 1000);   // 1초후 실행 1000 = 1초s
                    
    }

</script>


<script type="text/javascript">
    function uf_search(){        
        uf_proce_display_on();  //로딩바
        setTimeout(function(){SetData();}, 1000);   // 1초후 실행 1000 = 1초s
    }
</script>

    
<script type="text/javascript">
    //데이터 셋팅    
    var cnt1 = 0;
    function setGridData(){    
        try{            
            var gridValue1 = [];    
            cnt1 = 0;     
            
            <%for(int i=0; i<CanVatAmt.length;i++){%>
                gridValue1[cnt1++] = 
                    {               
                        "CAN_VAT_AMT":"<%=FormatUtil.getMoneyForm(StringUtil.null2void(CanVatAmt[i]))%>",
                        "CRD_NO":"<%=StringUtil.null2void(CrdNo[i])%>",
                        "USE_VAT_AMT":"<%=StringUtil.null2void(FormatUtil.getMoneyForm(UseVatAmt[i]))%>",
                        "BUY_CLCT_NO":"<%=StringUtil.null2void(BuyClctNo[i])%>",
                        "BUTR_ID":"<%=StringUtil.null2void(ButrId[i])%>",
                        "CAN_SPLY_AMT":"<%=FormatUtil.getMoneyForm(StringUtil.null2void(CanSplyAmt[i]))%>",
                        "CANCEL_DATE":"<%=FormatUtil.setDelim(cancelDate,"9999-99-99")%>",
                        "USE_SPLY_AMT":"<%=FormatUtil.getMoneyForm(StringUtil.null2void(UseSplyAmt[i]))%>"
                    };              
            <%}%>
        }finally{                    
            gridData1 = gridValue1;        
            rMateGridSetData1();
        }
    }
    
    //데이터 셋팅2    
    var cnt2 = 0;
    function setGridData2(seqNo){    
        try{            
            var gridValue2 = [];    
            cnt2 = 0;
            
//          gridValue2[cnt2++] = {"SUB_DTLS_ITXP_NM":"비품구입비","SUB_DTLS_ITXP_CD":"B0202013","VAT_PSV_APC_YN":"미신청","USE_VAT_AMT":"3159","CASH_SPOT_DV":"0","BUTR_ID":"C201111212383103","TRNS_AMT":"34750","TRSC_EVDC_DV":"C","RTRT_FIX_VAT_AMT":"0","RTRT_FIX_SPLY_AMT":"0","USE_SPLY_AMT":"31591","DTLS_ITXP_NM":"연구활동비"};

            //1. 신규과제
            if("G00000000000001" == seqNo){

                
            //2. 진행과제
            }else if("G00000000000002" == seqNo){

                gridValue2[cnt2++] = {"DTLS_ITXP_NM":"연구활동비","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"세미나개최비","CASH_SPOT_DV":"0","TRSC_EVDC_DV":"C","BUTR_ID":"C201111212383103","VAT_PSV_APC_YN":"미신청","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","DATA1":"0","DATA2":"0"};
                
            //3. 정산과제(보고서 미제출)
            }else if("G00000000000003" == seqNo){
                
                gridValue2[cnt2++] = {"DTLS_ITXP_NM":"연구활동비","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"교육훈련비","CASH_SPOT_DV":"0","TRSC_EVDC_DV":"C","BUTR_ID":"C201111212383103","VAT_PSV_APC_YN":"미신청","TRNS_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","DATA1":"0","DATA2":"0"};

            //4. 정산과제(보고서 제출 완료)
            }else if("G00000000000004" == seqNo){

                
            }
            
        }finally{                    
            gridData2 = gridValue2;        
            rMateGridSetData2();
        }
    }
    
    $(document).ready(function() {
        /* ********** 2014 그리드 교체 작업 rMateGrid 초기화  ********** */
        rMateGridInit();    
        /* ********** 2014 그리드 교체 작업 rMateGrid 초기화  ********** */
    });

</script>
</body>
</html> 