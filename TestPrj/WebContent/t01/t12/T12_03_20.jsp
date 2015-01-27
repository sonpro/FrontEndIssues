<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_20.jsp
 *   Description        : 기타증빙 비목내역상세조회
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
    String AgrmtInstId              = SessionUtil.getRequestValue(request,"AgrmtInstId");
    String AgrmtSeqNo               = SessionUtil.getRequestValue(request,"AgrmtSeqNo");
    String ExctnExecDt              = SessionUtil.getRequestValue(request,"ExctnExecDt");               //사용실행일자               
    String ExctnExecTm              = SessionUtil.getRequestValue(request,"ExctnExecTm");               //사용실행시간
    String TrscDt           = FormatUtil.setDelim(SessionUtil.getRequestValue(request,"TrscDt"),"9999-99-99");                          // 거래일자
    String sel_BzExpExctnProcSt     = SessionUtil.getRequestValue(request, "ExctnSt");      //사업비사용처리상태
    String sel_BzExpExctnEvdcDv     = StringUtil.null2void(SessionUtil.getRequestValue(request, "TrscEvdcDv"));        //사업비사용증빙구분
    String sel_RcvBnkNm             = SessionUtil.getRequestValue(request, "RcvBnkNm");                 //입금은행명
    String sel_RcvAcctNo            = SessionUtil.getRequestValue(request, "RcvAcctNo");                //입금계좌번호
    String sel_OwacNm               = SessionUtil.getRequestValue(request, "OwacNm");                   //예금주명
    String sel_TrnsAmt              = SessionUtil.getRequestValue(request, "TrnsAmt");                  //이체금액
    String sel_BzExpExctnImpbYn     = SessionUtil.getRequestValue(request, "BzExpExctnImpbYn");         //사업비사용불능여부
    String sel_BzExpExctnErrCtt     = SessionUtil.getRequestValue(request, "BzExpExctnErrCtt");         //사업비사용불능사유
    /********************************************************************************/
    /*                          선택한 비목등록내역 정보                           */
    /********************************************************************************/
    String ButrId                   = SessionUtil.getRequestValue(request,"ButrId");                    //거래실적ID
    String EvdcDv                   = SessionUtil.getRequestValue(request,"EvdcDv");                    //증빙구분           
    String ItxpRegNcnt              = SessionUtil.getRequestValue(request,"ItxpRegNcnt");               //비목등록건수               
    String ReprDtlsItxpCd           = SessionUtil.getRequestValue(request,"ReprDtlsItxpCd");            //대표세목코드               
    String ReprDtlsItxpCdNm         = SessionUtil.getRequestValue(request,"ReprDtlsItxpCdNm");          //대표세목코드명             
    String ReprSubDtlsItxpCd        = SessionUtil.getRequestValue(request,"ReprSubDtlsItxpCd");         //대표세세목코드             
    String ReprSubDtlsItxpCdNm      = SessionUtil.getRequestValue(request,"ReprSubDtlsItxpCdNm");       //대표세세목코드명           
    String ExctnRegDt               = SessionUtil.getRequestValue(request,"ExctnRegDt");                //사용등록일자
    String ExctnRegDrtm             = SessionUtil.getRequestValue(request,"ExctnRegDrtm");              //사용등록시간
    String PaymUsag                 = SessionUtil.getRequestValue(request,"PaymUsag");                  //지급용도 
    String UsePtcl                  = SessionUtil.getRequestValue(request,"PaymUsag");                  //사용내역
    String ExctnStgDv               = SessionUtil.getRequestValue(request,"ExctnStgDv", "1");           //사용단계
    String VatPsvApcYn              = SessionUtil.getRequestValue(request,"VatPsvApcYn", "N");;//부가세보전신청여부
    String TrnsSt                   = SessionUtil.getRequestValue(request,"ExctnSt");       //거래상태
    
    
    /****************************************************************************/
    /*                      연구비사용실행요청등록 필드(개별부)                 */
    /****************************************************************************/
    String RcvBnkCd             = SessionUtil.getRequestValue(request,"RcvBnkCd");   // 입금은행코드
    String RcvAcctNo            = "";   // 입금계좌번호
    String WdrwPsbkPrtCtt       = "";   // 연구비통장인쇄
    String RcvPsbkPrtCtt        = "";   // 거래처통장인쇄
    String TrnsAmt              = "";   // 이체금액
    String OwacNm               = "";   // 예금주명
    String TelNo                = "";   // 전화번호
    String SplrBzRegNo          = "";   // 공급자사업자등록번호
    String SplrCoNm             = SessionUtil.getRequestValue(request,"SplrCoNm");       // 공급자회사명        
    String SplrTpbzNm           = "";   // 공급자업종명
    String SplrTpopNm           = "";   // 공급자업태명
    String SplrEtcTpbzNm        = "";   // 공급자기타업종명
    String SplrEtcTpopNm        = "";   // 공급자기타업태명
    String SplrReprNm           = "";   // 공급자대표자명
    String SplrZipNo            = "";   // 공급자우편번호
    String SplrAdr              = "";   // 공급자주소
    String SplyAmt              = SessionUtil.getRequestValue(request,"UseSplyAmt");   // 공급금액
    String VatAmt               = SessionUtil.getRequestValue(request,"UseVatAmt");   // 부가가치세액        
 
    RcvBnkCd = "003";
    RcvAcctNo = "555555555550";
    WdrwPsbkPrtCtt = "인건비지급";
    RcvPsbkPrtCtt = "인건비지급";
    //TrnsAmt = "1000";
    OwacNm = "가사장";
    UsePtcl = "연구원 인건비지급";
    TelNo = "010-1111-2222";
    SplrBzRegNo = "1111111111";
    SplrTpbzNm = "연구";
    SplrTpopNm = "개발";
    SplrEtcTpbzNm = "";
    SplrEtcTpopNm = "";
    SplrReprNm = "(주) RCMS";
    SplrZipNo = "";
    SplrAdr = "대전광역시 유성구 화암동 58-4";
    //SplyAmt = "1000";
    //VatAmt = "0";
    //ExctnStgDv = "1";
    
    
