<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T23_01_20.jsp
 *   Description        : �ΰ������� ��û �˾� (ī��)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014. 01. 16                   ������             
 *
 *  @author ������
 *  @Since  2014. 01. 16
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!-- //2014 �׸��� ��ü �۾� head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //2014 �׸��� ��ü �۾� head end -->

<%
String INQ_STR_DT           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqStrDt"));                 // ��ȸ���۳�¥
String INQ_END_DT           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqEndDt"));                 // ��ȸ���ᳯ¥
String PayPlanDtlsRegNcnt   =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PayPlanDtlsRegNcnt"));       // ī��ȯ�޺�����û�Ǽ�
String PlanAmt              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PlanAmt"));                  // ī��ȯ�޺�����û�ݾ�
String CanAmt               =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CanAmt"));                   // �κ���ұݾ�
String VrtlAcctNo           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "VrtlAcctNo"));               // ������¹�ȣ
String EXIST_VACC           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "EXIST_VACC"));               // ������¹߱�����
String RfndPsvApcDv         =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CanDvCd"));                  // ȯ�޺�����û����
String cancelDate           =   jex.util.DateTime.getInstance().getDate("yyyymmdd");
String mapKey               =   StringUtil.null2void(SessionUtil.getRequestValue(request, "AUTO_MAP_KEY"));
        
String CrdNo                [] = null;
String BuyClctNo            [] = null;
String BuyDt                [] = null;
String SetlScheDt           [] = null;
String RcmsSetlDt           [] = null;
String TrscPfmcRegDt        [] = null;
String ItxpRegNcnt          [] = null;
String SplrCoNm             [] = null;
String ClmTotlAmt           [] = null;
String TotlAmt              [] = null;
String RfndAmt              [] = null;
String StoffAmt             [] = null;
String UseSplyAmt           [] = null;
String UseVatAmt            [] = null;
String ButrId               [] = null;
String CrdcoCd              [] = null;
String CrdcoNm              [] = null;
String SplrBzRegNo          [] = null;
String CanSplyAmt           [] = null;
String CanVatAmt            [] = null;

String insertStr    =   "";
String totalAmt     =   "";

// ī���볻�� ��ü���
CrdNo                =      request.getParameterValues("CrdNo");                // ī���ȣ              
CrdcoCd              =      request.getParameterValues("CrdcoCd");              // ī����ڵ�          
CrdcoNm              =      request.getParameterValues("CrdcoNm");              // ī����          
ButrId               =      request.getParameterValues("ButrId");               // �������ŷ�����ID         
BuyClctNo            =      request.getParameterValues("BuyClctNo");            // �����߽ɹ�ȣ          
BuyDt                =      request.getParameterValues("BuyDt");                // ��������          
TrscPfmcRegDt        =      request.getParameterValues("TrscPfmcRegDt");        // �������          
ItxpRegNcnt          =      request.getParameterValues("ItxpRegNcnt");          // ����ϰǼ�              
SplrBzRegNo          =      request.getParameterValues("SplrBzRegNo");          // �������ڵ�Ϲ�ȣ            
SplrCoNm             =      request.getParameterValues("SplrCoNm");             // ������ȸ���                
UseSplyAmt           =      request.getParameterValues("UseSplyAmt");           // ���ޱݾ�              
UseVatAmt            =      request.getParameterValues("UseVatAmt");            // �ΰ���ġ����              
CanSplyAmt           =      request.getParameterValues("CanSplyAmt");           // ��Ұ��ޱݾ�              
CanVatAmt            =      request.getParameterValues("CanVatAmt");            // ��Һΰ���ġ����              

