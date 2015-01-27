<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T11_01_10.jsp
 *   Description        : ��� ��볻�� ��ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.03                     ������             
 *
 *  @author     ������ 
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
//kr.go.rcms.web.data.SbjtData sbjtData = (kr.go.rcms.web.data.SbjtData)kr.go.rcms.web.util.SessionUtil.getSessionValue(request, "sbjt_data");
    String AgrmtSeqNo   = SessionUtil.getRequestValue(request, "AgrmtSeqNo");       //������ID
    String AgrmtInstId  = SessionUtil.getRequestValue(request, "AgrmtInstId");      //�����Ϸù�ȣ

    String InqDvCd      = SessionUtil.getRequestValue(request, "InqDvCd");          //��ȸ�����ڵ�
    String DtlsItxpCd   = SessionUtil.getRequestValue(request, "DtlsItxpCd");       //���κ���ڵ�
    String HgrkItxpNm   = SessionUtil.getRequestValue(request, "HgrkItxpNm");       //���
    String DtlsItxpNm   = SessionUtil.getRequestValue(request, "DtlsItxpNm");       //���κ��
    String bViewSbjtNm  = SessionUtil.getRequestValue(request, "bViewSbjtNm", "false");     //�������⿩��
%>


<title>��� ��볻�� ��ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">��� ��볻�� ��ȸ</p>
        </div>
        <!-- //head title// --> 
    </div>



<script type="text/javascript">
    //////////////////////////////////
    //��ȸ ó��
    //////////////////////////////////
    function uf_search(SchGb){
        var frm = document.frm;
        
        if( isSubmit() ) return;    // ����ó��
        
        if("<%=AgrmtSeqNo%>" == "" || "<%=AgrmtInstId%>" == "" || "<%=DtlsItxpCd%>" == "" ) return false;

        uf_proce_display_on();  //�ε���
        setTimeout(function(){SetData("<%=AgrmtInstId%>", "<%=AgrmtSeqNo%>", "<%=DtlsItxpCd%>", "<%=DtlsItxpNm%>");}, 1000);   // 1���� ���� 1000 = 1��s

        removeTempAttribute(frm);   //get2post ����
        
            
    }

</script>







<div id="body">
  <!-- content start -->
  <div id="content">
    <div class="t20"></div>
    <h3>��� ��볻�� ��ȸ</h3>
    <!-- ��������Ȳ ����ȸ ����Ʈ start -->
    <form name="frm" method="post">
            <input type="hidden" name="TrSupYn" value="N" />                <!--�ŷ���ӿ���-->
            <input type="hidden" name="PrsPgno" value="0" />
            <input type="hidden" name="AgrmtSeqNo" value="<%=AgrmtSeqNo%>" />
            <input type="hidden" name="AgrmtInstId" value="<%=AgrmtInstId%>" />
            <input type="hidden" name="DtlsItxpCd" value="<%=DtlsItxpCd%>" />
            <input type="hidden" name="InqDvCd" value="<%=InqDvCd%>" />
            
    <div class="t10 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="��� ��볻�� ��ȸ" class="tbl_type02">
        <caption>
        ��� ��볻�� ��ȸ
        </caption>
        <colgroup>
        <col width="20%" />
        <col width="80%" />
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">���</th>
            <td class="ll"><%=HgrkItxpNm%> - <%=DtlsItxpNm%></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //��� ��볻�� ��ȸ end// -->
    <!-- �ѰǼ�/�μ� ���� ��ư start -->
    <div class="pop_total_box">
      <p class="fl t05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> �� /<span id="InqPrsTotlCnt">0</span> ��]</p>
      <p class="ar b05">
          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�"/></a>
          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="����"/></a>
      </p>
      <p class="cb"></p>
    </div>
    <!-- �ѰǼ�/�μ� ���� ��ư start -->
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div>
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "255", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- �׸��� End -->
            <!-- �󼼺��� ���̾� �˾� -->
            <div id="layerPopup" style="display:none;z-index:999999;">
                <div id="layerPopupTitle" style="width:355px;height:30px;">
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="�ݱ�"></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
<!-- *************************  rMateGrid ************************* -->
    
    </form>
  </div>
  
</div>
<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %> 




<script type="text/javascript">
$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    
});
</script>


