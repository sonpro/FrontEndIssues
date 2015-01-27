<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_07_10.jsp
 *   Description        : ������ī�� ��� �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ===================================================================================
 *   2013.12.17                    ������             
 *
 *  @author ������
 *  @Since  2013.12.17.
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
    String schParam           = SessionUtil.getRequestValue(request, "schParam");                               // ��ϼ�������
    String S_AGRMT_SEQ_NO           = SessionUtil.getRequestValue(request, "S_AGRMT_SEQ_NO");                               // ��ϼ�������
%>

<title>������ �ű�ī�� ��� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">������ �ű�ī�� ���</p>
        </div>
        <!-- //head title// --> 
    </div>

<script type="text/javascript">
    function html_sign() {
        document.form.signed_msg.value = Sign_with_option_with_htmlEx(20,html_template, document.form.plain1.value + ":" + document.form.plain2.value + ":" + document.form.plain3.value, srvcert );    
        //document.form.vid_msg.value = send_vid_info();
    
        return XecureSubmit(document.form);
    }
    ///////////////////////////////////////////////////////////////////////////////////
    //���ڼ��� ��
    ///////////////////////////////////////////////////////////////////////////////////
    
    
    function uf_opener_search(){
        opener.uf_search('S');
        window.close();
    }
    
    //////////////////////////////////
    //��ȸ ó��
    //////////////////////////////////
    var CrdcoCd = "";
    function uf_search(SchGb){
    	
        var frm = document.frm;
    
        var inx = document.frm.CrdcoCd.selectedIndex;
    
        //��ü�ڷᰡ ���� ��ȸ�ڷẸ�� ���� ������ ��ȸ ����.
        if(SchGb == "N" && totCnt < nCnt){
            return;
        }else if(SchGb == "S"){
        	rMateGridLayoutInit_rMate();
        }
        
        
        if(document.frm.CrdcoCd.options[inx].value == ""){
            alert("ī��縦 �����ϼ���.");
            document.frm.CrdcoCd.focus();
            return;
        }
        
        CrdcoCd = document.frm.CrdcoCd.options[inx].value;
        if( isSubmit() ) return;    // ����ó��
        
        uf_proce_display_on();  //�ε���
        setTimeout(
               function(){
                   search(SchGb, document.frm.CrdcoCd.options[inx].value);
               }
               , 1000);   // 1���� ���� 1000 = 1��
               
        
    }
    
    
    

    //////////////////////////////////
    //��� ó��
    //////////////////////////////////
    function uf_create_rmate(){
        var frm = document.frm;
        var msg = "";
    
        if( isSubmit() ) return;    // ����ó��
    
        
        var dataRow;
        var gridCnt = getGridRowCountRia();
        
        if(gridCnt <= 0){
            alert("��ȸ�� ����Ÿ�� �����ϴ�.");
            return;
        }
            
        selectorColumn = gridRoot.getObjectById("selector");    //üũ�� ID ��������
        var arrIdx = selectorColumn.getSelectedIndices();       //üũ�� row ��������
        
        if(arrIdx.length <= 0){ 
            alert("ó���� ����Ÿ�� �����ϼ���.");
            return; 
        }
        
        
        for(var i=0;i<arrIdx.length;i++){
            dataRow = gridRoot.getItemAt(arrIdx[i]);
            
            //2013-10-16 ������ ���� 8�� 48�� 
            //�ϳ�SKī��� �� ��� ī���ȣ �� 6�ڸ� �ĺ���ȣ�� �ϳ�BCī���ΰ�� ��Ͼȵǵ��� ó��  (����)
            var crdNo = dataRow.CRD_NO.replace(/\-/g, ""); 
            var crdCk = crdNo.substr(0,6);
            
            if(dataRow.CRDCO_CD == "HN"){
                //alert(crdCk);
                if(crdCk == "414025" || crdCk == "558525" || crdCk == "943025" || crdCk == "944025"){
                    alert(dataRow.CRD_NO+"�� �ϳ�BCī���Դϴ�.\nī��縦 Ȯ�����ֽñ� �ٶ��ϴ�.");
                    return;
                }
            }
            //�ϳ�SKī��� �� ��� ī���ȣ �� 6�ڸ� �ĺ���ȣ�� �ϳ�BCī���ΰ�� ��Ͼȵǵ��� ó��  (����)

            if(dataRow.CRDCO_REG_PROC_ST == "5" || dataRow.CRDCO_REG_PROC_ST == "" || null == dataRow.CRDCO_REG_PROC_ST || typeof dataRow.CRDCO_REG_PROC_ST == "undefined"){
            }else{
                if(dataRow.CRDCO_REG_PROC_ST == "4"){
                    alert("����ó�����̹Ƿ� ����� �� �����ϴ�.\n������ �����Ϸ��� �����մϴ�.");
                    return;
                }
                alert("�̵̹�ϵǾ��ų� ���ó�����Դϴ�.");
                return;
            }
        }
        
        
        


        if(!confirm("�����Ͻðڽ��ϱ�?")){  
            return;
        }          
            
        for(var i=0;i<arrIdx.length;i++){
            dataRow = gridRoot.getItemAt(arrIdx[i]);
            
            get2post(frm, "CrdNo="         +dataRow.CRD_NO);
            get2post(frm, "CrdcoCd="       +dataRow.CRDCO_CD);
            get2post(frm, "CrdPrdDv="      +dataRow.CRD_PRD_DV);
            get2post(frm, "SetlDd="        +dataRow.SETL_DT);
            get2post(frm, "SetlBnkNm="     +dataRow.SETL_BNK_CD_NM);
            get2post(frm, "SetlAcctNo="    +dataRow.SETL_ACCT_NO);
            get2post(frm, "FncInstCd="     +dataRow.CRDCO_CD);
            get2post(frm, "CrdcoNm="       +dataRow.CRDCO_CD_NM);
            get2post(frm, "ValdTrm="       +dataRow.VALD_TRM);
            get2post(frm, "SetlBnkCd="     +dataRow.SETL_BNK_CD); 
            get2post(frm, "CrdcoRegProcSt="+dataRow.CRDCO_REG_PROC_ST);
        }

        ///////////////////////////////////////////////////////////////////////////////////
        //  ���ڼ��� ����
        ///////////////////////////////////////////////////////////////////////////////////
            for(i=0;i<arrIdx.length;i++){
                dataRow = gridRoot.getItemAt(arrIdx[i]);
                
                msg += "CrdNo="      +dataRow.CRD_NO;
                msg += "&CrdcoCd="   +dataRow.CRDCO_CD;
                msg += "&CrdPrdDv="  +dataRow.CRD_PRD_DV;
                msg += "&SetlDd="    +dataRow.SETL_DT;
                msg += "&SetlBnkNm=" +dataRow.SETL_BNK_CD_NM;
                msg += "&SetlAcctNo="+dataRow.SETL_ACCT_NO;
                msg += "&FncInstCd=" +dataRow.CRDCO_CD;
                msg += "&CrdcoNm="   +dataRow.CRDCO_CD_NM;
                msg += "&ValdTrm="   +dataRow.VALD_TRM;
                msg += "&SetlBnkCd=" +dataRow.SETL_BNK_CD;
                msg +=  "|";

            }
        
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
                            	//���� ������ 
                            	if("G00000000000001" == seqNo){
                            		setCookieTraning( "T41_07_10", "Y", 1 );
                            	}
                                reset_submit();
                                alert("����Ǿ����ϴ�");
                                opener.uf_search();
                                
                                window.close();
                            }finally{
                            }
                        }, 1000);   // 1���� ���� 1000 = 1��s
            }
            return;
        
        ///////////////////////////////////////////////////////////////////////////////////
        //  ���ڼ��� ��
        /////////////////////////////////////////////////////////////////////////////////// 
    }
    

    /**
     * ���ǰ� ����
     */
    function makeSessData(){
    	var sessGridData = [];
    	
    	//gridData
    	//CrdcoCd
    	
    	// ī��纰�� ���� �� ����
        var sessionNm = "T41_07_10" + "_" + CrdcoCd;
        
        selectorColumn = gridRoot.getObjectById("selector");    //üũ�� ID ��������
        var arrIdx = selectorColumn.getSelectedIndices();       //üũ�� row ��������

        for(var j=0;j<arrIdx.length;j++){
        	gridData[arrIdx[j]].CRDCO_REG_PROC_ST = "3";
        }
        dataCtrl.setObjData(sessionNm, JSON.stringify(gridData));
        
        //���õ� ī�� ������ ����
        var _SESS_DATA = dataCtrl.getObjData("T41_07_00");
        if(_SESS_DATA == null){
        	
        	//�ű� ���� ����
	        for(var i=0;i<arrIdx.length;i++){
	            dataRow = gridRoot.getItemAt(arrIdx[i]);
	        	
	            var gridData_41_07_00 = {};
	            gridData_41_07_00.CRD_PRD_DV_NM    = dataRow.CRD_PRD_DV_NM;
	            gridData_41_07_00.CRD_PRD_DV       = dataRow.CRD_PRD_DV;
	            gridData_41_07_00.CRD_NO           = dataRow.CRD_NO;
	            gridData_41_07_00.SETL_BNK_CD_NM   = dataRow.SETL_BNK_CD_NM;
	            gridData_41_07_00.REG_DTM          = currentNowDate2;
	            gridData_41_07_00.CRD_USR_NM       = null;
	            gridData_41_07_00.SETL_BNK_CD      = dataRow.SETL_BNK_CD;
	            gridData_41_07_00.CRDCO_REG_PROC_ST_NM = "��ϿϷ�";
	            gridData_41_07_00.CRDCO_NM         = dataRow.CRDCO_CD_NM;
	            gridData_41_07_00.CRDCO_CD         = dataRow.CRDCO_CD;
	            gridData_41_07_00.CRDCO_REG_PROC_ST = "3";
	            gridData_41_07_00.SETL_DD          = "27";
	            gridData_41_07_00.VALD_TRM         = dataRow.VALD_TRM;
	            gridData_41_07_00.SETL_ACCT_NO     = dataRow.SETL_ACCT_NO_PAY;
	            gridData_41_07_00.CRDCO_CD_NM      = dataRow.CRDCO_CD_NM;
	            
	            sessGridData[i] = gridData_41_07_00;
	            
	        }
        	
        }else{
        	sessGridData = JSON.parse(_SESS_DATA);
        	var cnt = sessGridData.length;
        	
        	for(var i=0;i<arrIdx.length;i++){
                dataRow = gridRoot.getItemAt(arrIdx[i]);
                
                var gridData_41_07_00 = {};
                gridData_41_07_00.CRD_PRD_DV_NM     = dataRow.CRD_PRD_DV_NM;
                gridData_41_07_00.CRD_PRD_DV        = dataRow.CRD_PRD_DV;
                gridData_41_07_00.CRD_NO            = dataRow.CRD_NO;
                gridData_41_07_00.SETL_BNK_CD_NM    = dataRow.SETL_BNK_CD_NM;
                gridData_41_07_00.REG_DTM           = currentNowDate2;
                gridData_41_07_00.CRD_USR_NM        = null;
                gridData_41_07_00.SETL_BNK_CD       = dataRow.SETL_BNK_CD;
                gridData_41_07_00.CRDCO_REG_PROC_ST_NM = "��ϿϷ�";
                gridData_41_07_00.CRDCO_NM          = dataRow.CRDCO_CD_NM;
                gridData_41_07_00.CRDCO_CD          = dataRow.CRDCO_CD;
                gridData_41_07_00.CRDCO_REG_PROC_ST = "3";
                gridData_41_07_00.SETL_DD           = "27";
                gridData_41_07_00.VALD_TRM          = dataRow.VALD_TRM;
                gridData_41_07_00.SETL_ACCT_NO      = dataRow.SETL_ACCT_NO_PAY;
                gridData_41_07_00.CRDCO_CD_NM       = dataRow.CRDCO_CD_NM;
                
                sessGridData[cnt+i] = gridData_41_07_00;
        	}
        	
        }
        dataCtrl.setObjData("T41_07_00", JSON.stringify(sessGridData));
        
        
        
        //��ϵ� ī�� �� ���ϱ� T41_06_00 ���ð�
        var dataCnt = 0;
        for(var k=0;k<gridData.length;k++){
            if(gridData[k].CRDCO_REG_PROC_ST == "3"){
            	dataCnt++;
            }
        }
        
        //������ī�� ���� ������Ʈ  T41_06_00
        var _SESS_DATA_41_06_00 = dataCtrl.getObjData("T41_06_00");
        if(_SESS_DATA_41_06_00 != null){
        	var sessGridData_41_06_00 = JSON.parse(_SESS_DATA_41_06_00);
            var cnt = sessGridData_41_06_00.length;
            
            for(i=0;i<cnt;i++){
            	//ī�尡 ��ϿϷ� (CRDCO_REG_PROC_ST == "3") �̸� �ش�ī���� �������
            	if((sessGridData_41_06_00[i].CRDCO_REG_PROC_ST == "1" || sessGridData_41_06_00[i].CRDCO_REG_PROC_ST == "2" || sessGridData_41_06_00[i].CRDCO_REG_PROC_ST == "3" ) 
            			&& CrdcoCd == sessGridData_41_06_00[i].FNC_INST_CD){
            		sessGridData_41_06_00[i].REG_CRD_CNT = String(dataCnt);
            	}
            }
            dataCtrl.setObjData("T41_06_00", JSON.stringify(sessGridData_41_06_00));
        	
        }

    }