/************************************************/
/*      �����Ϸù�ȣ ���� ���        START           */
/************************************************/
 if(CrdNo != null){
    for(int i=0; i<CrdNo.length;i++){
        insertStr   +=      "&CrdNo="               +       CrdNo               [i];    // ī���ȣ               
        insertStr   +=      "&CrdcoCd="             +       CrdcoCd             [i];    // ī����ڵ�           
        insertStr   +=      "&CrdcoNm="             +       CrdcoNm             [i];    // ī����           
        insertStr   +=      "&ButrId="              +       ButrId              [i];    // �������ŷ�����ID               
        insertStr   +=      "&BuyClctNo="           +       BuyClctNo           [i];    // �����߽ɹ�ȣ           
        insertStr   +=      "&BuyDt="               +       BuyDt               [i];    // ���Խ�������           
        insertStr   +=      "&TrscPfmcRegDt="       +       TrscPfmcRegDt       [i];    // �����������           
        insertStr   +=      "&ItxpRegNcnt="         +       ItxpRegNcnt         [i];    // ����ϰǼ�           
        insertStr   +=      "&SplrBzRegNo="         +       SplrBzRegNo         [i];    // �������ڵ�Ϲ�ȣ               
        insertStr   +=      "&SplrCoNm="            +       SplrCoNm            [i];    // ������ȸ���                 
        insertStr   +=      "&UseSplyAmt="          +       UseSplyAmt          [i];    // �����ޱݾ�               
        insertStr   +=      "&UseVatAmt="           +       UseVatAmt           [i];    // ���ΰ���ġ����               
        insertStr   +=      "&CanSplyAmt="          +       CanSplyAmt          [i];    // ��Ұ��ޱݾ�               
        insertStr   +=      "&CanVatAmt="           +       CanVatAmt           [i];    // ��Һΰ���ġ����               
    }
    totalAmt = (Integer.parseInt(CanSplyAmt[0]) + Integer.parseInt(CanVatAmt[0])) + "";
}



 String AgrmtSeqNo           =   SessionUtil.getRequestValue(request, "AgrmtSeqNo");                            // �����Ϸù�ȣ
%>


