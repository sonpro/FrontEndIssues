<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_23_00.jsp
 *   Description        : ��������Ȳ ����ȸ �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==========================================================================================
 *   2014. 1. 13.                   ������                 
 *
 *  @author 
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
    String AgrmtSeqNo   = SessionUtil.getRequestValue(request, "AgrmtSeqNo");   // �����Ϸù�ȣ
    String AgrmtInstId  = SessionUtil.getRequestValue(request, "AgrmtInstId");  // ������ID

%>

<title>��������Ȳ ����ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">��������Ȳ ����ȸ</p>
        </div>
        <!-- //head title// --> 
    </div>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">
var agrmtSeqNo = "<%=AgrmtSeqNo%>";
var agrmtInstId = "<%=AgrmtInstId%>";


//���̾ƿ� ����
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
	<NumberFormatter id=\"numfmt\"/>\
	<SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
	<CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
	<DataGrid id=\"grid1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
		<columns>\
		    <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
			<DataGridColumn id=\"SBJT_NM\"                dataField=\"SBJT_NM\"                 headerText=\"������\"         width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"AGRMT_INST_ROLE_DV\"     dataField=\"AGRMT_INST_ROLE_DV\"      headerText=\"��ü����\"       width=\"90\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"AGRMT_INST_NM\"          dataField=\"AGRMT_INST_NM\"           headerText=\"��ü��\"         width=\"90\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"HGRK_ITXP_NM\"           dataField=\"HGRK_ITXP_NM\"            headerText=\"���\"           width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"HGRK_ITXP_CD\"           dataField=\"HGRK_ITXP_CD\"            headerText=\"����ڵ�\"       width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"ITXP_CD\"                dataField=\"ITXP_CD\"                 headerText=\"���κ���ڵ�\"   width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"ITXP_NM\"                dataField=\"ITXP_NM\"                 headerText=\"���κ��\"       width=\"120\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"AGRMT_CASH_LIM_AMT\"     dataField=\"AGRMT_CASH_LIM_AMT\"      headerText=\"�����ѵ�\"       width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"USE_APV_CASH_LIM_AMT\"   dataField=\"USE_APV_CASH_LIM_AMT\"    headerText=\"�������ѵ�\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"EXCTN_BAL\"              dataField=\"EXCTN_BAL\"               headerText=\"����ܾ�\"       width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"EXCTN_EXEC_AMT\"         dataField=\"EXCTN_EXEC_AMT\"          headerText=\"������ݾ�\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"EXCTN_REG_AMT\"          dataField=\"EXCTN_REG_AMT\"           headerText=\"����ϱݾ�\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"SPLM_AMT\"               dataField=\"SPLM_AMT\"                headerText=\"����ݾ�\"       width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"EXCTN_REG_VAT_AMT\"      dataField=\"EXCTN_REG_VAT_AMT\"       headerText=\"�ΰ���ġ����\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"SPOT_PLAN\"              dataField=\"SPOT_PLAN\"               headerText=\"������ȹ\"       width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"SPOT_USE\"               dataField=\"SPOT_USE\"                headerText=\"�������\"       width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"SPOT_BAL\"               dataField=\"SPOT_BAL\"                headerText=\"�����ܾ�\"       width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"INT_USE_AMT\"            dataField=\"INT_USE_AMT\"             headerText=\"���ڻ��ݾ�\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
			<DataGridColumn id=\"VAT_PSV_AMT\"            dataField=\"VAT_PSV_AMT\"             headerText=\"�ΰ��������ݾ�\" width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
		</columns>\
		<dataProvider>\
			<!--  �׸����� �ڷḦ dataProvider�� �ƴ� ������ ������Ʈ�� �Է��ؾ� �� ��� �Ʒ��� ���� $gridData�� �־��ݴϴ�  -->\
			<SpanSummaryCollection source=\"{$gridData}\" >\
			    <!--  ������ ���ϴ� �ʵ��� �ʵ���� ���ʴ�� �־��ݴϴ�   -->\
			    <mergingFields>\
			        <SpanMergingField name=\"SBJT_NM\" colNum=\"1\" />\
			        <SpanMergingField name=\"AGRMT_INST_ROLE_DV\" colNum=\"2\"/>\
			        <SpanMergingField name=\"AGRMT_INST_NM\" colNum=\"3\"/>\
			        <SpanMergingField name=\"HGRK_ITXP_NM\" colNum=\"4\"/>\
			    </mergingFields>\
			</SpanSummaryCollection>\
		</dataProvider>\
		<footers>\
			<DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\" fontWeight=\"bold\" >\
			    <DataGridFooterColumn />\
			    <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
			    <DataGridFooterColumn />\
			    <DataGridFooterColumn />\
			    <DataGridFooterColumn />\
			    <DataGridFooterColumn />\
			    <DataGridFooterColumn />\
			    <DataGridFooterColumn />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{AGRMT_CASH_LIM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_APV_CASH_LIM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_EXEC_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_REG_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPLM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_REG_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_PLAN}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_USE}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{INT_USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_PSV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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


var layoutStr2 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
    <DataGrid id=\"grid2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
	    <columns>\
	        <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
	        <DataGridColumn id=\"TRSC_DT\"            dataField=\"TRSC_DT\"             headerText=\"�������\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"EXCTN_EXEC_DT\"      dataField=\"EXCTN_EXEC_DT\"       headerText=\"�����Ͻ�\"               width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
	        <DataGridColumn id=\"TRSC_PFMC_ST_NM\"    dataField=\"TRSC_PFMC_ST_NM\"     headerText=\"������\"               width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"TRSC_PFMC_ST\"       dataField=\"TRSC_PFMC_ST\"        headerText=\"�������ڵ�\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"TRSC_EVDC_DV_NM\"    dataField=\"TRSC_EVDC_DV_NM\"     headerText=\"��������\"               width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"TRSC_EVDC_DV\"       dataField=\"TRSC_EVDC_DV\"        headerText=\"���������ڵ�\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"���κ��\"               width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"������\"                 width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"RCV_BNK_NM\"         dataField=\"RCV_BNK_NM\"          headerText=\"�Ա�����\"               width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"RCV_ACCT_NO\"        dataField=\"RCV_ACCT_NO\"         headerText=\"�Աݰ��¹�ȣ\"           width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"RCV_ACCT_OWAC_NM\"   dataField=\"RCV_ACCT_OWAC_NM\"    headerText=\"������\"                 width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"          headerText=\"�ŷ�ó\"                 width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"ITXP_TRNS_AMT\"      dataField=\"ITXP_TRNS_AMT\"       headerText=\"��ü�ݾ�\"               width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"ITXP_SPLY_AMT\"      dataField=\"ITXP_SPLY_AMT\"       headerText=\"���ޱݾ�\"               width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"ITXP_VAT_AMT\"       dataField=\"ITXP_VAT_AMT\"        headerText=\"�ΰ���ġ����\"           width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"VAT_PSV_APC_YN\"     dataField=\"VAT_PSV_APC_YN\"      headerText=\"�ΰ���������û����\"     width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"BUTR_ID\"            dataField=\"BUTR_ID\"             headerText=\"�������ŷ�����ID\"   width=\"100\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	    </columns>\
	    <footers>\
	        <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\" fontWeight=\"bold\" >\
	            <DataGridFooterColumn />\
	            <DataGridFooterColumn />\
	            <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
	            <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{TRSC_PFMC_ST_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	            <DataGridFooterColumn />\
	            <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
	            <DataGridFooterColumn />\
	            <DataGridFooterColumn />\
	            <DataGridFooterColumn />\
	            <DataGridFooterColumn />\
	            <DataGridFooterColumn />\
	            <DataGridFooterColumn />\
	            <DataGridFooterColumn />\
	            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{ITXP_TRNS_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{ITXP_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{ITXP_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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


var flashVars1 = "dataType=json&bridgeName=gridBridge1";
var flashVars2 = "dataType=json&bridgeName=gridBridge2";


//rMateGrid ���� ��ü
var gridApp1; // �÷��� �⺻ ��ü
var gridApp2; // �÷��� �⺻ ��ü
var gridData1; // �׸��� ������ ���
var gridData2; // �׸��� ������ ���
var gridRoot1; // ����Ÿ�� �׸��带 �����ϴ� ��ü
var gridRoot2; // ����Ÿ�� �׸��带 �����ϴ� ��ü
var dataGrid1; // �׸��� ���� ���
var dataGrid2; // �׸��� ����

	//�׸��� ���̾ƿ� ȣ�� 
	var rMateGridInitLayout1 = function() {
	    gridApp1 = FABridge.gridBridge1.root();
	    gridRoot1 = gridApp1.getGridRoot();
	    gridApp1.setLayout(layoutStr); //�׸��� ���̾ƿ� ����
	
	    
	    //�׸��� �̺�Ʈ ���
	    var layoutCompleteHandler = function(event) {
	        dataGrid1 = gridApp1.getDataGrid();
	        
	        
	        //�̺�Ʈ ���
	        //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
	        //dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
	    };
	
	    
	    //layout ��� �� ����� �̺�Ʈ ���
	    gridRoot1.addEventListener("layoutComplete", layoutCompleteHandler);
	    gridRoot1.addEventListener("layoutComplete", setGrid);
	    
	    //data ��� �� ������ �̺�Ʈ ���
	    gridRoot1.addEventListener("dataComplete", setGrid2); 
	
	};



	   //�׸��� ���̾ƿ� ȣ�� 
    var rMateGridInitLayout2 = function() {
        gridApp2 = FABridge.gridBridge2.root();
        gridRoot2 = gridApp2.getGridRoot();
        gridApp2.setLayout(layoutStr2); //�׸��� ���̾ƿ� ����
    
        
        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot2.getItemAt(rowIndex);
            var columns = dataGrid2.getColumns();
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
            
            //if (columnIndex == 3) { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
            if (dataField == "EXCTN_EXEC_DT") { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
                //uf_Click(rowIndex, columnIndex, dataRow, dataField);
                uf_popup_evdc_dtls_brws(document.frm, dataRow.BUTR_ID, dataRow.TRSC_EVDC_DV); 
            };
        };
        
       
        
        //�׸��� �̺�Ʈ ���
        var layoutCompleteHandler = function(event) {
            dataGrid2 = gridApp2.getDataGrid();
            
            
            //�̺�Ʈ ���
            dataGrid2.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
        };
    
        
        //layout ��� �� ����� �̺�Ʈ ���
        gridRoot2.addEventListener("layoutComplete", layoutCompleteHandler);

        
    };
    
    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge1", rMateGridInitLayout1);
    FABridge.addInitializationCallback("gridBridge2", rMateGridInitLayout2);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp1 = FABridge.gridBridge1.root();
        gridApp1.setData(JSON.stringify(gridData)); //������ ���
    };
    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData2() {
        gridApp2 = FABridge.gridBridge2.root();
        gridApp2.setData(JSON.stringify(gridData2)); //������ ���
    };
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



        <div id="body"> 
            <form name="frm" method="post">
            <input type="hidden" name="AgrmtSeqNo"  value="<%=AgrmtSeqNo%>" />
            <input type="hidden" name="AgrmtInstId" value="<%=AgrmtInstId%>" />
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>��������Ȳ ��ȸ</h3>
                <div class="t10 b20"> 
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div>
                <script>
                rMateGridCreate("grid", "/rMateGrid/Component/rMateGridWeb", flashVars1, "100%", "250", "#FFFFFF");
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
                </div>
                
                <h3>��������Ȳ ����ȸ</h3>
                <div class="t10 b20"> 
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div>
                <script>
                rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars2, "100%", "350", "#FFFFFF");
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
                </div>
            </div>
            <!-- //content end// -->
            </form>
        </div>




<%@ include file="/inc/jspFooter_popup.jsp" %> 





<script type="text/javascript">

$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    //rMateGrid�� �׸��� ���� �� gridInit() ȣ����.

});
</script>





