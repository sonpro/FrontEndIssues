<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_02_20.jsp
 *   Description        : ����������� 
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014. 01. 07                   ������             
 *
 *  @author ������
 *  @Since  2014. 01. 07
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
<%@ include file="/inc/jspHead.jsp" %>
<%@ page import="java.util.Hashtable" %>
<%@ page import="kr.go.rcms.web.data.*" %>
<!-- //head end -->

<%


    // 2012.02.07 �µ��� START
    // �������������� ����� ����ID, ������ �߰�
    String[] SbjtId         = SessionUtil.getRequestValues(request, "SbjtId");                  // ����ID
    String[] SbjtNm         = SessionUtil.getRequestValues(request, "SbjtNm");                  // ������
    Hashtable<String, Integer> tmpSbjtId    = new Hashtable<String, Integer>();
    
    int sbjtCnt             = 0;
    boolean check           = false;
    String msgSbjtCnt       = "";
    
    for(int i=0; i<SbjtId.length; i++){
        if(tmpSbjtId.containsKey(SbjtId[i])){
            tmpSbjtId.put(SbjtId[i], tmpSbjtId.get(SbjtId[i])+1);
        }else{
            tmpSbjtId.put(SbjtId[i], 1);
        }
    }
    if(tmpSbjtId.size() > 1){
        msgSbjtCnt = " �� " + Integer.toString(tmpSbjtId.size()-1) + "��";
    }
    // 2012.02.07 �µ��� END
    
    // 2012.07.31 �µ��� START
    // ������ ["], ['] ��ȣ ����
    for(int i=0; i<SbjtId.length; i++){
        SbjtNm[i] = SbjtNm[i].replaceAll("\"", " ");
        SbjtNm[i] = SbjtNm[i].replaceAll("\'", " ");
    }
    // 2012.07.31 �µ��� END
    
    String[] ExctnRegDt     = SessionUtil.getRequestValues(request, "ExctnRegDt");              // ���������
    String[] ExctnRegDrtm   = SessionUtil.getRequestValues(request, "ExctnRegDrtm");            // ����Ͻð�
    String[] EvdcDv         = SessionUtil.getRequestValues(request, "BzExpExctnEvdcDv");        // �����������뱸��
    String[] ButrId         = SessionUtil.getRequestValues(request, "ButrId");              // �����Ϸù�ȣ
    String[] RcvBnkCd       = SessionUtil.getRequestValues(request, "RcvBnkCd");                // �Ա������ڵ�
    String[] RcvBnkNm       = SessionUtil.getRequestValues(request, "RcvBnkNm");                // �Ա������
    String[] RcvAcctNo      = SessionUtil.getRequestValues(request, "RcvAcctNo");               // �Աݰ��¹�ȣ
    String[] RcvPsbkPrtCtt  = SessionUtil.getRequestValues(request, "RcvPsbkPrtCtt");           // �ŷ�ó����ǥ��
    String[] WdrwPsbkPrtCtt = SessionUtil.getRequestValues(request, "WdrwPsbkPrtCtt");          // ����������ǥ��
    String[] TrnsAmt        = SessionUtil.getRequestValues(request, "BzExpExctnAmt");           // �������ݾ�
    String[] SplyAmt        = SessionUtil.getRequestValues(request, "SplyAmt");                 // ���ޱݾ�
    String[] VatAmt         = SessionUtil.getRequestValues(request, "VatAmt");                  // �ΰ���ġ����
    String[] UsePtcl        = SessionUtil.getRequestValues(request, "PaymUsag");                // ��볻��
    String[] OwacNm         = SessionUtil.getRequestValues(request, "OwacNm");                  // �����ָ�
    String[] TelNo          = SessionUtil.getRequestValues(request, "TelNo");                   // ��ȭ��ȣ
    String[] AgrmtSeqNo     = SessionUtil.getRequestValues(request, "AgrmtSeqNo");              // �����Ϸù�ȣ
    String[] AgrmtInstId    = SessionUtil.getRequestValues(request, "AgrmtInstId");             // ������ID
    String[] BzMomAcctBnkCd = SessionUtil.getRequestValues(request, "BzMomAcctBnkCd");          // �������������ڵ�
    String[] RchExpAcctBnkCd= SessionUtil.getRequestValues(request, "RchExpAcctBnkCd");         // ��������������ڵ�
    String[] BzMomAcctNo    = SessionUtil.getRequestValues(request, "BzMomAcctNo");             // �������¹�ȣ
    String[] RchExpAcctNo   = SessionUtil.getRequestValues(request, "RchExpAcctNo");            // ��������¹�ȣ
    String[] AgrmtInstBzRegNo   = SessionUtil.getRequestValues(request, "AgrmtInstBzRegNo");        // ����������ڵ�Ϲ�ȣ
    String[] AchvInstIndv1Cd    = SessionUtil.getRequestValues(request, "AchvInstIndv1Cd");             // ����밳���ڵ�
    String[] AchvInstIndv2Cd    = SessionUtil.getRequestValues(request, "AchvInstIndv2Cd");             // ����밳���ڵ�1
    String[] ExctnSt            = SessionUtil.getRequestValues(request, "ExctnSt");             // �������
    
    long TrnsAmtSum = 0L;
    
    StringBuffer sbOtmAmt = new StringBuffer(); 
    StringBuffer SignedMsg = new StringBuffer();
    
    for(int i=0; i<ExctnRegDt.length; i++){
        SignedMsg.append("ExctnRegDt=").append(ExctnRegDt[i]);
        SignedMsg.append("&ExctnRegDrtm=").append(ExctnRegDrtm[i]);
        SignedMsg.append("&EvdcDv=").append(EvdcDv[i]);
        SignedMsg.append("&ButrId=").append(ButrId[i]);
        SignedMsg.append("&RchExpAcctBnkCd=").append("003");
        SignedMsg.append("&RchExpAcctNo=").append("08203000000220");
        SignedMsg.append("&RcvBnkCd=").append(RcvBnkCd[i]);
        SignedMsg.append("&RcvAcctNo=").append(RcvAcctNo[i]);
        SignedMsg.append("&TrnsAmt=").append(TrnsAmt[i]);
        SignedMsg.append( "|" );
        
        TrnsAmtSum += Long.parseLong(TrnsAmt[i]);
        
        sbOtmAmt.append(TrnsAmt[i]);
        if( i!=(ExctnRegDt.length-1) ) sbOtmAmt.append("|");
    }
    
    
    
