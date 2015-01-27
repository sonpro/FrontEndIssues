<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_01_30_0.jsp
 *   Description        : �ΰǺ񳻿����
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
    
	String ChkAmt               = SessionUtil.getRequestValue(request, "ChkAmt");           // ���ݾ�
	String AgrmtSeqNo           = SessionUtil.getRequestValue(request, "AgrmtSeqNo");       // �����Ϸù�ȣ
	String AgrmtInstId          = SessionUtil.getRequestValue(request, "AgrmtInstId");      // ������ID
	String PmsId                = SessionUtil.getRequestValue(request, "PmsId");            // ������ID
	String SbjtId               = SessionUtil.getRequestValue(request, "SbjtId");           // ����ID
	String BzClasCd             = SessionUtil.getRequestValue(request, "BzClasCd");         // ����з��ڵ�
	String tObjIdx              = SessionUtil.getRequestValue(request, "tObjIdx");
	String ItxpCd               = SessionUtil.getRequestValue(request, "ItxpCd");           // �����ڵ�
	String UnfyMgntInstYn       = SessionUtil.getRequestValue(request, "UnfyMgntInstYn");   // ���հ����������
	String PtcnRchrNm           = "����";                                        // ������������
	String PtcnRchrKey          = "";                                          // �����������޺��ڽ�Ű��
	String PtcnRchrRt           = "";                                          // ����������������
	String tmpRegNo             = "";
	
	RcmsStringBuffer insertStr  = new RcmsStringBuffer();
	String chr = (char)1 + "";

	
%>


<title>�ΰǺ񳻿� ��� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">�ΰǺ񳻿� ���</p>
        </div>
        <!-- //head title// --> 
    </div>


<script type="text/javascript">
/******************************************************************
 * fn_setRchrInfo        �Ķ��Ÿ�� �Ѿ�� �ΰǺ񳻿� ����
 * @param
 * @return
******************************************************************/

function fn_setRchrInfo(obj_dtl){
    var rchrInfo = parentFrm.p_rchrInfo.value;
    var data     = rchrInfo.split("|");
    var gridValue = [];
    
    for(var i=0; i<data.length; i++){
        if(data[i] != null && data[i] != ""){
            var info    =   data[i].split(",");
                            
            gridValue[i] = {
            		"STR_DT"     :String(info[0].substr(0,4) + "/" + info[0].substr(4,2) + "/" + info[0].substr(6)) //YYYYMMDD  ������ YYYY/MM/DD �������� ����
		            ,"END_DT"     :String(info[1].substr(0,4) + "/" + info[1].substr(4,2) + "/" + info[1].substr(6))
		            ,"RCHR"       :String(info[2])
		            ,"RCHR_NM"    :String(info[2])
		            ,"RES_REG_NO" :String(info[3])
		            ,"REG_NO"     :String(info[3].substr(0,6))
		            ,"PTCN_PCT"   :String(info[4])
		            ,"AMT"        :String(info[5])
            };
        }//if
    }//for

    gridData = gridValue;    //��ȸ��� JSON �� ��������
    rMateGridSetData();  //rMateGrid ����
}
/******************************************************************
 * uf_GridAdd        �׸��� �ο� �߰�(��ư�̿��)
 * @param
 * @return
******************************************************************/
function uf_GridAdd(){
    
<%
    if("B0205".equals(ItxpCd) && "Y".equals(UnfyMgntInstYn)){
%>
        alert("�л��ΰǺ�� �׸��� �߰�/���� �� �� �����ϴ�.");
        return;
<%
    }
%>
    var param   = "AgrmtSeqNo="             + "<%=AgrmtSeqNo%>";                    // �����Ϸù�ȣ
    param   = param + "&AgrmtInstId="   + "<%=AgrmtInstId%>";                   // ������ID
    param   = param + "&SbjtId="        + "<%=SbjtId%>";                        // ����ID
    
    var url     = "/t01/t12/T12_01_30_2.jsp?" + param;
    
    var result  = openModalNs(url, "", "dialogWidth:800px; dialogHeight:500px; scroll:no");
    
    //modal ����� �׸��忡 ����
    if(typeof result != "undefined"){
        if(typeof gridData == "undefined"){
            gridData = result;
            rMateGridSetData();
        }else{
            
            for(var i=0;i<result.length;i++){
                gridRoot.addItemAt(result[i]);
            }
            
            columnBackGroundStyle();    //���󺯰�
            
        }//if
    }//if
    
}

