<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_10.jsp
 *   Description        : ī�������񳻿�����ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.09                     ������             
 *
 *  @author     ������
 *  @Since      2014.01.09
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

        String AgrmtInstId                      = SessionUtil.getRequestValue(request,"AgrmtInstId");
        String AgrmtSeqNo                       = SessionUtil.getRequestValue(request,"AgrmtSeqNo");
        String ButrId                           = SessionUtil.getRequestValue(request,"ButrId");
        String TrscDt                           = FormatUtil.setDelim(SessionUtil.getRequestValue(request,"TrscDt"),"9999-99-99");                          // �ŷ�����
        String BuyClctNo                        = "";       // ���Խ��ι�ȣ     
        String CrdNo                            = "";       // ī���ȣ         
        String CrdApvDt                         = SessionUtil.getRequestValue(request,"TrscDt");       // ��������         
        String SplrCoNm                         = SessionUtil.getRequestValue(request,"SplrCoNm");       // ��������         
        String OvrsUseDv                        = "";       // �����ܱ���       
        String ClmTotlAmt                       = SessionUtil.getRequestValue(request,"TrnsAmt");       // û���ѱݾ�       
        String SplyAmt                          = SessionUtil.getRequestValue(request,"UseSplyAmt");       // ���ޱݾ�         
        String VatAmt                           = SessionUtil.getRequestValue(request,"UseVatAmt");       // �ΰ���ġ����     
        String SrvAmt                           = "";       // �����           
        String ReprDtlsItxpCd                   = "";       // ��ǥ�����ڵ�     
        String ReprDtlsItxpCdNm                 = "";       // ��ǥ�����ڵ��   
        String ReprSubDtlsItxpCd                = "";       // ��ǥ�������ڵ�   
        String ReprSubDtlsItxpCdNm              = "";       // ��ǥ�������ڵ��
        String VatPsvApcYn                      = "";       // �ΰ���������û����
        String TrnsSt                           = SessionUtil.getRequestValue(request,"ExctnSt");       // �ŷ�����
        
        
        VatPsvApcYn = "N";
        //TrnsSt = "B04110";
        BuyClctNo = "N000040904";
        CrdNo = "1111222233334444";
        //CrdApvDt = "20111107";
        //SplrCoNm = "(��)���ǽ�����";
        OvrsUseDv = "A";
        //ClmTotlAmt = "34750";
        //SplyAmt = "31591";
        //VatAmt = "3159";
        SrvAmt = "0";


%>

<title>ī����� ��񳻿� ����ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">ī����� ��񳻿� ����ȸ</p>
        </div>
        <!-- //head title// --> 
    </div>




<script type="text/javascript">

function SetData(){
    
    
	var gridValue = [];
	gridValue[0] = {"USE_DT":"2012-02-04","DTLS_ITXP_NM":"����Ȱ����","SUB_DTLS_ITXP_NM":"���̳����ֺ�","MITM_NM":"���̳����ֺ�","MITM_NRM":"","MITM_UPRC":"0","MITM_QNT":"","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","USE_VAT_AMT2":"20","RMK":"","TRNS_AMT2":"220","GRIDKEY":"BuitId=U201203224333611&TrnsAmt=220&DtlsItxpCd=B0202"};
	gridData = gridValue;    //��ȸ��� JSON �� ��������
    rMateGridSetData();  //rMateGrid ����
}


