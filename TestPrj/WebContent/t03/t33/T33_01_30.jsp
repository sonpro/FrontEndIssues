<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T33_01_30.jsp
 *   Description        : 이월금사용등록
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.17                     예기해             
 *
 *  @author     예기해
 *  @Since      2014.01.17
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
    String SbjtNm       = SessionUtil.getRequestValue(request, "SbjtNm");
    String BzClasNm     = SessionUtil.getRequestValue(request, "BzClasNm");
    String AgrmtSeqNo   = SessionUtil.getRequestValue(request, "AgrmtSeqNo");
    String AgrmtInstId  = SessionUtil.getRequestValue(request, "AgrmtInstId");
    String SacPrgrSt    = StringUtil.null2void(SessionUtil.getRequestValue(request, "SacPrgrSt")); 
%>

<title>이월금사용등록 &gt; RCMS 실시간통합연구비관리시스템 b-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">이월금사용등록</p>
        </div>
        <!-- //head title// --> 
    </div>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"            headerText=\"선택\"                   width=\"45\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
	        <DataGridColumn id=\"HGRK_ITXP_NM\"       dataField=\"HGRK_ITXP_NM\"        headerText=\"비목\"               width=\"130\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"ITXP_NM\"            dataField=\"ITXP_NM\"             headerText=\"세부비목\"           width=\"160\" visible=\"true\" sortable=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"EXCTN_EXEC_AMT\"     dataField=\"EXCTN_EXEC_AMT\"      headerText=\"사용실행금액\"       width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	        <DataGridColumn id=\"BF_YR_CASH_CROV_AMT\" dataField=\"BF_YR_CASH_CROV_AMT\" headerText=\"전년도이월금액\"    width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	        <DataGridColumn id=\"CROV_USE_AMT\"       dataField=\"CROV_USE_AMT\"        headerText=\"이월금사용금액\"     width=\"120\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	        <DataGridColumn id=\"HGRK_ITXP_CD\"       dataField=\"HGRK_ITXP_CD\"        headerText=\"비목코드\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITXP_CD\"            dataField=\"ITXP_CD\"             headerText=\"세목코드\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CROV_USE_AMT2\"      dataField=\"CROV_USE_AMT2\"       headerText=\"이월금사용금액원금\" width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
        </columns>\
        <dataProvider>\
        <!--  그리드의 자료를 dataProvider가 아닌 별도의 컴포넌트에 입력해야 할 경우 아래와 같이 $gridData를 넣어줍니다  -->\
        <SpanSummaryCollection source=\"{$gridData}\" >\
            <!--  병합을 원하는 필드의 필드명을 차례대로 넣어줍니다   -->\
            <mergingFields>\
                <SpanMergingField name=\"HGRK_ITXP_NM\" colNum=\"1\" />\
            </mergingFields>\
        </SpanSummaryCollection>\
    </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{BF_YR_CASH_CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CROV_USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

    
