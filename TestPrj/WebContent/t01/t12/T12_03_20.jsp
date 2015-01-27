<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_20.jsp
 *   Description        : ��Ÿ���� ��񳻿�����ȸ
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
    String AgrmtInstId              = SessionUtil.getRequestValue(request,"AgrmtInstId");
    String AgrmtSeqNo               = SessionUtil.getRequestValue(request,"AgrmtSeqNo");
    String ExctnExecDt              = SessionUtil.getRequestValue(request,"ExctnExecDt");               //����������               
    String ExctnExecTm              = SessionUtil.getRequestValue(request,"ExctnExecTm");               //������ð�
    String TrscDt           = FormatUtil.setDelim(SessionUtil.getRequestValue(request,"TrscDt"),"9999-99-99");                          // �ŷ�����
    String sel_BzExpExctnProcSt     = SessionUtil.getRequestValue(request, "ExctnSt");      //�������ó������
    String sel_BzExpExctnEvdcDv     = StringUtil.null2void(SessionUtil.getRequestValue(request, "TrscEvdcDv"));        //���������������
    String sel_RcvBnkNm             = SessionUtil.getRequestValue(request, "RcvBnkNm");                 //�Ա������
    String sel_RcvAcctNo            = SessionUtil.getRequestValue(request, "RcvAcctNo");                //�Աݰ��¹�ȣ
    String sel_OwacNm               = SessionUtil.getRequestValue(request, "OwacNm");                   //�����ָ�
    String sel_TrnsAmt              = SessionUtil.getRequestValue(request, "TrnsAmt");                  //��ü�ݾ�
    String sel_BzExpExctnImpbYn     = SessionUtil.getRequestValue(request, "BzExpExctnImpbYn");         //�������Ҵɿ���
    String sel_BzExpExctnErrCtt     = SessionUtil.getRequestValue(request, "BzExpExctnErrCtt");         //�������Ҵɻ���
    /********************************************************************************/
    /*                          ������ ����ϳ��� ����                           */
    /********************************************************************************/
    String ButrId                   = SessionUtil.getRequestValue(request,"ButrId");                    //�ŷ�����ID
    String EvdcDv                   = SessionUtil.getRequestValue(request,"EvdcDv");                    //��������           
    String ItxpRegNcnt              = SessionUtil.getRequestValue(request,"ItxpRegNcnt");               //����ϰǼ�               
    String ReprDtlsItxpCd           = SessionUtil.getRequestValue(request,"ReprDtlsItxpCd");            //��ǥ�����ڵ�               
    String ReprDtlsItxpCdNm         = SessionUtil.getRequestValue(request,"ReprDtlsItxpCdNm");          //��ǥ�����ڵ��             
    String ReprSubDtlsItxpCd        = SessionUtil.getRequestValue(request,"ReprSubDtlsItxpCd");         //��ǥ�������ڵ�             
    String ReprSubDtlsItxpCdNm      = SessionUtil.getRequestValue(request,"ReprSubDtlsItxpCdNm");       //��ǥ�������ڵ��           
    String ExctnRegDt               = SessionUtil.getRequestValue(request,"ExctnRegDt");                //���������
    String ExctnRegDrtm             = SessionUtil.getRequestValue(request,"ExctnRegDrtm");              //����Ͻð�
    String PaymUsag                 = SessionUtil.getRequestValue(request,"PaymUsag");                  //���޿뵵 
    String UsePtcl                  = SessionUtil.getRequestValue(request,"PaymUsag");                  //��볻��
    String ExctnStgDv               = SessionUtil.getRequestValue(request,"ExctnStgDv", "1");           //���ܰ�
    String VatPsvApcYn              = SessionUtil.getRequestValue(request,"VatPsvApcYn", "N");;//�ΰ���������û����
    String TrnsSt                   = SessionUtil.getRequestValue(request,"ExctnSt");       //�ŷ�����
    
    
    /****************************************************************************/
    /*                      ������������û��� �ʵ�(������)                 */
    /****************************************************************************/
    String RcvBnkCd             = SessionUtil.getRequestValue(request,"RcvBnkCd");   // �Ա������ڵ�
    String RcvAcctNo            = "";   // �Աݰ��¹�ȣ
    String WdrwPsbkPrtCtt       = "";   // �����������μ�
    String RcvPsbkPrtCtt        = "";   // �ŷ�ó�����μ�
    String TrnsAmt              = "";   // ��ü�ݾ�
    String OwacNm               = "";   // �����ָ�
    String TelNo                = "";   // ��ȭ��ȣ
    String SplrBzRegNo          = "";   // �����ڻ���ڵ�Ϲ�ȣ
    String SplrCoNm             = SessionUtil.getRequestValue(request,"SplrCoNm");       // ������ȸ���        
    String SplrTpbzNm           = "";   // �����ھ�����
    String SplrTpopNm           = "";   // �����ھ��¸�
    String SplrEtcTpbzNm        = "";   // �����ڱ�Ÿ������
    String SplrEtcTpopNm        = "";   // �����ڱ�Ÿ���¸�
    String SplrReprNm           = "";   // �����ڴ�ǥ�ڸ�
    String SplrZipNo            = "";   // �����ڿ����ȣ
    String SplrAdr              = "";   // �������ּ�
    String SplyAmt              = SessionUtil.getRequestValue(request,"UseSplyAmt");   // ���ޱݾ�
    String VatAmt               = SessionUtil.getRequestValue(request,"UseVatAmt");   // �ΰ���ġ����        
 
    RcvBnkCd = "003";
    RcvAcctNo = "555555555550";
    WdrwPsbkPrtCtt = "�ΰǺ�����";
    RcvPsbkPrtCtt = "�ΰǺ�����";
    //TrnsAmt = "1000";
    OwacNm = "������";
    UsePtcl = "������ �ΰǺ�����";
    TelNo = "010-1111-2222";
    SplrBzRegNo = "1111111111";
    SplrTpbzNm = "����";
    SplrTpopNm = "����";
    SplrEtcTpbzNm = "";
    SplrEtcTpopNm = "";
    SplrReprNm = "(��) RCMS";
    SplrZipNo = "";
    SplrAdr = "���������� ������ ȭ�ϵ� 58-4";
    //SplyAmt = "1000";
    //VatAmt = "0";
    //ExctnStgDv = "1";
    
    