</script>







    <div id="body"> 
        <form name="frm" method="post">
        <input type="hidden" name="PrsPgno" value="0" />
        <input type="hidden" name="TrSupYn" value="N" /> <!--�ŷ���ӿ���-->
        <!-- content start -->
        <div id="content">
            <div class="t20"></div>
            <h3>������ �ű�ī����</h3>
            <!-- �˻��� start -->
            <div class="pop_search">
                <div class="pop_search_boxt"></div>
                <div class="pop_search_boxc">
                    <fieldset>
                        <legend>���������� ī���</legend>
                        <table width="680" summary="���������� ī���" class="pop_tbl_search">
                        <caption>���������� ī���</caption>
                        <colgroup>
                            <col width="22%" />
                            <col width="35%" />
                            <col width="12%" />
                            <col width="28%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col">���������� ī���</th>
                            <td id="crdSelect"><SELECT name='CrdcoCd'><option value=''>ī��縦 �����ϼ���.</option></SELECT></td>
                            <th scope="col">ī���ȣ</th>
                            <td>
                                <input type="text" name="SearchCrdNo" id="SearchCrdNo"  title="ī���ȣ" class="inputl" style="width:120px;" maxlength="16"/>
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
            <div class="pop_search_bt">
                <div class="ar"><a href="#" onclick="uf_search('S'); return false" class="bt_search" title="��ȸ"></a></div>
            </div>
            <!-- //��ȸ ��ư end// -->                