%>


<title>����������� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body class="line">

<ul id="accessibility">
    <li><a href="#header">�ָ޴��ٷΰ���</a></li>
    <li><a href="#contaniner">�������ٷΰ���</a></li>
    <li><a href="#footer">�ϴܹٷΰ���</a></li>
</ul>
<hr/>
<noscript><p id="warning_script">�ڹٽ�ũ��Ʈ�� �������� ���� �� �������� ���������� ������ ���� �� �ֽ��ϴ�.</p></noscript>
<div id="wrapper">

    <!-- //header topMenu start// -->
    <%@ include file="/inc/topMenu.jsp" %>
    <!-- //header topMenu end// -->
    
    <!-- contaniner start -->
    <div id="contaniner">
        <!-- left start -->
        <div class="snb">
            <!-- left menu start -->
            




                    <div><img src="/images/pefo/sub_navt1.gif" alt="���������" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_txt">��Ȳ��ȸ</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_3dep">�������� ��Ȳ��ȸ</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>
                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_txt_on">�����������</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep">�����</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_02_00.jsp'); return false;" class="menu_3dep_on">������</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_03_00.jsp'); return false;" class="menu_3dep">��������� ��ȸ</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_txt">������ϰ���</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_3dep">������ϳ��� ��ȸ</a></li>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_02_00.jsp'); return false;" class="menu_3dep">������볻�� ���</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>

                        </div>
                    </div>
                    <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->


<script type="text/javascript">


