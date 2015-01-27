<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_26_00.jsp
 *   Description        : ���꼭�����
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.16                     ������             
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
String hmpwRoleDv   = SessionUtil.getRequestValue(request, "hmpwRoleDv");
String rcmsGrpCd    = SessionUtil.getRequestValue(request, "rcmsGrpCd");
String pmsId        = SessionUtil.getRequestValue(request, "pmsId");
String sbjtId       = SessionUtil.getRequestValue(request, "sbjtId");
String agrmtSeqNo   = SessionUtil.getRequestValue(request, "agrmtSeqNo");
String agrmtInstId  = SessionUtil.getRequestValue(request, "agrmtInstId");
String sacSn        = SessionUtil.getRequestValue(request, "sacSn");

String sacPrgrSt = SessionUtil.getRequestValue(request, "sacPrgrSt");




String cmadId = "D201302033016381";
%>


<title>���꼭�� ��� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���꼭�� ���</p>
        </div>
        <!-- //head title// --> 
    </div>





<script type="text/javaScript">    
    

    /******************************************************************
     * edmsReturnAction     EDMS ��ȯ���׸������
     * @param
     * @return
    ******************************************************************/
    function edmsReturnAction() {
        
        var dockeyNo, docname, dockey, methodNameNo;
        var frm = document.frm;

        docKeyNo     = frm.dockeyNo.value;
        docKey       = frm.docKey.value;
        methodNameNo = frm.methodName.value;
        docName      = (frm.docName.value).replace(/=/gi,"-").replace(/&/gi,"n");
        
        
        if("" != dockey){
            if (methodNameNo == "delete"){
            	gridRoot.setItemFieldAt("", rMateGrid_rowIndex, "EDMS_DOC_ID");     // ��, row, id EDMS����ID
            	gridRoot.setItemFieldAt("�̵��", rMateGrid_rowIndex, "DOC_REG_YN");     // ��, row, id  ������Ͽ���
            	
            } else {
            	gridRoot.setItemFieldAt(docKey, rMateGrid_rowIndex, "EDMS_DOC_ID");     // ��, row, id  EDMS����ID
                gridRoot.setItemFieldAt("���", rMateGrid_rowIndex, "DOC_REG_YN");     // ��, row, id  ������Ͽ���
                
            }
        }
    //  alert("EDMS����ID : " + getCell(obj, obj.FocusedRecordIndex, "EDMS����ID"));

    }

    /******************************************************************
     * fn_reg   ���꼭����� ����   
     * @param
     * @return
    ******************************************************************/
    function fn_reg() {
        
        var frm = document.frm;

        if(!confirm("�����Ͻðڽ��ϱ�?")){return;}          
        
        var gridRowCnt = getGridRowCount_rMate();
        
        for(var i=0; i<gridRowCnt; i++){
        	var dataRow = gridRoot.getItemAt(i);
            get2post(frm, "DocTypDv="     + dataRow.DOC_TYP_DV); //������������
            get2post(frm, "EdmsDocId="    + dataRow.EDMS_DOC_ID);   //EDMS����ID
            get2post(frm, "OldEdmsDocId=" + dataRow.OLD_EDMS_DOC_ID); //����EDMS����ID
            get2post(frm, "DetCmadId="    + dataRow.ADD_DOC_ID); //÷�ι���ID
        }

        get2post(frm, "sacSn=<%=sacSn%>");
        get2post(frm, "cmadId=<%=cmadId%>");
        get2post(frm, "pmsId=<%=pmsId%>");
        get2post(frm, "sbjtId=<%=sbjtId%>");
        get2post(frm, "agrmtSeqNo=<%=agrmtSeqNo%>");
        get2post(frm, "agrmtInstId=<%=agrmtInstId%>");
        
        
        
        uf_proce_display_on();  //�ε���
        
        setTimeout(
                function(){
                    alert("����Ǿ����ϴ�.");
                    reset_submit();
                    window.close();
                }
                , 1000);   // 1���� ���� 1000 = 1��
                
                
    }
    
    
    /******************************************************************
     * fn_File  ���꼭����� ����
     * @param
     * @return
    ******************************************************************/
    var rMateGrid_rowIndex = 0;
    function fn_File(dataField, dataRow, rowIndex) {
    	rMateGrid_rowIndex = rowIndex;
        var mode;
        var dockey;
        var DocTypDv;
        var frm            = document.frm;
        var gridRec        = rowIndex;
        var hmpwRoleDvEdms = "<%=hmpwRoleDv%>";
        var rcmsGrpCdEdms  = "<%=rcmsGrpCd%>";
        var sacPrgrSt      = "<%=sacPrgrSt%>";
        var corcLimtYn     = dataRow.UDT_LMT_YN;    //�������ѿ���
        
        if("MR042" == rcmsGrpCdEdms || "MR043" == rcmsGrpCdEdms || "MR023" == rcmsGrpCdEdms){
            hmpwRoleDvEdms = "03";
        }
        
        if("DOC_REG" == dataField) {    //�������
            // 2012.03.23 �µ���
            // ������¿� ���� ���� ���/����/���� ó���� ���� �߰�
            if("1" == sacPrgrSt || "2" == sacPrgrSt || "3" == sacPrgrSt || "5" == sacPrgrSt){
                alert("���������� �Ϸ�� ���Ŀ��� ������ �Ұ����մϴ�.");
                return;
            }
            // 2012.03.23 �µ��� END
            
            if("���" == dataRow.DOC_REG_YN) {    //������Ͽ���
                
                // ���� ���� ���ΰ� Y �� ��� ������ �� ���������� ����� �����.
                if (corcLimtYn == "Y") {
                    
                    alert("����Ϸ� �� ���� �������� �� ���� ���깮���� ���� ����ϼž� �մϴ�. [��������]���� ������ �����Ͽ� ����Ͻø� �˴ϴ�.");
                    
                    mode = "create";
                    //����Ű����( PMSID + ����ID + �����Ϸù�ȣ + ������ + ����� + �������� + ��� + ���� + ������)
                    dockey =  ";"+"<%=sbjtId%>"+";"+"<%=agrmtSeqNo%>"+";"+"<%=agrmtInstId%>"+";;;;;";
                    frm.docKey.value = dockey;
                    DocTypDv = dataRow.DOC_TYP_DV;    //������������;
                    
                } else {
                    
                    mode     = "update";
                    dockey   = dataRow.EDMS_DOC_ID;    //EDMS����ID
                    
                    DocTypDv = dataRow.DOC_TYP_DV;    //������������;
                }
            } else {
                mode = "create";
                //����Ű����( PMSID + ����ID + �����Ϸù�ȣ + ������ + ����� + �������� + ��� + ���� + ������)
                dockey =  ";"+"<%=sbjtId%>"+";"+"<%=agrmtSeqNo%>"+";"+"<%=agrmtInstId%>"+";;;;;";
                frm.docKey.value = dockey;
                DocTypDv = dataRow.DOC_TYP_DV;    //������������;
            }
        } 
        else if ("DOC_VIEW" == dataField) { //��������
            
            mode     = "get";
            dockey   = dataRow.EDMS_DOC_ID;    //EDMS����ID
            DocTypDv = dataRow.DOC_TYP_DV;    //������������;
            
            if("�̵��" == dataRow.DOC_REG_YN){ //������Ͽ���
                mode    = "blank";
            }      
            

        } 
        else if ("DOC_DEL" == dataField) { //��������
            // 2012.03.23 �µ��� START
            // ������¿� ���� ���� ���/����/���� ó���� ���� �߰�
            if("1"==sacPrgrSt || "2"==sacPrgrSt || "3"==sacPrgrSt || "5"==sacPrgrSt){
                alert("���������� �Ϸ�� ���Ŀ��� ������ �Ұ����մϴ�.");
                return;
            }
            // 2012.03.23 �µ��� END
            
            if("���" == dataRow.DOC_REG_YN){ //������Ͽ���
                mode    = "delete";
                dockey  = dataRow.EDMS_DOC_ID;    //EDMS����ID            
                DocDvCd = dataRow.DOC_TYP_DV;    //������������;
                if(!confirm("�����Ͻðڽ��ϱ�?")){return;}
            }       
        }   
    
        //EDMS ȣ��   
        edmsUploadFileNewAcrt("frm", mode, dockey, "SMTEST" , hmpwRoleDvEdms , DocTypDv,"/pop/file_popup.jsp?mode="+mode);

    }
    
