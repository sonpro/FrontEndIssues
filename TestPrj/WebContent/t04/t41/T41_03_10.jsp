<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_03_10.jsp
 *   Description        : ���ѵ��/���� �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================================
 *   2013.12.12                     ������
 *
 *  @author ������
 *  @Since  2013.12.12.
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
<%@ page import="kr.go.rcms.web.util.StringUtil" %>

<%@ page import="java.util.HashMap" %>


<%

    String Dv               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"Dv"));            // ���������ڵ�(����,���)
    String PmsId            =   StringUtil.null2void(SessionUtil.getRequestValue(request,"PmsId"));         // PMSID          
    String BzClasCd         =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzClasCd"));      // ����з��ڵ�   
    String SbjtId           =   StringUtil.null2void(SessionUtil.getRequestValue(request,"SbjtId"));        // ����ID         
    String UsrId            =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UsrId"));         // �����ID       
    String InstId           =   StringUtil.null2void(SessionUtil.getRequestValue(request,"InstId"));        // ���ID         
    String InstNm           =   StringUtil.null2void(SessionUtil.getRequestValue(request,"InstNm"));        // �����         
    String UsrNm            =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UsrNm"));         // ����ڸ�       
    String HmpwRoleDv       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"HmpwRoleDv"));    // �η¿��ұ���
    String RcmsGrpCd        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcmsGrpCd"));     // RCMS�׷��ڵ�   
    String UseYn            =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UseYn"));         // ��뿩��       
    boolean isDatanull      =   true;
    String SbjtNm           = "";
    String schParam     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"schParam"));   //���� ���� ��ȣ
    String argmtSeqNo     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"argmtSeqNo"));   //���� ��ȣ
    
    
    if("U".equals(Dv)){
	    //1
	    if("TEST0001".equals(SbjtId)){
	    	SbjtNm = "RCMS �ǽ��� �ű԰���";
	
	    //2
	    }else if("TEST0002".equals(SbjtId)){
            SbjtNm = "RCMS �ǽ��� �������";
	
	    //3
	    }else if("TEST0003".equals(SbjtId)){
            SbjtNm = "RCMS �ǽ��� �������";
	
	    //4
	    }else if("TEST0004".equals(SbjtId)){
	    	SbjtNm = "RCMS �ǽ��� �������";
	    	
	    
	    }
    }else{
        //1
        if("1".equals(schParam)){
            SbjtNm = "RCMS �ǽ��� �ű԰���";
    
        //2
        }else if("2".equals(schParam)){
            SbjtNm = "RCMS �ǽ��� �������";
    
        //3
        }else if("3".equals(schParam)){
            SbjtNm = "RCMS �ǽ��� �������";
    
        //4
        }else if("4".equals(schParam)){
            SbjtNm = "RCMS �ǽ��� �������";
        
        }
    }
    
    
%>
<script type="text/javascript">
var Dv          = "<%=Dv%>";
var PmsId       = "<%=PmsId%>";
var BzClasCd    = "<%=BzClasCd%>";
var SbjtId      = "<%=SbjtId%>";
var UsrId       = "<%=UsrId%>";
var InstId      = "<%=InstId%>";
var InstNm      = "<%=InstNm%>";
var UsrNm       = "<%=UsrNm%>";
var HmpwRoleDv  = "<%=HmpwRoleDv%>";
var RcmsGrpCd   = "<%=RcmsGrpCd%>";
var UseYn       = "<%=UseYn%>";
var schParam    = "<%=schParam%>";
</script>

