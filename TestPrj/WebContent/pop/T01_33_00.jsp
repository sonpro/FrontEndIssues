<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_33_00.jsp
 *   Description        : 기타증빙예외
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.28                     예기해             
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
String EtcEvdcExcCd     = SessionUtil.getRequestValue(request, "EtcEvdcExcCd");
String EtcEvdcExcNo     = SessionUtil.getRequestValue(request, "EtcEvdcExcNo");
String InstNm = "㈜RCMS";
%>


<title>기타증빙예외 선택 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">기타증빙예외 선택</p>
        </div>
        <!-- //head title// --> 
    </div>


<script type="text/javascript">
function uf_GridAdd(){
    var obj = document.xgrid;
    
    if( "B07006" != document.frm.EtcImplCd.value ){
        alert('[기타전자증빙] 선택시 이용하실 수 있습니다.');
        return;
    }
    <%-- 
    ItxpRecordInsert_setPitm(document.xgrid, '<%=InstNm%>');
     --%>
    ItxpRecordInsert_setPitm_rMate();
}

//맨끝에 행 추가
function ItxpRecordInsert_setPitm_rMate() {
  
  //세팅 할 값만 써줘도 됨.
  var item = {
          "EVDC_DV": "",            
          "APV_NO": ""
  };
  gridRoot.addItemAt(item);   //컬럼추가
  columnBackGroundStyle();    //색상변경
}


//removeItem(index, root)
function uf_GridDelete(){
    var obj = document.xgrid;

    if( "B07006" != document.frm.EtcImplCd.value ){
        alert('[기타전자증빙] 선택시 이용하실 수 있습니다.');
        return;
    }
    
    if(!chkGridSelectedCount_rMate()) return;
    selectorColumn = gridRoot.getObjectById("selector");
    removeItem(selectorColumn.getSelectedIndices());
}


/******************************************************************
 * uf_OpenerValue    부모 페이지에 인건비내역 리턴
 * @param
 * @return
******************************************************************/
function uf_OpenerValue(){
    var obj_dtl = gridRoot;
    var reVal = "";

    if("" == document.frm.EtcImplCd.value){
        alert("기타증빙예외 항목을 선택하세요");
        document.frm.EtcImplCd.focus();
        return;
    }
    
    reVal = document.frm.EtcImplCd.value+"";
    //reVal = document.frm.EtcImplCd.value;
    
    if( "B07006" == document.frm.EtcImplCd.value ){

        var rowCnt = getGridRowCount_rMate(obj_dtl);
        if(rowCnt <= 0){
            alert("1건 이상의 기타증빙 승인번호내역을 등록해 주세요.");
            return;
        }
        
        
        
        for(var i=0; i<rowCnt; i++){
            
            var EvdcDv = $.trim(obj_dtl.getItemFieldAt(i, "EVDC_DV"));   //증빙구분
            var ApprNo = $.trim(obj_dtl.getItemFieldAt(i, "APV_NO").replace(/-/g,""));  //승인번호
            
            if( ApprNo.length > 24 ){
                alert('승인번호는 최대 24자리까지 입력하실 수 있습니다.\n승인번호를 확인하시기 바랍니다.');
                return;
            }
            if("" == EvdcDv){
                alert("증빙구분을 선택하세요");
                return;
            }

            if("" == ApprNo ){
                alert("승인번호를 입력하세요.");
                return;
            }
        }
    
        
        for(var i=0, j=rowCnt; i<j; i++){
            
            if(i!=0){
                reVal = reVal + "";
            }
            reVal = reVal + $.trim(obj_dtl.getItemFieldAt(i, "EVDC_DV"))+ ",";
            reVal = reVal +$.trim(obj_dtl.getItemFieldAt(i, "APV_NO").replace(/-/g,""));
            
        }
        
    }
    
    window.returnValue  = reVal;
    self.close();
}

/******************************************************************
 * fn_setEtcImplExcInfoInfo      파라메타로 넘어온 승인내역 설정
 * @param
 * @return
******************************************************************/
function fn_setEtcEvdcExcNo(){
    var frm = document.frm;
    var obj_dtl = gridRoot;
    var recInfo = frm.EtcEvdcExcNo.value;
    //var data     = recInfo.split("");
    var data     = recInfo.split("|"); //실습환경 파라미터값 임시 변경
    

    if( "B07006" ==  frm.EtcImplCd.value ){
        $('.btcontrol').removeClass('bt_action2-1gray');
        $('.btcontrol').addClass('bt_action2-1');
    }else{
        $('.btcontrol').removeClass('bt_action2-1');
        $('.btcontrol').addClass('bt_action2-1gray');       
    }
    
   
    var setRowData = [];
    var rowValue = null;
    for(var i=0;i<data.length;i++){
        
        if(data[i] != null && data[i] != ""){
            rowValue = null;

            var info    = data[i].split(",");
            var EVDC_DV = info[0];  //증빙구분
            var APV_NO  = info[1];  //승인번호
            rowValue = {"EVDC_DV":EVDC_DV,"APV_NO":APV_NO};
            
            setRowData[i] = rowValue;
        }
        
        
        gridData = setRowData;
        
        rMateGridSetData();
        
    }
    
}

