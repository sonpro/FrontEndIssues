<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T23_01_10.jsp
 *   Description        : ī��ȯ����û �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014. 01. 15     				������        		
 *
 *  @author ������
 *  @Since  2014. 01. 15
 *  @Version 1.0
 * 
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!-- //2014 �׸��� ��ü �۾� head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //2014 �׸��� ��ü �۾� head end -->

<%
 	String VatPsvApcYn          =   null;  //�ΰ���ġ���׺���ȯ������
	String VatProcDv            =   StringUtil.null2void(SessionUtil.getRequestValue(request, "VatProcDv"));                // �ΰ���ó������
	String RtrtFixVatAmt        =   StringUtil.null2void(SessionUtil.getRequestValue(request, "RtrtFixVatAmt"));            // ȯ��Ȯ���ΰ����ݾ�
	String RtrtFixSplyAmt       =   StringUtil.null2void(SessionUtil.getRequestValue(request, "RtrtFixSplyAmt"));           // ȯ��Ȯ�����ޱݾ�
	String INQ_STR_DT           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqStrDt"));                 // ��ȸ���۳�¥
	String INQ_END_DT           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "InqEndDt"));                 // ��ȸ���ᳯ¥
	String PayPlanDtlsRegNcnt   =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PayPlanDtlsRegNcnt"));       // ����������û�Ǽ�
	String PlanAmt              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "PlanAmt"));                  // ����������û�ݾ�
	String VrtlAcctNo           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "VrtlAcctNo"));               // ������¹�ȣ
	String EXIST_VACC           =   StringUtil.null2void(SessionUtil.getRequestValue(request, "EXIST_VACC"));               // ������¹߱�����
	String CanDvCd              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CanDvCd"));                  // ��ұ����ڵ� (A,P,U)
	String mapKey               =   StringUtil.null2void(SessionUtil.getRequestValue(request, "AUTO_MAP_KEY"));
	
	String RevoAmt              =   StringUtil.null2void(SessionUtil.getRequestValue(request, "RevoAmt"));                  // ī����Ұ��ɱݾ�
	String CanCelAmt            =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CanCelAmt"));                // ī�峻����ұݾ�
	int CrdSplyAmt              =   (int)Math.round(Integer.parseInt(CanCelAmt) / 1.1);                                     // ī�峻����ұݾ��� ���ް���  
	int CrdVatAmt               =   (int)Math.round(CrdSplyAmt * 0.1);                                                      // ī�峻����ұݾ��� �ΰ���ġ����
	
	String CrdNo                =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CrdNo").replaceAll("-","")); // ī���ȣ
	String BuyApvNo             =   StringUtil.null2void(SessionUtil.getRequestValue(request, "CTblBuyApvNo"));             // ���Խ��ι�ȣ
	String ApvDt                =   StringUtil.null2void(SessionUtil.getRequestValue(request, "ApvDt").replaceAll("-","")); // ��������
	String RegSeq               =   StringUtil.null2void(SessionUtil.getRequestValue(request, "RegSeq"));                   // ��ϼ���
	
	CrdNo = CrdNo.replace("-","");
	ApvDt = ApvDt.replace("-","");
	
	String AgrmtSeqNo           =   SessionUtil.getRequestValue(request, "AgrmtSeqNo");                            // �����Ϸù�ȣ
	String AgrmtInstId          =   SessionUtil.getRequestValue(request, "AgrmtInstId");                           // ������ID
	String ButrId               =   SessionUtil.getRequestValue(request, "ButrId");                                // �����Ϸù�ȣ

