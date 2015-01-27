<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_01_30_0.jsp
 *   Description        : 인건비내역등록
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.02                     예기해             
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

<script type="text/javascript">
    parentFrm = window.dialogArguments;
</script>

<%
    
	String ChkAmt               = SessionUtil.getRequestValue(request, "ChkAmt");           // 사용금액
	String AgrmtSeqNo           = SessionUtil.getRequestValue(request, "AgrmtSeqNo");       // 협약일련번호
	String AgrmtInstId          = SessionUtil.getRequestValue(request, "AgrmtInstId");      // 협약기관ID
	String PmsId                = SessionUtil.getRequestValue(request, "PmsId");            // 전담기관ID
	String SbjtId               = SessionUtil.getRequestValue(request, "SbjtId");           // 과제ID
	String BzClasCd             = SessionUtil.getRequestValue(request, "BzClasCd");         // 사업분류코드
	String tObjIdx              = SessionUtil.getRequestValue(request, "tObjIdx");
	String ItxpCd               = SessionUtil.getRequestValue(request, "ItxpCd");           // 세목코드
	String UnfyMgntInstYn       = SessionUtil.getRequestValue(request, "UnfyMgntInstYn");   // 통합관리기관여부
	String PtcnRchrNm           = "선택";                                        // 참여연구원명
	String PtcnRchrKey          = "";                                          // 참여연구원콤보박스키값
	String PtcnRchrRt           = "";                                          // 참여연구원참여율
	String tmpRegNo             = "";
	
	RcmsStringBuffer insertStr  = new RcmsStringBuffer();
	String chr = (char)1 + "";

	
%>


<title>인건비내역 등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">인건비내역 등록</p>
        </div>
        <!-- //head title// --> 
    </div>


<script type="text/javascript">
/******************************************************************
 * fn_setRchrInfo        파라메타로 넘어온 인건비내역 설정
 * @param
 * @return
******************************************************************/

function fn_setRchrInfo(obj_dtl){
    var rchrInfo = parentFrm.p_rchrInfo.value;
    var data     = rchrInfo.split("|");
    var gridValue = [];
    
    for(var i=0; i<data.length; i++){
        if(data[i] != null && data[i] != ""){
            var info    =   data[i].split(",");
                            
            gridValue[i] = {
            		"STR_DT"     :String(info[0].substr(0,4) + "/" + info[0].substr(4,2) + "/" + info[0].substr(6)) //YYYYMMDD  형식을 YYYY/MM/DD 형식으로 변경
		            ,"END_DT"     :String(info[1].substr(0,4) + "/" + info[1].substr(4,2) + "/" + info[1].substr(6))
		            ,"RCHR"       :String(info[2])
		            ,"RCHR_NM"    :String(info[2])
		            ,"RES_REG_NO" :String(info[3])
		            ,"REG_NO"     :String(info[3].substr(0,6))
		            ,"PTCN_PCT"   :String(info[4])
		            ,"AMT"        :String(info[5])
            };
        }//if
    }//for

    gridData = gridValue;    //조회결과 JSON 값 가져오기
    rMateGridSetData();  //rMateGrid 구현
}
/******************************************************************
 * uf_GridAdd        그리드 로우 추가(버튼이용시)
 * @param
 * @return
******************************************************************/
function uf_GridAdd(){
    
<%
    if("B0205".equals(ItxpCd) && "Y".equals(UnfyMgntInstYn)){
%>
        alert("학생인건비는 항목을 추가/삭제 할 수 없습니다.");
        return;
<%
    }
%>
    var param   = "AgrmtSeqNo="             + "<%=AgrmtSeqNo%>";                    // 협약일련번호
    param   = param + "&AgrmtInstId="   + "<%=AgrmtInstId%>";                   // 협약기관ID
    param   = param + "&SbjtId="        + "<%=SbjtId%>";                        // 과제ID
    
    var url     = "/t01/t12/T12_01_30_2.jsp?" + param;
    
    var result  = openModalNs(url, "", "dialogWidth:800px; dialogHeight:500px; scroll:no");
    
    //modal 결과값 그리드에 세팅
    if(typeof result != "undefined"){
        if(typeof gridData == "undefined"){
            gridData = result;
            rMateGridSetData();
        }else{
            
            for(var i=0;i<result.length;i++){
                gridRoot.addItemAt(result[i]);
            }
            
            columnBackGroundStyle();    //색상변경
            
        }//if
    }//if
    
}

