<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T33_01_20.jsp
 *   Description        : 위탁과제 정산등록
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
    String agrmtSeqNo   = SessionUtil.getRequestValue(request, "agrmtSeqNo");
    String agrmtInstId  = SessionUtil.getRequestValue(request, "agrmtInstId");
    
    
    String sbjtData_instSbjtPrgrSt = "";
    
    //1. 신규과제
    if("G00000000000001".equals(agrmtSeqNo)){
        
    //2. 진행과제
    }else if("G00000000000002".equals(agrmtSeqNo)){
        
    //3. 정산과제(보고서 미제출)
    }else if("G00000000000003".equals(agrmtSeqNo)){
        sbjtData_instSbjtPrgrSt = "10";
        
    //4. 정산과제(보고서 제출 완료)
    }else if("G00000000000004".equals(agrmtSeqNo)){
        sbjtData_instSbjtPrgrSt = "07";
        
    }


%>

<title>위탁과제 정산등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">위탁과제 정산등록</p>
        </div>
        <!-- //head title// --> 
    </div>



        <div id="body">
            <form name="frm" method="post">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>위탁과제 정산등록</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "255", "#FFFFFF");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->                  
                <div class="guide_bu">
                    <img src="/images/common/bu_color.gif" /> 부분은 입력이 가능한 항목입니다.
                </div>
                <!-- action bt start -->
                <div class="pop_action_bt ar"> 
                    <a href="#" onclick="uf_saveCnsgrCal_rMate(); return false;" class="bt_action2-01" title="저장"><span class="bt_sp">저장</span></a>
                </div>
                <!-- //action bt end// -->
            </div>
            <!-- //content end// -->
            </form>
        </div>
        




<%@ include file="/inc/jspFooter_popup.jsp" %> 





