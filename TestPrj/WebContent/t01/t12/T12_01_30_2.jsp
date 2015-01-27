<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_01_30_2.jsp
 *   Description        : ����������������ȸ �˻�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.03                     ������             
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
    
String AgrmtSeqNo           = SessionUtil.getRequestValue(request, "AgrmtSeqNo");       // �����Ϸù�ȣ
String AgrmtInstId          = SessionUtil.getRequestValue(request, "AgrmtInstId");      // ������ID
String PmsId                = SessionUtil.getRequestValue(request, "PmsId");            // ������ID
String SbjtId               = SessionUtil.getRequestValue(request, "SbjtId");           // ����ID
String BzClasCd             = SessionUtil.getRequestValue(request, "BzClasCd");         // ����з��ڵ�

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
    var idx = -1;
    
    
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
        var RES_REG_NO  = gridRoot.getItemFieldAt(idx, "PTCN_RCHR_NM_RES_REG_NO"); //�ֹε�Ϲ�ȣ
        var RES_REG_NO2 = gridRoot.getItemFieldAt(idx, "PTCN_RCHR_NM_RES_REG_NO2"); //�������
        var PTCN_RT     = gridRoot.getItemFieldAt(idx, "PTCN_RT"); //������(%)
        rowValue = {"RCHR":PTCN_RCHR_NM,"RCHR_NM":PTCN_RCHR_NM,"RES_REG_NO":RES_REG_NO,"REG_NO":RES_REG_NO2,"PTCN_PCT":PTCN_RT,"AMT":0};
        
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
    <h3>����������������ȸ</h3>
    
    <div class="t20"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div>
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "292", "#FFFFFF");
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
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" editable=\"false\" />\
                <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"����\" width=\"55\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" />\
                <DataGridColumn id=\"PTCN_STR_DT\"                dataField=\"PTCN_STR_DT\"             headerText=\"������\"             width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_END_DT\"                dataField=\"PTCN_END_DT\"             headerText=\"������\"             width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_RCHR_NM\"               dataField=\"PTCN_RCHR_NM\"            headerText=\"��������\"           width=\"70\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_RCHR_NM_RES_REG_NO2\"   dataField=\"PTCN_RCHR_NM_RES_REG_NO2\" headerText=\"�������\"          width=\"70\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_RT\"                    dataField=\"PTCN_RT\"                 headerText=\"������(%)\"          width=\"80\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ETC_SBJT_PTCN_RT\"           dataField=\"ETC_SBJT_PTCN_RT\"        headerText=\"��Ÿ����������(%)\"  width=\"120\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ETC_SBJT_PTCN_CNT\"          dataField=\"ETC_SBJT_PTCN_CNT\"       headerText=\"��Ÿ����������\"     width=\"100\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"PTCN_RCHR_NM_RES_REG_NO\"    dataField=\"PTCN_RCHR_NM_RES_REG_NO\" headerText=\"�ֹε�Ϲ�ȣ\"       width=\"0\"  visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
            <footers>\
                <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                    <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{PTCN_RCHR_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
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
        gridRoot.addEventListener("layoutComplete", uf_search);
        
        //data ��� �� ������ �̺�Ʈ ���
        //gridRoot.addEventListener("dataComplete", setTotCnt);

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
        
        gridValue[cnt++] = {"PTCN_STR_DT":"20140101","PTCN_END_DT":"20990131","PTCN_RCHR_NM":"���Ѱ�","PTCN_RCHR_NM_RES_REG_NO2":"123456","PTCN_RT":"15","ETC_SBJT_PTCN_RT":"15","ETC_SBJT_PTCN_CNT":"1","PTCN_RCHR_NM_RES_REG_NO":"1234561234567"};
        gridValue[cnt++] = {"PTCN_STR_DT":"20140101","PTCN_END_DT":"20990131","PTCN_RCHR_NM":"������","PTCN_RCHR_NM_RES_REG_NO2":"222222","PTCN_RT":"25","ETC_SBJT_PTCN_RT":"25","ETC_SBJT_PTCN_CNT":"2","PTCN_RCHR_NM_RES_REG_NO":"2222221234567"};
        gridValue[cnt++] = {"PTCN_STR_DT":"20140101","PTCN_END_DT":"20990131","PTCN_RCHR_NM":"������","PTCN_RCHR_NM_RES_REG_NO2":"333333","PTCN_RT":"30","ETC_SBJT_PTCN_RT":"30","ETC_SBJT_PTCN_CNT":"3","PTCN_RCHR_NM_RES_REG_NO":"3333331234567"};

        
    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}



</script>

</body>
</html> 
