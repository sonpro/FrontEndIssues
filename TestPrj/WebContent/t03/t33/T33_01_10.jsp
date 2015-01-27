<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T33_01_10.jsp 
 *   Description        : ���ͱ�/�̿���û��� �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.17                     ������             
 *
 *  @author     ������
 *  @Since      2014.01.17
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

String sbjtId       = SessionUtil.getRequestValue(request, "sbjtId");
String agrmtSeqNo   = SessionUtil.getRequestValue(request, "agrmtSeqNo");
String agrmtInstId  = SessionUtil.getRequestValue(request, "agrmtInstId");
String RvcnAmt      = "0";                                                    // ���ͱ�

Long IntBal     = 0L;                   // �����ܾ�
Long IntBal_sum = 0L;                   // �����ܾ�+���ͱ�

String crovProcSt = "";

String sbjtData_instSbjtPrgrSt = "";
String sbjtData_sacShp = "";
String sbjtData_devStrDt = "";
String sbjtData_devEndDt = "";
 

//1. �ű԰���
if("G00000000000001".equals(agrmtSeqNo)){
    crovProcSt = "0";
    sbjtData_instSbjtPrgrSt = "10";
    sbjtData_sacShp = "1";
    sbjtData_devStrDt = "20130201";
    sbjtData_devEndDt = "20990131";
    
//2. �������
}else if("G00000000000002".equals(agrmtSeqNo)){
    
//3. �������(���� ������)
}else if("G00000000000003".equals(agrmtSeqNo)){
    crovProcSt = "1";
    sbjtData_instSbjtPrgrSt = "10";
    sbjtData_sacShp = "2";
    sbjtData_devStrDt = "20140101";
    sbjtData_devEndDt = "20130331";
    
//4. �������(���� ���� �Ϸ�)
}else if("G00000000000004".equals(agrmtSeqNo)){
    crovProcSt = "0";
    sbjtData_instSbjtPrgrSt = "07";
    sbjtData_sacShp = "1";
    sbjtData_devStrDt = "20100524";
    sbjtData_devEndDt = "20110524";
}

%>

<title>���ͱ��̿���û��� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���ͱ��̿���û���</p>
        </div>
        <!-- //head title// --> 
    </div>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" lockedColumnCount=\"2\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <groupedColumns>\
            <DataGridColumn id=\"HGRK_ITXP_NM\"       dataField=\"HGRK_ITXP_NM\"        headerText=\"���\"           width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITXP_NM\"            dataField=\"ITXP_NM\"             headerText=\"���κ��\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"���࿹��\">\
                <DataGridColumn id=\"PRE_CASH_LIM_AMT\"   dataField=\"PRE_CASH_LIM_AMT\"    headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"PRE_SPOT_PLAN\"      dataField=\"PRE_SPOT_PLAN\"       headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"���濹��\">\
                <DataGridColumn id=\"AGRMT_CASH_LIM_AMT\" dataField=\"AGRMT_CASH_LIM_AMT\"  headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_PLAN\"          dataField=\"SPOT_PLAN\"           headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"���⵵�̿���\">\
                <DataGridColumn id=\"PRE_CROV_AMT\"       dataField=\"PRE_CROV_AMT\"        headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"PRE_SPOT_CROV_AMT\"  dataField=\"PRE_SPOT_CROV_AMT\"   headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"���ݾ�\">\
                <DataGridColumn id=\"EXCTN_EXEC_AMT\"     dataField=\"EXCTN_EXEC_AMT\"      headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_USE\"           dataField=\"SPOT_USE\"            headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"����ܾ�\">\
                <DataGridColumn id=\"EXCTN_BAL\"          dataField=\"EXCTN_BAL\"           headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_BAL\"           dataField=\"SPOT_BAL\"            headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"���⵵ �̿��ݾ�\">\
                <DataGridColumn id=\"CROV_AMT\"           dataField=\"CROV_AMT\"            headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"SPOT_CROV_AMT\"      dataField=\"SPOT_CROV_AMT\"       headerText=\"����\"           width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </DataGridColumnGroup>\
        </groupedColumns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PRE_CASH_LIM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PRE_SPOT_PLAN}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{AGRMT_CASH_LIM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_PLAN}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PRE_CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PRE_SPOT_CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_EXEC_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_USE}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_USE}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

    
