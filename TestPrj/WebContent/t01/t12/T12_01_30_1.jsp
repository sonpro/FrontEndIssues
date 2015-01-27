<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_01_30_1.jsp
 *   Description        : �ΰǺ񳻿���ϳ��� ��ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.02                     ������             
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

<script type="text/javascript">
    parentFrm = window.dialogArguments;
</script>

<%
    
	String AgrmtSeqNo                   = SessionUtil.getRequestValue(request, "AgrmtSeqNo");
	String AgrmtInstId                  = SessionUtil.getRequestValue(request, "AgrmtInstId");

%>


<title>�ΰǺ񳻿� ��ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">�ΰǺ񳻿� ��ȸ</p>
        </div>
        <!-- //head title// --> 
    </div>

<script type="text/javascript">
var agrmtSeqNo = "<%=AgrmtSeqNo%>";
var agrmtInstId = "<%=AgrmtInstId%>";
/******************************************************************
 * uf_search        ��ȸ ó��
 * @param
 * @return
******************************************************************/
function uf_search(){   
    var frm = document.frm;

    if( isSubmit() ) return;    // ����ó��
    
    
    uf_proce_display_on();  //�ε���

    setTimeout(
            function(){
                    try{   
                        document.body.style.cursor = "wait";
                        setGridData(agrmtSeqNo);
                        document.body.style.cursor = "auto";
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
    
    
}
/******************************************************************
 * uf_selected      ���� ó��
 * @param
 * @return
******************************************************************/
function uf_selected(){
    var val = "";
    var key = "";
    
    
    //�׸��� ���� üũ
    selectorColumn = gridRoot.getObjectById("selector");
    var selLength = selectorColumn.getSelectedIndices().length;
    if(selLength == 0){ 
        alert("���� �׸��� �����ϴ�.");
        return; 
    }
    
    
    
    var idx;
    
    var returnGridData = [];
    var rowValue = null;
    for(var i=0;i<selLength;i++){
        idx = selectorColumn.getSelectedIndices()[i];
        
        rowValue = null;
        var PTCN_RCHR_NM = gridRoot.getItemFieldAt(idx, "PTCN_RCHR_NM"); //��������
        var RES_REG_NO  = gridRoot.getItemFieldAt(idx, "RES_REG_NO"); //�ֹε�Ϲ�ȣ
        var RES_REG_NO2 = gridRoot.getItemFieldAt(idx, "RES_REG_NO2"); //�������
        var PTCN_PCT    = gridRoot.getItemFieldAt(idx, "PTCN_PCT"); //������(%)
        rowValue = {"RCHR":PTCN_RCHR_NM,"RCHR_NM":PTCN_RCHR_NM,"RES_REG_NO":RES_REG_NO,"REG_NO":RES_REG_NO2,"PTCN_PCT":PTCN_PCT,"AMT":0};
        
        returnGridData[i] = rowValue;
        
    }
    this.close();
    window.returnValue = returnGridData;
}
</script>







<div id="body">
  <!-- content start -->
  <div id="content">
    <form name="frm" method="post">
    <div class="t20"></div>
    <h3>�ΰǺ��ϳ���</h3>
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
              <th scope="row"><label for="usedaystart">�������</label></th>
              <td>
                <%@ include file="/inc/set_date_btn.jsp" %>
                <%@ include file="/inc/set_date_today.jsp" %>   
              </td>
            </tr>
            <tr>
              <th scope="row">�����</th>
              <td>
                <select name="DtlsItxpCd" style="width: 150px;" onchange="uf_search();">
                    <option value="">��ü</option>
                    <option value="B0101">�����ΰǺ�</option>
                    <option value="B0203">��������</option>
                    <option value="B0102">�ܺ��ΰǺ�</option>
                    <option value="B0204">�ΰǺ�</option>
                    <option value="B0205">�л��ΰǺ�</option>
                </select>
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
    <div class="t20"></div>
    
      <div>
        <p class="fl t05"></p>
        <p class="ar b05">
          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�"/></a>
          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="����"/></a>
        </p>
        <p class="cb"></p>
      </div>    
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div>
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "230", "#FFFFFF");
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
    <!-- action bt start -->
    <div class="pop_action_bt">
        <div class="fl"><a href="#dummy" onclick="uf_search('N');" id="NextBtn" style="display:none;" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a></div>
        <div class="ar"><a href="#dummy" onclick="uf_selected();" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a></div>
    </div>    
    <!-- //action bt end// -->
    <div class="t10"></div>
    </form>
  </div>
</div>
<!-- //content end// -->
    




    

<%@ include file="/inc/jspFooter_popup.jsp" %> 


<script type="text/javascript">
$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    
    //rMateGrid�� �׸��� ���� �� gridInit() ȣ����.

});
</script>