/******************************************************************
 * uf_GridDelete     �׸��� �ο� ����
 * @param
 * @return
******************************************************************/
function uf_GridDelete(){
<%
    if("B0205".equals(ItxpCd) && "Y".equals(UnfyMgntInstYn)){
%>
        alert("�л��ΰǺ�� �׸��� �߰�/���� �� �� �����ϴ�.");
        return;
<%
    }
%>

	var selectorCol = gridRoot.getObjectById("selector");
	var selectedIndex = selectorCol.getSelectedIndices();
	
    if(selectedIndex.length < 1){
    	alert("���õ� ������ �����ϴ�.");
    	return;
    }
    
    
    removeItem(selectedIndex);
    

    
    
}
/******************************************************************
 * fn_SearchList     �ΰǺ񳻿���ϳ��� �˾� ǥ��
 * @param
 * @return
******************************************************************/
function fn_SearchList(){
    var param;
    var result;
    var url;

<%
    if("B0205".equals(ItxpCd) && "Y".equals(UnfyMgntInstYn)){
%>
        alert("�л��ΰǺ�� �׸��� �߰�/���� �� �� �����ϴ�.");
        return;
<%
    }
%>

    param   = "AgrmtSeqNo="             + "<%=AgrmtSeqNo%>";                    // �����Ϸù�ȣ
    param   = param + "&AgrmtInstId="   + "<%=AgrmtInstId%>";                   // ������ID
    
    url     = "/t01/t12/T12_01_30_1.jsp?" + param;

    result  = openModalNs(url, "", "dialogWidth:800px; dialogHeight:615px; scroll:no");

    
    //modal ����� �׸��忡 ����
    if(typeof result != "undefined"){
        //modal ����� �׸��忡 ����
        if(typeof result != "undefined"){
            if(typeof gridData == "undefined"){
                gridData = result;
                rMateGridSetData();
            }else{
                
                for(var i=0;i<result.length;i++){
                    gridRoot.addItemAt(result[i]);
                }
                
                columnBackGroundStyle();    //���󺯰�
                
            }//if
        }//if
    }

}
/******************************************************************
 * uf_OpenerValue    �θ� �������� �ΰǺ񳻿� ����
 * @param
 * @return
******************************************************************/
function uf_OpenerValue(){
	
    var sumAmt  = 0;
    var tmp_val, reVal;
    var itxp_amt = "";

    var gridCnt = getGridRowCount_rMate();
    
    if(gridCnt <= 0){
        alert("1�� �̻��� �ΰǺ񳻿��� ����Ͽ� �ּ���.");
        return;
    }
    
    
    var rowIndex;
    var dataRow;
    
    for(var i=0; i<gridCnt; i++){ 
    	dataRow = gridRoot.getItemAt(i);
        
        var StrDt;
        var EndDt;
        
        if(typeof dataRow.STR_DT == "undefined"){
        	StrDt = 0;
        }else{
        	StrDt = dataRow.STR_DT.replace(/-/gi,"");
        	StrDt = Number(StrDt.replace(/\//gi,""));
        }
        if(typeof dataRow.END_DT == "undefined"){
            EndDt = 0;
        }else{
            EndDt = dataRow.END_DT.replace(/-/gi,"");
            EndDt = Number(EndDt.replace(/\//gi,""));
        }
    	
        
        if(0 == StrDt){
            alert("�������� �Է��ϼ���.");
            return;
        }
        
        if(0 == EndDt){
            alert("�������� �Է��ϼ���.");
            return;
        }
        
        if(StrDt > EndDt){
            alert("�������� �����Ϻ��� ���� �����Դϴ�.");
            return;
        }

        if( "" == $.trim(dataRow.RCHR) ){
            alert("�������� �����ϼ���.");
            return;
        }
        
        var ptcn_rt = dataRow.PTCN_PCT;
        if( "" == $.trim(ptcn_rt) || "0" == $.trim(ptcn_rt) ){
            alert("������(%)�� �Է��ϼ���.");
            return;
        }

        if( !/^(\d{1,3})(\.\d{0,2})?$/g.test(ptcn_rt) ){
            alert("������(%)�� ���ڸ� �Է��ϼ���\n(�Ҽ��� ��°�ڸ����� �Է°����մϴ�.)");
            return;         
        }


        //2012.03.08 ����� ���� : �κ���ҷ� �ش� ��� ��ü��ҽÿ� ���ΰǺ񳻿� �ݾ��� 0�����ε� �Է� �����ϵ��� ����.
        //if("0" == getCell(obj_dtl, i, "�ݾ�"))
        itxp_amt = dataRow.AMT;
        if("" == itxp_amt) {
            if("0" != itxp_amt) {
                alert("�ݾ��� �Է��ϼ���.");
                return;
            }
        }
        if( !/^[0-9]{1,}$/g.test(itxp_amt) ){
            alert("�ݾ��� ���ڸ� �Է��ϼ���" + itxp_amt);
            return;         
        }
        
        tmp_val = dataRow.RCHR + dataRow.RES_REG_NO;
        for(var j=0; j<gridCnt; j++){
        	var chkDataRow = gridRoot.getItemAt(j);
            if(i!=j && tmp_val == chkDataRow.RCHR + chkDataRow.RES_REG_NO){
                alert("�������� �ߺ��Ȱ��� �ֽ��ϴ�. �ߺ��� ���� ������ �ֽʽÿ�");
                return;
            }
        }
    }

    for(var i=0; i<gridCnt; i++){ 
    	dataRow = gridRoot.getItemAt(i);
        sumAmt += Number(dataRow.AMT);
    }
    
    
    if(sumAmt != "<%=ChkAmt%>" && gridCnt!= 0){
        alert("�� ��ϵ� �ݾ��� ������ϵ� �ݾװ� ��ġ���� �ʽ��ϴ�.");
        return;
    }
    
    reVal = "";
    for(var i=0, j=gridCnt; i<j; i++){
        if(i!=0){
            reVal = reVal + "|";
        }
        
        var StrDt;
        var EndDt;
        
        dataRow = gridRoot.getItemAt(i);
        
        StrDt = dataRow.STR_DT.replace(/-/gi,"");
        StrDt = StrDt.replace(/\//gi,"");
        
        EndDt = dataRow.END_DT.replace(/-/gi,"");
        EndDt = EndDt.replace(/\//gi,"");
        
        reVal = reVal + StrDt      + ",";
        reVal = reVal + EndDt     + ",";
        reVal = reVal + dataRow.RCHR_NM     + ",";
        reVal = reVal + dataRow.RES_REG_NO  + ",";
        reVal = reVal + dataRow.PTCN_PCT    + ",";
        reVal = reVal + dataRow.AMT;
    }
    
    
    if(typeof parentFrm.rchrAmt_0 != "undefined"){
        var today = new Date();
        try{
            parentFrm.document.getElementById("rchrAmt_" + "<%=tObjIdx%>").value = sumAmt;          
        }catch(e){
            try{
                parentFrm.rchrAmt_<%=tObjIdx%>.value = sumAmt;
            }catch(e){
                alert(e.message + today.getDate());
            }
        }
    }

    window.returnValue  = reVal;
    self.close();
}

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
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleCell\" editable=\"true\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" editable=\"false\" />\
                <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"����\" width=\"55\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" editable=\"false\" />\
                <DataGridColumn id=\"STR_DT\"     dataField=\"STR_DT\"      headerText=\"������\"     width=\"120\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{datefmt2}\" itemEditor=\"DateEditor\" />\
                <DataGridColumn id=\"END_DT\"     dataField=\"END_DT\"      headerText=\"������\"     width=\"120\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{datefmt2}\" itemEditor=\"DateEditor\" />\
                <DataGridColumn id=\"RCHR\"       dataField=\"RCHR\"        headerText=\"������\"     width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"RCHR_NM\"    dataField=\"RCHR_NM\"     headerText=\"��������\"   width=\"0\"  visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"RES_REG_NO\" dataField=\"RES_REG_NO\"  headerText=\"�ֹι�ȣ\"   width=\"0\"  visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"REG_NO\"     dataField=\"REG_NO\"      headerText=\"�������\"   width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"PTCN_PCT\"   dataField=\"PTCN_PCT\"    headerText=\"������(%)\"  width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"AMT\"        dataField=\"AMT\"         headerText=\"�ݾ�\"       width=\"100\"  visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" />\
            </columns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
            <footers>\
                <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn />\
                    <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{REG_NO}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                    <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
                    <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
            
            fn_setRchrInfo(gridRoot);
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        
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
        
        // ������ �ʵ忡 ���� ��ȣ�� �Ѵ�.
        if("AMT" == dataField){ //�ݾ׼��� �� �հ踦 ��ȣ���Ͽ� �� �ݾ� ����
            
        	//���ڿ� üũ   ���ڿ��Ͻ� true
            if( isNaN(gridRoot.getItemFieldAt(rowIndex, dataField)) ){
            	alert('�ݾ��� ���ڸ� �Է����ּ���.');
            	gridRoot.setItemFieldAt("", rowIndex, dataField); // ��, row, id
            }
        }
        
        
        var footer = gridRoot.getObjectById("footer");
        footer.invalidateData();
        dataGrid.invalidateList();
        
    }
    
  
    //�ΰ������� ��Ÿ�� ����
    function columnJsStyle(item, value, column) {
        if (value && value != "")
            return { color: 0xFF0000,       backgroundColor: 0xCCCCCC    };
        return null;
    }
    
    
    //�÷� ���󺯰�
    function columnBackGroundStyle() {
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            alert("collection ��ü�� ã�� �� �����ϴ�");
            return;
        }
        
        for (var i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 2, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 3, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 8, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 9, 1, 1, null, 0xEDF2FE);
        }
    }

    
    // ������ ���� ����
    function changeItem(rowIdx, editField, selectedValue) {
        if(typeof rowIdx!="undefined") editRowIndex = rowIdx;
        if(typeof editField!="undefined") editDataField = editField;
        
        gridRoot2.setItemFieldAt(selectedValue, editRowIndex, editDataField);
    }
    
    

    
    /*
     * �ΰ��� ������� ���ý�
     * ���� : ������ �����ݾ׿� �Է�
     * ���� : ���ݾ��� ���ް������� �Է�
     */
    function notChgVat(rowIndex, dataRow){
        var frm = document.frm;
        
        if( "0" == dataRow.ORGNL_SPLY_AMT && "0" == dataRow.ORGNL_ADTN_TAX ){
            if("A" == dataRow.OVRS_USE_YN){             // �������
                gridRoot2.setItemFieldAt(dataRow.SPLY_PRC_AMT, rowIndex, "ORGNL_SPLY_AMT");    //�������ް���
                gridRoot2.setItemFieldAt(dataRow.VAT_AMT, rowIndex, "ORGNL_ADTN_TAX");         //�����ΰ���ġ����
                
            }else if("B" == dataRow.OVRS_USE_YN){       // ���ܻ��
                gridRoot2.setItemFieldAt(dataRow.APV_SUM, rowIndex, "ORGNL_SPLY_AMT");
                gridRoot2.setItemFieldAt("0", rowIndex, "ORGNL_ADTN_TAX");
                
            }
        }
    }


        
     // ���� �۾� ��� �������� (�׸��忡�� �۾��� �Է�,����,���� ������ �����ɴϴ�)
     // ����Ÿ�� �迭 ���·�
     //  idx: ���ȣ
     //  job: ���� �۾� (I:�Է�, U:����, D:����)
     //  data: ���� �ڷ�
     // �� ������ ������ ������ ���� ������ ���ĵǾ� �ֽ��ϴ�.
     function getChangedData() {
         var changedData = gridRoot2.getChangedData();
         if (changedData.length == 0)
             alert("����� �ڷᰡ �����ϴ�");
         else {
             for (var i = 0; i < changedData.length; i++)
                 alert("index:"+changedData[i].idx+"\n"+"job:"+changedData[i].job+"\n"+"data:"+JSON.stringify(changedData[i].data));
         }
     }

    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->






<div id="body">
  <!-- content start -->
  <form name="frm" method="post">
  <div id="content">
    <div class="t20"></div>
    <h3>�ΰǺ񳻿����</h3>
    <!-- �ѰǼ�/�μ� ���� ��ư start -->
    <div class="ar b05">
    <li>
    <a href="#dummy" onclick="uf_GridAdd()"><img src="/bt/bt_plus.gif" alt="�߰��ϱ�"/></a>
    <a href="#dummy" onclick="uf_GridDelete()"><img  src="/bt/bt_minus.gif" alt="����"/></a>
    </div>
    <!-- //�ѰǼ�/�μ� ���� ��ư end// -->
    
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div>
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "335", "#FFFFFF", "transparent");
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
      <div class="fl"><a href="#dummy" onclick="fn_SearchList();" class="bt_action8-01" title="�ΰǺ��ϳ���"><span class="bt_sp">�ΰǺ��ϳ���</span></a></div>
      <a href="#dummy" onclick="uf_OpenerValue();" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a> </div>
    <!-- //action bt end// -->
    <div class="guide_bu">������,�������� �ش� ���ްǿ� ���� �Ⱓ�Դϴ�.</div>
  </div>
  </form>
</div>



    

<%@ include file="/inc/jspFooter_popup.jsp" %> 


<script type="text/javascript">
$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();

});
</script>




</body>
</html> 
