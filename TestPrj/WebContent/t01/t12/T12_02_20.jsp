<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_02_20.jsp
 *   Description        : 연구비사용실행 
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014. 01. 07                   예기해             
 *
 *  @author 예기해
 *  @Since  2014. 01. 07
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
<%@ include file="/inc/jspHead.jsp" %>
<%@ page import="java.util.Hashtable" %>
<%@ page import="kr.go.rcms.web.data.*" %>
<!-- //head end -->

<%


    // 2012.02.07 태동현 START
    // 전자인증서명에서 사용할 과제ID, 과제명 추가
    String[] SbjtId         = SessionUtil.getRequestValues(request, "SbjtId");                  // 과제ID
    String[] SbjtNm         = SessionUtil.getRequestValues(request, "SbjtNm");                  // 과제명
    Hashtable<String, Integer> tmpSbjtId    = new Hashtable<String, Integer>();
    
    int sbjtCnt             = 0;
    boolean check           = false;
    String msgSbjtCnt       = "";
    
    for(int i=0; i<SbjtId.length; i++){
        if(tmpSbjtId.containsKey(SbjtId[i])){
            tmpSbjtId.put(SbjtId[i], tmpSbjtId.get(SbjtId[i])+1);
        }else{
            tmpSbjtId.put(SbjtId[i], 1);
        }
    }
    if(tmpSbjtId.size() > 1){
        msgSbjtCnt = " 외 " + Integer.toString(tmpSbjtId.size()-1) + "건";
    }
    // 2012.02.07 태동현 END
    
    // 2012.07.31 태동현 START
    // 과제명에 ["], ['] 기호 제거
    for(int i=0; i<SbjtId.length; i++){
        SbjtNm[i] = SbjtNm[i].replaceAll("\"", " ");
        SbjtNm[i] = SbjtNm[i].replaceAll("\'", " ");
    }
    // 2012.07.31 태동현 END
    
    String[] ExctnRegDt     = SessionUtil.getRequestValues(request, "ExctnRegDt");              // 사용등록일자
    String[] ExctnRegDrtm   = SessionUtil.getRequestValues(request, "ExctnRegDrtm");            // 사용등록시간
    String[] EvdcDv         = SessionUtil.getRequestValues(request, "BzExpExctnEvdcDv");        // 사업비증빙사용구분
    String[] ButrId         = SessionUtil.getRequestValues(request, "ButrId");              // 증빙일련번호
    String[] RcvBnkCd       = SessionUtil.getRequestValues(request, "RcvBnkCd");                // 입금은행코드
    String[] RcvBnkNm       = SessionUtil.getRequestValues(request, "RcvBnkNm");                // 입금은행명
    String[] RcvAcctNo      = SessionUtil.getRequestValues(request, "RcvAcctNo");               // 입금계좌번호
    String[] RcvPsbkPrtCtt  = SessionUtil.getRequestValues(request, "RcvPsbkPrtCtt");           // 거래처통장표시
    String[] WdrwPsbkPrtCtt = SessionUtil.getRequestValues(request, "WdrwPsbkPrtCtt");          // 연구비통장표시
    String[] TrnsAmt        = SessionUtil.getRequestValues(request, "BzExpExctnAmt");           // 사업비사용금액
    String[] SplyAmt        = SessionUtil.getRequestValues(request, "SplyAmt");                 // 공급금액
    String[] VatAmt         = SessionUtil.getRequestValues(request, "VatAmt");                  // 부가가치세액
    String[] UsePtcl        = SessionUtil.getRequestValues(request, "PaymUsag");                // 사용내역
    String[] OwacNm         = SessionUtil.getRequestValues(request, "OwacNm");                  // 예금주명
    String[] TelNo          = SessionUtil.getRequestValues(request, "TelNo");                   // 전화번호
    String[] AgrmtSeqNo     = SessionUtil.getRequestValues(request, "AgrmtSeqNo");              // 협약일련번호
    String[] AgrmtInstId    = SessionUtil.getRequestValues(request, "AgrmtInstId");             // 협약기관ID
    String[] BzMomAcctBnkCd = SessionUtil.getRequestValues(request, "BzMomAcctBnkCd");          // 사업모계좌은행코드
    String[] RchExpAcctBnkCd= SessionUtil.getRequestValues(request, "RchExpAcctBnkCd");         // 연구비계좌은행코드
    String[] BzMomAcctNo    = SessionUtil.getRequestValues(request, "BzMomAcctNo");             // 사업모계좌번호
    String[] RchExpAcctNo   = SessionUtil.getRequestValues(request, "RchExpAcctNo");            // 연구비계좌번호
    String[] AgrmtInstBzRegNo   = SessionUtil.getRequestValues(request, "AgrmtInstBzRegNo");        // 협약기관사업자등록번호
    String[] AchvInstIndv1Cd    = SessionUtil.getRequestValues(request, "AchvInstIndv1Cd");             // 기관용개별코드
    String[] AchvInstIndv2Cd    = SessionUtil.getRequestValues(request, "AchvInstIndv2Cd");             // 기관용개별코드1
    String[] ExctnSt            = SessionUtil.getRequestValues(request, "ExctnSt");             // 진행상태
    
    long TrnsAmtSum = 0L;
    
    StringBuffer sbOtmAmt = new StringBuffer(); 
    StringBuffer SignedMsg = new StringBuffer();
    
    for(int i=0; i<ExctnRegDt.length; i++){
        SignedMsg.append("ExctnRegDt=").append(ExctnRegDt[i]);
        SignedMsg.append("&ExctnRegDrtm=").append(ExctnRegDrtm[i]);
        SignedMsg.append("&EvdcDv=").append(EvdcDv[i]);
        SignedMsg.append("&ButrId=").append(ButrId[i]);
        SignedMsg.append("&RchExpAcctBnkCd=").append("003");
        SignedMsg.append("&RchExpAcctNo=").append("08203000000220");
        SignedMsg.append("&RcvBnkCd=").append(RcvBnkCd[i]);
        SignedMsg.append("&RcvAcctNo=").append(RcvAcctNo[i]);
        SignedMsg.append("&TrnsAmt=").append(TrnsAmt[i]);
        SignedMsg.append( "|" );
        
        TrnsAmtSum += Long.parseLong(TrnsAmt[i]);
        
        sbOtmAmt.append(TrnsAmt[i]);
        if( i!=(ExctnRegDt.length-1) ) sbOtmAmt.append("|");
    }
    
    
    