/******************************************************************
 * uf_GridDelete     그리드 로우 삭제
 * @param
 * @return
******************************************************************/
function uf_GridDelete(){
<%
    if("B0205".equals(ItxpCd) && "Y".equals(UnfyMgntInstYn)){
%>
        alert("학생인건비는 항목을 추가/삭제 할 수 없습니다.");
        return;
<%
    }
%>

	var selectorCol = gridRoot.getObjectById("selector");
	var selectedIndex = selectorCol.getSelectedIndices();
	
    if(selectedIndex.length < 1){
    	alert("선택된 내역이 없습니다.");
    	return;
    }
    
    
    removeItem(selectedIndex);
    

    
    
}
/******************************************************************
 * fn_SearchList     인건비내역등록내역 팝업 표시
 * @param
 * @return
******************************************************************/
function fn_SearchList(){
    var param;
    var result;
    var url;

<%
    if("B0205".equals(ItxpCd) && "Y".equals(UnfyMgntInstYn)){
%>
        alert("학생인건비는 항목을 추가/삭제 할 수 없습니다.");
        return;
<%
    }
%>

    param   = "AgrmtSeqNo="             + "<%=AgrmtSeqNo%>";                    // 협약일련번호
    param   = param + "&AgrmtInstId="   + "<%=AgrmtInstId%>";                   // 협약기관ID
    
    url     = "/t01/t12/T12_01_30_1.jsp?" + param;

    result  = openModalNs(url, "", "dialogWidth:800px; dialogHeight:615px; scroll:no");

    
    //modal 결과값 그리드에 세팅
    if(typeof result != "undefined"){
        //modal 결과값 그리드에 세팅
        if(typeof result != "undefined"){
            if(typeof gridData == "undefined"){
                gridData = result;
                rMateGridSetData();
            }else{
                
                for(var i=0;i<result.length;i++){
                    gridRoot.addItemAt(result[i]);
                }
                
                columnBackGroundStyle();    //색상변경
                
            }//if
        }//if
    }

}
/******************************************************************
 * uf_OpenerValue    부모 페이지에 인건비내역 리턴
 * @param
 * @return
******************************************************************/
function uf_OpenerValue(){
	
    var sumAmt  = 0;
    var tmp_val, reVal;
    var itxp_amt = "";

    var gridCnt = getGridRowCount_rMate();
    
    if(gridCnt <= 0){
        alert("1건 이상의 인건비내역을 등록하여 주세요.");
        return;
    }
    
    
    var rowIndex;
    var dataRow;
    
    for(var i=0; i<gridCnt; i++){ 
    	dataRow = gridRoot.getItemAt(i);
        
        var StrDt;
        var EndDt;
        
        if(typeof dataRow.STR_DT == "undefined"){
        	StrDt = 0;
        }else{
        	StrDt = dataRow.STR_DT.replace(/-/gi,"");
        	StrDt = Number(StrDt.replace(/\//gi,""));
        }
        if(typeof dataRow.END_DT == "undefined"){
            EndDt = 0;
        }else{
            EndDt = dataRow.END_DT.replace(/-/gi,"");
            EndDt = Number(EndDt.replace(/\//gi,""));
        }
    	
        
        if(0 == StrDt){
            alert("시작일을 입력하세요.");
            return;
        }
        
        if(0 == EndDt){
            alert("종료일을 입력하세요.");
            return;
        }
        
        if(StrDt > EndDt){
            alert("종료일이 시작일보다 이전 일자입니다.");
            return;
        }

        if( "" == $.trim(dataRow.RCHR) ){
            alert("연구원을 선택하세요.");
            return;
        }
        
        var ptcn_rt = dataRow.PTCN_PCT;
        if( "" == $.trim(ptcn_rt) || "0" == $.trim(ptcn_rt) ){
            alert("참여율(%)을 입력하세요.");
            return;
        }

        if( !/^(\d{1,3})(\.\d{0,2})?$/g.test(ptcn_rt) ){
            alert("참여율(%)은 숫자만 입력하세요\n(소수점 둘째자리까지 입력가능합니다.)");
            return;         
        }


        //2012.03.08 김봉민 수정 : 부분취소로 해당 비목 전체취소시에 부인건비내역 금액을 0원으로도 입력 가능하도록 수정.
        //if("0" == getCell(obj_dtl, i, "금액"))
        itxp_amt = dataRow.AMT;
        if("" == itxp_amt) {
            if("0" != itxp_amt) {
                alert("금액을 입력하세요.");
                return;
            }
        }
        if( !/^[0-9]{1,}$/g.test(itxp_amt) ){
            alert("금액은 숫자만 입력하세요" + itxp_amt);
            return;         
        }
        
        tmp_val = dataRow.RCHR + dataRow.RES_REG_NO;
        for(var j=0; j<gridCnt; j++){
        	var chkDataRow = gridRoot.getItemAt(j);
            if(i!=j && tmp_val == chkDataRow.RCHR + chkDataRow.RES_REG_NO){
                alert("연구원이 중복된건이 있습니다. 중복된 건을 삭제해 주십시오");
                return;
            }
        }
    }

    for(var i=0; i<gridCnt; i++){ 
    	dataRow = gridRoot.getItemAt(i);
        sumAmt += Number(dataRow.AMT);
    }
    
    
    if(sumAmt != "<%=ChkAmt%>" && gridCnt!= 0){
        alert("총 등록된 금액이 증빙등록된 금액과 일치하지 않습니다.");
        return;
    }
    
    reVal = "";
    for(var i=0, j=gridCnt; i<j; i++){
        if(i!=0){
            reVal = reVal + "|";
        }
        
        var StrDt;
        var EndDt;
        
        dataRow = gridRoot.getItemAt(i);
        
        StrDt = dataRow.STR_DT.replace(/-/gi,"");
        StrDt = StrDt.replace(/\//gi,"");
        
        EndDt = dataRow.END_DT.replace(/-/gi,"");
        EndDt = EndDt.replace(/\//gi,"");
        
        reVal = reVal + StrDt      + ",";
        reVal = reVal + EndDt     + ",";
        reVal = reVal + dataRow.RCHR_NM     + ",";
        reVal = reVal + dataRow.RES_REG_NO  + ",";
        reVal = reVal + dataRow.PTCN_PCT    + ",";
        reVal = reVal + dataRow.AMT;
    }
    
    
    if(typeof parentFrm.rchrAmt_0 != "undefined"){
        var today = new Date();
        try{
            parentFrm.document.getElementById("rchrAmt_" + "<%=tObjIdx%>").value = sumAmt;          
        }catch(e){
            try{
                parentFrm.rchrAmt_<%=tObjIdx%>.value = sumAmt;
            }catch(e){
                alert(e.message + today.getDate());
            }
        }
    }

    window.returnValue  = reVal;
    self.close();
}

</script>



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
                <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"선택\" width=\"55\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" editable=\"false\" />\
                <DataGridColumn id=\"STR_DT\"     dataField=\"STR_DT\"      headerText=\"시작일\"     width=\"120\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{datefmt2}\" itemEditor=\"DateEditor\" />\
                <DataGridColumn id=\"END_DT\"     dataField=\"END_DT\"      headerText=\"종료일\"     width=\"120\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{datefmt2}\" itemEditor=\"DateEditor\" />\
                <DataGridColumn id=\"RCHR\"       dataField=\"RCHR\"        headerText=\"연구원\"     width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"RCHR_NM\"    dataField=\"RCHR_NM\"     headerText=\"연구원명\"   width=\"0\"  visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"RES_REG_NO\" dataField=\"RES_REG_NO\"  headerText=\"주민번호\"   width=\"0\"  visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"REG_NO\"     dataField=\"REG_NO\"      headerText=\"생년월일\"   width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"PTCN_PCT\"   dataField=\"PTCN_PCT\"    headerText=\"참여율(%)\"  width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"AMT\"        dataField=\"AMT\"         headerText=\"금액\"       width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
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
                    <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{REG_NO}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
            
            fn_setRchrInfo(gridRoot);
            //이벤트 등록
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        
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
        
        // 수정한 필드에 따라 재호출 한다.
        if("AMT" == dataField){ //금액수정 시 합계를 재호출하여 총 금액 변경
            
        	//문자열 체크   문자열일시 true
            if( isNaN(gridRoot.getItemFieldAt(rowIndex, dataField)) ){
            	alert('금액은 숫자만 입력해주세요.');
            	gridRoot.setItemFieldAt("", rowIndex, dataField); // 값, row, id
            }
        }
        
        
        var footer = gridRoot.getObjectById("footer");
        footer.invalidateData();
        dataGrid.invalidateList();
        
    }
    
  
    //부가세변경 스타일 지정
    function columnJsStyle(item, value, column) {
        if (value && value != "")
            return { color: 0xFF0000,       backgroundColor: 0xCCCCCC    };
        return null;
    }
    
    
    //컬럼 색상변경
    function columnBackGroundStyle() {
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            alert("collection 객체를 찾을 수 없습니다");
            return;
        }
        
        for (var i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 2, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 3, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 8, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 9, 1, 1, null, 0xEDF2FE);
        }
    }

    
    // 아이템 내역 수정
    function changeItem(rowIdx, editField, selectedValue) {
        if(typeof rowIdx!="undefined") editRowIndex = rowIdx;
        if(typeof editField!="undefined") editDataField = editField;
        
        gridRoot2.setItemFieldAt(selectedValue, editRowIndex, editDataField);
    }
    
    

    
    /*
     * 부가세 변경안함 선택시
     * 국내 : 원값을 수정금액에 입력
     * 국외 : 사용금액을 공급가액으로 입력
     */
    function notChgVat(rowIndex, dataRow){
        var frm = document.frm;
        
        if( "0" == dataRow.ORGNL_SPLY_AMT && "0" == dataRow.ORGNL_ADTN_TAX ){
            if("A" == dataRow.OVRS_USE_YN){             // 국내사용
                gridRoot2.setItemFieldAt(dataRow.SPLY_PRC_AMT, rowIndex, "ORGNL_SPLY_AMT");    //수정공급가액
                gridRoot2.setItemFieldAt(dataRow.VAT_AMT, rowIndex, "ORGNL_ADTN_TAX");         //수정부가가치세액
                
            }else if("B" == dataRow.OVRS_USE_YN){       // 국외사용
                gridRoot2.setItemFieldAt(dataRow.APV_SUM, rowIndex, "ORGNL_SPLY_AMT");
                gridRoot2.setItemFieldAt("0", rowIndex, "ORGNL_ADTN_TAX");
                
            }
        }
    }


        
     // 수정 작업 결과 가져오기 (그리드에서 작업된 입력,수정,삭제 내용을 가져옵니다)
     // 데이타는 배열 형태로
     //  idx: 행번호
     //  job: 수행 작업 (I:입력, U:수정, D:삭제)
     //  data: 행의 자료
     // 를 가지고 있으며 삭제가 먼저 오도록 정렬되어 있습니다.
     function getChangedData() {
         var changedData = gridRoot2.getChangedData();
         if (changedData.length == 0)
             alert("변경된 자료가 없습니다");
         else {
             for (var i = 0; i < changedData.length; i++)
                 alert("index:"+changedData[i].idx+"\n"+"job:"+changedData[i].job+"\n"+"data:"+JSON.stringify(changedData[i].data));
         }
     }

    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->






<div id="body">
  <!-- content start -->
  <form name="frm" method="post">
  <div id="content">
    <div class="t20"></div>
    <h3>인건비내역등록</h3>
    <!-- 총건수/인쇄 저장 버튼 start -->
    <div class="ar b05">
    <li>
    <a href="#dummy" onclick="uf_GridAdd()"><img src="/bt/bt_plus.gif" alt="추가하기"/></a>
    <a href="#dummy" onclick="uf_GridDelete()"><img  src="/bt/bt_minus.gif" alt="빼기"/></a>
    </div>
    <!-- //총건수/인쇄 저장 버튼 end// -->
    
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div>
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "335", "#FFFFFF", "transparent");
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

    
    <!-- action bt start -->
    <div class="pop_action_bt ar">
      <div class="fl"><a href="#dummy" onclick="fn_SearchList();" class="bt_action8-01" title="인건비등록내역"><span class="bt_sp">인건비등록내역</span></a></div>
      <a href="#dummy" onclick="uf_OpenerValue();" class="bt_action2-01" title="저장"><span class="bt_sp">저장</span></a> </div>
    <!-- //action bt end// -->
    <div class="guide_bu">시작일,종료일은 해당 지급건에 대한 기간입니다.</div>
  </div>
  </form>
</div>



    

<%@ include file="/inc/jspFooter_popup.jsp" %> 


<script type="text/javascript">
$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();

});
</script>




</body>
</html> 
