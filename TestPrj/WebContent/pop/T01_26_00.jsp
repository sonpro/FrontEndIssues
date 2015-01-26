<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_26_00.jsp
 *   Description        : 정산서류등록
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.16                     예기해             
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
String hmpwRoleDv   = SessionUtil.getRequestValue(request, "hmpwRoleDv");
String rcmsGrpCd    = SessionUtil.getRequestValue(request, "rcmsGrpCd");
String pmsId        = SessionUtil.getRequestValue(request, "pmsId");
String sbjtId       = SessionUtil.getRequestValue(request, "sbjtId");
String agrmtSeqNo   = SessionUtil.getRequestValue(request, "agrmtSeqNo");
String agrmtInstId  = SessionUtil.getRequestValue(request, "agrmtInstId");
String sacSn        = SessionUtil.getRequestValue(request, "sacSn");

String sacPrgrSt = SessionUtil.getRequestValue(request, "sacPrgrSt");




String cmadId = "D201302033016381";
%>


<title>정산서류 등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">정산서류 등록</p>
        </div>
        <!-- //head title// --> 
    </div>





<script type="text/javaScript">    
    

    /******************************************************************
     * edmsReturnAction     EDMS 반환값그리드셋팅
     * @param
     * @return
    ******************************************************************/
    function edmsReturnAction() {
        
        var dockeyNo, docname, dockey, methodNameNo;
        var frm = document.frm;

        docKeyNo     = frm.dockeyNo.value;
        docKey       = frm.docKey.value;
        methodNameNo = frm.methodName.value;
        docName      = (frm.docName.value).replace(/=/gi,"-").replace(/&/gi,"n");
        
        
        if("" != dockey){
            if (methodNameNo == "delete"){
            	gridRoot.setItemFieldAt("", rMateGrid_rowIndex, "EDMS_DOC_ID");     // 값, row, id EDMS문서ID
            	gridRoot.setItemFieldAt("미등록", rMateGrid_rowIndex, "DOC_REG_YN");     // 값, row, id  문서등록여부
            	
            } else {
            	gridRoot.setItemFieldAt(docKey, rMateGrid_rowIndex, "EDMS_DOC_ID");     // 값, row, id  EDMS문서ID
                gridRoot.setItemFieldAt("등록", rMateGrid_rowIndex, "DOC_REG_YN");     // 값, row, id  문서등록여부
                
            }
        }
    //  alert("EDMS문서ID : " + getCell(obj, obj.FocusedRecordIndex, "EDMS문서ID"));

    }

    /******************************************************************
     * fn_reg   정산서류등록 저장   
     * @param
     * @return
    ******************************************************************/
    function fn_reg() {
        
        var frm = document.frm;

        if(!confirm("저장하시겠습니까?")){return;}          
        
        var gridRowCnt = getGridRowCount_rMate();
        
        for(var i=0; i<gridRowCnt; i++){
        	var dataRow = gridRoot.getItemAt(i);
            get2post(frm, "DocTypDv="     + dataRow.DOC_TYP_DV); //문서유형구분
            get2post(frm, "EdmsDocId="    + dataRow.EDMS_DOC_ID);   //EDMS문서ID
            get2post(frm, "OldEdmsDocId=" + dataRow.OLD_EDMS_DOC_ID); //이전EDMS문서ID
            get2post(frm, "DetCmadId="    + dataRow.ADD_DOC_ID); //첨부문서ID
        }

        get2post(frm, "sacSn=<%=sacSn%>");
        get2post(frm, "cmadId=<%=cmadId%>");
        get2post(frm, "pmsId=<%=pmsId%>");
        get2post(frm, "sbjtId=<%=sbjtId%>");
        get2post(frm, "agrmtSeqNo=<%=agrmtSeqNo%>");
        get2post(frm, "agrmtInstId=<%=agrmtInstId%>");
        
        
        
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    alert("저장되었습니다.");
                    reset_submit();
                    window.close();
                }
                , 1000);   // 1초후 실행 1000 = 1초
                
                
    }
    
    
    /******************************************************************
     * fn_File  정산서류등록 파일
     * @param
     * @return
    ******************************************************************/
    var rMateGrid_rowIndex = 0;
    function fn_File(dataField, dataRow, rowIndex) {
    	rMateGrid_rowIndex = rowIndex;
        var mode;
        var dockey;
        var DocTypDv;
        var frm            = document.frm;
        var gridRec        = rowIndex;
        var hmpwRoleDvEdms = "<%=hmpwRoleDv%>";
        var rcmsGrpCdEdms  = "<%=rcmsGrpCd%>";
        var sacPrgrSt      = "<%=sacPrgrSt%>";
        var corcLimtYn     = dataRow.UDT_LMT_YN;    //수정제한여부
        
        if("MR042" == rcmsGrpCdEdms || "MR043" == rcmsGrpCdEdms || "MR023" == rcmsGrpCdEdms){
            hmpwRoleDvEdms = "03";
        }
        
        if("DOC_REG" == dataField) {    //문서등록
            // 2012.03.23 태동현
            // 정산상태에 따른 문서 등록/수정/삭제 처리를 위해 추가
            if("1" == sacPrgrSt || "2" == sacPrgrSt || "3" == sacPrgrSt || "5" == sacPrgrSt){
                alert("보고서제출이 완료된 이후에는 수정이 불가능합니다.");
                return;
            }
            // 2012.03.23 태동현 END
            
            if("등록" == dataRow.DOC_REG_YN) {    //문서등록여부
                
                // 수정 제한 여부가 Y 인 경우 재정산 등 정산정보가 변경된 경우임.
                if (corcLimtYn == "Y") {
                    
                    alert("정산완료 후 정산 문서변경 시 에는 정산문서를 새로 등록하셔야 합니다. [문서보기]에서 문서를 저장하여 등록하시면 됩니다.");
                    
                    mode = "create";
                    //연계키생성( PMSID + 과제ID + 협약일련번호 + 협약기관 + 사용일 + 증빙구분 + 비목 + 세목 + 세세목)
                    dockey =  ";"+"<%=sbjtId%>"+";"+"<%=agrmtSeqNo%>"+";"+"<%=agrmtInstId%>"+";;;;;";
                    frm.docKey.value = dockey;
                    DocTypDv = dataRow.DOC_TYP_DV;    //문서유형구분;
                    
                } else {
                    
                    mode     = "update";
                    dockey   = dataRow.EDMS_DOC_ID;    //EDMS문서ID
                    
                    DocTypDv = dataRow.DOC_TYP_DV;    //문서유형구분;
                }
            } else {
                mode = "create";
                //연계키생성( PMSID + 과제ID + 협약일련번호 + 협약기관 + 사용일 + 증빙구분 + 비목 + 세목 + 세세목)
                dockey =  ";"+"<%=sbjtId%>"+";"+"<%=agrmtSeqNo%>"+";"+"<%=agrmtInstId%>"+";;;;;";
                frm.docKey.value = dockey;
                DocTypDv = dataRow.DOC_TYP_DV;    //문서유형구분;
            }
        } 
        else if ("DOC_VIEW" == dataField) { //문서보기
            
            mode     = "get";
            dockey   = dataRow.EDMS_DOC_ID;    //EDMS문서ID
            DocTypDv = dataRow.DOC_TYP_DV;    //문서유형구분;
            
            if("미등록" == dataRow.DOC_REG_YN){ //문서등록여부
                mode    = "blank";
            }      
            

        } 
        else if ("DOC_DEL" == dataField) { //문서삭제
            // 2012.03.23 태동현 START
            // 정산상태에 따른 문서 등록/수정/삭제 처리를 위해 추가
            if("1"==sacPrgrSt || "2"==sacPrgrSt || "3"==sacPrgrSt || "5"==sacPrgrSt){
                alert("보고서제출이 완료된 이후에는 수정이 불가능합니다.");
                return;
            }
            // 2012.03.23 태동현 END
            
            if("등록" == dataRow.DOC_REG_YN){ //문서등록여부
                mode    = "delete";
                dockey  = dataRow.EDMS_DOC_ID;    //EDMS문서ID            
                DocDvCd = dataRow.DOC_TYP_DV;    //문서유형구분;
                if(!confirm("삭제하시겠습니까?")){return;}
            }       
        }   
    
        //EDMS 호출   
        edmsUploadFileNewAcrt("frm", mode, dockey, "SMTEST" , hmpwRoleDvEdms , DocTypDv,"/pop/file_popup.jsp?mode="+mode);

    }
    