<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">


var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DateFormatter id=\"datefmt2\" formatString=\"YYYY-MM-DD\"/>\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"2\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"����\" width=\"55\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" />\
                <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"�������\"             width=\"120\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_STR_DT\"        dataField=\"PTCN_STR_DT\"         headerText=\"������\"               width=\"120\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_END_DT\"        dataField=\"PTCN_END_DT\"         headerText=\"������\"               width=\"120\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_RCHR_NM\"       dataField=\"PTCN_RCHR_NM\"        headerText=\"��������\"             width=\"95\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"RES_REG_NO2\"        dataField=\"RES_REG_NO2\"         headerText=\"�������\"             width=\"95\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_PCT\"           dataField=\"PTCN_PCT\"            headerText=\"������(%)\"            width=\"90\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"�����ڵ�\"             width=\"0\"  visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"�����\"               width=\"110\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"�������ڵ�\"           width=\"0\"  visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"�������\"             width=\"130\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PAYM_AMT\"           dataField=\"PAYM_AMT\"            headerText=\"���ޱݾ�\"             width=\"100\"  visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"RES_REG_NO\"         dataField=\"RES_REG_NO\"          headerText=\"�ֹε�Ϲ�ȣ\"         width=\"0\"  visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
            <footers>\
                <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{PTCN_RCHR_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PAYM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->




<script type="text/javascript">
var cnt = 0;
function setGridData(seqNo){
	if(!seqNo) return;
    try{
        
        var gridValue = [];
        cnt = 0;
        
        //1. �ű԰���
        if("G00000000000001" == seqNo){
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"��å��","RES_REG_NO2":"111111","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111111234567"};
            gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"25","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
            gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};

        //2. �������
        }else if("G00000000000002" == seqNo){
    	    
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"��å��","RES_REG_NO2":"111111","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111111234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"25","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2099-01-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};

            
        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){
            
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"v"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-28","PTCN_STR_DT":"2014-02-01","PTCN_END_DT":"2014-02-28","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-28","PTCN_STR_DT":"2014-02-01","PTCN_END_DT":"2014-02-28","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"40","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-28","PTCN_STR_DT":"2014-02-01","PTCN_END_DT":"2014-02-28","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"30","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
            
        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){
        	gridValue[cnt++] = {"USE_DT":"2013-03-08","PTCN_STR_DT":"2013-02-01","PTCN_END_DT":"2013-02-28","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-03-08","PTCN_STR_DT":"2013-02-01","PTCN_END_DT":"2013-02-28","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-03-08","PTCN_STR_DT":"2013-02-01","PTCN_END_DT":"2013-02-28","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-04-10","PTCN_STR_DT":"2013-03-01","PTCN_END_DT":"2013-03-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-05-10","PTCN_STR_DT":"2013-04-01","PTCN_END_DT":"2013-04-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-06-10","PTCN_STR_DT":"2013-05-01","PTCN_END_DT":"2013-05-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-07-10","PTCN_STR_DT":"2013-06-01","PTCN_END_DT":"2013-06-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-08-09","PTCN_STR_DT":"2013-07-01","PTCN_END_DT":"2013-07-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-09-10","PTCN_STR_DT":"2013-08-01","PTCN_END_DT":"2013-08-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-10-10","PTCN_STR_DT":"2013-09-01","PTCN_END_DT":"2013-09-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-11-08","PTCN_STR_DT":"2013-10-01","PTCN_END_DT":"2013-10-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2013-12-10","PTCN_STR_DT":"2013-11-01","PTCN_END_DT":"2013-11-30","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-01-10","PTCN_STR_DT":"2013-12-01","PTCN_END_DT":"2013-12-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"�̼���","RES_REG_NO2":"111112","PTCN_PCT":"10","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"1000","RES_REG_NO":"1111121234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"222222","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"800","RES_REG_NO":"2222221234567"};
        	gridValue[cnt++] = {"USE_DT":"2014-02-10","PTCN_STR_DT":"2014-01-01","PTCN_END_DT":"2014-01-31","PTCN_RCHR_NM":"������","RES_REG_NO2":"333333","PTCN_PCT":"20","DTLS_ITXP_CD":"B0102","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PAYM_AMT":"700","RES_REG_NO":"3333331234567"};


        }
        
    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}



</script>

</body>
</html> 