var layoutStr_crov = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" lockedColumnCount=\"2\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\" >\
            <groupedColumns>\
                <DataGridColumn id=\"HGRK_ITXP_NM\"           dataField=\"HGRK_ITXP_NM\"            headerText=\"���\"               width=\"100\" visible=\"true\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_NM\"                dataField=\"ITXP_NM\"                 headerText=\"���κ��\"           width=\"100\" visible=\"true\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"����ܾ�(�������ѵ�-���ݾ�)\">\
                    <DataGridColumn id=\"USE_APV_CASH_LIM_AMT2\"  dataField=\"USE_APV_CASH_LIM_AMT2\"   headerText=\"����\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                    <DataGridColumn id=\"SPOT_BAL\"               dataField=\"SPOT_BAL\"                headerText=\"����\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"�̿���û�ݾ�\">\
                    <DataGridColumn id=\"CROV_CASH_APC_AMT2\"     dataField=\"CROV_CASH_APC_AMT2\"      headerText=\"����\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                    <DataGridColumn id=\"CROV_SPOT_APC_AMT2\"     dataField=\"CROV_SPOT_APC_AMT2\"      headerText=\"����\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerStyleName=\"gridHeaderStyle\" headerText=\"�ܾ�\">\
                    <DataGridColumn id=\"BAL_CASH\"               dataField=\"BAL_CASH\"                headerText=\"����\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                    <DataGridColumn id=\"BAL_SPOT\"               dataField=\"BAL_SPOT\"                headerText=\"����\"               width=\"110\" visible=\"true\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                </DataGridColumnGroup>\
                <DataGridColumn id=\"CROV_APC_RSN\"           dataField=\"CROV_APC_RSN\"            headerText=\"�̿���û����\"       width=\"100\" visible=\"true\" textAlign=\"left\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"CROV_TNDW_RSN\"          dataField=\"CROV_TNDW_RSN\"           headerText=\"�̿��ݷ�����\"       width=\"100\" visible=\"true\" textAlign=\"left\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"HGRK_ITXP_CD\"           dataField=\"HGRK_ITXP_CD\"            headerText=\"����ڵ�\"           width=\"100\" visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_CD\"                dataField=\"ITXP_CD\"                 headerText=\"�����ڵ�\"           width=\"100\" visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"USE_APV_CASH_LIM_AMT\"   dataField=\"USE_APV_CASH_LIM_AMT\"    headerText=\"�������ѵ��ݾ�\"   width=\"110\" visible=\"false\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"BF_YR_CASH_CROV_AMT\"    dataField=\"BF_YR_CASH_CROV_AMT\"     headerText=\"���⵵�����̿��ݾ�\" width=\"110\" visible=\"false\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
                <DataGridColumn id=\"BF_YR_SPOT_CROV_AMT\"    dataField=\"BF_YR_SPOT_CROV_AMT\"     headerText=\"���⵵�����̿��ݾ�\" width=\"100\" visible=\"false\" textAlign=\"right\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            </groupedColumns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
            <footers>\
                <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                    <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_APV_CASH_LIM_AMT2}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CROV_CASH_APC_AMT2}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CROV_SPOT_APC_AMT2}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{BAL_CASH}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{BAL_SPOT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

        //Ŭ�� ��

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", layoutComplete_rMate);
        

    };
    

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
    
    
    
    //rMateGrid ���� ��ü
    var flashVars_crov = "dataType=json&bridgeName=gridBridge_crov";
    var gridApp_crov; // �÷��� �⺻ ��ü
    var gridData_crov; // �׸��� ������ ���
    var gridRoot_crov; // ����Ÿ�� �׸��带 �����ϴ� ��ü
    var dataGrid_crov; // �׸��� ���� ���
    var collection_crov; // �׸����� ����Ÿ ��ü
    var selectorColumn_crov; // ������ �÷�
    
    
    
    //�׸��� ���̾ƿ� ȣ�� 
    var rMateGridInitLayout_crov = function() {
      gridApp_crov = FABridge.gridBridge_crov.root();
      gridRoot_crov = gridApp_crov.getGridRoot();
      gridApp_crov.setLayout(layoutStr_crov);   //�׸��� ���̾ƿ� ����

      

      var layoutCompleteHandler = function(event) {
          dataGrid_crov = gridApp_crov.getDataGrid();
          
      };
      

      //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
      gridRoot_crov.addEventListener("layoutComplete", layoutCompleteHandler);
      gridRoot_crov.addEventListener("layoutComplete", layoutComplete_crov);
      
      //���󺯰�
      gridRoot_crov.addEventListener("dataComplete", uf_cellColor_crov);   //���󺯰�
      
      gridRoot_crov.addEventListener("itemDataChanged", dataGrid_init);

  };

  //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
  FABridge.addInitializationCallback("gridBridge_crov", rMateGridInitLayout_crov);


  //�ε� �� rMadeGrid ���
  function rMateGridSetData_crov() {
      gridApp_crov = FABridge.gridBridge_crov.root();
      gridApp_crov.setData(JSON.stringify(gridData_crov)); //������ ���
  };

    
    
    
    
    //rMateGrid �ε��� �Ϸ� �� �� ��ȸ�� ����
    var isGrid = false;
    var isGrid_crov = false;
    var isLoading = false;
    
    // ó�� ��ȸ�ÿ��� �ڵ���ȸ�� �̷�� ���� �Ѵ�.
    function layoutComplete_rMate(){
        isGrid = true;
        if(isLoading) return;  //ó����ȸ�� isLoading�� true�� �����Ͽ� �ڵ���ȸ�� �ǰ� �ϰ�, �ι�°���ʹ� �ڵ���ȸ�� ���� �ʰ��Ѵ�.
        gridComplit();
    }
    function layoutComplete_crov(){
        isGrid_crov = true;
        if(isLoading) return;  //ó����ȸ�� isLoading�� true�� �����Ͽ� �ڵ���ȸ�� �ǰ� �ϰ�, �ι�°���ʹ� �ڵ���ȸ�� ���� �ʰ��Ѵ�.
        gridComplit();
    }
    

    

    function gridComplit(){
        
        if( !(isGrid && isGrid_crov)) return;
        if(!isLoading) isLoading = true; // �׸��� �ʱ�ȭ�� �ߺ�ó�� ���� �ʱ����ؼ� ó��
            
        uf_proce_display_on();  //�ε���
        
        setTimeout(
                function(){
                    try{
                        SetData();
                        reset_submit();
                    }finally{
                        reset_submit();
                    }
                }
                , 1000);   // 1���� ���� 1000 = 1��   
                
        
    }
   
    
    function uf_cellColor_crov(){
        if (collection_crov == null)
            collection_crov = gridRoot_crov.getCollection();
        if (collection_crov == null) {
            alert("collection ��ü�� ã�� �� �����ϴ�");
            return;
        }
        for (var i = 0; i < collection_crov.getLength(); i++) {
            if(document.frm.CrovProcSt.value == "1"){
                var columns = dataGrid_crov.getColumns();
                columns[4].setEditable(false);
                columns[5].setEditable(false);
                columns[8].setEditable(false);
            }else{
                collection_crov.addCellAttributeDetailAt(i, 4, 1, 1, null, 0xEDF2FE);
                collection_crov.addCellAttributeDetailAt(i, 5, 1, 1, null, 0xEDF2FE);
                collection_crov.addCellAttributeDetailAt(i, 8, 1, 1, null, 0xEDF2FE);
            }
            
        }
    }
    
    
     
    function dataGrid_init(event){
        var rowIndex = event.getRowIndex();                 // ����� ���ȣ
        var columnIndex = event.getColumnIndex();       // ����� ����ȣ
        var dataField = event.getDataField();               // ����� ���� ����Ÿ �ʵ�
        var dataRow = gridRoot_crov.getItemAt(rowIndex); // ����� ����Ÿ ���ڵ�
        
        if("CROV_CASH_APC_AMT2" == dataField || "CROV_SPOT_APC_AMT2" == dataField){
            
            var footer = gridRoot_crov.getObjectById("footer");
            footer.invalidateData();
            
            
            uf_CalAmt_rMate(dataRow, rowIndex, columnIndex);
        }else{
            dataGrid_crov.invalidateList();
        }
        
    }
    
    
    
    

    /*****************************************************************
     * uf_CalAmt        �������ѵ�,�ܿ��ѵ� ���
     * @param
     * @return
    ******************************************************************/
    function uf_CalAmt_rMate(dataRow, rowIndex, columnIndex) {
        
        var change_amt1=0;              //�����ܾ�
        var change_amt2=0;              //�����ܾ�

        change_amt1 = Number(dataRow.USE_APV_CASH_LIM_AMT2)-Number(dataRow.CROV_CASH_APC_AMT2);
        change_amt2 = Number(dataRow.SPOT_BAL)-Number(dataRow.CROV_SPOT_APC_AMT2);
        
        if((change_amt1<0) || (change_amt2<0)){
            alert("��û�ݾ��� ����ܾ׺��� Ŭ �� �����ϴ�.");
            gridRoot_crov.setItemFieldAt("0", rowIndex, "CROV_CASH_APC_AMT2");     // ��, row, id
            gridRoot_crov.setItemFieldAt("0", rowIndex, "CROV_SPOT_APC_AMT2");     // ��, row, id
            
            var footer = gridRoot_crov.getObjectById("footer");
            footer.invalidateData();
            
            return;
        }else{
            gridRoot_crov.setItemFieldAt("0", rowIndex, "BAL_CASH");     // ��, row, id   �����ܾ� �ݾ��Է�
            gridRoot_crov.setItemFieldAt("0", rowIndex, "BAL_SPOT");     // ��, row, id   �����ܾ� �ݾ��Է�
            
            var footer = gridRoot_crov.getObjectById("footer");
            footer.invalidateData();
        }
        
    }
    
    
    
    
    /*****************************************************************
     * uf_crovApc       �̿���û��û
     * @param
     * @return
    ******************************************************************/
    function uf_crovApc_rMate() {
        
        var frm        = document.frm;
        var grid       = gridRoot_crov;
        var grid2      = gridRoot;
        
        var instAmt    = "";
        var insertData = "";   //����Ե�����
        var cnt        = 0;
        // 2011.07.19 
        // �������� : ��������������(����:10) �̰�, ����������°� (����������:0,��Ź���������ϿϷ�:4)
        // --�ϰ����� : ���߽��� ~ �������� ������ ��� ����
        // --�ܰ����� : ���߽��� ~ �������� ������ ��� ����
        // �ϰ�����,�ܰ����� -> �������� ���� ���Ŀ� ��� ���� �ϵ��� ����
        // �������� : 1(�ϰ�),2(����),3(�ܰ�),4(��������),5(Ư��)
        var sac_shp    = <%=sbjtData_sacShp%>;
        var dev_str_dt = <%=sbjtData_devStrDt%>;
        var dev_end_dt = <%=sbjtData_devEndDt%>;
        
        if(sac_shp == "1" || sac_shp =="3" ){
            var today = new Date();
            var year  = today.getFullYear();
            var month = today.getMonth()+1;
            var day   = today.getDate();
            if(day<10)   day   = "0" + day;
            if(month<10) month = "0" + month;       
            var valDate = year + "" + month + "" + day;
            
            if(valDate < dev_end_dt)
            {
                alert("�̿���Ͻ�û �Ⱓ�� �ƴմϴ�.");
                return;
            }
             
        //��������
        }else if(sac_shp == "2"){
            //����������� 10:"����"
           if("10"!='<%=sbjtData_instSbjtPrgrSt%>'){
                alert("�ش� ����� ����ܰ谡 �ƴմϴ�.");
                return;
            }  
                
        }else {
            alert("���� �̿���û����� �ϰ�����/��������/�ܰ����꿡���� �����մϴ�.");
            return;
        }  
        
        
        for(var i=0; i<getGridRowCount_rMate(grid);i++){
            var dataRow_crov = grid.getItemAt(i);
            var dataRow = grid2.getItemAt(i);
        
            if((Number(dataRow_crov.CROV_CASH_APC_AMT2)<0) || (Number(dataRow_crov.CROV_SPOT_APC_AMT2)<0)){
                alert("���̳ʽ� �ݾ��� �Է� �� �� �����ϴ�.");
                grid.setItemFieldAt("0", rowIndex, "CROV_CASH_APC_AMT2");     // ��, row, id
                grid.setItemFieldAt("0", rowIndex, "CROV_SPOT_APC_AMT2");     // ��, row, id
                
                var footer = grid.getObjectById("footer");
                footer.invalidateData();
                return;
            }
            
            if((Number(dataRow_crov.CROV_CASH_APC_AMT2) == 0) && (Number(dataRow_crov.CROV_SPOT_APC_AMT2) == 0)){
                cnt++;
            }
            
            //2011.08.04
            //���̿���û��� Ȯ�� : ���̿���û��Ͻ� 0������ �̿���û��� ���� ����
//            if( (Number(dataRow.CROV_AMT > 0)) || (Number(dataRow.SPOT_CROV_AMT > 0)) ){
            if( (Number(dataRow.CROV_AMT) > 0) || (Number(dataRow.SPOT_CROV_AMT) > 0) ){

    /*          if(""==grid.GetValue(i,8)|| null==grid.GetValue(i,8)){
                    alert("�̿���û������ �Է��ϼ���.");
                    return;  */
                
                //  ������ �̿���û �� ��� �޼��� ��µǴ� �κ� ����  2012.07.24   pkj
                if(  !((("0"==dataRow_crov.CROV_CASH_APC_AMT2)||(null==dataRow_crov.CROV_CASH_APC_AMT2)) && 
                        (("0"==dataRow_crov.CROV_SPOT_APC_AMT2)||(null==dataRow_crov.CROV_SPOT_APC_AMT2)) ) &&
                            ((""==dataRow_crov.CROV_APC_RSN)||(null==dataRow_crov.CROV_APC_RSN)) ){
                    
                    alert("�̿���û ������ �Է��ϼ���.");
                    return;
                }else if(  (("0"==dataRow_crov.CROV_CASH_APC_AMT2)||(null==dataRow_crov.CROV_CASH_APC_AMT2)) &&
                         (("0"==dataRow_crov.CROV_SPOT_APC_AMT2)||(null==dataRow_crov.CROV_SPOT_APC_AMT2))  &&
                          !((""==dataRow_crov.CROV_APC_RSN)||(null==dataRow_crov.CROV_APC_RSN))  ){
                    
                    alert("�̿���û �ݾ׾��� ��û ������ �Է��Ͻ� ����� �ֽ��ϴ�. ");
                    return;
                            
                }else
                    {
                        insertData += "&ITXP_CD="+ dataRow_crov.ITXP_CD; //�����ڵ�
                        insertData += "&ITXP_NM="+ dataRow_crov.ITXP_NM; //���κ��
                        //insertData += "&DTXP_CD="+dataRow.ITXP_CD;
                        if((""==dataRow_crov.CROV_CASH_APC_AMT2) || (null==dataRow_crov.CROV_CASH_APC_AMT2))
                            instAmt =   "0";
                        else
                            instAmt =   dataRow_crov.CROV_CASH_APC_AMT2;
                        insertData += "&CROV_CASH="+instAmt;
                        
                        if((""==dataRow_crov.CROV_SPOT_APC_AMT2) || (null==dataRow_crov.CROV_SPOT_APC_AMT2))
                            instAmt =   "0";
                        else
                            instAmt =   dataRow_crov.CROV_SPOT_APC_AMT2;

                        insertData += "&CROV_SPOT="+instAmt;
                        insertData += "&APC_RSN="+dataRow_crov.CROV_APC_RSN;
                        ////////2011.07.13 ///////////////// 
                        if(dataRow_crov.BAL_CASH=="" || (dataRow_crov.BAL_CASH == null))
                            instAmt = "0";
                        else 
                            instAmt = dataRow_crov.BAL_CASH;

                        insertData += "&EXCTN_BAL=" + instAmt;  //�����ܾ�

                        if(dataRow_crov.BAL_SPOT=="" || (dataRow_crov.BAL_SPOT == null))
                            instAmt = "0";
                        else 
                            instAmt = dataRow_crov.BAL_SPOT;

                        insertData += "&SPOT_BAL=" + instAmt;   //�����ܾ�
                        ////////2011.07.18 /////////////////
                        if(dataRow_crov.USE_APV_CASH_LIM_AMT == "" || (dataRow_crov.USE_APV_CASH_LIM_AMT == null))
                            instAmt = "0";
                        else
                            instAmt = dataRow_crov.USE_APV_CASH_LIM_AMT;  

                        insertData += "&USE_APV_CASH_LIM_AMT=" + instAmt;   //�������ѵ��ݾ�

                        if(dataRow_crov.BF_YR_CASH_CROV_AMT == "" || (dataRow_crov.BF_YR_CASH_CROV_AMT == null))
                            instAmt = "0";
                        else
                            instAmt = dataRow_crov.BF_YR_CASH_CROV_AMT;  

                        insertData += "&BF_YR_CASH_CROV_AMT=" + instAmt;    //���⵵�����̿��ݾ�

                        if(dataRow_crov.BF_YR_SPOT_CROV_AMT == "" || (dataRow_crov.BF_YR_SPOT_CROV_AMT == null))
                            instAmt = "0";
                        else
                            instAmt = dataRow_crov.BF_YR_SPOT_CROV_AMT;  

                        insertData += "&BF_YR_SPOT_CROV_AMT=" + instAmt;    //���⵵�����̿��ݾ�
                    
                        /////2011.07.20 /////////////////
                        insertData += "&SAC_SHP=" + sac_shp;        //��������
                        insertData += "&DEV_STR_DT=" + dev_str_dt;      //���߽��۽ð�
                        insertData += "&DEV_END_DT=" + dev_end_dt;      //��������ð�
                    }
                
            }else if( (Number(dataRow.CROV_AMT == 0))  && (Number(dataRow.SPOT_CROV_AMT == 0)) ) {


                if(  !((("0"==dataRow_crov.CROV_CASH_APC_AMT2)||(null==dataRow_crov.CROV_CASH_APC_AMT2)) && 
                        (("0"==dataRow_crov.CROV_SPOT_APC_AMT2)||(null==dataRow_crov.CROV_SPOT_APC_AMT2)) ) &&
                            ((""==dataRow_crov.CROV_APC_RSN)||(null==dataRow_crov.CROV_APC_RSN)) ){
                    
                    alert("�̿���û ������ �Է��ϼ���.");
                    return;
                }else if(  (("0"==dataRow_crov.CROV_CASH_APC_AMT2)||(null==dataRow_crov.CROV_CASH_APC_AMT2)) &&
                         (("0"==dataRow_crov.CROV_SPOT_APC_AMT2)||(null==dataRow_crov.CROV_SPOT_APC_AMT2))  &&
                          !((""==dataRow_crov.CROV_APC_RSN)||(null==dataRow_crov.CROV_APC_RSN))  ){
                    
                    alert("�̿���û �ݾ׾��� ��û ������ �Է��Ͻ� ����� �ֽ��ϴ�. ");
                    return;
                            
                }else{
                    insertData += "&ITXP_CD="+ dataRow.ITXP_CD; //�����ڵ�
                    insertData += "&ITXP_NM="+ dataRow.ITXP_NM;  //���κ��
                    //insertData += "&DTXP_CD="+dataRow.ITXP_CD;
                    if((""==dataRow_crov.CROV_CASH_APC_AMT2) || (null==dataRow_crov.CROV_CASH_APC_AMT2))
                        instAmt =   "0";
                    else
                        instAmt =   dataRow_crov.CROV_CASH_APC_AMT2;
                    insertData += "&CROV_CASH="+instAmt;
                    
                    if((""==dataRow_crov.CROV_SPOT_APC_AMT2) || (null==dataRow_crov.CROV_SPOT_APC_AMT2))
                        instAmt =   "0";
                    else
                        instAmt =   dataRow_crov.CROV_SPOT_APC_AMT2;

                    insertData += "&CROV_SPOT="+instAmt;
                    insertData += "&APC_RSN="+dataRow_crov.CROV_APC_RSN;
                    ////////2011.07.13 ///////////////// 
                    if(dataRow_crov.BAL_CASH=="" || (dataRow_crov.BAL_CASH == null))
                        instAmt = "0";
                    else 
                        instAmt = dataRow_crov.BAL_CASH;

                    insertData += "&EXCTN_BAL=" + instAmt;  //�����ܾ�

                    if(dataRow_crov.BAL_SPOT=="" || (dataRow_crov.BAL_SPOT == null))
                        instAmt = "0";
                    else 
                        instAmt = dataRow_crov.BAL_SPOT;

                    insertData += "&SPOT_BAL=" + instAmt;   //�����ܾ�
                    ////////2011.07.18 /////////////////
                    if(dataRow_crov.USE_APV_CASH_LIM_AMT == "" || (dataRow_crov.USE_APV_CASH_LIM_AMT == null))
                        instAmt = "0";
                    else
                        instAmt = dataRow_crov.USE_APV_CASH_LIM_AMT;  

                    insertData += "&USE_APV_CASH_LIM_AMT=" + instAmt;   //�������ѵ��ݾ�

                    if(dataRow_crov.BF_YR_CASH_CROV_AMT == "" || (dataRow_crov.BF_YR_CASH_CROV_AMT == null))
                        instAmt = "0";
                    else
                        instAmt = dataRow_crov.BF_YR_CASH_CROV_AMT;  

                    insertData += "&BF_YR_CASH_CROV_AMT=" + instAmt;    //���⵵�����̿��ݾ�

                    if(dataRow_crov.BF_YR_SPOT_CROV_AMT == "" || (dataRow_crov.BF_YR_SPOT_CROV_AMT == null))
                        instAmt = "0";
                    else
                        instAmt = dataRow_crov.BF_YR_SPOT_CROV_AMT;  

                    insertData += "&BF_YR_SPOT_CROV_AMT=" + instAmt;    //���⵵�����̿��ݾ�
                
                    /////2011.07.20 /////////////////
                    insertData += "&SAC_SHP=" + sac_shp;        //��������
                    insertData += "&DEV_STR_DT=" + dev_str_dt;      //���߽��۽ð�
                    insertData += "&DEV_END_DT=" + dev_end_dt;      //��������ð�
                }
            }
        }

        if(frm.CrovProcSt.value == "1"){
            alert("�̿���û ������°� ��� �� ������ �Ǿ�߸� �ٽ� ��û�Ͻ� �� �ֽ��ϴ�.");
            return;
        }

        
        if(cnt == getGridRowCount_rMate(grid)){
            alert("�̿���û �ݾ��� 0���� ��쿡�� �̿���û�� �ȵ˴ϴ�.");
            return;
        }
        
        get2post(frm, insertData);

        
                    
        uf_proce_display_on();  //�ε���
        
        setTimeout(
                function(){
                    reset_submit();
                    alert("���⵵ �̿���û�� �Ϸ�Ǿ����ϴ�.");
                    window.close();
                }
                , 1000);   // 1���� ���� 1000 = 1��   
        
        
        removeTempAttribute(frm);

    }
        
        
        
        
        
        
        
        
    /*****************************************************************
     * uf_crovCancel        ������� �̿���û ���
     * @param
     * @return
    ******************************************************************/
    function uf_crovCancel_rMate(){
        var frm     = document.frm;
        var grid    = gridRoot_crov;
        var grid2   = gridRoot;
        
        var instAmt    = "";
        var insertData = "";   //����Ե�����
        var msg        = "";
        
        if(frm.CrovProcSt.value != "1"){
            alert("���� �̿���û���´� ��� �� ������ �Ǿ��ִ� �����̱� ������ \n�ٽ� ��Ҹ� �Ͻ� �� �����ϴ�.\n�ٽ� �̿���û�� �Ǿ�߸� ��Ұ� �����մϴ�.");
            return;
        }
        for(var i=0; i<getGridRowCount_rMate(grid);i++){
            var dataRow_crov = grid.getItemAt(i);
            var dataRow = grid2.getItemAt(i);
            if( (Number(dataRow.CROV_AMT > 0)) || (Number(dataRow.SPOT_CROV_AMT > 0)) ){

                insertData += "&ITXP_CD="+ dataRow.ITXP_CD;
                insertData += "&ITXP_NM="+ dataRow.ITXP_NM;
                
                if((""==dataRow_crov.CROV_CASH_APC_AMT2) || (null==dataRow_crov.CROV_CASH_APC_AMT2)){
                    instAmt =   "0";
                } else{
                    instAmt =   dataRow_crov.CROV_CASH_APC_AMT2;
                }
                insertData += "&CROV_CASH="+instAmt;
                
                if((""==dataRow_crov.CROV_SPOT_APC_AMT2) || (null==dataRow_crov.CROV_SPOT_APC_AMT2)){
                    instAmt =   "0";
                }
                else{
                    instAmt =   dataRow_crov.CROV_SPOT_APC_AMT2;
                }
                insertData += "&CROV_SPOT="+instAmt;
                
                if(dataRow_crov.BAL_CASH=="" || (dataRow_crov.BAL_CASH == null)){
                    instAmt = "0";
                } else {
                    instAmt = dataRow_crov.BAL_CASH;
                }
                insertData += "&EXCTN_BAL=" + instAmt;  //�����ܾ�

                if(dataRow_crov.BAL_SPOT=="" || (dataRow_crov.BAL_SPOT == null)){
                    instAmt = "0";
                } else {
                    instAmt = dataRow_crov.BAL_SPOT;
                } 
                insertData += "&SPOT_BAL=" + instAmt;   //�����ܾ�

                if(dataRow.USE_APV_CASH_LIM_AMT == "" || (dataRow.USE_APV_CASH_LIM_AMT == null)){
                    instAmt = "0";
                } else {
                    instAmt = dataRow.USE_APV_CASH_LIM_AMT;  
                }
                insertData += "&USE_APV_CASH_LIM_AMT=" + instAmt;   //�������ѵ��ݾ�
                
                if(dataRow.CROV_AMT == "" || (dataRow.CROV_AMT == null)){
                    instAmt = "0";  
                } else {
                    instAmt = dataRow.CROV_AMT;
                }
                insertData += "&CROV_CASH_AMT=" + instAmt;  //���⵵�̿����ݱݾ�
                
                if(dataRow.SPOT_CROV_AMT == "" || (dataRow.SPOT_CROV_AMT == null)){
                    instAmt = "0";  
                } else {
                    instAmt = dataRow.SPOT_CROV_AMT;
                }
                insertData += "&CROV_SPOT_AMT=" + instAmt;  //���⵵�̿������ݾ�

            }else if( (Number(dataRow.CROV_AMT == 0))  && (Number(dataRow.SPOT_CROV_AMT == 0)) ) {

                insertData += "&ITXP_CD="+ dataRow.ITXP_CD;
                insertData += "&ITXP_NM="+ dataRow.ITXP_NM;
                if((""==dataRow_crov.CROV_CASH_APC_AMT2) || (null==dataRow_crov.CROV_CASH_APC_AMT2)){
                    instAmt =   "0";
                } else{
                    instAmt =   dataRow_crov.CROV_CASH_APC_AMT2;
                }
                insertData += "&CROV_CASH="+instAmt;
                
                if((""==dataRow_crov.CROV_SPOT_APC_AMT2) || (null==dataRow_crov.CROV_SPOT_APC_AMT2)){
                    instAmt =   "0";
                }
                else{
                    instAmt =   dataRow_crov.CROV_SPOT_APC_AMT2;
                }
                insertData += "&CROV_SPOT="+instAmt;

                if(dataRow_crov.BAL_CASH=="" || (dataRow_crov.BAL_CASH == null)){
                    instAmt = "0";
                } else {
                    instAmt = dataRow_crov.BAL_CASH;
                }
                insertData += "&EXCTN_BAL=" + instAmt;  //�����ܾ�

                if(dataRow_crov.BAL_SPOT=="" || (dataRow_crov.BAL_SPOT == null)){
                    instAmt = "0";
                } else {
                    instAmt = dataRow_crov.BAL_SPOT;
                } 
                insertData += "&SPOT_BAL=" + instAmt;   //�����ܾ�
                
                if(dataRow.USE_APV_CASH_LIM_AMT == "" || (dataRow.USE_APV_CASH_LIM_AMT == null)){
                    instAmt = "0";  
                } else {
                    instAmt = dataRow.USE_APV_CASH_LIM_AMT;
                }
                insertData += "&USE_APV_CASH_LIM_AMT=" + instAmt;   //�������ѵ��ݾ�
                
                if(dataRow.CROV_AMT == "" || (dataRow.CROV_AMT == null)){
                    instAmt = "0";  
                } else {
                    instAmt = dataRow.CROV_AMT;
                }
                insertData += "&CROV_CASH_AMT=" + instAmt;  //���⵵�̿����ݱݾ�
                
                if(dataRow.SPOT_CROV_AMT == "" || (dataRow.SPOT_CROV_AMT == null)){
                    instAmt = "0";  
                } else {
                    instAmt = dataRow.SPOT_CROV_AMT;
                }
                insertData += "&CROV_SPOT_AMT=" + instAmt;  //���⵵�̿������ݾ�

            }
        }
        
        get2post(frm, insertData);
        
        msg = "�̿���û�ϽŰ��� ����Ͻðڽ��ϱ�?";
        
        if(confirm(msg)) {
            uf_proce_display_on();  //�ε���
            
            setTimeout(
                    function(){
                        reset_submit();
                        alert("�̿���û��Ұ� ���������� ó���Ǿ����ϴ�.");
                        window.close();
                    }
                    , 1000);   // 1���� ���� 1000 = 1��   
            removeTempAttribute(frm);
                    
        }
    }
        
     
    $(document).ready(function() {
        // rMateGrid �ʱ�ȭ
        rMateGridInit();
    }); 
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<script type="text/javascript">
function SetData() { 
    
    var seqNo = "<%=agrmtSeqNo%>";

    if(!seqNo || seqNo == "") return;
    if( isSubmit() ) return;    // ����ó��
    
        
    try {
        
        var cnt = 0;
        var cnt_crov = 0;
        var gridValue = [];
        var gridValue_crov = [];
        
        //1. �ű԰���
        if("G00000000000001" == seqNo){
            

            document.frm.CrovProcSt.value = "0";
            
            <%
            RvcnAmt = "0";
            IntBal = Long.parseLong("0");
            IntBal_sum = Long.parseLong("0");
            %>
 
            
        //2. �������
        }else if("G00000000000002" == seqNo){


        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){

            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"����Ȱ����","PRE_CASH_LIM_AMT":"20000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"20000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"19500","SPOT_USE":"0","EXCTN_BAL":"500","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�����ü������ �� ����","PRE_CASH_LIM_AMT":"38000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"38000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"37200","SPOT_USE":"0","EXCTN_BAL":"800","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�ΰǺ�","PRE_CASH_LIM_AMT":"30000","PRE_SPOT_PLAN":"30000","AGRMT_CASH_LIM_AMT":"30000","SPOT_PLAN":"30000","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"30000","SPOT_USE":"30000","EXCTN_BAL":"0","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������������","PRE_CASH_LIM_AMT":"9000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"9000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"8900","SPOT_USE":"0","EXCTN_BAL":"100","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������","PRE_CASH_LIM_AMT":"2000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"2000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"2000","SPOT_USE":"0","EXCTN_BAL":"0","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"������","PRE_CASH_LIM_AMT":"1000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"1000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"1000","SPOT_USE":"0","EXCTN_BAL":"0","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};

            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"����Ȱ����","USE_APV_CASH_LIM_AMT2":"500","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"1363","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�����ü������ �� ����","USE_APV_CASH_LIM_AMT2":"800","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"4181","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�ΰǺ�","USE_APV_CASH_LIM_AMT2":"0","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"0","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������������","USE_APV_CASH_LIM_AMT2":"100","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"100","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������","USE_APV_CASH_LIM_AMT2":"0","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"0","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"������","USE_APV_CASH_LIM_AMT2":"0","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"90","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};

            
            document.frm.CrovProcSt.value = "1";
            
            <%
            RvcnAmt = "10000";
            IntBal = Long.parseLong("0");
            IntBal_sum = Long.parseLong("10000");
            %>
        
        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){

            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"����Ȱ����","PRE_CASH_LIM_AMT":"20000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"20000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"18637","SPOT_USE":"0","EXCTN_BAL":"1363","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�����ü������ �� ����","PRE_CASH_LIM_AMT":"38000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"38000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"33819","SPOT_USE":"0","EXCTN_BAL":"4181","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�ΰǺ�","PRE_CASH_LIM_AMT":"30000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"30000","SPOT_PLAN":"30000","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"30000","SPOT_USE":"30000","EXCTN_BAL":"0","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������������","PRE_CASH_LIM_AMT":"9000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"9000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"8900","SPOT_USE":"0","EXCTN_BAL":"100","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������","PRE_CASH_LIM_AMT":"2000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"2000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"2000","SPOT_USE":"0","EXCTN_BAL":"0","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};
            gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"������","PRE_CASH_LIM_AMT":"1000","PRE_SPOT_PLAN":"0","AGRMT_CASH_LIM_AMT":"1000","SPOT_PLAN":"0","PRE_CROV_AMT":"0","PRE_SPOT_CROV_AMT":"0","EXCTN_EXEC_AMT":"910","SPOT_USE":"0","EXCTN_BAL":"90","SPOT_BAL":"0","CROV_AMT":"0","SPOT_CROV_AMT":"0"};

            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"����Ȱ����","USE_APV_CASH_LIM_AMT2":"1363","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"1363","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"1363","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�����ü������ �� ����","USE_APV_CASH_LIM_AMT2":"4181","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"4181","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"4181","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�ΰǺ�","USE_APV_CASH_LIM_AMT2":"0","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"0","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������������","USE_APV_CASH_LIM_AMT2":"100","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"100","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"100","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������","USE_APV_CASH_LIM_AMT2":"0","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"0","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"0","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};
            gridValue_crov[cnt_crov++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"������","USE_APV_CASH_LIM_AMT2":"90","SPOT_BAL":"0","CROV_CASH_APC_AMT2":"0","CROV_SPOT_APC_AMT2":"0","BAL_CASH":"90","BAL_SPOT":"0","CROV_APC_RSN":"","CROV_TNDW_RSN":"","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","USE_APV_CASH_LIM_AMT":"90","BF_YR_CASH_CROV_AMT":"0","BF_YR_SPOT_CROV_AMT":"0"};

            
            document.frm.CrovProcSt.value = "0";
            
            <%
            RvcnAmt = "0";
            IntBal = Long.parseLong("0");
            IntBal_sum = Long.parseLong("0");
            %>
            
        }
                


    
        
    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        gridData_crov = gridValue_crov;
        rMateGridSetData();  //rMateGrid ����
        rMateGridSetData_crov();
        
    }
}

