<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T11_01_20.jsp
 *   Description        : ��� �����Ȳ �ϰ���ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.04                      ������             
 *
 *  @author     ������ 
 *  @Since      2013.12.04
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
    String AgrmtSeqNo     = SessionUtil.getRequestValue(request, "SBJT_MAP_KEYS");    //��ȸ ��ȣ
    
%>


<title>��� ��볻�� ��ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">��� �����Ȳ �ϰ���ȸ</p>
        </div>
        <!-- //head title// --> 
    </div>



<script type="text/javascript">
//////////////////////////////////
//��ȸ ó��
//////////////////////////////////
function uf_search(){
    var frm     = document.frm;
    
    if( !chk_calTextdatediff() ) return false; // ��ȸ�Ⱓ ��ȿ��üũ
    
    if( isSubmit() ) return;    // ����ó��

    var seqNo = "<%=AgrmtSeqNo%>";
    
    rMateGridLayoutInit_rMate();
    uf_proce_display_on();  //�ε���
    setTimeout(function(){SetData(seqNo);}, 1000);   // 1���� ���� 1000 = 1��s

    removeTempAttribute(frm);   //get2post ����
    
}

</script>






<div id="body">
<form name="frm" method="post">
  <!-- content start -->
  <div id="content">
    <div class="t20"></div>
    <h3>��� �����Ȳ �ϰ���ȸ</h3>
    <!-- �˻��� start -->
    <div class="pop_search">
      <p class="pop_search_boxt"></p>
      <div class="pop_search_boxc">
        <fieldset>
        <legend>��Ȳ��ȸ�˻�</legend>
        <table width="680" summary="��Ȳ��ȸ" class="tbl_search">
          <caption>
          ��Ȳ��ȸ�˻�
          </caption>
          <colgroup>
          <col width="12%" />
          <col width="88%" />
          </colgroup>
          <tbody>
            <tr>
              <th scope="col"><label for="usedaystart">�������</label></th>
              <td>
              <%@ include file="/inc/set_date_btn.jsp" %>
              <%@ include file="/inc/set_date_today.jsp" %>
              </td>
            </tr>
          </tbody>
        </table>
        </fieldset>
      </div>
      <p><img src="/pop/search_box6.gif" alt=" "/></p>
    </div>
    <div class="cb"></div>
    <!-- //�˻��� end// -->
    <!-- ��ȸ ��ư start -->
    <div class="pop_search_bt1"><a href="#dummy" onclick="uf_search();" class="bt_search" title="��ȸ"></a></div>
    <!-- //��ȸ ��ư end// -->
<!-- �ѰǼ�/�μ� ���� ��ư start -->
    <div class="pop_total_box">
        <p class="fl t05"><!--  [��ȸ�Ǽ� <span class="bu_01bb">25��</span>/150��]  -->
        <input type="checkbox" name="checkbox2" value="Y" onclick="chkGroup(this);" class="check1"/> ��üȮ��</p>
        <p class="ar b05">
        <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�"/></a>
        <a href="#dummy"  onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="����"/></a>
        </p>
        <p class="cb"></p>
    </div>
<!-- //�ѰǼ�/�μ� ���� ��ư end// -->    
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



  </div>
  </form>
</div>
<!-- //content end// -->
<%@ include file="/inc/jspFooter_popup.jsp" %> 



<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">
/* �׸��� ���� ����
1. html�� �÷����� sync : rMateGridInit() �Լ� ���� ( onload ����. Ȥ�� ready )
2. ���̾ƿ��� �ǰ��� �׸��� ����
3. �׸��忡 ����Ÿ �ֱ�
*/