var layoutStr2 = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" lockedColumnCount=\"4\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\" >\
            <columns>\
                <DataGridColumn id=\"\"                     dataField=\"\"                      itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
	            <DataGridColumn id=\"TRSC_DT\"            dataField=\"TRSC_DT\"             headerText=\"사용일자\"           width=\"75\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목\"             width=\"100\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"품목명\"             width=\"150\" visible=\"true\" editable=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"TRSC_EVDC_DV\"       dataField=\"TRSC_EVDC_DV\"        headerText=\"증빙구분\"           width=\"70\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"          headerText=\"거래처\"             width=\"120\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"PAYM_USAG\"          dataField=\"PAYM_USAG\"           headerText=\"용도\"               width=\"120\" visible=\"true\" editable=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"USE_AMT\"            dataField=\"USE_AMT\"             headerText=\"사용금액\"           width=\"120\" visible=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"공급금액\"           width=\"120\" visible=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"부가가치세액\"       width=\"120\" visible=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	            <DataGridColumn id=\"CROV_USE_AMT\"       dataField=\"CROV_USE_AMT\"        headerText=\"이월금사용금액\"     width=\"120\" visible=\"true\" editable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	            <DataGridColumn id=\"TRSC_PFMC_REG_DT\"   dataField=\"TRSC_PFMC_REG_DT\"    headerText=\"사용등록일자\"       width=\"80\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"TRSC_PFMC_REG_TM\"   dataField=\"TRSC_PFMC_REG_TM\"    headerText=\"사용등록시간\"       width=\"80\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BUTR_ID\"            dataField=\"BUTR_ID\"             headerText=\"거래실적ID\"         width=\"0\" visible=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BUIT_ID\"            dataField=\"BUIT_ID\"             headerText=\"비목ID\"             width=\"0\" visible=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"CROV_USE_AMT2\"       dataField=\"CROV_USE_AMT2\"        headerText=\"이월금사용금액원금\" width=\"0\" visible=\"false\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
	        <footers>\
	            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CROV_USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
        
        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
        	selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
	        
            if(selectorColumn.getSelectedIndex() < 0){ 
                return; 
            }
	        searchItxpInfo(event.getRowIndex());
            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid.addEventListener("itemClick", itemClickHandler); //클릭 이벤트
        };

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", layoutComplete);
        

    };
    

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    
    
    
	//rMateGrid 관련 객체
	var flashVars2 = "dataType=json&bridgeName=gridBridge2";
	var gridApp2; // 플래시 기본 객체
	var gridData2; // 그리드 데이터 담기
	var gridRoot2; // 데이타와 그리드를 포함하는 객체
	var dataGrid2; // 그리드 정보 담기
	var collection2; // 그리드의 데이타 객체
	var selectorColumn2; // 셀렉터 컬럼
	
	
	
	//그리드 레이아웃 호출 
	var rMateGridInitLayout2 = function() {
      gridApp2 = FABridge.gridBridge2.root();
      gridRoot2 = gridApp2.getGridRoot();
      gridApp2.setLayout(layoutStr2);   //그리드 레이아웃 생성

      

      var layoutCompleteHandler = function(event) {
          dataGrid2 = gridApp2.getDataGrid();
          
      };
      

      //layout 호출 완료 시 실행할 이벤트 등록
      gridRoot2.addEventListener("layoutComplete", layoutCompleteHandler);
      gridRoot2.addEventListener("layoutComplete", layoutComplete2);
      
      //색상변경
      gridRoot2.addEventListener("dataComplete", uf_cellOptions);   //색상변경
      
      gridRoot2.addEventListener("itemDataChanged", dataGrid_init);

  };

  //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
  FABridge.addInitializationCallback("gridBridge2", rMateGridInitLayout2);
  rMateGridLayoutInit_rMate(gridRoot, null, layoutStr);


  //로딩 후 rMadeGrid 출력
  function rMateGridSetData2() {
      gridApp2 = FABridge.gridBridge2.root();
      gridApp2.setData(JSON.stringify(gridData2)); //데이터 출력
  };

    
        
  //rMateGrid 로딩이 완료 된 후 조회를 시작
  var isGrid = false;
  var isGrid2 = false;
  var isLoading = false;

  // 처음 조회시에만 자동조회가 이루어 지게 한다.
  function layoutComplete(){
      isGrid = true;
      if(isLoading) return;  //처음조회시 isLoading을 true로 변경하여 자동조회가 되게 하고, 두번째부터는 자동조회가 되지 않게한다.
      gridLayoutComplit();
  }
  function layoutComplete2(){
      isGrid2 = true;
      if(isLoading) return;  //처음조회시 isLoading을 true로 변경하여 자동조회가 되게 하고, 두번째부터는 자동조회가 되지 않게한다.
      gridLayoutComplit();
  }

  function gridLayoutComplit(){
      
      if( !(isGrid && isGrid2)) return;
      if(!isLoading) isLoading = true; // 그리드 초기화시 중복처리 되지 않기위해서 처리
          
      uf_search('S');
  }
  
  
  
  function uf_cellOptions(){
      collection2 = gridRoot2.getCollection();
      
      for (var i = 0; i < collection2.getLength(); i++) {
          if("<%=SacPrgrSt%>" == "" || "<%=SacPrgrSt%>" == "0"){
        	  collection2.addCellAttributeDetailAt(i, 10, 1, 1, null, 0xEDF2FE);
              
          }else{
        	  var columns = dataGrid2.getColumns();
              columns[10].setEditable(false);
          }
          
      }
  }
  
  
  
  function dataGrid_init(event){
      var rowIndex = event.getRowIndex();                 // 변경된 행번호
      var columnIndex = event.getColumnIndex();       // 변경된 열번호
      var dataField = event.getDataField();               // 변경된 열의 데이타 필드
      var dataRow = gridRoot2.getItemAt(rowIndex); // 변경된 데이타 레코드
      
      var footer = gridRoot2.getObjectById("footer");
      footer.invalidateData();
      
      //validAmt(ArecordIndex);
      validAmt(dataRow, rowIndex, columnIndex);
      
      
  }
  

    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



        <div id="body">
            <form name="frm" method="post">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <div class="pop_wh b20">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="과제정보" class="tbl_type02">
        <caption>과제정보</caption>
        <colgroup>
        <col width="20%" />
        <col width="80%" />
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">사업명</th>
            <td class="ll"><%=BzClasNm %></td>
          </tr>
          <tr>
            <th scope="row">과제명</th>
            <td class="ll"><%=SbjtNm %></td>
          </tr>
          </tbody>          
      </table>
    </div>
                
                
                <h3>비목정보</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
            <!-- 그리드 Start -->
            <div id="gridDiv">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "205", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->                  
                <br class="cb"/> 
                <h3>증빙내역 및 이월금사용등록</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
            <!-- 그리드 Start -->
            <div id="gridDiv2">
                <script>
                 rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars2, "100%", "325", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->                  
                <div class="guide_bu">
                    <img src="/images/common/bu_color.gif" /> 부분은 입력이 가능한 항목입니다.
                </div>
                <!-- action bt start -->
                <div class="pop_action_bt ar"> 
                <% if( SacPrgrSt.equals("0") || SacPrgrSt.equals("") ){%>
                    <a href="#" onclick="uf_saveCrovAmt(); return false;" class="bt_action2-01" title="저장"><span class="bt_sp">저장</span></a>
                <% } %>
                </div>
                <!-- //action bt end// -->
                                

                        <div class="guide_bu">
                          <ul>
                            <li>보고서제출이후에는 이월금사용등록 및 변경을 할 수 없습니다.</li>
                          </ul>
                        </div>

            </div>
            <!-- //content end// -->
            </form>
            

      
        </div>









