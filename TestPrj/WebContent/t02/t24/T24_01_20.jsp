<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T24_01_20.jsp
 *   Description        : �ΰ������� ��û �˾� (ī��)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014. 01. 15     				������        		
 *
 *  @author ������
 *  @Since  2014. 01. 15
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!-- //2014 �׸��� ��ü �۾� head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //2014 �׸��� ��ü �۾� head end -->


<%	
	String  INQ_STR_DT               =   SessionUtil.getRequestValue(request, "InqStrDt");               // ��ȸ���۳�¥
	String  INQ_END_DT               =   SessionUtil.getRequestValue(request, "InqEndDt");               // ��ȸ���ᳯ¥
	String  PayPlanDtlsRegNcnt       =   SessionUtil.getRequestValue(request, "PayPlanDtlsRegNcnt");     // �ΰ���������û�Ǽ�
	String  PlanAmt                  =   SessionUtil.getRequestValue(request, "PlanAmt");                // �ΰ���������û�ݾ�
	String  VrtlAcctNo               =   SessionUtil.getRequestValue(request, "VrtlAcctNo");             // ������¹�ȣ
	String  EXIST_VACC               =   SessionUtil.getRequestValue(request, "EXIST_VACC");             // ������¹߱�����
	String  BzExpExctnEvdcDv         =   SessionUtil.getRequestValue(request, "sel_BzExpExctnEvdcDv");   // ���������������
	
	String  mapKey                   =   SessionUtil.getRequestValue(request, "AUTO_MAP_KEY");           // 
	
	String  SetlScheDt              []      =   request.getParameterValues("SetlScheDt");       // ������������
	String  BuyDt                   []      =   request.getParameterValues("BuyDt");            // ��������   
	String  CrdNo                   []      =   request.getParameterValues("CrdNo");            // ī���ȣ        
	String  BuyClctNo               []      =   request.getParameterValues("BuyClctNo");        // �����߽ɹ�ȣ
	String  BuySum                  []      =   request.getParameterValues("BuyAmt");           // �����հ�
	String  UseSplyAmt              []      =   request.getParameterValues("UseSplyAmt");       // ���ް���
	String  UseVatAmt               []      =   request.getParameterValues("UseVatAmt");        // �ΰ���ġ����
	String  CanVatAmt               []      =   request.getParameterValues("UseVatAmt");        // �ΰ���ġ����
	String  ButrId                  []      =   request.getParameterValues("ButrId");           // ī����������Ϸù�ȣ
	    
	
	
	/************************************************/
	/*      ���� ���       START                       */
	/************************************************/
	String insertStr    =   "";
	if(SetlScheDt != null){
	    for(int i=0; i<SetlScheDt.length;i++){
	        insertStr   +=  "&SetlScheDt="          +   SetlScheDt  [i];    // ������������
	        insertStr   +=  "&BuyDt="               +   BuyDt       [i];    // ��������    
	        insertStr   +=  "&CrdNo="               +   CrdNo       [i];    // ī���ȣ        
	        insertStr   +=  "&BuyClctNo="           +   BuyClctNo   [i];    // �����߽ɹ�ȣ        
	        insertStr   +=  "&BuySum="              +   BuySum      [i];    // �����հ�        
	        insertStr   +=  "&UseSplyAmt="          +   UseSplyAmt  [i];    // ���ް���
	        insertStr   +=  "&CanVatAmt="           +   CanVatAmt   [i];    // ��ұݾ�
	        insertStr   +=  "&UseVatAmt="           +   UseVatAmt   [i];    // �ΰ���ġ����  
	        insertStr   +=  "&ButrId="              +   ButrId      [i];    // ī����������Ϸù�ȣ
	    }           
	    insertStr   +=  "&BzExpExctnEvdcDv="    +   BzExpExctnEvdcDv;   // ���������������        
	}
%>

    <!-- head title -->
    <div class="title">
        <p class="pop_title">�ΰ��� ������û</p>
    </div>
    <!-- //head title// --> 
    
     <div id="body">
         <form name="frm" method="post">
            <input type="hidden" name="PayPlanDtlsRegNcnt" value='<%=PayPlanDtlsRegNcnt %>'>       <!-- ���ΰ�ȹ�󼼵�ϰǼ�(�ΰ���������û�׸��) -->
            <input type="hidden" name="PlanAmt"            value='<%=PlanAmt %>'>                  <!-- ��ȹ�ݾ�(�ΰ��������ݾ��հ�) -->
            <input type="hidden" name="VrtlAcctNo"         value='<%=VrtlAcctNo %>'>               <!-- ������¹�ȣ -->
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <!-- �ΰ���������û ����Ʈ start -->
            <div class="t10 b25 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�����񺹿���û�� ��ȸ�Ⱓ,������¹�ȣ ���� ������ ǥ" class="tbl_type03">
                <caption>�ΰ���������û ����Ʈ</caption>
				<colgroup>
					<col width="20%" />
					<col width="30%" />
					<col width="20%" />
					<col width="30%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">��ȸ�Ⱓ</th>
						<th scope="row">������¹�ȣ</th>
						<th scope="row">������û�Ǽ�</th>
						<th scope="row">������û�ݾ�</th>
					</tr>
					<tr>
						<td class="ac"><%=INQ_STR_DT + "~" + INQ_END_DT%></td>
						<td class="ac">
						<%=VrtlAcctNo%>		
						</td>
						<td class="ac"><%=FormatUtil.getMoneyForm(PayPlanDtlsRegNcnt) %></td>
						<td class="ar"><%=FormatUtil.getMoneyForm(PlanAmt) %></td>
					</tr>
				</tbody>
				</table>
            </div>
            <!-- //�ΰ���������û ����Ʈ end// -->
 

			<!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->
			      
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



                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-1" title="����" onclick="uf_reqSave(); return false;"><span class="bt_sp">����</span></a>
                </div>
                <!-- //action bt end// --> 


     </div>
     <!-- //content end// -->
     </form>
	</div>
	
                

