<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_10.jsp
 *   Description        : 카드결제비목내역상세조회
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.09                     예기해             
 *
 *  @author     예기해
 *  @Since      2014.01.09
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

        String AgrmtInstId                      = SessionUtil.getRequestValue(request,"AgrmtInstId");
        String AgrmtSeqNo                       = SessionUtil.getRequestValue(request,"AgrmtSeqNo");
        String ButrId                           = SessionUtil.getRequestValue(request,"ButrId");
        String TrscDt                           = FormatUtil.setDelim(SessionUtil.getRequestValue(request,"TrscDt"),"9999-99-99");                          // 거래일자
        String BuyClctNo                        = "";       // 매입승인번호     
        String CrdNo                            = "";       // 카드번호         
        String CrdApvDt                         = SessionUtil.getRequestValue(request,"TrscDt");       // 승인일자         
        String SplrCoNm                         = SessionUtil.getRequestValue(request,"SplrCoNm");       // 가맹점명         
        String OvrsUseDv                        = "";       // 국내외구분       
        String ClmTotlAmt                       = SessionUtil.getRequestValue(request,"TrnsAmt");       // 청구총금액       
        String SplyAmt                          = SessionUtil.getRequestValue(request,"UseSplyAmt");       // 공급금액         
        String VatAmt                           = SessionUtil.getRequestValue(request,"UseVatAmt");       // 부가가치세액     
        String SrvAmt                           = "";       // 봉사료           
        String ReprDtlsItxpCd                   = "";       // 대표세목코드     
        String ReprDtlsItxpCdNm                 = "";       // 대표세목코드명   
        String ReprSubDtlsItxpCd                = "";       // 대표세세목코드   
        String ReprSubDtlsItxpCdNm              = "";       // 대표세세목코드명
        String VatPsvApcYn                      = "";       // 부가세보전신청여부
        String TrnsSt                           = SessionUtil.getRequestValue(request,"ExctnSt");       // 거래상태
        
        
        VatPsvApcYn = "N";
        //TrnsSt = "B04110";
        BuyClctNo = "N000040904";
        CrdNo = "1111222233334444";
        //CrdApvDt = "20111107";
        //SplrCoNm = "(주)오피스문구";
        OvrsUseDv = "A";
        //ClmTotlAmt = "34750";
        //SplyAmt = "31591";
        //VatAmt = "3159";
        SrvAmt = "0";


%>

<title>카드결제 비목내역 상세조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">카드결제 비목내역 상세조회</p>
        </div>
        <!-- //head title// --> 
    </div>




<script type="text/javascript">

function SetData(){
    
    
	var gridValue = [];
	gridValue[0] = {"USE_DT":"2012-02-04","DTLS_ITXP_NM":"연구활동비","SUB_DTLS_ITXP_NM":"세미나개최비","MITM_NM":"세미나개최비","MITM_NRM":"","MITM_UPRC":"0","MITM_QNT":"","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","USE_VAT_AMT2":"20","RMK":"","TRNS_AMT2":"220","GRIDKEY":"BuitId=U201203224333611&TrnsAmt=220&DtlsItxpCd=B0202"};
	gridData = gridValue;    //조회결과 JSON 값 가져오기
    rMateGridSetData();  //rMateGrid 구현
}


