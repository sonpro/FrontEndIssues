<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_07_00.jsp
 *   Description        : ��üȮ���� �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ================================================================================
 *   2014.01.21                     ������             �����ۼ�
 * 
 *  @author 
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
<%@ page import="jex.json.JSONArray" %>
<%@ page import="jex.json.JSONObject" %>
<!-- //head end -->

<%
    String RchExpAcctBnkCd      = "A ����";               // ��������������ڵ�         
    String RchExpAcctNo         = "100-00-000000";               // ��������¹�ȣ

    String BzexId               = SessionUtil.getRequestValue(request,"BzexId");                // ������
    String SbjtNm               = SessionUtil.getRequestValue(request,"SbjtNm");                // ������
    String ExctnSt              = SessionUtil.getRequestValue(request,"ExctnSt");               // ���ó������
    String RcvAcctNo            = SessionUtil.getRequestValue(request,"RcvAcctNo");             // �Աݰ��¹�ȣ
    String RcvBnkCd             = SessionUtil.getRequestValue(request,"RcvBnkCd");              // �Ա������ڵ�               
    String ExctnExecDt          = SessionUtil.getRequestValue(request,"ExctnExecDt");           // ����������               
    String ExctnExecTm          = SessionUtil.getRequestValue(request,"ExctnExecTm");           // ������ð�               
    String WdrwPsbkPrtCtt       = SessionUtil.getRequestValue(request,"RchExpAcctWdrwCtt");     // ������ǥ�ó���
    String OwacNm               = SessionUtil.getRequestValue(request,"OwacNm");                // ������
    String TrnsAmt              = SessionUtil.getRequestValue(request,"TrnsAmt");               // ��ü�ݾ�
    String RcvPsbkPrtCtt        = SessionUtil.getRequestValue(request,"RcvAcctRcvCtt");         // �����������μ⳻��
    
    String strTrns = "";
                
%>

<title>��üȮ���� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">��üȮ����</p>
        </div>
        <!-- //head title// --> 
    </div>



<script type="text/javascript">
/******************************************************************
 * uf_print         ��ü���Ȯ���� ���
 * @param
 * @return
******************************************************************/
function uf_print(){
    window.onbeforeprint = beforePrintDivs;
    window.onafterprint = afterPrintDivs;
    window.print();
}
/******************************************************************
 * beforePrintDivs          �μ�����������������-�μ⿵����ȭ�����
 * @param
 * @return
******************************************************************/
function beforePrintDivs(){
    document.getElementById("non_print1").style.display = "none"; 
    document.getElementById("head").style.display = "inline";
    document.getElementById("foot").style.display = "none";
    $('iframe').hide();
}
/******************************************************************
 * afterPrintDivs           �μ��Ŀ���������ǥ��
 * @param
 * @return
******************************************************************/
function afterPrintDivs(){
    document.getElementById("non_print1").style.display = "block";
    document.getElementById("head").style.display = "inline";
    document.getElementById("foot").style.display = "block";
}
</script>



        <div id="body" style="margin:-48px 0 -25px;"> 
            <!-- content start -->
            <div id="content">
                <div align="right">
                    <img src="/pop/ysj_img_add01.gif">
                </div>  
                <!-- ��üȮ���� start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="��üȮ����" class="tbl_type02">
                    <caption>��üȮ����</caption>
                    <colgroup>
                        <col width="25%" />
                        <col width="75%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">ó���Ͻ�</th>
                        <td colspan="2" class="ll"><%=FormatUtil.setDelim(ExctnExecDt,"9999-99-99")+" "+FormatUtil.setDelim(ExctnExecTm,"99:99:99") %></td>
                    </tr>
                    <tr>
                        <th scope="row">��ü���</th>
                        <td colspan="2" class="ll"><%=CodeUtil.getCode("RNDB04_2", ExctnSt) %></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //��üȮ���� end// -->
                <h3>���/�Աݳ���</h3>
                <!-- ����Աݳ��� start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���/�Աݳ���" class="tbl_type02">
                    <caption>���/�Աݳ���</caption>
                    <colgroup>
                        <col width="25%" />
                        <col width="75%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">������</th>
                        <td colspan="2" class="ll"><%=SbjtNm %></td>
                    </tr>
                    <tr>
                        <th scope="row">�������</th>
                        <td colspan="2" class="ll"><%=RchExpAcctBnkCd %></td>
                    </tr>
                    <tr>
                        <th scope="row">��ݰ��¹�ȣ</th>
                        <td colspan="2" class="ll"><%=RchExpAcctNo %></td>
                    </tr>
                    <tr>
                        <th scope="row">������ǥ�ó���</th>
                        <td colspan="2" class="ll"><%=WdrwPsbkPrtCtt %></td>
                    </tr>
                    <tr>
                        <th scope="row">�Աݰ��¹�ȣ</th>
                        <td colspan="2" class="ll"><%=AcctFormatUtil.getAcctForm( RcvAcctNo,RcvBnkCd,"01") %></td>
                    </tr>
                    <tr>
                        <th scope="row">�Ա�����</th>
                        <td colspan="2" class="ll"><%=CodeUtil.getCode("BNK_CD",RcvBnkCd) %></td>
                    </tr>
                    <tr>
                        <th scope="row">������</th>
                        <td colspan="2" class="ll"><%=OwacNm %></td>
                    </tr>
                    <tr>
                        <th scope="row">��ü�ݾ�</th>
                        <td colspan="2" class="ll"><%=FormatUtil.getMoneyForm(TrnsAmt) %> <%=strTrns %></td>
                    </tr>
                    <tr>
                        <th scope="row">����������ǥ�ó���</th>
                        <td colspan="2" class="ll"><%=RcvPsbkPrtCtt %></td>
                    </tr>
                    </tbody>
                    </table>
                    <div class="t10">
                        <p class="guide_bu t10">���� ������ ���������� ó���Ǿ����� Ȯ���մϴ�.</p>
                        <p class="guide_bu t10">��üȮ������ �� ���Ǹ� ���Ͽ� �����Ǵ°����� �ŷ��� ��������θ� ���� �� �ֽ��ϴ�.</p>
                    </div>      
                </div>
                <div class="t10 ar" id="non_print1">
                    <a href="#" onclick="uf_print();"><img src="/bt/bt_print.gif" alt="�μ�"/></a>
                </div>      
                <!-- //����Աݳ��� end// --> 
            </div>
            <!-- //content end// -->
        </div>



<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 