<!-- //2014 �׸��� ��ü �۾� footer start -->
<%@ include file="/inc/jspFooter_popup.jsp" %>
<!-- //2014 �׸��� ��ü �۾� footer end -->



<script type="text/javascript">
	
	/******************************************************************
	 * uf_reqSave       �ΰ���������û
	 * @param
	 * @return
	******************************************************************/	
	function uf_reqSave(){
	    var frm = document.frm;
	    var i   = 0;
	
	    if(frm.VrtlAcctNo.value == ""){
	        alert("�߱޵� ������°� �����ϴ�.\n�����ڿ��� �����Ͻñ� �ٶ��ϴ�.");
	        return false;
	    }
			
	    if(!confirm("�ΰ���������û �Ͻðڽ��ϱ�?")) {
	    	return;
	    }	           

        uf_proce_display_on();  //�ε���
        
        setTimeout(
                function(){
                        try{   
                            reset_submit(); // 'wait'
                            alert("�ΰ������� ��û�Ǿ����ϴ�.");  
                        }finally{
                            removeTempAttribute(document.frm);  //get2post ����
                            opener.fn_url("/t02/t21/T21_01_00.jsp?autosrch=Y&AUTO_MAP_KEY="+<%=mapKey%>);
                            window.close();
                        }
                    
                    }, 1000);   // 1���� ���� 1000 = 1��s		    
	}	
	
</script>


<script type="text/javascript">
    function SetData(){        
        uf_proce_display_on();  //�ε���
        setTimeout(function(){SetData();}, 1000);   // 1���� ���� 1000 = 1��s
    }
</script>

<script type="text/javascript">
function gridInit(){	
	SetData();
}

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
 <DataGrid id=\"grid1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
	 <columns>\
	 <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
	 <DataGridColumn id=\"SETL_SCHE_DT\"        dataField=\"SETL_SCHE_DT\"   headerText=\"��������\"       width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"BUY_DT\"              dataField=\"BUY_DT\"         headerText=\"��������\"       width=\"80\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"CRD_NO\"              dataField=\"CRD_NO\"         headerText=\"ī���ȣ\"       width=\"130\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"BUY_CLCT_NO\"         dataField=\"BUY_CLCT_NO\"    headerText=\"���Թ�ȣ\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"BUY_SUM\"             dataField=\"BUY_SUM\"        headerText=\"�����հ�\"       width=\"90\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	 <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"   headerText=\"���ޱݾ�\"       width=\"80\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	 <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"    headerText=\"�ΰ���ġ����\"   width=\"90\"  visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
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
            
            layerDetail(dataGrid,dataRow);            
        };
        

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", gridInit);
        
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
    function setGridData(){        
        try{            
            var gridValue = [];
            cnt = 0;
			<%for(int i=0; i<SetlScheDt.length; i++){%>            
	            gridValue[cnt++] =
	            {            	
	            	"SETL_SCHE_DT":"<%=StringUtil.null2void(FormatUtil.setDelim(SetlScheDt[i],"9999-99-99"))%>",
	            	"BUY_DT":"<%=StringUtil.null2void(FormatUtil.setDelim(BuyDt[i],"9999-99-99"))%>",
	            	"CRD_NO":"<%=StringUtil.null2void(FormatUtil.setDelim(CrdNo[i], "9999-9999-9999-9999"))%>",
	            	"BUY_CLCT_NO":"<%=StringUtil.null2void(BuyClctNo[i])%>",
	            	"BUY_SUM":"<%=StringUtil.null2void(FormatUtil.getMoneyForm(BuySum[i]))%>",
	            	"USE_SPLY_AMT":"<%=StringUtil.null2void(FormatUtil.getMoneyForm(UseSplyAmt[i]))%>",
	            	"USE_VAT_AMT":"<%=StringUtil.null2void(FormatUtil.getMoneyForm(UseVatAmt[i]))%>"
	            };
            <%}%>
            
        }finally{
            gridData = gridValue;    //��ȸ��� JSON �� ��������
            rMateGridSetData();  //rMateGrid ����            
        }
    }

    function SetData(){        
        try{            
            document.body.style.cursor =    "wait";            
            setGridData(); //Insert    Grid
            document.body.style.cursor =    "auto";            
        }finally{
            reset_submit();
        }        
    }    
  
    /* ********************** 2014 �׸��� ��ü �۾� rMateGrid setting START *********************** */

</script>
</body>
</html> 