<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_21_00.jsp
 *   Description        : ��񺰻���ѵ��˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.23                     ������             
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
    String AgrmtSeqNo       = kr.go.rcms.web.util.SessionUtil.getRequestValue(request, "AGRMT_SEQ_NO");     // ������ID
    String AgrmtInstId      = kr.go.rcms.web.util.SessionUtil.getRequestValue(request, "AGRMT_INST_ID");    // �����Ϸù�ȣ
    
    
%>


<title>��񺰻���ѵ� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">��񺰻���ѵ�</p>
        </div>
        <!-- //head title// --> 
    </div>





    <div id="body"> 
        <form name="frm" method="post">
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>��� ����ѵ�</h3>
            
<!-- *************************  rMateGrid ************************* -->      
            <!-- �μ��ư start -->
            <div class="t10 ar">
                <a href="#" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�" /></a>
            </div>
            <!-- //�μ��ư end// -->
            <div class="t03"></div>
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "260", "#FFFFFF", "transparent");
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
        <!-- //content end// -->
        </form>
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
            <DataGridColumn id=\"ITXP_NM\"                dataField=\"ITXP_NM\"                 headerText=\"���\"           width=\"175\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_APV_CASH_LIM_AMT\"   dataField=\"USE_APV_CASH_LIM_AMT\"    headerText=\"����ѵ�\"       width=\"140\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_REG_AMT\"          dataField=\"EXCTN_REG_AMT\"           headerText=\"��ϱݾ�\"       width=\"140\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_BAL\"              dataField=\"EXCTN_BAL\"               headerText=\"��ϰ��ɱݾ�\"   width=\"140\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
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
        gridRoot.addEventListener("layoutComplete", SetData);   //rMateGrid ���̾ƿ� ��� �� ��ȸ����

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
var seqNo   = "<%=AgrmtSeqNo%>";    //�����Ϸù�ȣ
var instId  = "<%=AgrmtInstId%>";   //������ID
var cnt = 0;
function setGridData(seqNo, instId){
    try{
        
        var gridValue = [];
        cnt = 0;
        
        if(!seqNo) return;
        
        //1. �ű԰���
        if("G00000000000001" == seqNo){
        	gridValue[cnt++] = {"ITXP_CD":"B0202","ITXP_NM":"����Ȱ����","USE_APV_CASH_LIM_AMT":"20000","EXCTN_REG_AMT":"0","EXCTN_BAL":"20000"};
        	gridValue[cnt++] = {"ITXP_CD":"B0201","ITXP_NM":"�����ü������ �� ����","USE_APV_CASH_LIM_AMT":"38000","EXCTN_REG_AMT":"0","EXCTN_BAL":"38000"};
        	gridValue[cnt++] = {"ITXP_CD":"B0206","ITXP_NM":"�ΰǺ�","USE_APV_CASH_LIM_AMT":"30000","EXCTN_REG_AMT":"0","EXCTN_BAL":"30000"};
        	gridValue[cnt++] = {"ITXP_CD":"B0202","ITXP_NM":"��������������","USE_APV_CASH_LIM_AMT":"9000","EXCTN_REG_AMT":"0","EXCTN_BAL":"9000"};
        	gridValue[cnt++] = {"ITXP_CD":"B0203","ITXP_NM":"��������","USE_APV_CASH_LIM_AMT":"2000","EXCTN_REG_AMT":"0","EXCTN_BAL":"2000"};
        	gridValue[cnt++] = {"ITXP_CD":"B0301","ITXP_NM":"������","USE_APV_CASH_LIM_AMT":"1000","EXCTN_REG_AMT":"0","EXCTN_BAL":"1000"};
            
        //2. �������
        }else if("G00000000000002" == seqNo){

        	gridValue[cnt++] = {"ITXP_CD":"B0202","ITXP_NM":"����Ȱ����","USE_APV_CASH_LIM_AMT":"20000","EXCTN_REG_AMT":"1320","EXCTN_BAL":"18680"};
            gridValue[cnt++] = {"ITXP_CD":"B0201","ITXP_NM":"�����ü������ �� ����","USE_APV_CASH_LIM_AMT":"38000","EXCTN_REG_AMT":"7920","EXCTN_BAL":"30080"};
            gridValue[cnt++] = {"ITXP_CD":"B0206","ITXP_NM":"�ΰǺ�","USE_APV_CASH_LIM_AMT":"30000","EXCTN_REG_AMT":"7500","EXCTN_BAL":"22500"};
            gridValue[cnt++] = {"ITXP_CD":"B0202","ITXP_NM":"��������������","USE_APV_CASH_LIM_AMT":"9000","EXCTN_REG_AMT":"2250","EXCTN_BAL":"6750"};
            gridValue[cnt++] = {"ITXP_CD":"B0203","ITXP_NM":"��������","USE_APV_CASH_LIM_AMT":"2000","EXCTN_REG_AMT":"0","EXCTN_BAL":"2000"};
            gridValue[cnt++] = {"ITXP_CD":"B0301","ITXP_NM":"������","USE_APV_CASH_LIM_AMT":"1000","EXCTN_REG_AMT":"100","EXCTN_BAL":"900"};
            
        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){

        	gridValue[cnt++] = {"ITXP_CD":"B0202","ITXP_NM":"����Ȱ����","USE_APV_CASH_LIM_AMT":"20000","EXCTN_REG_AMT":"19500","EXCTN_BAL":"500"};
            gridValue[cnt++] = {"ITXP_CD":"B0201","ITXP_NM":"�����ü������ �� ����","USE_APV_CASH_LIM_AMT":"38000","EXCTN_REG_AMT":"37200","EXCTN_BAL":"800"};
            gridValue[cnt++] = {"ITXP_CD":"B0206","ITXP_NM":"�ΰǺ�","USE_APV_CASH_LIM_AMT":"30000","EXCTN_REG_AMT":"30000","EXCTN_BAL":"0"};
            gridValue[cnt++] = {"ITXP_CD":"B0202","ITXP_NM":"��������������","USE_APV_CASH_LIM_AMT":"9000","EXCTN_REG_AMT":"8900","EXCTN_BAL":"100"};
            gridValue[cnt++] = {"ITXP_CD":"B0203","ITXP_NM":"��������","USE_APV_CASH_LIM_AMT":"2000","EXCTN_REG_AMT":"2000","EXCTN_BAL":"0"};
            gridValue[cnt++] = {"ITXP_CD":"B0301","ITXP_NM":"������","USE_APV_CASH_LIM_AMT":"1000","EXCTN_REG_AMT":"1000","EXCTN_BAL":"0"};
            
        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){

        	gridValue[cnt++] = {"ITXP_CD":"B0202","ITXP_NM":"����Ȱ����","USE_APV_CASH_LIM_AMT":"20000","EXCTN_REG_AMT":"18637","EXCTN_BAL":"1363"};
            gridValue[cnt++] = {"ITXP_CD":"B0201","ITXP_NM":"�����ü������ �� ����","USE_APV_CASH_LIM_AMT":"38000","EXCTN_REG_AMT":"33819","EXCTN_BAL":"4181"};
            gridValue[cnt++] = {"ITXP_CD":"B0206","ITXP_NM":"�ΰǺ�","USE_APV_CASH_LIM_AMT":"30000","EXCTN_REG_AMT":"30000","EXCTN_BAL":"0"};
            gridValue[cnt++] = {"ITXP_CD":"B0202","ITXP_NM":"��������������","USE_APV_CASH_LIM_AMT":"9000","EXCTN_REG_AMT":"8900","EXCTN_BAL":"100"};
            gridValue[cnt++] = {"ITXP_CD":"B0203","ITXP_NM":"��������","USE_APV_CASH_LIM_AMT":"2000","EXCTN_REG_AMT":"2000","EXCTN_BAL":"0"};
            gridValue[cnt++] = {"ITXP_CD":"B0301","ITXP_NM":"������","USE_APV_CASH_LIM_AMT":"1000","EXCTN_REG_AMT":"910","EXCTN_BAL":"90"};
            
        } 
                
    }finally{
        
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}

function SetData(){
    if(!seqNo) return false;
    
     setGridData(seqNo, instId); //Insert    Grid
    
}
function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}
</script>

</body>
</html> 