function uf_tran(){
    var frm = document.frm;

    var dataRow;
    var gridCnt = getGridRowCount_rMate(gridRoot_file);
    
    for(var i=0;i<gridCnt;i++){
        dataRow = gridRoot_file.getItemAt(i);
        if(dataRow.RTN_VALUE == "����"){
            alert("��� ���� ���� [" + dataRow.FILE_NM + "] �� ��� �����Ͽ����ϴ�. \"������\"->\"�����/����\" ���� ���� ���ֽñ� �ٶ��ϴ�.\n���Ͻÿ��� ������ �߻��ϸ� �����ͷ� �����ֽñ� �ٶ��ϴ�.");
        }
    }
    
    if(frm.ExctnPw.value == ""){
        alert("�ʼ��׸��� �ݵ�� �Է��ϼž� �մϴ�. \n\n * �ʼ��Է� �׸� : ��ü��й�ȣ");
        return;
    }
    
    

    if( isSubmit() ) return;            // ����ó��
    
    var url = "/pop/sign_popup.jsp";
    var obj = "���� ����� ������ ����";
    var style = "dialogWidth:441px;dialogHeight:475px;center:yes;scroll:no;resizable:no;status:no;";
    var reValue = window.showModalDialog(url, obj, style);
    if(reValue == undefined){
        reValue = window.returnValue;
    }
    
    if(reValue == "ok"){
        uf_proce_display_on();  //�ε���
        setTimeout(
            function(){
                try{   
                    document.body.setCapture(); // 'wait'
                    document.body.style.cursor = "wait";
                    alert("��ü��û ó���Ǿ����ϴ�.\n\n��ü��ûó������� ������������ȸ���� Ȯ���Ͻñ� �ٶ��ϴ�.");
                    document.body.style.cursor = "auto";
                    document.body.releaseCapture(); //setCapture()_Next
                }finally{
                    fn_url("/t01/t12/T12_02_00.jsp");
                }
            
            }, 1000);   // 1���� ���� 1000 = 1��s
    }
    return;

                
                
}