</script>



        <div id="body">
            <form name="frm" method="post">
            <input type="hidden" name="CrovProcSt" value="">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>���������Ȳ</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "255", "#FFFFFF");
                </script>
            </div>
            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->                 
                <div class="t20"></div>
                <h3>���⵵ �̿���û</h3>
                <div class="t10"></div>
                <div class="guide_bu">�������� ������ ��� �̿��� ��û�� ��簣���� ������ ���� ��쿡�� �����մϴ�(���ΰ��� �ʼ�)</div>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv_crov">
                <script>
                rMateGridCreate("grid_crov", "/rMateGrid/Component/rMateGridWeb", flashVars_crov, "100%", "255", "#FFFFFF");
                </script>
            </div>
            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->                    
                <div class="t10"></div>
                <div class="guide_bu">�̿���û�ݾ�,�̿���û������ �Է��� ������ �׸��Դϴ�.</div>
                <!-- action bt start -->
                <div class="ar">
                    <a href="#" onclick="uf_crovCancel_rMate(); return false;" class="bt_action6-01" title="���"><span class="bt_sp">�̿���û���</span></a>
                    <a href="#" onclick="uf_crovApc_rMate(); return false;" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a>
                </div>
                <!-- //action bt end// -->
                <h3>���ͱ� �Է�</h3>
                <!-- ���ͱ� �Է� start -->
                <div class="t10  pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ͱ� �Է�" class="tbl_type03">
                    <caption>���ͱ� �Է�</caption>
                    <colgroup>
                        <col width="30%" />
                        <col width="35%" />
                        <col width="35%" />
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col">����</th>
                        <th scope="col"><label for="money">���ͱ�</label></th>
                        <th scope="col">�հ�</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="ar"><%=FormatUtil.getMoneyForm( IntBal.toString()) %></td>
                        <td class="ac"><input type="text" name="RvnAmt" datatype="dotcurrency" class="inputr" onKeyUp="uf_calRvnsum(this);" title="���ͱ�" style="width:220px" value="<%=FormatUtil.getMoneyForm(RvcnAmt)%>"/></td>
                        <td class="ar"><span id="RvnSum"><%=FormatUtil.getMoneyForm( IntBal_sum.toString()) %></span></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //���ͱ� �Է� end// -->
                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" onclick="uf_saveRvnAmt(); return false;" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a>
                </div>
                <!-- //action bt end// -->
            </div>
            </form>
        </div>
        <!-- //content end// -->