<%@ include file="/inc/jspFooter_popup.jsp" %> 



<script type="text/javascript">

/*****************************************************************
 * uf_save     전년도이월금액조회
 * @param
 * @return
******************************************************************/
function uf_search(SchGb) {
	
	if( !(isGrid && isGrid2)) return;
	if(!isLoading) isLoading = true; // 그리드 초기화시 중복처리 되지 않기위해서 처리

    
    var frm = document.frm;

    if( isSubmit() ) return;            // 이중처리

    
    get2post(frm,"AgrmtSeqNo="+"<%=AgrmtSeqNo%>");
    get2post(frm,"AgrmtInstId="+"<%=AgrmtInstId%>");
    
    
    rMateGridLayoutInit_rMate();
    
    SetData("<%=AgrmtSeqNo%>");
    
}

/*****************************************************************
 * uf_save     비목별 이월금 사용금액 조회
 * @param
 * @return
******************************************************************/
function searchItxpInfo(idx) {
    var frm = document.frm;
    
    if( typeof idx == 'undefined' || idx == null ){
        var ridx = -1;
        setMoveFirstRecord(obj);
        while((ridx = getNextSelectedRecord(obj, "선택")) > -1){
            idx = ridx;
            break;
        }
    }
    
    var dataRow = gridRoot.getItemAt(idx);
    
    get2post(frm,"AgrmtSeqNo="+"<%=AgrmtSeqNo%>");
    get2post(frm,"AgrmtInstId="+"<%=AgrmtInstId%>");
    //get2post(frm,"itxpCd="+getCell(obj,idx,"세목코드"));
    get2post(frm,"itxpCd="+dataRow.ITXP_CD);
    

    //그리드 초기화
    rMateGridLayoutInit_rMate(gridRoot2, gridApp2, layoutStr2);
    
    SetData2("<%=AgrmtSeqNo%>","<%=AgrmtInstId%>",dataRow.ITXP_CD); //Insert Grid
           
            

    
}
 
/*****************************************************************
 * uf_save      이월금등록
 * @param
 * @return
******************************************************************/
function uf_saveCrovAmt(){
    var frm         = document.frm;
    var grid        = gridRoot2;
   
    var insertData = "";
    var itm_num = 0;
    
    for(var i=0; i<getGridRowCount_rMate(grid);i++){
 
    	var dataRow = grid.getItemAt(i);
    	
        if( dataRow.CROV_USE_AMT != dataRow.CROV_USE_AMT2 ){
                insertData += "&BuitId="       +dataRow.BUIT_ID;
                insertData += "&CrovUseAmt="   +dataRow.CROV_USE_AMT;
                itm_num++;
        }
    }

    if(itm_num==0){
        alert("입력하신 정보가 없습니다.");
        return;
    }
    
    get2post(frm, insertData);

    
    
    
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
			    reset_submit();
			    alert("이월금사용등록이 완료되었습니다.");
			    searchItxpInfo();
            }
            , 1000);   // 1초후 실행 1000 = 1초
            
    removeTempAttribute(frm);
}