%>


<title>연구비사용실행 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body class="line">

<ul id="accessibility">
    <li><a href="#header">주메뉴바로가기</a></li>
    <li><a href="#contaniner">컨텐츠바로가기</a></li>
    <li><a href="#footer">하단바로가기</a></li>
</ul>
<hr/>
<noscript><p id="warning_script">자바스크립트가 동작하지 않을 시 디자인이 정상적으로 보이지 않을 수 있습니다.</p></noscript>
<div id="wrapper">

    <!-- //header topMenu start// -->
    <%@ include file="/inc/topMenu.jsp" %>
    <!-- //header topMenu end// -->
    
    <!-- contaniner start -->
    <div id="contaniner">
        <!-- left start -->
        <div class="snb">
            <!-- left menu start -->
            




                    <div><img src="/images/pefo/sub_navt1.gif" alt="연구비관리" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_txt">현황조회</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_3dep">연구비사용 현황조회</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>
                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_txt_on">연구비사용관리</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep">사용등록</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_02_00.jsp'); return false;" class="menu_3dep_on">사용실행</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_03_00.jsp'); return false;" class="menu_3dep">사용결과내역 조회</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_txt">현물등록관리</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_3dep">현물등록내역 조회</a></li>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_02_00.jsp'); return false;" class="menu_3dep">현물사용내역 등록</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>

                        </div>
                    </div>
                    <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->


<script type="text/javascript">