%>


<title>���������� ����ȸ(��Ÿ) &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���������� ����ȸ(��Ÿ)</p>
        </div>
        <!-- //head title// --> 
    </div>




<script type="text/javascript">

function SetData(){
    
    var gridValue = [];
    gridValue[0] = {"USE_REG_DT":"2014-01-13 15:44:36","DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_NM":"��������������","MITM_NM":"�ΰǺ�","MITM_NRM":"1/4 ��������������","MITM_UPRC":"2250","MITM_QNT":"1","SPLY_AMT":"2250","VAT_AMT":"0","VAT_AMT2":"0","RMK":"�������ΰǺ�����","TRNS_AMT":"2250","GRIDKEY":"BuitId=U201005264710701&TrnsAmt=2250&DtlsItxpCd=B0102"};
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
		        <DataGridColumn id=\"USE_REG_DT\"         dataField=\"USE_REG_DT\"          headerText=\"�Ͻ�\"           width=\"130\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"���κ��\"       width=\"100\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"������\"         width=\"110\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"ǰ��\"           width=\"90\"     visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"MITM_NRM\"           dataField=\"MITM_NRM\"            headerText=\"�԰�\"           width=\"90\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"MITM_UPRC\"          dataField=\"MITM_UPRC\"           headerText=\"�ܰ�\"           width=\"110\"   visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"MITM_QNT\"           dataField=\"MITM_QNT\"            headerText=\"����\"           width=\"60\"    visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"SPLY_AMT\"           dataField=\"SPLY_AMT\"            headerText=\"���ް���\"       width=\"110\"    visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"VAT_AMT\"            dataField=\"VAT_AMT\"             headerText=\"�ΰ���ġ����\"   width=\"110\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"true\" />\
		        <DataGridColumn id=\"VAT_AMT2\"           dataField=\"VAT_AMT2\"            headerText=\"�������ΰ���\"   width=\"0\"   visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"true\" />\
		        <DataGridColumn id=\"RMK\"                dataField=\"RMK\"                 headerText=\"���\"           width=\"120\"    visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"            headerText=\"���ݾ�\"       width=\"0\"    visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
		        <DataGridColumn id=\"GRIDKEY\"            dataField=\"GRIDKEY\"             headerText=\"GridKey\"        width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
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
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
	                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

        // ������ �ʵ忡 ���� ��ȣ�� �Ѵ�.
        if("VAT_AMT" == dataField){ //�ݾ׼��� �� �հ踦 ��ȣ���Ͽ� �� �ݾ� ����

            var useAmt  = parseFloat(dataRow.TRNS_AMT);     //���ݾ�
            var vatAmt  = parseFloat(dataRow.VAT_AMT);  //�ΰ���ġ����

            gridRoot.setItemFieldAt((useAmt-vatAmt), rowIndex, "SPLY_AMT");
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
            collection.addCellAttributeDetailAt(i, 9, 1, 1, null, 0xEDF2FE);
            //collection.addCellAttributeDetailAt(i, 11, 1, 1, null, 0xEDF2FE);
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
            
            var splyAmt = dataRow.SPLY_AMT; //���ް���
            var vatAmt = dataRow.VAT_AMT;   //�ΰ���ġ����
            var vatAmt2 = dataRow.VAT_AMT2;  //�������ΰ���
            
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
    <!-- ���������� ����ȸ start -->
    <div class="t10 b20 pop_wh">
      <table  width="100%" border="0" cellspacing="0" cellpadding="0" summary="���������� ����ȸ" class="tbl_type03">
        <caption>
        ���������� ����ȸ
        </caption>
        <colgroup>
        <col width="10%"/>
        <col width="10%"/>
        <col width="15%"/>
        <col width="10%"/>
        <col width="15%"/>
        <col width="10%"/>
        <col width="10%"/>
        <col width="20%"/>
        </colgroup>
        <thead>
          <tr>
            <th scope="col">�������</th>
            <th scope="col">������</th>
            <th scope="col">��������</th>
            <th scope="col">�Ա�����</th>
            <th scope="col">�Աݰ��¹�ȣ</th>
            <th scope="col">������</th>
            <th scope="col">��ü�ݾ�</th>
            <th scope="col">�������</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="ac"><%=TrscDt %></td>
            <td class="ac"><%=CodeUtil.getCode("RNDB04_2", sel_BzExpExctnProcSt)%></td>
            <td class="ac"><%=CodeUtil.getCode("RND080", sel_BzExpExctnEvdcDv)%></td>
            <td class="ac"><%=sel_RcvBnkNm %></td>
            <td class="ac"><%=AcctFormatUtil.getAcctForm(sel_RcvAcctNo, RcvBnkCd) %></td>
            <td class="ac"><%=sel_OwacNm %></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(sel_TrnsAmt) %></td>
            <td class="ac"><%=sel_BzExpExctnErrCtt%></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //���������� ����ȸ end// -->
    <h3>�ŷ�ó����</h3>
    <!-- �ŷ�ó���� ������ start -->
    <div class="t10 b20 pop_wh">
      <table  width="100%" border="0" cellspacing="0" cellpadding="0" summary="�ŷ�ó���� ������" class="tbl_type02">
        <caption>
        �ŷ�ó���� ������
        </caption>
        <colgroup>
        <col width="20%"/>
        <col width="30%"/>
        <col width="20%"/>
        <col width="30%"/>
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">�����Ϸù�ȣ</th>
            <td><%=ButrId %></td>
            <th scope="row">����ڹ�ȣ</th>
            <td class="ll"><%=FormatUtil.setDelim(  SplrBzRegNo,"999-99-99999") %></td>
          </tr>
          <tr>
            <th scope="row">��ȣ(���θ�)</th>
            <td><%=SplrCoNm %></td>
            <th scope="row">����</th>
            <td class="ll"><%=SplrTpopNm %></td>
          </tr>
          <tr>
            <th scope="row">����</th>
            <td><%=SplrTpbzNm %></td>
            <th scope="row">������ּ�</th>
            <td class="ll"><%=SplrAdr %></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //�ŷ�ó���� ������ end// -->
    <h3>������ü ��û�׸�</h3>
    <!-- ������ü ��û�׸� ������ start -->
    <div class="t10 b20 pop_wh">
      <table  width="100%" border="0" cellspacing="0" cellpadding="0" summary="������ü ��û�׸� ������" class="tbl_type02">
        <caption>
        ������ü ��û�׸� ������
        </caption>
        <colgroup>
        <col width="20%"/>
        <col width="30%"/>
        <col width="20%"/>
        <col width="30%"/>
        </colgroup>
        <tbody>
	      <tr>
	        <th cope="row">���ܰ豸��</th>
	        <td colspan="3" class="ll">Ÿ������ü(��������°�����ü)</td>
	      </tr>
          <tr>
            <th scope="row">�Աݰ���</th>
            <td>[B ����]&nbsp;<%=AcctFormatUtil.getAcctForm( RcvAcctNo,RcvBnkCd)%></td>
            <th scope="row">������</th>
            <td class="ll"><%=sel_OwacNm%></td>
          </tr>
          <tr>
            <th scope="row">�����������μ�</th>
            <td><%=WdrwPsbkPrtCtt %></td>
            <th scope="row">�ŷ�ó�����μ�</th>
            <td class="ll"><%=RcvPsbkPrtCtt%></td>
          </tr>
          <tr>
            <th scope="col">��ü�ݾ�</th>
            <td><%=FormatUtil.getMoneyForm(TrnsAmt) %></td>
            <th scope="col">��ȭ��ȣ</th>
            <td class="ll"><%=TelNo%></td>
          </tr>
          <tr>
            <th scope="row">���ޱݾ�</th>
            <td><%=FormatUtil.getMoneyForm(SplyAmt) %></td>
            <th scope="row">�ΰ���ġ����</th>
            <td class="ll"><%=FormatUtil.getMoneyForm(VatAmt) %></td>
          </tr>
          <tr>
            <th scope="row">���޿뵵</th>
            <td colspan="3" class="ll"><%=UsePtcl %></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //������ü ��û�׸� ������ end// -->
    <h3>��� �� ǰ��</h3>
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
    <% if( "N".equals(VatPsvApcYn) && "B04110".equals(TrnsSt) ){ %>
    <div class="pop_action_bt ar"> <a href="#dummy" onclick="uf_save_vat();" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a> </div>
    <% } %>
    <!-- //action bt end// -->
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

</body>
</html>    
