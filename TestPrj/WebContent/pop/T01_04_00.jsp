<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_04_00.jsp
 *   Description        : 비목선택팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.15                     예기해             
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
String pChkIdx              = SessionUtil.getRequestValue(request, "pChkIdx");              // 이벤트 Idx
String pObjNm               = SessionUtil.getRequestValue(request, "pObjNm");               // 그리드명
String pSpotUsePossItxpYn   = SessionUtil.getRequestValue(request, "pSpotUsePossItxpYn");   // 현금구분\

String pPlanBizDvCd         = SessionUtil.getRequestValue(request, "pPlanBizDvCd");         // 현금구분
String pAgrmtSeqNo         = SessionUtil.getRequestValue(request, "pAgrmtSeqNo");         // 프로젝트 번호

if( "".equals(pObjNm) ){
    pObjNm = "xgrid_itxp";
}


//사업명
String sbjtNm = "";
//select box 생성
String strSelBox1 = "";
String strSelBox2 = "";
String strSelBox3 = "";

    //1. 신규과제
	if("G00000000000001".equals(pAgrmtSeqNo)){
	    sbjtNm = "RCMS 실습";
	    strSelBox1 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0206\" >연구과제추진비</option><option value=\"B0203\" >연구수당</option><option value=\"B0201\" >연구시설·장비 및 재료비</option><option value=\"B0202\" >연구활동비</option><option value=\"B0204\" >인건비</option></select>";
	    strSelBox2 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0301\" >간접비</option><option value=\"B0206\" >연구과제추진비</option><option value=\"B0203\" >연구수당</option><option value=\"B0201\" >연구시설·장비 및 재료비</option><option value=\"B0202\" >연구활동비</option><option value=\"B0204\" >인건비</option></select>";
	    strSelBox3 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ></select>";
    //2. 진행과제
	}else if("G00000000000002".equals(pAgrmtSeqNo)){
        sbjtNm = "RCMS 실습";
        strSelBox1 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0206\" >연구과제추진비</option><option value=\"B0203\" >연구수당</option><option value=\"B0201\" >연구시설·장비 및 재료비</option><option value=\"B0202\" >연구활동비</option><option value=\"B0204\" >인건비</option></select>";
        strSelBox2 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0301\" >간접비</option><option value=\"B0206\" >연구과제추진비</option><option value=\"B0203\" >연구수당</option><option value=\"B0201\" >연구시설·장비 및 재료비</option><option value=\"B0202\" >연구활동비</option><option value=\"B0204\" >인건비</option></select>";
        strSelBox3 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style=\"width:150px;\" onchange=\"uf_search();\"   ></select>";
    //3. 정산과제(보고서 미제출)
	}else if("G00000000000003".equals(pAgrmtSeqNo)){
        sbjtNm = "RCMS 실습";
        strSelBox1 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0206\" >연구과제추진비</option><option value=\"B0203\" >연구수당</option><option value=\"B0201\" >연구시설·장비 및 재료비</option><option value=\"B0202\" >연구활동비</option><option value=\"B0204\" >인건비</option></select>";
        strSelBox2 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0301\" >간접비</option><option value=\"B0206\" >연구과제추진비</option><option value=\"B0203\" >연구수당</option><option value=\"B0201\" >연구시설·장비 및 재료비</option><option value=\"B0202\" >연구활동비</option><option value=\"B0204\" >인건비</option></select>";
        strSelBox3 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style=\"width:150px;\" onchange=\"uf_search();\"   ></select>";
    //4. 정산과제(보고서 제출 완료)
    }else if("G00000000000004".equals(pAgrmtSeqNo)){
    	sbjtNm = "RCMS 실습";
    	strSelBox1 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0206\" >연구과제추진비</option><option value=\"B0203\" >연구수당</option><option value=\"B0201\" >연구시설·장비 및 재료비</option><option value=\"B0202\" >연구활동비</option><option value=\"B0204\" >인건비</option></select>";
        strSelBox2 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0301\" >간접비</option><option value=\"B0206\" >연구과제추진비</option><option value=\"B0203\" >연구수당</option><option value=\"B0201\" >연구시설·장비 및 재료비</option><option value=\"B0202\" >연구활동비</option><option value=\"B0204\" >인건비</option></select>";
        strSelBox3 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style=\"width:150px;\" onchange=\"uf_search();\"   ></select>";
    	
    }