function uf_tran(){
    var frm = document.frm;

    var dataRow;
    var gridCnt = getGridRowCount_rMate(gridRoot_file);
    
    for(var i=0;i<gridCnt;i++){
        dataRow = gridRoot_file.getItemAt(i);
        if(dataRow.RTN_VALUE == "실패"){
            alert("비목 증빙 파일 [" + dataRow.FILE_NM + "] 가 등록 실패하였습니다. \"사용실행\"->\"비목등록/수정\" 에서 재등록 해주시기 바랍니다.\n재등록시에도 오류가 발생하면 고객센터로 문의주시기 바랍니다.");
        }
    }
    
    if(frm.ExctnPw.value == ""){
        alert("필수항목은 반드시 입력하셔야 합니다. \n\n * 필수입력 항목 : 이체비밀번호");
        return;
    }
    
    

    if( isSubmit() ) return;            // 이중처리
    
    var url = "/pop/sign_popup.jsp";
    var obj = "서명에 사용할 인증서 선택";
    var style = "dialogWidth:441px;dialogHeight:475px;center:yes;scroll:no;resizable:no;status:no;";
    var reValue = window.showModalDialog(url, obj, style);
    if(reValue == undefined){
        reValue = window.returnValue;
    }
    
    if(reValue == "ok"){
        uf_proce_display_on();  //로딩바
        setTimeout(
            function(){
                try{   
                    document.body.setCapture(); // 'wait'
                    document.body.style.cursor = "wait";
                    alert("이체요청 처리되었습니다.\n\n이체요청처리결과는 연구비사용결과조회에서 확인하시기 바랍니다.");
                    document.body.style.cursor = "auto";
                    document.body.releaseCapture(); //setCapture()_Next
                }finally{
                    fn_url("/t01/t12/T12_02_00.jsp");
                }
            
            }, 1000);   // 1초후 실행 1000 = 1초s
    }
    return;

                
                
}

