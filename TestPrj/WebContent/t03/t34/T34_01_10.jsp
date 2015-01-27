<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T34_01_10.jsp
 *   Description        : ����������Ȳ ����ȸ �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.18                     ������             
 *
 *  @author     ������
 *  @Since      2014.01.18
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
    String SbjtId       = SessionUtil.getRequestValue(request, "SbjtId");                                   // ������ȣ
    String AgrmtSeqNo   = SessionUtil.getRequestValue(request, "AgrmtSeqNo");                               // ������ID
    String AgrmtInstId  = SessionUtil.getRequestValue(request, "AgrmtInstId");                              // �����Ϸù�ȣ

    String DtlsItxpCd   = SessionUtil.getRequestValue(request, "DtlsItxpCd");                               // ���κ���ڵ�
    String HgrkItxpNm   = SessionUtil.getRequestValue(request, "HgrkItxpNm");                               // ���
    String DtlsItxpNm   = SessionUtil.getRequestValue(request, "DtlsItxpNm");                               // ���κ��
%>

<title>����������Ȳ ����ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">����������Ȳ ����ȸ</p>
        </div>
        <!-- //head title// --> 
    </div>




        <div id="body">
            <form name="frm" method="post">
            <input type="hidden" name="PrsPgno"     value="0" />
            <input type="hidden" name="TrSupYn"     value="" />
            <input type="hidden" name="AgrmtInstId" value="<%=AgrmtInstId%>" />
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>����������Ȳ ����ȸ</h3>
                <!-- ����������Ȳ ����ȸ start -->
                <div class="t10  pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����������Ȳ ����ȸ" class="tbl_type02">
                    <caption>����������Ȳ ����ȸ</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="col">���</th>
                        <td class="ll"><%=HgrkItxpNm%> - <%=DtlsItxpNm%></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //����������Ȳ ����ȸ end// -->
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->
                <!-- �ѰǼ�/�μ� ���� ��ư start -->
                <div class="pop_total_box">
                    <p class="fl t05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> ��/<span id="InqPrsTotlCnt2">0</span> ��]</p>
                    <p class="ar b05">
	                    <a href="#" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�" /></a>
	                    <a href="#" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="����" /></a>
                    </p>
                    <p class="cb"></p>
                </div>
                <!-- //�ѰǼ�/�μ� ���� ��ư end// -->
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "255", "#FFFFFF", "transparent");
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
            <!-- //content end// -->
            </form>
        </div>






<%@ include file="/inc/jspFooter_popup.jsp" %> 


