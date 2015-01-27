<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T33_01_30.jsp
 *   Description        : �̿��ݻ����
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.17                     ������             
 *
 *  @author     ������
 *  @Since      2014.01.17
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
    String SbjtNm       = SessionUtil.getRequestValue(request, "SbjtNm");
    String BzClasNm     = SessionUtil.getRequestValue(request, "BzClasNm");
    String AgrmtSeqNo   = SessionUtil.getRequestValue(request, "AgrmtSeqNo");
    String AgrmtInstId  = SessionUtil.getRequestValue(request, "AgrmtInstId");
    String SacPrgrSt    = StringUtil.null2void(SessionUtil.getRequestValue(request, "SacPrgrSt")); 
%>

<title>�̿��ݻ���� &gt; RCMS �ǽð����տ���������ý��� b-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">�̿��ݻ����</p>
        </div>
        <!-- //head title// --> 
    </div>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"            headerText=\"����\"                   width=\"45\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
	        <DataGridColumn id=\"HGRK_ITXP_NM\"       dataField=\"HGRK_ITXP_NM\"        headerText=\"���\"               width=\"130\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"ITXP_NM\"            dataField=\"ITXP_NM\"             headerText=\"���κ��\"           width=\"160\" visible=\"true\" sortable=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
	        <DataGridColumn id=\"EXCTN_EXEC_AMT\"     dataField=\"EXCTN_EXEC_AMT\"      headerText=\"������ݾ�\"       width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	        <DataGridColumn id=\"BF_YR_CASH_CROV_AMT\" dataField=\"BF_YR_CASH_CROV_AMT\" headerText=\"���⵵�̿��ݾ�\"    width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	        <DataGridColumn id=\"CROV_USE_AMT\"       dataField=\"CROV_USE_AMT\"        headerText=\"�̿��ݻ��ݾ�\"     width=\"120\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	        <DataGridColumn id=\"HGRK_ITXP_CD\"       dataField=\"HGRK_ITXP_CD\"        headerText=\"����ڵ�\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITXP_CD\"            dataField=\"ITXP_CD\"             headerText=\"�����ڵ�\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CROV_USE_AMT2\"      dataField=\"CROV_USE_AMT2\"       headerText=\"�̿��ݻ��ݾ׿���\" width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
        </columns>\
        <dataProvider>\
        <!--  �׸����� �ڷḦ dataProvider�� �ƴ� ������ ������Ʈ�� �Է��ؾ� �� ��� �Ʒ��� ���� $gridData�� �־��ݴϴ�  -->\
        <SpanSummaryCollection source=\"{$gridData}\" >\
            <!--  ������ ���ϴ� �ʵ��� �ʵ���� ���ʴ�� �־��ݴϴ�   -->\
            <mergingFields>\
                <SpanMergingField name=\"HGRK_ITXP_NM\" colNum=\"1\" />\
            </mergingFields>\
        </SpanSummaryCollection>\
    </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{BF_YR_CASH_CROV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CROV_USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

    
