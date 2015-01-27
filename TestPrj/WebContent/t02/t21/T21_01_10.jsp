<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T21_01_10.jsp
 *   Description        : ��û��Ȳ ����ȸ
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
    String RegDt            =       StringUtil.null2void(SessionUtil.getRequestValue(request,"RegDt"));             // �������
    String RegDrtm          =       StringUtil.null2void(SessionUtil.getRequestValue(request,"RegDrtm"));           // ��Ͻð�
    String IssuAcctNo       =       StringUtil.null2void(SessionUtil.getRequestValue(request,"IssuAcctNo"));        // �߱ް��¹�ȣ
    String IssuBnk          =       StringUtil.null2void(SessionUtil.getRequestValue(request,"IssuBnk"));           // �߱�����
    String Dv               =       StringUtil.null2void(SessionUtil.getRequestValue(request,"Dv"));                // ��û�����ڵ� (A:�ΰ��δ��, B:������, C:������, D:�ΰ���������,E:ī��ȯ��)
    
    String AgrmtSeqNo       =       StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));
%>

    <!-- head title -->
    <div class="title">
        <p class="pop_title">��û��Ȳ ����ȸ</p>
    </div>
    <!-- //head title// -->

    <div id="body">
        <form action="">
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>����ȸ</h3>
            <!-- ��������Ȳ ����ȸ ����Ʈ start -->
            <div class="t10 b25 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="��û��Ȳ ����ȸ ����Ʈ" class="tbl_type02">
                <caption>��û��Ȳ ����ȸ ����Ʈ</caption>
	<colgroup>
		<col width="20%" />
		<col width="80%" />
	</colgroup>
	<tbody>
		<tr>
			<th scope="col">��û����</th>
			<td class="ll"><%=FormatUtil.setDelim(RegDt,"9999-99-99") %></td>
		</tr>
		<tr>
		
			<th scope="col">��û����</th>
			<td class="ll"><%=CodeUtil.getCode("RND038",StringUtil.null2void(Dv)) %></td>
		</tr>
		<tr>
			<th scope="col">�߱ް��¹�ȣ</th>
			<td class="ll">[<%=IssuBnk%>] <%=IssuAcctNo %></td>
		</tr>
	</tbody>
	</table>
            </div>
            <!-- //��û��Ȳ ����ȸ ����Ʈ end// -->

			<!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->
		    <div class="ar">
		      <p class="fl t05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> ��]</p>
		      <p class="ar b05">
		          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�"/></a>
		          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="����"/></a>
		      </p>
		      <p class="cb"></p>
		    </div>
		      
		     <!-- �׸��� Start -->
		     <div>
		         <script>
		         rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "226", "#FFFFFF", "transparent");
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
    var agrmtSeqNo = "<%=AgrmtSeqNo%>";

    function uf_search(){        
        uf_proce_display_on();  //�ε���
        setTimeout(function(){SetData(agrmtSeqNo);}, 1000);   // 1���� ���� 1000 = 1��s
    }
</script>

<script type="text/javascript">

