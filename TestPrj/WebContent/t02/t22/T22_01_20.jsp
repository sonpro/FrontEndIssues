<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T22_01_20.jsp 
 *   Description        : ��������ü��ҿ�û �˾�
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
    String  INQ_STR_DT              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqStrDt"));             // ��ȸ���۳�¥
    String  INQ_END_DT              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqEndDt"));             // ��ȸ���ᳯ¥
    String  PayPlanDtlsRegNcnt      =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PayPlanDtlsRegNcnt"));   // ����������û�Ǽ�
    String  PlanAmt                 =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PlanAmt"));              // ����������û�ݾ�
    String  VrtlAcctNo              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "VrtlAcctNo"));           // ������¹�ȣ
    String  EXIST_VACC              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "EXIST_VACC"));           // ������¹߱�����
    
    String  mapKey                  =   StringUtil.null2void(SessionUtil.getRequestValue(request, "AUTO_MAP_KEY"));
    
    String  ButrId                  []      =   request.getParameterValues("ButrId");                   // �������ŷ�����ID
    String  ExctnStgDv              []      =   request.getParameterValues("ExctnStgDv");               // ����ܰ豸��    
    String  ExctnExecDt             []      =   request.getParameterValues("ExctnExecDt");              // ����������
    String  ExctnExecTm             []      =   request.getParameterValues("ExctnExecTm");              // ������ð�
    String  TrscPfmcSt              []      =   request.getParameterValues("TrscPfmcSt");               // �ŷ���������  
    String  TrscEvdcDv              []      =   request.getParameterValues("TrscEvdcDv");               // �ŷ���������  
    String  ItxpRegNcnt             []      =   request.getParameterValues("ItxpRegNcnt");              // ����ϰǼ�        
    String  RcvBnkNm                []      =   request.getParameterValues("RcvBnkNm");                 // �Ա������          
    String  RcvAcctBnkCd            []      =   request.getParameterValues("RcvAcctBnkCd");             // �Ա������ڵ�        
    String  RcvAcctNo               []      =   request.getParameterValues("RcvAcctNo");                // �Աݰ��¹�ȣ        
    String  RcvAcctOwacNm           []      =   request.getParameterValues("RcvAcctOwacNm");            // �����ָ�            
    String  ExctnAmt                []      =   request.getParameterValues("ExctnAmt");                 // ����ݾ�            
    String  UseSplyAmt              []      =   request.getParameterValues("UseSplyAmt");               // ���ޱݾ�            
    String  UseVatAmt               []      =   request.getParameterValues("UseVatAmt");                // �ΰ���ġ����        
    String  RtrtFixAmt              []      =   request.getParameterValues("RtrtFixAmt");               // ȯ��Ȯ���ݾ�            
    String  RtrtFixSplyAmt          []      =   request.getParameterValues("RtrtFixSplyAmt");           // ȯ��Ȯ�����ޱݾ�            
    String  RtrtFixVatAmt           []      =   request.getParameterValues("RtrtFixVatAmt");            // ȯ��Ȯ���ΰ����ݾ�            
    String  VatProcRtrtAmt          []      =   request.getParameterValues("VatProcRtrtAmt");           // �ΰ���ó���ݾ�     
     
  
    /************************************************/
    /*      ��볻�� ���� ���      START           */
    /************************************************/    
    
    String insertStr    =   "";
    if(ButrId != null){
        for(int i=0; i<ButrId.length;i++){
            insertStr   +=  "&ButrId="                      +   ButrId                  [i];        // �����Ϸù�ȣ
            insertStr   +=  "&ExctnStgDv="                  +   ExctnStgDv              [i];        // �����������ڵ�    
            insertStr   +=  "&ExctnExecDt="                 +   ExctnExecDt             [i];        // ����������        
            insertStr   +=  "&ExctnExecTm="                 +   ExctnExecTm             [i];        // ������ð�
            insertStr   +=  "&TrscPfmcSt="                  +   TrscPfmcSt              [i];        // �������ó������  
            insertStr   +=  "&TrscEvdcDv="                  +   TrscEvdcDv              [i];        // ���������������
            insertStr   +=  "&ItxpRegNcnt="                 +   ItxpRegNcnt             [i];        // ����ϰǼ�        
            insertStr   +=  "&RcvBnkNm="                    +   RcvBnkNm                [i];        // �Ա������          
            insertStr   +=  "&RcvAcctBnkCd="                +   RcvAcctBnkCd            [i];        // �Ա������ڵ�        
            insertStr   +=  "&RcvAcctNo="                   +   RcvAcctNo               [i];        // �Աݰ��¹�ȣ        
            insertStr   +=  "&RcvAcctOwacNm="               +   RcvAcctOwacNm           [i];        // �����ָ�            
            insertStr   +=  "&ExctnAmt="                    +   ExctnAmt                [i];        // ��ü�ݾ�            
            insertStr   +=  "&UseSplyAmt="                  +   UseSplyAmt              [i];        // ���ޱݾ�            
            insertStr   +=  "&UseVatAmt="                   +   UseVatAmt               [i];        // �ΰ���ġ����        
        }   
    }