//���̾ƿ� ���� (�׷���)
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"on\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn id=\"AGRMT_INST_NM\"      dataField=\"AGRMT_INST_NM\"       headerText=\"�����\"          width=\"170\"  visible=\"true\"  sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"�����ڵ�\"        width=\"80\"  visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"����\"            width=\"80\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_DT\"      dataField=\"EXCTN_EXEC_DT\"       headerText=\"�������\"        width=\"80\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"�������ڵ�\"      width=\"100\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"������\"          width=\"90\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CASH_SPOT_DV\"       dataField=\"CASH_SPOT_DV\"        headerText=\"����񱸺�\"      width=\"90\"  visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"            headerText=\"���ݾ�\"        width=\"90\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\"  formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"lastNumericGroupingSort\" />\
            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"���ް���\"        width=\"90\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\"  formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"lastNumericGroupingSort\" />\
            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"�ΰ���ġ����\"    width=\"100\" visible=\"true\"  sortable=\"true\" textAlign=\"right\"  formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"lastNumericGroupingSort\" />\
            <DataGridColumn id=\"VAT_PSV_APC_YN\"     dataField=\"VAT_PSV_APC_YN\"      headerText=\"�ΰ���ȯ������\"  width=\"100\" visible=\"true\"  sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PART_PROC_AMT\"      dataField=\"PART_PROC_AMT\"       headerText=\"�κ���ұݾ�\"    width=\"90\"  visible=\"true\"  sortable=\"true\" textAlign=\"right\"  formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"lastNumericGroupingSort\" />\
            <DataGridColumn id=\"SBJT_NM\"            dataField=\"SBJT_NM\"             headerText=\"������\"          width=\"80\"  visible=\"false\" sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HGRK_ITXP_NM\"       dataField=\"HGRK_ITXP_NM\"        headerText=\"�����\"          width=\"80\"  visible=\"false\" sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <rendererProviders>\
            <AdvancedDataGridRendererProvider column=\"{AGRMT_INST_NM}\" columnSpan=\"0\" depth=\"1\" renderer=\"GroupItem\"/>\
            <AdvancedDataGridRendererProvider column=\"{AGRMT_INST_NM}\" columnSpan=\"5\" depth=\"2\" renderer=\"GroupItem\"/>\
        </rendererProviders>\
        <dataProvider>\
            <!--  �׸����� �ڷḦ dataProvider�� �ƴ� ������ ������Ʈ�� �Է��ؾ� �� ��� �Ʒ��� ���� $gridData�� �־��ݴϴ�   -->\
            <GroupingCollection source=\"{$gridData}\">\
                <Grouping>\
                    <GroupingField name=\"SBJT_NM\">\
                        <summaries>\
                            <SummaryRow>\
                                <SummaryField dataField=\"TRNS_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"USE_SPLY_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"USE_VAT_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"PART_PROC_AMT\" operation=\"SUM\" />\
                            </SummaryRow>\
                        </summaries>\
                    </GroupingField>\
                    <GroupingField name=\"HGRK_ITXP_NM\">\
                        <summaries>\
                            <SummaryRow>\
                                <SummaryField dataField=\"TRNS_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"USE_SPLY_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"USE_VAT_AMT\" operation=\"SUM\" />\
                                <SummaryField dataField=\"PART_PROC_AMT\" operation=\"SUM\" />\
                            </SummaryRow>\
                        </summaries>\
                    </GroupingField>\
                </Grouping>\
            </GroupingCollection>\
        </dataProvider>\
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
    gridApp.setLayout(layoutStr); //�׸��� ���̾ƿ� ����

    
    //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
    var itemDoubleClickHandler = function(event) {
        
        var rowIndex = event.getRowIndex();
        var columnIndex = event.getColumnIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        var column = dataGrid.getColumns()[columnIndex];
        var dataField = column.getDataField();
        // �Ұ����� ����
        if (dataRow.typeName == "mx.collections::SummaryObject") {
            return;
        }
        
        if (columnIndex == 0) {
            // �ش� ����Ÿ�� ������ ������ ����
            var isOpen = gridRoot.isItemOpen(rowIndex);
            // �ִϸ��̼� ȿ�� ���� ����
            var animate = true;
            // �ش� ����Ÿ�� ���� �ڽ��� open/close�մϴ�.
            gridRoot.expandItem(rowIndex, !isOpen, animate);
        }
        
        //group �����ΰ� Ȯ��
        if(typeof(dataRow.children) != "undefined") return;
        
        //popupDetail(rowIndex, dataRow);
        //layerDetail(dataGrid,dataRow);
        
    };

   
    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //�׷��� �׸��忡�� �̹��� �Ⱥ��̰� ó��
        dataGrid.setStyle("defaultLeafIcon", null);
        dataGrid.setStyle("folderOpenIcon", null);
        dataGrid.setStyle("folderClosedIcon", null);
        
        //�̺�Ʈ ���
        dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);

};



//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);


//�ε� �� rMadeGrid ���
function rMateGridSetData() {
    //rMageGrid �ʱ�ȭ
    //gridApp.setData(null);

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //������ ���
    
    document.frm.checkbox2.checked = false; //��ü���� üũ�ڽ�

};


/**************************************************************************
 * �׸��� �׷��� Ȯ��
 * elem : checkbox ��ü 
 **************************************************************************/
function chkGroup(elem){
    
    if (collection == null)
        collection = gridRoot.getCollection();
    if (collection == null) 
        return;
    
    if(elem.checked){
        dataGrid.expandAll();
    }else{
        dataGrid.collapseAll();
    }
}

 $(document).ready(function() {
     // rMateGrid �ʱ�ȭ
     rMateGridInit();
     
   });

</script>
<!-- **********************  rMateGrid setting END ***********************  -->





