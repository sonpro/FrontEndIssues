<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_04_00.jsp
 *   Description        : ������˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.15                     ������             
 *
 *  @author     ������ 
 *  @Since      
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
String pChkIdx              = SessionUtil.getRequestValue(request, "pChkIdx");              // �̺�Ʈ Idx
String pObjNm               = SessionUtil.getRequestValue(request, "pObjNm");               // �׸����
String pSpotUsePossItxpYn   = SessionUtil.getRequestValue(request, "pSpotUsePossItxpYn");   // ���ݱ���\

String pPlanBizDvCd         = SessionUtil.getRequestValue(request, "pPlanBizDvCd");         // ���ݱ���
String pAgrmtSeqNo         = SessionUtil.getRequestValue(request, "pAgrmtSeqNo");         // ������Ʈ ��ȣ

if( "".equals(pObjNm) ){
    pObjNm = "xgrid_itxp";
}


//�����
String sbjtNm = "";
//select box ����
String strSelBox1 = "";
String strSelBox2 = "";
String strSelBox3 = "";

    //1. �ű԰���
	if("G00000000000001".equals(pAgrmtSeqNo)){
	    sbjtNm = "RCMS �ǽ�";
	    strSelBox1 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0206\" >��������������</option><option value=\"B0203\" >��������</option><option value=\"B0201\" >�����ü������ �� ����</option><option value=\"B0202\" >����Ȱ����</option><option value=\"B0204\" >�ΰǺ�</option></select>";
	    strSelBox2 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0301\" >������</option><option value=\"B0206\" >��������������</option><option value=\"B0203\" >��������</option><option value=\"B0201\" >�����ü������ �� ����</option><option value=\"B0202\" >����Ȱ����</option><option value=\"B0204\" >�ΰǺ�</option></select>";
	    strSelBox3 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ></select>";
    //2. �������
	}else if("G00000000000002".equals(pAgrmtSeqNo)){
        sbjtNm = "RCMS �ǽ�";
        strSelBox1 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0206\" >��������������</option><option value=\"B0203\" >��������</option><option value=\"B0201\" >�����ü������ �� ����</option><option value=\"B0202\" >����Ȱ����</option><option value=\"B0204\" >�ΰǺ�</option></select>";
        strSelBox2 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0301\" >������</option><option value=\"B0206\" >��������������</option><option value=\"B0203\" >��������</option><option value=\"B0201\" >�����ü������ �� ����</option><option value=\"B0202\" >����Ȱ����</option><option value=\"B0204\" >�ΰǺ�</option></select>";
        strSelBox3 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style=\"width:150px;\" onchange=\"uf_search();\"   ></select>";
    //3. �������(���� ������)
	}else if("G00000000000003".equals(pAgrmtSeqNo)){
        sbjtNm = "RCMS �ǽ�";
        strSelBox1 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0206\" >��������������</option><option value=\"B0203\" >��������</option><option value=\"B0201\" >�����ü������ �� ����</option><option value=\"B0202\" >����Ȱ����</option><option value=\"B0204\" >�ΰǺ�</option></select>";
        strSelBox2 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0301\" >������</option><option value=\"B0206\" >��������������</option><option value=\"B0203\" >��������</option><option value=\"B0201\" >�����ü������ �� ����</option><option value=\"B0202\" >����Ȱ����</option><option value=\"B0204\" >�ΰǺ�</option></select>";
        strSelBox3 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style=\"width:150px;\" onchange=\"uf_search();\"   ></select>";
    //4. �������(���� ���� �Ϸ�)
    }else if("G00000000000004".equals(pAgrmtSeqNo)){
    	sbjtNm = "RCMS �ǽ�";
    	strSelBox1 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0206\" >��������������</option><option value=\"B0203\" >��������</option><option value=\"B0201\" >�����ü������ �� ����</option><option value=\"B0202\" >����Ȱ����</option><option value=\"B0204\" >�ΰǺ�</option></select>";
        strSelBox2 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style='width:150px;' onchange='uf_search();'   ><option value=\"B0301\" >������</option><option value=\"B0206\" >��������������</option><option value=\"B0203\" >��������</option><option value=\"B0201\" >�����ü������ �� ����</option><option value=\"B0202\" >����Ȱ����</option><option value=\"B0204\" >�ΰǺ�</option></select>";
        strSelBox3 = "<select name=\"DtlsItxpCd\" id=\"DtlsItxpCd\"   style=\"width:150px;\" onchange=\"uf_search();\"   ></select>";
    	
    }


