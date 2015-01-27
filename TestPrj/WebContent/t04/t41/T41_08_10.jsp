<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_08_10.jsp
 *   Description        : �������赥���� ���˾� ��ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==============================================================================
 *   2013.12.10                     ������
 *
 *  @author ������
 *  @Since  
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<!-- //head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->


<% 
   String AgrmtSeqNo = SessionUtil.getRequestValue(request, "AgrmtSeqNo");  // �����Ϸù�ȣ
   String SbjtId     = SessionUtil.getRequestValue(request, "SbjtId");      // ����ID
   String HmpwRoleDv = SessionUtil.getRequestValue(request, "HmpwRoleDv");
   String InstRoleDv = SessionUtil.getRequestValue(request, "InstRoleDv");
   
%>



<title>�������� �� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">�������� ��</p>
        </div>
        <!-- //head title// --> 
    </div>



<!-- **********************  rMateGrid setting START ***********************  -->




<script type="text/javaScript">
//layout ����񱸼�
var layout1 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" lockedColumnCount=\"1\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <groupedColumns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridColumn id=\"STG_ANNL\"   dataField=\"STG_ANNL\"    headerText=\"�ܰ迬��\"   width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_ROLE_DV\"   dataField=\"AGRMT_INST_ROLE_DV\"    headerText=\"������ұ���\"   width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_NM\"   dataField=\"AGRMT_INST_NM\"    headerText=\"�����\"   width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumnGroup headerText=\"�����д�\" headerStyleName=\"gridHeaderStyle\" >\
                <DataGridColumn id=\"MNSR_CTBT_AMT\"   dataField=\"MNSR_CTBT_AMT\"    headerText=\"�����⿬��\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                <DataGridColumnGroup headerText=\"�ΰ�\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"PRIVT_CASH_AMT\"   dataField=\"PRIVT_CASH_AMT\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"PRIVT_SPOT_AMT\"   dataField=\"PRIVT_SPOT_AMT\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"����ü\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"ALOT_CASH_AMT\"   dataField=\"ALOT_CASH_AMT\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"ALOT_SPOT_AMT\"   dataField=\"ALOT_SPOT_AMT\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"�հ�\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"TOTALB_CASH\"   dataField=\"TOTALB_CASH\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"TOTALB_SPOT\"   dataField=\"TOTALB_SPOT\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
            </DataGridColumnGroup>\
            <DataGridColumnGroup headerText=\"������\" headerStyleName=\"gridHeaderStyle\" >\
                <DataGridColumnGroup headerText=\"�հ�\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"TOTAL_CASH\"   dataField=\"TOTAL_CASH\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"TOTAL_SPOT\"   dataField=\"TOTAL_SPOT\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"�ΰǺ�\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"PERSN_CASH\"   dataField=\"PERSN_CASH\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"PERSN_SPOT\"   dataField=\"PERSN_SPOT\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"������\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"INDIR_CASH\"   dataField=\"INDIR_CASH\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"INDIR_SPOT\"   dataField=\"INDIR_SPOT\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"������\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"DIRCT_CASH\"   dataField=\"DIRCT_CASH\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"DIRCT_SPOT\"   dataField=\"DIRCT_SPOT\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
                <DataGridColumnGroup headerText=\"��Ź�������ߺ�\" headerStyleName=\"gridHeaderStyle\" >\
                    <DataGridColumn id=\"CNSGR_CASH\"   dataField=\"CNSGR_CASH\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                    <DataGridColumn id=\"CNSGR_SPOT\"   dataField=\"CNSGR_SPOT\"    headerText=\"����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
                </DataGridColumnGroup>\
            </DataGridColumnGroup>\
        </groupedColumns>\
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


//layout ������
var layout2 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <DataGrid id=\"rgrid2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" lockedColumnCount=\"1\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\">\
        <columns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridColumn id=\"AGRMT_INST_BZ_REG_NO\"   dataField=\"AGRMT_INST_BZ_REG_NO\"    headerText=\"����ڵ�Ϲ�ȣ\"     width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_NM\"          dataField=\"AGRMT_INST_NM\"           headerText=\"��������\"         width=\"140\" visible=\"true\" textAlign=\"left\"   headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_ROLE_DV\"     dataField=\"AGRMT_INST_ROLE_DV\"      headerText=\"�������\"           width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"NPRF_INST_YN\"           dataField=\"NPRF_INST_YN\"            headerText=\"�񿵸�����\"         width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCH_EXP_ACCT_BNK_CD\"    dataField=\"RCH_EXP_ACCT_BNK_CD\"     headerText=\"�����\"             width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCH_EXP_SAL_ACCT_NO\"    dataField=\"RCH_EXP_SAL_ACCT_NO\"     headerText=\"���¹�ȣ\"           width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ARTE_YN\"                dataField=\"ARTE_YN\"                 headerText=\"�볳����\"           width=\"80\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CPCG_INST_NM\"           dataField=\"CPCG_INST_NM\"            headerText=\"�������������\"   width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
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

//layout �����η�
var layout3 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <DataGrid id=\"rgrid3\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" lockedColumnCount=\"1\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\">\
        <columns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridColumn id=\"HMPW_SEQ_NO\"             dataField=\"HMPW_SEQ_NO\"             headerText=\"�η¼���\"       width=\"80\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_NM\"                 dataField=\"INST_NM\"                 headerText=\"��������\"     width=\"170\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PTCN_RCHR_NM\"            dataField=\"PTCN_RCHR_NM\"            headerText=\"����\"           width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PTCN_RCHR_NM_RES_REG_NO\" dataField=\"PTCN_RCHR_NM_RES_REG_NO\" headerText=\"�ֹε�Ϲ�ȣ\"   width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"NATV_YN\"                 dataField=\"NATV_YN\"                 headerText=\"�����ο���\"     width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PTCN_RT\"                 dataField=\"PTCN_RT\"                 headerText=\"������\"         width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PTCN_STR_DT\"             dataField=\"PTCN_STR_DT\"             headerText=\"������������\"   width=\"90\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PTCN_END_DT\"             dataField=\"PTCN_END_DT\"             headerText=\"������������\"   width=\"90\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
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

//layout �����η�
var layout4 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <DataGrid id=\"rgrid4\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" lockedColumnCount=\"1\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\">\
        <columns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridColumn id=\"INST_NM\"            dataField=\"INST_NM\"         headerText=\"��������\"     width=\"100\" visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HMPW_ROLE_DV\"       dataField=\"HMPW_ROLE_DV\"    headerText=\"���ұ���\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USR_NM\"             dataField=\"USR_NM\"          headerText=\"����\"           width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCMS_GRP_CD\"        dataField=\"RCMS_GRP_CD\"     headerText=\"�׷��ڵ�\"       width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HMPW_ROLE_SB_DV\"    dataField=\"HMPW_ROLE_SB_DV\" headerText=\"���Ҽ��α���\"   width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_MANA_YN\"       dataField=\"INST_MANA_YN\"    headerText=\"���å���ڿ���\" width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AUTO_ROLE_YN\"       dataField=\"AUTO_ROLE_YN\"    headerText=\"�ڵ����ѿ���\"   width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CPCG_YN\"            dataField=\"CPCG_YN\"         headerText=\"���㿩��\"       width=\"100\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
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