<!-- *************************  rMateGrid ************************* -->
            <!-- �ѰǼ� start -->
            <div class="total_box" style="width:750px">
            <div class="fl b05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> �� /<span id="InqPrsTotlCnt2">0</span> ��]</div>
             <p class="ar b05">
      
      <a href="#dummy" onclick="excelExport_rMate();"><img src="/bt/bt_save.gif" alt="����"/></a>
            </p>
            </div>
            <!-- //�ѰǼ�end// --> 

            <!-- �׸��� Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "240", "#FFFFFF");
                </script>
            </div>
            <!-- �׸��� End -->
            <!-- �󼼺��� ���̾� �˾� Start -->
            <div id="layerPopup" style="display:none;z-index:999999;">
                <div id="layerPopupTitle" style="width:355px;height:30px;">
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="�ݱ�"></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
            <!-- �󼼺��� ���̾� �˾� End -->
            <div class="t05">
                <p class="guide_bu"><img src="/images/common/white_bu.gif" alt=" "/> ��� : �̵��, <img src="/images/common/yellow_bu.gif" alt=" "/> ����� : ���ó���� : ���ó����/���Ȯ����/��ϿϷ�, <img src="/images/common/red_bu.gif" alt=" "/> ������ : ����ó����/�����Ϸ�</p>
            </div>         