var layoutStr2 = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" lockedColumnCount=\"4\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\" >\
            <columns>\
                <DataGridColumn id=\"\"                     dataField=\"\"                      itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
	            <DataGridColumn id=\"TRSC_DT\"            dataField=\"TRSC_DT\"             headerText=\"�������\"           width=\"75\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"������\"             width=\"100\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"ǰ���\"             width=\"150\" visible=\"true\" editable=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"TRSC_EVDC_DV\"       dataField=\"TRSC_EVDC_DV\"        headerText=\"��������\"           width=\"70\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"          headerText=\"�ŷ�ó\"             width=\"120\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"PAYM_USAG\"          dataField=\"PAYM_USAG\"           headerText=\"�뵵\"               width=\"120\" visible=\"true\" editable=\"false\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"USE_AMT\"            dataField=\"USE_AMT\"             headerText=\"���ݾ�\"           width=\"120\" visible=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"���ޱݾ�\"           width=\"120\" visible=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"�ΰ���ġ����\"       width=\"120\" visible=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	            <DataGridColumn id=\"CROV_USE_AMT\"       dataField=\"CROV_USE_AMT\"        headerText=\"�̿��ݻ��ݾ�\"     width=\"120\" visible=\"true\" editable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
	            <DataGridColumn id=\"TRSC_PFMC_REG_DT\"   dataField=\"TRSC_PFMC_REG_DT\"    headerText=\"���������\"       width=\"80\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"TRSC_PFMC_REG_TM\"   dataField=\"TRSC_PFMC_REG_TM\"    headerText=\"����Ͻð�\"       width=\"80\" visible=\"true\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BUTR_ID\"            dataField=\"BUTR_ID\"             headerText=\"�ŷ�����ID\"         width=\"0\" visible=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BUIT_ID\"            dataField=\"BUIT_ID\"             headerText=\"���ID\"             width=\"0\" visible=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"CROV_USE_AMT2\"       dataField=\"CROV_USE_AMT2\"        headerText=\"�̿��ݻ��ݾ׿���\" width=\"0\" visible=\"false\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
	        <footers>\
	            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CROV_USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
        
        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
        	selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
	        
            if(selectorColumn.getSelectedIndex() < 0){ 
                return; 
            }
	        searchItxpInfo(event.getRowIndex());
            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid.addEventListener("itemClick", itemClickHandler); //Ŭ�� �̺�Ʈ
        };

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", layoutComplete);
        

    };
    

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
    
    
    
	//rMateGrid ���� ��ü
	var flashVars2 = "dataType=json&bridgeName=gridBridge2";
	var gridApp2; // �÷��� �⺻ ��ü
	var gridData2; // �׸��� ������ ���
	var gridRoot2; // ����Ÿ�� �׸��带 �����ϴ� ��ü
	var dataGrid2; // �׸��� ���� ���
	var collection2; // �׸����� ����Ÿ ��ü
	var selectorColumn2; // ������ �÷�
	
	
	
	//�׸��� ���̾ƿ� ȣ�� 
	var rMateGridInitLayout2 = function() {
      gridApp2 = FABridge.gridBridge2.root();
      gridRoot2 = gridApp2.getGridRoot();
      gridApp2.setLayout(layoutStr2);   //�׸��� ���̾ƿ� ����

      

      var layoutCompleteHandler = function(event) {
          dataGrid2 = gridApp2.getDataGrid();
          
      };
      

      //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
      gridRoot2.addEventListener("layoutComplete", layoutCompleteHandler);
      gridRoot2.addEventListener("layoutComplete", layoutComplete2);
      
      //���󺯰�
      gridRoot2.addEventListener("dataComplete", uf_cellOptions);   //���󺯰�
      
      gridRoot2.addEventListener("itemDataChanged", dataGrid_init);

  };

  //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
  FABridge.addInitializationCallback("gridBridge2", rMateGridInitLayout2);
  rMateGridLayoutInit_rMate(gridRoot, null, layoutStr);


  //�ε� �� rMadeGrid ���
  function rMateGridSetData2() {
      gridApp2 = FABridge.gridBridge2.root();
      gridApp2.setData(JSON.stringify(gridData2)); //������ ���
  };

    
        
  //rMateGrid �ε��� �Ϸ� �� �� ��ȸ�� ����
  var isGrid = false;
  var isGrid2 = false;
  var isLoading = false;

  // ó�� ��ȸ�ÿ��� �ڵ���ȸ�� �̷�� ���� �Ѵ�.
  function layoutComplete(){
      isGrid = true;
      if(isLoading) return;  //ó����ȸ�� isLoading�� true�� �����Ͽ� �ڵ���ȸ�� �ǰ� �ϰ�, �ι�°���ʹ� �ڵ���ȸ�� ���� �ʰ��Ѵ�.
      gridLayoutComplit();
  }
  function layoutComplete2(){
      isGrid2 = true;
      if(isLoading) return;  //ó����ȸ�� isLoading�� true�� �����Ͽ� �ڵ���ȸ�� �ǰ� �ϰ�, �ι�°���ʹ� �ڵ���ȸ�� ���� �ʰ��Ѵ�.
      gridLayoutComplit();
  }

  function gridLayoutComplit(){
      
      if( !(isGrid && isGrid2)) return;
      if(!isLoading) isLoading = true; // �׸��� �ʱ�ȭ�� �ߺ�ó�� ���� �ʱ����ؼ� ó��
          
      uf_search('S');
  }
  
  
  
  function uf_cellOptions(){
      collection2 = gridRoot2.getCollection();
      
      for (var i = 0; i < collection2.getLength(); i++) {
          if("<%=SacPrgrSt%>" == "" || "<%=SacPrgrSt%>" == "0"){
        	  collection2.addCellAttributeDetailAt(i, 10, 1, 1, null, 0xEDF2FE);
              
          }else{
        	  var columns = dataGrid2.getColumns();
              columns[10].setEditable(false);
          }
          
      }
  }
  
  
  
  function dataGrid_init(event){
      var rowIndex = event.getRowIndex();                 // ����� ���ȣ
      var columnIndex = event.getColumnIndex();       // ����� ����ȣ
      var dataField = event.getDataField();               // ����� ���� ����Ÿ �ʵ�
      var dataRow = gridRoot2.getItemAt(rowIndex); // ����� ����Ÿ ���ڵ�
      
      var footer = gridRoot2.getObjectById("footer");
      footer.invalidateData();
      
      //validAmt(ArecordIndex);
      validAmt(dataRow, rowIndex, columnIndex);
      
      
  }
  

    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



        <div id="body">
            <form name="frm" method="post">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <div class="pop_wh b20">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="��������" class="tbl_type02">
        <caption>��������</caption>
        <colgroup>
        <col width="20%" />
        <col width="80%" />
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">�����</th>
            <td class="ll"><%=BzClasNm %></td>
          </tr>
          <tr>
            <th scope="row">������</th>
            <td class="ll"><%=SbjtNm %></td>
          </tr>
          </tbody>          
      </table>
    </div>
                
                
                <h3>�������</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "205", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->                  
                <br class="cb"/> 
                <h3>�������� �� �̿��ݻ����</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
            <!-- �׸��� Start -->
            <div id="gridDiv2">
                <script>
                 rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars2, "100%", "325", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->                  
                <div class="guide_bu">
                    <img src="/images/common/bu_color.gif" /> �κ��� �Է��� ������ �׸��Դϴ�.
                </div>
                <!-- action bt start -->
                <div class="pop_action_bt ar"> 
                <% if( SacPrgrSt.equals("0") || SacPrgrSt.equals("") ){%>
                    <a href="#" onclick="uf_saveCrovAmt(); return false;" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a>
                <% } %>
                </div>
                <!-- //action bt end// -->
                                

                        <div class="guide_bu">
                          <ul>
                            <li>�����������Ŀ��� �̿��ݻ���� �� ������ �� �� �����ϴ�.</li>
                          </ul>
                        </div>

            </div>
            <!-- //content end// -->
            </form>
            

      
        </div>









