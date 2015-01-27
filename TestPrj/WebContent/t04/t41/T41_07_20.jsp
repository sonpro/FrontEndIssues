<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T41_07_20.jsp
 *   Description        : ���������û �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================================
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
    String Dv           = SessionUtil.getRequestValue(request, "Dv");                               // ��ϼ�������
    String CrdNo        = SessionUtil.getRequestValue(request, "CARD_NO").replaceAll("-","");       // ī���ȣ
    String CrdNo2       = SessionUtil.getRequestValue(request, "CARD_NO2");       // ī���ȣ
    String ValdTrm      = SessionUtil.getRequestValue(request, "VALD_TRM");                         // ��ȿ�Ⱓ
    String CrdcoCd      = SessionUtil.getRequestValue(request, "CARD_CO_NO");                       // ī����ڵ�
    String CrdcoNm      = SessionUtil.getRequestValue(request, "CARD_CO_NM");                       // ī����
    String SetlBnkCd    = SessionUtil.getRequestValue(request, "SET_BNK_CD");                       // ���������ڵ�
    String SetlBnkNm    = SessionUtil.getRequestValue(request, "SET_BNK_NM");                       // ���������
    String SetlAcctNo   = SessionUtil.getRequestValue(request, "SETL_ACC_NO").replaceAll("-","");   // �������¹�ȣ
    String SetlAcctNo2  = SessionUtil.getRequestValue(request, "SETL_ACC_NO2");   // �������¹�ȣ
    String CrdDv        = SessionUtil.getRequestValue(request, "CARD_DV");                          // ī�屸��
    String CrdDvNm      = SessionUtil.getRequestValue(request, "CARD_DV_NM");                          // ī�屸��
    String SetlDd       = SessionUtil.getRequestValue(request, "SETL_DD");                          // ������
    
    String rowIndex       = SessionUtil.getRequestValue(request, "rowIndex");                          // ������ row
    String argmtSeqNo       = SessionUtil.getRequestValue(request, "argmtSeqNo");                          // ������ row
    
%>


<title>������ī�� ������� ��û &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">������ī�� ������� ��û</p>
        </div>
        <!-- //head title// --> 
    </div>

<script type="text/javascript">

    function uf_search(){
        opener.uf_AutoSearch('S');
    }

    //////////////////////////////////
    //��� ó��
    //////////////////////////////////
    function uf_update(){
        var frm = document.frm;
        if( isSubmit() ) return;    // ����ó��

        if(!confirm("��������Ͻðڽ��ϱ�?")){return;}            

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
                    	//���� ������ 20140307
                    	<%-- 
                    	if("G00000000000001" == "<%=argmtSeqNo%>"){
	                    	delSessData("<%=rowIndex%>");  //T41_07_00 ���� ������ ����
	                    	udpSessData("<%=CrdcoCd%>","<%=CrdNo2%>"); //T41_07_10 ���� ������ ó��
                    	}
                    	 --%>
                        reset_submit();
                        alert("����Ǿ����ϴ�.");
                        opener.uf_search();
                        window.close();
                        }, 1000);   // 1���� ���� 1000 = 1��s
        }
    }
    
    
    //����ó��
    function delSessData(rowIndex){
    	
    	var rowIdx = Number(rowIndex);
    	var _SESS_DATA = dataCtrl.getObjData("T41_07_00");
        var gridValue = [];
        var cnt = 0;
        if(_SESS_DATA != null){
        	
            var sessGridData = JSON.parse(_SESS_DATA);
            var cnt2 = sessGridData.length;
            for(var i=0;i<cnt2;i++){
            	if(i == rowIdx) continue;
                gridValue[cnt++] = sessGridData[i];
            }//for
        }
        
        dataCtrl.setObjData("T41_07_00", JSON.stringify(gridValue));
    }
    
    //����ó��
    function udpSessData(CrdcoCd, crdNo){
        var sessionNm = "T41_07_10" + "_" + CrdcoCd;
        var _SESS_DATA = dataCtrl.getObjData(sessionNm);
        var gridValue = [];
        var cnt = 0;
        var cnt2 = 0;   //������� ī�� �� T41_06_00
        
        if(_SESS_DATA != null){
            var sessGridData = JSON.parse(_SESS_DATA);
            var cnt = sessGridData.length;
            
            for(var i=0;i<cnt;i++){
            	
                if(crdNo == sessGridData[i].CRD_NO){
                	sessGridData[i].CRDCO_REG_PROC_ST = "5";
                	sessGridData[i].CRDCO_REG_PROC_ST_NM = "�����Ϸ�";
                }
                gridValue[i] = sessGridData[i];
                
                if(sessGridData[i].CRDCO_REG_PROC_ST == "3") cnt2++;   //������� ī�� �� T41_06_00
                
            }//for
        }
        dataCtrl.setObjData(sessionNm, JSON.stringify(gridValue));
        
        
        //������ī�� ���� ������Ʈ  T41_06_00
        var _SESS_DATA_41_06_00 = dataCtrl.getObjData("T41_06_00");
        if(_SESS_DATA_41_06_00 != null){
            var sessGridData_41_06_00 = JSON.parse(_SESS_DATA_41_06_00);
            var cnt_41_06_00 = sessGridData_41_06_00.length;
            
            for(var i=0;i<cnt_41_06_00;i++){
                //ī�尡 ��ϿϷ� (CRDCO_REG_PROC_ST == "3") �̸� �ش�ī���� �������
                if(sessGridData_41_06_00[i].CRDCO_REG_PROC_ST == "3" && CrdcoCd == sessGridData_41_06_00[i].FNC_INST_CD){
                    sessGridData_41_06_00[i].REG_CRD_CNT = String(cnt2);    //�� T41_07_10 ���� ������� ī�� �� ���
                }
            }
            
            dataCtrl.setObjData("T41_06_00", JSON.stringify(sessGridData_41_06_00));
            
        }
        
        
    }
    
    
</script>


        <div id="body"> 
            <form name="frm" method="post">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>����ī������</h3>
                <!-- ����ī������ start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����ī������" class="tbl_type02">
                    <caption>����ī������</caption>
                    <colgroup>
                        <col width="30%" />
                        <col width="70%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">ī���ȣ</th>
                        <td colspan="3" class="ll"><%=CrdNo2 %></td>
                    </tr>
                    <tr>
                        <th scope="row">ī���</th>
                        <td colspan="3" class="ll"><%=CrdcoNm %></td>
                    </tr>
                    <tr>
                        <th scope="row">��ȿ�Ⱓ</th>
                        <td colspan="3" class="ll"><%=ValdTrm %></td>
                    </tr>
                    <tr>
                        <th scope="row">��������</th>
                        <td colspan="3" class="ll"><%=SetlBnkNm %></td>
                    </tr>
                    <tr>
                        <th scope="row">�������¹�ȣ</th>
                        <td colspan="3" class="ll"><%=SetlAcctNo2 %></td>
                    </tr>
                    <tr>
                        <th scope="row">ī�屸��</th>
                        <td colspan="3" class="ll"><%=CrdDvNm %></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //����ī������ end// -->
                <!-- action bt start -->
                <div class="pop_action_bt">
                    <a href="#dummy" onclick="uf_update(); return false;" class="bt_action4-01" title="�������"><span class="bt_sp">�������</span></a>
                </div>
                <!-- //action bt end// --> 
            </div>
            <!-- //content end// -->
            </form>
        </div>
        
<%@ include file="/inc/jspFooter_popup.jsp" %> 


</body>
</html> 