%>


<title>비목 선택 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">비목 선택</p>
        </div>
        <!-- //head title// --> 
    </div>


<script type="text/javascript">
var seqNo = "<%=pAgrmtSeqNo%>";
var chkIdx = "<%=pChkIdx%>";

    function uf_search(){
        var frm = document.frm;

        var itxpCd = $("#DtlsItxpCd").val();

        if(!itxpCd || typeof itxpCd == "undefined"){ return; }

        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                    setData(itxpCd);
                }
                , 1000);   // 1초후 실행 1000 = 1초
    }


    

    
    function go_insert(){
        //그리드 선택 체크
        selectorColumn = gridRoot.getObjectById("selector");
        if(selectorColumn.getSelectedIndex() < 0){ 
            alert("선택된 비목 내역이 없습니다.");
            return; 
        }
        
        //선택된 row의 값 체크
        var rowIndex = selectorColumn.getSelectedIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        
        uf_insert(dataRow);
    }

    function uf_insert(dataRow){
        var obj = gridRoot;
        
        var tObj = opener.gridRoot;
        
        if(!chkGridSelectedCount_rMate(obj)) return false;

        
        selectorColumn = obj.getObjectById("selector");
        
        //부모창의 선택된 row 값
        var openerDataRow = tObj.getItemAt(chkIdx);
        var openerSelectorColumn = tObj.getObjectById("selector");
        var openerCheckColumn = openerSelectorColumn.getSelectedIndices();
        
        
        openerDataRow.DTLS_ITXP_CD = dataRow.DTLS_ITXP_CD;
        openerDataRow.DTLS_ITXP_NM = dataRow.DTLS_ITXP_NM;
        openerDataRow.SUB_DTLS_ITXP_CD = dataRow.SUB_DTLS_ITXP_CD;
        openerDataRow.SUB_DTLS_ITXP_NM = dataRow.SUB_DTLS_ITXP_NM;
        tObj.setItemAt(openerDataRow, chkIdx);
        
        openerSelectorColumn.setSelectedIndices(openerCheckColumn);
        //그리드 값 세팅 시 적용된 색상이 사라지므로 다시 색상을 적용한다.
        opener.columnBackGroundStyle(); //색상 적용.
        opener.uf_sbjt_itxp_trn(tObj , "<%=pSpotUsePossItxpYn%>");
        window.close(); 
    }
    
    
    
</script>





        <div id="body"> 
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>비목선택</h3>
                <!-- 사업명 start -->
                <form name="frm" method="post">
                <input type="hidden" name="SpotUsePossItxpYn" value="<%=pSpotUsePossItxpYn%>" />
                <div class="t10 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="비목선택" class="tbl_type02">
                    <caption>비목선택</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">사업명</th>
                        <td colspan="2" class="ll"><%=sbjtNm%></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //사업명 end// --> 
                <!-- 검색단 start -->
                <div class="pop_search">
                    <div class="pop_search_boxt"></div>
                    <div class="pop_search_boxc">
                        <fieldset>
                            <legend>비목조회</legend>
                            <table width="680" summary="비목조회" class="pop_tbl_search">
                            <caption>비목조회</caption>
                            <colgroup>
                                <col width="12%" />
                                <col width="*" />
                            </colgroup>
                            <tbody>
                            <tr>
                                <th scope="col">세목명</th>
                                <td>
<%
                                if( "Y".equals(pSpotUsePossItxpYn) ){
                                    out.print(strSelBox1);
                                }else{
                                    if("".equals(pPlanBizDvCd)){
                                    	out.print(strSelBox2);
                                    }else{
                                    	out.print(strSelBox3);
                                    }
                                }
%>
                                </td>
                            </tr>
                            </tbody>
                            </table>
                        </fieldset>
                    </div>
                    <div><img src="/pop/search_box6.gif" alt=" "/></div>
                </div>
                <div class="cb"></div>
                <!-- //검색단 end// --> 
                <!-- 조회 버튼 start -->
                <div class="pop_search_bt1">
                    <a href="#dummy" onclick="uf_search(); return false;" class="bt_search" title="조회"></a>
                </div>
                <!-- //조회 버튼 end// --> 
