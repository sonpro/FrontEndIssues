<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_34_00.jsp
 *   Description        : ������˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.16                     ������             
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
        String agrmtSeqNo   = SessionUtil.getRequestValue(request, "agrmtSeqNo");
        String agrmtInstId  = SessionUtil.getRequestValue(request, "agrmtInstId");
%>


<title>ī�弱������û &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">ī�弱������û</p>
        </div>
        <!-- //head title// --> 
    </div>


<script type="text/javascript">
function uf_search(SchGb){
    var frm = document.frm;
    
    get2post(frm, "agrmtSeqNo=" +"<%= agrmtSeqNo%>");  
    get2post(frm, "agrmtInstId="+"<%= agrmtInstId%>");
    
    if( isSubmit() ) return;    // ����ó��
    
    setData("<%=agrmtSeqNo%>");
}


function uf_save_rMate(){
    var frm = document.frm;
    var idx = -1;
    
    if( isSubmit() ) return; 
    
    
    if(!chkGridSelectedCount_rMate(gridRoot)) return false;

    
    selectorColumn = gridRoot.getObjectById("selector");    //üũ�� ID ��������
    var arrIdx = selectorColumn.getSelectedIndices();       //üũ�� row ��������
    
    for(var i=0;i<arrIdx.length;i++){
        var dataRow = gridRoot.getItemAt(arrIdx[i]);
        
        if("�ǽð���ü" == dataRow.CRD_SETL_MTHD_DV_NM)  //ī��������
        {
            alert("ī��ǽð���ü������ \n��������� - ����������� - ������ �޴�����\nó�����ֽñ� �ٶ��ϴ�.");
            return;
        }
         
        if("B14012" == dataRow.CLM_CNFM_DV)   //û��Ȯ�λ����ڵ�
        {
            alert("��û�� �� �Ϻδ� û����Ұ� �Դϴ�.\n��������û �Ͻ� �� �����ϴ�.");    
            return;
        }
        
        if("B04020" == dataRow.TRSC_PFMC_ST)   //������ϻ����ڵ�
        {
            alert("��û�� �� �Ϻδ� ���� ������������ �Դϴ�.\n��������û �Ͻ� �� �����ϴ�.");    
            return;
        }
        
        if("0" == dataRow.ITXP_REG_NCNT)    //����ϰǼ�
        {
            alert("��û�� �� �Ϻΰ� ��񳻿��� �������� �ʽ��ϴ�. ����� �������ֽñ� �ٶ��ϴ�.");  
            return;
        }
        
        get2post(frm, dataRow.GridKey);
    }
    
    

    get2post(frm,"agrmtSeqNo="+"<%= agrmtSeqNo%>");
    get2post(frm,"agrmtInstId="+"<%= agrmtInstId%>");
  
    if(!confirm("ī�弱����ó���� �Ͻðڽ��ϱ�?")) {
        return;
    }
    

    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                try{
                    reset_submit();
                    alert("������ ��û�� �Ϸ�Ǿ����ϴ�.\n���� ���� �������� Ȯ���Ͻ� �� �ֽ��ϴ�.");
                }finally{
                    removeTempAttribute(document.frm);  //get2post ����;
                    window.close();
                }
            }
            , 1000);   // 1���� ���� 1000 = 1��
            
    
}

$(document).ready(function(){
	
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    
    //uf_search('S');
});



</script>


<div id="body" style="margin:-48px 0 -25px;">
<form name="frm" method="post">
            <!-------------------------------------------------------------------------------->
            <!--  ����� �� -->
            <!-------------------------------------------------------------------------------->
            <input type="hidden" name="PrsPgno" value="1" /> <!--������������ȣ-->
            <input type="hidden" name="InqDvCd" id="InqDvCd" value="1" /> <!--��ȸ����-->
            <input type="hidden" name="TrSupYn" value="" />
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" /> 
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" /> 

            <div id="content">
                <div class="t20"></div>
                <h3>ī�弱������û</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
            <!-- �׸��� Start -->
            <div id="viewGrid1" style="display: inline">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "387", "#FFFFFF", "transparent");
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
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-01" title="��û" onclick="uf_save_rMate(); return false;"><span class="bt_sp">��û</span></a> 
                </div>
                <!-- //action bt end// -->
                
                    <!-- ���ǻ��� start -->
    <div class="guide_box">
        <p class="guide_boxt"></p>
        <div class="guide_boxc">
            <ul>
                <li>ī������ ��ϰǿ� ���ؼ� ������ ��û�� �����մϴ�.</li>          
                <li>ī�弱���� ��û�� ī��������ϰ��� ����(�����ϱ���) ī���� �������·� �Աݵ˴ϴ�.</li> 
            </ul>    
        </div>
        <p class="guide_boxb"></p>
    </div>
    <!-- //���ǻ��� end// -->
    
            </div>
            <!-- //content end// -->

