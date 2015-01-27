<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_32_00.jsp
 *   Description        : �ڰ�����ü�� ����
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==========================================================================================
 *   2013. 1. 14.                  kjs                 
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
    
    String RowIdx           = kr.go.rcms.web.util.SessionUtil.getRequestValue(request, "pRowIdx");
    String AgrmtInstId      = kr.go.rcms.web.util.SessionUtil.getRequestValue(request, "sAgrmtInstId"); // ������ID
    
%>


<title>�ڰ�����ü�� ���� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">�ڰ�����ü�� ����</p>
        </div>
        <!-- //head title// --> 
    </div>


<script type="text/javascript">
///////////////////////////////////////////////////////////////////
//
// ������ID *ī���ȣ, *ī���������, *������������ ��ȸ
// 
///////////////////////////////////////////////////////////////////


function uf_rtn(){
	var ridx = "<%=RowIdx%>";
	
    //�����׸��� ���� üũ
    selectorColumn = gridRoot.getObjectById("selector");
    if(selectorColumn.getSelectedIndex() < 0){ 
        alert("���õ� �׸��� �����ϴ�.");
        return; 
    }
    
    
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot.getItemAt(rowIndex);
    
    
    
    var rcvBnkCd    = dataRow.ACCT_BNK_CD;
    var rcvBnkNm    = dataRow.ACCT_BNK_CD_NM;
    rcvBnkNm = rcvBnkNm.replace("����","");
    var rcvAcctNo   = dataRow.ACCT_NO;
    var owacNm  = dataRow.ACCT_OWAC_NM;
    
    
    opener.setMyAcctNo(rcvBnkCd,rcvBnkNm,rcvAcctNo,owacNm,ridx);
    self.close();

}
</script>




<div id="body"> 
<!-- content start -->
<div id="content">
    <p class="pop_text t20"></p>
    <!-- �α��� ���� ������� ��� -------------------------------------------------------------------------------------------->
    <form name="frm" method="post">
	    <input type="hidden" name="AgrmtInstId"  id="AgrmtInstId"   value="10112249" />
	    <input type="hidden" name="UsrId"   id="UsrId"    value="SMTEST" />
	    <!-- xGrid Paging ------------------------------------------------------------------------------------------------------->
	    <input type="hidden" name="PrsPgno" value="0" /> <!--������������ȣ-->
	    <input type="hidden" name="TrSupYn" value="N" /> <!--�ŷ���ӿ���-->
	    <!-- xGrid Paging ------------------------------------------------------------------------------------------------------->      
           
        <!-- �������������� ��ü�� ������ �ȳ� start -->
        <div class="t10 b10 pop_wh">
            <div class="total_box b05">
                <p class="fl t03 r05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt"> 0 </span> ��/<span id="InqPrsTotlCnt"> 0 </span> ��]</p>
                <p class="cb"></p>
            </div>
            <!-- //�ѰǼ�/�μ� ���� ��ư end// -->              
            
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "262", "#FFFFFF", "transparent");
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
        <div class="pop_action_bt ar">
            <a href="#dummy" onclick="uf_rtn(); return false;" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a>
        </div>
    </form>
</div>
<!-- //content end// -->
</div>



<!-- //content end// -->


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
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"����\" width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"ACCT_BNK_CD_NM\" dataField=\"ACCT_BNK_CD_NM\"  headerText=\"����\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACCT_BNK_CD\"    dataField=\"ACCT_BNK_CD\"     headerText=\"RcvBnkCd\"   width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACCT_NO_FORMAT\" dataField=\"ACCT_NO_FORMAT\"  headerText=\"���¹�ȣ\"   width=\"180\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACCT_NO\"        dataField=\"ACCT_NO\"         headerText=\"RcvAcctNo\"  width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACCT_OWAC_NM\"   dataField=\"ACCT_OWAC_NM\"    headerText=\"������\"     width=\"160\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
        gridApp.setLayout(layoutStr); //�׸��� ���̾ƿ� ����
    
        
        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
            selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
        };
        
       
        //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var column = dataGrid.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid,dataRow);
            
        };
        
        //�׸��� �̺�Ʈ ���
        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
        };
    
        
        //layout ��� �� ����� �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", SetData);
        
        //data ��� �� ������ �̺�Ʈ ���
        //gridRoot.addEventListener("dataComplete", setTotCnt);   //��ü ��ȸ�Ǽ� ���
    
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

$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    //rMateGrid�� �׸��� ���� �� gridInit() ȣ����.

});
</script>



<script type="text/javascript">
var rowIdx   = "<%=RowIdx%>";    //�����Ϸù�ȣ
var instId  = "<%=AgrmtInstId%>";   //������ID
var cnt = 0;
function setGridData(){
    try{
        
        var gridValue = [];
        cnt = 0;
        if(!instId) return;
        
        

            gridValue[cnt++] = {"AGRMT_INST_NM":"(��) RCMS","AGRMT_INST_ID":"10112249","ACCT_NO_FORMAT":"100-00-000000","REG_DTM":"2013-12-28","ACCT_OWAC_NM":"�����","ACCT_NO":"10000000000","USE_YN":"Y","ACCT_BNK_CD_NM":"A ����","REGR_NM":"�����","REGR_ID":"KEIT","ACCT_BNK_CD":"020"};
            //gridValue[cnt++] = {"AGRMT_INST_NM":"(��) �� ��ü","AGRMT_INST_ID":"10112249","ACCT_NO_FORMAT":"555-55-555555-0","REG_DTM":"2013-12-20","ACCT_OWAC_NM":"(��) �� ��ü","ACCT_NO":"555555555550","USE_YN":"Y","ACCT_BNK_CD_NM":"E ����","REGR_NM":"������","REGR_ID":"RKDJQCP","ACCT_BNK_CD":"003"};
        
    }finally{
        
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}

function SetData(){
    
     try {
         document.body.setCapture(); // 'wait'
         document.body.style.cursor = "wait";
         setGridData(); //Insert    Grid
         document.body.style.cursor = "auto";
         document.body.releaseCapture(); //setCapture()_Next
     } finally {
    	 $("#InqPrsTotlNcnt").html(cnt);
    	 $("#InqPrsTotlCnt").html(cnt);
         reset_submit();
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