<!-- *************************  rMateGrid ************************* -->
	            <div class="t25"></div>
	            <!-- 그리드 Start -->
	            <div id="gridDiv">
	                <script>
	                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "255", "#FFFFFF", "transparent");
	                </script>
	            </div>
	            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->
                
                <!-- action bt start -->
                <div class="pop_action_bt">
                    <a href="dummy" onclick="go_insert(); return false;" class="bt_action2-01" title="선택"><span class="bt_sp">선택</span></a>
                </div>
                <!-- //action bt end// -->
                </form> 
            </div>
        </div>



<%@ include file="/inc/jspFooter_popup.jsp" %> 






<script type="text/javascript">

$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();
    //rMateGrid의 그리드 세팅 시 gridInit() 호출함.

});
</script>



<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();
    //rMateGrid의 그리드 세팅 시 gridInit() 호출함.

});
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\"                        dataField=\"\"                      itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\"        dataField=\"selector\"              headerText=\"선택\"            width=\"50\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"DTLS_ITXP_CD\"            dataField=\"DTLS_ITXP_CD\"          headerText=\"세부비목코드\"    width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"            dataField=\"DTLS_ITXP_NM\"          headerText=\"세부비목\"        width=\"300\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"        dataField=\"SUB_DTLS_ITXP_CD\"      headerText=\"세세목코드\"      width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"        dataField=\"SUB_DTLS_ITXP_NM\"      headerText=\"세세목\"          width=\"330\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
            
            uf_insert(dataRow);
            
        };
        
        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
            selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //이벤트 등록
            dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
            dataGrid.addEventListener("itemClick", itemClickHandler); //더블클릭 이벤트
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", uf_search);   //rMateGrid 레이아웃 출력 후 조회시작

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->