%>


<title>��� ���� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">��� ����</p>
        </div>
        <!-- //head title// --> 
    </div>


<script type="text/javascript">
var seqNo = "<%=pAgrmtSeqNo%>";
var chkIdx = "<%=pChkIdx%>";

    function uf_search(){
        var frm = document.frm;

        var itxpCd = $("#DtlsItxpCd").val();

        if(!itxpCd || typeof itxpCd == "undefined"){ return; }

        uf_proce_display_on();  //�ε���
        
        setTimeout(
                function(){
                    setData(itxpCd);
                }
                , 1000);   // 1���� ���� 1000 = 1��
    }


    

    
    function go_insert(){
        //�׸��� ���� üũ
        selectorColumn = gridRoot.getObjectById("selector");
        if(selectorColumn.getSelectedIndex() < 0){ 
            alert("���õ� ��� ������ �����ϴ�.");
            return; 
        }
        
        //���õ� row�� �� üũ
        var rowIndex = selectorColumn.getSelectedIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        
        uf_insert(dataRow);
    }

    function uf_insert(dataRow){
        var obj = gridRoot;
        
        var tObj = opener.gridRoot;
        
        if(!chkGridSelectedCount_rMate(obj)) return false;

        
        selectorColumn = obj.getObjectById("selector");
        
        //�θ�â�� ���õ� row ��
        var openerDataRow = tObj.getItemAt(chkIdx);
        var openerSelectorColumn = tObj.getObjectById("selector");
        var openerCheckColumn = openerSelectorColumn.getSelectedIndices();
        
        
        openerDataRow.DTLS_ITXP_CD = dataRow.DTLS_ITXP_CD;
        openerDataRow.DTLS_ITXP_NM = dataRow.DTLS_ITXP_NM;
        openerDataRow.SUB_DTLS_ITXP_CD = dataRow.SUB_DTLS_ITXP_CD;
        openerDataRow.SUB_DTLS_ITXP_NM = dataRow.SUB_DTLS_ITXP_NM;
        tObj.setItemAt(openerDataRow, chkIdx);
        
        openerSelectorColumn.setSelectedIndices(openerCheckColumn);
        //�׸��� �� ���� �� ����� ������ ������Ƿ� �ٽ� ������ �����Ѵ�.
        opener.columnBackGroundStyle(); //���� ����.
        opener.uf_sbjt_itxp_trn(tObj , "<%=pSpotUsePossItxpYn%>");
        window.close(); 
    }
    
    
    
</script>





        <div id="body"> 
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>�����</h3>
                <!-- ����� start -->
                <form name="frm" method="post">
                <input type="hidden" name="SpotUsePossItxpYn" value="<%=pSpotUsePossItxpYn%>" />
                <div class="t10 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�����" class="tbl_type02">
                    <caption>�����</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">�����</th>
                        <td colspan="2" class="ll"><%=sbjtNm%></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //����� end// --> 
                <!-- �˻��� start -->
                <div class="pop_search">
                    <div class="pop_search_boxt"></div>
                    <div class="pop_search_boxc">
                        <fieldset>
                            <legend>�����ȸ</legend>
                            <table width="680" summary="�����ȸ" class="pop_tbl_search">
                            <caption>�����ȸ</caption>
                            <colgroup>
                                <col width="12%" />
                                <col width="*" />
                            </colgroup>
                            <tbody>
                            <tr>
                                <th scope="col">�����</th>
                                <td>
<%
                                if( "Y".equals(pSpotUsePossItxpYn) ){
                                    out.print(strSelBox1);
                                }else{
                                    if("".equals(pPlanBizDvCd)){
                                    	out.print(strSelBox2);
                                    }else{
                                    	out.print(strSelBox3);
                                    }
                                }
%>
                                </td>
                            </tr>
                            </tbody>
                            </table>
                        </fieldset>
                    </div>
                    <div><img src="/pop/search_box6.gif" alt=" "/></div>
                </div>
                <div class="cb"></div>
                <!-- //�˻��� end// --> 
                <!-- ��ȸ ��ư start -->
                <div class="pop_search_bt1">
                    <a href="#dummy" onclick="uf_search(); return false;" class="bt_search" title="��ȸ"></a>
                </div>
                <!-- //��ȸ ��ư end// --> 