%>

    <!-- head title -->
    <div class="title">
        <p class="pop_title">ī����� ������û (������[������&RCMS])</p>
    </div>
    <!-- //head title// --> 

     <div id="body">
         <form name="frm" method="post">
	        <input type="hidden" id="S_NPRF_INST_YN"    name="S_NPRF_INST_YN"   value="<%//=null2void(crdResult.getNprfInstYn()) %>"/>
	        <input type="hidden" id="itxp_cnt"          name="itxp_cnt"         value="1"/>                 <!-- ����ϰǼ� -->
	        <input type="hidden" id="dockeyNo"          name="dockeyNo"         value=""/>                  <!-- ���õ� �������̺�Ű -->
	        <input type="hidden" id="doc_dv"            name="doc_dv"           value=""/>                  <!-- ��������/�ΰǺ񳻿� -->
	        <input type="hidden" id="docKey"            name="docKey"           value=""/>                  <!-- ������EDMS_dockey -->
	        <input type="hidden" id="docName"           name="docName"          value=""/>                  <!-- ���ϰ����(������ϸ�) -->
	        <input type="hidden" id="attr98"            name="attr98"           value=""/>                  <!-- ���ϰ����(������ϸ�) -->
	        <input type="hidden" id="attr99"            name="attr99"           value=""/>                  <!-- ���ϰ����(������ϰ���) -->
	        <input type="hidden" id="p_rchrInfo"        name="p_rchrInfo"       value=""/>                  <!-- �ΰǺ񳻿� -->
	        <input type="hidden" id="methodName"        name="methodName"       value=""/>                  <!-- �޼ҵ�� -->
	        <input type="hidden" id="CanDvCd"           name="CanDvCd"          value="<%=CanDvCd %>"/>     <!-- ��ұ����ڵ� -->
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>��û��Ȳ��ȸ ����ȸ</h3>
            <!-- ��������Ȳ ����ȸ ����Ʈ start -->
            <div class="t10 b25 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="��û��Ȳ��ȸ ����ȸ ����Ʈ" class="tbl_type02">
                <caption>��û��Ȳ��ȸ ����ȸ ����Ʈ</caption>
				<colgroup>
					<col width="20%" />
					<col width="30%" />
					<col width="20%" />
					<col width="30%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">�ΰ���ó������</th>
						<td colspan="3" class="ll"><%= CodeUtil.getCode("RNDB01", StringUtil.null2void(VatProcDv)) %></td>
					</tr>
                    <tr>
                        <th scope="row">�������ޱݾ�</th>
                        <td class="ar"><%=FormatUtil.getMoneyForm(RtrtFixSplyAmt) %> ��</td>
                        <th scope="row">�����ΰ����ݾ�</th>
                        <td class="ar ll"><%= FormatUtil.getMoneyForm(RtrtFixVatAmt) %> ��</td>
                    </tr>
					<tr>
						<th scope="col">ī�峻����ұݾ�</th>
						<td class="ar"><%= FormatUtil.getMoneyForm(CanCelAmt) %> ��</td>
						<th scope="row">ī����Ұ��ɱݾ�</th>
						<td class="ar ll"><%= FormatUtil.getMoneyForm(RevoAmt) %> ��</td>
					</tr>
				</tbody>
			</table>
            </div>
            <!-- //��û��Ȳ ����ȸ ����Ʈ end// -->
	

			<!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->
			    <div class="pop_total_box">
			      <p class="fl t05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> ��]</p>
			      <p class="ar b05">
			          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�"/></a>
			          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="����"/></a>
			      </p>
			      <p class="cb"></p>
			    </div>
			      
			     <!-- �׸��� Start -->
			     <div>
			         <script>
			         rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "226", "#FFFFFF", "transparent");
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
			<!-- ************************* 2014 �׸��� ��ü �۾� rMateGrid ************************* -->                



                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-1" title="����" onclick="uf_save(); return false;"><span class="bt_sp">����</span></a>
                </div>
                <!-- //action bt end// --> 
	            <!-- ���ǻ��� start -->
	            <div class="pop_guide_box">
	                <div class="pop_guide_boxtd">
	                    <ul>
	                        <li>������ұݾ��� ī�峻����ұݾװ� ���ƾ� �մϴ�.</li>
	                        <li>������ұݾ��� ������Ұ��ް��� + �����ΰ���ġ���װ� ���ƾ� �մϴ�.</li>
	                        <li>ī�峻����ҳ��뿡 �°� ���������� ��ұݾ׿� ���� �ΰ����� �����ϼž��մϴ�.</li>
	                    </ul>    
	                </div>
	            </div>
	            <!-- //���ǻ��� end// -->    

     </div>
     <!-- //content end// -->
     </form>
	</div>
	
                

<!-- //2014 �׸��� ��ü �۾� footer start -->
<%@ include file="/inc/jspFooter_popup.jsp" %>
<!-- //2014 �׸��� ��ü �۾� footer end -->



<script type="text/javascript">
	
 /******************************************************************
 * uf_save      ī�����������û (������ ���)
 * @param
 * @return
 ******************************************************************/

var agrmtSeqNo = "<%=AgrmtSeqNo%>";