function uf_detail(EvdcDv, ButrId, AgrmtInstId, AgrmtSeqNo){
    var frm = document.frm;
    
    if( !(isGrid && isGrid_file)) return;
    
    if(!isLoading) isLoading = true; // 그리드 초기화시 중복처리 되지 않기위해서 처리
    
    rMateGridLayoutInit_rMate();
    rMateGridLayoutInit_rMate(gridRoot_file, gridApp_file, layoutStr_file);
    uf_proce_display_on();  //로딩바

    setTimeout(
            function(){
                    try{   
                        //if(!isLoading) isLoading = true; // 그리드 초기화시 중복처리 되지 않기위해서 처리
                        document.body.setCapture(); // 'wait'
                        document.body.style.cursor = "wait";
                        search(EvdcDv);
                        document.body.style.cursor = "auto";
                        document.body.releaseCapture(); //setCapture()_Next
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
    
}


</script>









<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//레이아웃 설정
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"사용일자\"       width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"세부비목코드\"   width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세부비목\"       width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"세세목코드\"     width=\"0\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목\"         width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_BTN\"      dataField=\"DTLS_ITXP_BTN\"       headerText=\"세목변경\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"품목\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MITM_NRM\"           dataField=\"MITM_NRM\"            headerText=\"규격\"           width=\"50\"  visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MITM_UPRC\"          dataField=\"MITM_UPRC\"           headerText=\"단가\"           width=\"90\"  visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MITM_QNT\"           dataField=\"MITM_QNT\"            headerText=\"수량\"           width=\"50\"  visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SPLY_AMT\"           dataField=\"SPLY_AMT\"            headerText=\"공급금액\"       width=\"90\"  visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"VAT_AMT\"            dataField=\"VAT_AMT\"             headerText=\"부가가치세액\"   width=\"90\"  visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITEM_RMK\"           dataField=\"ITEM_RMK\"            headerText=\"비고\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTL_SB_MITM_SEQ\"    dataField=\"DTL_SB_MITM_SEQ\"     headerText=\"세부품목순번\"   width=\"100\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{SUB_DTLS_ITXP_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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



//레이아웃 설정
var layoutStr_file = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1_file\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세목명\"     width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목명\"   width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FILE_NM\"            dataField=\"FILE_NM\"             headerText=\"파일명\"     width=\"200\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RTN_VALUE\"          dataField=\"RTN_VALUE\"           headerText=\"변환여부\"   width=\"70\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ERRMSG\"             dataField=\"ERRMSG\"              headerText=\"메시지\"     width=\"200\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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

//rMateGrid의 bridge 명을 다르게 주어 자바스크립트에서 제어할 수 있도록 합니다.
var flashVars_file = "dataType=json&bridgeName=gridBridge_file";

//rMateGrid 관련 객체
var gridApp_file; // 플래시 기본 객체
var gridData_file; // 그리드 데이터 담기
var gridRoot_file; // 데이타와 그리드를 포함하는 객체
var dataGrid_file; // 그리드 정보 담기

//rMateGrid 로딩이 완료 된 후 조회를 시작
var isGrid = false;
var isGrid_file = false;
var isLoading = false;

// 처음 조회시에만 자동조회가 이루어 지게 한다.
function layoutComplete_rMate(){
    isGrid = true;
    if(isLoading) return;  //처음조회시 isLoading을 true로 변경하여 자동조회가 되게 하고, 두번째부터는 자동조회가 되지 않게한다.
    go_uf_detail();
}
function layoutComplete_file(){
    isGrid_file = true;
    if(isLoading) return;  //처음조회시 isLoading을 true로 변경하여 자동조회가 되게 하고, 두번째부터는 자동조회가 되지 않게한다.
    go_uf_detail();
}

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
        
        //popupDetail(rowIndex, dataRow);
        layerDetail(dataGrid, dataRow);
        
    };

    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //이벤트 등록
        //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
        //dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    gridRoot.addEventListener("layoutComplete", layoutComplete_rMate);
    
};


//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//로딩 후 rMadeGrid 출력
function rMateGridSetData() {
    //rMageGrid 초기화
    //gridApp.setData(null);

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    
    
    // 마우스 휠 이벤트 리스너를 적용합니다.
    //addGridMouseWheelEventListener();

    
};




//그리드 레이아웃 호출 
var rMateGridInitLayout_file = function() {
  gridApp_file = FABridge.gridBridge_file.root();
  gridRoot_file = gridApp_file.getGridRoot();
  gridApp_file.setLayout(layoutStr_file); //그리드 레이아웃 생성

  //더블클릭 상세보기 이벤트 추가
  var itemDoubleClickHandler_file = function(event) {
      
      var rowIndex = event.getRowIndex();
      var columnIndex = event.getColumnIndex();
      var dataRow = gridRoot_file.getItemAt(rowIndex);
      var column = dataGrid_file.getColumns()[columnIndex];
      var dataField = column.getDataField();
      
      //popupDetail(rowIndex, dataRow);
      layerDetail(dataGrid_file, dataRow);
      
  };

  var layoutCompleteHandler_file = function(event) {
      dataGrid_file = gridApp_file.getDataGrid();
      
      //이벤트 등록
      //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler_file); //더블클릭 이벤트
      //dataGrid.addEventListener("itemClick", itemClickHandler_file); //원클릭 이벤트 
  };

  
  
  gridRoot_file.addEventListener("layoutComplete", layoutCompleteHandler_file);
  gridRoot_file.addEventListener("layoutComplete", layoutComplete_file);
  
};


//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge_file", rMateGridInitLayout_file);

//로딩 후 rMadeGrid 출력
function rMateGridSetData_file() {
  //rMageGrid 초기화
  //gridApp.setData(null);

  gridApp_file = FABridge.gridBridge_file.root();  
  gridApp_file.setData(JSON.stringify(gridData_file)); //데이터 출력
  
  
  // 마우스 휠 이벤트 리스너를 적용합니다.
  //addGridMouseWheelEventListener();

  
};


    
    



//세부비목 팝업 ( 기존 스타일과 거의 동일하게 사용 )
function uf_Click(rowIndex, columnIndex, dataRow, dataField) {

    editRowIndex = rowIndex; //라인idx
    editDataRow = dataRow; //라인data
    editDataField = dataField;

    get2post(document.frm, "AgrmtInstId=" + editDataRow.AGRMT_INST_ID); //협약기관ID
    get2post(document.frm, "AgrmtSeqNo=" + editDataRow.AGRMT_SEQ_NO); //협약일련번호
    get2post(document.frm, "DtlsItxpCd=" + editDataRow.ITXP_CD); //세부비목코드
    get2post(document.frm, "HgrkItxpNm=" + editDataRow.HGRK_ITXP_NM); //비목
    get2post(document.frm, "DtlsItxpNm=" + editDataRow.ITXP_NM); //세부비목

    //uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_10.jsp', 'TAXVIEW1', '800', '500', 'yes');
    uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_10.jsp', 'TAXVIEW1', '800', '1000', 'yes');
    removeTempAttribute(document.frm); //get2post 삭제

}

//상세보기 - 아래 레이어 팝업으로 변경  layerDetail(dataRow)
function popupDetail(rowIndex, dataRow) {

    var columns = dataGrid.getColumns();
    var popHeaderObj;
    var popHeadeData = "";
    var columnObj = {};
    
    var headerLength = 0;
    
    //headerText 가져오기
    for ( var i = 0; i < columns.length; i++){
        if (columns[i].getVisible()) {
            columnObj = dataGrid.getColumns()[i];
            if(popHeadeData != "") popHeadeData += ",";
            popHeadeData += "\"" + columnObj.getDataField() + "\":\"" + columnObj.getHeaderText() + "\"";
            headerLength++;
        }
    }
    
    //JSON 형태로 변환
    popHeadeData = "{" + popHeadeData + "}";
    popHeaderObj = JSON.parse(popHeadeData);
    
    get2post(document.frm, "dataHeader="+JSON.stringify(popHeaderObj));
    get2post(document.frm, "dataRow="+JSON.stringify(dataRow));
    
    //팝업창 정보 세팅
    var url = "/rMateGrid/detail_popup.jsp";
    var height = 30 + ( 21 * headerLength);
    uf_frmNewWinNsScrNo(document.frm, url, "GRIDATA", "340", height);
    
    removeTempAttribute(document.frm);  //get2post 삭제
}



</script>
<!-- **********************  rMateGrid setting END ***********************  -->





    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u12_02_00_t.gif" alt="사용실행"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>연구비관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />연구비사용관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">사용실행</span></li>
                        
                    </ul>
                </div>
            </div> 
      <!-- //pagenav end// -->
      <div class="t20"></div>
      <h3>사용내역확인</h3>
        <form name="frm" method="post">      
      <div class="t10 b10">
        <table width="704" border="0" cellspacing="0" cellpadding="0" summary="사용내역확인 상세내용" class="tbl_type03">
          <caption>
          사용내역확인 상세내용
          </caption>
          <colgroup>
          <col width="6%" />
          <col width="10%"/>
          <col width="10%" />
          <col width="10%"/>
          <col width="14%" />
          <col width="15%"/>
          <col width="15%" />
          <col width="20%"/>
          </colgroup>
          <tbody>
            <tr>
              <th scope="col">선택</th>
              <th scope="col">입금은행</th>
              <th scope="col">입금계좌</th>
              <th scope="col">예금주</th>
              <th scope="col">이체금액</th>
              <th scope="col">증빙구분</th>
              <th scope="col">연구비통장표시</th>
              <th scope="col">거래처통장표시</th>
            </tr>
            <input type="hidden" name="SignedSize" value="<%=ExctnRegDt.length%>" />        <!-- 사용등록일자  -->
                        <%
                            String checked = "";
                            for(int i=0; i<ExctnRegDt.length; i++){
                                
                                if(i==0){
                                    checked = "checked";
                                }else{
                                    checked = "";
                                }
                        %>
                            <input type="hidden" name="ExctnRegDt"      value="<%=ExctnRegDt[i]%>" />           <!-- 사용등록일자  -->
                            <input type="hidden" name="ExctnRegDrtm"    value="<%=ExctnRegDrtm[i]%>" />     <!-- 사용등록시간  -->
                            <input type="hidden" name="EvdcDv"          value="<%=EvdcDv[i]%>" />                   <!-- 사업비증빙사용구분  -->
                            <input type="hidden" name="ButrId"          value="<%=ButrId[i]%>" />               <!-- 거래실적ID  -->
                            <input type="hidden" name="RcvBnkCd"        value="<%=RcvBnkCd[i]%>" />             <!-- 입금은행코드  -->
                            <input type="hidden" name="RcvBnkNm"        value="<%=RcvBnkNm[i]%>" />             <!-- 입금은행명  -->
                            <input type="hidden" name="RcvAcctNo"       value="<%=RcvAcctNo[i]%>" />                <!-- 입금계좌번호  -->
                            <input type="hidden" name="RcvPsbkPrtCtt"   value="<%=RcvPsbkPrtCtt[i]%>" />        <!-- 거래처통장인쇄  -->
                            <input type="hidden" name="WdrwPsbkPrtCtt"  value="<%=WdrwPsbkPrtCtt[i]%>" />   <!-- 연구비통장표시-->
                            <input type="hidden" name="TrnsAmt"         value="<%=TrnsAmt[i]%>" />                  <!-- 사업비사용금액  -->
                            <input type="hidden" name="SplyAmt"         value="<%=SplyAmt[i]%>" />                  <!-- 공급금액  -->
                            <input type="hidden" name="VatAmt"          value="<%=VatAmt[i]%>" />                   <!-- 부가가치세액  -->
                            <input type="hidden" name="UsePtcl"         value="<%=org.apache.commons.lang.StringEscapeUtils.escapeHtml(UsePtcl[i])%>" />                    <!-- 사용내역  -->
                            <input type="hidden" name="OwacNm"          value="<%=OwacNm[i]%>" />                   <!-- 예금주명  -->
                            <input type="hidden" name="TelNo"           value="<%=TelNo[i]%>" />                        <!-- 전화번호  -->
                            <input type="hidden" name="AgrmtSeqNo"      value="<%=AgrmtSeqNo[i]%>" />           <!-- 협약일련번호  -->
                            <input type="hidden" name="AgrmtInstId"         value="<%=AgrmtInstId[i]%>" />          <!-- 협약기관ID  -->
                            <input type="hidden" name="BzMomAcctBnkCd"      value="<%=BzMomAcctBnkCd[i]%>" />   <!-- 사업모계좌은행코드  -->
                            <input type="hidden" name="RchExpAcctBnkCd"     value="<%=RchExpAcctBnkCd[i]%>" />  <!-- 연구비계좌은행코드  -->
                            <input type="hidden" name="BzMomAcctNo"         value="<%=BzMomAcctNo[i]%>" />          <!-- 사업모계좌번호  -->
                            <input type="hidden" name="RchExpAcctNo"        value="<%=RchExpAcctNo[i]%>" />     <!-- 연구비계좌번호  -->
                            <input type="hidden" name="AgrmtInstBzRegNo"    value="<%=AgrmtInstBzRegNo[i]%>" /><!-- 협약기관사업자등록번호  -->
                            <input type="hidden" name="AchvInstIndv1Cd"     value="<%=AchvInstIndv1Cd[i]%>" />      <!-- 기관용개별코드  -->
                            <input type="hidden" name="AchvInstIndv2Cd"     value="<%=AchvInstIndv2Cd[i]%>" />      <!-- 기관용개별코드1  -->
                            <input type="hidden" name="ExctnSt"     value="<%=ExctnSt[i]%>" />      <!-- 기관용개별코드1  -->
            
            <tr>
              <td class="ac"><input name="sel_radio" type="radio" value="" onclick="uf_detail('<%=EvdcDv[i]%>', '<%=ButrId[i] %>','<%=AgrmtInstId[i]%>','<%=AgrmtSeqNo[i]%>')"  <%=checked%> /></td>
              <td class="ac"><%=RcvBnkNm[i]%></td>
              <td class="ac"><%=RcvAcctNo[i]%></td>
              <td class="ac"><%=OwacNm[i]%></td>
              <td class="ar"><%=FormatUtil.getMoneyForm(TrnsAmt[i])%></td>
              <td><%=CodeUtil.getCode("RND080", EvdcDv[i])%></td>
              <td><%=WdrwPsbkPrtCtt[i] %></td>
              <td><%=RcvPsbkPrtCtt[i] %></td>
            </tr>
                        <%
                            }
                        %>            
          </tbody>
          <tfoot>
          </tfoot>
        </table>
      </div>
      <div class="b10">
          <p class="guide_bu">이체비밀번호 5회 오류 시 재등록 후 사용하셔야 합니다.</p>
      </div>
      <div class="userpass_box">
         <span class="userpass">* 이체 비밀번호</span> 
         <input type="password" name="ExctnPw" id="ExctnPw" class="userpass_input" datatype="NA" value="" maxlength="15" size="30" notnull colname="이체비밀번호" enc="on"/> 
         <a href="#dummy" onclick="uf_tran();"><img src="/bt/bt_transfer1.gif" alt="이체요청"/></a>
      </div>
      
      <h3>세부정보</h3>
      <div class="t10"></div>
      <h4>거래처정보</h4>
      <div class="t10 b10">
        <table width="704" border="0" cellspacing="0" cellpadding="0" summary="거래처정보 상세내용" class="tbl_type02">
          <caption>
          거래처정보 상세내용
          </caption>
          <colgroup>
          <col width="20%" />
          <col width="30%"/>
          <col width="20%" />
          <col width="30%"/>
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">사업자번호</th>
              <td colspan="3" class="ll" id="idSplrBzRegNo"></td>
            </tr>
            <tr>
              <th scope="row">상호(법인명)</th>
              <td class="ll" id="idSplrCoNm"></td>
              <th scope="row">성명(대표자)</th>
              <td class="ll" id="idSplrReprNm"></td>
            </tr>
            <tr>
              <th scope="row">사업장주소</th>
              <td colspan="3" class="ll" id="idSplrAdr"></td>
            </tr>
            <tr>
              <th scope="row">업태</th>
              <td class="ll" id="idSplrTpopNm"></td>
              <th scope="row">업종</th>
              <td class="ll" id="idSplrTpbzNm"></td>
            </tr>
          </tbody>
        </table>
      </div>

      <h4>비목 및 품목</h4>
      <div class="t10"></div>
      <!-- 그리드 start -->
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "150", "#FFFFFF", "transparent");
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
      <!-- //그리드 end// -->
      <div class="t10"></div>
      <h4>비목 증빙 파일</h4>
      <div class="t10"></div>
      <!-- 그리드 start -->
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv_file" style="width:100%;">
                <script>
                 rMateGridCreate("grid_file", "/rMateGrid/Component/rMateGridWeb", flashVars_file, "100%", "100", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->      
      <!-- //그리드 end// -->
      </form>
      
    </div>
    <!-- //content end// -->
 


    </div>
    <!-- //contaniner end//-->
    <div class="cb"></div>
    
    <!-- footer start -->
    <%@ include file="/inc/jspFooter.jsp" %>
    <!-- //footer end// -->
    
    <!-- 퀵메뉴 start -->
    <%@ include file="/inc/quickMenu.jsp" %>
    <!-- //퀵메뉴 end// -->
    
</div><!-- wrapper end -->

<script type="text/javascript">


$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();
    
});