<script type="text/javascript">
var cnt = 0;
function setGridData(dtlsItxpCd){
	
    try{
        
        var gridValue = [];
        cnt = 0;
        
        if(!seqNo) return;
        
        if("B0101" == dtlsItxpCd){    //내부인건비
        	
        	//gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"내부인건비","SUB_DTLS_ITXP_CD":"B0101001","DTLS_ITXP_NM":"내부인건비","DTLS_ITXP_CD":"B0101"};
        
        }else if("B0102" == dtlsItxpCd){    //외부인건비
        	
        	//gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"외부인건비","SUB_DTLS_ITXP_CD":"B0102001","DTLS_ITXP_NM":"외부인건비","DTLS_ITXP_CD":"B0102"};
        	
        }else if("B0201" == dtlsItxpCd){    //연구시설·장비 및 재료비
        	
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구시설·장비운영비","SUB_DTLS_ITXP_CD":"B0201004","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구시설·장비사용비","SUB_DTLS_ITXP_CD":"B0201021","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"건물임차비","SUB_DTLS_ITXP_CD":"B0201010","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"시험설비제작비","SUB_DTLS_ITXP_CD":"B0201020","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"시험분석료","SUB_DTLS_ITXP_CD":"B0201016","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"시약·재료구입비","SUB_DTLS_ITXP_CD":"B0201015","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"부지임차비","SUB_DTLS_ITXP_CD":"B0201008","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"부지조성비","SUB_DTLS_ITXP_CD":"B0201007","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구시설·장비설치비","SUB_DTLS_ITXP_CD":"B0201002","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"부지매입비","SUB_DTLS_ITXP_CD":"B0201006","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구시설·장비구입비","SUB_DTLS_ITXP_CD":"B0201001","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"시작품제작비","SUB_DTLS_ITXP_CD":"B0201018","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"건축비","SUB_DTLS_ITXP_CD":"B0201005","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구시설·장비임차비","SUB_DTLS_ITXP_CD":"B0201003","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"시제품제작비","SUB_DTLS_ITXP_CD":"B0201019","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"건물구입비","SUB_DTLS_ITXP_CD":"B0201009","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"전산처리·관리비","SUB_DTLS_ITXP_CD":"B0201017","DTLS_ITXP_NM":"연구시설·장비 및 재료비","DTLS_ITXP_CD":"B0201"};
        
        }else if("B0202" == dtlsItxpCd ){ //연구활동비
                        
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"협의회 운영비","SUB_DTLS_ITXP_CD":"B0202044","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"네트워크 운영비","SUB_DTLS_ITXP_CD":"B0202043","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"정보DB 및 네트워크 사용료","SUB_DTLS_ITXP_CD":"B0202035","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"통역료","SUB_DTLS_ITXP_CD":"B0202029","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"복사비","SUB_DTLS_ITXP_CD":"B0202005","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인쇄비","SUB_DTLS_ITXP_CD":"B0202004","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"야근식대","SUB_DTLS_ITXP_CD":"B0202037","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"국내여비","SUB_DTLS_ITXP_CD":"B0202001","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"컨설팅비","SUB_DTLS_ITXP_CD":"B0202034","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"기술정보수집비","SUB_DTLS_ITXP_CD":"B0202019","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"비품구입비","SUB_DTLS_ITXP_CD":"B0202013","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"특허정보조사비","SUB_DTLS_ITXP_CD":"B0202033","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"도서·문헌구입비","SUB_DTLS_ITXP_CD":"B0202020","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"공공요금·세금","SUB_DTLS_ITXP_CD":"B0202010","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"기술도입비","SUB_DTLS_ITXP_CD":"B0202032","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"속기료","SUB_DTLS_ITXP_CD":"B0202030","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"세미나개최비","SUB_DTLS_ITXP_CD":"B0202023","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"회의비","SUB_DTLS_ITXP_CD":"B0202021","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"전문가활용비","SUB_DTLS_ITXP_CD":"B0202014","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"수수료","SUB_DTLS_ITXP_CD":"B0202011","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"국외여비","SUB_DTLS_ITXP_CD":"B0202002","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구인력활용비","SUB_DTLS_ITXP_CD":"B0202038","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"원고료","SUB_DTLS_ITXP_CD":"B0202028","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"사무용품비","SUB_DTLS_ITXP_CD":"B0202012","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"세부과제관리비","SUB_DTLS_ITXP_CD":"B0202036","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"학회·세미나참가비","SUB_DTLS_ITXP_CD":"B0202024","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"교육훈련비","SUB_DTLS_ITXP_CD":"B0202022","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"마케팅홍보비","SUB_DTLS_ITXP_CD":"B0202042","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"기업지원비","SUB_DTLS_ITXP_CD":"B0202041","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연계활동비","SUB_DTLS_ITXP_CD":"B0202040","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"전문인력양성비","SUB_DTLS_ITXP_CD":"B0202039","DTLS_ITXP_NM":"연구활동비","DTLS_ITXP_CD":"B0202"};
        
        }else if("B0203" == dtlsItxpCd){    //연구수당
            
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구수당","SUB_DTLS_ITXP_CD":"B0203001","DTLS_ITXP_NM":"연구수당","DTLS_ITXP_CD":"B0203"};
            
        }else if("B0204" == dtlsItxpCd){    //인건비
            
            gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"인건비","SUB_DTLS_ITXP_CD":"B0204001","DTLS_ITXP_NM":"인건비","DTLS_ITXP_CD":"B0204"};
            
        }else if("B0206" == dtlsItxpCd){    //연구과제추진비
            
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_CD":"B0206006","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0206"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"회의비","SUB_DTLS_ITXP_CD":"B0206004","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0206"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"국내여비","SUB_DTLS_ITXP_CD":"B0206001","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0206"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"사무용품비","SUB_DTLS_ITXP_CD":"B0206002","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0206"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"야근식대","SUB_DTLS_ITXP_CD":"B0206005","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0206"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"연구환경유지비","SUB_DTLS_ITXP_CD":"B0206003","DTLS_ITXP_NM":"연구과제추진비","DTLS_ITXP_CD":"B0206"};
            
        }else if("B0301" == dtlsItxpCd){    //간접비
            
            gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"간접비","SUB_DTLS_ITXP_CD":"B0301001","DTLS_ITXP_NM":"간접비","DTLS_ITXP_CD":"B0301"};
            
        }
                
    }finally{
    	
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
        
    }
}

function setData(dtlsItxpCd){
	if(!dtlsItxpCd || typeof dtlsItxpCd == "undefined") return false;
	
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        setGridData(dtlsItxpCd); //Insert Grid
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
    }
    
}

function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}
</script>

</body>
</html> 