<script type="text/javascript">

    //////////////////////////////////
    // ��ȸ ó��
    //////////////////////////////////
    function uf_search(SchGb){
        var frm = document.frm;
        
        if( isSubmit() ) return;    // ����ó��
        //if(!chk_sbjt_sch()) return false; //��ȿ��üũ 
        
        get2post(document.frm, "SbjtId=<%=SbjtId%>" );
        get2post(document.frm, "AgrmtSeqNo=<%=AgrmtSeqNo%>" );
        get2post(document.frm, "DtlsItxpCd=<%=DtlsItxpCd%>" );
        get2post(document.frm, "AgrmtInstId=<%=AgrmtInstId%>" );
        
        
        uf_proce_display_on();  //�ε���
        
        setTimeout(
                function(){
                    try{
                        document.body.setCapture(); // 'wait'
                        document.body.style.cursor =    "wait";
                        //SetData(); //Insert   Grid
                        setGridData("<%=AgrmtSeqNo%>", "<%=DtlsItxpCd%>", "<%=DtlsItxpNm%>"); //Insert    Grid
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



<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
        <columns>\
            <DataGridColumn id=\"\"                   dataField=\"\"                    itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"TRSC_DT\"            dataField=\"TRSC_DT\"             headerText=\"�������\"       width=\"80\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_DT\"      dataField=\"EXCTN_EXEC_DT\"       headerText=\"�����Ͻ�\"       width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"���κ���ڵ�\"   width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"���κ��\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CASH_SPOT_NM\"       dataField=\"CASH_SPOT_NM\"        headerText=\"����񱸺�\"     width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_EVDC_DV_NM\"    dataField=\"TRSC_EVDC_DV_NM\"     headerText=\"��������\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"VAT_PSV_APC_YN_NM\"  dataField=\"VAT_PSV_APC_YN_NM\"   headerText=\"�ΰ�����������\" width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_PFMC_ST_NM\"    dataField=\"TRSC_PFMC_ST_NM\"     headerText=\"�������\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"            headerText=\"���ݾ�\"       width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"  dataField=\"RTRT_FIX_SPLY_AMT\"   headerText=\"�������ޱݾ�\"   width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"   dataField=\"RTRT_FIX_VAT_AMT\"    headerText=\"�����ΰ����ݾ�\" width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"USE_SPLY_AMT\"       dataField=\"USE_SPLY_AMT\"        headerText=\"���ޱݾ�\"       width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"REJCT_PROC_ST_NM\"   dataField=\"REJCT_PROC_ST_NM\"    headerText=\"����������\"     width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"REJCT_SUM_AMT\"      dataField=\"REJCT_SUM_AMT\"       headerText=\"�������ݾ�\"     width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"SEJCT_RSN\"          dataField=\"SEJCT_RSN\"           headerText=\"����������\"     width=\"150\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SAC_CMPL_RQST_CTT\"  dataField=\"SAC_CMPL_RQST_CTT\"   headerText=\"���Ͽ�û����\"   width=\"150\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
            <DataGridFooterColumn />\
            <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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


        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
        };

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", setInitTotCnt);
        gridRoot.addEventListener("layoutComplete", uf_search);
        
        gridRoot.addEventListener("dataComplete", setTotCnt);   

    };
    

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
        
    //ī��Ʈ �ʱ�ȭ
    function setInitTotCnt(){
        $("#InqPrsTotlNcnt2").html("0");
        $("#InqPrsTotlCnt2").html("0");
        
    }
    function setTotCnt(){
        var rowCnt = getGridRowCount_rMate();
        var totCnt = rowCnt;
        $("#InqPrsTotlNcnt2").html(rowCnt);
        $("#InqPrsTotlCnt2").html(totCnt);
        
    }
     
    $(document).ready(function() {
        // rMateGrid �ʱ�ȭ
        rMateGridInit();
    }); 
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->


<script type="text/javascript">
var cnt = 0;
function setGridData(seqNo, itxpCd, itxpNm){    
    try{
        cnt = 0;
        var gridValue = [];
        
        //1. �ű԰���
        if("G00000000000001" == seqNo){
        	if("B0101" == itxpCd){


            }else if("B0201" == itxpCd){


            }else if("B0202" == itxpCd){


            }else if("B0203" == itxpCd){


            }else if("B0301" == itxpCd){


            }
            
        //2. �������
        }else if("G00000000000002" == seqNo){

        	if("����Ȱ����" == itxpNm){

        		gridValue[cnt++] = {"TRSC_DT":"2014-02-24","EXCTN_EXEC_DT":"2014-02-24 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"����Ȱ����","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};

            }else if("�����ü������ �� ����" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2014-03-07","EXCTN_EXEC_DT":"2014-03-07 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"1100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"1000","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};

            }else if("�ΰǺ�" == itxpNm){
            
            	gridValue[cnt++] = {"TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-02-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};

            }else if("��������������" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"��������������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};

            }else if("������" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 16:02:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};

            }

        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){

            if("����Ȱ����" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2013-03-25","EXCTN_EXEC_DT":"2013-03-25 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"����Ȱ����","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-05-23","EXCTN_EXEC_DT":"2013-05-23 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"����Ȱ����","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-09-30","EXCTN_EXEC_DT":"2013-09-30 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"����Ȱ����","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"10000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"10000","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-12-23","EXCTN_EXEC_DT":"2013-12-23 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"����Ȱ����","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"9060","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"8237","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("�����ü������ �� ����" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2013-03-06","EXCTN_EXEC_DT":"2013-03-06 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"1100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"1000","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-04-23","EXCTN_EXEC_DT":"2013-04-23 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"1100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"1000","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-07-22","EXCTN_EXEC_DT":"2013-07-22 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"20000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"18182","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-10-29","EXCTN_EXEC_DT":"2013-10-29 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"15000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"13637","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("�ΰǺ�" == itxpNm){
            
            	gridValue[cnt++] = {"TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-05-10","EXCTN_EXEC_DT":"2013-05-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-06-10","EXCTN_EXEC_DT":"2013-06-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-07-10","EXCTN_EXEC_DT":"2013-07-10 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-08-09","EXCTN_EXEC_DT":"2013-08-09 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-09-10","EXCTN_EXEC_DT":"2013-09-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-10-10","EXCTN_EXEC_DT":"2013-10-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-11-08","EXCTN_EXEC_DT":"2013-11-08 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-12-10","EXCTN_EXEC_DT":"2013-12-10 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2014-01-10","EXCTN_EXEC_DT":"2014-01-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-02-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2014-02-28","EXCTN_EXEC_DT":"2014-02-28 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("��������������" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2013-03-21","EXCTN_EXEC_DT":"2013-03-21 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"��������������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-06-04","EXCTN_EXEC_DT":"2013-06-04 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"��������������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-09-03","EXCTN_EXEC_DT":"2013-09-03 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"��������������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-12-02","EXCTN_EXEC_DT":"2013-12-02 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"��������������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2150","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2150","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("������" == itxpNm){

            	gridValue[cnt++] = {"TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"91","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-07-08","EXCTN_EXEC_DT":"2013-07-08 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"91","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2013-11-25","EXCTN_EXEC_DT":"2013-11-25 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"455","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
            	gridValue[cnt++] = {"TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"300","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"273","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }

        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){

            if("����Ȱ����" == itxpNm){

                gridValue[cnt++] = {"TRSC_DT":"2013-03-25","EXCTN_EXEC_DT":"2013-03-25 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"����Ȱ����","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-05-23","EXCTN_EXEC_DT":"2013-05-23 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"����Ȱ����","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"220","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"200","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-09-30","EXCTN_EXEC_DT":"2013-09-30 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"����Ȱ����","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"10000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"10000","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-12-23","EXCTN_EXEC_DT":"2013-12-23 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"����Ȱ����","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"9060","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"8237","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("�����ü������ �� ����" == itxpNm){

                gridValue[cnt++] = {"TRSC_DT":"2013-03-06","EXCTN_EXEC_DT":"2013-03-06 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"1100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"1000","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-04-23","EXCTN_EXEC_DT":"2013-04-23 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"1100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"1000","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-07-22","EXCTN_EXEC_DT":"2013-07-22 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"20000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"18182","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-10-29","EXCTN_EXEC_DT":"2013-10-29 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"15000","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"13637","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("�ΰǺ�" == itxpNm){
            
                gridValue[cnt++] = {"TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-05-10","EXCTN_EXEC_DT":"2013-05-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-06-10","EXCTN_EXEC_DT":"2013-06-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-07-10","EXCTN_EXEC_DT":"2013-07-10 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-08-09","EXCTN_EXEC_DT":"2013-08-09 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-09-10","EXCTN_EXEC_DT":"2013-09-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-10-10","EXCTN_EXEC_DT":"2013-10-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-11-08","EXCTN_EXEC_DT":"2013-11-08 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-12-10","EXCTN_EXEC_DT":"2013-12-10 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2014-01-10","EXCTN_EXEC_DT":"2014-01-10 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-02-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2014-02-28","EXCTN_EXEC_DT":"2014-02-28 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"�ΰǺ�","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2500","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("��������������" == itxpNm){

                gridValue[cnt++] = {"TRSC_DT":"2013-03-21","EXCTN_EXEC_DT":"2013-03-21 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"��������������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-06-04","EXCTN_EXEC_DT":"2013-06-04 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"��������������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-09-03","EXCTN_EXEC_DT":"2013-09-03 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"��������������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2250","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2250","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-12-02","EXCTN_EXEC_DT":"2013-12-02 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"��������������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"2150","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"2150","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }else if("������" == itxpNm){

                gridValue[cnt++] = {"TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 14:52:32","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"91","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-07-08","EXCTN_EXEC_DT":"2013-07-08 11:50:18","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"��Ÿ","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"100","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"91","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2013-11-25","EXCTN_EXEC_DT":"2013-11-25 12:00:14","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"ī��","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"500","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"455","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};
                gridValue[cnt++] = {"TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 09:12:24","SUB_DTLS_ITXP_CD":"B0102001","SUB_DTLS_ITXP_NM":"������","CASH_SPOT_NM":"����","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","VAT_PSV_APC_YN_NM":"�̽�û","TRSC_PFMC_ST_NM":"����(��ü) �Ϸ�","TRNS_AMT":"300","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","USE_SPLY_AMT":"273","REJCT_PROC_ST_NM":"��Ȯ��","REJCT_SUM_AMT":"0","REJCT_RSN":"","SAC_CMPL_RQST_CTT":""};


            }

        }
                

    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}


function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}
</script>

</body></html>