<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T33_01_20.jsp
 *   Description        : ��Ź���� ������
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
    String agrmtSeqNo   = SessionUtil.getRequestValue(request, "agrmtSeqNo");
    String agrmtInstId  = SessionUtil.getRequestValue(request, "agrmtInstId");
    
    
    String sbjtData_instSbjtPrgrSt = "";
    
    //1. �ű԰���
    if("G00000000000001".equals(agrmtSeqNo)){
        
    //2. �������
    }else if("G00000000000002".equals(agrmtSeqNo)){
        
    //3. �������(���� ������)
    }else if("G00000000000003".equals(agrmtSeqNo)){
        sbjtData_instSbjtPrgrSt = "10";
        
    //4. �������(���� ���� �Ϸ�)
    }else if("G00000000000004".equals(agrmtSeqNo)){
        sbjtData_instSbjtPrgrSt = "07";
        
    }


%>

<title>��Ź���� ������ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">��Ź���� ������</p>
        </div>
        <!-- //head title// --> 
    </div>



        <div id="body">
            <form name="frm" method="post">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>��Ź���� ������</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "255", "#FFFFFF");
                </script>
            </div>
            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->                  
                <div class="guide_bu">
                    <img src="/images/common/bu_color.gif" /> �κ��� �Է��� ������ �׸��Դϴ�.
                </div>
                <!-- action bt start -->
                <div class="pop_action_bt ar"> 
                    <a href="#" onclick="uf_saveCnsgrCal_rMate(); return false;" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a>
                </div>
                <!-- //action bt end// -->
            </div>
            <!-- //content end// -->
            </form>
        </div>
        




<%@ include file="/inc/jspFooter_popup.jsp" %> 





