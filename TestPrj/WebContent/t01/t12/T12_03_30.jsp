<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_30.jsp
 *   Description        : ���ڼ��ݰ�꼭 ��񳻿�����ȸ
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
    
    
    String AgrmtSeqNo           = SessionUtil.getRequestValue(request, "AgrmtSeqNo");               //�����Ϸù�ȣ
    String ExctnExecDt          = SessionUtil.getRequestValue(request,"ExctnExecDt");               //����������               
    String ExctnExecTm          = SessionUtil.getRequestValue(request,"ExctnExecTm");               //������ð�
    String TrscDt           = FormatUtil.setDelim(SessionUtil.getRequestValue(request,"TrscDt"),"9999-99-99");                          // �ŷ�����
    String sel_BzExpExctnProcSt = SessionUtil.getRequestValue(request, "ExctnSt");                                                          //�������ó������
    String sel_BzExpExctnEvdcDv = CodeUtil.getCode("RND080",  SessionUtil.getRequestValue(request, "TrscEvdcDv"));//�������������
    String sel_RcvBnkNm         = SessionUtil.getRequestValue(request, "RcvBnkNm");                                     //�Ա������
    String sel_RcvAcctNo        = SessionUtil.getRequestValue(request, "RcvAcctNo");                                    //�Աݰ��¹�ȣ
    String sel_OwacNm           = SessionUtil.getRequestValue(request, "OwacNm");                                       //�����ָ�
    String sel_TrnsAmt          = SessionUtil.getRequestValue(request, "TrnsAmt");                                      //��ü�ݾ�
    String sel_BzExpExctnErrCtt = SessionUtil.getRequestValue(request, "BzExpExctnErrCtt");  //�������Ҵɻ���
    /********************************************************************/
    /*                  ������ ����ϳ��� ����                       */
    /********************************************************************/
    String ButrId               = SessionUtil.getRequestValue(request,"ButrId");                    //�����ϷĹ�ȣ(���ڼ��ݰ�꼭)
    String ElecTxblApvNo        = SessionUtil.getRequestValue(request,"TrscEvdcNo");
    String EvdcDv               = SessionUtil.getRequestValue(request,"EvdcDv");                    //��������                   
    String ItxpRegNcnt          = SessionUtil.getRequestValue(request,"ItxpRegNcnt");               //����ϰǼ�               
    String ReprDtlsItxpCd       = SessionUtil.getRequestValue(request,"ReprDtlsItxpCd");            //��ǥ�����ڵ�               
    String ReprDtlsItxpCdNm     = SessionUtil.getRequestValue(request,"ReprDtlsItxpCdNm");          //��ǥ�����ڵ��             
    String ReprSubDtlsItxpCd    = SessionUtil.getRequestValue(request,"ReprSubDtlsItxpCd");         //��ǥ�������ڵ�             
    String ReprSubDtlsItxpCdNm  = SessionUtil.getRequestValue(request,"ReprSubDtlsItxpCdNm");       //��ǥ�������ڵ��           
    String ExctnRegDt           = SessionUtil.getRequestValue(request,"ExctnRegDt");                //���������
    String ExctnRegDrtm         = SessionUtil.getRequestValue(request,"ExctnRegDrtm");              //����Ͻð�
    String BzMomAcctBnkCd       = null;                        //�������������ڵ�         
    String BzMomAcctNo          = null;                           //�������¹�ȣ             
    String RchExpAcctBnkCd      = null;                       //��������������ڵ�         
    String RchExpAcctNo         = null;                          //��������¹�ȣ
    String PaymUsag             = SessionUtil.getRequestValue(request,"PaymUsag");                  //���޿뵵 
    String ExctnBizDvCd         = SessionUtil.getRequestValue(request,"ExctnBizDvCd");              //�����������ڵ�           
    String ExctnStgDv           = SessionUtil.getRequestValue(request,"ExctnStgDv");                //���ܰ豸��      
    
    /********************************************************************************/
    /*                   ������������û��� �ʵ�(������)                        */
    /********************************************************************************/
    String RcvBnkCd                 = "";   // �Ա������ڵ�
    String RcvAcctNo                = "";           // �Աݰ��¹�ȣ
    String WdrwPsbkPrtCtt           = "";           // �����������μ�
    String RcvPsbkPrtCtt            = "";           // �ŷ�ó�����μ�
    String TrnsAmt                  = "";           // ��ü�ݾ�
    String OwacNm                   = "";           // �����ָ�
    String UsePtcl                  = "";           // ��볻��
    String TelNo                    = "";           // ��ȭ��ȣ
    String SplrBzRegNo              = "";           // �����ڻ���ڵ�Ϲ�ȣ
    String SplrCoNm                 = "";           // ������ȸ���
    String SplrTpbzNm               = "";           // �����ھ�����
    String SplrTpopNm               = "";           // �����ھ��¸�
    String SplrEtcTpbzNm            = "";           // �����ڱ�Ÿ������
    String SplrEtcTpopNm            = "";           // �����ڱ�Ÿ���¸�
    String SplrReprNm               = "";           // �����ڴ�ǥ�ڸ�
    String SplrZipNo                = "";           // �����ڿ����ȣ
    String SplrAdr                  = "";           // �������ּ�
    String SplyAmt                  = "";           // ���ޱݾ�
    String VatAmt                   = "";           // �ΰ���ġ����
    String Rmk                      = "";           // ���
    String ReptNcnt                 = "";           // �ݺ��Ǽ�    
        
    
    
    
    
    RcvBnkCd        = "003";
    RcvAcctNo       = "555555555550";
    WdrwPsbkPrtCtt  = "";
    RcvPsbkPrtCtt   = "";
    TrnsAmt         = "2500";
    OwacNm          = "������";
    UsePtcl         = "��ǰ���Ժ�";
    TelNo           = "01011112222";
    SplrBzRegNo     = "1001010000";
    SplrCoNm        = "(��) �� ��ü";
    SplrTpbzNm      = "����";
    SplrTpopNm      = "����";
    SplrEtcTpbzNm   = "";
    SplrEtcTpopNm   = "";
    SplrReprNm      = "������";
    SplrZipNo       = "";
    SplrAdr         = "��õ������ ������ ������ 1138";
    SplyAmt         = "5000";
    VatAmt          = "500";
    Rmk             = "";
    ReptNcnt        = "1";