//function validAmt(idx){
function validAmt(dataRow2, rowIndex2, columnIndex2){	
    var obj = gridRoot;
    var obj2 = gridRoot2;
    var dataRow;
    
    var ridx = -1;
    var selectedIndex = -1;
    var selectedIndex2 = -1;
    
    selectorColumn = gridRoot.getObjectById("selector");

    if(selectorColumn.getSelectedIndices().length < 1) return;
    
    selectedIndex = selectorColumn.getSelectedIndex();
    
    dataRow = gridRoot.getItemAt(selectedIndex);
    
    var bfYrCashCrovAmt = parseInt(dataRow.BF_YR_CASH_CROV_AMT,10);
    
    var footer = gridRoot.getObjectById("footer");
    var footer2 = gridRoot2.getObjectById("footer");
    if(  bfYrCashCrovAmt <= 0 ){
        if( parseInt(dataRow2.CROV_USE_AMT,10) == 0 ) return;
        
        alert('['+dataRow.ITXP_NM + '] 전년도이월금액 없으므로 이월사용등록금액을 등록하실 수 없습니다.');

        //obj2.SetValue(idx, obj2.GetItemIndexFromCaption("이월금사용금액"), '0');
        
        gridRoot2.setItemFieldAt("0", rowIndex2, "CROV_USE_AMT");     // 값, row, id   이월금사용금액
        footer2.invalidateData();
        
        return;
    }else{
        
        var totCrovAmt = 0;
        for(var i=0, j=getGridRowCount_rMate(gridRoot2); i<j; i++){
        
            totCrovAmt += gridRoot2.getItemAt(i).CROV_USE_AMT;

        }
        
        //사용금액 체크
        var useAmt = parseInt(dataRow2.USE_AMT,10);
        var useCrovAmt = parseInt(dataRow2.CROV_USE_AMT,10);
        if( useCrovAmt > useAmt ){
            alert('이월금사용금액이 사용금액을 초과하였습니다.\n이월금사용등록가능 금액은 ' + toMoney(useAmt) + '원 입니다.');
            
            
            gridRoot2.setItemFieldAt(useAmt+'', rowIndex2, "CROV_USE_AMT");     // 값, row, id   이월금사용금액
            footer2.invalidateData();
            
            return;
        }
        
        //전년도 이월금액 체크
        if( totCrovAmt > bfYrCashCrovAmt ){
            possAmt = bfYrCashCrovAmt - (totCrovAmt-useCrovAmt);
            alert('전년도 이월금액을 초과 하였습니다.\n현재 등록 가능 금액은 ' + toMoney(possAmt) + '원 입니다.');
            gridRoot2.setItemFieldAt(possAmt+'', rowIndex2, "CROV_USE_AMT");     // 값, row, id   이월금사용금액
            footer2.invalidateData();
        }else{
            gridRoot.setItemFieldAt(totCrovAmt+'', selectedIndex, "CROV_USE_AMT");     // 값, row, id   이월금사용금액
            footer.invalidateData();
        }
        
        
    }

}

$(document).ready(function(){

// rMateGrid 초기화
rMateGridInit();
});    

</script>



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

        	gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","EXCTN_EXEC_AMT":"19500","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","EXCTN_EXEC_AMT":"37200","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","EXCTN_EXEC_AMT":"30000","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","EXCTN_EXEC_AMT":"8900","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","EXCTN_EXEC_AMT":"2000","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","EXCTN_EXEC_AMT":"1000","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};

        	
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){

        	gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구활동비","EXCTN_EXEC_AMT":"18637","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구시설·장비 및 재료비","EXCTN_EXEC_AMT":"33819","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"인건비","EXCTN_EXEC_AMT":"30000","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구과제추진비","EXCTN_EXEC_AMT":"8900","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"직접비","ITXP_NM":"연구수당","EXCTN_EXEC_AMT":"2000","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"간접비","ITXP_NM":"간접비","EXCTN_EXEC_AMT":"910","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};

        	
        }
                

    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}

function SetData(seqNo){
    
    if(!seqNo || typeof seqNo == "udnefined" || seqNo == "") return;
    
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
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}






var cnt2 = 0;
function setGridData2(seqNo, instId, itxpCd){    
    try{
        cnt2 = 0;
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
        gridData2 = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData2();  //rMateGrid 구현
        
    }
}


function SetData2(seqNo, instId, itxpCd){
    
    if(!seqNo || typeof seqNo == "udnefined" || seqNo == "") return;
    
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                try{
                    document.body.setCapture(); // 'wait'
                    document.body.style.cursor =    "wait";
                    //SetData(); //Insert   Grid
                    setGridData2(seqNo, instId, itxpCd); //Insert    Grid
                    document.body.style.cursor =    "auto";
                    document.body.releaseCapture(); //setCapture()_Next
                }finally{
                    reset_submit();
                    searchAlert();
                }
            }
            , 1000);   // 1초후 실행 1000 = 1초

}
</script>

</body></html>