<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" lockedColumnCount=\"1\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
            <columns>\
                <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                <DataGridColumn id=\"BZ_CLAS_NM\"       dataField=\"BZ_CLAS_NM\"        headerText=\"�����\"      width=\"140\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SBJT_ID\"          dataField=\"SBJT_ID\"           headerText=\"������ȣ\"     width=\"110\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SBJT_NM\"          dataField=\"SBJT_NM\"           headerText=\"������\"      width=\"140\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"EXCTN_EXEC_DT\"    dataField=\"EXCTN_EXEC_DT\"     headerText=\"�������\"     width=\"100\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"EXCTN_EXEC_TM\"    dataField=\"EXCTN_EXEC_TM\"     headerText=\"���ð�\"     width=\"100\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_CD\" dataField=\"SUB_DTLS_ITXP_CD\"  headerText=\"���κ���ڵ�\" width=\"110\" textAlign=\"center\" visible=\"false\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_NM\" dataField=\"SUB_DTLS_ITXP_NM\"  headerText=\"���κ��\"     width=\"120\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"CASH_SPOT_DV\"     dataField=\"CASH_SPOT_DV\"      headerText=\"����񱸺�\"    width=\"120\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"TRNS_AMT\"         dataField=\"TRNS_AMT\"          headerText=\"���ݾ�\"     width=\"110\" textAlign=\"right\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"SPLY_AMT\"         dataField=\"SPLY_AMT\"          headerText=\"���ޱݾ�\"     width=\"110\" textAlign=\"right\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"VAT_AMT\"          dataField=\"VAT_AMT\"           headerText=\"�ΰ���ġ����\" width=\"110\" textAlign=\"right\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"VAT_PSV_APC_YN\"   dataField=\"VAT_PSV_APC_YN\"    headerText=\"�ΰ�����������\" width=\"110\" textAlign=\"center\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PART_PROC_AMT\"    dataField=\"PART_PROC_AMT\"     headerText=\"�κ���ұݾ�\" width=\"110\" textAlign=\"right\" visible=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
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
                    <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PART_PROC_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                </DataGridFooter>\
            </footers>\
        </DataGrid>\
        <Style>\
            .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                        fontFamily: ����; fontSize: 12; color: 0x000000; \
                        horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                        verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                        selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
            .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
            .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
        </Style>\
    </rMateGrid>\
    ";

    //�׸��� ���̾ƿ� ȣ�� 
    var rMateGridInitLayout = function() {
        gridApp = FABridge.gridBridge.root();
        gridRoot = gridApp.getGridRoot();
        gridApp.setLayout(layoutStr);   //�׸��� ���̾ƿ� ����

        //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
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
            
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            
            setColumnVisible(); //�Ķ���� �������� visible ����
            uf_search();    // �˻�����
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        
        //data ��� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("dataComplete", setTotCnt);

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    //�÷� ���̰� �Ⱥ��̰� ����
    function setColumnVisible() {
        var columns = dataGrid.getColumns();
        if("false" == "<%=bViewSbjtNm%>"){
            columns[1].setVisible(false);
            columns[2].setVisible(false);
            columns[3].setVisible(false);
        }
    }
    
    //��Ż �� ���ϱ�
    function setTotCnt() {
        var totCnt = getGridRowCount_rMate();

        $("#InqPrsTotlNcnt").text(totCnt);    //�׸��� �ڷ��
        $("#InqPrsTotlCnt").text(totCnt);     //��ü �ڷ��
        
    }
  
  
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<script type="text/javascript">
var cnt = 0;
function setGridData(instId, seqNo, itxpCd, itxpNm){
	var id = instId;
	var no = seqNo;
	var cd = itxpCd;
	var nm = itxpNm;
	
    try{
        
        var gridValue = [];
        cnt = 0;
        
        //1. �ű԰���
        if("G00000000000001" == no){
	        
	    //2. �������
        }else if("G00000000000002" == no){
            if("�����ü������ �� ����" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"1","SUB_DTLS_ITXP_NM":"�����ü�����Ժ�","SUB_DTLS_ITXP_CD":"B0201009","VAT_AMT":"100","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201302052249302","EXCTN_EXEC_TM":"12:27:13","EXCTN_EXEC_DT":"2014-03-07","TRNS_AMT":"1100","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"1000","DTLS_ITXP_NM":"�����ü������ �� ����","PRS_INQ_NCNT":"1","DTLS_ITXP_CD":"B0201"};
                
            }else if("�ΰǺ�" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"1","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0201009","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201302052249302","EXCTN_EXEC_TM":"13:07:20","EXCTN_EXEC_DT":"2014-02-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"�����ü������ �� ����","PRS_INQ_NCNT":"1","DTLS_ITXP_CD":"B0201"};
                
            }else if("����Ȱ����" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"1","SUB_DTLS_ITXP_NM":"���̳����ֺ�","SUB_DTLS_ITXP_CD":"B0201009","VAT_AMT":"20","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201302052249302","EXCTN_EXEC_TM":"14:51:38","EXCTN_EXEC_DT":"2014-02-24","TRNS_AMT":"220","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"200","DTLS_ITXP_NM":"�����ü������ �� ����","PRS_INQ_NCNT":"1","DTLS_ITXP_CD":"B0201"};
                
            }else if("��������������" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"1","SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0201009","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201302052249302","EXCTN_EXEC_TM":"15:44:36","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2250","DTLS_ITXP_NM":"�����ü������ �� ����","PRS_INQ_NCNT":"1","DTLS_ITXP_CD":"B0201"};
                
            }else if("������" == nm){
            	gridValue[cnt++] = {"INQ_TOTL_NCNT":"1","SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0201009","VAT_AMT":"9","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201302052249302","EXCTN_EXEC_TM":"15:46:58","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"100","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"91","DTLS_ITXP_NM":"�����ü������ �� ����","PRS_INQ_NCNT":"1","DTLS_ITXP_CD":"B0201"};
                
            }
            
        //3. �������(���� ������)
        }else if("G00000000000003" == no){
        	if("�����ü������ �� ����" == nm){
	            gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"�����ü�����Ժ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"100","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-06","TRNS_AMT":"1100","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"1000","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
	            gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"�����ü�����Ժ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"100","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-04-23","TRNS_AMT":"1100","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"1000","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
	            gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"�þ���ᱸ�Ժ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"1818","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-07-22","TRNS_AMT":"20000","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"18182","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
	            gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"����ǰ���ۺ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"1363","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-10-29","TRNS_AMT":"15000","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"13637","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
	            
        	}else if("�ΰǺ�" == nm){
        		gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202037","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201203212648755","EXCTN_EXEC_TM":"14:56:33","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201205072732291","EXCTN_EXEC_TM":"17:02:00","EXCTN_EXEC_DT":"2013-05-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"C201203222413357","EXCTN_EXEC_TM":"12:00:08","EXCTN_EXEC_DT":"2013-06-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"C","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201201052412250","EXCTN_EXEC_TM":"09:46:15","EXCTN_EXEC_DT":"2013-07-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202013","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"C201111212383103","EXCTN_EXEC_TM":"12:05:44","EXCTN_EXEC_DT":"2013-08-09","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"C","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009042908026","EXCTN_EXEC_TM":"12:40:31","EXCTN_EXEC_DT":"2013-09-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009042908026","EXCTN_EXEC_TM":"12:40:31","EXCTN_EXEC_DT":"2013-10-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009082908481","EXCTN_EXEC_TM":"11:55:36","EXCTN_EXEC_DT":"2013-11-08","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202011","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009062908018","EXCTN_EXEC_TM":"11:45:31","EXCTN_EXEC_DT":"2013-12-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202011","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"T201009042362577","EXCTN_EXEC_TM":"11:31:27","EXCTN_EXEC_DT":"2014-01-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201006282907538","EXCTN_EXEC_TM":"16:05:50","EXCTN_EXEC_DT":"2014-02-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201006142907597","EXCTN_EXEC_TM":"10:45:53","EXCTN_EXEC_DT":"2014-02-28","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                
        	}else if("����Ȱ����" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"���̳����ֺ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"20","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-25","TRNS_AMT":"220","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"200","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"���̳����ֺ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"20","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-05-23","TRNS_AMT":"220","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"200","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"������Ȱ���","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-09-30","TRNS_AMT":"10000","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"10000","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"�����Ʒú�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"823","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-12-23","TRNS_AMT":"9060","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"8237","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
        	}else if("��������������" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-21","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2250","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-06-04","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2250","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-09-03","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2250","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-12-02","TRNS_AMT":"2150","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2150","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
        	}else if("������" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"9","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"13:41:58","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"100","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"91","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"9","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"16:02:09","EXCTN_EXEC_DT":"2013-07-08","TRNS_AMT":"100","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"91","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"45","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"09:21:09","EXCTN_EXEC_DT":"2013-11-25","TRNS_AMT":"500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"455","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"27","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"15:46:59","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"300","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"273","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
        	}
        	
       	//4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == no){
            if("�����ü������ �� ����" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"�����ü�����Ժ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"100","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-06","TRNS_AMT":"1100","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"1000","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"�����ü�����Ժ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"100","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-04-23","TRNS_AMT":"1100","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"1000","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"�þ���ᱸ�Ժ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"1818","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-07-22","TRNS_AMT":"20000","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"18182","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"����ǰ���ۺ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"1363","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-10-29","TRNS_AMT":"15000","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"13637","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
            }else if("�ΰǺ�" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202037","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201203212648755","EXCTN_EXEC_TM":"14:56:33","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201205072732291","EXCTN_EXEC_TM":"17:02:00","EXCTN_EXEC_DT":"2013-05-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"C201203222413357","EXCTN_EXEC_TM":"12:00:08","EXCTN_EXEC_DT":"2013-06-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"C","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201201052412250","EXCTN_EXEC_TM":"09:46:15","EXCTN_EXEC_DT":"2013-07-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202013","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"C201111212383103","EXCTN_EXEC_TM":"12:05:44","EXCTN_EXEC_DT":"2013-08-09","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"C","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009042908026","EXCTN_EXEC_TM":"12:40:31","EXCTN_EXEC_DT":"2013-09-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009042908026","EXCTN_EXEC_TM":"12:40:31","EXCTN_EXEC_DT":"2013-10-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009082908481","EXCTN_EXEC_TM":"11:55:36","EXCTN_EXEC_DT":"2013-11-08","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202011","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009062908018","EXCTN_EXEC_TM":"11:45:31","EXCTN_EXEC_DT":"2013-12-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202011","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"T201009042362577","EXCTN_EXEC_TM":"11:31:27","EXCTN_EXEC_DT":"2014-01-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201006282907538","EXCTN_EXEC_TM":"16:05:50","EXCTN_EXEC_DT":"2014-02-10","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"12","SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202021","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201006142907597","EXCTN_EXEC_TM":"10:45:53","EXCTN_EXEC_DT":"2014-02-28","TRNS_AMT":"2500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2500","DTLS_ITXP_NM":"����Ȱ����","PRS_INQ_NCNT":"13","DTLS_ITXP_CD":"B0202"};
                
            }else if("����Ȱ����" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"���̳����ֺ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"20","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-25","TRNS_AMT":"220","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"200","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"���̳����ֺ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"20","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-05-23","TRNS_AMT":"220","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"200","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"������Ȱ���","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-09-30","TRNS_AMT":"10000","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"10000","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"�����Ʒú�","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"823","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-12-23","TRNS_AMT":"9060","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"8237","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
            }else if("��������������" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"11:40:23","EXCTN_EXEC_DT":"2013-03-21","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2250","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"10:29:52","EXCTN_EXEC_DT":"2013-06-04","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2250","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"16:30:02","EXCTN_EXEC_DT":"2013-09-03","TRNS_AMT":"2250","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2250","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"0","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"17:03:36","EXCTN_EXEC_DT":"2013-12-02","TRNS_AMT":"2150","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"2150","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
            }else if("������" == nm){
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"9","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201105122507405","EXCTN_EXEC_TM":"13:41:58","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"100","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"91","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"9","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201012152917530","EXCTN_EXEC_TM":"16:02:09","EXCTN_EXEC_DT":"2013-07-08","TRNS_AMT":"100","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"91","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"45","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"E201009062908476","EXCTN_EXEC_TM":"09:21:09","EXCTN_EXEC_DT":"2013-11-25","TRNS_AMT":"500","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"E","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"455","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                gridValue[cnt++] = {"INQ_TOTL_NCNT":"4","SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0102001","VAT_AMT":"27","VAT_PSV_APC_YN":"�̽�û","CASH_SPOT_DV":"����","BUTR_ID":"T201007232362426","EXCTN_EXEC_TM":"15:46:59","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"300","BZ_CLAS_NM":"RCMS �ǽ�","PART_PROC_AMT":0,"TRSC_EVDC_DV":"T","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","SPLY_AMT":"273","DTLS_ITXP_NM":"�ܺ��ΰǺ�","PRS_INQ_NCNT":"5","DTLS_ITXP_CD":"B0102"};
                
            }
            
        }
                
    }finally{
        
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}

function SetData(instId, seqNo, itxpCd, itxpNm){
    if(!instId) return false;
    
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor =    "wait";
        //SetData(); //Insert   Grid
        setGridData(instId, seqNo, itxpCd, itxpNm); //Insert    Grid
        document.body.style.cursor =    "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
        searchAlert();
    }
    
}
function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}
</script>

</body>
</html> 
