<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_30_00.jsp
 *   Description        : ����� ���� ��ȸ �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.21                     ������             
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



<title>����� ���� ��ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">����� ���� ��ȸ</p>
        </div>
        <!-- //head title// --> 
    </div>





    <div id="body"> 
        <form name="frm" method="post">
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>����� ���� ���</h3>
            <!-- ����� ���� ����Ʈ start -->
            <div class="t10 b25 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����� ���� ����Ʈ" class="tbl_type02">
                <caption>����� ���� ����Ʈ</caption>
                <colgroup>
                    <col width="20%" />
                    <col width="80%" />
                </colgroup>
                <tbody>
                <tr>
                    <th scope="row">���Ѹ�</th>
                    <td class="ll">����å����
                    </td>
                </tr>
                </tbody>
                </table>
            </div>
            <!-- //����� ���� ����Ʈ end// -->            
            <h3>������ ���� ���</h3>
            <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "350", "#FFFFFF", "transparent");
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



<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"SBJT_ID\"          dataField=\"SBJT_ID\"           headerText=\"������ȣ\"         width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_NM\"          dataField=\"SBJT_NM\"           headerText=\"������\"           width=\"150\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_ID\"          dataField=\"INST_ID\"           headerText=\"���ID\"           width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_NM\"          dataField=\"INST_NM\"           headerText=\"�����\"           width=\"100\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCMS_GRP_CD\"      dataField=\"RCMS_GRP_CD\"       headerText=\"���ѱ׷��\"       width=\"110\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HMPW_ROLE_DV\"     dataField=\"HMPW_ROLE_DV\"      headerText=\"�η¿���\"         width=\"90\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_YN\"           dataField=\"USE_YN\"            headerText=\"��뿩��\"         width=\"80\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FST_REG_DTM\"      dataField=\"FST_REG_DTM\"       headerText=\"���ʵ������\"     width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"LST_CORC_DTM\"     dataField=\"LST_CORC_DTM\"      headerText=\"������������\"     width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"HMPW_ROLE_SB_DV\"  dataField=\"HMPW_ROLE_SB_DV\"   headerText=\"�η¿��Ҽ���\"     width=\"90\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_MANA_YN\"     dataField=\"INST_MANA_YN\"      headerText=\"���å���ڿ���\"   width=\"100\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AUTO_ROLE_YN\"     dataField=\"AUTO_ROLE_YN\"      headerText=\"�ڵ��ο�����\"     width=\"80\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CPCG_YN\"          dataField=\"CPCG_YN\"           headerText=\"���㿩��\"         width=\"80\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\        </columns>\
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

        

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", SetData);   //rMateGrid ���̾ƿ� ��� �� ��ȸ����
        

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

function SetData() {
    
        var cnt = 0;
        var gridValue = [];

        gridValue[cnt++] = {"HMPW_ROLD_SB_DV":"�Ѱ�å����","HMPW_ROLE_SB_DV":"2A","LST_CORC_DTM":"2011-10-26","USE_YN":"Y","CPCG_YN":"N","RCMS_GRP_CD":"����å����","AUTO_ROLE_YN":"N","FST_REG_DTM":"2010-05-24","SBJT_ID":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","INST_NM":"��RCMS","INST_ID":"10112249","INST_MANA_YN":"N","HMPW_ROLE_DV":"����å����"};
        gridValue[cnt++] = {"HMPW_ROLD_SB_DV":"�Ѱ�å����","HMPW_ROLE_SB_DV":"2A","LST_CORC_DTM":"2011-10-26","USE_YN":"Y","CPCG_YN":"N","RCMS_GRP_CD":"����å����","AUTO_ROLE_YN":"N","FST_REG_DTM":"2010-07-12","SBJT_ID":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","INST_NM":"��RCMS","INST_ID":"10112249","INST_MANA_YN":"N","HMPW_ROLE_DV":"����å����"};
        gridValue[cnt++] = {"HMPW_ROLD_SB_DV":"�Ѱ�å����","HMPW_ROLE_SB_DV":"2D","LST_CORC_DTM":"2013-01-02","USE_YN":"Y","CPCG_YN":"N","RCMS_GRP_CD":"����å����","AUTO_ROLE_YN":"N","FST_REG_DTM":"2013-01-02","SBJT_ID":"TEST0001","SBJT_NM":"RCMS �ǽ��� �ű԰���","INST_NM":"��RCMS","INST_ID":"10000001","INST_MANA_YN":"N","HMPW_ROLE_DV":"����å����"};

        
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����

}


$(document).ready(function() {
    
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    
});  


</script>

</body>
</html> 
