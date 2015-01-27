<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T31_01_10.jsp
 *   Description        : �����೻�� ����ȸ (�˾�)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.15                     ������             
 *
 *  @author     ������
 *  @Since      2014.01.15
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

// ����������� ��ȸ
//String SacSt                = null2void(getSacPrgrSt(request));
String SacSt                = "";

String Input_pInqStrDt      = SessionUtil.getRequestValue(request, "pInqStrDt");            // ��ȸ������
String Input_pInqEndDt      = SessionUtil.getRequestValue(request, "pInqEndDt");            // ��ȸ������    

String Input_TrscEvdcDv     = SessionUtil.getRequestValue(request, "pTrscEvdcDv");          // ��������
String Input_ButrId         = SessionUtil.getRequestValue(request, "pButrId");              // �����Ϸù�ȣ

String PmsId                = SessionUtil.getRequestValue(request, "PmsId");                // PMS_ID
String SbjtId               = SessionUtil.getRequestValue(request, "SbjtId");               // ������ȣ
String AgrmtSeqNo           = SessionUtil.getRequestValue(request, "AgrmtSeqNo");           // �����Ϸù�ȣ
String AgrmtInstId          = SessionUtil.getRequestValue(request, "AgrmtInstId");          // ���������̵�
String TrscDt               = SessionUtil.getRequestValue(request, "TrscDt");               // �ŷ�����

// 2011.08.30 
String pSbjt_map_keys       = SessionUtil.getRequestValue(request, "pSbjt_map_keys");
String pkeykey              = SessionUtil.getRequestValue(request, "pkeykey");
String pSTrscEvdcDv         = SessionUtil.getRequestValue(request, "pSTrscEvdcDv");

// 2011.12.02 EDMS����
String hmpwRoleDv           = SessionUtil.getRequestValue(request, "hmpwRoleDv"); 
String rcmsGrpCd            = SessionUtil.getRequestValue(request, "rcmsGrpCd");


%>

<title>����������� ����ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">����������� ����ȸ</p>
        </div>
        <!-- //head title// --> 
    </div>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\"  >\
            <columns>\
                <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
                <DataGridColumn id=\"TRSC_EVDC_DV\"           dataField=\"TRSC_EVDC_DV\"            headerText=\"���������ڵ�\"           width=\"100\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"TRSC_EVDC_DV_NM\"        dataField=\"TRSC_EVDC_DV_NM\"         headerText=\"��������\"               width=\"110\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" styleJsFunction=\"columnUnderline2\" itemRenderer=\"HandCursorItem\" secondLabelJsFunction=\"setHandCursor\" />\
                <DataGridColumn id=\"SPLR_CO_NM\"             dataField=\"SPLR_CO_NM\"              headerText=\"�ŷ�ó\"                 width=\"120\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BZ_EXP_EXCTN_REG_YN\"    dataField=\"BZ_EXP_EXCTN_REG_YN\"     headerText=\"��������Ͽ���\"     width=\"130\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUTR_ID\"                dataField=\"BUTR_ID\"                 headerText=\"�������ŷ�����ID\"   width=\"190\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_REG_NCNT\"          dataField=\"ITXP_REG_NCNT\"           headerText=\"����ϰǼ�\"           width=\"110\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"USE_SPLY_AMT\"           dataField=\"USE_SPLY_AMT\"            headerText=\"���ޱݾ�\"               width=\"100\"    visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"USE_VAT_AMT\"            dataField=\"USE_VAT_AMT\"             headerText=\"�ΰ���ġ����\"           width=\"100\"    visible=\"true\"  textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"FST_REGR_ID\"            dataField=\"FST_REGR_ID\"             headerText=\"�����ID\"               width=\"80\"     visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"FILE_MODIFY\"            dataField=\"FILE_MODIFY\"             headerText=\"�������ϼ���\"           width=\"100\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
            <dataProvider>\
	            <SpanArrayCollection source=\"{$gridData}\"/>\
	        </dataProvider>\
	        <footers>\
	            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

    