%>

<%-- 
<%@ include file="/jsp/inc/header_popup.jsp" %>
--%>

 
	    <!-- head title -->
	    <div class="title">
	        <p class="pop_title">��������ü��� ��û</p>
	    </div>
	    <!-- //head title// --> 
	

        <div id="body">
            <form name="frm" method="post">
            <input type="hidden" name="PayPlanDtlsRegNcnt"  value='<%=PayPlanDtlsRegNcnt %>'>            <!-- ���ΰ�ȹ�󼼵�ϰǼ�(����������û�׸��) -->
            <input type="hidden" name="PlanAmt"             value='<%=PlanAmt %>'>                       <!-- ��ȹ�ݾ�(���������ݾ��հ�) -->
            <input type="hidden" name="VrtlAcctNo"          value='<%=VrtlAcctNo %>'>                    <!-- ������¹�ȣ -->
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>��������ü��ҿ�û</h3>
                <!-- ��������ü��ҿ�û ����Ʈ start -->
                <div class="t10 b25 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="��������ü��ҿ�û ����Ʈ" class="tbl_type03">
                    <caption>��������ü��ҿ�û ����Ʈ</caption>
					<colgroup>
						<col width="25%" />
						<col width="25%" />
						<col width="25%" />
						<col width="25%" />
					</colgroup>
					<thead>
					<tr>
						<th scope="col">��ȸ�Ⱓ</th>
						<th scope="col">������¹�ȣ</th>
						<th scope="col">������û�Ǽ�</th>
						<th scope="col">������û�ݾ�</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="ac"><%=INQ_STR_DT+" ~ " +INQ_END_DT%></td>
						<td class="ac">
						<%=VrtlAcctNo%>
						</td>
						<td class="ac"><%=FormatUtil.getMoneyForm(PayPlanDtlsRegNcnt)%></td>
						<td class="ar"><%=FormatUtil.getMoneyForm(PlanAmt) %></td>
					</tr>
					</tbody>
					</table>
                </div>
                <!-- //��������ü��ҿ�û ����Ʈ end// -->
               
				<!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->					      
			     <!-- �׸��� Start -->
			     <div>
			         <script>
			         rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "226", "#FFFFFF", "transparent");
			         </script>
			     </div>
			     <!-- �׸��� End -->
				<!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->                
                
                <!-- ��һ��� ����Ʈ start -->
                <div class="t10 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="��һ��� ����Ʈ" class="tbl_type02">
                    <caption>��һ��� ����Ʈ</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row"><label for="ApcRsn">��һ���</label></th>
                        <td class="ll"><input type="text" name="ApcRsn" id="ApcRsn" title="��һ����Է�" class="inputl" style="width:550px;" /></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //��һ��� ����Ʈ end// -->                
                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-1" title="����" onclick="uf_save(); return false;"><span class="bt_sp">����</span></a>
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
	 * uf_save      ��������ü��ҿ�û
	 * @param
	 * @return
	******************************************************************/
	function uf_save(){
	    
	    var frm = document.frm;
	    var i   = 0;
	
	    if(frm.VrtlAcctNo.value == ""){
	        alert("�߱޵� ������°� �����ϴ�.\n�����ڿ��� �����Ͻñ� �ٶ��ϴ�.");
	        return false;
	    }
	    
	    // �ܰ��̸鼭 1õ���� �̻�.
	    if(frm.PayPlanDtlsRegNcnt.value == "1") {
		    if(Number(frm.PlanAmt.value) >= 10000000 && frm.ApcRsn.value == "") {
		    	alert("1õ���� �̻� ��ü��� �� ��һ����� �Է��Ͻñ� �ٶ��ϴ�.");
		    	return;
		    }
	    }
	    
	    if(!confirm("��ü��ҿ�û �Ͻðڽ��ϱ�?")) {
	        return;
	    }

	    uf_proce_display_on();  //�ε���

	    setTimeout(
	            function(){
	                    try{   
	                    	reset_submit(); // 'wait'
	                    	alert("��������ü��� ��û�Ǿ����ϴ�.");
	                    }finally{
	                    	removeTempAttribute(document.frm);  //get2post ����
	                    	opener.fn_url("/t02/t21/T21_01_00.jsp?autosrch=Y&AUTO_MAP_KEY="+<%=mapKey%>);
	                    	window.close();
	                    }
	                
	                }, 1000);   // 1���� ���� 1000 = 1��s
	                
 		
	    
	}	