function uf_detail(EvdcDv, ButrId, AgrmtInstId, AgrmtSeqNo){
    var frm = document.frm;
    
    if( !(isGrid && isGrid_file)) return;
    
    if(!isLoading) isLoading = true; // �׸��� �ʱ�ȭ�� �ߺ�ó�� ���� �ʱ����ؼ� ó��
    
    rMateGridLayoutInit_rMate();
    rMateGridLayoutInit_rMate(gridRoot_file, gridApp_file, layoutStr_file);
    uf_proce_display_on();  //�ε���

    setTimeout(
            function(){
                    try{   
                        //if(!isLoading) isLoading = true; // �׸��� �ʱ�ȭ�� �ߺ�ó�� ���� �ʱ����ؼ� ó��
                        document.body.setCapture(); // 'wait'
                        document.body.style.cursor = "wait";
                        search(EvdcDv);
                        document.body.style.cursor = "auto";
                        document.body.releaseCapture(); //setCapture()_Next
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
    
}


</script>









<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//���̾ƿ� ����
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"����\" width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"�������\"       width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"���κ���ڵ�\"   width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"���κ��\"       width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"�������ڵ�\"     width=\"0\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"������\"         width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_BTN\"      dataField=\"DTLS_ITXP_BTN\"       headerText=\"���񺯰�\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MITM_NM\"            dataField=\"MITM_NM\"             headerText=\"ǰ��\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MITM_NRM\"           dataField=\"MITM_NRM\"            headerText=\"�԰�\"           width=\"50\"  visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MITM_UPRC\"          dataField=\"MITM_UPRC\"           headerText=\"�ܰ�\"           width=\"90\"  visible=\"false\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MITM_QNT\"           dataField=\"MITM_QNT\"            headerText=\"����\"           width=\"50\"  visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SPLY_AMT\"           dataField=\"SPLY_AMT\"            headerText=\"���ޱݾ�\"       width=\"90\"  visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"VAT_AMT\"            dataField=\"VAT_AMT\"             headerText=\"�ΰ���ġ����\"   width=\"90\"  visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITEM_RMK\"           dataField=\"ITEM_RMK\"            headerText=\"���\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTL_SB_MITM_SEQ\"    dataField=\"DTL_SB_MITM_SEQ\"     headerText=\"����ǰ�����\"   width=\"100\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{SUB_DTLS_ITXP_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
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



//���̾ƿ� ����
var layoutStr_file = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1_file\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"�����\"     width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"�������\"   width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FILE_NM\"            dataField=\"FILE_NM\"             headerText=\"���ϸ�\"     width=\"200\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RTN_VALUE\"          dataField=\"RTN_VALUE\"           headerText=\"��ȯ����\"   width=\"70\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ERRMSG\"             dataField=\"ERRMSG\"              headerText=\"�޽���\"     width=\"200\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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

//rMateGrid�� bridge ���� �ٸ��� �־� �ڹٽ�ũ��Ʈ���� ������ �� �ֵ��� �մϴ�.
var flashVars_file = "dataType=json&bridgeName=gridBridge_file";

//rMateGrid ���� ��ü
var gridApp_file; // �÷��� �⺻ ��ü
var gridData_file; // �׸��� ������ ���
var gridRoot_file; // ����Ÿ�� �׸��带 �����ϴ� ��ü
var dataGrid_file; // �׸��� ���� ���

//rMateGrid �ε��� �Ϸ� �� �� ��ȸ�� ����
var isGrid = false;
var isGrid_file = false;
var isLoading = false;

// ó�� ��ȸ�ÿ��� �ڵ���ȸ�� �̷�� ���� �Ѵ�.
function layoutComplete_rMate(){
    isGrid = true;
    if(isLoading) return;  //ó����ȸ�� isLoading�� true�� �����Ͽ� �ڵ���ȸ�� �ǰ� �ϰ�, �ι�°���ʹ� �ڵ���ȸ�� ���� �ʰ��Ѵ�.
    go_uf_detail();
}
function layoutComplete_file(){
    isGrid_file = true;
    if(isLoading) return;  //ó����ȸ�� isLoading�� true�� �����Ͽ� �ڵ���ȸ�� �ǰ� �ϰ�, �ι�°���ʹ� �ڵ���ȸ�� ���� �ʰ��Ѵ�.
    go_uf_detail();
}

//�׸��� ���̾ƿ� ȣ�� 
var rMateGridInitLayout = function() {
    gridApp = FABridge.gridBridge.root();
    gridRoot = gridApp.getGridRoot();
    gridApp.setLayout(layoutStr); //�׸��� ���̾ƿ� ����

    //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
    var itemDoubleClickHandler = function(event) {
        
        var rowIndex = event.getRowIndex();
        var columnIndex = event.getColumnIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        var column = dataGrid.getColumns()[columnIndex];
        var dataField = column.getDataField();
        
        //popupDetail(rowIndex, dataRow);
        layerDetail(dataGrid, dataRow);
        
    };

    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //�̺�Ʈ ���
        //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
        //dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    gridRoot.addEventListener("layoutComplete", layoutComplete_rMate);
    
};


//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//�ε� �� rMadeGrid ���
function rMateGridSetData() {
    //rMageGrid �ʱ�ȭ
    //gridApp.setData(null);

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //������ ���
    
    
    // ���콺 �� �̺�Ʈ �����ʸ� �����մϴ�.
    //addGridMouseWheelEventListener();

    
};




//�׸��� ���̾ƿ� ȣ�� 
var rMateGridInitLayout_file = function() {
  gridApp_file = FABridge.gridBridge_file.root();
  gridRoot_file = gridApp_file.getGridRoot();
  gridApp_file.setLayout(layoutStr_file); //�׸��� ���̾ƿ� ����

  //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
  var itemDoubleClickHandler_file = function(event) {
      
      var rowIndex = event.getRowIndex();
      var columnIndex = event.getColumnIndex();
      var dataRow = gridRoot_file.getItemAt(rowIndex);
      var column = dataGrid_file.getColumns()[columnIndex];
      var dataField = column.getDataField();
      
      //popupDetail(rowIndex, dataRow);
      layerDetail(dataGrid_file, dataRow);
      
  };

  var layoutCompleteHandler_file = function(event) {
      dataGrid_file = gridApp_file.getDataGrid();
      
      //�̺�Ʈ ���
      //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler_file); //����Ŭ�� �̺�Ʈ
      //dataGrid.addEventListener("itemClick", itemClickHandler_file); //��Ŭ�� �̺�Ʈ 
  };

  
  
  gridRoot_file.addEventListener("layoutComplete", layoutCompleteHandler_file);
  gridRoot_file.addEventListener("layoutComplete", layoutComplete_file);
  
};


//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge_file", rMateGridInitLayout_file);

//�ε� �� rMadeGrid ���
function rMateGridSetData_file() {
  //rMageGrid �ʱ�ȭ
  //gridApp.setData(null);

  gridApp_file = FABridge.gridBridge_file.root();  
  gridApp_file.setData(JSON.stringify(gridData_file)); //������ ���
  
  
  // ���콺 �� �̺�Ʈ �����ʸ� �����մϴ�.
  //addGridMouseWheelEventListener();

  
};


    
    



//���κ�� �˾� ( ���� ��Ÿ�ϰ� ���� �����ϰ� ��� )
function uf_Click(rowIndex, columnIndex, dataRow, dataField) {

    editRowIndex = rowIndex; //����idx
    editDataRow = dataRow; //����data
    editDataField = dataField;

    get2post(document.frm, "AgrmtInstId=" + editDataRow.AGRMT_INST_ID); //������ID
    get2post(document.frm, "AgrmtSeqNo=" + editDataRow.AGRMT_SEQ_NO); //�����Ϸù�ȣ
    get2post(document.frm, "DtlsItxpCd=" + editDataRow.ITXP_CD); //���κ���ڵ�
    get2post(document.frm, "HgrkItxpNm=" + editDataRow.HGRK_ITXP_NM); //���
    get2post(document.frm, "DtlsItxpNm=" + editDataRow.ITXP_NM); //���κ��

    //uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_10.jsp', 'TAXVIEW1', '800', '500', 'yes');
    uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_10.jsp', 'TAXVIEW1', '800', '1000', 'yes');
    removeTempAttribute(document.frm); //get2post ����

}

//�󼼺��� - �Ʒ� ���̾� �˾����� ����  layerDetail(dataRow)
function popupDetail(rowIndex, dataRow) {

    var columns = dataGrid.getColumns();
    var popHeaderObj;
    var popHeadeData = "";
    var columnObj = {};
    
    var headerLength = 0;
    
    //headerText ��������
    for ( var i = 0; i < columns.length; i++){
        if (columns[i].getVisible()) {
            columnObj = dataGrid.getColumns()[i];
            if(popHeadeData != "") popHeadeData += ",";
            popHeadeData += "\"" + columnObj.getDataField() + "\":\"" + columnObj.getHeaderText() + "\"";
            headerLength++;
        }
    }
    
    //JSON ���·� ��ȯ
    popHeadeData = "{" + popHeadeData + "}";
    popHeaderObj = JSON.parse(popHeadeData);
    
    get2post(document.frm, "dataHeader="+JSON.stringify(popHeaderObj));
    get2post(document.frm, "dataRow="+JSON.stringify(dataRow));
    
    //�˾�â ���� ����
    var url = "/rMateGrid/detail_popup.jsp";
    var height = 30 + ( 21 * headerLength);
    uf_frmNewWinNsScrNo(document.frm, url, "GRIDATA", "340", height);
    
    removeTempAttribute(document.frm);  //get2post ����
}



</script>
<!-- **********************  rMateGrid setting END ***********************  -->





    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u12_02_00_t.gif" alt="������"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>���������</li>
                       <li><img src="/images/common/arr.gif" alt=" " />�����������</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">������</span></li>
                        
                    </ul>
                </div>
            </div> 
      <!-- //pagenav end// -->
      <div class="t20"></div>
      <h3>��볻��Ȯ��</h3>
        <form name="frm" method="post">      
      <div class="t10 b10">
        <table width="704" border="0" cellspacing="0" cellpadding="0" summary="��볻��Ȯ�� �󼼳���" class="tbl_type03">
          <caption>
          ��볻��Ȯ�� �󼼳���
          </caption>
          <colgroup>
          <col width="6%" />
          <col width="10%"/>
          <col width="10%" />
          <col width="10%"/>
          <col width="14%" />
          <col width="15%"/>
          <col width="15%" />
          <col width="20%"/>
          </colgroup>
          <tbody>
            <tr>
              <th scope="col">����</th>
              <th scope="col">�Ա�����</th>
              <th scope="col">�Աݰ���</th>
              <th scope="col">������</th>
              <th scope="col">��ü�ݾ�</th>
              <th scope="col">��������</th>
              <th scope="col">����������ǥ��</th>
              <th scope="col">�ŷ�ó����ǥ��</th>
            </tr>
            <input type="hidden" name="SignedSize" value="<%=ExctnRegDt.length%>" />        <!-- ���������  -->
                        <%
                            String checked = "";
                            for(int i=0; i<ExctnRegDt.length; i++){
                                
                                if(i==0){
                                    checked = "checked";
                                }else{
                                    checked = "";
                                }
                        %>
                            <input type="hidden" name="ExctnRegDt"      value="<%=ExctnRegDt[i]%>" />           <!-- ���������  -->
                            <input type="hidden" name="ExctnRegDrtm"    value="<%=ExctnRegDrtm[i]%>" />     <!-- ����Ͻð�  -->
                            <input type="hidden" name="EvdcDv"          value="<%=EvdcDv[i]%>" />                   <!-- �����������뱸��  -->
                            <input type="hidden" name="ButrId"          value="<%=ButrId[i]%>" />               <!-- �ŷ�����ID  -->
                            <input type="hidden" name="RcvBnkCd"        value="<%=RcvBnkCd[i]%>" />             <!-- �Ա������ڵ�  -->
                            <input type="hidden" name="RcvBnkNm"        value="<%=RcvBnkNm[i]%>" />             <!-- �Ա������  -->
                            <input type="hidden" name="RcvAcctNo"       value="<%=RcvAcctNo[i]%>" />                <!-- �Աݰ��¹�ȣ  -->
                            <input type="hidden" name="RcvPsbkPrtCtt"   value="<%=RcvPsbkPrtCtt[i]%>" />        <!-- �ŷ�ó�����μ�  -->
                            <input type="hidden" name="WdrwPsbkPrtCtt"  value="<%=WdrwPsbkPrtCtt[i]%>" />   <!-- ����������ǥ��-->
                            <input type="hidden" name="TrnsAmt"         value="<%=TrnsAmt[i]%>" />                  <!-- �������ݾ�  -->
                            <input type="hidden" name="SplyAmt"         value="<%=SplyAmt[i]%>" />                  <!-- ���ޱݾ�  -->
                            <input type="hidden" name="VatAmt"          value="<%=VatAmt[i]%>" />                   <!-- �ΰ���ġ����  -->
                            <input type="hidden" name="UsePtcl"         value="<%=org.apache.commons.lang.StringEscapeUtils.escapeHtml(UsePtcl[i])%>" />                    <!-- ��볻��  -->
                            <input type="hidden" name="OwacNm"          value="<%=OwacNm[i]%>" />                   <!-- �����ָ�  -->
                            <input type="hidden" name="TelNo"           value="<%=TelNo[i]%>" />                        <!-- ��ȭ��ȣ  -->
                            <input type="hidden" name="AgrmtSeqNo"      value="<%=AgrmtSeqNo[i]%>" />           <!-- �����Ϸù�ȣ  -->
                            <input type="hidden" name="AgrmtInstId"         value="<%=AgrmtInstId[i]%>" />          <!-- ������ID  -->
                            <input type="hidden" name="BzMomAcctBnkCd"      value="<%=BzMomAcctBnkCd[i]%>" />   <!-- �������������ڵ�  -->
                            <input type="hidden" name="RchExpAcctBnkCd"     value="<%=RchExpAcctBnkCd[i]%>" />  <!-- ��������������ڵ�  -->
                            <input type="hidden" name="BzMomAcctNo"         value="<%=BzMomAcctNo[i]%>" />          <!-- �������¹�ȣ  -->
                            <input type="hidden" name="RchExpAcctNo"        value="<%=RchExpAcctNo[i]%>" />     <!-- ��������¹�ȣ  -->
                            <input type="hidden" name="AgrmtInstBzRegNo"    value="<%=AgrmtInstBzRegNo[i]%>" /><!-- ����������ڵ�Ϲ�ȣ  -->
                            <input type="hidden" name="AchvInstIndv1Cd"     value="<%=AchvInstIndv1Cd[i]%>" />      <!-- ����밳���ڵ�  -->
                            <input type="hidden" name="AchvInstIndv2Cd"     value="<%=AchvInstIndv2Cd[i]%>" />      <!-- ����밳���ڵ�1  -->
                            <input type="hidden" name="ExctnSt"     value="<%=ExctnSt[i]%>" />      <!-- ����밳���ڵ�1  -->
            
            <tr>
              <td class="ac"><input name="sel_radio" type="radio" value="" onclick="uf_detail('<%=EvdcDv[i]%>', '<%=ButrId[i] %>','<%=AgrmtInstId[i]%>','<%=AgrmtSeqNo[i]%>')"  <%=checked%> /></td>
              <td class="ac"><%=RcvBnkNm[i]%></td>
              <td class="ac"><%=RcvAcctNo[i]%></td>
              <td class="ac"><%=OwacNm[i]%></td>
              <td class="ar"><%=FormatUtil.getMoneyForm(TrnsAmt[i])%></td>
              <td><%=CodeUtil.getCode("RND080", EvdcDv[i])%></td>
              <td><%=WdrwPsbkPrtCtt[i] %></td>
              <td><%=RcvPsbkPrtCtt[i] %></td>
            </tr>
                        <%
                            }
                        %>            
          </tbody>
          <tfoot>
          </tfoot>
        </table>
      </div>
      <div class="b10">
          <p class="guide_bu">��ü��й�ȣ 5ȸ ���� �� ���� �� ����ϼž� �մϴ�.</p>
      </div>
      <div class="userpass_box">
         <span class="userpass">* ��ü ��й�ȣ</span> 
         <input type="password" name="ExctnPw" id="ExctnPw" class="userpass_input" datatype="NA" value="" maxlength="15" size="30" notnull colname="��ü��й�ȣ" enc="on"/> 
         <a href="#dummy" onclick="uf_tran();"><img src="/bt/bt_transfer1.gif" alt="��ü��û"/></a>
      </div>
      
      <h3>��������</h3>
      <div class="t10"></div>
      <h4>�ŷ�ó����</h4>
      <div class="t10 b10">
        <table width="704" border="0" cellspacing="0" cellpadding="0" summary="�ŷ�ó���� �󼼳���" class="tbl_type02">
          <caption>
          �ŷ�ó���� �󼼳���
          </caption>
          <colgroup>
          <col width="20%" />
          <col width="30%"/>
          <col width="20%" />
          <col width="30%"/>
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">����ڹ�ȣ</th>
              <td colspan="3" class="ll" id="idSplrBzRegNo"></td>
            </tr>
            <tr>
              <th scope="row">��ȣ(���θ�)</th>
              <td class="ll" id="idSplrCoNm"></td>
              <th scope="row">����(��ǥ��)</th>
              <td class="ll" id="idSplrReprNm"></td>
            </tr>
            <tr>
              <th scope="row">������ּ�</th>
              <td colspan="3" class="ll" id="idSplrAdr"></td>
            </tr>
            <tr>
              <th scope="row">����</th>
              <td class="ll" id="idSplrTpopNm"></td>
              <th scope="row">����</th>
              <td class="ll" id="idSplrTpbzNm"></td>
            </tr>
          </tbody>
        </table>
      </div>

      <h4>��� �� ǰ��</h4>
      <div class="t10"></div>
      <!-- �׸��� start -->
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv" style="width:100%;">
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
      <!-- //�׸��� end// -->
      <div class="t10"></div>
      <h4>��� ���� ����</h4>
      <div class="t10"></div>
      <!-- �׸��� start -->
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv_file" style="width:100%;">
                <script>
                 rMateGridCreate("grid_file", "/rMateGrid/Component/rMateGridWeb", flashVars_file, "100%", "100", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->      
      <!-- //�׸��� end// -->
      </form>
      
    </div>
    <!-- //content end// -->
 


    </div>
    <!-- //contaniner end//-->
    <div class="cb"></div>
    
    <!-- footer start -->
    <%@ include file="/inc/jspFooter.jsp" %>
    <!-- //footer end// -->
    
    <!-- ���޴� start -->
    <%@ include file="/inc/quickMenu.jsp" %>
    <!-- //���޴� end// -->
    
</div><!-- wrapper end -->

<script type="text/javascript">


$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    
});



function go_uf_detail(){
    
    uf_detail('<%=EvdcDv[0]%>', '<%=ButrId[0]%>','<%=AgrmtInstId[0]%>','<%=AgrmtSeqNo[0]%>');
    
}

</script>


<script type="text/javascript">

function search(gubun){

    if(!gubun || typeof gubun == "undefined") return false;
    try{
        document.body.style.cursor = "wait";
        SetData(gubun); //Insert    Grid
        //SetData(); //Insert Grid
        document.body.style.cursor = "auto";
    }finally{
        reset_submit();
        //searchAlert();
    }
    
    try{
        document.body.style.cursor = "wait";
        SetData_file(gubun); //Insert    Grid
        //SetData(); //Insert Grid
        document.body.style.cursor = "auto";
    }finally{
        reset_submit();
        //searchAlert();
    }
}

function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}


var cnt = 0;
function SetData(gubun){    

    try{
        
        var gridValue = [];
        cnt = 0;
        
        if("T" == gubun){
            
            gridValue[cnt++] = {"USE_DT":"2014-02-10","DTLS_ITXP_NM":"�����ü��������", "SUB_DTLS_ITXP_NM":"�����ü�����Ժ�", "MITM_NM":"����Ժ�",  "SPLY_AMT":"5000","VAT_AMT":"500","ITEM_RMK":""};
            
            document.getElementById('idSplrCoNm').innerHTML= '(��) �� ��ü';
            document.getElementById('idSplrBzRegNo').innerHTML= '555-55-555555-0';
            document.getElementById('idSplrAdr').innerHTML= '��õ������ ������ ������ 1138';
            document.getElementById('idSplrTpopNm').innerHTML= '����';
            document.getElementById('idSplrTpbzNm').innerHTML= '����';
            document.getElementById('idSplrReprNm').innerHTML= '���ΰ�';
            
        }else if("E" == gubun){

            
            gridValue[cnt++] = {"USE_DT":"2014-03-20","DTLS_ITXP_NM":"�����ü��������", "SUB_DTLS_ITXP_NM":"�����ü�����Ժ�",   "MITM_NM":"����Ժ�",     "SPLY_AMT":"2500","VAT_AMT":"0","ITEM_RMK":""};
            
            document.getElementById('idSplrCoNm').innerHTML= '(��) �� ��ü';
            document.getElementById('idSplrBzRegNo').innerHTML= '888-88-888888-0';
            document.getElementById('idSplrAdr').innerHTML= '��걤���� ���� ������ 646-4';
            document.getElementById('idSplrTpopNm').innerHTML= '����';
            document.getElementById('idSplrTpbzNm').innerHTML= '����';
            document.getElementById('idSplrReprNm').innerHTML= '������';
            
        }else if("C" == gubun){

            
            gridValue[cnt++] = {"USE_DT":"2014-03-12","DTLS_ITXP_NM":"�����ü��������", "SUB_DTLS_ITXP_NM":"�����ü�����Ժ�",        "MITM_NM":"����Ժ�",     "SPLY_AMT":"2000","VAT_AMT":"200","ITEM_RMK":""};
            
            document.getElementById('idSplrCoNm').innerHTML= '(��) �� ��ü';
            document.getElementById('idSplrBzRegNo').innerHTML= '300-30-300000';
            document.getElementById('idSplrAdr').innerHTML= '����Ư����ġ�� ��ġ���� ���︮ 123';
            document.getElementById('idSplrTpopNm').innerHTML= '����';
            document.getElementById('idSplrTpbzNm').innerHTML= '����';
            document.getElementById('idSplrReprNm').innerHTML= '�ٴ�ǥ';
            
        }
               
                
    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
    }
}

var cnt_file = 0;
function SetData_file(gubun){    

    try{
        
        var gridValue = [];
        cnt_file = 0;
        
        if("T" == gubun){
            gridValue[cnt_file++] = {"DTLS_ITXP_NM":"�����ü��������","SUB_DTLS_ITXP_NM":"�����ü�����Ժ�","FILE_NM":"2�� ���ǰ�Ǽ�.jpg","RTN_VALUE":"����","ERRMSG":""};

        }else if("E" == gubun){

            gridValue[cnt_file++] = {"DTLS_ITXP_NM":"�����ü��������","SUB_DTLS_ITXP_NM":"�����ü�����Ժ�","FILE_NM":"����Ժ�.jpg","RTN_VALUE":"����","ERRMSG":""};
            
        }else if("C" == gubun){

            gridValue[cnt_file++] = {"DTLS_ITXP_NM":"�����ü��������","SUB_DTLS_ITXP_NM":"�����ü�����Ժ�","FILE_NM":"���⳻��.jpg","RTN_VALUE":"����","ERRMSG":""};
            
        }
                
    }finally{
        gridData_file = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData_file();  //rMateGrid ����
    }
}



</script>

</body>
</html>