<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_33_00.jsp
 *   Description        : ��Ÿ��������
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.28                     ������             
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
String EtcEvdcExcCd     = SessionUtil.getRequestValue(request, "EtcEvdcExcCd");
String EtcEvdcExcNo     = SessionUtil.getRequestValue(request, "EtcEvdcExcNo");
String InstNm = "��RCMS";
%>


<title>��Ÿ�������� ���� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">��Ÿ�������� ����</p>
        </div>
        <!-- //head title// --> 
    </div>


<script type="text/javascript">
function uf_GridAdd(){
    var obj = document.xgrid;
    
    if( "B07006" != document.frm.EtcImplCd.value ){
        alert('[��Ÿ��������] ���ý� �̿��Ͻ� �� �ֽ��ϴ�.');
        return;
    }
    <%-- 
    ItxpRecordInsert_setPitm(document.xgrid, '<%=InstNm%>');
     --%>
    ItxpRecordInsert_setPitm_rMate();
}

//�ǳ��� �� �߰�
function ItxpRecordInsert_setPitm_rMate() {
  
  //���� �� ���� ���൵ ��.
  var item = {
          "EVDC_DV": "",            
          "APV_NO": ""
  };
  gridRoot.addItemAt(item);   //�÷��߰�
  columnBackGroundStyle();    //���󺯰�
}


//removeItem(index, root)
function uf_GridDelete(){
    var obj = document.xgrid;

    if( "B07006" != document.frm.EtcImplCd.value ){
        alert('[��Ÿ��������] ���ý� �̿��Ͻ� �� �ֽ��ϴ�.');
        return;
    }
    
    if(!chkGridSelectedCount_rMate()) return;
    selectorColumn = gridRoot.getObjectById("selector");
    removeItem(selectorColumn.getSelectedIndices());
}


/******************************************************************
 * uf_OpenerValue    �θ� �������� �ΰǺ񳻿� ����
 * @param
 * @return
******************************************************************/
function uf_OpenerValue(){
    var obj_dtl = gridRoot;
    var reVal = "";

    if("" == document.frm.EtcImplCd.value){
        alert("��Ÿ�������� �׸��� �����ϼ���");
        document.frm.EtcImplCd.focus();
        return;
    }
    
    reVal = document.frm.EtcImplCd.value+"";
    //reVal = document.frm.EtcImplCd.value;
    
    if( "B07006" == document.frm.EtcImplCd.value ){

        var rowCnt = getGridRowCount_rMate(obj_dtl);
        if(rowCnt <= 0){
            alert("1�� �̻��� ��Ÿ���� ���ι�ȣ������ ����� �ּ���.");
            return;
        }
        
        
        
        for(var i=0; i<rowCnt; i++){
            
            var EvdcDv = $.trim(obj_dtl.getItemFieldAt(i, "EVDC_DV"));   //��������
            var ApprNo = $.trim(obj_dtl.getItemFieldAt(i, "APV_NO").replace(/-/g,""));  //���ι�ȣ
            
            if( ApprNo.length > 24 ){
                alert('���ι�ȣ�� �ִ� 24�ڸ����� �Է��Ͻ� �� �ֽ��ϴ�.\n���ι�ȣ�� Ȯ���Ͻñ� �ٶ��ϴ�.');
                return;
            }
            if("" == EvdcDv){
                alert("���������� �����ϼ���");
                return;
            }

            if("" == ApprNo ){
                alert("���ι�ȣ�� �Է��ϼ���.");
                return;
            }
        }
    
        
        for(var i=0, j=rowCnt; i<j; i++){
            
            if(i!=0){
                reVal = reVal + "";
            }
            reVal = reVal + $.trim(obj_dtl.getItemFieldAt(i, "EVDC_DV"))+ ",";
            reVal = reVal +$.trim(obj_dtl.getItemFieldAt(i, "APV_NO").replace(/-/g,""));
            
        }
        
    }
    
    window.returnValue  = reVal;
    self.close();
}

/******************************************************************
 * fn_setEtcImplExcInfoInfo      �Ķ��Ÿ�� �Ѿ�� ���γ��� ����
 * @param
 * @return
******************************************************************/
function fn_setEtcEvdcExcNo(){
    var frm = document.frm;
    var obj_dtl = gridRoot;
    var recInfo = frm.EtcEvdcExcNo.value;
    //var data     = recInfo.split("");
    var data     = recInfo.split("|"); //�ǽ�ȯ�� �Ķ���Ͱ� �ӽ� ����
    

    if( "B07006" ==  frm.EtcImplCd.value ){
        $('.btcontrol').removeClass('bt_action2-1gray');
        $('.btcontrol').addClass('bt_action2-1');
    }else{
        $('.btcontrol').removeClass('bt_action2-1');
        $('.btcontrol').addClass('bt_action2-1gray');       
    }
    
   
    var setRowData = [];
    var rowValue = null;
    for(var i=0;i<data.length;i++){
        
        if(data[i] != null && data[i] != ""){
            rowValue = null;

            var info    = data[i].split(",");
            var EVDC_DV = info[0];  //��������
            var APV_NO  = info[1];  //���ι�ȣ
            rowValue = {"EVDC_DV":EVDC_DV,"APV_NO":APV_NO};
            
            setRowData[i] = rowValue;
        }
        
        
        gridData = setRowData;
        
        rMateGridSetData();
        
    }
    
}

