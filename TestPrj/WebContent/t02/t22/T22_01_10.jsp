 <%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T22_01_10.jsp
 *   Description        : ��ü��ҿ�û ����ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.03                     ������             
 *
 *  @author     ������ 
 *  @Since      
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!-- //2014 �׸��� ��ü �۾� head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //2014 �׸��� ��ü �۾� head end -->
<%
String TrscEvdcDv          = SessionUtil.getRequestValue(request, "pTrscEvdcDv");   // ��������
String ButrId              = SessionUtil.getRequestValue(request, "pButrId");       // �������ŷ�����ID
String AgrmtSeqNo          = SessionUtil.getRequestValue(request, "AgrmtSeqNo");       // �������ŷ�����ID
%>

    <!-- head title -->
    <div class="title">
        <p class="pop_title">������� ����ȸ</p>
    </div>
    <!-- //head title// --> 

    <div id="body">
        <form name="frm" method="post">
        <input type="hidden" id="ButrId" name="ButrId" value="<%=ButrId%>"/>
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>�������</h3>
            <div class="t10"></div>
			<!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->      
		     <!-- �׸��� Start -->
		     <div>
		         <script>
		         rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "140", "#FFFFFF", "transparent");
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
			<!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->            
            
        </div>
        <!-- //content end// -->
        </form>
    </div>

<!-- //2014 �׸��� ��ü �۾� footer start -->
<%@ include file="/inc/jspFooter_popup.jsp" %>
<!-- //2014 �׸��� ��ü �۾� footer end -->

<script type="text/javascript">

var seqNo = "<%=AgrmtSeqNo%>";
	//////////////////////////////////
	//������ȸ
	//////////////////////////////////
	function uf_Search(){  
        uf_proce_display_on();  //�ε���
        setTimeout(function(){SetData(seqNo);}, 1000);   // 1���� ���� 1000 = 1��s	    
	}   

</script>

<script type="text/javascript">
$(document).ready(function() {
	/* ********** 2014 �׸��� ��ü �۾� rMateGrid �ʱ�ȭ  ********** */
    rMateGridInit();
    /* ********** 2014 �׸��� ��ü �۾� rMateGrid �ʱ�ȭ  ********** */
});


/* ********************** 2014 �׸��� ��ü �۾� rMateGrid setting START *********************** */
 
 var layoutStr = "\
 <?xml version=\"1.0\" encoding=\"utf-8\"?>\
 <rMateGrid>\
 <NumberFormatter id=\"numfmt\" />\
 <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
 <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
 <DataGrid id=\"grid1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
	 <columns>\
	 <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
	 <DataGridColumn id=\"TRSC_EVDC_DV\"			dataField=\"TRSC_EVDC_DV\"   			headerText=\"���������ڵ�\"  	width=\"0\"		visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"TRSC_EVDC_DV_NM\"			dataField=\"TRSC_EVDC_DV_NM\"   		headerText=\"��������\"   		width=\"150\" 	visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"SPLR_CO_NM\"				dataField=\"SPLR_CO_NM\"   				headerText=\"�ŷ�ó\"    		width=\"160\" 	visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"ITXP_REG_NCNT\"       	dataField=\"ITXP_REG_NCNT\"   			headerText=\"����ϰǼ�\"  	width=\"90\" 	visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"USE_SPLY_AMT\"       		dataField=\"USE_SPLY_AMT\"   			headerText=\"���ޱݾ�\"    		width=\"120\" 	visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"USE_VAT_AMT\"				dataField=\"USE_VAT_AMT\"   			headerText=\"�ΰ���ġ����\"    	width=\"120\"	visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"EMPTY1\"					dataField=\"EMPTY1\"   					headerText=\"�����Ϸù�ȣ\"    	width=\"170\" 	visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"EMPTY2\"					dataField=\"EMPTY2\"   					headerText=\"������������1\"    	width=\"140\" 	visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"EMPTY3\"					dataField=\"EMPTY3\"  					headerText=\"������������2\" 	width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"EMPTY4\"					dataField=\"EMPTY4\"  					headerText=\"������������3\"   	width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"REPR_DTLSITXP_CD\"     	dataField=\"REPR_DTLSITXP_CD\"  		headerText=\"��ǥ�����ڵ�\" 		width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"REPR_DTLSITXP_CD_NM\"  	dataField=\"REPR_DTLSITXP_CD_NM\"  		headerText=\"��ǥ����\" 			width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"REPR_SUB_DTLSITXP_CD\"    dataField=\"REPR_SUB_DTLSITXP_CD\"  	headerText=\"��ǥ�������ڵ�\" 	width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"REPR_SUB_DTLSITXP_CD_NM\" dataField=\"REPR_SUB_DTLSITXP_CD_NM\" 	headerText=\"��ǥ������\" 		width=\"140\" 	visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	</columns>\
	<footers>\
		<DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
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
            
            layerDetail(dataGrid,dataRow);            
        };
        

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);        
        gridRoot.addEventListener("layoutComplete", uf_Search);        

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
    //������ ����    
    var cnt = 0;
    function setGridData(){        
        try{            
            var gridValue = [];       
            
            
            //1. �ű԰���
            if("G00000000000001" == seqNo){

                
            //2. �������
            }else if("G00000000000002" == seqNo){

            	gridValue[cnt++] ={"TRSC_EVDC_DV":"","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","SPLR_CO_NM":"�� �� ��ü","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","EMPTY1":"","EMPTY2":"","EMPTY3":"","EMPTY4":"","REPR_DTLSITXP_CD":"","REPR_DTLSITXP_CD_NM":"","REPR_SUB_DTLSITXP_CD":"","REPR_SUB_DTLSITXP_CD_NM":""};
            	
            //3. �������(���� ������)
            }else if("G00000000000003" == seqNo){
                
            	gridValue[cnt++] ={"TRSC_EVDC_DV":"","TRSC_EVDC_DV_NM":"ī��","SPLR_CO_NM":"�� C������","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","EMPTY1":"","EMPTY2":"","EMPTY3":"","EMPTY4":"","REPR_DTLSITXP_CD":"","REPR_DTLSITXP_CD_NM":"","REPR_SUB_DTLSITXP_CD":"","REPR_SUB_DTLSITXP_CD_NM":""};

            //4. �������(���� ���� �Ϸ�)
            }else if("G00000000000004" == seqNo){

                gridValue[cnt++] ={"TRSC_EVDC_DV":"","TRSC_EVDC_DV_NM":"��Ÿ","SPLR_CO_NM":"�� RCMS","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","EMPTY1":"","EMPTY2":"","EMPTY3":"","EMPTY4":"","REPR_DTLSITXP_CD":"","REPR_DTLSITXP_CD_NM":"","REPR_SUB_DTLSITXP_CD":"","REPR_SUB_DTLSITXP_CD_NM":""};
                
            }
            
            
        }finally{
            gridData = gridValue;    //��ȸ��� JSON �� ��������
            rMateGridSetData();  //rMateGrid ����            
        }
    }

    function SetData(seqNo){
    	if(!seqNo) return false;
    	
        try{            
            document.body.style.cursor =    "wait";            
            setGridData(seqNo); //Insert    Grid
            document.body.style.cursor =    "auto";            
        }finally{
            reset_submit();
        }        
    }    
  
    /* ********************** 2014 �׸��� ��ü �۾� rMateGrid setting START *********************** */

</script>

</body>
</html>  