</script>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\"  >\
            <columns>\
                <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" editable=\"false\" />\
                <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"�Ͻ�\"           width=\"90\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"���κ��\"       width=\"120\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"������\"         width=\"120\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"ǰ��\"           width=\"100\"     visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_NRM\"           dataField=\"MITM_NRM\"            headerText=\"�԰�\"           width=\"70\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_UPRC\"          dataField=\"MITM_UPRC\"           headerText=\"�ܰ�\"           width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_QNT\"           dataField=\"MITM_QNT\"            headerText=\"����\"           width=\"70\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"            headerText=\"��ü�ݾ�\"       width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"���ް���\"       width=\"100\"    visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"�ΰ���ġ����\"   width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"true\" />\
                <DataGridColumn id=\"USE_VAT_AMT2\"       dataField=\"USE_VAT_AMT2\"        headerText=\"�������ΰ���\"   width=\"0\"   visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"true\" />\
                <DataGridColumn id=\"RMK\"                dataField=\"RMK\"                 headerText=\"���\"           width=\"200\"    visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"TRNS_AMT2\"          dataField=\"TRNS_AMT2\"            headerText=\"���ݾ�\"       width=\"0\"    visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"GRIDKEY\"            dataField=\"GRIDKEY\"             headerText=\"GridKey\"        width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
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
        gridRoot.addEventListener("layoutComplete", SetData);
        
        //data ��� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("dataComplete", columnBackGroundStyle);
        
        
        //�׸����� ������ ����� ȣ��
        gridRoot.addEventListener("itemDataChanged", uf_SetValue_rMate);
        
        

    };
    

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
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
    
    
    
    //�÷� ���󺯰�
    function columnBackGroundStyle() {
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            alert("collection ��ü�� ã�� �� �����ϴ�");
            return;
        }
        for (i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 10, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 11, 1, 1, null, 0xEDF2FE);
        }
    }

    
    

  //�ΰ������� ����
    function uf_save_vat(){
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
            /* 
            frm.target = "sendIfrm";
            frm.action = "U12_03_10_u.jsp";//
            fn_submit(frm);
             */
             
             uf_proce_display_on();  //�ε���
             
             setTimeout(function(){
                 reset_submit();
                 alert("�����Ǿ����ϴ�.");
                 }, 1000);   // 1���� ���� 1000 = 1��s
        }
        removeTempAttribute(frm);
        return false;
    }
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<div id="body">
  <!-- content start -->
  <div id="content">
  <form name="frm" action="">
    <input type="hidden" name="AgrmtInstId" value="<%=AgrmtInstId%>"/>
    <input type="hidden" name="AgrmtSeqNo" value="<%=AgrmtSeqNo%>"/>
    <input type="hidden" name="ButrId" value="<%=ButrId%>"/>
    <input type="hidden" name="TrnsSt" value="<%=TrnsSt%>"/>
    <input type="hidden" name="VatPsvApcYn" value="<%=VatPsvApcYn %>"/>
    <div class="t20"></div>
    <h3>ī�����(����)����</h3>
    <!-- ī�����(����)���� ����Ʈ start -->
    <div class="t10 b20 pop_wh">
      <table  width="100%" border="0" cellspacing="0" cellpadding="0" summary="ī�����(����)���� ����Ʈ" class="tbl_type03">
        <caption>
        ī�����(����)����
        </caption>
        <colgroup>
        <col width="6%"/>
        <col width="12%"/>
        <col width="15%"/>
        <col width="12%"/>
        <col width="10%"/>
        <col width="8%"/>
        <col width="*" span="4"/>
        </colgroup>
        <thead>
          <tr>
            <th scope="col" rowspan="2">���Խ��ι�ȣ</th>
            <th scope="col" rowspan="2">ī���ȣ</th>
            <th scope="col" rowspan="2">�������</th>
            <th scope="col" rowspan="2">��������</th>
            <th scope="col" rowspan="2">��뱸��</th>
            <th scope="col" colspan="4">��볻��</th>
          </tr>
          <tr>
            <th scope="col">���ݾ�</th>
            <th scope="col">���ް���</th>
            <th scope="col">�ΰ���ġ����</th>
            <th scope="col">�����</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="ac"><a href="#dummy" onclick="uf_popup_crd_sel_slip('<%=ButrId%>');"><span style='color:blue;'><%=BuyClctNo %></span></a></td>
            <td class="ac"><%=CrdNo %></td>
            <td class="ac"><%=FormatUtil.setDelim(CrdApvDt,"9999-99-99") %></td>
            <td class="ac"><%=SplrCoNm %></td>
            <td class="ac"><%=CodeUtil.getCode("RND168", OvrsUseDv)%></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(ClmTotlAmt) %></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(SplyAmt)  %></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(VatAmt)  %></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(SrvAmt)  %></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //ī�����(����)���� ����Ʈ end// -->
    <h3>����ǰ��</h3>
    <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div>
                <script>
                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "150", "#FFFFFF", "transparent");
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
    
    <!-- action bt start �ű� ��� : �ΰ��� ȯ�� ��û ���� �ΰ��� ���� ���� -->
    <% if( "N".equals(VatPsvApcYn) && "B04110".equals(TrnsSt)){ %>
        <div class="pop_action_bt ar"> <a href="#dummy" onclick="uf_save_vat()" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a> </div>
    <% } %>
    <!-- //action bt end// -->
    <div class="t10"></div>
    </form>
  </div>
</div>
<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %> 

<script type="text/javascript">
    
    $(document).ready(function() {
        // rMateGrid �ʱ�ȭ
        rMateGridInit();
    }); 
</script>

</body></html>