<!-- *************************  rMateGrid ************************* -->


            
            <!-- action bt start -->
            <div class="pop_action_bt">
                <div class="fr"><a href="#dummy" onclick="uf_create_rmate();return false;" class="bt_action2-01" title="Ȯ��"><span class="bt_sp">Ȯ��</span></a></div>
            </div>
            <!-- //action bt end// --> 
        </div>
        </form>
        <!-- //content end// -->
    </div>


        
<%@ include file="/inc/jspFooter_popup.jsp" %> 


<script type="text/javascript">


var schParam = "<%=schParam%>";
var seqNo = "<%=S_AGRMT_SEQ_NO%>";

$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    
    if("G00000000000001" == seqNo){
	    //���ǰ��� ������ �� ����
	    var _COOKIE_DATA = getCookieTraning("T41_06_00"); 
	    if(_COOKIE_DATA != false){
	        $("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>ī��縦 �����ϼ���.</option><option value='IB'>A ī���</option></SELECT>");
	    }
    }else{
    	$("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>ī��縦 �����ϼ���.</option><option value='IB'>A ī���</option></SELECT>");
    }
    /* 
    if("G00000000000004" == seqNo){
        $("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>ī��縦 �����ϼ���.</option><option value='IB'>���BCī��</option></SELECT>");
    }else if("G00000000000003" == seqNo){
    	$("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>ī��縦 �����ϼ���.</option><option value='IB'>���BCī��</option><option value='WRB'>�츮BCī��</option></SELECT>");
    }else if("G00000000000002" == seqNo){
    	$("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>ī��縦 �����ϼ���.</option></SELECT>");
    }else if("G00000000000001" == seqNo){
    	$("#crdSelect").html("<SELECT name='CrdcoCd'><option value=''>ī��縦 �����ϼ���.</option></SELECT>");
    }
    */
    
    	//���� ������ 20140307
    	/***********************  ��Ű�� ��Ʈ�� �߰� Start ***********************/
    	/* 
    	var selectStr = "<SELECT name='CrdcoCd'><option value=''>ī��縦 �����ϼ���.</option>";
    	
    	
        var _SESS_DATA = dataCtrl.getObjData("T41_06_00"); 
        
    	//FNC_INST_CD
        if(_SESS_DATA != null){
        	var sessGridData = JSON.parse(_SESS_DATA);
        	
            if(sessGridData.length > 0){
                var paramValue = "";
                for(var i=0;i<sessGridData.length;i++){
                	var CRDCO_REG_PROC_ST = sessGridData[i].CRDCO_REG_PROC_ST;
                	if(CRDCO_REG_PROC_ST == "1" || CRDCO_REG_PROC_ST == "2" || CRDCO_REG_PROC_ST == "3"){
	                    paramValue = sessGridData[i].FNC_INST_CD;
	                    
	                    if("KJ" == paramValue){         //��������
	                    	selectStr += "<option value='KJ'>��������</option>";
	                    }else if("IB" == paramValue){   //���BCī��
	                    	selectStr += "<option value='IB'>���BCī��</option>";
	                    }else if("NH" == paramValue){   //NHī��
	                    	selectStr += "<option value='NH'>NHī��</option>";
	                    }else if("LT" == paramValue){   //�Ե�ī��
	                    	selectStr += "<option value='LT'>�Ե�ī��</option>";
	                    }else if("SS" == paramValue){   //�Ｚī��
	                    	selectStr += "<option value='SS'>�Ｚī��</option>";
	                    }else if("SH" == paramValue){   //����ī��
	                    	selectStr += "<option value='SH'>����ī��</option>";
	                    }else if("KE" == paramValue){   //��ȯī��
	                    	selectStr += "<option value='KE'>��ȯī��</option>";
	                    }else if("JB" == paramValue){   //��������
	                    	selectStr += "<option value='JB'>��������</option>";
	                    }else if("HD" == paramValue){   //����ī��
	                    	selectStr += "<option value='HD'>����ī��</option>";
	                    }else if("WRB" == paramValue){  //�츮BCī��
	                    	selectStr += "<option value='WRB'>�츮BCī��</option>";
	                    }else if("BSB" == paramValue){  //�λ�BCī��
	                    	selectStr += "<option value='BSB'>�λ�BCī��</option>";
	                    }else if("CTB" == paramValue){  //��ƼBCī��
	                    	selectStr += "<option value='CTB'>��ƼBCī��</option>";
	                    }else if("DGB" == paramValue){  //�뱸BCī��
	                    	selectStr += "<option value='DGB'>�뱸BCī��</option>";
	                    }else if("HNB" == paramValue){  //�ϳ�BCī��
	                    	selectStr += "<option value='HNB'>�ϳ�BCī��</option>";
	                    }else if("KNB" == paramValue){  //NHBCī��
	                    	selectStr += "<option value='KNB'>NHBCī��</option>";
	                    }else if("NHB" == paramValue){  //NHBCī��
	                    	selectStr += "<option value='NHB'>NHBCī��</option>";
	                    }else if("SCB" == paramValue){  //SC����BCī��
	                    	selectStr += "<option value='SCB'>SC����BCī��</option>";
	                    }
	                    
	                    paramValue = "";
                		
                	}
                    
                } // for

            } // if(sessGridData.length
            
        } // if(_SESS_DATA
    	
    	selectStr += "</SELECT>";
        $("#crdSelect").html(selectStr);
         */
        /***********************  ��Ű�� ��Ʈ�� �߰� End ***********************/
    //}
});