%>


<title>���������� ����ȸ(���ڼ��ݰ�꼭) &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���������� ����ȸ(���ڼ��ݰ�꼭)</p>
        </div>
        <!-- //head title// --> 
    </div>




<script type="text/javascript">

function SetData(){
    
    var gridValue = [];
    gridValue[0] = {"USE_REG_DT":"2014-01-10 17:52:56","DTLS_ITXP_NM":"�ܺ��ΰǺ�","SUB_DTLS_ITXP_NM":"�ܺ��ΰǺ�","MITM_NM":"��м�����","MITM_NRM":"","MITM_UPRC":"0","MITM_QNT":"0","SPLY_AMT":"2500","VAT_AMT":"250","RMK":""};
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
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" lockedColumnCount=\"1\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\"  >\
            <columns>\
                <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" editable=\"false\" />\
                <DataGridColumn id=\"USE_REG_DT\"         dataField=\"USE_REG_DT\"          headerText=\"�Ͻ�\"           width=\"120\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"���κ��\"       width=\"120\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"������\"         width=\"120\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"ǰ��\"           width=\"120\"     visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_NRM\"           dataField=\"MITM_NRM\"            headerText=\"�԰�\"           width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_UPRC\"          dataField=\"MITM_UPRC\"           headerText=\"�ܰ�\"           width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"MITM_QNT\"           dataField=\"MITM_QNT\"            headerText=\"����\"           width=\"50\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"SPLY_AMT\"           dataField=\"SPLY_AMT\"            headerText=\"���ް���\"       width=\"100\"    visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"VAT_AMT\"            dataField=\"VAT_AMT\"             headerText=\"�ΰ���ġ����\"   width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
                <DataGridColumn id=\"RMK\"                dataField=\"RMK\"                 headerText=\"���\"           width=\"120\"    visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" editable=\"false\" />\
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

    };
    

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



    
<div id="body">
<form name="frm" action="">
  <!-- content start -->
  <div id="content">
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
            <td class="ac"><%=CodeUtil.getCode("RNDB04_2",sel_BzExpExctnProcSt) %></td>
            <td class="ac"><%=sel_BzExpExctnEvdcDv %></td>
            <td class="ac"><%=sel_RcvBnkNm %></td>
            <td class="ac"><%=AcctFormatUtil.getAcctForm(sel_RcvAcctNo, RcvBnkCd)%></td>
            <td class="ac"><%=sel_OwacNm %></td>
            <td class="ar"><%=FormatUtil.getMoneyForm(sel_TrnsAmt) %></td>
            <td class="ac"><%=sel_BzExpExctnErrCtt %></td>
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
            <th scope="row">���ݰ�꼭</th>
            <td><a href="#dummy" onclick="uf_popup_evdc_dtls_brws(document.frm, '<%=ButrId%>', 'T');"><span style='color:blue;'><%=ElecTxblApvNo %></span></a></td>
            <th scope="row">����ڹ�ȣ</th>
            <td class="ll"><%=FormatUtil.setDelim(SplrBzRegNo,"999-99-99999") %></td>
          </tr>
          <tr>
            <th scope="row">��ȣ(���θ�)</th>
            <td><%=SplrCoNm %></td>
            <th scope="row">����(��ǥ��)</th>
            <td class="ll"><%=SplrReprNm %></td>
          </tr>
          <tr>
            <th scope="row">����</th>
            <td><%=SplrTpopNm %></td>
            <th scope="row">����</th>
            <td class="ll"><%=SplrTpbzNm %></td>
          </tr>
          <tr>
            <th scope="row">������ּ�</th>
            <td colspan="3" class="ll"><%=SplrAdr %></td>
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
            <th scope="row">�Աݰ���</th>
            <td>[<%=CodeUtil.getCode("BNK_CD_SUB", RcvBnkCd)%>]&nbsp;<%=AcctFormatUtil.getAcctForm(RcvAcctNo, RcvBnkCd)%></td>
            <th scope="row">������</th>
            <td class="ll"><%=OwacNm %></td>
          </tr>
          <tr>
            <th scope="row">����������ǥ�ó���</th>
            <td><%=WdrwPsbkPrtCtt %></td>
            <th scope="row">�ŷ�ó����ǥ�ó���</th>
            <td class="ll"><%=RcvPsbkPrtCtt %></td>
          </tr>
          <tr>
            <th scope="row">��ü�ݾ�</th>
            <td><%=FormatUtil.getMoneyForm(TrnsAmt) %></td>
            <th scope="row">��ȭ��ȣ</th>
            <td class="ll"><%=TelNo%></td>
          </tr>
          <tr>
            <th scope="row">���޿뵵</th>
            <td><%=FormatUtil.getMoneyForm(SplyAmt )%></td>
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