//rMateGrid�� bridge ���� �ٸ��� �־� �ڹٽ�ũ��Ʈ���� ������ �� �ֵ��� �մϴ�.
var flashVars1 = "dataType=json&bridgeName=gridBridge1";
var flashVars2 = "dataType=json&bridgeName=gridBridge2";
var flashVars3 = "dataType=json&bridgeName=gridBridge3";
var flashVars4 = "dataType=json&bridgeName=gridBridge4";

//rMateGrid ���� ��ü
var gridApp1; // �÷��� �⺻ ��ü
var gridApp2; // �÷��� �⺻ ��ü
var gridApp3; // �÷��� �⺻ ��ü
var gridApp4; // �÷��� �⺻ ��ü
var gridData1; // �׸��� ������ ���
var gridData2; // �׸��� ������ ���
var gridData3; // �׸��� ������ ���
var gridData4; // �׸��� ������ ���
var gridRoot1; // ����Ÿ�� �׸��带 �����ϴ� ��ü
var gridRoot2; // ����Ÿ�� �׸��带 �����ϴ� ��ü
var gridRoot3; // ����Ÿ�� �׸��带 �����ϴ� ��ü
var gridRoot4; // ����Ÿ�� �׸��带 �����ϴ� ��ü
var dataGrid1; // �׸��� ���� ���
var dataGrid2; // �׸��� ���� ���
var dataGrid3; // �׸��� ���� ���
var dataGrid4; // �׸��� ���� ���


//�׸��� ���̾ƿ� ȣ��**********************************  ����񱸼�
var rMateGridInitLayout1 = function() {
    gridApp1 = FABridge.gridBridge1.root();
    gridRoot1 = gridApp1.getGridRoot();
    gridApp1.setLayout(layout1); //�׸��� ���̾ƿ� ����
    
    //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
    var itemDoubleClickHandler = function(event) {
        
        var rowIndex = event.getRowIndex();
        var columnIndex = event.getColumnIndex();
        var dataRow = gridRoot1.getItemAt(rowIndex);
        var column = dataGrid1.getColumns()[columnIndex];
        var dataField = column.getDataField();
        
        layerDetail(dataGrid1, dataRow);
    };
   
    //�׸��� �̺�Ʈ ���
    var layoutCompleteHandler = function(event) {
        dataGrid1 = gridApp1.getDataGrid();
        
        //�̺�Ʈ ���
        //dataGrid1.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
    };

    
    //layout ��� �� ����� �̺�Ʈ ���
    gridRoot1.addEventListener("layoutComplete", layoutCompleteHandler);
    gridRoot1.addEventListener("layoutComplete", uf_search);
    
    //data ��� �� ������ �̺�Ʈ ���
    gridRoot1.addEventListener("dataComplete", setTotCnt1);   //��ü ��ȸ�Ǽ� ���

};

//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge1", rMateGridInitLayout1);


//�ε� �� rMadeGrid ���
function rMateGridSetData1() {
    gridApp1 = FABridge.gridBridge1.root();  
    gridApp1.setData(JSON.stringify(gridData1)); //������ ���

};






//�׸��� ���̾ƿ� ȣ��**********************************  ������ 
var rMateGridInitLayout2 = function() {
  gridApp2 = FABridge.gridBridge2.root();
  gridRoot2 = gridApp2.getGridRoot();
  gridApp2.setLayout(layout2); //�׸��� ���̾ƿ� ����
  
  //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
  var itemDoubleClickHandler = function(event) {
      
      var rowIndex = event.getRowIndex();
      var columnIndex = event.getColumnIndex();
      var dataRow = gridRoot2.getItemAt(rowIndex);
      var column = dataGrid2.getColumns()[columnIndex];
      var dataField = column.getDataField();
      
      layerDetail(dataGrid2, dataRow);
  };
 
  //�׸��� �̺�Ʈ ���
  var layoutCompleteHandler = function(event) {
      dataGrid2 = gridApp2.getDataGrid();
      
      //�̺�Ʈ ���
      //dataGrid2.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
  };

  
  //layout ��� �� ����� �̺�Ʈ ���
  gridRoot2.addEventListener("layoutComplete", layoutCompleteHandler);
  gridRoot2.addEventListener("layoutComplete", rMateGridSetData2);
  
  //data ��� �� ������ �̺�Ʈ ���
  gridRoot2.addEventListener("dataComplete", setTotCnt2);   //��ü ��ȸ�Ǽ� ���

};

//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge2", rMateGridInitLayout2);


//�ε� �� rMadeGrid ���
function rMateGridSetData2() {
  gridApp2 = FABridge.gridBridge2.root();  
  gridApp2.setData(JSON.stringify(gridData2)); //������ ���

};
  



//�׸��� ���̾ƿ� ȣ��**********************************  �����η� 
var rMateGridInitLayout3 = function() {
  gridApp3 = FABridge.gridBridge3.root();
  gridRoot3 = gridApp3.getGridRoot();
  gridApp3.setLayout(layout3); //�׸��� ���̾ƿ� ����
  
  //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
  var itemDoubleClickHandler = function(event) {
      
      var rowIndex = event.getRowIndex();
      var columnIndex = event.getColumnIndex();
      var dataRow = gridRoot3.getItemAt(rowIndex);
      var column = dataGrid3.getColumns()[columnIndex];
      var dataField = column.getDataField();
      
      layerDetail(dataGrid3, dataRow);
  };
 
  //�׸��� �̺�Ʈ ���
  var layoutCompleteHandler = function(event) {
      dataGrid3 = gridApp3.getDataGrid();
      
      //�̺�Ʈ ���
      //dataGrid3.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
  };

  
  //layout ��� �� ����� �̺�Ʈ ���
  gridRoot3.addEventListener("layoutComplete", layoutCompleteHandler);
  gridRoot3.addEventListener("layoutComplete", rMateGridSetData3);
  
  //data ��� �� ������ �̺�Ʈ ���
  gridRoot3.addEventListener("dataComplete", setTotCnt3);   //��ü ��ȸ�Ǽ� ���

};

//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge3", rMateGridInitLayout3);


//�ε� �� rMadeGrid ���
function rMateGridSetData3() {
  gridApp3 = FABridge.gridBridge3.root();  
  gridApp3.setData(JSON.stringify(gridData3)); //������ ���

};
  