</script>



        <div id="body" style="margin:-48px 0 -25px;">
            <form name="frm" method="post">
            <input type="hidden" name="docKey"      value="" /> <!-- 생성된EDMS_dockey     --> 
            <input type="hidden" name="dockeyNo"    value="" /> <!-- 선택된 증빙테이블키     -->
            <input type="hidden" name="docName"     value="" /> <!-- 선택된 증빙테이블키     -->
            <input type="hidden" name="methodName"  value="" /> <!-- 메소드명               -->    
            <input type="hidden" name="attr98"      value="" /> <!-- 리턴결과값(등록파일명)   -->
            <input type="hidden" name="attr99"      value="" /> <!-- 리턴결과값(등록파일갯수)  -->
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>정산서류등록</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
            <!-- 그리드 Start -->
            <div id="gridDiv">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "280", "#FFFFFF", "transparent");
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
                    <a href="#" class="bt_action2-01" title="저장" onclick="fn_reg(); return false;"><span class="bt_sp">저장</span></a> 
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
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"DOC_DV\"             dataField=\"DOC_DV\"          headerText=\"문서구분\"       width=\"380\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DOC_REG_YN\"         dataField=\"DOC_REG_YN\"      headerText=\"문서등록여부\"   width=\"85\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DOC_REG\"            dataField=\"DOC_REG\"         headerText=\"문서등록\"       width=\"65\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" />\
            <DataGridColumn id=\"DOC_VIEW\"           dataField=\"DOC_VIEW\"        headerText=\"문서보기\"       width=\"66\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" />\
            <DataGridColumn id=\"DOC_DEL\"            dataField=\"DOC_DEL\"         headerText=\"문서삭제\"       width=\"66\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" />\
            <DataGridColumn id=\"DOC_TYP_DV\"         dataField=\"DOC_TYP_DV\"      headerText=\"문서유형구분\"   width=\"85\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EDMS_DOC_ID\"        dataField=\"EDMS_DOC_ID\"     headerText=\"EDMS문서ID\"     width=\"85\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OLD_EDMS_DOC_ID\"    dataField=\"OLD_EDMS_DOC_ID\" headerText=\"이전EDMS문서ID\" width=\"85\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ADD_DOC_ID\"         dataField=\"ADD_DOC_ID\"      headerText=\"첨부문서ID\"     width=\"85\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"UDT_LMT_YN\"         dataField=\"UDT_LMT_YN\"      headerText=\"수정제한여부\"   width=\"85\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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

        
        var itemClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var columns = dataGrid.getColumns();
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
            
            //DOC_REG DOC_VIEW DOC_DEL
            if ("DOC_REG" == dataField || "DOC_VIEW" == dataField || "DOC_DEL" == dataField) {
                fn_File(dataField, dataRow, rowIndex);
            }
            
            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            dataGrid.addEventListener("itemClick", itemClickHandler); //더블클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", SetData);   //rMateGrid 레이아웃 출력 후 조회시작
        
        gridRoot.addEventListener("dataComplete", columnBackGroundStyle);   //rMateGrid 레이아웃 출력 후 조회시작

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    //컬럼 색상변경
    function columnBackGroundStyle() {
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            alert("collection 객체를 찾을 수 없습니다");
            return;
        }
        for (i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 3, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 4, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 5, 1, 1, null, 0xEDF2FE);
        }
    }
    
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->

