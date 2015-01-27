<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T22_01_30.jsp 
 *   Description        : ������κ���ҿ�û �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.03                     ������             
 *
 *  @author     ������ 
 *  @Since      
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- //2014 �׸��� ��ü �۾� head start -->
<%@ include file="/inc/jspHead_popup.jsp"%>
<!-- //2014 �׸��� ��ü �۾� head end -->

<%
    String INQ_STR_DT = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "InqStrDt")); // ��ȸ���۳�¥
    String INQ_END_DT = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "InqEndDt")); // ��ȸ���ᳯ¥
    String PayPlanDtlsRegNcnt = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "PayPlanDtlsRegNcnt")); // ����������û�Ǽ�
    String PlanAmt = StringUtil.null2void(SessionUtil.getRequestValue(
            request, "PlanAmt")); // ����������û�ݾ�
    String VrtlAcctNo = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "VrtlAcctNo")); // ������¹�ȣ
    String EXIST_VACC = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "EXIST_VACC")); // ������¹߱�����
    String AgrmtSeqNo = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "pAgrmtSeqNo")); // �����Ϸù�ȣ
    String AgrmtInstId = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "pAgrmtInstId")); // ������ID

    String mapKey = StringUtil.null2void(SessionUtil.getRequestValue(
            request, "AUTO_MAP_KEY"));

    String ButrId[] = request.getParameterValues("ButrId"); // �������ŷ�����ID
    String TrscEvdcDv[] = request.getParameterValues("TrscEvdcDv"); // ��������

    String gridHeight = "300";

    
    String AgrmtSeqNo2 = StringUtil.null2void(SessionUtil
            .getRequestValue(request, "AgrmtSeqNo")); // �����Ϸù�ȣ
%>

<script type="text/javascript">

    //rMateGrid ���� ��ü
    var flashVars_itxp = "dataType=json&bridgeName=gridBridge_itxp";
    var gridApp_itxp; // �÷��� �⺻ ��ü
    var gridData_itxp; // �׸��� ������ ���
    var gridRoot_itxp; // ����Ÿ�� �׸��带 �����ϴ� ��ü
    var dataGrid_itxp; // �׸��� ���� ���
    var collection_itxp; // �׸����� ����Ÿ ��ü
    
    //rMateGrid �ε��� �Ϸ� �� �� ��ȸ�� ����
    var isGrid_itxp = false;

    
    var agrmtSeqNo = "<%=AgrmtSeqNo2%>";
    
</script>


<!-- head title -->
<div class="title">
    <p class="pop_title">������κ���� ��û</p>
</div>
<!-- //head title// -->

<div id="body">
    <form name="frm" method="post">
        <input type="hidden" id="S_NPRF_INST_YN" name="S_NPRF_INST_YN"
            value="<%//=null2void(result0.getNprfInstYn())%>"> <input
            type="hidden" id="Evdc_Dv" name="Evdc_Dv"
            value="<%=StringUtil.null2void(TrscEvdcDv[0])%>" />
        <!-- ��������                    -->
        <input type="hidden" id="itxp_cnt" name="itxp_cnt" value="1" />
        <!-- ����ϰǼ� -->
        <input type="hidden" id="dockeyNo" name="dockeyNo" value="" />
        <!-- ���õ� �������̺�Ű -->
        <input type="hidden" id="doc_dv" name="doc_dv" value="" />
        <!-- ��������/�ΰǺ񳻿� -->
        <input type="hidden" id="docKey" name="docKey" value="" />
        <!-- ������EDMS_dockey -->
        <input type="hidden" id="docName" name="docName" value="" />
        <!-- ���ϰ����(������ϸ�) -->
        <input type="hidden" id="attr98" name="attr98" value="" />
        <!-- ���ϰ����(������ϸ�) -->
        <input type="hidden" id="attr99" name="attr99" value="" />
        <!-- ���ϰ����(������ϰ���) -->
        <input type="hidden" id="p_rchrInfo" name="p_rchrInfo" value="" />
        <!-- �ΰǺ񳻿� -->
        <input type="hidden" id="methodName" name="methodName" value="" />
        <!-- �޼ҵ�� -->

        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>������κ���ҿ�û</h3>
            <div class="t10"></div>

            <!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->
            <!-- �׸��� Start -->
            <div class="t05">
                <script>
                     rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "<%=gridHeight%>", "#FFFFFF", "transparent");
                     </script>
            </div>
            <!-- �׸��� End -->
            <!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->

            <div id="grpView" style="display: none;">
                <div class="t10"></div>
                <h3>���켱�����������</h3>
                <!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->
                <!-- �׸��� Start -->
                <div class="t05">
                    <script>rMateGridCreate("grid_itxp", "/rMateGrid/Component/rMateGridWeb", flashVars_itxp, "100%", "167", "#FFFFFF", "transparent");</script>
                </div>
                <!-- �׸��� End -->
                <!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->

                <!-- ���̵� start -->
                <div class="pop_line_gbox">
                    <div class="pop_line_gboxc">
                        <ul>
                            <li>���켱���� ��ϵ� ������ �������� ��ü�� ����� ����� ������ �Բ� ����˴ϴ�.</li>
                            <li>���켱 ��ü ������ ���߾� ���������� �ۼ��Ͻñ� �ٶ��ϴ�.</li>
                        </ul>
                    </div>
                </div>
                <!-- //���̵� end// -->
            </div>

            <!-- ��һ��� ����Ʈ start -->
            <div class="t10 b25 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0"
                    summary="��һ��� ����Ʈ" class="tbl_type02">
                    <caption>��һ��� ����Ʈ</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row"><label for="ApcRsn">��һ���</label></th>
                            <td class="ll"><input type="text" name="ApcRsn" id="ApcRsn"
                                title="��һ����Է�" class="inputl" style="width: 550px;" /></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- //��һ��� ����Ʈ end// -->
            <!-- ���̵� start -->
            <div class="pop_line_gbox">
                <div class="pop_line_gboxc">
                    <ul>
                        <li>�κ���ұݾ��� ���ޱݾ׺��� �۰ų� ���� �Ǵ� ���ޱݾ� + �ΰ����װ� �����ϰ� �Է��ؾ� �մϴ�.</li>
                        <li>�κ���ҳ��뿡 �°� �������� �� �ΰǺ�󼼸� �����ϼž� �մϴ�.</li>
                    </ul>
                </div>
            </div>
            <!-- //���̵� end// -->
            <!-- action bt start -->
            <div class="pop_action_bt ar">
                <a href="#" class="bt_action2-1" title="����"
                    onclick="uf_save(); return false;"><span class="bt_sp">����</span></a>
            </div>
            <!-- //action bt end// -->
        </div>
    </form>
    <!-- //content end// -->