</script>






<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">
/* �׸��� ���� ����
1. html�� �÷����� sync : rMateGridInit() �Լ� ���� ( onload ����. Ȥ�� ready )
2. ���̾ƿ��� �ǰ��� �׸��� ����
3. �׸��忡 ����Ÿ �ֱ�
*/


    //���̾ƿ� ����
    var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"����\" width=\"40\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"CRD_NO\"                 dataField=\"CRD_NO\"                  headerText=\"ī���ȣ\"           width=\"130\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_CD_NM\"            dataField=\"CRDCO_CD_NM\"             headerText=\"ī���\"             width=\"80\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_BNK_CD_NM\"         dataField=\"SETL_BNK_CD_NM\"          headerText=\"��������\"           width=\"100\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_ACCT_NO_PAY\"       dataField=\"SETL_ACCT_NO_PAY\"        headerText=\"�������¹�ȣ\"       width=\"150\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_PRD_DV_NM\"          dataField=\"CRD_PRD_DV_NM\"           headerText=\"����\"               width=\"110\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_DT\"                dataField=\"SETL_DT\"                 headerText=\"������\"             width=\"60\"   visible=\"true\"  textAlign=\"right\"  headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_CD\"               dataField=\"CRDCO_CD\"                headerText=\"ī����ڵ�\"         width=\"100\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_PRD_DV\"             dataField=\"CRD_PRD_DV\"              headerText=\"�����ڵ�\"           width=\"100\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_ACCT_NO\"           dataField=\"SETL_ACCT_NO\"            headerText=\"���¹�ȣ\"           width=\"90\"  visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"VALD_TRM\"               dataField=\"VALD_TRM\"                headerText=\"��ȿ�Ⱓ\"           width=\"70\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_XUSE_SETL_ACCT_NO\"  dataField=\"RCV_XUSE_SETL_ACCT_NO\"   headerText=\"�Ա�����������¹�ȣ\"  width=\"60\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SETL_BNK_CD\"            dataField=\"SETL_BNK_CD\"             headerText=\"���������ڵ�\"       width=\"0\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_ISSU_DT\"            dataField=\"CRD_ISSU_DT\"             headerText=\"ī��߱�����\"       width=\"60\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SVCL_DV\"                dataField=\"SVCL_DV\"                 headerText=\"���Ű���\"         width=\"60\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_REG_PROC_ST\"      dataField=\"CRDCO_REG_PROC_ST\"       headerText=\"����\"               width=\"90\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
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
        gridApp.setLayout(layoutStr); //�׸��� ���̾ƿ� ����

        
        //Ŭ�� �̺�Ʈ �߰� ( üũ�ڽ��� �ִ� row Ŭ�� �� �ش� row�� üũ�ڽ� üũ/���� �̺�Ʈ ��� )
        var itemClickHandler = function(event) {
            
            //*******  Ŭ���� row�� �÷��� üũ�ڽ��� �ִ� �÷��� ��� üũ�ڽ��� üũ�ؾ߸� üũ�� �ǵ��� ��. Start ******//
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
            
            if (dataField == "selector") { //üũ�ڽ� �÷��� ��� �Ʒ� �̺�Ʈ ����
                return;
            };
            //*******  Ŭ���� row�� �÷��� üũ�ڽ��� �ִ� �÷��� ��� üũ�ڽ��� üũ�ؾ߸� üũ�� �ǵ��� ��. End ******//
            
            selectorColumn = gridRoot.getObjectById("selector");

            var selValue = selectorColumn.getSelectedIndices();
            var arrValue = new Array();
            
            if(selValue.length < 1){
                arrValue[0] = event.getRowIndex();
            }else{
                //�ߺ��� üũ
                var valTemp = new Array();
                var isValue = false;
                for(var i=0; i<selValue.length ; i++){
                    if(selValue[i] != event.getRowIndex()){
                        valTemp[valTemp.length] = selValue[i];
                    }else{
                        isValue = true;
                    }
                }
                if(!isValue){
                    valTemp[valTemp.length] = event.getRowIndex();
                }
                arrValue = valTemp;
            }
            selectorColumn.setSelectedIndices(arrValue);
            
        };
        
        
        //��ũ�� ���� �� ���� ��ȸ ����
        var scrollHandler = function(event) {
            var direction = event.getDirection();
            if (direction != "vertical")
            return;


            var delta = event.getDelta(); // +���̸� �Ʒ���, -���̸� ����
            var position = event.getPosition(); // verticalScrollPosition

            if (delta > 0 && position == dataGrid.getMaxVerticalScrollPosition()) {
                uf_search('N');
            }
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
        
        //�׸��� �̺�Ʈ ���
        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ
            dataGrid.addEventListener("scroll", scrollHandler); //��ũ�� ���� �� ���� ��ȸ ����
        };

        
        //layout ��� �� ����� �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        
        //data ��� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("dataComplete", setTotCnt);   //��ü ��ȸ�Ǽ� ���
        gridRoot.addEventListener("dataComplete", uf_rowColor_rmate);   //���ǿ����� ����ó��
        gridRoot.addEventListener("dataComplete", gridCheckData);   //������ ��ȸ�� ���� üũ ����

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    var arrCheckData = new Array(); //���� üũ���� ������ ���� ���
    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        arrCheckData = null;
        //�ڷ� ��� �� ������ üũ�� ���� �ִ°� Ȯ��
        selectorColumn = gridRoot.getObjectById("selector");    //üũ�� ID ��������
        arrCheckData = selectorColumn.getSelectedIndices();       //üũ�� row ������
        
        gridApp = FABridge.gridBridge.root();  
        gridApp.setData(JSON.stringify(gridData)); //������ ���
        
        
        // ���콺 �� �̺�Ʈ �����ʸ� �����մϴ�.  ****  ������ ���콺 �� ó��(scrollHandler)�� ���ÿ� �ϸ� ������ �߻��� �� ������(�ڹٽ�ũ��Ʈ���� ���ÿ� �ΰ��� �̺�Ʈó��) �����Ͻñ� �ٶ��ϴ�
        //addGridMouseWheelEventListenerSearch();
        
    };
    
    //������ ��ȸ�� ���� üũ ����
    function gridCheckData(){
        if(arrCheckData.length > 0){
            selectorColumn.setSelectedIndices(arrCheckData);
            
        }
    }
    
  
    //��ü �ڷ�� ���
    function setTotCnt(){
        var cnt = getGridRowCount_rMate();
        $("#InqPrsTotlNcnt2").html(cnt);
        $("#InqPrsTotlCnt2").html(cnt);
        
        //������ ��ȸ�� ��ũ���̵�
        /* 
        var s = cnt - 10;
        
        if(s > 0){
            dataGrid.setVerticalScrollPosition(s);
        }
         */
    }
    
    
    
    
    function uf_rowColor_rmate(){
        if (collection == null)
            collection = gridRoot.getCollection();
        
        var dataRow;
        var gridCnt = collection.getLength();
        // ��ϰ��ɿ���üũ : ���ó����,���Ȯ����,��ϿϷ�� ������ ����
        for(var i=0;i<gridCnt;i++){
            dataRow = gridRoot.getItemAt(i);
            if(dataRow.CRDCO_REG_PROC_ST == "1" || dataRow.CRDCO_REG_PROC_ST == "2" || dataRow.CRDCO_REG_PROC_ST == "3"){
                collection.addRowAttributeDetailAt(i, null, 0xFFFF66);       // �� ��Ÿ��(��Ÿ�ϸ��� ������) ���� - ��Ÿ���� layout���� �����մϴ�
            }else if(dataRow.CRDCO_REG_PROC_ST == "4" || dataRow.CRDCO_REG_PROC_ST == "5"){
                //collection.addRowAttributeDetailAt(i, null, 0xFF6666);    // ���� ��Ÿ�� ����
                collection.addRowAttributeDetailAt(i, null, 0xFF6666);
            }else{
            }
        }
        
    }
    
    
    
    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->