var layoutStr_itxp = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\"  >\
            <columns>\
                <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
	            <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"�������\"           width=\"80\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"���κ���ڵ�\"       width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"���κ��\"           width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"�������ڵ�\"         width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"������\"             width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"ǰ��\"               width=\"80\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"MITM_NRM\"           dataField=\"MITM_NRM\"            headerText=\"�԰�\"               width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"MITM_UPRC\"          dataField=\"MITM_UPRC\"           headerText=\"�ܰ�\"               width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	            <DataGridColumn id=\"MITM_QNT\"           dataField=\"MITM_QNT\"            headerText=\"����\"               width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"���ޱݾ�\"           width=\"90\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"�ΰ���ġ����\"       width=\"90\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
	            <DataGridColumn id=\"BTN_01\"             dataField=\"BTN_01\"              headerText=\"���񺯰�\"           width=\"70\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BTN_02\"             dataField=\"BTN_02\"              headerText=\"�����������\"       width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" />\
	            <DataGridColumn id=\"BTN_03\"             dataField=\"BTN_03\"              headerText=\"�ΰǺ񳻿�\"         width=\"70\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BEIF_REG_YN\"        dataField=\"BEIF_REG_YN\"         headerText=\"����������Ͽ���\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BEAI_REG_YN\"        dataField=\"BEAI_REG_YN\"         headerText=\"�ΰǺ񳻿���Ͽ���\" width=\"120\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"RMK\"                dataField=\"RMK\"                 headerText=\"���\"               width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"MITM_SUM\"           dataField=\"MITM_SUM\"            headerText=\"ǰ���հ�\"         width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"REJCT_PROC_ST\"      dataField=\"REJCT_PROC_ST\"       headerText=\"����������\"         width=\"90\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BEIF_JSON\"          dataField=\"BEIF_JSON\"           headerText=\"RcmsBeif\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BEAI_JSON\"          dataField=\"BEAI_JSON\"           headerText=\"RcmsBeai\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"FST_REGR_ID\"        dataField=\"FST_REGR_ID\"         headerText=\"�����ID\"           width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"HMPW_ROLE_DV\"       dataField=\"HMPW_ROLE_DV\"        headerText=\"hmpwRoleDv\"         width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"RCMS_GRP_CD\"        dataField=\"RCMS_GRP_CD\"         headerText=\"rcmsGrpCd\"          width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"PMS_ID\"             dataField=\"PMS_ID\"              headerText=\"PMS_ID\"             width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"SBJT_ID\"            dataField=\"SBJT_ID\"             headerText=\"������ȣ\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"AGRMT_SEQ_NO_S\"     dataField=\"AGRMT_SEQ_NO_S\"      headerText=\"�����Ϸù�ȣ\"       width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"AGRMT_INST_ID_S\"    dataField=\"AGRMT_INST_ID_S\"     headerText=\"���������̵�\"     width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"ITXP_CD\"            dataField=\"AGRMT_INST_ID_S\"     headerText=\"����ڵ�\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"INPUT_TRSC_EVDC_DV\" dataField=\"INPUT_TRSC_EVDC_DV\"  headerText=\"��������\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"TRSC_DT_S\"          dataField=\"TRSC_DT_S\"           headerText=\"������ڸ�\"         width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"BUIT_ID\"            dataField=\"BUIT_ID\"             headerText=\"���������ID\"   width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"EVDC_DCMT_CMAD_ID\"  dataField=\"EVDC_DCMT_CMAD_ID\"   headerText=\"��������÷�ι���ID\" width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"EXT_EDMS_DOC_ID\"    dataField=\"EXT_EDMS_DOC_ID\"     headerText=\"����EDMS����ID\"     width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"EDMS_DOC_ID\"        dataField=\"EDMS_DOC_ID\"         headerText=\"EDMS����ID\"         width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
	            <DataGridColumn id=\"FILE_NM\"            dataField=\"FILE_NM\"             headerText=\"���ϸ�\"             width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
            <dataProvider>\
                <SpanArrayCollection source=\"{$gridData}\"/>\
            </dataProvider>\
            <footers>\
                <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{DTLS_ITXP_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
        	if("<%=Input_TrscEvdcDv%>" == "E") return false; 
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var columns = dataGrid.getColumns();
            
            
            var ii = 0;
            var jj = 0;