</script>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\"  >\
            <columns>\
                <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" editable=\"false\" />\
                <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"일시\"           width=\"90\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세부비목\"       width=\"120\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목\"         width=\"120\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"품목\"           width=\"100\"     visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_NRM\"           dataField=\"MITM_NRM\"            headerText=\"규격\"           width=\"70\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_UPRC\"          dataField=\"MITM_UPRC\"           headerText=\"단가\"           width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_QNT\"           dataField=\"MITM_QNT\"            headerText=\"수량\"           width=\"70\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"            headerText=\"이체금액\"       width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"공급가액\"       width=\"100\"    visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"부가가치세액\"   width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"true\" />\
                <DataGridColumn id=\"USE_VAT_AMT2\"       dataField=\"USE_VAT_AMT2\"        headerText=\"수정전부가세\"   width=\"0\"   visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"true\" />\
                <DataGridColumn id=\"RMK\"                dataField=\"RMK\"                 headerText=\"비고\"           width=\"200\"    visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"TRNS_AMT2\"          dataField=\"TRNS_AMT2\"            headerText=\"사용금액\"       width=\"0\"    visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"GRIDKEY\"            dataField=\"GRIDKEY\"             headerText=\"GridKey\"        width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
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
        gridRoot.addEventListener("layoutComplete", SetData);
        
        //data 출력 후 실행할 이벤트 등록
        gridRoot.addEventListener("dataComplete", columnBackGroundStyle);
        
        
        //그리드의 데이터 변경시 호출
        gridRoot.addEventListener("itemDataChanged", uf_SetValue_rMate);
        
        

    };
    

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    };
    
    
    // 그리드에서 수정이 일어나면 불려집니다.
    function uf_SetValue_rMate(event) {
        var rowIndex = event.getRowIndex();                 // 변경된 행번호
        var columnIndex = event.getColumnIndex();       // 변경된 열번호
        var dataField = event.getDataField();               // 변경된 열의 데이타 필드
        var dataRow = gridRoot.getItemAt(rowIndex); // 변경된 데이타 레코드
        //var oldValue = event.getValue();                        // 변경전 값
        //var newValue = event.getNewValue();                 // 변경후 값

        // 수정한 필드에 따라 재호출 한다.
        if("USE_VAT_AMT" == dataField){ //금액수정 시 합계를 재호출하여 총 금액 변경
            //dataGrid.invalidateList();  //그리드 재호출

		    var useAmt  = parseFloat(dataRow.TRNS_AMT);     //사용금액
		    var vatAmt  = parseFloat(dataRow.USE_VAT_AMT);  //부가가치세액

            gridRoot.setItemFieldAt((useAmt-vatAmt), rowIndex, "USE_SPLY_AMT");
        }
    }
    
    
    
    //컬럼 색상변경
    function columnBackGroundStyle() {
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            alert("collection 객체를 찾을 수 없습니다");
            return;
        }
        for (i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 10, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 11, 1, 1, null, 0xEDF2FE);
        }
    }

    
    

  //부가세정보 수정
    function uf_save_vat(){
        var frm = document.frm;
        var vat = "";
        var chk = false;
        
        var totlSplyAmt = 0;
        var totlVatAmt = 0;
        
        
        if( frm.VatPsvApcYn.value == 'Y' ){
            alert('부가세보전신청건에 대해서는 부가가치세액을 변경할 수 없습니다.');
            return false;
        }
        
        
        var rows = getGridRowCount_rMate();
        
        for( idx = 0 ; idx < rows ; idx++ ){
            var dataRow = gridRoot.getItemAt(idx);
            
            var splyAmt = dataRow.USE_SPLY_AMT; //공급가액
            var vatAmt = dataRow.USE_VAT_AMT;   //부가가치세액
            var vatAmt2 = dataRow.USE_VAT_AMT2;  //수정전부가세
            
            if( vatAmt != vatAmt2 ){
                
                get2post(frm, "UseSplyAmt=" + splyAmt);
                get2post(frm, "UseVatAmt=" + vatAmt);
                get2post(frm, dataRow.GRIDKEY);
                chk = true; 
            }
            
            totlSplyAmt += splyAmt;
            totlVatAmt += vatAmt;
        }
        
        get2post(frm, "TotlSplyAmt=" + totlSplyAmt);
        get2post(frm, "TotlVatAmt=" + totlVatAmt);
        
        
        if( chk == false ){
            alert('부가가치세액 변경된 내용이 없습니다.');
            return false;
        }
        
        if( confirm("부가가치세액 변경된 내용을 수정하시겠습니까?") ){
            /* 
            frm.target = "sendIfrm";
            frm.action = "U12_03_10_u.jsp";//
            fn_submit(frm);
             */
             
             uf_proce_display_on();  //로딩바
             
             setTimeout(function(){
                 reset_submit();
                 alert("수정되었습니다.");
                 }, 1000);   // 1초후 실행 1000 = 1초s
        }
        removeTempAttribute(frm);
        return false;
    }
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<div id="body">
  <!-- content start -->
  <div id="content">
  <form name="frm" action="">
    <input type="hidden" name="AgrmtInstId" value="<%=AgrmtInstId%>"/>
    <input type="hidden" name="AgrmtSeqNo" value="<%=AgrmtSeqNo%>"/>
    <input type="hidden" name="ButrId" value="<%=ButrId%>"/>
    <input type="hidden" name="TrnsSt" value="<%=TrnsSt%>"/>
    <input type="hidden" name="VatPsvApcYn" value="<%=VatPsvApcYn %>"/>
    <div class="t20"></div>
    <h3>카드승인(매입)내역</h3>
    <!-- 카드승인(매입)내역 리스트 start -->
    <div class="t10 b20 pop_wh">
      <table  width="100%" border="0" cellspacing="0" cellpadding="0" summary="카드승인(매입)내역 리스트" class="tbl_type03">
        <caption>
        카드승인(매입)내역
        </caption>
        <colgroup>
        <col width="6%"/>
        <col width="12%"/>
        <col width="15%"/>
        <col width="12%"/>
        <col width="10%"/>
        <col width="8%"/>
        <col width="*" span="4"/>
        </colgroup>
        <thead>
          <tr>
            <th scope="col" rowspan="2">매입승인번호</th>
            <th scope="col" rowspan="2">카드번호</th>
            <th scope="col" rowspan="2">사용일자</th>
            <th scope="col" rowspan="2">가맹점명</th>
            <th scope="col" rowspan="2">사용구분</th>
            <th scope="col" colspan="4">사용내역</th>
          </tr>
          <tr>
            <th scope="col">사용금액</th>
            <th scope="col">공급가액</th>
            <th scope="col">부가가치세액</th>
            <th scope="col">봉사료</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="ac"><a href="#dummy" onclick="uf_popup_crd_sel_slip('<%=ButrId%>');"><span style='color:blue;'><%=BuyClctNo %></span></a></td>
            <td class="ac"><%=CrdNo %></td>
            <td class="ac"><%=FormatUtil.setDelim(CrdApvDt,"9999-99-99") %></td>
            <td class="ac"><%=SplrCoNm %></td>
            <td class="ac"><%=CodeUtil.getCode("RND168", OvrsUseDv)%></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(ClmTotlAmt) %></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(SplyAmt)  %></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(VatAmt)  %></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(SrvAmt)  %></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //카드승인(매입)내역 리스트 end// -->
    <h3>비목및품목</h3>
    <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div>
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
    
    <!-- action bt start 신규 기능 : 부가세 환원 요청 이전 부가세 수정 가능 -->
    <% if( "N".equals(VatPsvApcYn) && "B04110".equals(TrnsSt)){ %>
        <div class="pop_action_bt ar"> <a href="#dummy" onclick="uf_save_vat()" class="bt_action2-01" title="저장"><span class="bt_sp">저장</span></a> </div>
    <% } %>
    <!-- //action bt end// -->
    <div class="t10"></div>
    </form>
  </div>
</div>
<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %> 

<script type="text/javascript">
    
    $(document).ready(function() {
        // rMateGrid 초기화
        rMateGridInit();
    }); 
</script>

</body></html>