%>


<title>연구비사용결과 상세조회(기타) &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">연구비사용결과 상세조회(기타)</p>
        </div>
        <!-- //head title// --> 
    </div>




<script type="text/javascript">

function SetData(){
    
    var gridValue = [];
    gridValue[0] = {"USE_REG_DT":"2014-01-13 15:44:36","DTLS_ITXP_NM":"연구과제추진비","SUB_DTLS_ITXP_NM":"연구과제추진비","MITM_NM":"인건비","MITM_NRM":"1/4 연구과제추진비","MITM_UPRC":"2250","MITM_QNT":"1","SPLY_AMT":"2250","VAT_AMT":"0","VAT_AMT2":"0","RMK":"연구원인건비지급","TRNS_AMT":"2250","GRIDKEY":"BuitId=U201005264710701&TrnsAmt=2250&DtlsItxpCd=B0102"};
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
		        <DataGridColumn id=\"USE_REG_DT\"         dataField=\"USE_REG_DT\"          headerText=\"일시\"           width=\"130\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세부비목\"       width=\"100\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목\"         width=\"110\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"품목\"           width=\"90\"     visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"MITM_NRM\"           dataField=\"MITM_NRM\"            headerText=\"규격\"           width=\"90\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"MITM_UPRC\"          dataField=\"MITM_UPRC\"           headerText=\"단가\"           width=\"110\"   visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"MITM_QNT\"           dataField=\"MITM_QNT\"            headerText=\"수량\"           width=\"60\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"SPLY_AMT\"           dataField=\"SPLY_AMT\"            headerText=\"공급가액\"       width=\"110\"    visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"VAT_AMT\"            dataField=\"VAT_AMT\"             headerText=\"부가가치세액\"   width=\"110\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"true\" />\
		        <DataGridColumn id=\"VAT_AMT2\"           dataField=\"VAT_AMT2\"            headerText=\"수정전부가세\"   width=\"0\"   visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"true\" />\
		        <DataGridColumn id=\"RMK\"                dataField=\"RMK\"                 headerText=\"비고\"           width=\"120\"    visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"            headerText=\"사용금액\"       width=\"0\"    visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"GRIDKEY\"            dataField=\"GRIDKEY\"             headerText=\"GridKey\"        width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
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

        // 수정한 필드에 따라 재호출 한다.
        if("VAT_AMT" == dataField){ //금액수정 시 합계를 재호출하여 총 금액 변경

            var useAmt  = parseFloat(dataRow.TRNS_AMT);     //사용금액
            var vatAmt  = parseFloat(dataRow.VAT_AMT);  //부가가치세액

            gridRoot.setItemFieldAt((useAmt-vatAmt), rowIndex, "SPLY_AMT");
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
            collection.addCellAttributeDetailAt(i, 9, 1, 1, null, 0xEDF2FE);
            //collection.addCellAttributeDetailAt(i, 11, 1, 1, null, 0xEDF2FE);
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
            
            var splyAmt = dataRow.SPLY_AMT; //공급가액
            var vatAmt = dataRow.VAT_AMT;   //부가가치세액
            var vatAmt2 = dataRow.VAT_AMT2;  //수정전부가세
            
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
    <!-- 연구비사용결과 상세조회 start -->
    <div class="t10 b20 pop_wh">
      <table  width="100%" border="0" cellspacing="0" cellpadding="0" summary="연구비사용결과 상세조회" class="tbl_type03">
        <caption>
        연구비사용결과 상세조회
        </caption>
        <colgroup>
        <col width="10%"/>
        <col width="10%"/>
        <col width="15%"/>
        <col width="10%"/>
        <col width="15%"/>
        <col width="10%"/>
        <col width="10%"/>
        <col width="20%"/>
        </colgroup>
        <thead>
          <tr>
            <th scope="col">사용일자</th>
            <th scope="col">사용상태</th>
            <th scope="col">증빙구분</th>
            <th scope="col">입금은행</th>
            <th scope="col">입금계좌번호</th>
            <th scope="col">수취인</th>
            <th scope="col">이체금액</th>
            <th scope="col">결과내용</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="ac"><%=TrscDt %></td>
            <td class="ac"><%=CodeUtil.getCode("RNDB04_2", sel_BzExpExctnProcSt)%></td>
            <td class="ac"><%=CodeUtil.getCode("RND080", sel_BzExpExctnEvdcDv)%></td>
            <td class="ac"><%=sel_RcvBnkNm %></td>
            <td class="ac"><%=AcctFormatUtil.getAcctForm(sel_RcvAcctNo, RcvBnkCd) %></td>
            <td class="ac"><%=sel_OwacNm %></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(sel_TrnsAmt) %></td>
            <td class="ac"><%=sel_BzExpExctnErrCtt%></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //연구비사용결과 상세조회 end// -->
    <h3>거래처정보</h3>
    <!-- 거래처정보 상세정보 start -->
    <div class="t10 b20 pop_wh">
      <table  width="100%" border="0" cellspacing="0" cellpadding="0" summary="거래처정보 상세정보" class="tbl_type02">
        <caption>
        거래처정보 상세정보
        </caption>
        <colgroup>
        <col width="20%"/>
        <col width="30%"/>
        <col width="20%"/>
        <col width="30%"/>
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">증빙일련번호</th>
            <td><%=ButrId %></td>
            <th scope="row">사업자번호</th>
            <td class="ll"><%=FormatUtil.setDelim(  SplrBzRegNo,"999-99-99999") %></td>
          </tr>
          <tr>
            <th scope="row">상호(법인명)</th>
            <td><%=SplrCoNm %></td>
            <th scope="row">업태</th>
            <td class="ll"><%=SplrTpopNm %></td>
          </tr>
          <tr>
            <th scope="row">업종</th>
            <td><%=SplrTpbzNm %></td>
            <th scope="row">사업장주소</th>
            <td class="ll"><%=SplrAdr %></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //거래처정보 상세정보 end// -->
    <h3>계좌이체 요청항목</h3>
    <!-- 계좌이체 요청항목 상세정보 start -->
    <div class="t10 b20 pop_wh">
      <table  width="100%" border="0" cellspacing="0" cellpadding="0" summary="계좌이체 요청항목 상세정보" class="tbl_type02">
        <caption>
        계좌이체 요청항목 상세정보
        </caption>
        <colgroup>
        <col width="20%"/>
        <col width="30%"/>
        <col width="20%"/>
        <col width="30%"/>
        </colgroup>
        <tbody>
	      <tr>
	        <th cope="row">사용단계구분</th>
	        <td colspan="3" class="ll">타계좌이체(연구비계좌경유이체)</td>
	      </tr>
          <tr>
            <th scope="row">입금계좌</th>
            <td>[B 은행]&nbsp;<%=AcctFormatUtil.getAcctForm( RcvAcctNo,RcvBnkCd)%></td>
            <th scope="row">예금주</th>
            <td class="ll"><%=sel_OwacNm%></td>
          </tr>
          <tr>
            <th scope="row">연구비통장인쇄</th>
            <td><%=WdrwPsbkPrtCtt %></td>
            <th scope="row">거래처통장인쇄</th>
            <td class="ll"><%=RcvPsbkPrtCtt%></td>
          </tr>
          <tr>
            <th scope="col">이체금액</th>
            <td><%=FormatUtil.getMoneyForm(TrnsAmt) %></td>
            <th scope="col">전화번호</th>
            <td class="ll"><%=TelNo%></td>
          </tr>
          <tr>
            <th scope="row">공급금액</th>
            <td><%=FormatUtil.getMoneyForm(SplyAmt) %></td>
            <th scope="row">부가가치세액</th>
            <td class="ll"><%=FormatUtil.getMoneyForm(VatAmt) %></td>
          </tr>
          <tr>
            <th scope="row">지급용도</th>
            <td colspan="3" class="ll"><%=UsePtcl %></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //계좌이체 요청항목 상세정보 end// -->
    <h3>비목 및 품목</h3>
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
    <% if( "N".equals(VatPsvApcYn) && "B04110".equals(TrnsSt) ){ %>
    <div class="pop_action_bt ar"> <a href="#dummy" onclick="uf_save_vat();" class="bt_action2-01" title="저장"><span class="bt_sp">저장</span></a> </div>
    <% } %>
    <!-- //action bt end// -->
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

</body>
</html>    