<%@ include file="/inc/jspFooter_popup.jsp" %> 




<script type="text/javascript">
/*****************************************************************
 * uf_saveRvnAmt        ���ͱ�����
 * @param       RvnAmt
 * @return
******************************************************************/
function uf_saveRvnAmt() {
    
    var frm = document.frm;

    // ����������� 10:"����"
    if("10"!='<%=sbjtData_instSbjtPrgrSt%>'){
        alert("�ش� ����� ����ܰ谡 �ƴմϴ�.");
        return;
    }
    
    // ����� 2012.06.29 : ���ͱ� �Է¾��ص� 0������ �Էµǵ��� ����
    if( frm.RvnAmt.value == null || frm.RvnAmt.value == '' ) {
        frm.RvnAmt.value = "0";
    }
    
    frm.RvnAmt.value = removeComma(frm.RvnAmt);
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                reset_submit();
                alert("���ͱ��� �����Ͽ����ϴ�.");
                window.close();
            }
            , 1000);   // 1���� ���� 1000 = 1��   
    
            
}

/*****************************************************************
 * uf_calRvnsum     ���ͱ��հ���
 * @param
 * @return
******************************************************************/
function uf_calRvnsum(obj) {
    
    var frm = document.frm;
    
    document.getElementById("RvnSum").innerHTML = putComma( (Number(('<%=IntBal%>')) + Number(removeComma(obj)))+ "");

    frm.RvnAmt.value = putComma(removeComma(obj));
    
}



</script>



</body></html>