//            for ( var i = 0; i < columns.length; i++){
            for ( var i = 1; i < columns.length; i++){ //���� ���۵Ǵ� ��(index �� 0���� �νĵ�)
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
                        
            if (dataField == "TRSC_EVDC_DV_NM") { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
                //fnFileEvdc_rMate_itxp(rowIndex, dataRow);
            
                uf_popup_evdc_dtls_brws(document.frm, dataRow.BUTR_ID, dataRow.TRSC_EVDC_DV);
                
            };
            
            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //�̺�Ʈ ���
            dataGrid.addEventListener("itemClick", itemClickHandler); //����Ŭ�� �̺�Ʈ
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", layoutComplete_rMate);
        
        //data ��� �� ������ �̺�Ʈ ���
        //gridRoot.addEventListener("dataComplete", setColumnStyle);  //�������� ó��
        
        
        //�׸����� ������ ����� ȣ��
        //gridRoot.addEventListener("itemDataChanged", uf_SetValue_rMate);
        
        

    };
    

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
    
    
    /**
     * ����ǥ��
     */
    function columnUnderline2(item, value, column) {
    
        if (value && value != "" && value != "��Ÿ")
            return {
                textDecoration : "underline"
                , color :"0x0000FF"
            };
        return null;
    }


    //�ڵ�Ŀ�� ��Ʈ��
    function setHandCursor(item, value, column) {
    	
    	if (item.TRSC_EVDC_DV_NM != "��Ÿ"){
    		return true;
    	}
        return false;
    }
    
    
    
  //rMateGrid ���� ��ü
  var flashVars_itxp = "dataType=json&bridgeName=gridBridge_itxp";
  var gridApp_itxp; // �÷��� �⺻ ��ü
  var gridData_itxp; // �׸��� ������ ���
  var gridRoot_itxp; // ����Ÿ�� �׸��带 �����ϴ� ��ü
  var dataGrid_itxp; // �׸��� ���� ���
  var collection_itxp; // �׸����� ����Ÿ ��ü
  var selectorColumn_itxp; // ������ �÷�
  var rMateGrid_rowIndex;


  //�׸��� ���̾ƿ� ȣ�� 
  var rMateGridInitLayout_itxp = function() {
      gridApp_itxp = FABridge.gridBridge_itxp.root();
      gridRoot_itxp = gridApp_itxp.getGridRoot();
      gridApp_itxp.setLayout(layoutStr_itxp);   //�׸��� ���̾ƿ� ����

      //Ŭ�� �̺�Ʈ �߰�
      var itemClickHandler = function(event) {
    	  
          var rowIndex = event.getRowIndex();
          var columnIndex = event.getColumnIndex();
          var dataRow = gridRoot_itxp.getItemAt(rowIndex);
 
          
          /*******************************
           * �÷��� ������ �ʰ� �ϴ� visible="false"�� ����
           * Ŭ�� �̺�Ʈ �÷��� ȭ�鿡 ���̴� ������� ���������
           * ���� ó���Ǵ� �÷��� visible="false"�� ������ �÷��� ���Եǰ� ó���� �Ǿ� 
           * �Ʒ� column,dataField �� �ּ�ó�� �Ͽ� �Ʒ� ������ ���� �� ó���Ѵ�.
           *************************************/
          //var column = dataGrid.getColumns()[columnIndex];
          //var dataField = column.getDataField();
           
          var columns = dataGrid_itxp.getColumns();
          
          
          var ii = 0;
          var jj = 0;
//          for ( var i = 0; i < columns.length; i++){
          for ( var i = 1; i < columns.length; i++){ //���� ���۵Ǵ� ��(index �� 0���� �νĵ�)
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
          
          
          if (dataField == "BTN_02") { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
        	  rMateGrid_rowIndex = rowIndex;
        	  fnFileEvdc_rMate_itxp(rowIndex, dataRow);
          };
          
          
      };
      
      //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
      var itemDoubleClickHandler = function(event) {
          
          var rowIndex = event.getRowIndex();
          var columnIndex = event.getColumnIndex();
          var dataRow = gridRoot_itxp.getItemAt(rowIndex);
          var column = dataGrid_itxp.getColumns()[columnIndex];
          var dataField = column.getDataField();
          
          layerDetail(dataGrid_itxp, dataRow, "window");
          
      };

      var layoutCompleteHandler = function(event) {
          dataGrid_itxp = gridApp_itxp.getDataGrid();
          
          //�̺�Ʈ ���
          dataGrid_itxp.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
          //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
      };
      

      //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
      gridRoot_itxp.addEventListener("layoutComplete", layoutCompleteHandler);
      gridRoot_itxp.addEventListener("layoutComplete", layoutComplete_itxp);
      
      //data ��� �� ������ �̺�Ʈ ���
      //gridRoot_itxp.addEventListener("dataComplete", setTotCnt);
      
      //���󺯰�
      //gridRoot_itxp.addEventListener("dataComplete", uf_rowColor_rmate);   //���ǿ����� ����ó��
      gridRoot_itxp.addEventListener("dataComplete", columnBackGroundStyle_itxp);   //�ΰ��� ���󺯰�

  };

  //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
  FABridge.addInitializationCallback("gridBridge_itxp", rMateGridInitLayout_itxp);


  //�ε� �� rMadeGrid ���
  function rMateGridSetData_itxp() {
      gridApp_itxp = FABridge.gridBridge_itxp.root();
      gridApp_itxp.setData(JSON.stringify(gridData_itxp)); //������ ���
  };

    
    
    
    
    
    

    
    
    
    //�÷� ���󺯰�
    function columnBackGroundStyle_itxp() {
        if (collection_itxp == null)
            collection_itxp = gridRoot_itxp.getCollection();
        if (collection_itxp == null) {
            alert("collection ��ü�� ã�� �� �����ϴ�");
            return;
        }
        for (i = 0; i < collection_itxp.getLength(); i++) {
            collection_itxp.addCellAttributeDetailAt(i, 13, 1, 1, null, 0xEDF2FE);
        }
    }

    
    
    
    /******************************************************************
     * fnFileEvdc        �������� ���
     * @param
     * @return
    ******************************************************************/
    function fnFileEvdc_rMate_itxp(rIdx, rData){
    	
        var mode;
        var dockey;
        var DocTypDv;
        var frm             = document.frm;
        var hmpwRoleDvEdms      = "<%=hmpwRoleDv%>";
        var rcmsGrpCdEdms   = "<%=rcmsGrpCd%>";
        var edmsDocId       = "";
        var pmsId           = "<%=PmsId%>";
        var sbjtId          = "<%=SbjtId%>";
        var agrmtInstId     = "<%=AgrmtInstId%>";
        var agrmtSeqNo      = "<%=AgrmtSeqNo%>";
        var usrId           = "TEST";

        if("<%=SacSt%>" == "1"){
            alert("��������Ϸ� �����Դϴ�.");
            return;
        }

        if("<%=SacSt%>" == "2"){
            alert("����Ϸ� �����Դϴ�.");
            return;
        }

        if("<%=SacSt%>" == "3"){
            alert("����Ȯ�� �����Դϴ�.");
            return;
        }
        
        
        if(rcmsGrpCdEdms == "MR030" || rcmsGrpCdEdms == "MR042" || rcmsGrpCdEdms == "MR043" || rcmsGrpCdEdms == "MR023" ){
            hmpwRoleDvEdms = "03";
        }
        
        
        if( "" == rData.EDMS_DOC_ID ){ //EDMS����ID

            mode            = "create";
            useDt           = rData.USE_DT;  //�������
            evdcDv          = rData.INPUT_TRSC_EVDC_DV;  //��������
            itxpCd          = rData.DTLS_ITXP_CD.substring(0,4)+"0"; //���κ���ڵ�
            DtlsItxpCd      = rData.DTLS_ITXP_CD;    //���κ���ڵ�
            SubDtlsItxpCd   = rData.SUB_DTLS_ITXP_CD; //�������ڵ�
            
            //2011 �ű� EDMS ����Ű ����
            //����Ű����( PMSID + ����ID + �����Ϸù�ȣ + ������ + ����� + �������� + ��� + ���� + ������)
            dockey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
            frm.docKey.value    =   dockey;
    
            // EDMS÷�����ϵ��ȣ��
            edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDvEdms , "/pop/file_popup.jsp?mode="+mode);
        }else{
            
            mode     = "update";
            edmsDocId   = rData.EDMS_DOC_ID; //EDMS����ID
            
            // EDMS÷�����ϵ��ȣ��
            edmsUploadFileNew("frm", mode, edmsDocId, usrId , hmpwRoleDvEdms , "/pop/file_popup.jsp?mode="+mode);
        }
        
    }
    
    
    
    /******************************************************************
     * edmsReturnAction     EDMS ��ȯ���׸������
     * @param
     * @return
    ******************************************************************/
    function setEvdcState(BuitId,CmadId,EdmsDocId) {
        var obj = gridRoot_itxp;
        
        for(var i = 0 ; i < getGridRowCount_rMate(obj); i++ ){
            if( obj.getItemFieldAt(i,"BUIT_ID") == BuitId ){ //���������ID
                
                obj.setItemFieldAt(CmadId, i, "EVDC_DCMT_CMAD_ID");   //��������÷�ι���ID   // ��, row, id
                obj.setItemFieldAt("���", i, "BEIF_REG_YN");   //����������Ͽ���
                obj.setItemFieldAt(EdmsDocId, i, "EXT_EDMS_DOC_ID");    //����EDMS����ID
            }
        }
    }

    /******************************************************************
     * edmsReturnAction     EDMS ��ȯ���׸������
     * @param
     * @return
    ******************************************************************/
    function edmsReturnAction() {
        var dockeyNo, docname,dockey;
        var frm     = document.frm;
        var obj = gridRoot_itxp;
        
        docKeyNo= frm.dockeyNo.value;
        docKey  = frm.docKey.value;
        docName = (frm.docName.value).replace(/=/gi,"-").replace(/&/gi,"n");

        if(docName.length>0){
            obj.setItemFieldAt(docKey, rMateGrid_rowIndex, "EDMS_DOC_ID" );  //EDMS����ID
            obj.setItemFieldAt(docName, rMateGrid_rowIndex, "FILE_NM" );   //���ϸ�
            obj.setItemFieldAt("��ϴ����", rMateGrid_rowIndex, "BEIF_REG_YN");  //����������Ͽ���
        }
    }
    
    
    
    
    // �׸��忡�� ������ �Ͼ�� �ҷ����ϴ�.
    function uf_SetValue_rMate(event) {
        var rowIndex = event.getRowIndex();                 // ����� ���ȣ
        var columnIndex = event.getColumnIndex();       // ����� ����ȣ
        var dataField = event.getDataField();               // ����� ���� ����Ÿ �ʵ�
        var dataRow = gridRoot.getItemAt(rowIndex); // ����� ����Ÿ ���ڵ�
        //var oldValue = event.getValue();                        // ������ ��
        //var newValue = event.getNewValue();                 // ������ ��

        // ������ �ʵ忡 ���� ��ȣ�� �Ѵ�.
        if("USE_VAT_AMT" == dataField){ //�ݾ׼��� �� �հ踦 ��ȣ���Ͽ� �� �ݾ� ����
            //dataGrid.invalidateList();  //�׸��� ��ȣ��

            var useAmt  = parseFloat(dataRow.TRNS_AMT);     //���ݾ�
            var vatAmt  = parseFloat(dataRow.USE_VAT_AMT);  //�ΰ���ġ����

            gridRoot.setItemFieldAt((useAmt-vatAmt), rowIndex, "USE_SPLY_AMT");
        }
    }
    
    
  //�ΰ������� ����
    function uf_save_vat_rMate(){
        var frm = document.frm;
        var vat = "";
        var chk = false;
        
        var totlSplyAmt = 0;
        var totlVatAmt = 0;
        
        
        if( frm.VatPsvApcYn.value == 'Y' ){
            alert('�ΰ���������û�ǿ� ���ؼ��� �ΰ���ġ������ ������ �� �����ϴ�.');
            return false;
        }
        
        
        var rows = getGridRowCount_rMate();
        
        for( idx = 0 ; idx < rows ; idx++ ){
            var dataRow = gridRoot.getItemAt(idx);
            
            var splyAmt = dataRow.USE_SPLY_AMT; //���ް���
            var vatAmt = dataRow.USE_VAT_AMT;   //�ΰ���ġ����
            var vatAmt2 = dataRow.USE_VAT_AMT2;  //�������ΰ���
            
            if( vatAmt != vatAmt2 ){
                
                get2post(frm, "UseSplyAmt=" + splyAmt);
                get2post(frm, "UseVatAmt=" + vatAmt);
                get2post(frm, dataRow.GRIDKEY);
                chk = true; 
            }
            
            totlSplyAmt += splyAmt;
            totlVatAmt += vatAmt;
        }
        
        get2post(frm, "TotlSplyAmt=" + totlSplyAmt);
        get2post(frm, "TotlVatAmt=" + totlVatAmt);
        
        
        if( chk == false ){
            alert('�ΰ���ġ���� ����� ������ �����ϴ�.');
            return false;
        }
        
        if( confirm("�ΰ���ġ���� ����� ������ �����Ͻðڽ��ϱ�?") ){
             
             uf_proce_display_on();  //�ε���
             
             setTimeout(
            		 function(){
            			 try{
            				 reset_submit();
                             alert("�����Ǿ����ϴ�.");
                         }finally{
                             reset_submit();
                         }
                 
                 }, 1000);   // 1���� ���� 1000 = 1��s
                 
                 
              
        }
        removeTempAttribute(frm);
        return false;
    }
    
  
  
  
  

    /********************************************************
    * Function      : uf_evdcUpdate
    * Description   : �������ϼ���
    ********************************************************/
    function uf_evdcUpdate() {
        var frm = document.frm;
        var obj, gridItxpIdx;
        var gridCnt = 0;
        
        if("<%=SacSt%>" == "1"){
            alert("��������Ϸ� ���·� ���������� ����� �� �����ϴ�.");
            return;
        }

        if("<%=SacSt%>" == "2"){
            alert("����Ϸ� ���·� ���������� ����� �� �����ϴ�.");
            return;
        }

        if("<%=SacSt%>" == "3"){
            alert("����Ȯ�� ���·� ���������� ����� �� �����ϴ�.");
            return;
        }
        
        gridCnt = getGridRowCount_rMate(gridRoot_itxp);
        
        if(gridCnt<=0){
            alert("��ϵ� ��񳻿��� �����ϴ�.");
            return;
        }
                  
        if( isSubmit() ) return;                    // ����ó��
        
        var cnt = 0;
        for(var i=0; i<gridCnt; i++){
        	var dataRow = gridRoot_itxp.getItemAt(i);
          
        	if(dataRow.BEIF_REG_YN == "��ϴ����"){ //����������Ͽ���
        		
                
                get2post(frm, "EvdcDcmtCmadId=" + dataRow.EVDC_DCMT_CMAD_ID); //��������÷�ι���ID
                get2post(frm, "ExtEdmsDocId="   + dataRow.EXT_EDMS_DOC_ID);   //����EDMS����ID
                get2post(frm, "EdmsDocId="      + dataRow.EDMS_DOC_ID);    //EDMS����ID
                get2post(frm, "FileNm="         + dataRow.FILE_NM);    //���ϸ�
                get2post(frm, "BuitId="         + dataRow.BUIT_ID);    //���������ID
                
                cnt++;
            }
        }
        
        if( cnt == 0 ){
            alert("��ϴ������ ���������� �������� �ʽ��ϴ�.");
            return;
        }
        
        if(!confirm("�����Ͻðڽ��ϱ�?")){
            removeTempAttribute(frm);
            return;
        }

        
        uf_proce_display_on();  //�ε���
        
        setTimeout(
                function(){
                    try{
                    	alert("����Ǿ����ϴ�.");
                        reset_submit();
                    }finally{
                        reset_submit();
                    }
                }
                , 1000);   // 1���� ���� 1000 = 1��   
                
        
        
        removeTempAttribute(frm);
    }
    
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->





    <div id="body">
        <div class="t25"></div>
        <!-- content start -->  
        <div id="content">
            <form name="frm" method="post">
            <input type="hidden" name="pTrscEvdcDv" value="<%=Input_TrscEvdcDv%>">
            <input type="hidden" name="pButrId"     value="<%=Input_ButrId%>">
            
            <input type="hidden" name="Evdc_Dv"     value="<%=Input_TrscEvdcDv%>" />    <!-- �������� -->
            <input type="hidden" name="ButrId"      value="<%=Input_ButrId%>" />        <!-- �������ŷ�����ID -->
            
            <input type="hidden" name="PmsId"      value="<%=PmsId%>" />
            <input type="hidden" name="SbjtId"      value="<%=SbjtId%>" />
            <input type="hidden" name="AgrmtInstId"      value="<%=AgrmtInstId%>" />
            <input type="hidden" name="AgrmtSeqNo"      value="<%=AgrmtSeqNo%>" />
    
            <input type="hidden" name="docKey"      value="" /> <!-- ������EDMS_dockey -->
            <input type="hidden" name="docName"      value="" /> <!-- EDMS ���ϸ� -->
            <input type="hidden" name="dockeyNo"    value="" /> <!-- EDMS ���õ� �������̺�Ű -->
            <input type="hidden" name="methodName"    value="" /> <!-- EDMS method -->

        
            <%@ include file="/inc/sbjt_info_pop.jsp" %>
            <div class="t10"></div>
            <h3>��������</h3>
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "90", "#FFFFFF");
                </script>
            </div>
            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->              
            <div class="guide_bu">���������� Ŭ���Ͻø� ������ ���� �󼼳����� Ȯ�� �� �� �ֽ��ϴ�.</div>
            <div class="t10"></div>
            <!-- ��� �ܾ׳��� ���� -->