function uf_change(obj){
    var frm = document.frm;
    var grid = gridRoot;
    
    var gcnt = getGridRowCount_rMate(grid);
    
    if( "B07006" ==  obj.value ){
        $('.btcontrol').removeClass('bt_action2-1gray');
        $('.btcontrol').addClass('bt_action2-1');
        
        uf_GridAdd();
    }else{
        $('.btcontrol').removeClass('bt_action2-1');
        $('.btcontrol').addClass('bt_action2-1gray');
    }
    
    if( "B07006" != obj.value && gcnt > 0 ){
        if( confirm('�Է��Ͻ� ���ι�ȣ������ �ʱ�ȭ �Ͻðڽ��ϱ�?') ){
            //�׸��� �ʱ�ȭ
            rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStr);
        }
    } 
}


</script>
<div id="body"> 
<!-- content start -->
<div id="content">
<p class="pop_text t20"></p>

<form name="frm" method="post">
    <input type="hidden" name="EtcEvdcExcNo" value="<%=EtcEvdcExcNo %>"/>
    <div class="t10 b10 pop_wh">
    
    
      <h3>��Ÿ��������</h3>
      <div class="t10 b05">
            <%=ComboUtil.getComboBox("RNDB07", "EtcImplCd", "", "onchange='uf_change(this)' style='' ", EtcEvdcExcCd, ComboUtil.OPT_SEL) %>
        </div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div>
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "162", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->               
        <div class="action_bt ar" style="width:100%">
        <div class="fl">
        <a href="#dummy" onclick="uf_GridDelete();" class="btcontrol bt_action2-1 bt_action2-1gray" title="����"><span class="bt_sp">����</span></a> 
        <a href="#dummy" onclick="uf_GridAdd();" class="btcontrol bt_action2-1 bt_action2-1gray" title="�߰�"><span class="bt_sp1">�߰�</span></a> 
        </div>
        <a href="#dummy" onclick="uf_OpenerValue();" class="bt_action2-1" title="����"><span class="bt_sp">����</span></a>
        </div>
        <div class="t05">
    <p class="guide_bu">���� �׸� �ش��ϴ� ��쿡�� ��Ÿ���� ���ܷ� ��� �����մϴ�.</p>
    <p class="guide_bu"><span class="txt_or">���ڱ���, �鼼����� ���ڰ�꼭, ���ݰ�꼭(���λ����), ���ݿ�����, ���ν���м��Ƿ�(�񿵸� ���ν���м����), ����������ȣ �����Է�</span></p>
    <p class="guide_bu"><span class="txt_or">��Ÿ����������ȣ</span> : ���ڼ��ݰ�꼭 ���ι�ȣ, ī�� ���ι�ȣ<br />(���������� ��ĵ�Ͽ� ���ε�)</p>
    <p class="guide_bu">��Ÿ������ <span class="txt_or">���� ����͸� ���</span>�̹Ƿ� �����Ͻñ� �ٶ��ϴ�.</p>

        </div>
    </div>
                
      <!-- //action bt end// -->
</form>
</div>

<!-- //content end// -->
</div>


<%@ include file="/inc/jspFooter_popup.jsp" %> 




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DateFormatter id=\"datefmt2\" formatString=\"YYYY-MM-DD\"/>\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleCell\" editable=\"true\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" editable=\"false\" />\
                <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"����\" width=\"55\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"false\" editable=\"false\" />\
                <DataGridColumn id=\"EVDC_DV\"     dataField=\"EVDC_DV\"      headerText=\"��������\"     width=\"120\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemEditor=\"ComboBoxEditor\" editorDataField=\"selectedDataField\" itemRendererDataField=\"code\" itemRenderer=\"DataProviderItem\" itemRendererDataProvider=\"[{'label':'ī��','code':'C'},{'label':'���ڼ��ݰ�꼭','code':'T'}]\" />\
                <DataGridColumn id=\"APV_NO\"      dataField=\"APV_NO\"       headerText=\"���ι�ȣ\"     width=\"120\"  visible=\"true\" sortable=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
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
        gridRoot.addEventListener("layoutComplete", fn_setEtcEvdcExcNo);
        
        //data ��� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("dataComplete", columnBackGroundStyle);
        
        
        //�׸����� ������ ����� ȣ��
        gridRoot.addEventListener("itemDataChanged", itemDataChangeHandler);
        
        

    };
    

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
    // �׸��忡�� ������ �Ͼ�� �ҷ����ϴ�.
    function itemDataChangeHandler(event) {
        var rowIndex = event.getRowIndex();                 // ����� ���ȣ
        var columnIndex = event.getColumnIndex();       // ����� ����ȣ
        var dataField = event.getDataField();               // ����� ���� ����Ÿ �ʵ�
        var dataRow = gridRoot.getItemAt(rowIndex); // ����� ����Ÿ ���ڵ�
        
        if("EVDC_DV" == dataField || "APV_NO" == dataField ){  // ��¥ ���� �� ��ġ�� ������
            dataGrid.invalidateList();
        }
        
    }
    
    //�÷� ���󺯰�
    function columnBackGroundStyle() {
        collection = gridRoot.getCollection();
        
        for (i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 2, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 3, 1, 1, null, 0xEDF2FE);
        }
    }

    $(document).ready(function(){
        
        // rMateGrid �ʱ�ȭ
        rMateGridInit();
        
    });
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



</body>
</html> 