//�׸��� ���̾ƿ� ȣ��**********************************  �����η� 
var rMateGridInitLayout4 = function() {
  gridApp4 = FABridge.gridBridge4.root();
  gridRoot4 = gridApp4.getGridRoot();
  gridApp4.setLayout(layout4); //�׸��� ���̾ƿ� ����
  
  //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
  var itemDoubleClickHandler = function(event) {
      
      var rowIndex = event.getRowIndex();
      var columnIndex = event.getColumnIndex();
      var dataRow = gridRoot4.getItemAt(rowIndex);
      var column = dataGrid4.getColumns()[columnIndex];
      var dataField = column.getDataField();
      
      layerDetail(dataGrid4, dataRow);
  };
 
  //�׸��� �̺�Ʈ ���
  var layoutCompleteHandler = function(event) {
      dataGrid4 = gridApp4.getDataGrid();
      
      //�̺�Ʈ ���
      //dataGrid4.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
  };

  
  //layout ��� �� ����� �̺�Ʈ ���
  gridRoot4.addEventListener("layoutComplete", layoutCompleteHandler);
  gridRoot4.addEventListener("layoutComplete", rMateGridSetData4);
  
  //data ��� �� ������ �̺�Ʈ ���
  gridRoot4.addEventListener("dataComplete", setTotCnt4);   //��ü ��ȸ�Ǽ� ���

};

//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge4", rMateGridInitLayout4);


//�ε� �� rMadeGrid ���
function rMateGridSetData4() {
  gridApp4 = FABridge.gridBridge4.root();  
  gridApp4.setData(JSON.stringify(gridData4)); //������ ���
  
  addGridMouseWheelEventListener();

};
  
    
    
//��ü �ڷ�� ���
function setTotCnt1(){
    $("#InqPrsTotlNcnt01").html(getGridRowCount_rMate(gridRoot1));
}
function setTotCnt2(){
    $("#InqPrsTotlNcnt02").html(getGridRowCount_rMate(gridRoot2));
}
function setTotCnt3(){
    $("#InqPrsTotlNcnt03").html(getGridRowCount_rMate(gridRoot3));
}
function setTotCnt4(){
    $("#InqPrsTotlNcnt04").html(getGridRowCount_rMate(gridRoot4));
}



/**
 * �׸��� ���콺 �� �̺�Ʈ
 */
function addGridMouseWheelEventListener() {
    var ta = document.getElementById("gridDiv");
    if (window.addEventListener) {
        // Internet Explorer, Opera, Google Chrome and Safari
        ta.addEventListener('mousewheel', mouseWheelHandler, false);
        // Firefox
        ta.addEventListener('DOMMouseScroll', mouseWheelHandler, false);
    } else  // IE before version 9
        ta.onmousewheel = mouseWheelHandler;
}

function mouseWheelHandler(event) {
    if (!event)
        event = window.event;

    var ua = navigator.userAgent.toLowerCase();
    var edelta = event.wheelDelta / 40;
    if (/mozilla/.test(ua) && !/(compatible|webkit)/.test(ua))
        edelta = -event.detail;
    else if (/chrome/.test(ua))
        edelta = event.wheelDelta / 80;
    var o = {
        x : event.screenX,
        y : event.screenY,
        delta : edelta,
        ctrlKey : event.ctrlKey,
        altKey : event.altKey,
        shiftKey : event.shiftKey
    };
    // �׸��尡 ��ũ�ѿ� ������ ��� true �ƴϸ� false (�� ����Ÿ�� ���ų� ���ų� ������ �ǾƷ��� ��ũ���� �ʿ���� ��� false)
    var ret = gridApp4.mouseWheelHandler(o);
    if (ret) {
        if (event.stopPropagation) {
            event.stopPropagation();
            event.preventDefault();
        } else {    // for IE
            event.cancelBubble = true;
            event.returnValue = false;
        }
    }
}

    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



    <div id="body" style="width:100%; height:100%; overflow:auto; overflow-y:scroll;  position: absolute; ">
	    <form name="frm" method="post">
		<div id="content">
			<div class="t20"></div>
			<h3>��������</h3>
			<div class="t10 pop_wh">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�������� ����Ʈ" class="tbl_type02">
					<caption>���������� ����Ʈ</caption>
					<colgroup>
                        <col width="15%" />
                        <col width="35%" />
                        <col width="13%" />
                        <col width="10%" />
                        <col width="13%" />
                        <col width="22%" />
					</colgroup>
					<tbody>
						<tr>
							<th scope="col">������ȣ</th>
							<td><span id="SbjtId"></span></td>
		                    <th scope="col">�ܰ�/����</th>
		                    <td><span id="StgAnnl"></span></td>  
		                    <th scope="col">���౸��</th>
							<td class="ll"><span id="AgrmtDv"></span></td>
						</tr>
						<tr>
							<th scope="col">����з���</th>
							<td colspan="3"><span id="BzClasNm"></span></td>
		                    <th scope="col">��������</th>
		                    <td class="ll"><span id="SacShp"></span></td>   					
						</tr>
						<tr>
		                    <th scope="col">������</th>
		                    <td colspan="3"><span id="SbjtNm"></span></td>	
		                    <th scope="row">���߱Ⱓ</th>
		                    <td class="ll"><span id="DevDt"></span></td>    			
						</tr>
					</tbody>
				</table>
			</div>
			<!-- �ǹ�ư -->
			<div class="t20 b10">
				<div class="tab_line"> 
					<a href="#dummy" onclick="tabChange('1');" id="tab1" class="bt_tab2" title="����񱸼�">����񱸼�</a><a href="#dummy" onclick="tabChange('2');" id="tab2" class="bt_tab1" title="������">������</a><a href="#dummy" onclick="tabChange('3');" id="tab3" class="bt_tab1" title="�����η�">�����η�</a><a href="#dummy" onclick="tabChange('4');" id="tab4" class="bt_tab1" title="�����η�">�����η�</a>
				</div>
			</div>
			<!-- //�ǹ�ư//-->
			<!-- �׸��� start -->
            <div class="pop_box" id="tabBlock1" style="display:block;">
<!-- *************************  rMateGrid1 Start  ************************* -->
                <div class="total_box">
                    <p class="fl">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> ��]</p>
                    <p class="cb"></p>
                </div>
                <!-- �׸��� Start -->
                <div id="gridDiv1" >
                    <script>rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars1, "100%", "250", "#FFFFFF", "transparent");</script>
                </div>
                <!-- �׸��� End -->
<!-- *************************  rMateGrid1 End  ************************* -->                
            </div>
            <div class="pop_box" id="tabBlock2" style="display:none;">
<!-- *************************  rMateGrid2 Start  ************************* -->
                <div class="total_box">
                    <p class="fl">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt1">0</span> ��]</p>
                    <p class="cb"></p>
                </div>
                <!-- �׸��� Start -->
                <div id="gridDiv2" >
                    <script>rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars2, "100%", "250", "#FFFFFF", "transparent");</script>
                </div>
                <!-- �׸��� End -->
<!-- *************************  rMateGrid2 End  ************************* -->                
            </div>
            <div class="pop_box" id="tabBlock3" style="display:none;">
<!-- *************************  rMateGrid3 Start  ************************* -->
                <div class="total_box">
                    <p class="fl">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> ��]</p>
                    <p class="cb"></p>
                </div>
                <!-- �׸��� Start -->
                <div id="gridDiv3" >
                    <script>rMateGridCreate("grid3", "/rMateGrid/Component/rMateGridWeb", flashVars3, "100%", "250", "#FFFFFF", "transparent");</script>
                </div>
                <!-- �׸��� End -->