<div class="t10 b10"><table width="704" border="0" cellspacing="0" cellpadding="0" id="TblSbjtItxpBal" summary="���,���κ�� �� ��ϳ�����ȸ������ ������ ǥ" class="tbl_type03" style="display:none;">
        <caption>��ϳ�����ȸ</caption>
        <colgroup>
        <col width="20%" />
        <col width="20%" />
        <col width="30%" />
        <col width="*" />
        </colgroup>
        <thead>
                <tr>
                        <th scope="col" class="first-child">���</th>
                        <th scope="col">���κ��</th>
                        <th scope="col">��밡���ܾ�</th>
                        <th scope="col" class="last-child">��뿹���ݾ�</th>
                </tr>
        </thead>
        <tbody>
                <tr>
                        <td class="first-child" rowspan="2">�ΰǺ�</td>
                        <td><span id="B0101_extcn_tit">�����ΰǺ�</span></td>
                        <td class="ar">
                                <span id="B0101_extcn_bal">90</span><BR>
                                (<span id="B0101_extcn_bal2">90</span>)
                        </td>
                        <td class="ar"><span id="B0101_extcn_trn">0</span></td>
                </tr>
                <tr>
                        <td><span id="B0102_extcn_tit">�ܺ��ΰǺ�</span></td>
                        <td class="ar">
                                <span id="B0102_extcn_bal">5,464</span><BR>
                                (<span id="B0102_extcn_bal2">5,464</span>)
                        </td>
                        <td class="ar"><span id="B0102_extcn_trn">0</span></td>
                </tr>
                <tr>
                        <td class="first-child" rowspan="1">������</td>
                        <td><span id="B0202_extcn_tit">����Ȱ����</span></td>
                        <td class="ar"><span id="B0202_extcn_bal">30,934</span></td>
                        <td class="ar"><span id="B0202_extcn_trn">0</span></td>
                </tr>
                <tr>
                        <td colspan="2" class="sum"><strong>�հ�</strong></td>
                        <td class="sum"><strong><span id="itxp_extcn_bal_sum">36,488</span></strong></td>
                        <td class="sum"><strong><span id="itxp_extcn_sum">0</span></strong></td>
                </tr>
        </tbody>
