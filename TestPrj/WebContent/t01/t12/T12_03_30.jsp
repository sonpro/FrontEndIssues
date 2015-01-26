<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_30.jsp
 *   Description        : 전자세금계산서 비목내역상세조회
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
    
    
    String AgrmtSeqNo           = SessionUtil.getRequestValue(request, "AgrmtSeqNo");               //협약일련번호
    String ExctnExecDt          = SessionUtil.getRequestValue(request,"ExctnExecDt");               //사용실행일자               
    String ExctnExecTm          = SessionUtil.getRequestValue(request,"ExctnExecTm");               //사용실행시간
    String TrscDt           = FormatUtil.setDelim(SessionUtil.getRequestValue(request,"TrscDt"),"9999-99-99");                          // 거래일자
    String sel_BzExpExctnProcSt = SessionUtil.getRequestValue(request, "ExctnSt");                                                          //사업비사용처리상태
    String sel_BzExpExctnEvdcDv = CodeUtil.getCode("RND080",  SessionUtil.getRequestValue(request, "TrscEvdcDv"));//사업비사용증빙명
    String sel_RcvBnkNm         = SessionUtil.getRequestValue(request, "RcvBnkNm");                                     //입금은행명
    String sel_RcvAcctNo        = SessionUtil.getRequestValue(request, "RcvAcctNo");                                    //입금계좌번호
    String sel_OwacNm           = SessionUtil.getRequestValue(request, "OwacNm");                                       //예금주명
    String sel_TrnsAmt          = SessionUtil.getRequestValue(request, "TrnsAmt");                                      //이체금액
    String sel_BzExpExctnErrCtt = SessionUtil.getRequestValue(request, "BzExpExctnErrCtt");  //사업비사용불능사유
    /********************************************************************/
    /*                  선택한 비목등록내역 정보                       */
    /********************************************************************/
    String ButrId               = SessionUtil.getRequestValue(request,"ButrId");                    //증빙일렬번호(전자세금계산서)
    String ElecTxblApvNo        = SessionUtil.getRequestValue(request,"TrscEvdcNo");
    String EvdcDv               = SessionUtil.getRequestValue(request,"EvdcDv");                    //증빙구분                   
    String ItxpRegNcnt          = SessionUtil.getRequestValue(request,"ItxpRegNcnt");               //비목등록건수               
    String ReprDtlsItxpCd       = SessionUtil.getRequestValue(request,"ReprDtlsItxpCd");            //대표세목코드               
    String ReprDtlsItxpCdNm     = SessionUtil.getRequestValue(request,"ReprDtlsItxpCdNm");          //대표세목코드명             
    String ReprSubDtlsItxpCd    = SessionUtil.getRequestValue(request,"ReprSubDtlsItxpCd");         //대표세세목코드             
    String ReprSubDtlsItxpCdNm  = SessionUtil.getRequestValue(request,"ReprSubDtlsItxpCdNm");       //대표세세목코드명           
    String ExctnRegDt           = SessionUtil.getRequestValue(request,"ExctnRegDt");                //사용등록일자
    String ExctnRegDrtm         = SessionUtil.getRequestValue(request,"ExctnRegDrtm");              //사용등록시간
    String BzMomAcctBnkCd       = null;                        //사업모계좌은행코드         
    String BzMomAcctNo          = null;                           //사업모계좌번호             
    String RchExpAcctBnkCd      = null;                       //연구비계좌은행코드         
    String RchExpAcctNo         = null;                          //연구비계좌번호
    String PaymUsag             = SessionUtil.getRequestValue(request,"PaymUsag");                  //지급용도 
    String ExctnBizDvCd         = SessionUtil.getRequestValue(request,"ExctnBizDvCd");              //사용업무구분코드           
    String ExctnStgDv           = SessionUtil.getRequestValue(request,"ExctnStgDv");                //사용단계구분      
    
    /********************************************************************************/
    /*                   연구비사용실행요청등록 필드(개별부)                        */
    /********************************************************************************/
    String RcvBnkCd                 = "";   // 입금은행코드
    String RcvAcctNo                = "";           // 입금계좌번호
    String WdrwPsbkPrtCtt           = "";           // 연구비통장인쇄
    String RcvPsbkPrtCtt            = "";           // 거래처통장인쇄
    String TrnsAmt                  = "";           // 이체금액
    String OwacNm                   = "";           // 예금주명
    String UsePtcl                  = "";           // 사용내역
    String TelNo                    = "";           // 전화번호
    String SplrBzRegNo              = "";           // 공급자사업자등록번호
    String SplrCoNm                 = "";           // 공급자회사명
    String SplrTpbzNm               = "";           // 공급자업종명
    String SplrTpopNm               = "";           // 공급자업태명
    String SplrEtcTpbzNm            = "";           // 공급자기타업종명
    String SplrEtcTpopNm            = "";           // 공급자기타업태명
    String SplrReprNm               = "";           // 공급자대표자명
    String SplrZipNo                = "";           // 공급자우편번호
    String SplrAdr                  = "";           // 공급자주소
    String SplyAmt                  = "";           // 공급금액
    String VatAmt                   = "";           // 부가가치세액
    String Rmk                      = "";           // 비고
    String ReptNcnt                 = "";           // 반복건수    
        
    
    
    
    
    RcvBnkCd        = "003";
    RcvAcctNo       = "555555555550";
    WdrwPsbkPrtCtt  = "";
    RcvPsbkPrtCtt   = "";
    TrnsAmt         = "2500";
    OwacNm          = "가사장";
    UsePtcl         = "물품구입비";
    TelNo           = "01011112222";
    SplrBzRegNo     = "1001010000";
    SplrCoNm        = "(주) 가 업체";
    SplrTpbzNm      = "연구";
    SplrTpopNm      = "개발";
    SplrEtcTpbzNm   = "";
    SplrEtcTpopNm   = "";
    SplrReprNm      = "가사장";
    SplrZipNo       = "";
    SplrAdr         = "인천광역시 남동구 구월동 1138";
    SplyAmt         = "5000";
    VatAmt          = "500";
    Rmk             = "";
    ReptNcnt        = "1";