</script>



        <div id="body" style="margin:-48px 0 -25px;">
            <form name="frm" method="post">
            <input type="hidden" name="docKey"      value="" /> <!-- ������EDMS_dockey     --> 
            <input type="hidden" name="dockeyNo"    value="" /> <!-- ���õ� �������̺�Ű     -->
            <input type="hidden" name="docName"     value="" /> <!-- ���õ� �������̺�Ű     -->
            <input type="hidden" name="methodName"  value="" /> <!-- �޼ҵ��               -->    
            <input type="hidden" name="attr98"      value="" /> <!-- ���ϰ����(������ϸ�)   -->
            <input type="hidden" name="attr99"      value="" /> <!-- ���ϰ����(������ϰ���)  -->
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>���꼭�����</h3>
                <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->   
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "280", "#FFFFFF", "transparent");
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
                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-01" title="����" onclick="fn_reg(); return false;"><span class="bt_sp">����</span></a> 
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
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"DOC_DV\"             dataField=\"DOC_DV\"          headerText=\"��������\"       width=\"380\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DOC_REG_YN\"         dataField=\"DOC_REG_YN\"      headerText=\"������Ͽ���\"   width=\"85\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DOC_REG\"            dataField=\"DOC_REG\"         headerText=\"�������\"       width=\"65\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" />\
            <DataGridColumn id=\"DOC_VIEW\"           dataField=\"DOC_VIEW\"        headerText=\"��������\"       width=\"66\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" />\
            <DataGridColumn id=\"DOC_DEL\"            dataField=\"DOC_DEL\"         headerText=\"��������\"       width=\"66\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" />\
            <DataGridColumn id=\"DOC_TYP_DV\"         dataField=\"DOC_TYP_DV\"      headerText=\"������������\"   width=\"85\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EDMS_DOC_ID\"        dataField=\"EDMS_DOC_ID\"     headerText=\"EDMS����ID\"     width=\"85\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OLD_EDMS_DOC_ID\"    dataField=\"OLD_EDMS_DOC_ID\" headerText=\"����EDMS����ID\" width=\"85\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ADD_DOC_ID\"         dataField=\"ADD_DOC_ID\"      headerText=\"÷�ι���ID\"     width=\"85\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"UDT_LMT_YN\"         dataField=\"UDT_LMT_YN\"      headerText=\"�������ѿ���\"   width=\"85\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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

        
        var itemClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var columns = dataGrid.getColumns();
            var ii = 0;
            var jj = 0;
            for ( var i = 0; i < columns.length; i++){
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
            
            //DOC_REG DOC_VIEW DOC_DEL
            if ("DOC_REG" == dataField || "DOC_VIEW" == dataField || "DOC_DEL" == dataField) {
                fn_File(dataField, dataRow, rowIndex);
            }
            
            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //�̺�Ʈ ���
            dataGrid.addEventListener("itemClick", itemClickHandler); //����Ŭ�� �̺�Ʈ
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", SetData);   //rMateGrid ���̾ƿ� ��� �� ��ȸ����
        
        gridRoot.addEventListener("dataComplete", columnBackGroundStyle);   //rMateGrid ���̾ƿ� ��� �� ��ȸ����

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
    //�÷� ���󺯰�
    function columnBackGroundStyle() {
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            alert("collection ��ü�� ã�� �� �����ϴ�");
            return;
        }
        for (i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 3, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 4, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 5, 1, 1, null, 0xEDF2FE);
        }
    }
    
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->