<script type="text/javascript">
var cnt = 0;
function setGridData(seqNo, instId){
    try{
    	
        var gridValue = [];
        cnt = 0;
        if(!instId) return;
        
        //1. �ű԰���
        if("G00000000000001" == seqNo){
            
        //2. �������
        }else if("G00000000000002" == seqNo){
        	
        	gridValue[cnt++] = {"AGRMT_INST_NM":"��RCMS","SPOT_BAL":"3949000","AGRMT_INST_ID":"10112249","SPOT_USE":"6051000","ITXP_NM":"�����ΰǺ�","ITXP_CD":"B0101","AGRMT_CASH_LIM_AMT":"0","HGRK_ITXP_NM":"�ΰǺ�","HGRK_ITXP_CD":"B0100","EXCTN_LIMT_ST":"1","USE_APV_CASH_LIM_AMT":"0","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"0","EXCTN_BAL":"0","VAT_PSV_AMT":"0","AGRMT_INST_ROLE_DV":"�ְ����","SPOT_PLAN":"10000000","BZ_CLAS_NM":"RCMS �ǽ�","BZ_CLAS_CD":"S1598","INT_USE_AMT":"0","INT_USE_POSS_ITXP_YN":"N","INST_SBJT_PRGR_ST":"07","SBJT_ID":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","EXCTN_EXEC_AMT":"0"};
        	gridValue[cnt++] = {"AGRMT_INST_NM":"��RCMS","SPOT_BAL":"0","AGRMT_INST_ID":"10112249","SPOT_USE":"0","ITXP_NM":"�ܺ��ΰǺ�","ITXP_CD":"B0102","AGRMT_CASH_LIM_AMT":"20000000","HGRK_ITXP_NM":"�ΰǺ�","HGRK_ITXP_CD":"B0100","EXCTN_LIMT_ST":"1","USE_APV_CASH_LIM_AMT":"20000000","EXCTN_REG_VAT_AMT":"152178","SPLM_AMT":"0","EXCTN_REG_AMT":"323960","EXCTN_BAL":"19976005","VAT_PSV_AMT":"0","AGRMT_INST_ROLE_DV":"�ְ����","SPOT_PLAN":"0","BZ_CLAS_NM":"RCMS �ǽ�","BZ_CLAS_CD":"S1598","INT_USE_AMT":"0","INT_USE_POSS_ITXP_YN":"N","INST_SBJT_PRGR_ST":"07","SBJT_ID":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","EXCTN_EXEC_AMT":"23995"};
        	gridValue[cnt++] = {"AGRMT_INST_NM":"��RCMS","SPOT_BAL":"0","AGRMT_INST_ID":"10112249","SPOT_USE":"0","ITXP_NM":"�����ü������ �� ����","ITXP_CD":"B0201","AGRMT_CASH_LIM_AMT":"30000000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","EXCTN_LIMT_ST":"1","USE_APV_CASH_LIM_AMT":"30000000","EXCTN_REG_VAT_AMT":"123695","SPLM_AMT":"0","EXCTN_REG_AMT":"10728553","EXCTN_BAL":"29535161","VAT_PSV_AMT":"0","AGRMT_INST_ROLE_DV":"�ְ����","SPOT_PLAN":"0","BZ_CLAS_NM":"RCMS �ǽ�","BZ_CLAS_CD":"S1598","INT_USE_AMT":"0","INT_USE_POSS_ITXP_YN":"Y","INST_SBJT_PRGR_ST":"07","SBJT_ID":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","EXCTN_EXEC_AMT":"464839"};
        	gridValue[cnt++] = {"AGRMT_INST_NM":"��RCMS","SPOT_BAL":"0","AGRMT_INST_ID":"10112249","SPOT_USE":"0","ITXP_NM":"����Ȱ����","ITXP_CD":"B0202","AGRMT_CASH_LIM_AMT":"50000000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","EXCTN_LIMT_ST":"1","USE_APV_CASH_LIM_AMT":"50000000","EXCTN_REG_VAT_AMT":"73595","SPLM_AMT":"0","EXCTN_REG_AMT":"2149862","EXCTN_BAL":"49984892","VAT_PSV_AMT":"0","AGRMT_INST_ROLE_DV":"�ְ����","SPOT_PLAN":"0","BZ_CLAS_NM":"RCMS �ǽ�","BZ_CLAS_CD":"S1598","INT_USE_AMT":"0","INT_USE_POSS_ITXP_YN":"Y","INST_SBJT_PRGR_ST":"07","SBJT_ID":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","EXCTN_EXEC_AMT":"15108"};

        	
        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){

        	gridValue[cnt++] = {"AGRMT_INST_NM":"��RCMS","SPOT_BAL":"979","AGRMT_INST_ID":"10112249","SPOT_USE":"10021","ITXP_NM":"�����ΰǺ�","ITXP_CD":"B0101","AGRMT_CASH_LIM_AMT":"100","HGRK_ITXP_NM":"�ΰǺ�","HGRK_ITXP_CD":"B0100","EXCTN_LIMT_ST":"0","USE_APV_CASH_LIM_AMT":"100","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"10","EXCTN_BAL":"0","VAT_PSV_AMT":"0","AGRMT_INST_ROLE_DV":"�ְ����","SPOT_PLAN":"11000","BZ_CLAS_NM":"RCMS �ǽ�","BZ_CLAS_CD":"S1598","INT_USE_AMT":"0","INT_USE_POSS_ITXP_YN":"N","INST_SBJT_PRGR_ST":"10","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","EXCTN_EXEC_AMT":"0"};
        	gridValue[cnt++] = {"AGRMT_INST_NM":"��RCMS","SPOT_BAL":"0","AGRMT_INST_ID":"10112249","SPOT_USE":"0","ITXP_NM":"�ܺ��ΰǺ�","ITXP_CD":"B0102","AGRMT_CASH_LIM_AMT":"10000","HGRK_ITXP_NM":"�ΰǺ�","HGRK_ITXP_CD":"B0100","EXCTN_LIMT_ST":"0","USE_APV_CASH_LIM_AMT":"10000","EXCTN_REG_VAT_AMT":"286","SPLM_AMT":"0","EXCTN_REG_AMT":"4536","EXCTN_BAL":"764","VAT_PSV_AMT":"0","AGRMT_INST_ROLE_DV":"�ְ����","SPOT_PLAN":"0","BZ_CLAS_NM":"RCMS �ǽ�","BZ_CLAS_CD":"S1598","INT_USE_AMT":"0","INT_USE_POSS_ITXP_YN":"N","INST_SBJT_PRGR_ST":"10","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","EXCTN_EXEC_AMT":"4236"};
        	gridValue[cnt++] = {"AGRMT_INST_NM":"��RCMS","SPOT_BAL":"0","AGRMT_INST_ID":"10112249","SPOT_USE":"0","ITXP_NM":"����Ȱ����","ITXP_CD":"B0202","AGRMT_CASH_LIM_AMT":"90000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","EXCTN_LIMT_ST":"0","USE_APV_CASH_LIM_AMT":"90000","EXCTN_REG_VAT_AMT":"7344","SPLM_AMT":"0","EXCTN_REG_AMT":"59066","EXCTN_BAL":"0","VAT_PSV_AMT":"2135","AGRMT_INST_ROLE_DV":"�ְ����","SPOT_PLAN":"0","BZ_CLAS_NM":"RCMS �ǽ�","BZ_CLAS_CD":"S1598","INT_USE_AMT":"0","INT_USE_POSS_ITXP_YN":"Y","INST_SBJT_PRGR_ST":"10","SBJT_ID":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","EXCTN_EXEC_AMT":"34958"};
        	
        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){
        	
        	gridValue[cnt++] = {"AGRMT_INST_NM":"��RCMS","SPOT_BAL":"-1","AGRMT_INST_ID":"10112249","SPOT_USE":"1","ITXP_NM":"����Ȱ����","ITXP_CD":"B0202","AGRMT_CASH_LIM_AMT":"20000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","EXCTN_LIMT_ST":"0","USE_APV_CASH_LIM_AMT":"20000","EXCTN_REG_VAT_AMT":"548","SPLM_AMT":"0","EXCTN_REG_AMT":"16875","EXCTN_BAL":"13180","VAT_PSV_AMT":"0","AGRMT_INST_ROLE_DV":"�ְ����","SPOT_PLAN":"0","BZ_CLAS_NM":"RCMS �ǽ�","BZ_CLAS_CD":"S1854","INT_USE_AMT":"0","INT_USE_POSS_ITXP_YN":"Y","INST_SBJT_PRGR_ST":"07","SBJT_ID":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","EXCTN_EXEC_AMT":"6820"};
        	gridValue[cnt++] = {"AGRMT_INST_NM":"��RCMS","SPOT_BAL":"0","AGRMT_INST_ID":"10112249","SPOT_USE":"0","ITXP_NM":"��Ź�������ߺ�","ITXP_CD":"B0401","AGRMT_CASH_LIM_AMT":"1000","HGRK_ITXP_NM":"��Ź�������ߺ�","HGRK_ITXP_CD":"B0400","EXCTN_LIMT_ST":"0","USE_APV_CASH_LIM_AMT":"1000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"0","EXCTN_BAL":"1000","VAT_PSV_AMT":"0","AGRMT_INST_ROLE_DV":"�ְ����","SPOT_PLAN":"0","BZ_CLAS_NM":"RCMS �ǽ�","BZ_CLAS_CD":"S1854","INT_USE_AMT":"0","INT_USE_POSS_ITXP_YN":"N","INST_SBJT_PRGR_ST":"07","SBJT_ID":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","EXCTN_EXEC_AMT":"0"};

        }
        
    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}




var cnt2 = 0;
function setGridData2(seqNo, instId){
    try{
        
        var gridValue = [];
        cnt = 0;
        if(!instId) return;
        
        
        //1. �ű԰���
        if("G00000000000001" == seqNo){
            
        //2. �������
        }else if("G00000000000002" == seqNo){

            gridValue[cnt2++] = {"RCV_ACCT_OWAC_NM":"��RCMS","ITXP_VAT_AMT":"0","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","SUB_DTLS_ITXP_CD":"B0201001","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","ITXP_NM":"������","ITXP_CD":"B0200","ITXP_SPLY_AMT":"10","BUTR_ID":"D201312192251782","EXCTN_EXEC_TM":"144742","EXCTN_EXEC_DT":"2013-12-26 14:47:42","EXCTN_AMT":"10","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","RCV_ACCT_NO":"888-88-888888-0","TRSC_EVDC_DV_NM":"��Ÿ����","TRSC_EVDC_DV":"E","TRSC_PFMC_ST":"B04110","SPLR_CO_NM":"(��) �� ��ü","TOTL_AMT":"10","RTRT_FIX_VAT_AMT":"0","RCV_ACCT_BNK_CD":"003","VAT_PROC_DV":"B01001","RCV_BNK_NM":"B ����","RTRT_FIX_SPLY_AMT":"0","ITXP_TRNS_AMT":"10","TRSC_DT":"2013-12-26","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
            gridValue[cnt2++] = {"RCV_ACCT_OWAC_NM":"��RCMS","ITXP_VAT_AMT":"150","SUB_DTLS_ITXP_NM":"�ܺ��ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"150","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0100","ITXP_SPLY_AMT":"1500","BUTR_ID":"E201312242251913","EXCTN_EXEC_TM":"210024","EXCTN_EXEC_DT":"2013-12-24 21:00:24","EXCTN_AMT":"1650","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","RCV_ACCT_NO":"999-99-999999-0","TRSC_EVDC_DV_NM":"��Ÿ����","TRSC_EVDC_DV":"E","TRSC_PFMC_ST":"B04110","SPLR_CO_NM":"(��) �� ��ü","TOTL_AMT":"1650","RTRT_FIX_VAT_AMT":"0","RCV_ACCT_BNK_CD":"003","VAT_PROC_DV":"B01001","RCV_BNK_NM":"F ����","RTRT_FIX_SPLY_AMT":"0","ITXP_TRNS_AMT":"1650","TRSC_DT":"2013-12-24","DTLS_ITXP_NM":"�ܺ��ΰǺ�","DTLS_ITXP_CD":"B0102"};
        
        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){

            gridValue[cnt2++] = {"RCV_ACCT_OWAC_NM":"��RCMS","ITXP_VAT_AMT":"0","SUB_DTLS_ITXP_NM":"�߱ٽĴ�","SUB_DTLS_ITXP_CD":"B0202037","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","ITXP_NM":"������","ITXP_CD":"B0200","ITXP_SPLY_AMT":"100","BUTR_ID":"E201203212648755","EXCTN_EXEC_TM":"145633","EXCTN_EXEC_DT":"2012-08-14 14:56:33","EXCTN_AMT":"100","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","RCV_ACCT_NO":"888-88-888888-0","TRSC_EVDC_DV_NM":"��Ÿ����","TRSC_EVDC_DV":"E","TRSC_PFMC_ST":"B04110","SPLR_CO_NM":"(��) �� ��ü","TOTL_AMT":"100","RTRT_FIX_VAT_AMT":"0","RCV_ACCT_BNK_CD":"020","VAT_PROC_DV":"B01001","RCV_BNK_NM":"B ����","RTRT_FIX_SPLY_AMT":"0","ITXP_TRNS_AMT":"100","TRSC_DT":"2012-08-14","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
            gridValue[cnt2++] = {"RCV_ACCT_OWAC_NM":"��RCMS","ITXP_VAT_AMT":"1","SUB_DTLS_ITXP_NM":"��������","SUB_DTLS_ITXP_CD":"B0202001","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"1","ITXP_NM":"������","ITXP_CD":"B0200","ITXP_SPLY_AMT":"1","BUTR_ID":"E201205072732291","EXCTN_EXEC_TM":"170200","EXCTN_EXEC_DT":"2012-07-29 17:02:00","EXCTN_AMT":"2","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","RCV_ACCT_NO":"999-99-999999-0","TRSC_EVDC_DV_NM":"��Ÿ����","TRSC_EVDC_DV":"E","TRSC_PFMC_ST":"B04110","SPLR_CO_NM":"(��) �� ��ü","TOTL_AMT":"2","RTRT_FIX_VAT_AMT":"0","RCV_ACCT_BNK_CD":"003","VAT_PROC_DV":"B01001","RCV_BNK_NM":"F ����","RTRT_FIX_SPLY_AMT":"0","ITXP_TRNS_AMT":"2","TRSC_DT":"2012-07-29","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};

        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){
        	
        	gridValue[cnt2++] = {"RCV_ACCT_OWAC_NM":"��RCMS","ITXP_VAT_AMT":"0","SUB_DTLS_ITXP_NM":"�߱ٽĴ�","SUB_DTLS_ITXP_CD":"B0202037","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","ITXP_NM":"������","ITXP_CD":"B0200","ITXP_SPLY_AMT":"1000","BUTR_ID":"E201102262438346","EXCTN_EXEC_TM":"115745","EXCTN_EXEC_DT":"2011-07-04 11:57:45","EXCTN_AMT":"1000","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","RCV_ACCT_NO":"999-99-999999-0","TRSC_EVDC_DV_NM":"��Ÿ����","TRSC_EVDC_DV":"E","TRSC_PFMC_ST":"B04110","SPLR_CO_NM":"(��) �� ��ü","TOTL_AMT":"1000","RTRT_FIX_VAT_AMT":"0","RCV_ACCT_BNK_CD":"020","VAT_PROC_DV":"B01001","RCV_BNK_NM":"F ����","RTRT_FIX_SPLY_AMT":"0","ITXP_TRNS_AMT":"1000","TRSC_DT":"2011-07-04","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt2++] = {"RCV_ACCT_OWAC_NM":"��RCMS","ITXP_VAT_AMT":"520","SUB_DTLS_ITXP_NM":"�����","SUB_DTLS_ITXP_CD":"B0202005","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"520","ITXP_NM":"������","ITXP_CD":"B0200","ITXP_SPLY_AMT":"5200","BUTR_ID":"T201107052612956","EXCTN_EXEC_TM":"095628","EXCTN_EXEC_DT":"2012-01-18 09:56:28","EXCTN_AMT":"5720","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","RCV_ACCT_NO":"888-88-888888-0","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_EVDC_DV":"T","TRSC_PFMC_ST":"B04110","SPLR_CO_NM":"(��) �� ��ü","TOTL_AMT":"5720","RTRT_FIX_VAT_AMT":"0","RCV_ACCT_BNK_CD":"020","VAT_PROC_DV":"B01001","RCV_BNK_NM":"B ����","RTRT_FIX_SPLY_AMT":"0","ITXP_TRNS_AMT":"5720","TRSC_DT":"2011-05-10","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};

        }
        
    }finally{
        gridData2 = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData2();  //rMateGrid ����
        
    }
}



// agrmtSeqNo
// agrmtInstId
function setGrid(){
    
	if("" == agrmtSeqNo || typeof agrmtSeqNo == "undefined"){return;}
	
     try {
         document.body.setCapture(); // 'wait'
         document.body.style.cursor = "wait";
         setGridData(agrmtSeqNo, agrmtInstId); //Insert    Grid
         document.body.style.cursor = "auto";
         document.body.releaseCapture(); //setCapture()_Next
     } finally {
         reset_submit();
     }
     
}


function setGrid2(){
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                    try{   
                        document.body.setCapture(); // 'wait'
                        document.body.style.cursor = "wait";
                        setGridData2(agrmtSeqNo, agrmtInstId); //Insert    Grid
                        document.body.style.cursor = "auto";
                        document.body.releaseCapture(); //setCapture()_Next
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
                
}


function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}
</script>

</body>
</html> 