<title>���� ��ϼ��� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���� ��ϼ���</p>
        </div>
        <!-- //head title// --> 
    </div>
        <div id="body">
            <form name="frm" method="post">
            <input type="hidden" name="Dv" value='<%=Dv%>'>                     <!-- ���������ڵ�(���:C,����:U) -->
            <input type="hidden" name="UsrId" value='<%=UsrId%>'>               <!-- �����ID -->
            <input type="hidden" name="UsrNm" value='<%=UsrNm%>'>               <!-- ����ڸ� -->
            <input type="hidden" name="HmpwRoleDv" value='<%=HmpwRoleDv%>'>     <!-- �η¿��ұ��� -->
            <input type="hidden" name="InstId" value='<%=InstId%>'>             <!-- ���ID -->
            <input type="hidden" name="InstNm" value='<%=InstNm%>'>             <!-- ����� -->
            <input type="hidden" name="RcmsGrpCdOld" value='<%=RcmsGrpCd%>'>    <!-- �����Ǳ��� RCMS ���� -->

            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>���ѵ��/����</h3>
                <!-- ���ѵ��/���� ����Ʈ start -->
                <div class="t10 b10 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ѵ��/���� ����Ʈ" class="tbl_type02">
                    <caption>���ѵ��/���� ����Ʈ</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="col">������</th>
                        <td class="ll"><%=StringUtil.null2void(SbjtNm) %></td>
                    </tr>
                    <tr>
                        <th scope="col">�����</th>
                        <td class="ll" id="inUserNm">
<%
                    if("U".equals(Dv)){     //���������ڵ�(����)
                            out.println(UsrNm+" [ "+UsrId+" ]");
                    }else{                  //���������ڵ�(���)                
                        //1
                        if("1" == schParam){
                        }else if("2" == schParam){
                        }else if("3" == schParam){
                        }else if("4" == schParam){
                        }
                            
                        out.println("<select name=\"UsrCombo\" id=\"UsrCombo\"  onchange=uf_chgHmpw(this); ><option value=\"\">����</option><option value=\"KIMSG|�輭��|00|�Ϲݻ����|00011645|��RCMS\" >�輭�� [KANGMN]</option><option value=\"KGUNMU|���ѹ�|00|�Ϲݻ����|00011645|��RCMS\" >���ѹ� [KGUNMU]</option><option value=\"TOTALEE|��ȸ��|00|�Ϲݻ����|00011645|��RCMS\" >��ȸ�� [TOTALEE]</option></select>");
                           
                    }
%>
                       </td>
                    </tr>
                    <tr>
                        <th scope="col">�������ѱ���</th>
                        <td class="ll"><span id="RoleDvSpan"><%=CodeUtil.getCode("RND115",HmpwRoleDv) %></span></td>
                    </tr>
                    <tr>
                        <th scope="col">RCMS���ѱ���</th>
                        <td class="ll">
                            <span id="RcmsSpan">

                                <select name="RcmsGrpCd" id="RcmsGrpCd"><option value="">����</option></select>                              
 
                           </span>
                           <!-- <a href="#dummy"  onclick="uf_GrpMenu();"><img style="height: 16px" src="../../../img/buttons/btn_search_blue.gif" alt="�˻�" /></a> ���� 20110705 �̼���-->
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">��뿩��</th>
                        <td class="ll">
                            <input type="radio" name="UseYn" id="ra1" value="Y" title="���" class="radio2"/><label for="ra1">���</label>
                            <span class="l20"></span>
                            <input type="radio" name="UseYn" id="ra2" value="N" title="�̻��" class="radio2"/><label for="ra2">�̻��</label>
<%
                        if("N".equals(UseYn)) {
                            out.println("<script type=\"text/javascript\">document.frm.UseYn[1].checked=true;</script>");
                        } else {
                            out.println("<script type=\"text/javascript\">document.frm.UseYn[0].checked=true;</script>");
                        }
%>
                        </td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //���ѵ��/���� ����Ʈ end// -->
                <div class="guide_bu">��ü������ ����å����/��ü����ڿ��Ը� �ο��˴ϴ�.</div>
                <!-- action bt start -->
                <div class="pop_action_bt">
                    <a href="#" onclick="uf_save(); return false;" class="bt_action2-01" title="Ȯ��"><span class="bt_sp">Ȯ��</span></a>
                </div>
                <!-- //action bt end// --> 
            </div>
            </form>
            <!-- //content end// -->  
        </div>
        
<%@ include file="/inc/jspFooter_popup.jsp" %> 