<!-- *************************  rMateGrid3 End  ************************* -->                
            </div>
            <div class="pop_box" id="tabBlock4" style="display:none;">
<!-- *************************  rMateGrid4 Start  ************************* -->
                <div class="total_box">
                    <p class="fl">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt3">0</span> ��]</p>
                    <p class="cb"></p>
                </div>
                <!-- �׸��� Start -->
                <div id="gridDiv4" >
                    <script>rMateGridCreate("grid4", "/rMateGrid/Component/rMateGridWeb", flashVars4, "100%", "250", "#FFFFFF", "transparent");</script>
                </div>
                <!-- �׸��� End -->
<!-- *************************  rMateGrid4 End  ************************* -->                
            </div>
			<!-- //�׸��� end// -->
			
<%
    // �ְ����, ����å����
    if ("C".equals(InstRoleDv) && ("02".equals(HmpwRoleDv)||"01".equals(HmpwRoleDv))) {
%>	
	  <div class="b10 ar"></div>
<!-- ***************************************************************** chekbox ***************************************************************** -->
      <div class="b10" style="height:260px;">
		
<!-- *************************  tab 1 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock1" style="display:block;">
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />
				<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����񱸼� üũ�ڽ�" class="tbl_type123">
					<tr>
                    <td width="9" height="28"><input type='checkbox' id="chkbox1"></td>
                   	  <td>����, ������ұ���, ����� �� �ش���� ���༭ ���� ������ RCMS ���� ������ ��ġ��</td>
					
						
					</tr>
					<tr>
                    <td width="9" valign="top"><input type='checkbox' id="chkbox2"></td>
                    <td><p>����� ���� ���(�����⿬��, �ΰ��δ��, ����ü�δ��) �ݾ��� ��ġ��<br />
	         
	                  - �����д�(���α���)�� ������(������)�� ���� �� ���� �ݾ��� ������ ���༭�� ����<br />
	                  - �Ϲ������� ����� �д�(���α���) �հ�� ������ �հ�(������)�ݾ��� ��ġ��<br />
	   &nbsp  (�ΰ�������ü �δ�� �븮 ���� ���� ��� ����)
                      </p></td>
						
						
					</tr>
	                <tr>
                    	<td width="9" valign="top"><input type='checkbox' id="chkbox3"></td> 
                    <td >�ΰ��δ�� �븮 ������ ���, ������ ���� ����� ���� �ݾ��� ǥ�õ� <a href="#" onmouseover="showdiv('sbmdiv'); return false;" onmouseout="fnExitCheck()"><img src="/images/bt/U41_08_10_bt.gif" /></a>
						</td>
					</tr>
	                <tr>
                    	<td width="9" valign="top"><input type='checkbox' id="chkbox4"></td> 
                    <td >
                    	�ΰ��δ�� ���α���� �б⺰(3/6/9/12��) ���ڰ� �߻��ϸ�,<br />
                    	[�̿�ȯ�����]-[���ڰ���]-[���ڹ߻����� ��ȸ]���� ��� ��ݰ���(����� ������ ���ڼҵ漼 ��û¡��)
                    </td>
					</tr>
				</table>
	 	 	</div>
	  	</div>
    	</div>
        
        
<!-- *************************  tab 1 checkbox end ************************* --> 

<!-- *************************  tab 2 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock2" style="display:none;"> 
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />           
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����񱸼� üũ�ڽ�" class="tbl_type123">
				<tr>
					<td width="9" valign="top"><input type='checkbox' id="chkbox5"></td>
					<td>�������� ����ڵ�Ϲ�ȣ�� ���������� ��ġ��<br />
                    	- ������ ���� �����ڷ�(���ڼ��ݰ�꼭, ī������ ��) ���, ����� �ڱ����� ġ ����ڵ�Ϲ�ȣ ��ġ���� Ȯ��
					</td>
				</tr>
				<tr>
					<td width="9" valign="top"><input type='checkbox' id="chkbox6"></td>
					<td>������ ���¹�ȣ �� ���� ��ġ��<br />
					- �ڱ���ü �� ������ ���� �����ֿ� ������ �Ǹ��ȣ ��ġ���� ����
                    
					</td>
				</tr>
			</table>
			</div>
		</div>
		</div>
<!-- *************************  tab 2 checkbox end ************************* --> 

<!-- *************************  tab 3 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock3" style="display:none;">   
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />               
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����񱸼� üũ�ڽ�" class="tbl_type123">
				<tr>
					<td width="9" valign="top"><input type='checkbox' id="chkbox7"></td>
					<td>�����η� ���� ��ġ��<br />
						- �����η� : �ش������ ����������(�ΰǺ� ���� ���)<br />
                    	- �ֹε�Ϲ�ȣ, ������ �� �ʼ�Ȯ��<br />
                    	- ������ �����η��� �ΰǺ� ���� �Ұ�<br />
					</td>
				</tr>
			</table>
			</div>
		</div>
		</div>
<!-- *************************  tab 3 checkbox end ************************* --> 


<!-- *************************  tab 4 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock4" style="display:none;"> 
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />              
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����񱸼� üũ�ڽ�" class="tbl_type123">
				<tr>
					<td width="9" valign="top"><input type='checkbox' id="chkbox8"></td>
					<td>�����η� ���� ��ġ��<br />
                    	- �����η��� RCMS ������(����� �� ��ü ��)�� �ο� �� �����<br />
                    	- ����ں� RCMS�� �ο� �� ���� �� ���� Ȯ�� �ʼ�<br />
					</td>
				</tr>
				<tr>
					<td width="9" valign="top"><input type='checkbox' id="chkbox9"></td>
					<td>�����η¿��� ������ �����η¿� ������ �ʴ� ���<br />
                    	- �ش� �η��� �������� �����ϳ� RCMS�� ������� �ʰ� �ΰǺ� ���޹޴� �����<br />
                    	- ����ں� RCMS�� �ο� �� ���� �� ���� Ȯ�� �ʼ�<br />
					</td>
				</tr>
			</table>
			</div>		
        </div>
        </div>
        </div>
        <!-- action bt start -->
        <div class="pop_action_bt ar">
		     <a href="#" onclick="fn_save(); return false;" class="bt_action7-1" title="����������"><span class="bt_sp">����������</span></a>
		</div>
		<!-- //action bt end// -->
        		<span class="txt_or">&nbsp;�� ���༭�� ����� ����� RCMS ������ ������ ��� ������ ��������ڿ��� �����ֽñ� �ٶ��ϴ�.<br>
        		&nbsp;&nbsp;&nbsp;&nbsp;(�� ������ ������������Ʈ���� ������ �����ϰ� RCMS�� ���� �� ������ �ݿ��� �� ���� '����������'�� �����Ͻñ� �ٶ��ϴ�.)</span>
		</div>
        
<!-- *************************  tab 4 checkbox end ************************* --> 	

<!-- ���̾� �˾� start -->
	<div id="sbmdiv" class="layer_pop" style="display:none;">
		<!-- <h3>�ΰ��δ�� �븮������ ���</h3> -->
		<div>
			<img src="/images/info/U41_08_10_tb.gif" />
	  	</div>    
	</div>
<!-- ���̾� �˾� start -->

<!-- ***************************************************************** chekbox ***************************************************************** -->

<%
    } else {
%>	

	  <div class="b10 ar"></div>
<!-- ***************************************************************** chekbox ***************************************************************** -->
      <div class="b10" style="height:260px;">
		
<!-- *************************  tab 1 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock1" style="display:block;">
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />
				<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����񱸼� üũ�ڽ�" class="tbl_type123">
					<tr>
                    <td width="9" height="28" valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
                   	  <td>����, ������ұ���, ����� �� �ش���� ���༭ ���� ������ RCMS ���� ������ ��ġ��</td>
					
						
					</tr>
					<tr>
                    <td width="9"valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
                    <td><p>����� ���� ���(�����⿬��, �ΰ��δ��, ����ü�δ��) �ݾ��� ��ġ��<br />
	         
	                  - �����д�(���α���)�� ������(������)�� ���� �� ���� �ݾ��� ������ ���༭�� ����<br />
	                  - �Ϲ������� ����� �д�(���α���) �հ�� ������ �հ�(������)�ݾ��� ��ġ��<br />
	   &nbsp  (�ΰ�������ü �δ�� �븮 ���� ���� ��� ����)
                      </p></td>
						
						
					</tr>
	                <tr>
                    	<td width="9" valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td> 
                    <td >�ΰ��δ�� �븮 ������ ���, ������ ���� ����� ���� �ݾ��� ǥ�õ� <a href="#" onmouseover="showdiv('sbmdiv'); return false;" onmouseout="fnExitCheck()"><img src="/images/bt/U41_08_10_bt.gif" /></a>
						</td>
					</tr>
	                <tr>
                    	<td width="9" valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td> 
                    <td >
                    	�ΰ��δ�� ���α���� �б⺰(3/6/9/12��) ���ڰ� �߻��ϸ�,<br />
                    	[�̿�ȯ�����]-[���ڰ���]-[���ڹ߻����� ��ȸ]���� ��� ��ݰ���(����� ������ ���ڼҵ漼 ��û¡��)
                    </td>
					</tr>
				</table>
	 	 	</div>
	  	</div>
    	</div>
        
        
<!-- *************************  tab 1 checkbox end ************************* --> 

<!-- *************************  tab 2 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock2" style="display:none;"> 
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />           
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����񱸼� üũ�ڽ�" class="tbl_type123">
				<tr>
					<td width="9"  height="28"  valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
					<td>�������� ����ڵ�Ϲ�ȣ�� ���������� ��ġ��<br />
                    	- ������ ���� �����ڷ�(���ڼ��ݰ�꼭, ī������ ��) ���, ����� �ڱ����� ġ ����ڵ�Ϲ�ȣ ��ġ���� Ȯ��
					</td>
				</tr>
				<tr>
					<td width="9" valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
					<td>������ ���¹�ȣ �� ���� ��ġ��<br />
					- �ڱ���ü �� ������ ���� �����ֿ� ������ �Ǹ��ȣ ��ġ���� ����
                    
					</td>
				</tr>
			</table>
			</div>
		</div>
		</div>
<!-- *************************  tab 2 checkbox end ************************* --> 

<!-- *************************  tab 3 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock3" style="display:none;">   
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />               
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����񱸼� üũ�ڽ�" class="tbl_type123">
				<tr>
					<td width="9"  height="28"  valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
					<td>�����η� ���� ��ġ��<br />
						- �����η� : �ش������ ����������(�ΰǺ� ���� ���)<br />
                    	- �ֹε�Ϲ�ȣ, ������ �� �ʼ�Ȯ��<br />
                    	- ������ �����η��� �ΰǺ� ���� �Ұ�<br />
					</td>
				</tr>
			</table>
			</div>
		</div>
		</div>
<!-- *************************  tab 3 checkbox end ************************* --> 


<!-- *************************  tab 4 checkbox str ************************* --> 	
		<div class="t10" id="chekBlock4" style="display:none;"> 
		<div class="pop_line_gbox_01">
	  		<div class="pop_line_gboxc" >
      		<img src="/images/bt/U41_08_10_title.gif" />              
			<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����񱸼� üũ�ڽ�" class="tbl_type123">
				<tr>
					<td width="9"  height="28"  valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
					<td>�����η� ���� ��ġ��<br />
                    	- �����η��� RCMS ������(����� �� ��ü ��)�� �ο� �� �����<br />
                    	- ����ں� RCMS�� �ο� �� ���� �� ���� Ȯ�� �ʼ�<br />
					</td>
				</tr>
				<tr>
					<td width="9" valign="top"><img src="/images/bt/U41_08_10_bl.gif" /></td>
					<td>�����η¿��� ������ �����η¿� ������ �ʴ� ���<br />
                    	- �ش� �η��� �������� �����ϳ� RCMS�� ������� �ʰ� �ΰǺ� ���޹޴� �����<br />
                    	- ����ں� RCMS�� �ο� �� ���� �� ���� Ȯ�� �ʼ�<br />
					</td>
				</tr>
			</table>
			</div>		
        </div>
        </div>
        </div>
        <!-- action bt start -->
        <div style="height:40px;"></div>
		<!-- //action bt end// -->
        		<span class="txt_or">&nbsp;�� ���༭�� ����� ����� RCMS ������ ������ ��� ������ ��������ڿ��� �����ֽñ� �ٶ��ϴ�.<br>
        		&nbsp;&nbsp;&nbsp;&nbsp;(�� ������ ������������Ʈ���� ������ �����ϰ� RCMS�� ���� �� ������ �ݿ��� �� ���� '����������'�� �����Ͻñ� �ٶ��ϴ�.)</span>
        
<!-- *************************  tab 4 checkbox end ************************* --> 	

<!-- ���̾� �˾� start -->
	<div id="sbmdiv" class="layer_pop" style="display:none;">
		<!-- <h3>�ΰ��δ�� �븮������ ���</h3> -->
		<div>
			<img src="/images/info/U41_08_10_tb.gif" />
	  	</div>    
	</div>
<!-- ���̾� �˾� start -->

<!-- ***************************************************************** chekbox ***************************************************************** -->

<%} %>
	</form>
	</div>
    <!-- //content end// -->