<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\"/>\
        <DateFormatter id=\"datefmt2\" formatString=\"YYYY-MM-DD\"/>\
        <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
        <columns>\
            <DataGridColumn id=\"AGRMT_INST_NM\"          dataField=\"AGRMT_INST_NM\"           headerText=\"������\"       width=\"100\" visible=\"true\" sortable=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CNSGR_SBJT_INST_NM\"     dataField=\"CNSGR_SBJT_INST_NM\"      headerText=\"��Ź���\"       width=\"100\" visible=\"true\" sortable=\"true\" editable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CNSGR_SBJT_NM\"          dataField=\"CNSGR_SBJT_NM\"           headerText=\"��Ź����\"       width=\"100\" visible=\"true\" sortable=\"false\" editable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CNSGR_SBJT_STR_DT\"      dataField=\"CNSGR_SBJT_STR_DT\"       headerText=\"��Ź��������\"   width=\"120\" visible=\"true\" sortable=\"false\" editable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{datefmt2}\" itemEditor=\"DateEditor\" />\
            <DataGridColumn id=\"CNSGR_SBJT_END_DT\"      dataField=\"CNSGR_SBJT_END_DT\"       headerText=\"��Ź��������\"   width=\"120\" visible=\"true\" sortable=\"true\" editable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" formatter=\"{datefmt2}\" itemEditor=\"DateEditor\" />\
            <DataGridColumn id=\"CNSGR_SBJT_CONT_AMT\"    dataField=\"CNSGR_SBJT_CONT_AMT\"     headerText=\"���ݾ�\"       width=\"100\" visible=\"true\" sortable=\"true\" editable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"CNSGR_SBJT_USE_AMT\"     dataField=\"CNSGR_SBJT_USE_AMT\"      headerText=\"���ݾ�\"       width=\"110\" visible=\"true\" sortable=\"true\" editable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"CNSGR_SBJT_REJCT_AMT\"   dataField=\"CNSGR_SBJT_REJCT_AMT\"    headerText=\"�������ݾ�\"     width=\"110\" visible=\"true\" sortable=\"true\" editable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"BAL_AMT\"                dataField=\"BAL_AMT\"                 headerText=\"�ܾ�\"           width=\"110\" visible=\"true\" sortable=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numeric\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO\"           dataField=\"AGRMT_SEQ_NO\"            headerText=\"�����Ϸù�ȣ\"   width=\"100\" visible=\"false\" sortable=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PMS_ID\"                 dataField=\"PMS_ID\"                  headerText=\"PMSID\"          width=\"110\" visible=\"false\" sortable=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SAC_SN\"                 dataField=\"SAC_SN\"                  headerText=\"�������\"       width=\"110\" visible=\"false\" sortable=\"true\" editable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_ID\"                dataField=\"SBJT_ID\"                 headerText=\"������ȣ\"       width=\"100\" visible=\"false\" sortable=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_ID\"          dataField=\"AGRMT_INST_ID\"           headerText=\"������ID\"     width=\"100\" visible=\"false\" sortable=\"false\" editable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CNSGR_SBJT_CONT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CNSGR_SBJT_USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CNSGR_SBJT_REJCT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{BAL_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
            gridComplit();
        };

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        
        //���󺯰�
        gridRoot.addEventListener("dataComplete", uf_cellColor);   //���󺯰�
        gridRoot.addEventListener("dataComplete", gridValCal_rMate);
        
        gridRoot.addEventListener("itemDataChanged", changeEvent);
        

    };
    

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    

    function gridComplit(){
            
        uf_proce_display_on();  //�ε���
        
        setTimeout(
                function(){
                    try{
                        SetData();
                    }finally{
                        reset_submit();
                    }
                }
                , 1000);   // 1���� ���� 1000 = 1��   
                
        
    }
   
    
    function uf_cellColor(){
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            alert("collection ��ü�� ã�� �� �����ϴ�");
            return;
        }
        for (var i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 1, 1, 1, null, 0xEDF2FE);    //��Ź���
            collection.addCellAttributeDetailAt(i, 2, 1, 1, null, 0xEDF2FE);    //��Ź����
            collection.addCellAttributeDetailAt(i, 3, 1, 1, null, 0xEDF2FE);    //��Ź��������
            collection.addCellAttributeDetailAt(i, 4, 1, 1, null, 0xEDF2FE);    //��Ź��������
            collection.addCellAttributeDetailAt(i, 5, 1, 1, null, 0xEDF2FE);    //���ݾ�
            collection.addCellAttributeDetailAt(i, 6, 1, 1, null, 0xEDF2FE);    //���ݾ�
            collection.addCellAttributeDetailAt(i, 7, 1, 1, null, 0xEDF2FE);    //�������ݾ�
            
        }
    }
    
    
    function changeEvent(event){
        var rowIndex = event.getRowIndex();                 // ����� ���ȣ
        var columnIndex = event.getColumnIndex();       // ����� ����ȣ
        var dataField = event.getDataField();               // ����� ���� ����Ÿ �ʵ�
        var dataRow = gridRoot.getItemAt(rowIndex); // ����� ����Ÿ ���ڵ�
        
        
        var footer = gridRoot.getObjectById("footer");
        footer.invalidateData();
        
        
        // �׸��� �Էº� ���̳ʽ�üũ
        chkGridNgtNum_rMate(gridRoot,rowIndex,"CNSGR_SBJT_CONT_AMT","���ݾ�");    // root, rowIdx, id, nm
        chkGridNgtNum_rMate(gridRoot,rowIndex,"CNSGR_SBJT_USE_AMT","���ݾ�");
        chkGridNgtNum_rMate(gridRoot,rowIndex,"CNSGR_SBJT_REJCT_AMT","�������ݾ�");
        
        if("CNSGR_SBJT_CONT_AMT" == dataField || "CNSGR_SBJT_USE_AMT" == dataField || "CNSGR_SBJT_REJCT_AMT" == dataField ){
            gridValCal_rMate();
        }   

    }
     
    function dataGrid_init(event){
        var rowIndex = event.getRowIndex();                 // ����� ���ȣ
        var columnIndex = event.getColumnIndex();       // ����� ����ȣ
        var dataField = event.getDataField();               // ����� ���� ����Ÿ �ʵ�
        var dataRow = gridRoot.getItemAt(rowIndex); // ����� ����Ÿ ���ڵ�
        
        if("CROV_CASH_APC_AMT2" == dataField || "CROV_SPOT_APC_AMT2" == dataField){
            
            var footer = gridRoot.getObjectById("footer");
            footer.invalidateData();
            
            
            uf_CalAmt_rMate(dataRow, rowIndex, columnIndex);
        }
        
    }
    
    
    
    

    /*****************************************************************
     * uf_CalAmt        �������ѵ�,�ܿ��ѵ� ���
     * @param
     * @return
    ******************************************************************/
    function uf_CalAmt_rMate(dataRow, rowIndex, columnIndex) {
        
        var change_amt1=0;              //�����ܾ�
        var change_amt2=0;              //�����ܾ�

        change_amt1 = Number(dataRow.USE_APV_CASH_LIM_AMT2)-Number(dataRow.CROV_CASH_APC_AMT2);
        change_amt2 = Number(dataRow.SPOT_BAL)-Number(dataRow.CROV_SPOT_APC_AMT2);
        
        if((change_amt1<0) || (change_amt2<0)){
            alert("��û�ݾ��� ����ܾ׺��� Ŭ �� �����ϴ�.");
            gridRoot.setItemFieldAt("0", rowIndex, "CROV_CASH_APC_AMT2");     // ��, row, id
            gridRoot.setItemFieldAt("0", rowIndex, "CROV_SPOT_APC_AMT2");     // ��, row, id
            
            var footer = gridRoot.getObjectById("footer");
            footer.invalidateData();
            
            return;
        }else{
            gridRoot.setItemFieldAt("0", rowIndex, "BAL_CASH");     // ��, row, id   �����ܾ� �ݾ��Է�
            gridRoot.setItemFieldAt("0", rowIndex, "BAL_SPOT");     // ��, row, id   
            
            var footer = gridRoot.getObjectById("footer");
            footer.invalidateData();
        }
        
    }
    
    
    
    /*****************************************************************
     * gridValCal       �ܾװ��
     * @param
     * @return
    ******************************************************************/
    function gridValCal_rMate(){
        var frm     =   document.frm;
        var grid    =   gridRoot;
        var BalAmt  =   0;

        var footer = gridRoot.getObjectById("footer");
        
        for(var i=0; i<getGridRowCount_rMate(grid);i++){
            var dataRow = grid.getItemAt(i); 
                
            if(Number(dataRow.CNSGR_SBJT_CONT_AMT)<Number(dataRow.CNSGR_SBJT_USE_AMT)){
                alert("���ݾ��� ���ݾ��� �ʰ��� �� �����ϴ�.");
                gridRoot.setItemFieldAt("0", i, "CNSGR_SBJT_USE_AMT");     // ��, row, id
                footer.invalidateData();
                return;
            }
            if(Number(dataRow.CNSGR_SBJT_USE_AMT)<Number(dataRow.CNSGR_SBJT_REJCT_AMT)){
                alert("������ �ݾ��� ���ݾ��� �ʰ��� �� �����ϴ�.");
                gridRoot.setItemFieldAt("0", i, "CNSGR_SBJT_REJCT_AMT");     // ��, row, id
                footer.invalidateData();
                return;
            }

            BalAmt  =   Number(dataRow.CNSGR_SBJT_CONT_AMT)-Number(dataRow.CNSGR_SBJT_USE_AMT)+Number(dataRow.CNSGR_SBJT_REJCT_AMT);

            gridRoot.setItemFieldAt(BalAmt+"", i, "BAL_AMT");     // ��, row, id
            footer.invalidateData();
        }
        
    }

        
        
        
    /*****************************************************************
     * uf_saveCnsgrCal      ��Ź����������
     * @param
     * @return
    ******************************************************************/
    function uf_saveCnsgrCal_rMate(){
        var frm         = document.frm;
        var grid        = gridRoot;
        var insertData  = "";
        var itm_num     = 0;

        //����������� 10:"����"
        if("10"!='<%=sbjtData_instSbjtPrgrSt%>'){
            alert("�ش� ����� ����ܰ谡 �ƴմϴ�.");
            return;
        }
        
        for(var i=0; i<getGridRowCount_rMate(grid);i++){
            var dataRow = grid.getItemAt(i);
            var CNSGR_SBJT_STR_DT = dataRow.CNSGR_SBJT_STR_DT.replace(/-/gi,"").replace(/\//gi,"");    //��Ź��������:CNSGR_SBJT_STR_DT
            var CNSGR_SBJT_END_DT = dataRow.CNSGR_SBJT_END_DT.replace(/-/gi,"").replace(/\//gi,"");    //��Ź��������:CNSGR_SBJT_END_DT
            
            if(!((""==dataRow.CNSGR_SBJT_INST_NM) && (""==dataRow.CNSGR_SBJT_NM)   //��Ź���CNSGR_SBJT_INST_NM: , ��Ź����:CNSGR_SBJT_NM
                     && ("0"==Number(dataRow.CNSGR_SBJT_CONT_AMT)) && ("0"==Number(dataRow.CNSGR_SBJT_USE_AMT)) && ("0"==Number(dataRow.CNSGR_SBJT_REJCT_AMT)) )){  //���ݾ�:CNSGR_SBJT_CONT_AMT, ���ݾ�:CNSGR_SBJT_USE_AMT, �������ݾ�:CNSGR_SBJT_REJCT_AMT

                if(Number(CNSGR_SBJT_STR_DT) > Number(CNSGR_SBJT_END_DT)){    //��Ź��������:CNSGR_SBJT_STR_DT ,��Ź��������:CNSGR_SBJT_END_DT
                    alert("��Ź�������ڰ� �������ں��� Ŭ �� �����ϴ�.");
                    return;
                }

                insertData += "&PMS_ID="              +dataRow.PMS_ID;                  //PMSID
                insertData += "&AGRMT_SEQ_NO="        +dataRow.AGRMT_SEQ_NO;            //�����Ϸù�ȣ
                insertData += "&SBJT_ID="             +dataRow.SBJT_ID;                 //������ȣ
                insertData += "&AGRMT_INST_ID="       +dataRow.AGRMT_INST_ID;           //������ID
                insertData += "&SAC_SN="              +dataRow.SAC_SN;                  //�������
                insertData += "&CNSGR_SBJT_INST_NM="  +dataRow.CNSGR_SBJT_INST_NM;      //��Ź���
                insertData += "&CNSGR_SBJT_NM="       +dataRow.CNSGR_SBJT_NM;           //��Ź����
                insertData += "&CNSGR_SBJT_STR_DT="   +CNSGR_SBJT_STR_DT;               //��Ź��������
                insertData += "&CNSGR_SBJT_END_DT="   +CNSGR_SBJT_END_DT;               //��Ź��������
                insertData += "&CNSGR_SBJT_CONT_AMT=" +dataRow.CNSGR_SBJT_CONT_AMT;     //���ݾ�
                insertData += "&CNSGR_SBJT_USE_AMT="  +dataRow.CNSGR_SBJT_USE_AMT;      //���ݾ�
                insertData += "&CNSGR_SBJT_REJCT_AMT="+dataRow.CNSGR_SBJT_REJCT_AMT;    //�������ݾ�
                itm_num=itm_num+1;
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
                    alert("��Ź�������� ��ϿϷ� �Ǿ����ϴ�.");
                    window.close();
                }
                , 1000);   // 1���� ���� 1000 = 1��   
                
        
        removeTempAttribute(frm);
    }
    
    
        
     
    $(document).ready(function() {
        // rMateGrid �ʱ�ȭ
        rMateGridInit();
    }); 
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<script type="text/javascript">
function SetData() { 
    
    var seqNo = "<%=agrmtSeqNo%>";

    
    if(!seqNo || seqNo == "") return;
    if( isSubmit() ) return;    // ����ó��
    
        
    try {
        
        var cnt = 0;
        var gridValue = [];
        
        //1. �ű԰���
        if("G00000000000001" == seqNo){

        //2. �������
        }else if("G00000000000002" == seqNo){

        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){
            gridValue[cnt++] = {"AGRMT_SEQ_NO"            : "G00000000000003","PMS_ID"                  : "G01","SAC_SN"                  : "1","SBJT_ID"                 : "TEST0003","AGRMT_INST_ID"           : "10112249","AGRMT_INST_NM"           : "��RCMS","CNSGR_SBJT_INST_NM"      : "�ѱ��������򰡰�����","CNSGR_SBJT_NM"           : "RCMS �ǽ��� �������","CNSGR_SBJT_STR_DT"       : "2013/02/01","CNSGR_SBJT_END_DT"       : "2014/01/31","CNSGR_SBJT_CONT_AMT"     : "1000","CNSGR_SBJT_USE_AMT"      : "1000","CNSGR_SBJT_REJCT_AMT"    : "0","BAL_AMT"                 : ""};
        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){

        }
        
    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}

</script>


</body></html>