<!-- ================== 2014 �׸��� ��ü �۾�======================== -->
<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var agrmtSeqNo = "<%=AgrmtSeqNo%>";
/* ********************** 2014 �׸��� ��ü �۾� rMateGrid setting START *********************** */

 //ī����� ������û ���
 var layoutStr1 = "\
 <?xml version=\"1.0\" encoding=\"utf-8\"?>\
 <rMateGrid>\
 <NumberFormatter id=\"numfmt\" />\
 <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
 <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
 <DataGrid id=\"grid1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
     <columns>\
         <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
         <DataGridColumn id=\"CRD_NO\"              dataField=\"CRD_NO\"        headerText=\"ī���ȣ\"         width=\"120\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"CANCEL_DATE\"         dataField=\"CANCEL_DATE\"   headerText=\"��ҳ����\"       width=\"80\"   visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"BUY_CLCT_NO\"         dataField=\"BUY_CLCT_NO\"   headerText=\"���Խ��ι�ȣ\"     width=\"140\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"CAN_SPLY_AMT\"        dataField=\"CAN_SPLY_AMT\"  headerText=\"��Ұ��ޱݾ�\"     width=\"120\"  visible=\"true\" textAlign=\"right\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"CAN_VAT_AMT\"         dataField=\"CAN_VAT_AMT\"   headerText=\"��Һΰ����ݾ�\"   width=\"120\"  visible=\"true\" textAlign=\"right\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"  headerText=\"�����ޱݾ�\"     width=\"120\"  visible=\"true\" textAlign=\"right\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"   headerText=\"���ΰ��ݾ�\"     width=\"120\"  visible=\"true\" textAlign=\"right\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"BUTR_ID\"             dataField=\"BUTR_ID\"       headerText=\"�������ŷ�����ID\"     width=\"140\"  visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
 
 var layoutStr2 = "\
     <?xml version=\"1.0\" encoding=\"utf-8\"?>\
     <rMateGrid>\
     <NumberFormatter id=\"numfmt\" />\
     <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
     <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
     <DataGrid id=\"grid2\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
     <columns>\
         <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
         <DataGridColumn id=\"DTLS_ITXP_NM\"            dataField=\"DTLS_ITXP_NM\"     headerText=\"�����\"           width=\"120\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"        dataField=\"SUB_DTLS_ITXP_CD\" headerText=\"�������ڵ�\"       width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"        dataField=\"SUB_DTLS_ITXP_NM\" headerText=\"�������\"         width=\"120\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"CASH_SPOT_DV\"            dataField=\"CASH_SPOT_DV\"     headerText=\"������������\"     width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"TRSC_EVDC_DV\"            dataField=\"TRSC_EVDC_DV\"     headerText=\"��������\"         width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\"  />\
         <DataGridColumn id=\"BUTR_ID\"                 dataField=\"BUTR_ID\"          headerText=\"�����Ϸù�ȣ\"     width=\"0\"    visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"VAT_PSV_APC_YN\"          dataField=\"VAT_PSV_APC_YN\"   headerText=\"�ΰ�����������\"   width=\"140\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"TRNS_AMT\"                dataField=\"TRNS_AMT\"         headerText=\"��ü�ݾ�\"        width=\"90\"   visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_SPLY_AMT\"            dataField=\"USE_SPLY_AMT\"     headerText=\"���ޱݾ�\"        width=\"90\"   visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_VAT_AMT\"             dataField=\"USE_VAT_AMT\"      headerText=\"�ΰ���ġ����\"    width=\"90\"   visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"DATA1\"                   dataField=\"DATA1\"            headerText=\"������\"          width=\"90\"   visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"DATA2\"                   dataField=\"DATA2\"            headerText=\"����ݾ�\"        width=\"90\"   visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     </columns>\
     <footers>\
     <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn />\
         <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"     formatter=\"{numfmt}\" textAlign=\"right\" />\
         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
         <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
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
 
    //rMateGrid�� bridge ���� �ٸ��� �־� �ڹٽ�ũ��Ʈ���� ������ �� �ֵ��� �մϴ�.
    var flashVars1 = "dataType=json&bridgeName=gridBridge1";
    var flashVars2 = "dataType=json&bridgeName=gridBridge2";
    //rMateGrid ���� ��ü
    var gridApp1; // �÷��� �⺻ ��ü
    var gridApp2; // �÷��� �⺻ ��ü
    var gridData1; // �׸��� ������ ���
    var gridData2; // �׸��� ������ ���
    var gridRoot1; // ����Ÿ�� �׸��带 �����ϴ� ��ü
    var gridRoot2; // ����Ÿ�� �׸��带 �����ϴ� ��ü
    var dataGrid1; // �׸��� ���� ���
    var dataGrid2; // �׸��� ���� ���

    //�׸��� ���̾ƿ� ȣ�� 
    var rMateGridInitLayout = function() {
        gridApp1 = FABridge.gridBridge1.root();
        gridRoot1 = gridApp1.getGridRoot();
        gridApp1.setLayout(layoutStr1);   //�׸��� ���̾ƿ� ����
        
        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot1.getItemAt(rowIndex);

            var columns = dataGrid1.getColumns();
            var ii = 0;
            var jj = 0;
            for ( var i = 0; i < columns.length; i++){
                if (columns[i].getVisible()) {              
                    jj++;
                    if (jj == columnIndex){
                        break;
                    }
                } else{
                    ii++;
                }
            }
            columnIndex = columnIndex + ii;
            var column = columns[columnIndex];
            var dataField = column.getDataField();   
            
            //������2 ����
            uf_BuyByItxpPtcl();
                                     
        };        

        //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot1.getItemAt(rowIndex);
            var column = dataGrid1.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid1,dataRow);            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid1 = gridApp1.getDataGrid();
            
            //�̺�Ʈ ���
            dataGrid1.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid1.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ
        };
      
        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot1.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot1.addEventListener("layoutComplete", uf_search);
    };
    
    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge1", rMateGridInitLayout);
    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData1() {
        gridApp1 = FABridge.gridBridge1.root();
        gridApp1.setData(JSON.stringify(gridData1)); //������ ���
    };
    

    //=====================
    //�׸��� ���̾ƿ� ȣ�� 
    var rMateGridInitLayout2 = function() {
      gridApp2 = FABridge.gridBridge2.root();
      gridRoot2 = gridApp2.getGridRoot();
      gridApp2.setLayout(layoutStr2); //�׸��� ���̾ƿ� ����
      
      //�׸��� �̺�Ʈ ���
      var layoutCompleteHandler = function(event) {
          dataGrid2 = gridApp2.getDataGrid();
      };
    
      //layout ��� �� ����� �̺�Ʈ ���
      gridRoot2.addEventListener("layoutComplete", layoutCompleteHandler);

    };
    
    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge2", rMateGridInitLayout2);
    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData2() {
      gridApp2 = FABridge.gridBridge2.root();  
      gridApp2.setData(JSON.stringify(gridData2)); //������ ���
    };
    
    
    //========================
    function SetData(){        
        try{            
            document.body.style.cursor =    "wait";            
            setGridData(); //Insert    Grid
            document.body.style.cursor =    "auto";            
        }finally{
            reset_submit();
        }        
    }  
    
    function SetData2(seqNo){
        if(!seqNo) return false;
        
        try{            
            document.body.style.cursor =    "wait";            
            setGridData2(seqNo); //Insert    Grid
            document.body.style.cursor =    "auto";            
        }finally{
            reset_submit();
        }        
    }      
    /* ********************** 2014 �׸��� ��ü �۾� rMateGrid setting START *********************** */