<iframe name="sendIfrm" style="display:none;" frameborder="0" width="0" height="0" marginwidth="0" marginheight="0" title="ó���� ����������"></iframe>

<script type="text/javascript">

    function uf_search(){
        var frm = document.frm;
        
        if( isSubmit() ) return;    // ����ó��

        
        uf_proce_display_on();  //�ε���
        setTimeout(function(){SetData("<%=AgrmtSeqNo%>", "<%=SbjtId%>");}, 1000);   // 1���� ���� 1000 = 1��s

        removeTempAttribute(frm);   //get2post ����
         
    }
    
    $(window).load(function () {
        rMateGridInit();
        //uf_search();
    });
    
    //TAB Event
    function tabChange(gbn){
        switch (gbn) {
            case "1" :
                
                document.getElementById('tab1').className = "bt_tab2";
                document.getElementById('tab2').className = "bt_tab1";
                document.getElementById('tab3').className = "bt_tab1";
                document.getElementById('tab4').className = "bt_tab1";
                
                document.all.tabBlock1.style.display="block";
                document.all.tabBlock2.style.display="none";
                document.all.tabBlock3.style.display="none";
                document.all.tabBlock4.style.display="none";
                
                document.getElementById("chekBlock1").style.display   = "inline";
                document.getElementById("chekBlock2").style.display   = "none";
                document.getElementById("chekBlock3").style.display   = "none";
                document.getElementById("chekBlock4").style.display   = "none";
                
                break;
            case "2" :
                document.getElementById('tab1').className = "bt_tab1";
                document.getElementById('tab2').className = "bt_tab2";
                document.getElementById('tab3').className = "bt_tab1";
                document.getElementById('tab4').className = "bt_tab1";
                
                document.all.tabBlock1.style.display="none";
                document.all.tabBlock2.style.display="block";
                document.all.tabBlock3.style.display="none";
                document.all.tabBlock4.style.display="none";
                
                document.getElementById("chekBlock1").style.display   = "none";
                document.getElementById("chekBlock2").style.display   = "inline";
                document.getElementById("chekBlock3").style.display   = "none";
                document.getElementById("chekBlock4").style.display   = "none";
                
                break;
            case "3" :
                document.getElementById('tab1').className = "bt_tab1";
                document.getElementById('tab2').className = "bt_tab1";
                document.getElementById('tab3').className = "bt_tab2";
                document.getElementById('tab4').className = "bt_tab1";
                
                document.all.tabBlock1.style.display="none";
                document.all.tabBlock2.style.display="none";
                document.all.tabBlock3.style.display="block";
                document.all.tabBlock4.style.display="none";
                
                document.getElementById("chekBlock1").style.display   = "none";
                document.getElementById("chekBlock2").style.display   = "none";
                document.getElementById("chekBlock3").style.display   = "inline";
                document.getElementById("chekBlock4").style.display   = "none";
                
                break;  
            case "4" :
                document.getElementById('tab1').className = "bt_tab1";
                document.getElementById('tab2').className = "bt_tab1";
                document.getElementById('tab3').className = "bt_tab1";
                document.getElementById('tab4').className = "bt_tab2";
                
                document.all.tabBlock1.style.display="none";
                document.all.tabBlock2.style.display="none";
                document.all.tabBlock3.style.display="none";
                document.all.tabBlock4.style.display="block";
                
                document.getElementById("chekBlock1").style.display   = "none";
                document.getElementById("chekBlock2").style.display   = "none";
                document.getElementById("chekBlock3").style.display   = "none";
                document.getElementById("chekBlock4").style.display   = "inline";
                
                break;                 
        }       
    }
    
    function fn_save() {
        
        var frm = document.frm;

	    if(!((document.getElementById("chkbox1").checked)&&(document.getElementById("chkbox2").checked)&&(document.getElementById("chkbox3").checked)&&(document.getElementById("chkbox4").checked))){
	    	alert("����񱸼������� �ʼ�Ȯ�λ��׿� ��Ȯ�� �׸��� �����մϴ�.");
	    	return;
	    }
	    if(!((document.getElementById("chkbox5").checked)&&(document.getElementById("chkbox6").checked))){
	    	alert("������������ �ʼ�Ȯ�λ��׿� ��Ȯ�� �׸��� �����մϴ�.");
	    	return;
	    }
	    if(!document.getElementById("chkbox7").checked){
	    	alert("�����η³����� �ʼ�Ȯ�λ��׿� ��Ȯ�� �׸��� �����մϴ�.");
	    	return;
	    }
	    if(!((document.getElementById("chkbox8").checked)&&(document.getElementById("chkbox9").checked))){
	    	alert("�����η³����� �ʼ�Ȯ�λ��׿� ��Ȯ�� �׸��� �����մϴ�.");
	    	return;
	    }
        
        if(!confirm("���������� Ȯ��ó���Ͻðڽ��ϱ�?")){return;}
        
        get2post(frm, "AgrmtSeqNo=<%=AgrmtSeqNo%>");
        
        uf_proce_display_on();  //�ε���
        
        setTimeout(
            function(){
            	    if("G00000000000001" == "<%=AgrmtSeqNo%>"){
            		    makeCookieData("<%=AgrmtSeqNo%>");
            	    }
                    reset_submit();
                    alert("�������� Ȯ�� ó���� �Ϸ�Ǿ����ϴ�.");
                    opener.uf_search();
                    window.close();
                
                }, 1000);   // 1���� ���� 1000 = 1��s
    }
    
    
    //����� ������
    function makeCookieData(AgrmtSeqNo){
        if(typeof AgrmtSeqNo == "undefined" || AgrmtSeqNo == "") return;
        
        var _COOKIE_DATA = getCookieTraning("T41_08_10"); 
        if(_COOKIE_DATA == false){
        	setCookieTraning("T41_08_10", AgrmtSeqNo, 1);
            
        }else{
        	//�� �߰�
            var cookieData = _COOKIE_DATA;
            var cookieArr = _COOKIE_DATA.split("|");
            
            if(cookieArr.length > 0){
            	cookieData += "|" + AgrmtSeqNo;
            }
            
            setCookieTraning("T41_08_10", cookieData, 1);

        }
    }
    
	/* -------------------- ���� �˾� -------------------- */
	function showdiv(id) {
		var frm     = document.frm;
		
        $("BODY").append('<div id="popup_overlay_onac"></div>');
        $("#popup_overlay_onac").css({
            position: 'absolute',
            zIndex: 999998,
            top: '0px',
            left: '0px',
            width: '98%',
            height: $(document).height(),
            background: '#FFF',
            opacity: .50
        });   
		$("#sbmdiv").css("z-index", "999999");
		$("#sbmdiv").css("top", 754);
		$("#sbmdiv").css("left", 9);
        $("#sbmdiv").css("width", 773);
        $("#sbmdiv").css("height", 155);
        $("#iframe_onac").css("height", "100%");
        $("#iframe_onac").css("width", "100%");
		document.getElementById("sbmdiv").style.display="inline";
	}
	function fnExitCheck(){
		document.getElementById("sbmdiv").style.display="none";		
  		document.getElementById("popup_overlay_onac").style.display="none";
		return;
	}
	/* -------------------- ���� �˾� -------------------- */
    