</table></div>
            <!-- ��� �ܾ׳��� �� -->
<% 
    if("T".equals(Input_TrscEvdcDv)){
%>
            <h3>�ŷ�ó����</h3>
            <div class="t10">
                <table summary=""  class="tbl_type02" width="100%">
                <caption></caption>
                <colgroup>
                    <col width="20%" />
                    <col width="30%" />
                    <col width="15%" />
                    <col width="35%" />
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><strong>���ݰ�꼭���ι�ȣ</strong></th>
                        <td colspan="3" id="AA_T" class="ll"></td>
                    </tr>
                    <tr>
                        <th scope="row"><strong>��ȣ(���θ�)</strong></th>
                        <td id="BB_T"></td>
                        <th scope="row">����ڹ�ȣ</th>
                        <td id="CC_T" class="ll"></td>
                    </tr>
                    <tr>
                        <th scope="row"><strong>������ּ�</strong></th>
                        <td colspan="3" id="DD_T" class="ll"></td>
                    </tr>
                    <tr>
                        <th scope="row"><strong>����</strong></th>
                        <td id="EE_T"></td>
                        <th scope="row">����</th>
                        <td id="FF_T" class="ll"></td>
                    </tr>
                    <tr>
                        <th scope="row"><strong>����(��ǥ��)</strong></th>
                        <td id="GG_T" colspan="3" class="ll"></td>
                    </tr>
                </tbody>
                </table>
            </div>
<%
    } else if("C".equals(Input_TrscEvdcDv)) {
%>                  
            <h3>ī�� ����(����) ����</h3>
            <div class="t10">
                <table summary="���п� ���� ���ι�ȣ,ī���ȣ,������� �� ������ ������ ǥ"  class="tbl_type02" width="100%">
                    <caption>ī����γ���</caption>
                    <colgroup>
                        <col width="9%" />
                        <col width="14%" />
                        <col width="10%" />
                        <col width="10%" />
                        <col width="6%" />
                        <col width="10%" />
                        <col width="10%" />
                        <col width="10%" />
                        <col width="10%" />
                    </colgroup>
                    <tr>
                        <th rowspan="2" scope="col" class="ac">���ι�ȣ</th>
                        <th rowspan="2" scope="col" class="ac">ī���ȣ</th>
                        <th rowspan="2" scope="col" class="ac">�������</th>
                        <th rowspan="2" scope="col" class="ac">��������</th>
                        <th rowspan="2" scope="col" class="ac">���<br />����</th>
                        <th colspan="4" scope="col" class="ac ll">��볻��</th>
                    </tr>
                    <tr>
                        <th scope="col" class="ac">���ݾ�</th>
                        <th scope="col" class="ac">���ް���</th>
                        <th scope="col" class="ac">�ΰ���ġ����</th>
                        <th scope="col" class="ac ll">�����</th>
                    </tr>
                    <tr>
                        <td><span id="BB_C"></span></td>
                        <td><span id="CC_C"></span></td>
                        <td><span id="DD_C"></span></td>
                        <td><span id="EE_C"></span></td>
                        <td><span id="FF_C"></span></td>
                        <td class="ar"><span id="GG_C"></span></td>
                        <td class="ar"><span id="HH_C"></span></td>
                        <td class="ar"><span id="II_C"></span></td>
                        <td class="ar ll"><span id="JJ_C"></span></td>
                    </tr>
                </table>
            </div>
<%
    } else if("E".equals(Input_TrscEvdcDv)){
%>  
            <h3>�ŷ�ó����</h3>
            <div class="t10">
                <table summary=""  class="tbl_type02" width="100%">
                    <caption></caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="30%" />
                        <col width="20%" />
                        <col width="30%" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row"><strong>��ȣ(���θ�)</strong></th>
                            <td id="BB_E"></td>
                            <th scope="row"><strong>����ڹ�ȣ</strong></th>
                            <td id="CC_E" class="ll"></td>
                        </tr>
                        <tr>
                            <th scope="row"><strong>������ּ�</strong></th>
                            <td colspan="3" id="DD_E" class="ll"></td>
                        </tr>
                        <tr>
                            <th scope="row"><strong>����</strong></th>
                            <td id="EE_E"></td>
                            <th scope="row"><strong>����</strong></th>
                            <td id="FF_E" class="ll"></td>
                        </tr>
                        <tr>
                            <th scope="row"><strong>���ޱݾ�</strong></th>
                            <td id="GG_E"></td>
                            <th scope="row"><strong>�ΰ���ġ����</strong></th>
                            <td id="HH_E" class="ll"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
<%
    }