<script type="text/javascript">

    function setRcmsSpan(){
        if(HmpwRoleDv == "00"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR050' >�Ϲݻ����</option><option value='MR042' >�Ϲݻ����(���Ŵ����)</option><option value='MR043' >�Ϲݻ����(��ü�����)</option></select>";          
        }else if(HmpwRoleDv == "01"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR030' >�����ǥ��</option></select>";          
        }else if(HmpwRoleDv == "02"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR010' >����å����</option></select>";          
        }else if(HmpwRoleDv == "03"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          
        }else if(HmpwRoleDv == "04"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR020' >����������</option><option value='MR023' >����������(��ü�����)</option></select>";          
        }else if(HmpwRoleDv == "05"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          
        }else if(HmpwRoleDv == "06"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          
        }else if(HmpwRoleDv == "07"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          
        }
    }
    setRcmsSpan();

    function uf_Mbr(){
    	alert("�ǽ�ȯ�濡���� �������� �ʴ� ����Դϴ�.");
    }
    
    function uf_SetMbr(obj_rtn){
        var frm = document.frm;
        var arr;
        arr = obj_rtn.split("|");
        
        document.getElementById("inUserNm").innerHTML   = arr[1]+" ["+arr[0]+"]"+"<a href=\"#dummy\" onclick=\"uf_reSet();\">&nbsp;<img src=\"/images/bt/btn_reset_gray.gif\" alt=\"�ʱ�ȭ\" /></a>";
        document.getElementById("RoleDvSpan").innerHTML = "�Ϲݻ����";
    
        frm.UsrId.value         =   arr[0];         
        frm.UsrNm.value         =   arr[1];
        frm.InstId.value        =   InstId;  
        frm.InstNm.value        =   InstNm;
        frm.HmpwRoleDv.value    =   "00";   
        

            if(HmpwRoleDv == "00"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR050' >�Ϲݻ����</option><option value='MR042' >�Ϲݻ����(���Ŵ����)</option><option value='MR043' >�Ϲݻ����(��ü�����)</option></select>";          
            }

            if(HmpwRoleDv == "01"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR030' >�����ǥ��</option></select>";          
            }

            if(HmpwRoleDv == "02"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR010' >����å����</option></select>";          
            }

            if(HmpwRoleDv == "03"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          
            }

            if(HmpwRoleDv == "04"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR020' >����������</option><option value='MR023' >����������(��ü�����)</option></select>";          
            }

            if(HmpwRoleDv == "05"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          
            }

            if(HmpwRoleDv == "06"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          
            }

            if(HmpwRoleDv == "07"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          
            }

    }    
    
    /******************************************************************
     * uf_save      ���ѵ�Ϲ׼�����û
     * @param       
     * @return
    ******************************************************************/
    function uf_save(){
        var frm = document.frm;
        var rcmsGrp = frm.RcmsGrpCd.options[frm.RcmsGrpCd.options.selectedIndex].value;
        
        if(frm.RcmsGrpCd.value == ""){
            alert("RCMS���ѱ����� �����Ͽ��ּ���");
            return false;
        }
        //���������� ����å�����϶� RCMS������ �����������å���� �ܿ� ������ �� ����
        if("02" == HmpwRoleDv){
            if(rcmsGrp != "MR010"){
                alert("����å������ RCMS������ ����å���ڸ� �����մϴ�.");
                return;
            }
        }
        
        if (!confirm("�����Ͻðڽ��ϱ�?")) {
            return;
        }
        
        
        var msg = "";
            
                    
        if("C" == Dv) {
        	msg = "��ϵǾ����ϴ�.";
        } else {
        	msg = "�����Ǿ����ϴ�.";
        }
        

        uf_proce_display_on();  //�ε���
        
        setTimeout(
            function(){
                    try{
                    	<%-- 
                    	//�ű԰����Ͻ� ���ǻ���
                    	if("G00000000000001" == "<%=argmtSeqNo%>"){
                    		makeSessData();
                    	}
                    	 --%>
                        reset_submit();
                        alert(msg);
                        opener.uf_search();
                        
                        window.close();
                    }finally{
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
                
    }
    
    //���� ���
    function makeSessData(){
    	//var _SESS_DATA = dataCtrl.getObjData("T41_06_00");
    	var sessGridData = [];
    	var rcmsGrp = $('#RcmsGrpCd option:selected').val(); //frm.RcmsGrpCd.options[frm.RcmsGrpCd.options.selectedIndex].value;
    	var rcmsGrpTxt = $('#RcmsGrpCd option:selected').text();// frm.RcmsGrpCd.options[frm.RcmsGrpCd.options.selectedIndex].value;
    	var useYn = $('input[name="UseYn"]:radio:checked').val();
    	var useYnTxt = $('input[name="UseYn"]:radio:checked').attr("title");
    	
    	
    	if("C" == Dv) { //���
    		var usrCombo = $('#UsrCombo option:selected').val();
            var usrComboArr = usrCombo.split("|");
            
            var _SESS_DATA = dataCtrl.getObjData("T41_03_00");
    	    var sessCnt = 0;
    		if(_SESS_DATA != null){
                sessGridData = JSON.parse(_SESS_DATA);
                sessCnt = sessGridData.length;
                
                for(var i=0;i<sessCnt;i++){
                    if(sessGridData[i].USR_ID == usrComboArr[0]){
                    	reset_submit();
                        alert("�̹� ��ϵ� ������Դϴ�.");
                        return fasle;
                    }
                }
    		}
    		var GRIDKEY = "";
    		GRIDKEY += "PmsId=" + "G01"; 
    		GRIDKEY += "&BzClasCd=" + "S1056";
    		GRIDKEY += "&SbjtId=" + "TEST0001";
    		GRIDKEY += "&UsrId=" + usrComboArr[0];
    		GRIDKEY += "&InstId=" + usrComboArr[4];
    		GRIDKEY += "&InstNm=" + usrComboArr[5];
    		GRIDKEY += "&UsrNm=" + usrComboArr[1];
    		GRIDKEY += "&HmpwRoleDv=" + usrComboArr[2];
    		GRIDKEY += "&RcmsGrpCd=" + rcmsGrp;
    		GRIDKEY += "&UseYn=" + useYn;
    		sessGridData[sessCnt] = {
    				"USR_NM":usrComboArr[1]
   					,"USR_ID":usrComboArr[0]
   					,"HM_HMPW_ROLE_DV":usrComboArr[3]
   					,"USE_YN":useYnTxt
   					,"GRIDKEY":GRIDKEY
   					,"RCMS_GRP_CD":rcmsGrp
   					,"INST_NM":usrComboArr[5]
   					,"INST_ID":usrComboArr[4]
   					,"HM_RCMS_GRP_CD":rcmsGrpTxt
   					,"RES_REG_NO":"80-01-01"
   					,"HMPW_ROLE_DV":usrComboArr[2]
    	    };
    	}else{// ����
    		
    		var _SESS_DATA = dataCtrl.getObjData("T41_03_00");
    		if(_SESS_DATA != null){
    			sessGridData = JSON.parse(_SESS_DATA);
    			
    			for(var i=0;i<sessGridData.length;i++){
    				if(sessGridData[i].USR_ID == UsrId){
    					//RcmsGrpCd ���ѱ���
    			        var GRIDKEY = "";
   			            GRIDKEY += "PmsId=" + PmsId;
   			            GRIDKEY += "&BzClasCd=" + BzClasCd;
   			            GRIDKEY += "&SbjtId=" + SbjtId;
   			            GRIDKEY += "&UsrId=" + UsrId;
   			            GRIDKEY += "&InstId=" + InstId;
   			            GRIDKEY += "&InstNm=" + InstNm;
   			            GRIDKEY += "&UsrNm=" + UsrNm;
   			            GRIDKEY += "&HmpwRoleDv=" + HmpwRoleDv;
   			            GRIDKEY += "&RcmsGrpCd=" + rcmsGrp;
   			            GRIDKEY += "&UseYn=" + useYn;
   			            sessGridData[i] = {
   			                    "USR_NM":UsrNm
   			                    ,"USR_ID":UsrId
   			                    ,"HM_HMPW_ROLE_DV":"<%=CodeUtil.getCode("RND115",HmpwRoleDv) %>"
   			                    ,"USE_YN":useYnTxt
   			                    ,"GRIDKEY":GRIDKEY
   			                    ,"RCMS_GRP_CD":rcmsGrp
   			                    ,"INST_NM":InstNm
   			                    ,"INST_ID":InstId
   			                    ,"HM_RCMS_GRP_CD":rcmsGrpTxt
   			                    ,"RES_REG_NO":"80-01-01"
   			                    ,"HMPW_ROLE_DV":HmpwRoleDv
   			            };
    				}//if
    			}//for
    		}// if
    		
    	}
    	
    	dataCtrl.setObjData("T41_03_00", JSON.stringify(sessGridData));
    	
    		 
    }
    
    function uf_reSet(){
        if("U".equals(Dv)){     //���������ڵ�(����)
        	document.getElementById('inUserNm').innerHTML = UsrNm+" [ "+UsrId+" ]";
        }else{                  //���������ڵ�(���)
            //1
        	if("1" == schParam){
            }else if("2" == schParam){
            }else if("3" == schParam){
            }else if("4" == schParam){
            }
            	
            document.getElementById("inUserNm").innerHTML ='<select name="UsrCombo" id="UsrCombo"  onchange=uf_chgHmpw(this); ><option value="">����</option><option value="KIMSG|�輭��|00|�Ϲݻ����|00011645|��RCMS" >�輭�� [KANGMN]</option><option value="KGUNMU|���ѹ�|00|�Ϲݻ����|00011645|��RCMS" >���ѹ� [KGUNMU]</option><option value="TOTALEE|��ȸ��|00|�Ϲݻ����|00011645|��RCMS" >��ȸ�� [TOTALEE]</option></select>';
                    
            document.getElementById("inUserNm").innerHTML += '&nbsp;<a href="#dummy"  onclick="uf_Mbr();"><img style="height: 16px" src="/bt/bt_search4.gif" alt="�˻�" /></a>';
        }
    }
    
    /******************************************************************
     * uf_chgHmpw       ������޺��ڽ� onchage
     * @param       
     * @return
    ******************************************************************/
    function uf_chgHmpw(obj){
        var frm = document.frm;
        var sel_id,sel_nm,sel_rolecd,sel_rolenm,sel_instID,sel_InstNm;
    
        sel_id              =   obj.value.split("|")[0];            //�����ID
        sel_nm              =   obj.value.split("|")[1];            //����ڸ�
        sel_rolecd          =   obj.value.split("|")[2];            //�η¿��ұ���
        sel_rolenm          =   obj.value.split("|")[3];            //�η¿��ұ��и�
        sel_instID          =   obj.value.split("|")[4];            //���ID
        sel_InstNm          =   obj.value.split("|")[5];            //�����
    
        if(typeof sel_rolenm == "undefined"){
            sel_rolenm = "";
        }
        
        document.getElementById("RoleDvSpan").innerHTML     = sel_rolenm;
        frm.UsrId.value         =   sel_id;         
        frm.UsrNm.value         =   sel_nm;
        frm.InstId.value        =   sel_instID; 
        frm.InstNm.value        =   sel_InstNm;
        frm.HmpwRoleDv.value    =   sel_rolecd; 
    

            if(sel_rolecd == "00")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR050' >�Ϲݻ����</option><option value='MR042' >�Ϲݻ����(���Ŵ����)</option><option value='MR043' >�Ϲݻ����(��ü�����)</option></select>";          

            if(sel_rolecd == "01")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR030' >�����ǥ��</option></select>";          

            if(sel_rolecd == "02")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR010' >����å����</option></select>";          

            if(sel_rolecd == "03")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          

            if(sel_rolecd == "04")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option><option value='MR020' >����������</option><option value='MR023' >����������(��ü�����)</option></select>";          

            if(sel_rolecd == "05")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          

            if(sel_rolecd == "06")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          

            if(sel_rolecd == "07")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>����</option></select>";          

    }

</script>

</body>
</html> 