</script>



<script type="text/javascript">

function setGridData(seqNo, sbjtId){
	
    try{
        
        var gridValue1 = [];
        var gridValue2 = [];
        var gridValue3 = [];
        var gridValue4 = [];
        var cnt1 = 0;
        var cnt2 = 0;
        var cnt3 = 0;
        var cnt4 = 0;
        
        var SbjtId = "";
        var StgAnnl = "";
        var BzClasNm = "";
        var SacShp = "";
        var SbjtNm = "";
        var AgrmtDv = "";
        var DevDt = "";
        
        
        
        //1. �ű԰���
        if(seqNo == "G00000000000001" && sbjtId == "TEST0001"){
            
            SbjtId = "TEST0001";
            StgAnnl = "0 / 1";
            BzClasNm = "RCMS �ǽ�";
            SacShp = "�ϰ�";
            SbjtNm = "RCMS �ǽ��� �ű԰���";
            AgrmtDv = "�ϰ�";
            DevDt = "2014-01-01 ~ 2099-01-31";
            

            gridValue1[cnt1++] = {"STG_ANNL":"0/1","AGRMT_INST_ROLE_DV":"�����������","AGRMT_INST_NM":"��RCMS","MNSR_CTBT_AMT":"80000","PRIVT_CASH_AMT":"20000","PRIVT_SPOT_AMT":"30000","ALOT_CASH_AMT":"0","ALOT_SPOT_AMT":"0","TOTALB_CASH":"100000","TOTALB_SPOT":"30000","TOTAL_CASH":"100000","TOTAL_SPOT":"0","PERSN_CASH":"0","PERSN_SPOT":"0","INDIR_CASH":"1000","INDIR_SPOT":"0","DIRCT_CASH":"99000","DIRCT_SPOT":"0","CNSGR_CASH":"0","CNSGR_SPOT":"0"};

            gridValue2[cnt2++] = {"AGRMT_INST_BZ_REG_NO":"111-11-11111","AGRMT_INST_NM":"��RCMS","AGRMT_INST_ROLE_DV":"�����������","NPRF_INST_YN":"Y","RCH_EXP_ACCT_BNK_CD":"A ����","RCH_EXP_SAL_ACCT_NO":"100-00-000000","ARTE_YN":"N","CPCG_INST_NM":"�ѱ��������򰡰�����"};

            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"1","INST_NM":"��RCMS","PTCN_RCHR_NM":"�̼���","PTCN_RCHR_NM_RES_REG_NO":"123456-*******","NATV_YN":"Y","PTCN_RT":"15","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"2","INST_NM":"��RCMS","PTCN_RCHR_NM":"������","PTCN_RCHR_NM_RES_REG_NO":"234567-*******","NATV_YN":"Y","PTCN_RT":"25","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"3","INST_NM":"��RCMS","PTCN_RCHR_NM":"������","PTCN_RCHR_NM_RES_REG_NO":"345678-*******","NATV_YN":"Y","PTCN_RT":"30","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};

            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����å����","USR_NM":"���Ѱ�","RCMS_GRP_CD":"����å����","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"Y","AUTO_ROLE_YN":"Y","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����������","USR_NM":"������","RCMS_GRP_CD":"����������","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����������","USR_NM":"������","RCMS_GRP_CD":"����������","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"�Ϲݻ����","USR_NM":"���繫","RCMS_GRP_CD":"�Ϲݻ����(��ü�����)","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�ѱ��������򰡰�����","HMPW_ROLE_DV":"�����������","USR_NM":"������","RCMS_GRP_CD":"�������Ѱ������","HMPW_ROLE_SB_DV":"�����������","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"Y"};


        //2. �������
        }else if(seqNo == "G00000000000002" && sbjtId == "TEST0002"){
            //4-3, 5-3, 6-3
            SbjtId = "TEST0002";
            StgAnnl = "0 / 1";
            BzClasNm = "RCMS �ǽ�";
            SacShp = "����";
            SbjtNm = "RCMS �ǽ��� �������";
            AgrmtDv = "�ϰ�";
            DevDt = "2014-01-01 ~ 2099-01-31";
            

            gridValue1[cnt1++] = {"STG_ANNL":"0/1","AGRMT_INST_ROLE_DV":"�����������","AGRMT_INST_NM":"��RCMS","MNSR_CTBT_AMT":"80000","PRIVT_CASH_AMT":"20000","PRIVT_SPOT_AMT":"30000","ALOT_CASH_AMT":"0","ALOT_SPOT_AMT":"0","TOTALB_CASH":"130000","TOTALB_SPOT":"0","TOTAL_CASH":"100000","TOTAL_SPOT":"0","PERSN_CASH":"0","PERSN_SPOT":"0","INDIR_CASH":"1000","INDIR_SPOT":"0","DIRCT_CASH":"99000","DIRCT_SPOT":"0","CNSGR_CASH":"0","CNSGR_SPOT":"0"};

            gridValue2[cnt2++] = {"AGRMT_INST_BZ_REG_NO":"111-11-11111","AGRMT_INST_NM":"��RCMS","AGRMT_INST_ROLE_DV":"�����������","NPRF_INST_YN":"Y","RCH_EXP_ACCT_BNK_CD":"A ����","RCH_EXP_SAL_ACCT_NO":"100-00-000000","ARTE_YN":"N","CPCG_INST_NM":"�ѱ��������򰡰�����"};
            
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"1","INST_NM":"��RCMS","PTCN_RCHR_NM":"�̼���","PTCN_RCHR_NM_RES_REG_NO":"123456-*******","NATV_YN":"Y","PTCN_RT":"15","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"2","INST_NM":"��RCMS","PTCN_RCHR_NM":"������","PTCN_RCHR_NM_RES_REG_NO":"234567-*******","NATV_YN":"Y","PTCN_RT":"25","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"3","INST_NM":"��RCMS","PTCN_RCHR_NM":"������","PTCN_RCHR_NM_RES_REG_NO":"345678-*******","NATV_YN":"Y","PTCN_RT":"30","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-31"};

            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����å����","USR_NM":"���Ѱ�","RCMS_GRP_CD":"����å����","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"Y","AUTO_ROLE_YN":"Y","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����������","USR_NM":"������","RCMS_GRP_CD":"����������","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����������","USR_NM":"������","RCMS_GRP_CD":"����������","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"�Ϲݻ����","USR_NM":"���繫","RCMS_GRP_CD":"�Ϲݻ����(��ü�����)","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�ѱ��������򰡰�����","HMPW_ROLE_DV":"�����������","USR_NM":"������","RCMS_GRP_CD":"�������Ѱ������","HMPW_ROLE_SB_DV":"�����������","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"Y"};


        //3. �������(���� ������)
        }else if(seqNo == "G00000000000003" && sbjtId == "TEST0003"){
            //4-1, 5-1, 6-1
            SbjtId = "TEST0003";
            StgAnnl = "0 / 1";
            BzClasNm = "RCMS �ǽ�";
            SacShp = "����";
            SbjtNm = "RCMS �ǽ��� �������";
            AgrmtDv = "�ϰ�";
            DevDt = "2013-03-01 ~ 2014-02-28";
            

            gridValue1[cnt1++] = {"STG_ANNL":"0/1","AGRMT_INST_ROLE_DV":"�����������","AGRMT_INST_NM":"��RCMS","MNSR_CTBT_AMT":"80000","PRIVT_CASH_AMT":"20000","PRIVT_SPOT_AMT":"30000","ALOT_CASH_AMT":"0","ALOT_SPOT_AMT":"0","TOTALB_CASH":"130000","TOTALB_SPOT":"0","TOTAL_CASH":"100000","TOTAL_SPOT":"0","PERSN_CASH":"0","PERSN_SPOT":"0","INDIR_CASH":"1000","INDIR_SPOT":"0","DIRCT_CASH":"99000","DIRCT_SPOT":"0","CNSGR_CASH":"0","CNSGR_SPOT":"0"};

            gridValue2[cnt2++] = {"AGRMT_INST_BZ_REG_NO":"111-11-11111","AGRMT_INST_NM":"��RCMS","AGRMT_INST_ROLE_DV":"�����������","NPRF_INST_YN":"Y","RCH_EXP_ACCT_BNK_CD":"A ����","RCH_EXP_SAL_ACCT_NO":"100-00-000000","ARTE_YN":"N","CPCG_INST_NM":"�ѱ��������򰡰�����"};
            
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"1","INST_NM":"��RCMS","PTCN_RCHR_NM":"�̼���","PTCN_RCHR_NM_RES_REG_NO":"123456-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"2","INST_NM":"��RCMS","PTCN_RCHR_NM":"������","PTCN_RCHR_NM_RES_REG_NO":"234567-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"3","INST_NM":"��RCMS","PTCN_RCHR_NM":"������","PTCN_RCHR_NM_RES_REG_NO":"345678-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};

            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����å����","USR_NM":"���Ѱ�","RCMS_GRP_CD":"����å����","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"Y","AUTO_ROLE_YN":"Y","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����������","USR_NM":"������","RCMS_GRP_CD":"����������","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����������","USR_NM":"������","RCMS_GRP_CD":"����������","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"�Ϲݻ����","USR_NM":"���繫","RCMS_GRP_CD":"�Ϲݻ����(��ü�����)","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�ѱ��������򰡰�����","HMPW_ROLE_DV":"�����������","USR_NM":"������","RCMS_GRP_CD":"�������Ѱ������","HMPW_ROLE_SB_DV":"�����������","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"Y"};

         
        //4. �������(���� ���� �Ϸ�)
        }else if(seqNo == "G00000000000004" && sbjtId == "TEST0004"){
            //1
            
            SbjtId = "TEST0004";
            StgAnnl = "0 / 1";
            BzClasNm = "RCMS �ǽ�";
            SacShp = "�ϰ�";
            SbjtNm = "RCMS �ǽ��� �������";
            AgrmtDv = "�ϰ�";
            DevDt = "2013-02-01 ~ 2014-01-31";
        
            
            gridValue1[cnt1++] = {"STG_ANNL":"0/1","AGRMT_INST_ROLE_DV":"�����������","AGRMT_INST_NM":"��RCMS","MNSR_CTBT_AMT":"80000","PRIVT_CASH_AMT":"20000","PRIVT_SPOT_AMT":"30000","ALOT_CASH_AMT":"0","ALOT_SPOT_AMT":"0","TOTALB_CASH":"130000","TOTALB_SPOT":"0","TOTAL_CASH":"100000","TOTAL_SPOT":"0","PERSN_CASH":"0","PERSN_SPOT":"0","INDIR_CASH":"1000","INDIR_SPOT":"0","DIRCT_CASH":"99000","DIRCT_SPOT":"0","CNSGR_CASH":"0","CNSGR_SPOT":"0"};

            gridValue2[cnt2++] = {"AGRMT_INST_BZ_REG_NO":"111-11-11111","AGRMT_INST_NM":"��RCMS","AGRMT_INST_ROLE_DV":"�����������","NPRF_INST_YN":"Y","RCH_EXP_ACCT_BNK_CD":"A ����","RCH_EXP_SAL_ACCT_NO":"100-00-000000","ARTE_YN":"N","CPCG_INST_NM":"�ѱ��������򰡰�����"};
            
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"1","INST_NM":"��RCMS","PTCN_RCHR_NM":"�̼���","PTCN_RCHR_NM_RES_REG_NO":"123456-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"2","INST_NM":"��RCMS","PTCN_RCHR_NM":"������","PTCN_RCHR_NM_RES_REG_NO":"234567-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};
            gridValue3[cnt3++] = {"HMPW_SEQ_NO":"3","INST_NM":"��RCMS","PTCN_RCHR_NM":"������","PTCN_RCHR_NM_RES_REG_NO":"345678-*******","NATV_YN":"Y","PTCN_RT":"11","PTCN_STR_DT":"2010-09-14","PTCN_END_DT":"9999-12-31"};

            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����å����","USR_NM":"���Ѱ�","RCMS_GRP_CD":"����å����","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"Y","AUTO_ROLE_YN":"Y","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����������","USR_NM":"������","RCMS_GRP_CD":"����������","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"����������","USR_NM":"������","RCMS_GRP_CD":"����������","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�� RCMS","HMPW_ROLE_DV":"�Ϲݻ����","USR_NM":"���繫","RCMS_GRP_CD":"�Ϲݻ����(��ü�����)","HMPW_ROLE_SB_DV":"�Ϲݻ����","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"N"};
            gridValue4[cnt4++] = {"INST_NM":"�ѱ��������򰡰�����","HMPW_ROLE_DV":"�����������","USR_NM":"������","RCMS_GRP_CD":"�������Ѱ������","HMPW_ROLE_SB_DV":"�����������","INST_MANA_YN":"N","AUTO_ROLE_YN":"N","CPCG_YN":"Y"};

            
        }
        
        
    }finally{
        
        document.getElementById("SbjtId").innerHTML = SbjtId;
        document.getElementById("StgAnnl").innerHTML = StgAnnl;
        document.getElementById("BzClasNm").innerHTML = BzClasNm;
        document.getElementById("SacShp").innerHTML = SacShp;
        document.getElementById("SbjtNm").innerHTML = SbjtNm;
        document.getElementById("AgrmtDv").innerHTML = AgrmtDv;
        document.getElementById("DevDt").innerHTML = DevDt;
        
        gridData1 = gridValue1;    //��ȸ��� JSON �� ��������
        gridData2 = gridValue2;    //��ȸ��� JSON �� ��������
        gridData3 = gridValue3;    //��ȸ��� JSON �� ��������
        gridData4 = gridValue4;    //��ȸ��� JSON �� ��������
        
        rMateGridSetData1();  //rMateGrid ����
        
    }
}

function SetData(seqNo, sbjtId){
	
	
    if(!seqNo) return false;
    
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor =    "wait";
        //SetData(); //Insert   Grid
        setGridData(seqNo, sbjtId); //Insert    Grid
        document.body.style.cursor =    "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
    }
    
}
</script>


</body>
</html> 