<%@ include file="/inc/jspFooter_popup.jsp" %> 



<script type="text/javascript">

/*****************************************************************
 * uf_save     ���⵵�̿��ݾ���ȸ
 * @param
 * @return
******************************************************************/
function uf_search(SchGb) {
	
	if( !(isGrid && isGrid2)) return;
	if(!isLoading) isLoading = true; // �׸��� �ʱ�ȭ�� �ߺ�ó�� ���� �ʱ����ؼ� ó��

    
    var frm = document.frm;

    if( isSubmit() ) return;            // ����ó��

    
    get2post(frm,"AgrmtSeqNo="+"<%=AgrmtSeqNo%>");
    get2post(frm,"AgrmtInstId="+"<%=AgrmtInstId%>");
    
    
    rMateGridLayoutInit_rMate();
    
    SetData("<%=AgrmtSeqNo%>");
    
}

/*****************************************************************
 * uf_save     ��� �̿��� ���ݾ� ��ȸ
 * @param
 * @return
******************************************************************/
function searchItxpInfo(idx) {
    var frm = document.frm;
    
    if( typeof idx == 'undefined' || idx == null ){
        var ridx = -1;
        setMoveFirstRecord(obj);
        while((ridx = getNextSelectedRecord(obj, "����")) > -1){
            idx = ridx;
            break;
        }
    }
    
    var dataRow = gridRoot.getItemAt(idx);
    
    get2post(frm,"AgrmtSeqNo="+"<%=AgrmtSeqNo%>");
    get2post(frm,"AgrmtInstId="+"<%=AgrmtInstId%>");
    //get2post(frm,"itxpCd="+getCell(obj,idx,"�����ڵ�"));
    get2post(frm,"itxpCd="+dataRow.ITXP_CD);
    

    //�׸��� �ʱ�ȭ
    rMateGridLayoutInit_rMate(gridRoot2, gridApp2, layoutStr2);
    
    SetData2("<%=AgrmtSeqNo%>","<%=AgrmtInstId%>",dataRow.ITXP_CD); //Insert Grid
           
            

    
}
 