%>          
            <div class="t10"></div>
            <h3>��񳻿�</h3>
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv2">
                <script>
                rMateGridCreate("grid_itxp", "/rMateGrid/Component/rMateGridWeb", flashVars_itxp, "100%", "150", "#FFFFFF");
                </script>
            </div>
            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->               
            <!-- action bt start -->
            <div class="t10 ar">
                <a href="#dummy" class="bt_action6-1" title="������������" onclick="uf_evdcUpdate();"><span class="bt_sp">������������</span></a> 
            </div>
            <!-- //action bt end// -->
            </form>
            
        </div>
        <!-- //content end// -->
    </div>










<%@ include file="/inc/jspFooter_popup.jsp" %> 



<script type="text/javascript">
//rMateGrid �ε��� �Ϸ� �� �� ��ȸ�� ����
var isGrid = false;
var isGrid_itxp = false;
var isLoading = false;

// ó�� ��ȸ�ÿ��� �ڵ���ȸ�� �̷�� ���� �Ѵ�.
function layoutComplete_rMate(){
    isGrid = true;
    if(isLoading) return;  //ó����ȸ�� isLoading�� true�� �����Ͽ� �ڵ���ȸ�� �ǰ� �ϰ�, �ι�°���ʹ� �ڵ���ȸ�� ���� �ʰ��Ѵ�.
    AutoSearch();
}
function layoutComplete_itxp(){
    isGrid_itxp = true;
    if(isLoading) return;  //ó����ȸ�� isLoading�� true�� �����Ͽ� �ڵ���ȸ�� �ǰ� �ϰ�, �ι�°���ʹ� �ڵ���ȸ�� ���� �ʰ��Ѵ�.
    AutoSearch();
}

    function AutoSearch(){
    	var frm = document.frm;
    	var trscEvdcDv = "<%=Input_TrscEvdcDv%>";
        
    	if(!trscEvdcDv || trscEvdcDv == "" || trscEvdcDv == "null") return;
    	
        if( isSubmit() ) return;    // ����ó��
        //if(!chk_sbjt_sch()) return false; //��ȿ��üũ
 
        get2post(frm, "hmpwRoleDv="  +"<%=hmpwRoleDv%>"); 
        get2post(frm, "rcmsGrpCd="   +"<%=rcmsGrpCd%>");   
        get2post(frm, "PmsId="       +"<%=PmsId%>");
        get2post(frm, "SbjtId="      +"<%=SbjtId%>");
        get2post(frm, "AgrmtSeqNo="  +"<%=AgrmtSeqNo%>");
        get2post(frm, "AgrmtInstId=" +"<%=AgrmtInstId%>");
        get2post(frm, "TrscDt="      +"<%=TrscDt%>");       
        /* 
        frm.target = "sendIfrm";
        frm.action = "/jsp/u03/u31/U31_01_10_r.jsp";
        fn_submit(frm); 
        */
        
        setData(trscEvdcDv);
         
        
    }



    
    // 2011.08.30
    function goList(){
        fn_link('/t03/t31/T31_01_00.jsp?OnLoadSearch=Y&pSbjt_map_keys='+"<%=pSbjt_map_keys%>"+'&pInqStrDt='+"<%=Input_pInqStrDt%>" + '&pkeykey=' + "<%=pkeykey%>" +'&pInqEndDt='+"<%=Input_pInqEndDt%>" + '&pSTrscEvdcDv='+"<%=pSTrscEvdcDv%>");
    }
   