<script type="text/javascript">

function SetData() {
    
	

    var insertStr   = "1359731104894059";
    var insertStr1  = "1384602475498067";
    var insertStr2  = "";
    var insertStr3  = "";
    var insertStr4  = "";
    var insertStr5  = "";
    var insertStr6  = "";
    var insertStr7  = "1359731104894064";
    var insertStr8  = "";
    var insertStr9  = "";
    var insertStr10 = "";
    var insertStr20 = "D201302033016382";
    var insertStr21 = "D201311203022295";
    var insertStr22 = "";
    var insertStr23 = "";
    var insertStr24 = "";
    var insertStr25 = "";
    var insertStr26 = "";
    var insertStr27 = "D201302033016389";
    var insertStr28 = "";
    var insertStr29 = "";
    var insertStr230 = "";
    var insertStr30 = "Y";
    var insertStr31 = "N";
    var insertStr32 = "";
    var insertStr33 = "";
    var insertStr34 = "";
    var insertStr35 = "";
    var insertStr36 = "";
    var insertStr37 = "N";
    var insertStr38 = "";
    var insertStr39 = "";
    var insertStr40 = "";
        

        
        
        var edmsDocId_arr = new Array();    //EDMS문서ID
        edmsDocId_arr.push(insertStr);
        edmsDocId_arr.push(insertStr1);
        edmsDocId_arr.push(insertStr2);
        edmsDocId_arr.push(insertStr3);
        edmsDocId_arr.push(insertStr4);
        edmsDocId_arr.push(insertStr5);
        edmsDocId_arr.push(insertStr6);
        edmsDocId_arr.push(insertStr7);
        edmsDocId_arr.push(insertStr8);
        edmsDocId_arr.push(insertStr9);
        edmsDocId_arr.push(insertStr10);
        
        var docRegYn_arr = new Array();
        
        
        if(""==insertStr){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }

        if(""==insertStr1){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }

        if(""==insertStr2){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }

        if(""==insertStr3){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }

        if(""==insertStr4){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }

        if(""==insertStr5){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }

        if(""==insertStr6){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }

        if(""==insertStr7){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }
        
        if(""==insertStr8){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }
        
        if(""==insertStr9){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }

        if(""==insertStr10){
            docRegYn_arr.push("미등록");
        }else{
            docRegYn_arr.push("등록");
        }
        
        var preEdmsDocId_arr = new Array(); //이전EDMS문서ID
        preEdmsDocId_arr.push(insertStr);
        preEdmsDocId_arr.push(insertStr1);
        preEdmsDocId_arr.push(insertStr2);
        preEdmsDocId_arr.push(insertStr3);
        preEdmsDocId_arr.push(insertStr4);
        preEdmsDocId_arr.push(insertStr5);
        preEdmsDocId_arr.push(insertStr6);
        preEdmsDocId_arr.push(insertStr7);
        preEdmsDocId_arr.push(insertStr8);
        preEdmsDocId_arr.push(insertStr9);
        preEdmsDocId_arr.push(insertStr10);
        
        
        var addDocId_arr = new Array(); //첨부문서ID
        addDocId_arr.push(insertStr20);
        addDocId_arr.push(insertStr21);
        addDocId_arr.push(insertStr22);
        addDocId_arr.push(insertStr23);
        addDocId_arr.push(insertStr24);
        addDocId_arr.push(insertStr25);
        addDocId_arr.push(insertStr26);
        addDocId_arr.push(insertStr27);
        addDocId_arr.push(insertStr28);
        addDocId_arr.push(insertStr29);
        addDocId_arr.push(insertStr230);
        
        
        var udtLmtYn_arr = new Array(); //수정제한여부
        udtLmtYn_arr.push(insertStr30);
        udtLmtYn_arr.push(insertStr31);
        udtLmtYn_arr.push(insertStr32);
        udtLmtYn_arr.push(insertStr33);
        udtLmtYn_arr.push(insertStr34);
        udtLmtYn_arr.push(insertStr35);
        udtLmtYn_arr.push(insertStr36);
        udtLmtYn_arr.push(insertStr37);
        udtLmtYn_arr.push(insertStr38);
        udtLmtYn_arr.push(insertStr39);
        udtLmtYn_arr.push(insertStr40);
        
    
        
        
        var cnt = 0;
        var rowCnt = 0;
        var gridValue = [];
        gridValue[cnt++] = {"DOC_DV":"수행기관 현물출자 확인서(현물 출자한 경우)","DOC_TYP_DV":"A02S01","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"외부 참여연구원 기관장확인서(외부참여연구원이 있는경우)","DOC_TYP_DV":"A02S02","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"신규 참여연구원 채용확인서(신규 참여연구원을 채용한 경우)","DOC_TYP_DV":"A02S03","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"참여연구원 현황표(연구원명, 참여기간, 참여율) 및 급여대장, 참여연구원별 근로소득원천징수영수증","DOC_TYP_DV":"A02S04","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"내부여비지급기준(여비지급에 대해 연구기관 자체기준을 적용한 경우)","DOC_TYP_DV":"A02S05","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"야근식대, 전문가활용비, 원고료 등에 대한 관련 내부규정(야근식대, 전문가활용비, 원고료 등의 지급에 대해 연구기관 자체기준을 적용한경우)","DOC_TYP_DV":"A02S06","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"전담기관으로부터 접수한 협약변경 승인 공문(협약변경 승인 사항이 있는 경우)","DOC_TYP_DV":"A02S07","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"협약변경승인사항(이월금신청내역)","DOC_TYP_DV":"A02S08","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"연구비 인증기관인 경우 인증기관 증명문서 및 자체 정산결과 내부 결재 공문","DOC_TYP_DV":"A02S09","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"학생인건비 통합관리기관인 경우 통합관리기관 증명문서","DOC_TYP_DV":"A02S10","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"기타, 사업비 정산(상시점검)시 필요하다고 판단하는 문서(사업계획서 등)","DOC_TYP_DV":"A02S99","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"문서등록","DOC_VIEW":"문서보기","DOC_DEL":"문서삭제","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;

        
        
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
       

}

</script>

<script type="text/javascript">

$(document).ready(function() {
    
    // rMateGrid 초기화
    rMateGridInit();
    
});  


</script>

</body>
</html> 