function go_uf_detail(){
    
    uf_detail('<%=EvdcDv[0]%>', '<%=ButrId[0]%>','<%=AgrmtInstId[0]%>','<%=AgrmtSeqNo[0]%>');
    
}

</script>


<script type="text/javascript">

function search(gubun){

    if(!gubun || typeof gubun == "undefined") return false;
    try{
        document.body.style.cursor = "wait";
        SetData(gubun); //Insert    Grid
        //SetData(); //Insert Grid
        document.body.style.cursor = "auto";
    }finally{
        reset_submit();
        //searchAlert();
    }
    
    try{
        document.body.style.cursor = "wait";
        SetData_file(gubun); //Insert    Grid
        //SetData(); //Insert Grid
        document.body.style.cursor = "auto";
    }finally{
        reset_submit();
        //searchAlert();
    }
}

function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}


var cnt = 0;
function SetData(gubun){    

    try{
        
        var gridValue = [];
        cnt = 0;
        
        if("T" == gubun){
            
            gridValue[cnt++] = {"USE_DT":"2014-02-10","DTLS_ITXP_NM":"연구시설장비재료비", "SUB_DTLS_ITXP_NM":"연구시설장비구입비", "MITM_NM":"장비구입비",  "SPLY_AMT":"5000","VAT_AMT":"500","ITEM_RMK":""};
            
            document.getElementById('idSplrCoNm').innerHTML= '(주) 가 업체';
            document.getElementById('idSplrBzRegNo').innerHTML= '555-55-555555-0';
            document.getElementById('idSplrAdr').innerHTML= '인천광역시 남동구 구월동 1138';
            document.getElementById('idSplrTpopNm').innerHTML= '연구';
            document.getElementById('idSplrTpbzNm').innerHTML= '개발';
            document.getElementById('idSplrReprNm').innerHTML= '김인건';
            
        }else if("E" == gubun){

            
            gridValue[cnt++] = {"USE_DT":"2014-03-20","DTLS_ITXP_NM":"연구시설장비재료비", "SUB_DTLS_ITXP_NM":"연구시설장비구입비",   "MITM_NM":"장비구입비",     "SPLY_AMT":"2500","VAT_AMT":"0","ITEM_RMK":""};
            
            document.getElementById('idSplrCoNm').innerHTML= '(주) 나 업체';
            document.getElementById('idSplrBzRegNo').innerHTML= '888-88-888888-0';
            document.getElementById('idSplrAdr').innerHTML= '울산광역시 남구 신정동 646-4';
            document.getElementById('idSplrTpopNm').innerHTML= '연구';
            document.getElementById('idSplrTpbzNm').innerHTML= '개발';
            document.getElementById('idSplrReprNm').innerHTML= '나사장';
            
        }else if("C" == gubun){

            
            gridValue[cnt++] = {"USE_DT":"2014-03-12","DTLS_ITXP_NM":"연구시설장비재료비", "SUB_DTLS_ITXP_NM":"연구시설장비구입비",        "MITM_NM":"장비구입비",     "SPLY_AMT":"2000","VAT_AMT":"200","ITEM_RMK":""};
            
            document.getElementById('idSplrCoNm').innerHTML= '(주) 다 업체';
            document.getElementById('idSplrBzRegNo').innerHTML= '300-30-300000';
            document.getElementById('idSplrAdr').innerHTML= '세종특별자치시 조치원읍 신흥리 123';
            document.getElementById('idSplrTpopNm').innerHTML= '연구';
            document.getElementById('idSplrTpbzNm').innerHTML= '개발';
            document.getElementById('idSplrReprNm').innerHTML= '다대표';
            
        }
               
                
    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
    }
}

var cnt_file = 0;
function SetData_file(gubun){    

    try{
        
        var gridValue = [];
        cnt_file = 0;
        
        if("T" == gubun){
            gridValue[cnt_file++] = {"DTLS_ITXP_NM":"연구시설장비재료비","SUB_DTLS_ITXP_NM":"연구시설장비구입비","FILE_NM":"2월 장비품의서.jpg","RTN_VALUE":"성공","ERRMSG":""};

        }else if("E" == gubun){

            gridValue[cnt_file++] = {"DTLS_ITXP_NM":"연구시설장비재료비","SUB_DTLS_ITXP_NM":"연구시설장비구입비","FILE_NM":"장비구입비.jpg","RTN_VALUE":"성공","ERRMSG":""};
            
        }else if("C" == gubun){

            gridValue[cnt_file++] = {"DTLS_ITXP_NM":"연구시설장비재료비","SUB_DTLS_ITXP_NM":"연구시설장비구입비","FILE_NM":"지출내역.jpg","RTN_VALUE":"성공","ERRMSG":""};
            
        }
                
    }finally{
        gridData_file = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData_file();  //rMateGrid 구현
    }
}



</script>

</body>
</html>