</script>     
<!-- ================== 2014 �׸��� ��ü �۾�======================== -->
<!-- **********************  rMateGrid setting START ***********************  -->
    <!-- head title -->
    <div class="title">
        <p class="pop_title">ī����� ������û(������[RCMS])</p>
    </div>
    <!-- //head title// -->
     <div id="body">
        <div id="content">
        <form name="frm1" method="post">
        <input type="hidden" name="PrsPgno" value="0" /> <!--������������ȣ-->
        <input type="hidden" name="TrSupYn" value="Y" /> <!--�ŷ���ӿ���-->
        </form>
              <div class="t20"></div>
              <div id="can" style="display:inline;">
     
         <form name="frm" method="post">
            <input type="hidden" name="PayPlanDtlsRegNcnt" value='<%=PayPlanDtlsRegNcnt %>'>       <!-- ���ΰ�ȹ�󼼵�ϰǼ�(�ΰ���������û�׸��) -->
            <input type="hidden" name="PlanAmt"            value='<%=PlanAmt %>'>                  <!-- ��ȹ�ݾ�(�ΰ��������ݾ��հ�) -->
            <input type="hidden" name="VrtlAcctNo"         value='<%=VrtlAcctNo %>'>               <!-- ������¹�ȣ -->
        <!-- content start -->
            <div class="t20"></div>
            <!-- ��������Ȳ ����ȸ ����Ʈ start -->
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
            <!-- //��볻�� ����ȸ ����Ʈ end// -->

            <!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->
             <div class="t10"></div>
             <!-- �׸��� Start -->
             <h3>ī����� ������û ���</h3>
             <div class="t10">
                 <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars1, "100%", "150", "#FFFFFF", "transparent");
                 </script>
             </div>
             <!-- �׸��� End -->
            <!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->

               
            <!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->
            <!-- �׸��� Start -->
            <div class="t10"></div>
            <h3>��볻�� ����ȸ</h3>
            <div class="t10">
                <script>
                    rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars2, "100%", "130", "#FFFFFF", "transparent");
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
                      <a href="#" class="bt_action2-1" title="��û" onclick="uf_CrdRfndPsv(); return false;"><span class="bt_sp">��û</span></a>
               </div>
               <!-- //action bt end// --> 

     </form>
     </div>
     </div>     
     <!-- //content end// -->
</div>
                

<!-- //2014 �׸��� ��ü �۾� footer start -->
<%@ include file="/inc/jspFooter_popup.jsp" %>
<!-- //2014 �׸��� ��ü �۾� footer end -->


<script type="text/javascript">
    /******************************************************************
     * uf_SearchDv      ī���볻��-���Ժ���񳻿�
     * @param
     * @return
    ******************************************************************/
    function uf_BuyByItxpPtcl(){
    
        //�������ʱ�ȭ
        gridData2 = null;
        //�׸��� �ʱ�ȭ
        rMateGridLayoutInit_rMate(gridRoot2, gridApp2, layoutStr2);
        
        //������2����
        uf_proce_display_on();  //�ε���
        
        setTimeout(function(){SetData2(agrmtSeqNo);}, 1000);   // 1���� ���� 1000 = 1��s    
    }

    
    /******************************************************************
     * uf_reqSave       �ΰ���������û
     * @param
     * @return
    ******************************************************************/ 
    function uf_CrdRfndPsv(){
        
        var frm = document.frm;
    
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
        
        if(!confirm("������û ó���Ͻðڽ��ϱ�?")) {
            return;
        }
        
        get2post(frm,"<%=insertStr%>");
        get2post(frm,"AUTO_MAP_KEY=<%=mapKey%>");
        
        uf_proce_display_on();  //�ε���

        setTimeout(
                function(){
                        try{   
                            reset_submit(); // 'wait'
                            alert("ī��������� ��û�Ǿ����ϴ�.");
                        }finally{
                            removeTempAttribute(document.frm);  //get2post ����
                            opener.fn_url("/t02/t21/T21_01_00.jsp?autosrch=Y&AUTO_MAP_KEY="+<%=mapKey%>);
                            window.close();
                        }
                    
                    }, 1000);   // 1���� ���� 1000 = 1��s
                    
    }

