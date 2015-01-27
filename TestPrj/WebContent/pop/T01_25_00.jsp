<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_25_00.jsp
 *   Description        : �ΰ���ġ���ݾ� ���� �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.30                     ������             
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
    String frmNm    = SessionUtil.getRequestValue(request, "pfrmNm");
    String Amt      = SessionUtil.getRequestValue(request, "pAmt");
    String Splamt   = SessionUtil.getRequestValue(request, "pSplamt");
    String Vat      = SessionUtil.getRequestValue(request, "pVat");
    String SrvFee   = StringUtil.null2void(SessionUtil.getRequestValue(request, "pSrvFee"),"0");
    String ObjNm    = SessionUtil.getRequestValue(request, "pObjNm");
    String RIdx     = SessionUtil.getRequestValue(request, "pRIdx");
    String dv       = StringUtil.null2void(SessionUtil.getRequestValue(request, "pDv"), "R");
    
    
    
%>


<title>ī���� �ΰ��� ���� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">ī���� �ΰ��� ����</p>
        </div>
        <!-- //head title// --> 
    </div>


        <div id="body">
            <form name="frm" method="post">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <!-- ���ݾ� ����Ʈ start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ݾ� ����Ʈ" class="tbl_type02">
                    <caption>���ݾ� ����Ʈ</caption>
                    <colgroup>
                        <col width="40%" />
                        <col width="60%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row"><% if ("R".equals(dv)) { %>���ݾ�<%} else {%>��ұݾ�<%} %></th>
                        <td class="ll"><%=FormatUtil.getMoneyForm(Amt)%></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //���ݾ� ����Ʈ end// -->
                <%
                    if ("R".equals(dv)) {
                %>
                <!-- �����ݱݾ� ����Ʈ start -->
                <div class="b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�����ݱݾ� ����Ʈ" class="tbl_type02">
                    <caption>�����ݱݾ� ����Ʈ</caption>
                    <colgroup>
                        <col width="40%" />
                        <col width="60%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">�����ݱݾ�</th>
                        <td class="ll"><%=FormatUtil.getMoneyForm(Splamt)%></td>
                    </tr>
                    <tr>
                        <th scope="row">���ΰ���ġ����</th>
                        <td class="ll"><%=FormatUtil.getMoneyForm(Vat)%></td>
                    </tr>
                    <tr>
                        <th scope="row">�������</th>
                        <td class="ll"><%=FormatUtil.getMoneyForm(SrvFee)%></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //�����ݱݾ� ����Ʈ end// -->
                <%
                    }
                %>
                <!-- �������ޱݾ� ����Ʈ start -->
                <div class="b10 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�������ޱݾ� ����Ʈ" class="tbl_type02">
                    <caption>�������ޱݾ� ����Ʈ</caption>
                    <colgroup>
                        <col width="40%" />
                        <col width="60%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row"><label for="Splamt"><% if ("R".equals(dv)) { %>�������ޱݾ�<% } else { %>������Ұ��ޱݾ�<% } %></label></th>
                        <td class="ll"><input type="text" name="Splamt" id="Splamt" class="inputr" style="width:120px;" datatype="currency" format="currency" maxlength="15" readonly /></td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="Vat"><% if ("R".equals(dv)) { %>�����ΰ���ġ����<% } else { %>������Һΰ���ġ����<% } %></label></th>
                        <td class="ll"><input type="text" name="Vat" id="Vat" class="inputr" style="width:120px;" datatype="currency" format="currency" maxlength="15" notnull value="" onKeyUp="proCal();"/></td>
                    </tr>
                <%
                    if ("R".equals(dv)) {
                %>
                    
                    <tr>
                        <th scope="row"><label for="SrvFee">�����</label></th>
                        <td class="ll"><input type="text" name="SrvFee" id="SrvFee" class="inputr" style="width:120px;" datatype="currency" format="currency" maxlength="15"  readonly value="<%=FormatUtil.getMoneyForm(SrvFee)%>"/></td>
                    </tr>
                <% 
                    } else {
                %>
                    <input type="hidden" name="SrvFee" id="SrvFee" value="0" />
                <%                      
                    }
                %>
                    </tbody>
                    </table>
                </div>
                <!-- //�������ޱݾ� ����Ʈ end// -->
                <div class="b20">
                    <input type="radio" name="VatYn" id="radio01" value="Y" class="radio1" checked onclick="uf_CalAmt(this.value);"/> <label for="radio01">�ΰ��� "10%" </label>  
                    <span class="l20"></span>
                    <input type="radio" name="VatYn" id="radio02" value="N" class="radio1" onclick="uf_CalAmt(this.value);"/> <label for="radio02">�ΰ��� "0" </label>
                </div>
                <!-- ���̵� start -->
                <div class="pop_line_gbox">
                    <div class="pop_line_gboxc">
                        <ul>
                            <li>�ΰ����ݾ��� �Է��Ͻø� ���ޱݾ��� ����˴ϴ�.</li>
                <%
                    if ("R".equals(dv)) {
                %>
                            
                            <li>���� ��ư�� �����ø� ����� �ݾ��� ���ޱݾ׿� ���Ե˴ϴ�.</li>
                <%
                    }
                %>                            
                        </ul>
                    </div>
                </div>
                <!-- //���̵� end// -->
                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-1" title="����" onclick="uf_insert(); return false;"><span class="bt_sp">����</span></a>
                </div>
                <!-- //action bt end// --> 
            </div>
            <!-- //content end// -->
            </form>
        </div>