<script type="text/javascript">
var cnt = 0;
function setGridData(seqNo){
    
    try{
    	cnt = 0;
        var param = seqNo.split(",");
        var gridValue = [];
        if(param.length > 0){
            var paramValue = "";
            for(var i=0;i<param.length;i++){
                paramValue = param[i];
                
        
		        if("1" == paramValue){
		        	
		        	
		        }else if("2" == paramValue){
		        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"100","CASH_SPOT_DV":"����","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0100","HGRK_ITXP_NM":"3. �����ü������ �� ����","EXCTN_EXEC_DT":"2014-03-07","TRNS_AMT":"1100","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0002)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"1000","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"���̳����ֺ�","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"20","CASH_SPOT_DV":"����","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0100","HGRK_ITXP_NM":"4. ����Ȱ����","EXCTN_EXEC_DT":"2014-02-24","TRNS_AMT":"220","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0002)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"200","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0100","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2014-02-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0002)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0201009","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"8. ��������������","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"2250","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0002)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2250","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0201"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0202001","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"9. ������","EXCTN_EXEC_DT":"2014-01-13","TRNS_AMT":"100","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0002)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"91","DTLS_ITXP_NM":"������","DTLS_ITXP_CD":"B0202"};
                    
		        }else if("3" == paramValue){
		        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"100","CASH_SPOT_DV":"����","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0100","HGRK_ITXP_NM":"3. �����ü������ �� ����","EXCTN_EXEC_DT":"2013-04-23","TRNS_AMT":"1100","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"1000","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�þ���ᱸ�Ժ�","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"1818","CASH_SPOT_DV":"����","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0100","HGRK_ITXP_NM":"3. �����ü������ �� ����","EXCTN_EXEC_DT":"2013-07-22","TRNS_AMT":"20000","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"18182","DTLS_ITXP_NM":"�ܺ��ΰǺ�","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����ǰ���ۺ�","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"1363","CASH_SPOT_DV":"����","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0100","HGRK_ITXP_NM":"3. �����ü������ �� ����","EXCTN_EXEC_DT":"2013-10-29","TRNS_AMT":"15000","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"13637","DTLS_ITXP_NM":"�ܺ��ΰǺ�","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"���̳����ֺ�","SUB_DTLS_ITXP_CD":"B0202001","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"20","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"4. ����Ȱ����","EXCTN_EXEC_DT":"2013-05-23","TRNS_AMT":"220","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"200","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������Ȱ���","SUB_DTLS_ITXP_CD":"B0202021","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"4. ����Ȱ����","EXCTN_EXEC_DT":"2013-09-30","TRNS_AMT":"10000","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"10000","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����Ʒú�","SUB_DTLS_ITXP_CD":"B0202001","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"823","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"4. ����Ȱ����","EXCTN_EXEC_DT":"2013-12-23","TRNS_AMT":"9060","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"8237","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2013-06-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2013-07-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2013-08-09","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2013-09-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2013-10-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2013-11-08","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2013-12-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2014-01-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2014-02-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2014-02-28","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"8. ��������������","EXCTN_EXEC_DT":"2013-06-04","TRNS_AMT":"2250","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2250","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"8. ��������������","EXCTN_EXEC_DT":"2013-09-03","TRNS_AMT":"2250","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2250","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"8. ��������������","EXCTN_EXEC_DT":"2013-12-02","TRNS_AMT":"2250","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2250","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"9","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"9. ������","EXCTN_EXEC_DT":"2013-07-08","TRNS_AMT":"91","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"91","DTLS_ITXP_NM":"������","DTLS_ITXP_CD":"B0202"}
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"45","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"9. ������","EXCTN_EXEC_DT":"2013-11-25","TRNS_AMT":"500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"455","DTLS_ITXP_NM":"������","DTLS_ITXP_CD":"B0202"}
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"27","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"9. ������","EXCTN_EXEC_DT":"2013-01-13","TRNS_AMT":"300","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"273","DTLS_ITXP_NM":"������","DTLS_ITXP_CD":"B0202"}
                    
		        }else if("4" == paramValue){
		        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","SUB_DTLS_ITXP_CD":"B0102001","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"100","CASH_SPOT_DV":"����","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0100","HGRK_ITXP_NM":"3. �����ü������ �� ����","EXCTN_EXEC_DT":"2013-03-06","TRNS_AMT":"1100","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"1000","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0102"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"���̳����ֺ�","SUB_DTLS_ITXP_CD":"B0202037","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"20","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"4. ����Ȱ����","EXCTN_EXEC_DT":"2013-03-25","TRNS_AMT":"220","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"200","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202010","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"6. �ΰǺ�","EXCTN_EXEC_DT":"2013-05-10","TRNS_AMT":"2500","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2500","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"0","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"8. ��������������","EXCTN_EXEC_DT":"2013-03-21","TRNS_AMT":"2250","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"2250","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0202"};
                    gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0202011","AGRMT_INST_NM":"��RCMS","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"9","CASH_SPOT_DV":"����","ITXP_NM":"������","ITXP_CD":"B0200","HGRK_ITXP_NM":"9. ������","EXCTN_EXEC_DT":"2013-04-10","TRNS_AMT":"91","PART_PROC_AMT":0,"SBJT_ID":"RCMS �ǽ��� ������� (������ȣ : TEST0003)","SBJT_NM":"RCMS �ǽ��� �������","USE_SPLY_AMT":"91","DTLS_ITXP_NM":"������","DTLS_ITXP_CD":"B0202"}
                    
		        }
            }
        }
    }finally{
        
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}

function SetData(seqNo){
	if(!seqNo) return;
	
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor =    "wait";
        //SetData(); //Insert   Grid
        setGridData(seqNo); //Insert    Grid
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