<!-- *************************  rMateGrid ************************* -->
	            <div class="t25"></div>
	            <!-- �׸��� Start -->
	            <div id="gridDiv">
	                <script>
	                rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "255", "#FFFFFF", "transparent");
	                </script>
	            </div>
	            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->
                
                <!-- action bt start -->
                <div class="pop_action_bt">
                    <a href="dummy" onclick="go_insert(); return false;" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a>
                </div>
                <!-- //action bt end// -->
                </form> 
            </div>
        </div>



<%@ include file="/inc/jspFooter_popup.jsp" %> 






<script type="text/javascript">

$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    //rMateGrid�� �׸��� ���� �� gridInit() ȣ����.

});
</script>



<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    //rMateGrid�� �׸��� ���� �� gridInit() ȣ����.

});
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\"                        dataField=\"\"                      itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\"        dataField=\"selector\"              headerText=\"����\"            width=\"50\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"DTLS_ITXP_CD\"            dataField=\"DTLS_ITXP_CD\"          headerText=\"���κ���ڵ�\"    width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"            dataField=\"DTLS_ITXP_NM\"          headerText=\"���κ��\"        width=\"300\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"        dataField=\"SUB_DTLS_ITXP_CD\"      headerText=\"�������ڵ�\"      width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"        dataField=\"SUB_DTLS_ITXP_NM\"      headerText=\"������\"          width=\"330\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
            
            uf_insert(dataRow);
            
        };
        
        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
            selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //�̺�Ʈ ���
            dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid.addEventListener("itemClick", itemClickHandler); //����Ŭ�� �̺�Ʈ
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", uf_search);   //rMateGrid ���̾ƿ� ��� �� ��ȸ����

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