<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %> 





<script type="text/javascript">

    /*
     * �ΰ���ġ���� �Է½� ���ޱݾ� ���
     */
    function uf_CalAmt(rdobj){
        var obj = document.xgrid;
        var frm = document.frm;
    
        if("Y" == rdobj){
            splvat  =   Math.round( (Number('<%=Amt%>')-Number('<%=SrvFee%>') )/ 1.1);
            frm.Splamt.value    =   putComma(splvat);       
            frm.Vat.value       =   putComma( (Number('<%=Amt%>')-Number('<%=SrvFee%>')) - splvat);
        }else{
            frm.Splamt.value    =   putComma(Number('<%=Amt%>')-Number('<%=SrvFee%>'));
            frm.Vat.value       =   "0";
        }
    }
    
    function proCal(){
        var frm = document.frm;
    
        splamt = (Math.round(Number('<%=Amt%>')-Number('<%=SrvFee%>'))  -   Number(frm.Vat.value));
        if(splamt < 0 || splamt <= Number(frm.Vat.value)){
            alert("���ް����� �߸��Ǿ����ϴ�.\n�ΰ���ġ������ �ٽ� �Է��Ͽ� �ּ���.");
            uf_CalAmt("Y");
            return;
        }else
            frm.Splamt.value = putComma(splamt);
        
    }
    
    function uf_insert(){
        var frm = document.frm;
        //������ �ʵ忡 �� ����
        <%if ("R".equals(dv)) {%>
	        opener.changeItem(<%=RIdx%>, "ORGNL_SPLY_AMT", (Number(removeComma(frm.Splamt))+Number(removeComma(frm.SrvFee))));
	        opener.changeItem(<%=RIdx%>, "ORGNL_ADTN_TAX", removeComma(frm.Vat));
        <%}else{%>  
        	opener.changeItem(<%=RIdx%>, "UPD_CAN_SPLY_AMT", (Number(removeComma(frm.Splamt))+Number(removeComma(frm.SrvFee))));
        	opener.changeItem(<%=RIdx%>, "UPD_CAN_VAT_AMT", removeComma(frm.Vat));        	
        <%}%>
        
    <%-- 
        opener.document.<%=ObjNm%>.SetValue(<%=RIdx%>,  opener.document.<%=ObjNm%>.GetItemIndexFromCaption("����<%if (!"R".equals(dv)) {%>���<%}%>���ް���")    ,(Number(removeComma(frm.Splamt))+Number(removeComma(frm.SrvFee)))+"");
        opener.document.<%=ObjNm%>.SetValue(<%=RIdx%>,  opener.document.<%=ObjNm%>.GetItemIndexFromCaption("����<%if (!"R".equals(dv)) {%>���<%}%>�ΰ���ġ����")  ,frm.Vat.value);
     --%>    
        window.close();
    }
    
    $(document).ready( function () {
        uf_CalAmt("Y"); 
    });

</script>

</body>
</html> 