function uf_save(){
    var frm = document.frm;
    var sumAmt      = 0;
    var sumSplyAmt  = 0;
    var sumVatAmt   = 0;
    var possSplyAmt = 0;
    var possVatAmt  = 0;
    var NprfInstYn  = "<%//=sbjt_data.getNprfInstYn()%>";
    
    for(var i=0; i<collection.getLength(); i++) {
    	    	
        sumAmt      += Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT"));		//������ұݾ�
        sumSplyAmt  += Number(gridRoot.getItemFieldAt(i, "UPD_CAN_SPLY_AMT"));	//������Ұ��ް���
        sumVatAmt   += Number(gridRoot.getItemFieldAt(i, "UPD_CAN_VAT_AMT"));	//������Һΰ���ġ����

        possSplyAmt += Number(gridRoot.getItemFieldAt(i, "POSS_SPLY_AMT"));	//��Ұ��ɰ��ޱݾ�
        possVatAmt  += Number(gridRoot.getItemFieldAt(i, "POSS_VAT_AMT"));	//��Ұ��ɺΰ����ݾ�       
        
        if(Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT")) > <%=PlanAmt%>) {
            alert("������ұݾ��� ī�峻����ұݾ׺��� Ŭ �� �����ϴ�.");
            return;                       
        } else if( (Number(gridRoot.getItemFieldAt(i, "TRNS_AMT")) - Number(gridRoot.getItemFieldAt(i, "CAN_TRNS_AMT"))) < Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT")) ) {
            alert("������ұݾ��� ��ü�ݾ׺��� Ŭ �� �����ϴ�.\n" + (i + 1) + "�� ������ ������Ұ��ɱݾ��� " + (Number(getCell(obj, i, "��ü�ݾ�")) - Number(getCell(obj, i, "��ұݾ�"))) + "�� �Դϴ�.");
            return;
        } else if( (Number(gridRoot.getItemFieldAt(i, "UPD_CAN_SPLY_AMT")) + Number(gridRoot.getItemFieldAt(i, "UPD_CAN_VAT_AMT"))) != Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT")) ) {
            alert("��ұݾ׿� ���� [�ΰ�������]�� ���� ������Ұ��ް��װ� ������Һΰ���ġ������ �Է��ؾ� �մϴ�.");
            return;            
        } else if( Number(gridRoot.getItemFieldAt(i, "UPD_CAN_SPLY_AMT")) > Number(gridRoot.getItemFieldAt(i, "POSS_SPLY_AMT")) ) {
        	alert("������Ұ��ް����� ��Ұ��ɰ��ޱݾ� �̻��Դϴ�. ������Ұ��ޱݾ��� �����ؾ� �մϴ�.");
        	return;
        } else if( Number(gridRoot.getItemFieldAt(i, "UPD_CAN_VAT_AMT")) > Number(gridRoot.getItemFieldAt(i, "POSS_VAT_AMT")) ) {
        	alert("������Һΰ���ġ������ ��Ұ��ɺΰ����ݾ� �̻��Դϴ�. ������Һΰ����ݾ��� �����ؾ� �մϴ�.");
        	return;
        }    
        
        for(var i=0; i<collection.getLength(); i++) {
	        if( !(("B0301" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "Y" == NprfInstYn) 
		            || ("B0206" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD"))
		            || ("B0206006" == gridRoot.getItemFieldAt(i, "SUB_DTLS_ITXP_CD"))) ){
			            if(Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT")) > 0 && gridRoot.getItemFieldAt(i, "POP_YN") == "N") {
			                alert("���������۾��� ������� ���� ���� �ֽ��ϴ�. �������� �� �����Ͻñ� �ٶ��ϴ�.");
			                return;
			            }	        
		        }        	
        }       
    }
    
    
    if(sumAmt < 0) {
        alert("������ұݾ��� ����� �Է��� �����մϴ�.");
        return;
    } else if(sumAmt == 0) {
        alert("������ұݾ��� �Էµ��� �ʾҽ��ϴ�.");
        return;
    }
<%--     
    else if(sumAmt != <%=PlanAmt%>) {
        alert("������ұݾ��� ���ŵ� ī�峻����ұݾװ� ���� �ʽ��ϴ�.\n������ұݾ��� ī�峻����ұݾװ� ���ƾ� �մϴ�.");
        return;     
    } 
--%>    
    else if(sumSplyAmt == 0) {
        alert("������Ұ��ް����� �Էµ��� �ʾҽ��ϴ�.\n�ΰ��������� �����Ͽ� �ּ���.");
        return;
    }
<%--     
    else if(sumSplyAmt+sumVatAmt != <%=PlanAmt%>) {
        alert("������Ұ��ް��װ� ������Һΰ���ġ������ �հ�� ���ŵ� ī����ұݾװ� ���� �ʽ��ϴ�.");
        return;     
    } 
  
    else if(sumAmt > <%= RevoAmt %>) {
        alert("��Ұ��ɱݾ׺��� ������ұݾ��� Ŭ �� �����ϴ�.\n�ݾ��� ������ �ּ���.");
        return;
    }
--%>      
    //-----------------------------------
    //  �������� üũ(�񿵸������ �������� ��� üũ���� ����) 
    //  ���������������� ����, ��Ÿ��� üũ���� ����
    //-----------------------------------    
    for(var i=0; i<collection.getLength(); i++) {
        if( !(("B0301" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD") && "Y" == NprfInstYn) 
                || ("B0206" == gridRoot.getItemFieldAt(i, "DTLS_ITXP_CD"))
                || ("B0206006" == gridRoot.getItemFieldAt(i, "SUB_DTLS_ITXP_CD"))) ){
                if(null==gridRoot.getItemFieldAt(i, "FILE_NM") || ""==gridRoot.getItemFieldAt(i, "FILE_NM")){
                    alert("���������� ������ּ���.");
                    return;
                }
            }
    }
    
    
    /****************************************************/
    /*                  ������ DATA                     */
    /****************************************************/
    get2post(frm, "ButrId=<%=ButrId%>");
    get2post(frm, "PlanAmt="+sumAmt);           // ��ұݾ�
    get2post(frm, "PlanSplyAmt="+sumSplyAmt);   // ��Ұ��ޱݾ�
    get2post(frm, "PlanVatAmt="+sumVatAmt);     // ��Һΰ����ݾ�
    get2post(frm, "PayPlanDtlsRegNcnt=1");  
    get2post(frm, "VrtlAcctNo=<%=VrtlAcctNo%>");
    get2post(frm, "CrdNo=<%=CrdNo%>");         /* ī���ȣ     */
    get2post(frm, "BuyClctNo=<%=BuyApvNo%>");  /* ���Խ��ι�ȣ */
    get2post(frm, "ApvDt=<%=ApvDt%>");         /* ��������     */
    get2post(frm, "RegSeq=<%=RegSeq%>");       /* ��ϼ���     */
    get2post(frm, "AUTO_MAP_KEY=<%=mapKey%>");
    
    /****************************************************/
    /*                  �ݺ��� DATA                     */
    /****************************************************/
    
    for(var i=0; i<collection.getLength(); i++) {
        if(Number(gridRoot.getItemFieldAt(i, "UPD_CAN_AMT")) > 0){
            get2post(frm, gridRoot.getItemFieldAt(i, "GRIDKEY"));
            get2post(frm, "CanTrnsAmt="   + gridRoot.getItemFieldAt(i, "CAN_TRNS_AMT"));
            get2post(frm, "CanPlanAmt="   + gridRoot.getItemFieldAt(i, "UPD_CAN_AMT"));
            get2post(frm, "CanSplyAmt="   + gridRoot.getItemFieldAt(i, "UPD_CAN_SPLY_AMT"));           
            get2post(frm, "CanVatAmt="    + gridRoot.getItemFieldAt(i, "UPD_CAN_VAT_AMT"));           
            get2post(frm, "EtcEvdcSeqNo=" + gridRoot.getItemFieldAt(i, "ETC_EVDC_SEQ_NO"));       
            get2post(frm, "FileNm="       + gridRoot.getItemFieldAt(i, "FILE_NM"));                
        }    	
    }
    
    if(!confirm("������û ó���Ͻðڽ��ϱ�?")) {
    	return;
    }
    
    
    uf_proce_display_on();  //�ε���

    setTimeout(
            function(){
                    try{   
                        reset_submit(); // 'wait'
                        alert("ī��������� ��û�Ǿ����ϴ�.");
                    }finally{
                        removeTempAttribute(document.frm);  //get2post ����
                        opener.fn_url("/t02/t21/T21_01_00.jsp?autosrch=Y&AUTO_MAP_KEY="+<%=mapKey%>);
                        window.close();
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
 * uf_edmsUploadFile        EDMS���Ͼ��ε� ����޼ҵ� ȣ��
 * @param
 * @return
******************************************************************/
function uf_edmsUpload(mode, idx, etcEvdcSeqNo){
    var frm     =   document.frm;
    var docKey;
    var usrId;          // �����ID
    var hmpwRoleDv;     // ����ڱ��� 
    var rcmsGrpCd;      // RCMS�׷��ڵ�
    var evdcDv;

    frm.dockeyNo.value  = idx;
    usrId               = "<%//=usr_data.getUsrId()%>";
    hmpwRoleDv          = "03";
    evdcDv              = "C";
    
  	//÷������
    edmsUploadFileNew("frm", mode, docKey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);    
}





/******************************************************************
 * fnFileEvdc        Grid Event
 * @param
 * @return
******************************************************************/
function fnGridEvent(rowIndex, columnIndex, dataRow, dataField){
    if(dataField == "ETC_EVDC_BTN") {
    	fnGridFileEvdc(rowIndex, columnIndex, dataRow, dataField);
    } else if(dataField == "VAT_BTN") {
    	if(gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_AMT")== "0") {
    		alert("������ұݾ��� �Էµ��� �ʾҽ��ϴ�.");
    		return;    		
    	}
        if (Number(gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_AMT")) > <%=PlanAmt%>) {
            alert("������ұݾ��� ��Ұ��ɱݾ׺��� Ů�ϴ�.");
            return;
        }
    	if (gridRoot.getItemFieldAt(rowIndex, "USE_VAT_AMT")== "0") {    		    		    		
    		gridRoot.setItemFieldAt(gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_AMT"), rowIndex, "UPD_CAN_SPLY_AMT");
    	} else {
    	    fnVatAmtEvent(rowIndex, columnIndex, dataRow, dataField);
    	}        
    }
}




/******************************************************************
 * �ΰ���ġ���׺���
 * @param
 * @return 
 ******************************************************************/

function fnVatAmtEvent(rowIndex, columnIndex, dataRow, dataField) {
	var frm = document.frm;
    uf_popup_crdAmt_updt(frm, 
    		gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_AMT"),
    		gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_SPLY_AMT"),
    		gridRoot.getItemFieldAt(rowIndex, "UPD_CAN_VAT_AMT"),
            "0","grid2", rowIndex, "V");
 }
 
// ������ ���� ����
function changeItem(rowIdx, editField, selectedValue) {
	
    if(typeof rowIdx!="undefined") editRowIndex = rowIdx;
    if(typeof editField!="undefined") editDataField = editField;
    
    gridRoot.setItemFieldAt(selectedValue, editRowIndex, editDataField);
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
    
    gridRoot.setItemFieldAt("Y", rowIndex, "POP_YN");    
    etcEvdcSeqNo     = gridRoot.getItemFieldAt(rowIndex, "ETC_EVDC_SEQ_NO");
    frm.doc_dv.value = "1";
    uf_edmsUpload(mode, rowIndex, etcEvdcSeqNo);
}
	
</script>

<!-- /* ********** 2014 �׸��� ��ü �۾�  ********** */ -->
<script type="text/javascript">
    function uf_search(){        
        uf_proce_display_on();  //�ε���
        setTimeout(function(){SetData(agrmtSeqNo);}, 1000);   // 1���� ���� 1000 = 1��s
    }   
</script>
<!-- /* ********** 2014 �׸��� ��ü �۾�  ********** */ -->


<script type="text/javascript">

$(document).ready(function() {
	/* ********** 2014 �׸��� ��ü �۾� rMateGrid �ʱ�ȭ  ********** */
    rMateGridInit();
    /* ********** 2014 �׸��� ��ü �۾� rMateGrid �ʱ�ȭ  ********** */
});


/* ********************** 2014 �׸��� ��ü �۾� rMateGrid setting START *********************** */
 
 
 //
 var layoutStr = "\
 <?xml version=\"1.0\" encoding=\"utf-8\"?>\
 <rMateGrid>\
 <NumberFormatter id=\"numfmt\" />\
 <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
 <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
 <DataGrid id=\"dg1\" lockedColumnCount=\"1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
		 <columns>\
			 <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
			 <DataGridColumn id=\"DTLS_ITXP_NM\"            dataField=\"DTLS_ITXP_NM\"                 headerText=\"�����\"                 width=\"90\"   visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"        dataField=\"SUB_DTLS_ITXP_NM\"             headerText=\"�������\"               width=\"90\"   visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"MITM_NM\"                 dataField=\"MITM_NM\"                      headerText=\"ǰ��\"                   width=\"80\"   visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"TRNS_AMT\"                dataField=\"TRNS_AMT\"                     headerText=\"��ü�ݾ�\"               width=\"80\"   visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"USE_SPLY_AMT\"            dataField=\"USE_SPLY_AMT\"                 headerText=\"���ޱݾ�\"               width=\"80\"   visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"USE_VAT_AMT\"             dataField=\"USE_VAT_AMT\"                  headerText=\"�ΰ���ġ����\"           width=\"100\"  visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"       dataField=\"RTRT_FIX_SPLY_AMT\"            headerText=\"�������ޱݾ�\"           width=\"110\"  visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"        dataField=\"RTRT_FIX_VAT_AMT\"             headerText=\"�����ΰ����ݾ�\"         width=\"130\"  visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"UPD_CAN_AMT\"             dataField=\"UPD_CAN_AMT\"                  headerText=\"������ұݾ�\"           width=\"110\"  visible=\"true\"  textAlign=\"right\"  editable=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"UPD_CAN_SPLY_AMT\"        dataField=\"UPD_CAN_SPLY_AMT\"             headerText=\"������Ұ��ް���\"       width=\"120\"  visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"UPD_CAN_VAT_AMT\"         dataField=\"UPD_CAN_VAT_AMT\"              headerText=\"������Һΰ���ġ����\"   width=\"130\"  visible=\"true\"  textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"VAT_BTN\"                 dataField=\"VAT_BTN\"                      headerText=\"�ΰ���ġ���׺���\"       width=\"110\"  visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" />\
			 <DataGridColumn id=\"ETC_EVDC_BTN\"            dataField=\"ETC_EVDC_BTN\"                 headerText=\"�����������\"           width=\"100\"  visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" />\
			 <DataGridColumn id=\"FILE_YN\"                 dataField=\"FILE_YN\"                      headerText=\"����������Ͽ���\"       width=\"110\"  visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"POSS_SPLY_AMT\"           dataField=\"POSS_SPLY_AMT\"                headerText=\"��Ұ��ɰ��ޱݾ�\"       width=\"110\"  visible=\"false\" textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"POSS_VAT_AMT\"            dataField=\"POSS_VAT_AMT\"                 headerText=\"��Ұ��ɺΰ����ݾ�\"     width=\"110\"  visible=\"false\" textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"POP_YN\"                  dataField=\"POP_YN\"                       headerText=\"�����˾����࿩��\"       width=\"110\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\"  />\
			 <DataGridColumn id=\"AGRMT_SEQ_NO\"            dataField=\"AGRMT_SEQ_NO\"                 headerText=\"�����Ϸù�ȣ\"           width=\"100\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"AGRMT_INST_ID\"           dataField=\"AGRMT_INST_ID\"                headerText=\"������ID\"             width=\"120\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"USE_REG_DT\"              dataField=\"USE_REG_DT\"                   headerText=\"���������\"           width=\"110\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"USE_REG_TM\"              dataField=\"USE_REG_TM\"                   headerText=\"����Ͻð�\"           width=\"110\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"USE_REG_SN\"              dataField=\"USE_REG_SN\"                   headerText=\"����ϼ���\"           width=\"100\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"DTLS_ITXP_CD\"            dataField=\"DTLS_ITXP_CD\"                 headerText=\"�����ڵ�\"               width=\"100\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"        dataField=\"SUB_DTLS_ITXP_CD\"             headerText=\"�������ڵ�\"             width=\"120\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"VAT_PSV_APC_YN\"          dataField=\"VAT_PSV_APC_YN\"               headerText=\"�ΰ���ġ���׺���\"       width=\"70\"   visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"CAN_TRNS_AMT\"            dataField=\"CAN_TRNS_AMT\"                 headerText=\"��ұݾ�\"               width=\"65\"   visible=\"false\" textAlign=\"right\"  editable=\"false\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
			 <DataGridColumn id=\"ETC_EVDC_SEQ_NO\"         dataField=\"ETC_EVDC_SEQ_NO\"              headerText=\"���������Ϸù�ȣ\"       width=\"100\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"FILE_NM\"                 dataField=\"FILE_NM\"                      headerText=\"���ϸ�\"                 width=\"80\"   visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
			 <DataGridColumn id=\"GRIDKEY\"                 dataField=\"GRIDKEY\"                      headerText=\"GridKey\"                width=\"120\"  visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
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
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\"      formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"   formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{RTRT_FIX_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{UPD_CAN_AMT}\"       formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{UPD_CAN_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
			     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{UPD_CAN_VAT_AMT}\"   formatter=\"{numfmt}\" textAlign=\"right\" />\
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
        gridApp.setLayout(layoutStr);   //�׸��� ���̾ƿ� ����
        
        //Ŭ�� �̺�Ʈ �߰�
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

    		//�ΰ���ġ���׺��� �˾�/����������� �˾�
            if (dataField == "VAT_BTN" || dataField == "ETC_EVDC_BTN") {            
            	fnGridEvent(rowIndex, columnIndex, dataRow, dataField);
            };        
            
        };        

        //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var column = dataGrid.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid,dataRow);             
        };
        

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", uf_search);
        
        //data ��� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("dataComplete", setTotCnt);
        gridRoot.addEventListener("dataComplete", columnBackGroundStyle);
                        
        gridRoot.addEventListener("itemDataChanged", itemDataChangeHandler);

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
    //��Ż �� ���ϱ�
    function setTotCnt() {
        if (collection == null)
            collection = gridRoot.getCollection();
        if (collection == null) {
            return;
        };

        var clen = collection.getLength();
        $("#InqPrsTotlNcnt").text(clen);    //�׸��� �ڷ��                
    }
    
    // �׸��忡�� ������ �Ͼ�� �ҷ����ϴ�.
    function itemDataChangeHandler(event) {
        var rowIndex = event.getRowIndex();                 // ����� ���ȣ
        var columnIndex = event.getColumnIndex();       // ����� ����ȣ
        var dataField = event.getDataField();               // ����� ���� ����Ÿ �ʵ�
        var dataRow = gridRoot.getItemAt(rowIndex); // ����� ����Ÿ ���ڵ�
        // ������ �ʵ忡 ���� ��ȣ�� �Ѵ�.
        
        var footer = gridRoot.getObjectById("footer");
            footer.invalidateData();
            dataGrid.invalidateList();
        
        
    }
    
    
    //������ ����    
    var cnt = 0;
    function setGridData(seqNo){        
        try{            
            var gridValue = [];       
      
            //gridValue[cnt++] = {"AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20111121","USE_REG_TM":"093815","USE_REG_SN":"1","DTLS_ITXP_CD":"B0202","DTLS_ITXP_NM":"����Ȱ����","SUB_DTLS_ITXP_CD":"B0202013","SUB_DTLS_ITXP_NM":"��ǰ���Ժ�","MITM_NM":"A4����","TRNS_AMT":"34750","USE_SPLY_AMT":"31591","USE_VAT_AMT":"3159","VAT_PSV_APC_YN":"Y","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","CAN_TRNS_AMT":"0","UPD_CAN_AMT":"0","UPD_CAN_SPLY_AMT":"0","UPD_CAN_VAT_AMT":"0","ETC_EVDC_SEQ_NO":"P20111121093755-G00000000000003-10112249","FILE_NM":"�������_����.xlsx\\;","GRIDKEY":"&BuitId=U201111214175230&AgrmtSeqNo=G00000000000003&AgrmtInstId=10112249&UseRegDt=20111121&UseRegTm=093815&UseRegSn=1&DtlsItxpCd=B0202&DtlsItxpNm=����Ȱ����&SubDtlsItxpCd=B0202013&SubDtlsItxpNm=��ǰ���Ժ�&MitmNm=A4����&TrnsAmt=34750&UseSplyAmt=31591&UseVatAmt=3159&VatPsvApcYn=Y&CanTrnsAmt=0&EtcEvdcSeqNo=P20111121093755-G00000000000003-10112249&FileNm=�������_����.xlsx\\;","VAT_BTN":"�ΰ�������","ETC_EVDC_BTN":"�����������","FILE_YN":"[���]","POSS_SPLY_AMT":"31591","POSS_VAT_AMT":"3159","POP_YN":"N"};
            
            //1. �ű԰���
            if("G00000000000001" == seqNo){

                
            //2. �������
            }else if("G00000000000002" == seqNo){

            	gridValue[cnt++] = {"DTLS_ITXP_NM":"����Ȱ����","SUB_DTLS_ITXP_NM":"���̳����ֺ�","MITM_NM":"���̳� ���ֺ�","TRNS_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","UPD_CAN_AMT":"0","UPD_CAN_SPLY_AMT":"0","UPD_CAN_VAT_AMT":"0","VAT_BTN":"�ΰ�������","ETC_EVDC_BTN":"�����������","FILE_YN":"[���]","POSS_SPLY_AMT":"31591","POSS_VAT_AMT":"3159","POP_YN":"N","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140212","USE_REG_TM":"093815","USE_REG_SN":"1","DTLS_ITXP_CD":"B0202","SUB_DTLS_ITXP_CD":"B0202013","VAT_PSV_APC_YN":"Y","CAN_TRNS_AMT":"0","ETC_EVDC_SEQ_NO":"P20131121093755-G00000000000002-10112249","FILE_NM":"����.xlsx\\;","GRIDKEY":"&BuitId=U201111214175230&AgrmtSeqNo=G00000000000003&AgrmtInstId=10112249&UseRegDt=20111121&UseRegTm=093815&UseRegSn=1&DtlsItxpCd=B0202&DtlsItxpNm=����Ȱ����&SubDtlsItxpCd=B0202013&SubDtlsItxpNm=���̳����ֺ�&MitmNm=���̳� ���ֺ�&TrnsAmt=220&UseSplyAmt=200&UseVatAmt=20&VatPsvApcYn=Y&CanTrnsAmt=0&EtcEvdcSeqNo=P20111121093755-G00000000000002-10112249&FileNm=����.xlsx\\;",};

            //3. �������(���� ������)
            }else if("G00000000000003" == seqNo){
                
            	gridValue[cnt++] = {"DTLS_ITXP_NM":"����Ȱ����","SUB_DTLS_ITXP_NM":"�����Ʒú�","MITM_NM":"�Ʒú�","TRNS_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","UPD_CAN_AMT":"0","UPD_CAN_SPLY_AMT":"0","UPD_CAN_VAT_AMT":"0","VAT_BTN":"�ΰ�������","ETC_EVDC_BTN":"�����������","FILE_YN":"[���]","POSS_SPLY_AMT":"31591","POSS_VAT_AMT":"3159","POP_YN":"N","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249","USE_REG_DT":"20140201","USE_REG_TM":"093815","USE_REG_SN":"1","DTLS_ITXP_CD":"B0202","SUB_DTLS_ITXP_CD":"B0202013","VAT_PSV_APC_YN":"Y","CAN_TRNS_AMT":"0","ETC_EVDC_SEQ_NO":"P20131121093755-G00000000000003-10112249","FILE_NM":"����.xlsx\\;","GRIDKEY":"&BuitId=U201111214175230&AgrmtSeqNo=G00000000000003&AgrmtInstId=10112249&UseRegDt=20111121&UseRegTm=093815&UseRegSn=1&DtlsItxpCd=B0202&DtlsItxpNm=����Ȱ����&SubDtlsItxpCd=B0202013&SubDtlsItxpNm=�����Ʒú�&MitmNm=�Ʒú�&TrnsAmt=9060&UseSplyAmt=8237&UseVatAmt=823&VatPsvApcYn=Y&CanTrnsAmt=0&EtcEvdcSeqNo=P20111121093755-G00000000000003-10112249&FileNm=����.xlsx\\;",};

            //4. �������(���� ���� �Ϸ�)
            }else if("G00000000000004" == seqNo){

                
            }
            
            
        }finally{                        
            gridData = gridValue;    //��ȸ��� JSON �� ��������
            rMateGridSetData();  //rMateGrid ����            
        }
    }

    function SetData(seqNo){
    	if(!seqNo) return false;
    	
        try{            
            document.body.setCapture(); // 'wait'
            document.body.style.cursor = "wait";
            setGridData(seqNo); //Insert    Grid        
            document.body.style.cursor = "auto";
            document.body.releaseCapture(); //setCapture()_Next                
        }finally{
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
      
      for (i = 0; i < collection.getLength(); i++) {          
          collection.addCellAttributeDetailAt(i, 9, 1, 1, null, 0xEDF2FE);
          collection.addCellAttributeDetailAt(i, 12, 1, 1, null, 0xEDF2FE);
          collection.addCellAttributeDetailAt(i, 13, 1, 1, null, 0xEDF2FE);          
      }
    }    
  	
  
    /* ********************** 2014 �׸��� ��ü �۾� rMateGrid setting START *********************** */

</script>
</body>
</html> 