function uf_change(obj){
    var frm = document.frm;
    var grid = gridRoot;
    
    var gcnt = getGridRowCount_rMate(grid);
    
    if( "B07006" ==  obj.value ){
        $('.btcontrol').removeClass('bt_action2-1gray');
        $('.btcontrol').addClass('bt_action2-1');
        
        uf_GridAdd();
    }else{
        $('.btcontrol').removeClass('bt_action2-1');
        $('.btcontrol').addClass('bt_action2-1gray');
    }
    
    if( "B07006" != obj.value && gcnt > 0 ){
        if( confirm('입력하신 승인번호내역을 초기화 하시겠습니까?') ){
            //그리드 초기화
            rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStr);
        }
    } 
}


</script>
<div id="body"> 
<!-- content start -->
<div id="content">
<p class="pop_text t20"></p>

<form name="frm" method="post">
    <input type="hidden" name="EtcEvdcExcNo" value="<%=EtcEvdcExcNo %>"/>
    <div class="t10 b10 pop_wh">
    
    
      <h3>기타증빙예외</h3>
      <div class="t10 b05">
            <%=ComboUtil.getComboBox("RNDB07", "EtcImplCd", "", "onchange='uf_change(this)' style='' ", EtcEvdcExcCd, ComboUtil.OPT_SEL) %>
        </div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div>
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "162", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->               
        <div class="action_bt ar" style="width:100%">
        <div class="fl">
        <a href="#dummy" onclick="uf_GridDelete();" class="btcontrol bt_action2-1 bt_action2-1gray" title="삭제"><span class="bt_sp">삭제</span></a> 
        <a href="#dummy" onclick="uf_GridAdd();" class="btcontrol bt_action2-1 bt_action2-1gray" title="추가"><span class="bt_sp1">추가</span></a> 
        </div>
        <a href="#dummy" onclick="uf_OpenerValue();" class="bt_action2-1" title="저장"><span class="bt_sp">저장</span></a>
        </div>
        <div class="t05">
    <p class="guide_bu">다음 항목에 해당하는 경우에만 기타증빙 예외로 등록 가능합니다.</p>
    <p class="guide_bu"><span class="txt_or">외자구매, 면세사업자 전자계산서, 세금계산서(개인사업자), 현금영수증, 내부시험분석의뢰(비영리 공인시험분석기관), 전자증빙번호 직접입력</span></p>
    <p class="guide_bu"><span class="txt_or">기타전자증빙번호</span> : 전자세금계산서 승인번호, 카드 승인번호<br />(전자증빙은 스캔하여 업로드)</p>
    <p class="guide_bu">기타증빙은 <span class="txt_or">집중 모니터링 대상</span>이므로 유의하시기 바랍니다.</p>

        </div>
    </div>
                
      <!-- //action bt end// -->
</form>
</div>

<!-- //content end// -->
</div>


<%@ include file="/inc/jspFooter_popup.jsp" %> 




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DateFormatter id=\"datefmt2\" formatString=\"YYYY-MM-DD\"/>\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleCell\" editable=\"true\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" editable=\"false\" />\
                <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"55\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"false\" editable=\"false\" />\
                <DataGridColumn id=\"EVDC_DV\"     dataField=\"EVDC_DV\"      headerText=\"증빙구분\"     width=\"120\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemEditor=\"ComboBoxEditor\" editorDataField=\"selectedDataField\" itemRendererDataField=\"code\" itemRenderer=\"DataProviderItem\" itemRendererDataProvider=\"[{'label':'카드','code':'C'},{'label':'전자세금계산서','code':'T'}]\" />\
                <DataGridColumn id=\"APV_NO\"      dataField=\"APV_NO\"       headerText=\"승인번호\"     width=\"120\"  visible=\"true\" sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
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
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", fn_setEtcEvdcExcNo);
        
        //data 출력 후 실행할 이벤트 등록
        gridRoot.addEventListener("dataComplete", columnBackGroundStyle);
        
        
        //그리드의 데이터 변경시 호출
        gridRoot.addEventListener("itemDataChanged", itemDataChangeHandler);
        
        

    };
    

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    // 그리드에서 수정이 일어나면 불려집니다.
    function itemDataChangeHandler(event) {
        var rowIndex = event.getRowIndex();                 // 변경된 행번호
        var columnIndex = event.getColumnIndex();       // 변경된 열번호
        var dataField = event.getDataField();               // 변경된 열의 데이타 필드
        var dataRow = gridRoot.getItemAt(rowIndex); // 변경된 데이타 레코드
        
        if("EVDC_DV" == dataField || "APV_NO" == dataField ){  // 날짜 변경 시 위치값 재조정
            dataGrid.invalidateList();
        }
        
    }
    
    //컬럼 색상변경
    function columnBackGroundStyle() {
        collection = gridRoot.getCollection();
        
        for (i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 2, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 3, 1, 1, null, 0xEDF2FE);
        }
    }

    $(document).ready(function(){
        
        // rMateGrid 초기화
        rMateGridInit();
        
    });
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



</body>
</html> 