<script type="text/javascript">
var cnt     = 0;    //grid �迭��
var nCnt = 0;    //�����ڷ�ī��Ʈ
var totCnt  = 0;    //��ü �ڷ��
var gridValue = []; //

function SetData(nextCnt, CrdcoCd){    
    var frm = document.frm;
    try{
        
        cnt = 0;
        
        if("G00000000000001" == seqNo){
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-4444","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-5555","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-6666","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};

        }else if("G00000000000002" == seqNo){
        	
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-7777","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-8888","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-6666","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};

        }else if("G00000000000003" == seqNo){

        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-7777","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-8888","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-6666","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};

        }else if("G00000000000004" == seqNo){
        	
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-7777","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-8888","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":"3"};
        	gridValue[cnt++] = {"CRD_NO":"1111-2222-3333-6666","CRDCO_CD_NM":"A ī���","SETL_BNK_CD_NM":"A ����","SETL_ACCT_NO_PAY":"100-00-000000","CRD_PRD_DV_NM":"���(����)ī��","SETL_DT":"23","CRDCO_CD":"IB","CRD_PRD_DV":"A","SETL_ACCT_NO":"100-00-000000","VALD_TRM":"2018/09","RCV_XUSE_SETL_ACCT_NO":"","SETL_BNK_CD":"003","CRD_ISSU_DT":"20121212","SVCL_DV":"O","CRDCO_REG_PROC_ST":""};

        }
        
    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        $("#InqPrsTotlCnt2").html(totCnt);
        rMateGridSetData();  //rMateGrid ����
    }
}

function search(SchGb, CrdcoCd){
    if(!schParam) return false;

    //ó�� ��ȸ�� �ʱ�ȭ
    if(SchGb == "S"){
    	nCnt = 0;
    	gridValue = [];
    }
    
    
    
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        SetData(nCnt, CrdcoCd); //Insert    Grid
        //SetData(); //Insert Grid
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
        searchAlert();
        
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