</script>


<script type="text/javascript">
    function uf_search(){        
        uf_proce_display_on();  //�ε���
        setTimeout(function(){SetData();}, 1000);   // 1���� ���� 1000 = 1��s
    }
</script>

    
<script type="text/javascript">
    //������ ����    
    var cnt1 = 0;
    function setGridData(){    
        try{            
            var gridValue1 = [];    
            cnt1 = 0;     
            
            <%for(int i=0; i<CanVatAmt.length;i++){%>
                gridValue1[cnt1++] = 
                    {               
                        "CAN_VAT_AMT":"<%=FormatUtil.getMoneyForm(StringUtil.null2void(CanVatAmt[i]))%>",
                        "CRD_NO":"<%=StringUtil.null2void(CrdNo[i])%>",
                        "USE_VAT_AMT":"<%=StringUtil.null2void(FormatUtil.getMoneyForm(UseVatAmt[i]))%>",
                        "BUY_CLCT_NO":"<%=StringUtil.null2void(BuyClctNo[i])%>",
                        "BUTR_ID":"<%=StringUtil.null2void(ButrId[i])%>",
                        "CAN_SPLY_AMT":"<%=FormatUtil.getMoneyForm(StringUtil.null2void(CanSplyAmt[i]))%>",
                        "CANCEL_DATE":"<%=FormatUtil.setDelim(cancelDate,"9999-99-99")%>",
                        "USE_SPLY_AMT":"<%=FormatUtil.getMoneyForm(StringUtil.null2void(UseSplyAmt[i]))%>"
                    };              
            <%}%>
        }finally{                    
            gridData1 = gridValue1;        
            rMateGridSetData1();
        }
    }
    
    //������ ����2    
    var cnt2 = 0;
    function setGridData2(seqNo){    
        try{            
            var gridValue2 = [];    
            cnt2 = 0;
            
//          gridValue2[cnt2++] = {"SUB_DTLS_ITXP_NM":"��ǰ���Ժ�","SUB_DTLS_ITXP_CD":"B0202013","VAT_PSV_APC_YN":"�̽�û","USE_VAT_AMT":"3159","CASH_SPOT_DV":"0","BUTR_ID":"C201111212383103","TRNS_AMT":"34750","TRSC_EVDC_DV":"C","RTRT_FIX_VAT_AMT":"0","RTRT_FIX_SPLY_AMT":"0","USE_SPLY_AMT":"31591","DTLS_ITXP_NM":"����Ȱ����"};

            //1. �ű԰���
            if("G00000000000001" == seqNo){

                
            //2. �������
            }else if("G00000000000002" == seqNo){

                gridValue2[cnt2++] = {"DTLS_ITXP_NM":"����Ȱ����","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"���̳����ֺ�","CASH_SPOT_DV":"0","TRSC_EVDC_DV":"C","BUTR_ID":"C201111212383103","VAT_PSV_APC_YN":"�̽�û","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","DATA1":"0","DATA2":"0"};
                
            //3. �������(���� ������)
            }else if("G00000000000003" == seqNo){
                
                gridValue2[cnt2++] = {"DTLS_ITXP_NM":"����Ȱ����","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"�����Ʒú�","CASH_SPOT_DV":"0","TRSC_EVDC_DV":"C","BUTR_ID":"C201111212383103","VAT_PSV_APC_YN":"�̽�û","TRNS_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","DATA1":"0","DATA2":"0"};

            //4. �������(���� ���� �Ϸ�)
            }else if("G00000000000004" == seqNo){

                
            }
            
        }finally{                    
            gridData2 = gridValue2;        
            rMateGridSetData2();
        }
    }
    
    $(document).ready(function() {
        /* ********** 2014 �׸��� ��ü �۾� rMateGrid �ʱ�ȭ  ********** */
        rMateGridInit();    
        /* ********** 2014 �׸��� ��ü �۾� rMateGrid �ʱ�ȭ  ********** */
    });

</script>
</body>
</html> 