$(document).ready(function() {
	/* ********** 2014 �׸��� ��ü �۾� rMateGrid �ʱ�ȭ  ********** */
    rMateGridInit();
    uf_search();
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
         <DataGridColumn id=\"EXCTN_REG_DT\"			dataField=\"EXCTN_REG_DT\"   		headerText=\"���������\"		width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"EXCTN_EXEC_DT\"			dataField=\"EXCTN_EXEC_DT\"  		headerText=\"�������Ͻ�\"  	width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"DTLS_ITXP_NM\"			dataField=\"DTLS_ITXP_NM\"   		headerText=\"�����\"    	   	width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"    	dataField=\"SUB_DTLS_ITXP_NM\"  	headerText=\"�������\"    		width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"PLAN_AMT\"       			dataField=\"PLAN_AMT\"   			headerText=\"��û�ݾ�\"    		width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"SPLY_AMT\"				dataField=\"SPLY_AMT\"   			headerText=\"���ޱݾ�\"    		width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"VAT_AMT\"					dataField=\"VAT_AMT\"   			headerText=\"�ΰ���ġ����\"    	width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"COMM\"					dataField=\"COMM\"   				headerText=\"�����/������\"    	width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"BZ_EXP_EXCTN_EVDC_DV\"	dataField=\"BZ_EXP_EXCTN_EVDC_DV\"  headerText=\"��������\" 			width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"EVDC_SEQ_NO\"				dataField=\"EVDC_SEQ_NO\"  			headerText=\"�����Ϸù�ȣ\" 		width=\"120\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"EVDC_REFN_DV1\"			dataField=\"EVDC_REFN_DV1\"  		headerText=\"ī���ȣ\"   		width=\"130\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"EVDC_REFN_DV2\"      		dataField=\"EVDC_REFN_DV2\"  		headerText=\"���Խ��ι�ȣ\" 		width=\"140\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"RCV_BNK_CD\"      		dataField=\"RCV_BNK_CD\"  			headerText=\"�Ա�����\" 			width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"RCV_ACCT_NO\"      		dataField=\"RCV_ACCT_NO\"  			headerText=\"�Աݰ���\" 			width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"OWAC_NM\"      			dataField=\"OWAC_NM\"  				headerText=\"�����ָ�\" 			width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
     </columns>\
     <footers>\
     	<DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
	         <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{PLAN_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
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
                
        //data ��� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("dataComplete", setTotCnt);

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
    //��Ż �� ���ϱ�
    function setTotCnt() {
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            return;
        };

        var clen = collection.getLength();
        $("#InqPrsTotlNcnt").text(clen);    //�׸��� �ڷ��                
    }
    
    //������ ����    
    var cnt = 0;
    function setGridData(seqNo){        
        try{            
            var gridValue = [];      

            //1. �ű԰���
            if("G00000000000001" == seqNo){

            	
            //2. �������
            }else if("G00000000000002" == seqNo){

            	gridValue[cnt++] = {"EXCTN_REG_DT":"2014-03-07","EXCTN_EXEC_DT":"2014-03-07 12:27:13","DTLS_ITXP_NM":"�����ü������ �� ����","SUB_DTLS_ITXP_NM":"�����","PLAN_AMT":"1100","SPLY_AMT":"1000","VAT_AMT":"100","COMM":"0","BZ_EXP_EXCTN_EVDC_DV":"���ڼ��ݰ�꼭","EVDC_SEQ_NO":"","EVDC_REFN_DV1":"","EVDC_REFN_DV2":"","RCV_BNK_CD":"E ����","RCV_ACCT_NO":"555-55-555555-0","OWAC_NM":"�� �� ��ü"};
            	
            //3. �������(���� ������)
            }else if("G00000000000003" == seqNo){
            	
            	gridValue[cnt++] = {"EXCTN_REG_DT":"2013-09-30","EXCTN_EXEC_DT":"2013-09-30 00:00:00","DTLS_ITXP_NM":"����Ȱ����","SUB_DTLS_ITXP_NM":"�����","PLAN_AMT":"10000","SPLY_AMT":"10000","VAT_AMT":"0","COMM":"0","BZ_EXP_EXCTN_EVDC_DV":"��Ÿ����","EVDC_SEQ_NO":"","EVDC_REFN_DV1":"","EVDC_REFN_DV2":"","RCV_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","OWAC_NM":"�� RCMS"};

            //4. �������(���� ���� �Ϸ�)
            }else if("G00000000000004" == seqNo){

            	gridValue[cnt++] = {"EXCTN_REG_DT":"2013-10-29","EXCTN_EXEC_DT":"2013-10-29 13:12:08","DTLS_ITXP_NM":"�����ü������ �� ����","SUB_DTLS_ITXP_NM":"�����","PLAN_AMT":"520","SPLY_AMT":"5200","VAT_AMT":"520","COMM":"1520","BZ_EXP_EXCTN_EVDC_DV":"���ڼ��ݰ�꼭","EVDC_SEQ_NO":"","EVDC_REFN_DV1":"","EVDC_REFN_DV2":"","RCV_BNK_CD":"F ����","RCV_ACCT_NO":"999-99-999999-0","OWAC_NM":"�� �� ��ü"};
            	
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