%>


<title>연구비사용결과 상세조회(전자세금계산서) &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">연구비사용결과 상세조회(전자세금계산서)</p>
        </div>
        <!-- //head title// --> 
    </div>




<script type="text/javascript">

function SetData(){
    
    var gridValue = [];
    gridValue[0] = {"USE_REG_DT":"2014-01-10 17:52:56","DTLS_ITXP_NM":"외부인건비","SUB_DTLS_ITXP_NM":"외부인건비","MITM_NM":"배분수수료","MITM_NRM":"","MITM_UPRC":"0","MITM_QNT":"0","SPLY_AMT":"2500","VAT_AMT":"250","RMK":""};
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
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" lockedColumnCount=\"1\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\"  >\
            <columns>\
                <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" editable=\"false\" />\
                <DataGridColumn id=\"USE_REG_DT\"         dataField=\"USE_REG_DT\"          headerText=\"일시\"           width=\"120\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"세부비목\"       width=\"120\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"세세목\"         width=\"120\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"품목\"           width=\"120\"     visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_NRM\"           dataField=\"MITM_NRM\"            headerText=\"규격\"           width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_UPRC\"          dataField=\"MITM_UPRC\"           headerText=\"단가\"           width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_QNT\"           dataField=\"MITM_QNT\"            headerText=\"수량\"           width=\"50\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"SPLY_AMT\"           dataField=\"SPLY_AMT\"            headerText=\"공급가액\"       width=\"100\"    visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"VAT_AMT\"            dataField=\"VAT_AMT\"             headerText=\"부가가치세액\"   width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"RMK\"                dataField=\"RMK\"                 headerText=\"비고\"           width=\"120\"    visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
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



    
<div id="body">
<form name="frm" action="">
  <!-- content start -->
  <div id="content">
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
            <td class="ac"><%=CodeUtil.getCode("RNDB04_2",sel_BzExpExctnProcSt) %></td>
            <td class="ac"><%=sel_BzExpExctnEvdcDv %></td>
            <td class="ac"><%=sel_RcvBnkNm %></td>
            <td class="ac"><%=AcctFormatUtil.getAcctForm(sel_RcvAcctNo, RcvBnkCd)%></td>
            <td class="ac"><%=sel_OwacNm %></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(sel_TrnsAmt) %></td>
            <td class="ac"><%=sel_BzExpExctnErrCtt %></td>
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
            <th scope="row">세금계산서</th>
            <td><a href="#dummy" onclick="uf_popup_evdc_dtls_brws(document.frm, '<%=ButrId%>', 'T');"><span style='color:blue;'><%=ElecTxblApvNo %></span></a></td>
            <th scope="row">사업자번호</th>
            <td class="ll"><%=FormatUtil.setDelim(SplrBzRegNo,"999-99-99999") %></td>
          </tr>
          <tr>
            <th scope="row">상호(법인명)</th>
            <td><%=SplrCoNm %></td>
            <th scope="row">성명(대표자)</th>
            <td class="ll"><%=SplrReprNm %></td>
          </tr>
          <tr>
            <th scope="row">업태</th>
            <td><%=SplrTpopNm %></td>
            <th scope="row">업종</th>
            <td class="ll"><%=SplrTpbzNm %></td>
          </tr>
          <tr>
            <th scope="row">사업장주소</th>
            <td colspan="3" class="ll"><%=SplrAdr %></td>
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
            <th scope="row">입금계좌</th>
            <td>[<%=CodeUtil.getCode("BNK_CD_SUB", RcvBnkCd)%>]&nbsp;<%=AcctFormatUtil.getAcctForm(RcvAcctNo, RcvBnkCd)%></td>
            <th scope="row">예금주</th>
            <td class="ll"><%=OwacNm %></td>
          </tr>
          <tr>
            <th scope="row">연구비통장표시내용</th>
            <td><%=WdrwPsbkPrtCtt %></td>
            <th scope="row">거래처통장표시내용</th>
            <td class="ll"><%=RcvPsbkPrtCtt %></td>
          </tr>
          <tr>
            <th scope="row">이체금액</th>
            <td><%=FormatUtil.getMoneyForm(TrnsAmt) %></td>
            <th scope="row">전화번호</th>
            <td class="ll"><%=TelNo%></td>
          </tr>
          <tr>
            <th scope="row">지급용도</th>
            <td><%=FormatUtil.getMoneyForm(SplyAmt )%></td>
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