</form>
</div>



<%@ include file="/inc/jspFooter_popup.jsp" %> 




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
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"            headerText=\"����\"                   width=\"50\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" />\
            <DataGridColumn id=\"CRD_NO\"             dataField=\"CRD_NO\"              headerText=\"ī���ȣ\"               width=\"130\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_APV_DT\"         dataField=\"CRD_APV_DT\"          headerText=\"��������\"               width=\"80\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_DT\"             dataField=\"BUY_DT\"              headerText=\"��������\"               width=\"80\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_PFMC_REG_DT\"   dataField=\"TRSC_PFMC_REG_DT\"    headerText=\"RCMS�������\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCMS_SETL_DT\"       dataField=\"RCMS_SETL_DT\"        headerText=\"����(����)����\"         width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CLM_CNFM_DV_NM\"     dataField=\"CLM_CNFM_DV_NM\"      headerText=\"û��Ȯ�λ���\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_PFMC_ST_NM\"    dataField=\"TRSC_PFMC_ST_NM\"     headerText=\"������ϻ���\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITXP_REG_NCNT\"      dataField=\"ITXP_REG_NCNT\"       headerText=\"����ϰǼ�\"           width=\"80\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_BZ_REG_NO\"     dataField=\"INST_BZ_REG_NO\"      headerText=\"����ڹ�ȣ\"             width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"          headerText=\"���ó\"                 width=\"120\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TOTL_AMT\"           dataField=\"TOTL_AMT\"            headerText=\"���ݾ�\"               width=\"90\" visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"���ޱݾ�\"               width=\"90\" visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"�ΰ���ġ����\"           width=\"90\" visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"RTRT_FIX_AMT\"       dataField=\"RTRT_FIX_AMT\"        headerText=\"�����ݾ�\"               width=\"90\" visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"  dataField=\"VAT_PROC_RTRT_AMT\"   headerText=\"�����ΰ����ݾ�\"         width=\"90\" visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"BUY_CLCT_NO\"        dataField=\"BUY_CLCT_NO\"         headerText=\"���Խ��ι�ȣ\"           width=\"130\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_SETL_MTHD_DV_NM\" dataField=\"CRD_SETL_MTHD_DV_NM\" headerText=\"ī��������\"          width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CODE_RND045\"        dataField=\"CODE_RND045\"         headerText=\"���Խ��α���\"           width=\"0\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CLM_CNFM_DV\"        dataField=\"CLM_CNFM_DV\"         headerText=\"û��Ȯ�λ����ڵ�\"       width=\"0\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_PFMC_ST\"       dataField=\"TRSC_PFMC_ST\"        headerText=\"������ϻ����ڵ�\"       width=\"0\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUTR_ID\"            dataField=\"BUTR_ID\"             headerText=\"�������ŷ�����ID\"   width=\"0\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"GridKey\"            dataField=\"GridKey\"             headerText=\"GridKey\"                width=\"0\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footer>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{CRD_APV_DT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TOTL_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_PROC_RTRT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            </DataGridFooter>\
        </footer>\
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
            
            uf_insert_rMate(dataRow);
            
        };
        
        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
            selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            //dataGrid.addEventListener("itemClick", itemClickHandler); //����Ŭ�� �̺�Ʈ
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", uf_search);   //rMateGrid ���̾ƿ� ��� �� ��ȸ����

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
    try{
        cnt = 0;
        var gridValue = [];
        
        //1. �ű԰���
        if("G00000000000001" == seqNo){

        //2. �������
        }else if("G00000000000002" == seqNo){

        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){

        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){

        }
        

    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}

function setData(seqNo){
    
    if(!seqNo || "udnefined" == typeof seqNo || "" == seqNo) return;
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
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
            , 1000);   // 1���� ���� 1000 = 1��

}

function searchAlert(){
    if(!cnt>0){
    	alert("��ȸ������ �����ϴ�.");
        window.close();
    }
}
</script>

</body>
</html> 