/*****************************************************************
 * uf_save      �̿��ݵ��
 * @param
 * @return
******************************************************************/
function uf_saveCrovAmt(){
    var frm         = document.frm;
    var grid        = gridRoot2;
   
    var insertData = "";
    var itm_num = 0;
    
    for(var i=0; i<getGridRowCount_rMate(grid);i++){
 
    	var dataRow = grid.getItemAt(i);
    	
        if( dataRow.CROV_USE_AMT != dataRow.CROV_USE_AMT2 ){
                insertData += "&BuitId="       +dataRow.BUIT_ID;
                insertData += "&CrovUseAmt="   +dataRow.CROV_USE_AMT;
                itm_num++;
        }
    }

    if(itm_num==0){
        alert("�Է��Ͻ� ������ �����ϴ�.");
        return;
    }
    
    get2post(frm, insertData);

    
    
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
			    reset_submit();
			    alert("�̿��ݻ������ �Ϸ�Ǿ����ϴ�.");
			    searchItxpInfo();
            }
            , 1000);   // 1���� ���� 1000 = 1��
            
    removeTempAttribute(frm);
}


//function validAmt(idx){
function validAmt(dataRow2, rowIndex2, columnIndex2){	
    var obj = gridRoot;
    var obj2 = gridRoot2;
    var dataRow;
    
    var ridx = -1;
    var selectedIndex = -1;
    var selectedIndex2 = -1;
    
    selectorColumn = gridRoot.getObjectById("selector");

    if(selectorColumn.getSelectedIndices().length < 1) return;
    
    selectedIndex = selectorColumn.getSelectedIndex();
    
    dataRow = gridRoot.getItemAt(selectedIndex);
    
    var bfYrCashCrovAmt = parseInt(dataRow.BF_YR_CASH_CROV_AMT,10);
    
    var footer = gridRoot.getObjectById("footer");
    var footer2 = gridRoot2.getObjectById("footer");
    if(  bfYrCashCrovAmt <= 0 ){
        if( parseInt(dataRow2.CROV_USE_AMT,10) == 0 ) return;
        
        alert('['+dataRow.ITXP_NM + '] ���⵵�̿��ݾ� �����Ƿ� �̿�����ϱݾ��� ����Ͻ� �� �����ϴ�.');

        //obj2.SetValue(idx, obj2.GetItemIndexFromCaption("�̿��ݻ��ݾ�"), '0');
        
        gridRoot2.setItemFieldAt("0", rowIndex2, "CROV_USE_AMT");     // ��, row, id   �̿��ݻ��ݾ�
        footer2.invalidateData();
        
        return;
    }else{
        
        var totCrovAmt = 0;
        for(var i=0, j=getGridRowCount_rMate(gridRoot2); i<j; i++){
        
            totCrovAmt += gridRoot2.getItemAt(i).CROV_USE_AMT;

        }
        
        //���ݾ� üũ
        var useAmt = parseInt(dataRow2.USE_AMT,10);
        var useCrovAmt = parseInt(dataRow2.CROV_USE_AMT,10);
        if( useCrovAmt > useAmt ){
            alert('�̿��ݻ��ݾ��� ���ݾ��� �ʰ��Ͽ����ϴ�.\n�̿��ݻ���ϰ��� �ݾ��� ' + toMoney(useAmt) + '�� �Դϴ�.');
            
            
            gridRoot2.setItemFieldAt(useAmt+'', rowIndex2, "CROV_USE_AMT");     // ��, row, id   �̿��ݻ��ݾ�
            footer2.invalidateData();
            
            return;
        }
        
        //���⵵ �̿��ݾ� üũ
        if( totCrovAmt > bfYrCashCrovAmt ){
            possAmt = bfYrCashCrovAmt - (totCrovAmt-useCrovAmt);
            alert('���⵵ �̿��ݾ��� �ʰ� �Ͽ����ϴ�.\n���� ��� ���� �ݾ��� ' + toMoney(possAmt) + '�� �Դϴ�.');
            gridRoot2.setItemFieldAt(possAmt+'', rowIndex2, "CROV_USE_AMT");     // ��, row, id   �̿��ݻ��ݾ�
            footer2.invalidateData();
        }else{
            gridRoot.setItemFieldAt(totCrovAmt+'', selectedIndex, "CROV_USE_AMT");     // ��, row, id   �̿��ݻ��ݾ�
            footer.invalidateData();
        }
        
        
    }

}