<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DateFormatter id=\"datefmt2\" formatString=\"YYYY-MM-DD\"/>\
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
        <columns>\
            <DataGridColumn id=\"AGRMT_INST_NM\"          dataField=\"AGRMT_INST_NM\"           headerText=\"수행기관\"       width=\"100\" visible=\"true\" sortable=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CNSGR_SBJT_INST_NM\"     dataField=\"CNSGR_SBJT_INST_NM\"      headerText=\"위탁기관\"       width=\"100\" visible=\"true\" sortable=\"true\" editable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CNSGR_SBJT_NM\"          dataField=\"CNSGR_SBJT_NM\"           headerText=\"위탁과제\"       width=\"100\" visible=\"true\" sortable=\"false\" editable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CNSGR_SBJT_STR_DT\"      dataField=\"CNSGR_SBJT_STR_DT\"       headerText=\"위탁시작일자\"   width=\"120\" visible=\"true\" sortable=\"false\" editable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{datefmt2}\" itemEditor=\"DateEditor\" />\
            <DataGridColumn id=\"CNSGR_SBJT_END_DT\"      dataField=\"CNSGR_SBJT_END_DT\"       headerText=\"위탁종료일자\"   width=\"120\" visible=\"true\" sortable=\"true\" editable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{datefmt2}\" itemEditor=\"DateEditor\" />\
            <DataGridColumn id=\"CNSGR_SBJT_CONT_AMT\"    dataField=\"CNSGR_SBJT_CONT_AMT\"     headerText=\"계약금액\"       width=\"100\" visible=\"true\" sortable=\"true\" editable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"CNSGR_SBJT_USE_AMT\"     dataField=\"CNSGR_SBJT_USE_AMT\"      headerText=\"사용금액\"       width=\"110\" visible=\"true\" sortable=\"true\" editable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"CNSGR_SBJT_REJCT_AMT\"   dataField=\"CNSGR_SBJT_REJCT_AMT\"    headerText=\"불인정금액\"     width=\"110\" visible=\"true\" sortable=\"true\" editable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"BAL_AMT\"                dataField=\"BAL_AMT\"                 headerText=\"잔액\"           width=\"110\" visible=\"true\" sortable=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO\"           dataField=\"AGRMT_SEQ_NO\"            headerText=\"협약일련번호\"   width=\"100\" visible=\"false\" sortable=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PMS_ID\"                 dataField=\"PMS_ID\"                  headerText=\"PMSID\"          width=\"110\" visible=\"false\" sortable=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SAC_SN\"                 dataField=\"SAC_SN\"                  headerText=\"정산순번\"       width=\"110\" visible=\"false\" sortable=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_ID\"                dataField=\"SBJT_ID\"                 headerText=\"과제번호\"       width=\"100\" visible=\"false\" sortable=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_ID\"          dataField=\"AGRMT_INST_ID\"           headerText=\"수행기관ID\"     width=\"100\" visible=\"false\" sortable=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CNSGR_SBJT_CONT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CNSGR_SBJT_USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CNSGR_SBJT_REJCT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{BAL_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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


        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            gridComplit();
        };

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        
        //색상변경
        gridRoot.addEventListener("dataComplete", uf_cellColor);   //색상변경
        gridRoot.addEventListener("dataComplete", gridValCal_rMate);
        
        gridRoot.addEventListener("itemDataChanged", changeEvent);
        

    };
    

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    

    function gridComplit(){
            
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    try{
                        SetData();
                    }finally{
                        reset_submit();
                    }
                }
                , 1000);   // 1초후 실행 1000 = 1초   
                
        
    }
   
    
    function uf_cellColor(){
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            alert("collection 객체를 찾을 수 없습니다");
            return;
        }
        for (var i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 1, 1, 1, null, 0xEDF2FE);    //위탁기관
            collection.addCellAttributeDetailAt(i, 2, 1, 1, null, 0xEDF2FE);    //위탁과제
            collection.addCellAttributeDetailAt(i, 3, 1, 1, null, 0xEDF2FE);    //위탁시작일자
            collection.addCellAttributeDetailAt(i, 4, 1, 1, null, 0xEDF2FE);    //위탁종료일자
            collection.addCellAttributeDetailAt(i, 5, 1, 1, null, 0xEDF2FE);    //계약금액
            collection.addCellAttributeDetailAt(i, 6, 1, 1, null, 0xEDF2FE);    //사용금액
            collection.addCellAttributeDetailAt(i, 7, 1, 1, null, 0xEDF2FE);    //불인정금액
            
        }
    }
    
    
    function changeEvent(event){
        var rowIndex = event.getRowIndex();                 // 변경된 행번호
        var columnIndex = event.getColumnIndex();       // 변경된 열번호
        var dataField = event.getDataField();               // 변경된 열의 데이타 필드
        var dataRow = gridRoot.getItemAt(rowIndex); // 변경된 데이타 레코드
        
        
        var footer = gridRoot.getObjectById("footer");
        footer.invalidateData();
        
        
        // 그리드 입력부 마이너스체크
        chkGridNgtNum_rMate(gridRoot,rowIndex,"CNSGR_SBJT_CONT_AMT","계약금액");    // root, rowIdx, id, nm
        chkGridNgtNum_rMate(gridRoot,rowIndex,"CNSGR_SBJT_USE_AMT","사용금액");
        chkGridNgtNum_rMate(gridRoot,rowIndex,"CNSGR_SBJT_REJCT_AMT","불인정금액");
        
        if("CNSGR_SBJT_CONT_AMT" == dataField || "CNSGR_SBJT_USE_AMT" == dataField || "CNSGR_SBJT_REJCT_AMT" == dataField ){
            gridValCal_rMate();
        }   

    }
     
    function dataGrid_init(event){
        var rowIndex = event.getRowIndex();                 // 변경된 행번호
        var columnIndex = event.getColumnIndex();       // 변경된 열번호
        var dataField = event.getDataField();               // 변경된 열의 데이타 필드
        var dataRow = gridRoot.getItemAt(rowIndex); // 변경된 데이타 레코드
        
        if("CROV_CASH_APC_AMT2" == dataField || "CROV_SPOT_APC_AMT2" == dataField){
            
            var footer = gridRoot.getObjectById("footer");
            footer.invalidateData();
            
            
            uf_CalAmt_rMate(dataRow, rowIndex, columnIndex);
        }
        
    }
    
    
    
    

    /*****************************************************************
     * uf_CalAmt        보충후한도,잔여한도 계산
     * @param
     * @return
    ******************************************************************/
    function uf_CalAmt_rMate(dataRow, rowIndex, columnIndex) {
        
        var change_amt1=0;              //현금잔액
        var change_amt2=0;              //현물잔액

        change_amt1 = Number(dataRow.USE_APV_CASH_LIM_AMT2)-Number(dataRow.CROV_CASH_APC_AMT2);
        change_amt2 = Number(dataRow.SPOT_BAL)-Number(dataRow.CROV_SPOT_APC_AMT2);
        
        if((change_amt1<0) || (change_amt2<0)){
            alert("신청금액이 사용잔액보다 클 수 없습니다.");
            gridRoot.setItemFieldAt("0", rowIndex, "CROV_CASH_APC_AMT2");     // 값, row, id
            gridRoot.setItemFieldAt("0", rowIndex, "CROV_SPOT_APC_AMT2");     // 값, row, id
            
            var footer = gridRoot.getObjectById("footer");
            footer.invalidateData();
            
            return;
        }else{
            gridRoot.setItemFieldAt("0", rowIndex, "BAL_CASH");     // 값, row, id   현금잔액 금액입력
            gridRoot.setItemFieldAt("0", rowIndex, "BAL_SPOT");     // 값, row, id   
            
            var footer = gridRoot.getObjectById("footer");
            footer.invalidateData();
        }
        
    }
    
    
    
    /*****************************************************************
     * gridValCal       잔액계산
     * @param
     * @return
    ******************************************************************/
    function gridValCal_rMate(){
        var frm     =   document.frm;
        var grid    =   gridRoot;
        var BalAmt  =   0;

        var footer = gridRoot.getObjectById("footer");
        
        for(var i=0; i<getGridRowCount_rMate(grid);i++){
            var dataRow = grid.getItemAt(i); 
                
            if(Number(dataRow.CNSGR_SBJT_CONT_AMT)<Number(dataRow.CNSGR_SBJT_USE_AMT)){
                alert("사용금액이 계약금액을 초과할 수 없습니다.");
                gridRoot.setItemFieldAt("0", i, "CNSGR_SBJT_USE_AMT");     // 값, row, id
                footer.invalidateData();
                return;
            }
            if(Number(dataRow.CNSGR_SBJT_USE_AMT)<Number(dataRow.CNSGR_SBJT_REJCT_AMT)){
                alert("불인정 금액이 사용금액을 초과할 수 없습니다.");
                gridRoot.setItemFieldAt("0", i, "CNSGR_SBJT_REJCT_AMT");     // 값, row, id
                footer.invalidateData();
                return;
            }

            BalAmt  =   Number(dataRow.CNSGR_SBJT_CONT_AMT)-Number(dataRow.CNSGR_SBJT_USE_AMT)+Number(dataRow.CNSGR_SBJT_REJCT_AMT);

            gridRoot.setItemFieldAt(BalAmt+"", i, "BAL_AMT");     // 값, row, id
            footer.invalidateData();
        }
        
    }

        
        
        
    /*****************************************************************
     * uf_saveCnsgrCal      위탁과제정산등록
     * @param
     * @return
    ******************************************************************/
    function uf_saveCnsgrCal_rMate(){
        var frm         = document.frm;
        var grid        = gridRoot;
        var insertData  = "";
        var itm_num     = 0;

        //과제진행상태 10:"정산"
        if("10"!='<%=sbjtData_instSbjtPrgrSt%>'){
            alert("해당 기관은 정산단계가 아닙니다.");
            return;
        }
        
        for(var i=0; i<getGridRowCount_rMate(grid);i++){
            var dataRow = grid.getItemAt(i);
            var CNSGR_SBJT_STR_DT = dataRow.CNSGR_SBJT_STR_DT.replace(/-/gi,"").replace(/\//gi,"");    //위탁시작일자:CNSGR_SBJT_STR_DT
            var CNSGR_SBJT_END_DT = dataRow.CNSGR_SBJT_END_DT.replace(/-/gi,"").replace(/\//gi,"");    //위탁종료일자:CNSGR_SBJT_END_DT
            
            if(!((""==dataRow.CNSGR_SBJT_INST_NM) && (""==dataRow.CNSGR_SBJT_NM)   //위탁기관CNSGR_SBJT_INST_NM: , 위탁과제:CNSGR_SBJT_NM
                     && ("0"==Number(dataRow.CNSGR_SBJT_CONT_AMT)) && ("0"==Number(dataRow.CNSGR_SBJT_USE_AMT)) && ("0"==Number(dataRow.CNSGR_SBJT_REJCT_AMT)) )){  //계약금액:CNSGR_SBJT_CONT_AMT, 사용금액:CNSGR_SBJT_USE_AMT, 불인정금액:CNSGR_SBJT_REJCT_AMT

                if(Number(CNSGR_SBJT_STR_DT) > Number(CNSGR_SBJT_END_DT)){    //위탁시작일자:CNSGR_SBJT_STR_DT ,위탁종료일자:CNSGR_SBJT_END_DT
                    alert("위탁시작일자가 종료일자보다 클 수 없습니다.");
                    return;
                }

                insertData += "&PMS_ID="              +dataRow.PMS_ID;                  //PMSID
                insertData += "&AGRMT_SEQ_NO="        +dataRow.AGRMT_SEQ_NO;            //협약일련번호
                insertData += "&SBJT_ID="             +dataRow.SBJT_ID;                 //과제번호
                insertData += "&AGRMT_INST_ID="       +dataRow.AGRMT_INST_ID;           //수행기관ID
                insertData += "&SAC_SN="              +dataRow.SAC_SN;                  //정산순번
                insertData += "&CNSGR_SBJT_INST_NM="  +dataRow.CNSGR_SBJT_INST_NM;      //위탁기관
                insertData += "&CNSGR_SBJT_NM="       +dataRow.CNSGR_SBJT_NM;           //위탁과제
                insertData += "&CNSGR_SBJT_STR_DT="   +CNSGR_SBJT_STR_DT;               //위탁시작일자
                insertData += "&CNSGR_SBJT_END_DT="   +CNSGR_SBJT_END_DT;               //위탁종료일자
                insertData += "&CNSGR_SBJT_CONT_AMT=" +dataRow.CNSGR_SBJT_CONT_AMT;     //계약금액
                insertData += "&CNSGR_SBJT_USE_AMT="  +dataRow.CNSGR_SBJT_USE_AMT;      //사용금액
                insertData += "&CNSGR_SBJT_REJCT_AMT="+dataRow.CNSGR_SBJT_REJCT_AMT;    //불인정금액
                itm_num=itm_num+1;
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
                    alert("위탁과제정산 등록완료 되었습니다.");
                    window.close();
                }
                , 1000);   // 1초후 실행 1000 = 1초   
                
        
        removeTempAttribute(frm);
    }
    
    
        
     
    $(document).ready(function() {
        // rMateGrid 초기화
        rMateGridInit();
    }); 
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<script type="text/javascript">
function SetData() { 
    
    var seqNo = "<%=agrmtSeqNo%>";

    
    if(!seqNo || seqNo == "") return;
    if( isSubmit() ) return;    // 이중처리
    
        
    try {
        
        var cnt = 0;
        var gridValue = [];
        
        //1. 신규과제
        if("G00000000000001" == seqNo){

        //2. 진행과제
        }else if("G00000000000002" == seqNo){

        //3. 정산과제(보고서 미제출)
        }else if("G00000000000003" == seqNo){
            gridValue[cnt++] = {"AGRMT_SEQ_NO"            : "G00000000000003","PMS_ID"                  : "G01","SAC_SN"                  : "1","SBJT_ID"                 : "TEST0003","AGRMT_INST_ID"           : "10112249","AGRMT_INST_NM"           : "㈜RCMS","CNSGR_SBJT_INST_NM"      : "한국산업기술평가관리원","CNSGR_SBJT_NM"           : "RCMS 실습용 정산과제","CNSGR_SBJT_STR_DT"       : "2013/02/01","CNSGR_SBJT_END_DT"       : "2014/01/31","CNSGR_SBJT_CONT_AMT"     : "1000","CNSGR_SBJT_USE_AMT"      : "1000","CNSGR_SBJT_REJCT_AMT"    : "0","BAL_AMT"                 : ""};
        //4. 정산과제(보고서 제출 완료)
        }else if("G00000000000004" == seqNo){

        }
        
    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}

</script>


</body></html>