<script type="text/javascript">
var cnt = 0;
function setGridData(dtlsItxpCd){
	
    try{
        
        var gridValue = [];
        cnt = 0;
        
        if(!seqNo) return;
        
        if("B0101" == dtlsItxpCd){    //�����ΰǺ�
        	
        	//gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","DTLS_ITXP_NM":"�����ΰǺ�","DTLS_ITXP_CD":"B0101"};
        
        }else if("B0102" == dtlsItxpCd){    //�ܺ��ΰǺ�
        	
        	//gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ܺ��ΰǺ�","SUB_DTLS_ITXP_CD":"B0102001","DTLS_ITXP_NM":"�ܺ��ΰǺ�","DTLS_ITXP_CD":"B0102"};
        	
        }else if("B0201" == dtlsItxpCd){    //�����ü������ �� ����
        	
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����ü��������","SUB_DTLS_ITXP_CD":"B0201004","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����ü���������","SUB_DTLS_ITXP_CD":"B0201021","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ǹ�������","SUB_DTLS_ITXP_CD":"B0201010","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"���輳�����ۺ�","SUB_DTLS_ITXP_CD":"B0201020","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����м���","SUB_DTLS_ITXP_CD":"B0201016","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�þࡤ��ᱸ�Ժ�","SUB_DTLS_ITXP_CD":"B0201015","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����������","SUB_DTLS_ITXP_CD":"B0201008","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����������","SUB_DTLS_ITXP_CD":"B0201007","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����ü������ġ��","SUB_DTLS_ITXP_CD":"B0201002","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�������Ժ�","SUB_DTLS_ITXP_CD":"B0201006","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����ü�������Ժ�","SUB_DTLS_ITXP_CD":"B0201001","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����ǰ���ۺ�","SUB_DTLS_ITXP_CD":"B0201018","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����","SUB_DTLS_ITXP_CD":"B0201005","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����ü������������","SUB_DTLS_ITXP_CD":"B0201003","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����ǰ���ۺ�","SUB_DTLS_ITXP_CD":"B0201019","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ǹ����Ժ�","SUB_DTLS_ITXP_CD":"B0201009","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����ó����������","SUB_DTLS_ITXP_CD":"B0201017","DTLS_ITXP_NM":"�����ü������ �� ����","DTLS_ITXP_CD":"B0201"};
        
        }else if("B0202" == dtlsItxpCd ){ //����Ȱ����
                        
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����ȸ ���","SUB_DTLS_ITXP_CD":"B0202044","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��Ʈ��ũ ���","SUB_DTLS_ITXP_CD":"B0202043","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����DB �� ��Ʈ��ũ ����","SUB_DTLS_ITXP_CD":"B0202035","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�뿪��","SUB_DTLS_ITXP_CD":"B0202029","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����","SUB_DTLS_ITXP_CD":"B0202005","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�μ��","SUB_DTLS_ITXP_CD":"B0202004","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�߱ٽĴ�","SUB_DTLS_ITXP_CD":"B0202037","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��������","SUB_DTLS_ITXP_CD":"B0202001","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����ú�","SUB_DTLS_ITXP_CD":"B0202034","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�������������","SUB_DTLS_ITXP_CD":"B0202019","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��ǰ���Ժ�","SUB_DTLS_ITXP_CD":"B0202013","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"Ư�����������","SUB_DTLS_ITXP_CD":"B0202033","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"���������屸�Ժ�","SUB_DTLS_ITXP_CD":"B0202020","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������ݡ�����","SUB_DTLS_ITXP_CD":"B0202010","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������Ժ�","SUB_DTLS_ITXP_CD":"B0202032","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ӱ��","SUB_DTLS_ITXP_CD":"B0202030","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"���̳����ֺ�","SUB_DTLS_ITXP_CD":"B0202023","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"ȸ�Ǻ�","SUB_DTLS_ITXP_CD":"B0202021","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������Ȱ���","SUB_DTLS_ITXP_CD":"B0202014","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0202011","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"���ܿ���","SUB_DTLS_ITXP_CD":"B0202002","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����η�Ȱ���","SUB_DTLS_ITXP_CD":"B0202038","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����","SUB_DTLS_ITXP_CD":"B0202028","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�繫��ǰ��","SUB_DTLS_ITXP_CD":"B0202012","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"���ΰ���������","SUB_DTLS_ITXP_CD":"B0202036","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��ȸ�����̳�������","SUB_DTLS_ITXP_CD":"B0202024","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����Ʒú�","SUB_DTLS_ITXP_CD":"B0202022","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������ȫ����","SUB_DTLS_ITXP_CD":"B0202042","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"���������","SUB_DTLS_ITXP_CD":"B0202041","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����Ȱ����","SUB_DTLS_ITXP_CD":"B0202040","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�����η¾缺��","SUB_DTLS_ITXP_CD":"B0202039","DTLS_ITXP_NM":"����Ȱ����","DTLS_ITXP_CD":"B0202"};
        
        }else if("B0203" == dtlsItxpCd){    //��������
            
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��������","SUB_DTLS_ITXP_CD":"B0203001","DTLS_ITXP_NM":"��������","DTLS_ITXP_CD":"B0203"};
            
        }else if("B0204" == dtlsItxpCd){    //�ΰǺ�
            
            gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0204001","DTLS_ITXP_NM":"�ΰǺ�","DTLS_ITXP_CD":"B0204"};
            
        }else if("B0206" == dtlsItxpCd){    //��������������
            
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��������������","SUB_DTLS_ITXP_CD":"B0206006","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0206"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"ȸ�Ǻ�","SUB_DTLS_ITXP_CD":"B0206004","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0206"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"��������","SUB_DTLS_ITXP_CD":"B0206001","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0206"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�繫��ǰ��","SUB_DTLS_ITXP_CD":"B0206002","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0206"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"�߱ٽĴ�","SUB_DTLS_ITXP_CD":"B0206005","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0206"};
        	gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"����ȯ��������","SUB_DTLS_ITXP_CD":"B0206003","DTLS_ITXP_NM":"��������������","DTLS_ITXP_CD":"B0206"};
            
        }else if("B0301" == dtlsItxpCd){    //������
            
            gridValue[cnt++] = {"SUB_DTLS_ITXP_NM":"������","SUB_DTLS_ITXP_CD":"B0301001","DTLS_ITXP_NM":"������","DTLS_ITXP_CD":"B0301"};
            
        }
                
    }finally{
    	
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}

function setData(dtlsItxpCd){
	if(!dtlsItxpCd || typeof dtlsItxpCd == "undefined") return false;
	
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        setGridData(dtlsItxpCd); //Insert Grid
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
    }
    
}

function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}
</script>

</body>
</html> 