$(document).ready(function(){

// rMateGrid �ʱ�ȭ
rMateGridInit();
});    

</script>



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

        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"����Ȱ����","EXCTN_EXEC_AMT":"19500","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�����ü������ �� ����","EXCTN_EXEC_AMT":"37200","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�ΰǺ�","EXCTN_EXEC_AMT":"30000","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������������","EXCTN_EXEC_AMT":"8900","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������","EXCTN_EXEC_AMT":"2000","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"������","EXCTN_EXEC_AMT":"1000","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};

        	
        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){

        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"����Ȱ����","EXCTN_EXEC_AMT":"18637","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�����ü������ �� ����","EXCTN_EXEC_AMT":"33819","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"�ΰǺ�","EXCTN_EXEC_AMT":"30000","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������������","EXCTN_EXEC_AMT":"8900","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"��������","EXCTN_EXEC_AMT":"2000","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};
        	gridValue[cnt++] = {"HGRK_ITXP_NM":"������","ITXP_NM":"������","EXCTN_EXEC_AMT":"910","BF_YR_CASH_CROV_AMT":"0","CROV_USE_AMT":"0","HGRK_ITXP_CD":"B0100","ITXP_CD":"B0101","CROV_USE_AMT2":"0"};

        	
        }
                

    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}

function SetData(seqNo){
    
    if(!seqNo || typeof seqNo == "udnefined" || seqNo == "") return;
    
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
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}






var cnt2 = 0;
function setGridData2(seqNo, instId, itxpCd){    
    try{
        cnt2 = 0;
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
        gridData2 = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData2();  //rMateGrid ����
        
    }
}


function SetData2(seqNo, instId, itxpCd){
    
    if(!seqNo || typeof seqNo == "udnefined" || seqNo == "") return;
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                try{
                    document.body.setCapture(); // 'wait'
                    document.body.style.cursor =    "wait";
                    //SetData(); //Insert   Grid
                    setGridData2(seqNo, instId, itxpCd); //Insert    Grid
                    document.body.style.cursor =    "auto";
                    document.body.releaseCapture(); //setCapture()_Next
                }finally{
                    reset_submit();
                    searchAlert();
                }
            }
            , 1000);   // 1���� ���� 1000 = 1��

}
</script>

</body></html>