<script type="text/javascript">

function SetData() {
    
	

    var insertStr   = "1359731104894059";
    var insertStr1  = "1384602475498067";
    var insertStr2  = "";
    var insertStr3  = "";
    var insertStr4  = "";
    var insertStr5  = "";
    var insertStr6  = "";
    var insertStr7  = "1359731104894064";
    var insertStr8  = "";
    var insertStr9  = "";
    var insertStr10 = "";
    var insertStr20 = "D201302033016382";
    var insertStr21 = "D201311203022295";
    var insertStr22 = "";
    var insertStr23 = "";
    var insertStr24 = "";
    var insertStr25 = "";
    var insertStr26 = "";
    var insertStr27 = "D201302033016389";
    var insertStr28 = "";
    var insertStr29 = "";
    var insertStr230 = "";
    var insertStr30 = "Y";
    var insertStr31 = "N";
    var insertStr32 = "";
    var insertStr33 = "";
    var insertStr34 = "";
    var insertStr35 = "";
    var insertStr36 = "";
    var insertStr37 = "N";
    var insertStr38 = "";
    var insertStr39 = "";
    var insertStr40 = "";
        

        
        
        var edmsDocId_arr = new Array();    //EDMS����ID
        edmsDocId_arr.push(insertStr);
        edmsDocId_arr.push(insertStr1);
        edmsDocId_arr.push(insertStr2);
        edmsDocId_arr.push(insertStr3);
        edmsDocId_arr.push(insertStr4);
        edmsDocId_arr.push(insertStr5);
        edmsDocId_arr.push(insertStr6);
        edmsDocId_arr.push(insertStr7);
        edmsDocId_arr.push(insertStr8);
        edmsDocId_arr.push(insertStr9);
        edmsDocId_arr.push(insertStr10);
        
        var docRegYn_arr = new Array();
        
        
        if(""==insertStr){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }

        if(""==insertStr1){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }

        if(""==insertStr2){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }

        if(""==insertStr3){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }

        if(""==insertStr4){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }

        if(""==insertStr5){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }

        if(""==insertStr6){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }

        if(""==insertStr7){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }
        
        if(""==insertStr8){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }
        
        if(""==insertStr9){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }

        if(""==insertStr10){
            docRegYn_arr.push("�̵��");
        }else{
            docRegYn_arr.push("���");
        }
        
        var preEdmsDocId_arr = new Array(); //����EDMS����ID
        preEdmsDocId_arr.push(insertStr);
        preEdmsDocId_arr.push(insertStr1);
        preEdmsDocId_arr.push(insertStr2);
        preEdmsDocId_arr.push(insertStr3);
        preEdmsDocId_arr.push(insertStr4);
        preEdmsDocId_arr.push(insertStr5);
        preEdmsDocId_arr.push(insertStr6);
        preEdmsDocId_arr.push(insertStr7);
        preEdmsDocId_arr.push(insertStr8);
        preEdmsDocId_arr.push(insertStr9);
        preEdmsDocId_arr.push(insertStr10);
        
        
        var addDocId_arr = new Array(); //÷�ι���ID
        addDocId_arr.push(insertStr20);
        addDocId_arr.push(insertStr21);
        addDocId_arr.push(insertStr22);
        addDocId_arr.push(insertStr23);
        addDocId_arr.push(insertStr24);
        addDocId_arr.push(insertStr25);
        addDocId_arr.push(insertStr26);
        addDocId_arr.push(insertStr27);
        addDocId_arr.push(insertStr28);
        addDocId_arr.push(insertStr29);
        addDocId_arr.push(insertStr230);
        
        
        var udtLmtYn_arr = new Array(); //�������ѿ���
        udtLmtYn_arr.push(insertStr30);
        udtLmtYn_arr.push(insertStr31);
        udtLmtYn_arr.push(insertStr32);
        udtLmtYn_arr.push(insertStr33);
        udtLmtYn_arr.push(insertStr34);
        udtLmtYn_arr.push(insertStr35);
        udtLmtYn_arr.push(insertStr36);
        udtLmtYn_arr.push(insertStr37);
        udtLmtYn_arr.push(insertStr38);
        udtLmtYn_arr.push(insertStr39);
        udtLmtYn_arr.push(insertStr40);
        
    
        
        
        var cnt = 0;
        var rowCnt = 0;
        var gridValue = [];
        gridValue[cnt++] = {"DOC_DV":"������ �������� Ȯ�μ�(���� ������ ���)","DOC_TYP_DV":"A02S01","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"�ܺ� ���������� �����Ȯ�μ�(�ܺ������������� �ִ°��)","DOC_TYP_DV":"A02S02","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"�ű� ���������� ä��Ȯ�μ�(�ű� ������������ ä���� ���)","DOC_TYP_DV":"A02S03","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"���������� ��Ȳǥ(��������, �����Ⱓ, ������) �� �޿�����, ������������ �ٷμҵ��õ¡��������","DOC_TYP_DV":"A02S04","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"���ο������ޱ���(�������޿� ���� ������� ��ü������ ������ ���)","DOC_TYP_DV":"A02S05","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"�߱ٽĴ�, ������Ȱ���, ����� � ���� ���� ���α���(�߱ٽĴ�, ������Ȱ���, ����� ���� ���޿� ���� ������� ��ü������ �����Ѱ��)","DOC_TYP_DV":"A02S06","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"���������κ��� ������ ���ຯ�� ���� ����(���ຯ�� ���� ������ �ִ� ���)","DOC_TYP_DV":"A02S07","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"���ຯ����λ���(�̿��ݽ�û����)","DOC_TYP_DV":"A02S08","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"������ ��������� ��� ������� ������ �� ��ü ������ ���� ���� ����","DOC_TYP_DV":"A02S09","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"�л��ΰǺ� ���հ�������� ��� ���հ������ ������","DOC_TYP_DV":"A02S10","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;
        gridValue[cnt++] = {"DOC_DV":"��Ÿ, ����� ����(�������)�� �ʿ��ϴٰ� �Ǵ��ϴ� ����(�����ȹ�� ��)","DOC_TYP_DV":"A02S99","EDMS_DOC_ID":edmsDocId_arr[rowCnt],"DOC_REG_YN":docRegYn_arr[rowCnt],"DOC_REG":"�������","DOC_VIEW":"��������","DOC_DEL":"��������","OLD_EDMS_DOC_ID":preEdmsDocId_arr[rowCnt],"ADD_DOC_ID":addDocId_arr[rowCnt],"UDT_LMT_YN":udtLmtYn_arr[rowCnt]};
        rowCnt++;

        
        
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
       

}

</script>

<script type="text/javascript">

$(document).ready(function() {
    
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    
});  


</script>

</body>
</html> 