</script>

<script type="text/javascript">

/* ********** 2014 �׸��� ��ü �۾� ���۽� ������ ����  ********** */
function uf_search(){	
    uf_proce_display_on();  //�ε���    
    setTimeout(function(){SetData1();}, 1000);   // 1���� ���� 1000 = 1��s
}
/* ********** 2014 �׸��� ��ü �۾� ���۽� ������ ����  ********** */
 
$(document).ready( function () {	
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
	 <DataGridColumn id=\"EXCTN_EXEC_DT\"		dataField=\"EXCTN_EXEC_DT\"		headerText=\"��������\"			width=\"80\"	visible=\"true\"	textAlign=\"center\"	headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"TRSC_EVDC_DV\"		dataField=\"TRSC_EVDC_DV\"		headerText=\"��������\"			width=\"100\"	visible=\"true\"	textAlign=\"center\"	headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"RCV_BNK_NM\"			dataField=\"RCV_BNK_NM\"		headerText=\"�Ա�����\"			width=\"110\"	visible=\"true\"	textAlign=\"center\"	headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"RCV_ACCT_NO\"			dataField=\"RCV_ACCT_NO\"		headerText=\"�Աݰ��¹�ȣ\"		width=\"110\"	visible=\"true\"	textAlign=\"center\"	headerStyleName=\"gridHeaderStyle\" />\
	 <DataGridColumn id=\"EXCTN_AMT\"			dataField=\"EXCTN_AMT\"			headerText=\"��ü�ݾ�\"			width=\"80\"	visible=\"true\"	textAlign=\"right\"		headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"USE_SPLY_AMT\"		dataField=\"USE_SPLY_AMT\"		headerText=\"���ޱݾ�\"			width=\"80\"	visible=\"true\"	textAlign=\"right\"		headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"USE_VAT_AMT\"			dataField=\"USE_VAT_AMT\"		headerText=\"�ΰ���ġ����\"		width=\"85\"	visible=\"true\"	textAlign=\"right\"		headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"RTRT_FIX_AMT\"		dataField=\"RTRT_FIX_AMT\"		headerText=\"�����ݾ�\"			width=\"100\"	visible=\"true\"	textAlign=\"right\"		headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	 <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"	dataField=\"VAT_PROC_RTRT_AMT\"	headerText=\"�����ΰ���ġ����\"	width=\"110\"	visible=\"true\"	textAlign=\"right\"		headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	</columns>\
	<footers>\
		<DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
	     	 <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_PROC_RTRT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
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
        //gridRoot.addEventListener("layoutComplete", gridInit);

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);
        
    //�ε� �� rMadeGrid ���
    function rMateGridOnLoad() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
    //������ ����    
    var cnt = 0;
    function setGridData(){        
        try{            
            var gridValue = [];       
            cnt = 0;  
            <%for(int i=0; i<ExctnExecDt.length;i++){%>	       
	            gridValue[cnt++] =
	            {
	           		"EXCTN_EXEC_DT":"<%=StringUtil.null2void(FormatUtil.setDelim(ExctnExecDt[i], "9999-99-99"))%>",
	           		"TRSC_EVDC_DV":"<%=StringUtil.null2void(CodeUtil.getCode("RND080",TrscEvdcDv[i]))%>",
	           		"RCV_BNK_NM":"<%=StringUtil.null2void(RcvBnkNm[i])%>",
	           		"RCV_ACCT_NO":"<%=StringUtil.null2void(AcctFormatUtil.getAcctForm(RcvAcctNo[i], RcvAcctBnkCd[i]))%>",
	           		"EXCTN_AMT":"<%=StringUtil.null2void(ExctnAmt[i])%>",
	           		"USE_SPLY_AMT":"<%=StringUtil.null2void(UseSplyAmt[i])%>",
	           		"USE_VAT_AMT":"<%=StringUtil.null2void(UseVatAmt[i])%>",
	           		"RTRT_FIX_AMT":"<%=StringUtil.null2void(RtrtFixAmt[i])%>",
	           		"VAT_PROC_RTRT_AMT":"<%=StringUtil.null2void(VatProcRtrtAmt[i])%>"     	           		
				};       
            <%}%>
             
        }finally{                        
            gridData = gridValue;    //��ȸ��� JSON �� ��������
            rMateGridOnLoad();  //rMateGrid ����            
        }
    }

    function SetData1(){        
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
 