</div>

<!-- //2014 �׸��� ��ü �۾� footer start -->
<%@ include file="/inc/jspFooter_popup.jsp"%>
<!-- //2014 �׸��� ��ü �۾� footer end -->

<script type="text/javascript">

    /******************************************************************
     * uf_save      ��������ü��ҿ�û
     * @param
     * @return
    ******************************************************************/
    function uf_save(){     
        var frm         = document.frm;     
        var vcnt        = 0;
        var sumAmt      = 0;
        var planAmt     = 0;
        var allAmt      = 0;
        var vatAmt      = 0;
        var arr,arr_amt;
        var arr_sum     = 0;
        var total_sum   = 0;
        var existAllCan = false;
        var NprfInstYn  = frm.S_NPRF_INST_YN.value;
        
        for(var i=0; i<getGridRowCount_rMate(); i++) {          
            allAmt += Number(gridRoot.getItemFieldAt(i, "TOTL_AMT"));           //��Ұ��ɱݾ�
            sumAmt += Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT"));       //�κ���ұݾ�
            vatAmt += Number(gridRoot.getItemFieldAt(i, "USE_VAT_AMT"));        //�ΰ�����
        }
        
        if(sumAmt == 0){
            alert("�κ���ұݾ��� �Է��ϼ���");
            return;
        }
        
        for(var i=0; i<collection.getLength(); i++) {
            var canAmt = Number(gridRoot.getItemFieldAt(i, "RTRT_FIX_SPLY_AMT")) + Number(gridRoot.getItemFieldAt(i, "RTRT_FIX_VAT_AMT"));      // ��ұݾ�
            if(Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) < 0){
                alert("�κ���ұݾ��� ����� �����մϴ�.");
                return;
            }
            
            if(Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) > Number(gridRoot.getItemFieldAt(i, "TOTL_AMT"))){
                alert("�κ���ұݾ��� ��Ұ��ɱݾ׺��� Ů�ϴ�.");
                return;
            }
                        
            if(Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) > (Number(gridRoot.getItemFieldAt(i, "USE_SPLY_AMT")) - Number(gridRoot.getItemFieldAt(i, "RTRT_FIX_SPLY_AMT"))) 
                &&  Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) < Number(gridRoot.getItemFieldAt(i, "TOTL_AMT"))){
                alert("�ΰ����ױ��� �κ������ �� �����ϴ�.");
                return;
            }
            
            // ����� ��ü ��ҵǾ����� Ȯ��.
            if (Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) == Number(gridRoot.getItemFieldAt(i, "TOTL_AMT"))) {
                existAllCan = true;
            } else {
                
                if ((vatAmt > 0 && gridRoot.getItemFieldAt(i, "VAT_PROC_D") != "B01003") && existAllCan) {
                    alert("�����ü ��Ұ��� �ִ� ��� ����� �Ϻαݾ� ��Ҵ� �Ұ����մϴ�.");
                    return;
                }
            } 
            
            
            for(var i=0; i<collection.getLength(); i++) {
                if( !(("B0301" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "Y" == NprfInstYn) 
                        || ("B0206" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "E"!=frm.Evdc_Dv.value)
                        || ("B0206006" == gridRoot.getItemFieldAt(i, "SUB_DTLS_ITXP_CD"))) ){
                        if(Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) > 0 && gridRoot.getItemFieldAt(i, "POP_EXE") == "N") {
                            alert("���������۾��� ������� ���� ���� �ֽ��ϴ�. �������� �� �����Ͻñ� �ٶ��ϴ�.");
                            return;
                        }
                }               
            }           
        }
    
        // ���������� ��Ұ��ɱݾ� ��ü�� �ƴ� ��� ���ް��׳��θ� ��� ����.
        //   * ��񺰷� ���ޱݾ� ������ ���δ� ���� �������� üũ�ϰ� ����.
        if(sumAmt != allAmt) {
            
            var butrUseSplyAmt  = Number(gridRoot.getItemFieldAt(0, "BUTR_USE_SPLY_AMT"));
            var butrUseVatAmt   = Number(gridRoot.getItemFieldAt(0, "BUTR_USE_VAT_AMT"));
            var butrRtrtSplyAmt = Number(gridRoot.getItemFieldAt(0, "BUTR_RTRT_SPLY_AMT"));
            var butrRtrtVatAmt  = Number(gridRoot.getItemFieldAt(0, "BUTR_RTRT_VAT_AMT"));
            
            if(sumAmt > (butrUseSplyAmt - butrRtrtSplyAmt)) {
                alert("�ΰ������� ��ü ��ҽ� ��� �����մϴ�.");
                return;
            }
        }
    
        //-----------------------------------
        //  �������� üũ ���� ��Ȳ
        //  1.�񿵸������ ������
        //  2.�������������� ������ ��������
        //  3.�������������� �������� ��Ÿ����
        //-----------------------------------       
        for(var i=0; i<collection.getLength(); i++) {
            if( !(("B0301" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "Y" == NprfInstYn) 
                    || ("B0206" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "E"!=frm.Evdc_Dv.value)
                    || ("B0206006" == gridRoot.getItemFieldAt(i, "SUB_DTLS_ITXP_CD"))) ){
                if(null==gridRoot.getItemFieldAt(i, "FILE_NM") || ""==gridRoot.getItemFieldAt(i, "FILE_NM")){
                    alert("���������� ������ּ���.");
                    return;
                }
            }           
        }
        
        //-----------------------------------
        //  �ΰǺ񳻿� üũ(�ΰǺ�,���������ΰ�츸 ����ʼ�)
        //-----------------------------------       
        for(var i=0; i<collection.getLength(); i++) {
            if(uf_AdtnRegItxpChk(gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD"), false)){
                if(null==gridRoot.getItemFieldAt(i, "ADTN_INFO_CTT") || ""==gridRoot.getItemFieldAt(i, "ADTN_INFO_CTT")){
                    alert("�ΰǺ�󼼸� ������ּ���.");
                    return;
                }else{
                    arr=gridRoot.getItemFieldAt(i, "ADTN_INFO_CTT").split("\|");
                    for(var j=0;j<arr.length;j++){
                        arr_amt = arr[j].split(",");
                        if(typeof arr_amt[5] != "undefined"){
                            arr_sum += Number(arr_amt[5].replace("\\",''));
                        }
                    }
                    total_sum += (gridRoot.getItemFieldAt(i, "TOTL_AMT") - gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT"));

                    /*// 20140408 �����ü�����Ժ�� ���� ������ �������� ���� �ݾ� üũ �߼�ó��
                    if(total_sum != arr_sum) {
                        alert("���ݾ��� �հ�� ��ϵ� �ΰǺ񳻿��� �ݾװ� ��ġ���� �ʽ��ϴ�.");
                        return;
                    }
                     */
                }
            }           
        }
        
        if (sumAmt >= 10000000 && frm.ApcRsn.value == "") {
            alert("��һ����� �Է��ϼ���.");
            return;
        }
        
        if (!confirm("��������ü��� ��û�Ͻðڽ��ϱ�?")) {
            return;
        }
    
        /* ************************************************** */
        /*                  ������ DATA                        */
        /* ************************************************** */        
        get2post(frm, "ButrId=<%=ButrId[0]%>");
        get2post(frm, "PlanAmt="+sumAmt);
        get2post(frm, "PayPlanDtlsRegNcnt=1");  
        get2post(frm, "VrtlAcctNo=<%=VrtlAcctNo%>");
        get2post(frm, "AUTO_MAP_KEY=<%=mapKey%>");
    
        /****************************************************/
        /*                  �ݺ��� DATA                        */
        /****************************************************/      
        for(var i=0; i<collection.getLength(); i++) {
            if(Number(gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT")) > 0){
                get2post(frm, gridRoot.getItemFieldAt(i, "GRIDKEY"));
                get2post(frm, "CanPlanAmt="     +gridRoot.getItemFieldAt(i, "CAN_PLAN_AMT"));         // ��������
                get2post(frm, "TotlVatAmt="     +gridRoot.getItemFieldAt(i, "TOTL_VAT_AMT"));   // �ΰ�����Ұ��ɱݾ�
                
                get2post(frm, "EvdcDcmtCmadId=" +gridRoot.getItemFieldAt(i, "EVDC_DCMT_CMAD_ID"));   // ��������÷�ι���ID
                get2post(frm, "EtcEvdcSeqNo="   +gridRoot.getItemFieldAt(i, "ETC_EVDC_SEQ_NO"));     // ���������Ϸù�ȣ
                get2post(frm, "FileNm="         +gridRoot.getItemFieldAt(i, "FILE_NM"));               // ���ϸ�
                get2post(frm, "AdtnInfoCtt="    +gridRoot.getItemFieldAt(i, "ADTN_INFO_CTT"));           // �ΰǺ񳻿�
            }           
        }
        
        
        uf_proce_display_on();  //�ε���

        setTimeout(
                function(){
                        try{   
                            alert("��������ü��� ��û�Ǿ����ϴ�.");
                            reset_submit();
                            window.close();
                        }finally{
                            opener.fn_url("/t02/t21/T21_01_00.jsp");
                        }
                    
                    }, 1000);   // 1���� ���� 1000 = 1��s
    }
    
    /******************************************************************
     * edmsReturnAction     EDMS ��ȯ�� ����
     * @param
     * @return
    ******************************************************************/
    function edmsReturnAction(){        
        var dockeyNo, docname,dockey;
        var frm = document.frm;     
        docKeyNo= frm.dockeyNo.value;
        docKey  = frm.docKey.value;
        docName = (frm.docName.value).replace(/=/gi,"-").replace(/&/gi,"n");

        if(docName.length>0){
            if("1"==document.frm.doc_dv.value){             
                gridRoot.setItemFieldAt(docKey, docKeyNo, "ETC_EVDC_SEQ_NO");
                gridRoot.setItemFieldAt(docName, docKeyNo, "FILE_NM");
                gridRoot.setItemFieldAt("[���]", docKeyNo, "FILE_YN");           
            }
        }
        
    }
    
    /******************************************************************
     * fnFileEvdc        Grid Event
     * @param
     * @return
    ******************************************************************/ 
    //�����������/�ΰǺ�󼼵��
    function fnGridEvent(rowIndex, columnIndex, dataRow, dataField){        
        if(dataField == "BTN1") {           
            fnGridFileEvdc(rowIndex, columnIndex, dataRow, dataField);
        } else {
            fnAdtnInfo(rowIndex, columnIndex, dataRow, dataField);
        }   
    }   
    
    /******************************************************************
     * fnFileEvdc        �������� ���
     * @param
     * @return
    ******************************************************************/
    function fnGridFileEvdc(rowIndex, columnIndex, dataRow, dataField){
        var frm  = document.frm;        
        var mode = "update";
        var etcEvdcSeqNo = "";
    
        
        etcEvdcSeqNo = gridRoot.getItemFieldAt(rowIndex, "ETC_EVDC_SEQ_NO");
        if(etcEvdcSeqNo == "") {
            alert("��ϵ� �������������� �����ϴ�.\n[������������ȸ-������] ����� �̿��Ͽ� �ش� ������ �������������� ���� ����Ͻʽÿ�.");
            return;
        }       
        
        gridRoot.setItemFieldAt("Y", rowIndex, "POP_EXE");      
        frm.doc_dv.value = "1";     
        uf_edmsUpload(mode, rowIndex, etcEvdcSeqNo);
    }   
    
    
    
    /******************************************************************
     * uf_edmsUploadFile        EDMS���Ͼ��ε� ����޼ҵ� ȣ��
     * @param
     * @return
    ******************************************************************/
    function uf_edmsUpload(mode,idx, etcEvdcSeqNo){
        var frm     =   document.frm;
        var docKey;
        var usrId;          // �����ID
        var hmpwRoleDv;     // ����ڱ��� 
        var rcmsGrpCd;      // RCMS�׷��ڵ�
        var evdcDv;
    
        frm.dockeyNo.value  = idx; 
    
        usrId               = "SMTEST";
        hmpwRoleDv          = "03";
        evdcDv              = frm.Evdc_Dv.value;
    
        // EDMS÷�����ϵ��ȣ��     
        edmsUploadFileNew("frm", mode, docKey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
    }
    
    /******************************************************************
     * fnAdtnInfo        �ΰǺ񳻿� ���
     * @param
     * @return
    ******************************************************************/
    function fnAdtnInfo(rowIndex, columnIndex, dataRow, dataField){
        var frm = document.frm;     
        var url, result,amt,param,arr_result;
        
        if(!uf_AdtnRegItxpChk(gridRoot.getItemFieldAt(rowIndex, "DTLS_ITXP_CD"), true)) return;
        
        amt = Number(gridRoot.getItemFieldAt(rowIndex, "TOTL_AMT")) - Number(gridRoot.getItemFieldAt(rowIndex, "CAN_PLAN_AMT"));

        param   =   "ChkAmt="           + amt;
        param   +=  "&AgrmtInstId="     + gridRoot.getItemFieldAt(rowIndex, "AGRMT_INST_ID");
        param   +=  "&AgrmtSeqNo="      + gridRoot.getItemFieldAt(rowIndex, "AGRMT_SEQ_NO");
        param   +=  "&ItxpCd="          + gridRoot.getItemFieldAt(rowIndex, "DTLS_ITXP_CD");
        param   +=  "&PmsId="           + "<%//=result0.getPmsId()%>";
        param   +=  "&BzClasCd="        + "<%//=result0.getBzClasCd()%>";
        param   +=  "&SbjtId="          + "<%//=result0.getSbjtId()%>";
        param += "&tObjIdx=" + rowIndex;

        frm.p_rchrInfo.value = gridRoot.getItemFieldAt(rowIndex,
                "ADTN_INFO_CTT");

        url = "/t01/t12/T12_01_30_0.jsp?" + param;
        result = openModalNs(url, frm,
                "dialogWidth:800px; dialogHeight:570px; scroll:no;");

        if (typeof result != "undefined") {
            if (result.length > 20) {
                gridRoot.setItemFieldAt("[���]", rowIndex, "BTN4");
                gridRoot.setItemFieldAt(result, rowIndex, "ADTN_INFO_CTT");
            } else {
            }
        }
    }

    /********************************************************
     * Function      : uf_AdtnRegItxpChk()
     * Parameter     : String itxp_cd (���κ���ڵ�)
     * Description   : �ΰǺ񳻿� ��ϰ��� ���üũ
     ********************************************************/
    function uf_AdtnRegItxpChk(itxp_cd, msg) {
        if ("B0101" === itxp_cd || "B0102" === itxp_cd || "B0203" === itxp_cd
                || "B0204" === itxp_cd || "B0205" === itxp_cd) {

            return true;
        } else {

            if (typeof msg !== undefined && msg === true) {
                alert("�ΰǺ񳻿��� �Ʒ� ���κ�񿡼��� ��� �����մϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
            }

            return false;
        }
    }
</script>

<script type="text/javascript">
    /* ********** 2014 �׸��� ��ü �۾� ���۽� ������ ����  ********** */
    function uf_search() {
        uf_proce_display_on(); //�ε���
        setTimeout(function() {
            
            SetData1(agrmtSeqNo);
        }, 1000); // 1���� ���� 1000 = 1��s
    }
    /* ********** 2014 �׸��� ��ü �۾� ���۽� ������ ����  ********** */

    $(document).ready(function() {
        /* ********** 2014 �׸��� ��ü �۾� rMateGrid �ʱ�ȭ  ********** */
        rMateGridInit();
        /* ********** 2014 �׸��� ��ü �۾� rMateGrid �ʱ�ȭ  ********** */
    });

    /* ********************** 2014 �׸��� ��ü �۾� rMateGrid setting START *********************** */

    var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
<NumberFormatter id=\"numfmt\" />\
<SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
<SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
<DataGrid id=\"grid1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
     <columns>\
     <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
     <DataGridColumn id=\"DTLS_ITXP_NM\"        dataField=\"DTLS_ITXP_NM\"      headerText=\"�����\"             width=\"90\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"    dataField=\"SUB_DTLS_ITXP_NM\"  headerText=\"�������\"           width=\"90\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"MITM_NM\"             dataField=\"MITM_NM\"           headerText=\"ǰ��\"               width=\"80\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"TRNS_AMT\"            dataField=\"TRNS_AMT\"          headerText=\"��ü�ݾ�\"            width=\"80\"    visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"      headerText=\"���ޱݾ�\"            width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"       headerText=\"�ΰ�����\"            width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"   dataField=\"RTRT_FIX_SPLY_AMT\" headerText=\"�������ޱݾ�\"          width=\"110\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"    dataField=\"RTRT_FIX_VAT_AMT\"  headerText=\"�����ΰ����ݾ�\"          width=\"120\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"TOTL_AMT\"            dataField=\"TOTL_AMT\"          headerText=\"��Ұ��ɱݾ�\"           width=\"110\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"CAN_PLAN_AMT\"        dataField=\"CAN_PLAN_AMT\"      headerText=\"�κ���ұݾ�\"           width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"true\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"BTN1\"                dataField=\"BTN1\"              headerText=\"�����������\"           width=\"100\"   visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" />\
     <DataGridColumn id=\"BTN2\"                dataField=\"BTN2\"              headerText=\"����������Ͽ���\"     width=\"110\"   visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"BTN3\"                dataField=\"BTN3\"              headerText=\"�ΰǺ�󼼵��\"          width=\"100\"   visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" />\
     <DataGridColumn id=\"BTN4\"                dataField=\"BTN4\"              headerText=\"�ΰǺ�󼼵�Ͽ���\"        width=\"120\"   visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"POP_EXE\"             dataField=\"POP_EXE\"           headerText=\"�����˾����࿩��\"     width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"VAT_PROC_D\"          dataField=\"VAT_PROC_D\"        headerText=\"�ΰ�������\"                width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"BUTR_USE_SPLY_AMT\"    dataField=\"BUTR_USE_SPLY_AMT\"  headerText=\"�ŷ��������ޱݾ�\"     width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"BUTR_USE_VAT_AMT\"     dataField=\"BUTR_USE_VAT_AMT\"   headerText=\"�ŷ������ΰ����ݾ�\"        width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"BUTR_RTRT_SPLY_AMT\"   dataField=\"BUTR_RTRT_SPLY_AMT\" headerText=\"�ŷ�����ȯ�����ޱݾ�\"   width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"BUTR_RTRT_VAT_AMT\"    dataField=\"BUTR_RTRT_VAT_AMT\"  headerText=\"�ŷ�����ȯ���ΰ����ݾ�\"  width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"AGRMT_SEQ_NO\"        dataField=\"AGRMT_SEQ_NO\"      headerText=\"�����Ϸù�ȣ\"           width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"AGRMT_INST_ID\"       dataField=\"AGRMT_INST_ID\"     headerText=\"������ID\"           width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"USE_REG_DT\"          dataField=\"USE_REG_DT\"        headerText=\"���������\"           width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"USE_REG_TM\"          dataField=\"USE_REG_TM\"        headerText=\"����Ͻð�\"           width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"USE_REG_SN\"          dataField=\"USE_REG_SN\"        headerText=\"����ϼ���\"           width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"DTLS_ITXP_CD\"        dataField=\"DTLS_ITXP_CD\"      headerText=\"�����ڵ�\"             width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"    dataField=\"SUB_DTLS_ITXP_CD\"  headerText=\"�������ڵ�\"                width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"TOTL_VAT_AMT\"        dataField=\"TOTL_VAT_AMT\"      headerText=\"�ΰ�����Ұ��ɱݾ�\"        width=\"110\"   visible=\"false\"   textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"ETC_EVDC_SEQ_NO\"     dataField=\"ETC_EVDC_SEQ_NO\"   headerText=\"���������Ϸù�ȣ\"     width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"FILE_NM\"             dataField=\"FILE_NM\"           headerText=\"���ϸ�\"              width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"FILE_CNT\"            dataField=\"FILE_CNT\"          headerText=\"���ϼ�\"              width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
     <DataGridColumn id=\"ADTN_INFO_CTT\"       dataField=\"ADTN_INFO_CTT\"     headerText=\"�ΰǺ��\"                width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"EVDC_DCMT_CMAD_ID\"   dataField=\"EVDC_DCMT_CMAD_ID\" headerText=\"��������÷�ι���ID\"       width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
     <DataGridColumn id=\"GRIDKEY\"             dataField=\"GRIDKEY\"           headerText=\"GRIDKEY\"              width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
    </columns>\
    <footers>\
        <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
             <DataGridFooterColumn />\
             <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
             <DataGridFooterColumn />\
             <DataGridFooterColumn />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TOTL_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
         </DataGridFooter>\
    </footers>\
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

    var layoutStr_itxp = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"grid2\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
         <columns>\
         <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
         <DataGridColumn id=\"DTLS_ITXP_NM\"        dataField=\"DTLS_ITXP_NM\"      headerText=\"�����\"              width=\"90\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"    dataField=\"SUB_DTLS_ITXP_NM\"  headerText=\"�������\"             width=\"90\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"MITM_NM\"             dataField=\"MITM_NM\"           headerText=\"ǰ��\"                   width=\"80\"    visible=\"true\"    textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"TRNS_AMT\"            dataField=\"TRNS_AMT\"          headerText=\"��ü�ݾ�\"             width=\"80\"    visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_SPLY_AMT\"        dataField=\"USE_SPLY_AMT\"      headerText=\"���ޱݾ�\"             width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"USE_VAT_AMT\"         dataField=\"USE_VAT_AMT\"       headerText=\"�ΰ�����\"             width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"   dataField=\"RTRT_FIX_SPLY_AMT\" headerText=\"�������ޱݾ�\"           width=\"110\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"    dataField=\"RTRT_FIX_VAT_AMT\"  headerText=\"�����ΰ����ݾ�\"          width=\"120\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"TOTL_AMT\"            dataField=\"TOTL_AMT\"          headerText=\"��Ұ��ɱݾ�\"           width=\"110\"   visible=\"true\"    textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"CAN_PLAN_AMT\"        dataField=\"CAN_PLAN_AMT\"      headerText=\"�κ���ұݾ�\"           width=\"100\"   visible=\"true\"    textAlign=\"right\"     editable=\"true\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"AGRMT_SEQ_NO\"        dataField=\"AGRMT_SEQ_NO\"      headerText=\"�����Ϸù�ȣ\"           width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"AGRMT_INST_ID\"       dataField=\"AGRMT_INST_ID\"     headerText=\"������ID\"           width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"USE_REG_DT\"          dataField=\"USE_REG_DT\"        headerText=\"���������\"           width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"USE_REG_TM\"          dataField=\"USE_REG_TM\"        headerText=\"����Ͻð�\"           width=\"110\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"USE_REG_SN\"          dataField=\"USE_REG_SN\"        headerText=\"����ϼ���\"           width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"DTLS_ITXP_CD\"        dataField=\"DTLS_ITXP_CD\"      headerText=\"�����ڵ�\"             width=\"100\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"    dataField=\"SUB_DTLS_ITXP_CD\"  headerText=\"�������ڵ�\"                width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"TOTL_VAT_AMT\"        dataField=\"TOTL_VAT_AMT\"      headerText=\"�ΰ�����Ұ��ɱݾ�\"        width=\"110\"   visible=\"false\"   textAlign=\"right\"     editable=\"false\"  headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
         <DataGridColumn id=\"ETC_EVDC_SEQ_NO\"     dataField=\"ETC_EVDC_SEQ_NO\"   headerText=\"���������Ϸù�ȣ\"     width=\"80\"    visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
         <DataGridColumn id=\"GRIDKEY\"             dataField=\"GRIDKEY\"           headerText=\"GRIDKEY\"              width=\"120\"   visible=\"false\"   textAlign=\"center\"    editable=\"false\"  headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                 <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                 <DataGridFooterColumn />\
                 <DataGridFooterColumn />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
                 <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TOTL_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
             </DataGridFooter>\
        </footers>\
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
        gridApp.setLayout(layoutStr); //�׸��� ���̾ƿ� ����

        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);

            var columns = dataGrid.getColumns();
            var ii = 0;
            var jj = 0;
            for ( var i = 0; i < columns.length; i++) {
                if (columns[i].getVisible()) {
                    jj++;
                    if (jj == columnIndex) {
                        break;
                    }
                } else {
                    ii++;
                }
            }
            columnIndex = columnIndex + ii;
            var column = columns[columnIndex];
            var dataField = column.getDataField();

            //�����������/�ΰǺ�󼼵��
            if (dataField == "BTN1" || dataField == "BTN3") {
                fnGridEvent(rowIndex, columnIndex, dataRow, dataField);
            }
            ;

        };

        //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
        var itemDoubleClickHandler = function(event) {

            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var column = dataGrid.getColumns()[columnIndex];
            var dataField = column.getDataField();

            layerDetail(dataGrid, dataRow);
        };

        //�׸��� ���� �� �׸��� �ڷ� ����
        var dataGridChanged_init = function(event) {
            var footer = gridRoot.getObjectById("footer");
            footer.invalidateData();
            dataGrid.invalidateList();

        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();

            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ
            
            uf_search();
        };

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("dataComplete", columnBackGroundStyle);
        gridRoot.addEventListener("dataComplete", gridinit_itxp);
        //�׸��� ���� �� �׸��� �ڷ� ����
        gridRoot.addEventListener("itemDataChanged", dataGridChanged_init);

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };

    /******************************************************************
     *                   ���켱����������� 
     ******************************************************************/

    //�׸��� ���̾ƿ� ȣ��_itxp 
    var rMateGridInitLayout_itxp = function() {
        gridApp_itxp = FABridge.gridBridge.root();
        gridRoot_itxp = gridApp_itxp.getgridRoot();
        gridApp_itxp.setLayout(layoutStr_itxp); //�׸��� ���̾ƿ� ����

        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot_itxp.getItemAt(rowIndex);

            var columns = dataGrid_itxp.getColumns();
            var ii = 0;
            var jj = 0;
            for ( var i = 0; i < columns.length; i++) {
                if (columns[i].getVisible()) {
                    jj++;
                    if (jj == columnIndex) {
                        break;
                    }
                } else {
                    ii++;
                }
            }
            columnIndex = columnIndex + ii;
            var column = columns[columnIndex];
            var dataField = column.getDataField();

            //�����������/�ΰǺ�󼼵��
            if (dataField == "BTN1" || dataField == "BTN3") {
                fnGridEvent(rowIndex, columnIndex, dataRow, dataField);
            }
            ;

        };

        var layoutCompleteHandler = function(event) {
            dataGrid_itxp = gridApp_itxp.getdataGrid();

            //�̺�Ʈ ���
            dataGrid_itxp.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ
            
        };

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot_itxp.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot_itxp.addEventListener("layoutComplete", rMateGridSetData_itxp);
    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    function gridinit_itxp() {
        if (isGrid_itxp) {
            FABridge.addInitializationCallback("gridBridge_itxp",
                    rMateGridInitLayout_itxp);
        }
    };

    //�ε� �� rMadeGrid ���
    function rMateGridSetData_itxp() {
        gridApp_itxp = FABridge.gridBridge_itxp.root();
        gridApp_itxp.setData(JSON.stringify(gridData_itxp)); //������ ���
    };

    //������ ����    
    var cnt = 0;
    function setGridData(seqNo) {
        try {
            var gridValue = [];
            
            //1. �ű԰���
            if("G00000000000001" == seqNo){

                
            //2. �������
            }else if("G00000000000002" == seqNo){

                gridValue[cnt++] = {"DTLS_ITXP_NM" : "�����ü��������","SUB_DTLS_ITXP_NM" : "�����ü�����Ժ�","MITM_NM" : "����Ժ�","TRNS_AMT" : "2500","USE_SPLY_AMT" : "2500","USE_VAT_AMT" : "0","RTRT_FIX_SPLY_AMT" : "0","RTRT_FIX_VAT_AMT" : "0","TOTL_AMT" : "2500","CAN_PLAN_AMT" : "0","BTN1" : "�����������","BTN2" : "[���]","BTN3" : "�ΰǺ�󼼵��","BTN4" : "[���]","AGRMT_SEQ_NO" : "G00000000000002","AGRMT_INST_ID" : "10112249","USE_REG_DT" : "20110114","USE_REG_TM" : "164634","USE_REG_SN" : "1","DTLS_ITXP_CD" : "B0102","SUB_DTLS_ITXP_CD" : "B0102001","BUTR_RTRT_VAT_AMT" : "0","ADTN_INFO_CTT" : "20120302,20120330,���,7901011100000,30,0\\|","VAT_PROC_RTRT_AMT" : "0","CAN_TRNS_AMT" : "0","BUTR_ID" : "E201012152917530","BUIT_GRP_ID" : null,"BUIT_GRP_YN" : "N","BUTR_USE_VAT_AMT" : "0","BUTR_USE_SPLY_AMT" : "2500","TOTL_VAT_AMT" : "0","ETC_EVDC_SEQ_NO" : "P20110114164735-G00000000000003-10112249","VAT_PROC_DV" : "B01001","BUTR_RTRT_SPLY_AMT" : "0","BUIT_ID" : "U201101144724617","FILE_CNT" : "","FILE_NM" : "i_20101005164028.jpg\\;","POP_EXE" : "N","TOTL_SPLY_AMT" : "2500","EVDC_DCMT_CMAD_ID" : "D201301211195670","GRIDKEY" : "&BuitId=U201101144724617&AgrmtSeqNo=G00000000000003&AgrmtInstId=10112249&UseRegDt=20110114&UseRegTm=164634&UseRegSn=1&DtlsItxpCd=B0102&DtlsItxpNm=�ΰǺ�&SubDtlsItxpCd=B0102001&SubDtlsItxpNm=�ΰǺ�&MitmNm=1�� �ΰǺ�&TrnsAmt=2500&UseSplyAmt=2500&UseVatAmt=0&CanTrnsAmt=0&TotlAmt=2500"};
    
            //3. �������(���� ������)
            }else if("G00000000000003" == seqNo){
                
                gridValue[cnt++] = {"DTLS_ITXP_NM" : "�����ü��������","SUB_DTLS_ITXP_NM" : "�����ü�����Ժ�","MITM_NM" : "����Ժ�","TRNS_AMT" : "2500","USE_SPLY_AMT" : "2500","USE_VAT_AMT" : "0","RTRT_FIX_SPLY_AMT" : "0","RTRT_FIX_VAT_AMT" : "0","TOTL_AMT" : "2500","CAN_PLAN_AMT" : "0","BTN1" : "�����������","BTN2" : "[���]","BTN3" : "�ΰǺ�󼼵��","BTN4" : "[���]","AGRMT_SEQ_NO" : "G00000000000003","AGRMT_INST_ID" : "10112249","USE_REG_DT" : "20110114","USE_REG_TM" : "164634","USE_REG_SN" : "1","DTLS_ITXP_CD" : "B0102","SUB_DTLS_ITXP_CD" : "B0102001","BUTR_RTRT_VAT_AMT" : "0","ADTN_INFO_CTT" : "20120302,20120330,���,7901011100000,30,0\\|","VAT_PROC_RTRT_AMT" : "0","CAN_TRNS_AMT" : "0","BUTR_ID" : "E201012152917530","BUIT_GRP_ID" : null,"BUIT_GRP_YN" : "N","BUTR_USE_VAT_AMT" : "0","BUTR_USE_SPLY_AMT" : "2500","TOTL_VAT_AMT" : "0","ETC_EVDC_SEQ_NO" : "P20110114164735-G00000000000003-10112249","VAT_PROC_DV" : "B01001","BUTR_RTRT_SPLY_AMT" : "0","BUIT_ID" : "U201101144724617","FILE_CNT" : "","FILE_NM" : "i_20101005164028.jpg\\;","POP_EXE" : "N","TOTL_SPLY_AMT" : "2500","EVDC_DCMT_CMAD_ID" : "D201301211195670","GRIDKEY" : "&BuitId=U201101144724617&AgrmtSeqNo=G00000000000003&AgrmtInstId=10112249&UseRegDt=20110114&UseRegTm=164634&UseRegSn=1&DtlsItxpCd=B0102&DtlsItxpNm=�ΰǺ�&SubDtlsItxpCd=B0102001&SubDtlsItxpNm=�ΰǺ�&MitmNm=3�� �ΰǺ�&TrnsAmt=2500&UseSplyAmt=2500&UseVatAmt=0&CanTrnsAmt=0&TotlAmt=2500"};

            //4. �������(���� ���� �Ϸ�)
            }else if("G00000000000004" == seqNo){

                
            }
            
            
            
        } finally {
            gridData = gridValue; //��ȸ��� JSON �� ��������
            rMateGridSetData(); //rMateGrid ����            
        }
    }

    function SetData1(seqNo) {
        if(!seqNo) return false;
        try {
            document.body.style.cursor = "wait";
            setGridData(seqNo); //Insert    Grid
            document.body.style.cursor = "auto";
        } finally {
            reset_submit();
        }
    }

    //�÷� ���󺯰�
    function columnBackGroundStyle() {
        collection = gridRoot.getCollection();
        if (collection == null) {
            alert("collection ��ü�� ã�� �� �����ϴ�");
            return;
        }

        for ( var i = 0; i < collection.getLength(); i++) {
            collection.addCellAttributeDetailAt(i, 10, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 11, 1, 1, null, 0xEDF2FE);
            collection.addCellAttributeDetailAt(i, 13, 1, 1, null, 0xEDF2FE);
        }
    }

    /* ********************** 2014 �׸��� ��ü �۾� rMateGrid setting START *********************** */
</script>
</body>
</html>