</script>



<script type="text/javascript">
    
    $(document).ready(function() {
        // rMateGrid �ʱ�ȭ
        rMateGridInit();
    }); 
</script>


<script type="text/javascript">
function setData(trscEvdcDv){
	
	
	if( !(isGrid && isGrid_itxp)) return;
	if(!isLoading) isLoading = true; // �׸��� �ʱ�ȭ�� �ߺ�ó�� ���� �ʱ����ؼ� ó��
	
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                try{
                    document.body.setCapture(); // 'wait'
                    document.body.style.cursor =    "wait";
                    setGridData(trscEvdcDv); //Insert
                    document.body.style.cursor =    "auto";
                    document.body.releaseCapture(); //setCapture()_Next
                }finally{
                    reset_submit();
                }
            }
            , 1000);   // 1���� ���� 1000 = 1��
    
}


function setGridData(trscEvdcDv){
	
	var cnt = 0;
    try{
        
        var gridValue = [];
        cnt = 0;
        
        //C : card
        if("C" == trscEvdcDv){
        	gridValue[cnt++] = {"TRSC_EVDC_DV":"C","TRSC_EVDC_DV_NM":"ī��","SPLR_CO_NM":"�� E ������","BZ_EXP_EXCTN_REG_YN":"���","BUTR_ID":"C201111212383103","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","FST_REGR_ID":"TEST","LST_CORPR_ID":"TEST"};

        //E : ��Ÿ
        }else if("E" == trscEvdcDv){
        	gridValue[cnt++] = {"TRSC_EVDC_DV":"E","TRSC_EVDC_DV_NM":"��Ÿ","SPLR_CO_NM":"�� RCMS","BZ_EXP_EXCTN_REG_YN":"���","BUTR_ID":"C201111212383103","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","FST_REGR_ID":"TEST","LST_CORPR_ID":"TEST"};

        //T : ���ڼ��ݰ�꼭
        }else if("T" == trscEvdcDv){
        	gridValue[cnt++] = {"TRSC_EVDC_DV":"T","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","SPLR_CO_NM":"�� B ������","BZ_EXP_EXCTN_REG_YN":"���","BUTR_ID":"C201111212383103","ITXP_REG_NCNT":"1","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","FST_REGR_ID":"TEST","LST_CORPR_ID":"TEST"};

        }
        
    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
    
    
    
    try{
        
        var gridValue_itxp = [];
        cnt = 0;
        
        //C : card
        if("C" == trscEvdcDv){

        	gridValue_itxp[cnt++] = {"USE_DT":"2013-12-23","DTLS_ITXP_CD":"B0202","DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"������","MITM_NM":"������","MITM_NRM":null,"MITM_UPRC":"0","MITM_QNT":null,"USE_SPLY_AMT":"455","USE_VAT_AMT":"45","BTN_01":"","BTN_02":"�����������","BTN_03":"","BEIF_REG_YN":"���","BEAI_REG_YN":"�̵��","RMK":"","MITM_SUM":34750,"REJCT_PROC_ST":"��Ȯ��","BEIF_JSON":"{\"RcmsBeif\":[{\"FileList\":\"�������_����.xlsx\",\"EtcEvdcSeqNo\":\"P20111121093755-G00000000000003-10112249\"}]}","BEAI_JSON":"","FST_REGR_ID":"TEST","HMPW_ROLE_DV":"02","RCMS_GRP_CD":"MR010","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO_S":"G00000000000003","AGRMT_INST_ID_S":"10112249","ITXP_CD":"B0200","INPUT_TRSC_EVDC_DV":"C","TRSC_DT_S":"2014-02-22","BUIT_ID":"U201111214175230","EVDC_DCMT_CMAD_ID":"D201301211195649","EXT_EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","FILE_NM":""};

            document.getElementById('BB_C').innerHTML= 'N000000000';
            document.getElementById('CC_C').innerHTML= '1111222233334444';
            document.getElementById('DD_C').innerHTML= '(��) A ������';
            document.getElementById('EE_C').innerHTML= '(��) A ������';
            document.getElementById('FF_C').innerHTML= '����';
            document.getElementById('GG_C').innerHTML= '34,750';
            document.getElementById('HH_C').innerHTML= '31,591';
            document.getElementById('II_C').innerHTML= '3,159';
            document.getElementById('JJ_C').innerHTML= '0';
            
        //E : ��Ÿ
        }else if("E" == trscEvdcDv){

        	gridValue_itxp[cnt++] = {"USE_DT":"2013-03-08","DTLS_ITXP_CD":"B0202","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"�ΰǺ�","MITM_NM":"2�� �ΰǺ�","MITM_NRM":null,"MITM_UPRC":"0","MITM_QNT":null,"USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","BTN_01":"","BTN_02":"�����������","BTN_03":"","BEIF_REG_YN":"���","BEAI_REG_YN":"���","RMK":"","MITM_SUM":34750,"REJCT_PROC_ST":"��Ȯ��","BEIF_JSON":"{\"RcmsBeif\":[{\"FileList\":\"�������_����.xlsx\",\"EtcEvdcSeqNo\":\"P20111121093755-G00000000000003-10112249\"}]}","BEAI_JSON":"","FST_REGR_ID":"TEST","HMPW_ROLE_DV":"02","RCMS_GRP_CD":"MR010","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO_S":"G00000000000003","AGRMT_INST_ID_S":"10112249","ITXP_CD":"B0200","INPUT_TRSC_EVDC_DV":"E","TRSC_DT_S":"2014-03-07","BUIT_ID":"U201111214175230","EVDC_DCMT_CMAD_ID":"D201301211195649","EXT_EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","FILE_NM":""};

            document.getElementById('BB_E').innerHTML= '(��) A ������';
            document.getElementById('CC_E').innerHTML= '222-22-2222';
            document.getElementById('DD_E').innerHTML= '����Ư���� �߱� �����1�� 31';
            document.getElementById('EE_E').innerHTML= '����';
            document.getElementById('FF_E').innerHTML= '����';
            document.getElementById('GG_E').innerHTML= '1,000';
            document.getElementById('HH_E').innerHTML= '100';
            
        //T : ���ڼ��ݰ�꼭
        }else if("T" == trscEvdcDv){

        	gridValue_itxp[cnt++] = {"USE_DT":"2013-04-23","DTLS_ITXP_CD":"B0202","DTLS_ITXP_NM":"�����ü������ �� ����","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","MITM_NM":"����Ժ�","MITM_NRM":null,"MITM_UPRC":"0","MITM_QNT":null,"USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","BTN_01":"","BTN_02":"�����������","BTN_03":"","BEIF_REG_YN":"���","BEAI_REG_YN":"�̵��","RMK":"","MITM_SUM":34750,"REJCT_PROC_ST":"��Ȯ��","BEIF_JSON":"{\"RcmsBeif\":[{\"FileList\":\"�������_����.xlsx\",\"EtcEvdcSeqNo\":\"P20111121093755-G00000000000003-10112249\"}]}","BEAI_JSON":"","FST_REGR_ID":"TEST","HMPW_ROLE_DV":"02","RCMS_GRP_CD":"MR010","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO_S":"G00000000000003","AGRMT_INST_ID_S":"10112249","ITXP_CD":"B0200","INPUT_TRSC_EVDC_DV":"T","TRSC_DT_S":"2014-03-17","BUIT_ID":"U201111214175230","EVDC_DCMT_CMAD_ID":"D201301211195649","EXT_EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","EDMS_DOC_ID":"P20111121093755-G00000000000003-10112249","FILE_NM":""};

            document.getElementById('AA_T').innerHTML= '201401110000000000000000';
            document.getElementById('BB_T').innerHTML= '(��) A ������';
            document.getElementById('CC_T').innerHTML= '222-22-2222';
            document.getElementById('DD_T').innerHTML= '����Ư���� �߱� �����1�� 31';
            document.getElementById('EE_T').innerHTML= '����';
            document.getElementById('FF_T').innerHTML= '����';
            document.getElementById('GG_T').innerHTML= '����ǥ';
        }
        
    }finally{
        gridData_itxp = gridValue_itxp;    //��ȸ��� JSON �� ��������
        rMateGridSetData_itxp();  //rMateGrid ����
        
    }
}
</script>



</body></html>