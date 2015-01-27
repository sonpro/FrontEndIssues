<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_01_00.jsp
 *   Description        : ������¹߱����� �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================================
 *   2013.12.23                     ������                 
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
<%@ page import="jex.json.JSONArray" %>
<%@ page import="jex.json.JSONObject" %>
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->

<%

String AgrmtSeqNo                   = StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));            // �����Ϸù�ȣ                  
String AgrmtInstId                  = StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstId"));           // ������ID
String RegDt                        = SessionUtil.getRequestValue(request,"RegDt");                       // ��û����
String RegDrtm                      = SessionUtil.getRequestValue(request,"RegDrtm");                     // ��û�ð�
String IssuAcctNo                   = SessionUtil.getRequestValue(request,"IssuAcctNo");                  // �߱ް��¹�ȣ
String IssuBnkCd                    = SessionUtil.getRequestValue(request,"IssuBnkCd");                   // �߱������ڵ�
String AvblDate                     = SessionUtil.getRequestValue(request,"AvblDate");                    // ��ȿ�Ⱓ
String RcvAmt                       = SessionUtil.getRequestValue(request,"RcvAmt");                      // �Աݱݾ�
String InqDv                        = SessionUtil.getRequestValue(request,"InqDv");                       // ��û����
String Dv                           = SessionUtil.getRequestValue(request,"Dv");                          // ��û�����ڵ�

String BzNm = "";
String SbjtNm = "";

JSONObject resultData = new JSONObject();
JSONObject accountData = new JSONObject();

//1. �ű԰���
if("G00000000000001".equals(AgrmtSeqNo)){
	BzNm = "RCMS �ǽ�";
	SbjtNm = "RCMS �ǽ��� �ű԰���";
	
	resultData.put("SbjtId"             , "TEST0002"                        );  //������ȣ
	resultData.put("CpcgInstNm"         , "�ѱ��������򰡰�����"          );  //������
	resultData.put("MainInstNm"         , "��RCMS"                          );  //�ְ����
	resultData.put("PrsSbjtStg"         , "0"                               );  //�ܰ�
	resultData.put("Annl"               , "1"                               );  //����
	resultData.put("AgrmtInstNm"        , "��RCMS"                          );  //�����
	resultData.put("AgrmtInstBzRegNo"   , "111-11-11111"                    );  //����ڵ�Ϲ�ȣ
	resultData.put("AgrmtInstRoleDv"    , "�ְ����"                        );  //��������
	resultData.put("DevStrDt"           , "2014.01.01~2099.01.31(99����)"   );  //���ذ��߱Ⱓ
	resultData.put("InstTotlInstAmt"    , "130,000"                         );  //�����ѻ����
	resultData.put("ExctnLimtSt"        , "����"                            );  //��밡�ɻ���


	accountData.put("IssuBnkCd"      , "A ����"       );  //�Ա�����
	accountData.put("IssuAcctNo"     , "100-00-000000"       );  //�Աݰ��¹�ȣ
	accountData.put("RcvAmt"         , RcvAmt       );  //�Աݱݾ�
	accountData.put("AgrmtInstNm"    , "��RCMS"       );  //�����ָ�
	accountData.put("AvblDate"       , AvblDate       );  //�Աݱ���
	accountData.put("InqDv"          , InqDv       );  //�߱޻���
  
//2. �������
}else if("G00000000000002".equals(AgrmtSeqNo)){
	BzNm = "RCMS �ǽ�";
    SbjtNm = "RCMS �ǽ��� �������";
    
    resultData.put("SbjtId"             , "TEST0002"                        );  //������ȣ
    resultData.put("CpcgInstNm"         , "�ѱ��������򰡰�����"          );  //������
    resultData.put("MainInstNm"         , "��RCMS"                          );  //�ְ����
    resultData.put("PrsSbjtStg"         , "0"                               );  //�ܰ�
    resultData.put("Annl"               , "1"                               );  //����
    resultData.put("AgrmtInstNm"        , "��RCMS"                          );  //�����
    resultData.put("AgrmtInstBzRegNo"   , "111-11-11111"                    );  //����ڵ�Ϲ�ȣ
    resultData.put("AgrmtInstRoleDv"    , "�ְ����"                        );  //��������
    resultData.put("DevStrDt"           , "2014.01.01~2099.01.31(99����)"   );  //���ذ��߱Ⱓ
    resultData.put("InstTotlInstAmt"    , "130,000"                         );  //�����ѻ����
    resultData.put("ExctnLimtSt"        , "����"                            );  //��밡�ɻ���


    accountData.put("IssuBnkCd"      , "A ����"       );  //�Ա�����
    accountData.put("IssuAcctNo"     , "100-00-000000"       );  //�Աݰ��¹�ȣ
    accountData.put("RcvAmt"         , RcvAmt       );  //�Աݱݾ�
    accountData.put("AgrmtInstNm"    , "��RCMS"       );  //�����ָ�
    accountData.put("AvblDate"       , AvblDate       );  //�Աݱ���
    accountData.put("InqDv"          , InqDv       );  //�߱޻���
  
//3. �������(���� ������)
}else if("G00000000000003".equals(AgrmtSeqNo)){
	BzNm = "RCMS �ǽ�";
    SbjtNm = "RCMS �ǽ��� �������";
    
    resultData.put("SbjtId"             , "TEST0003"                        );  //������ȣ
    resultData.put("CpcgInstNm"         , "�ѱ��������򰡰�����"          );  //������
    resultData.put("MainInstNm"         , "��RCMS"                          );  //�ְ����
    resultData.put("PrsSbjtStg"         , "0"                               );  //�ܰ�
    resultData.put("Annl"               , "1"                               );  //����
    resultData.put("AgrmtInstNm"        , "��RCMS"                          );  //�����
    resultData.put("AgrmtInstBzRegNo"   , "111-11-11111"                    );  //����ڵ�Ϲ�ȣ
    resultData.put("AgrmtInstRoleDv"    , "�ְ����"                        );  //��������
    resultData.put("DevStrDt"           , "2013.03.01~2014.02.28(12����)"   );  //���ذ��߱Ⱓ
    resultData.put("InstTotlInstAmt"    , "130,000"                         );  //�����ѻ����
    resultData.put("ExctnLimtSt"        , "����"                            );  //��밡�ɻ���


    accountData.put("IssuBnkCd"      , "A ����"       );  //�Ա�����
    accountData.put("IssuAcctNo"     , "100-00-000000"       );  //�Աݰ��¹�ȣ
    accountData.put("RcvAmt"         , RcvAmt       );  //�Աݱݾ�
    accountData.put("AgrmtInstNm"    , "��RCMS"       );  //�����ָ�
    accountData.put("AvblDate"       , AvblDate       );  //�Աݱ���
    accountData.put("InqDv"          , InqDv       );  //�߱޻���
  
//4. �������(���� ���� �Ϸ�)
}else if("G00000000000004".equals(AgrmtSeqNo)){
	BzNm = "RCMS �ǽ�";
    SbjtNm = "RCMS �ǽ��� �������";
    
    resultData.put("SbjtId"             , "TEST0004"                        );  //������ȣ
    resultData.put("CpcgInstNm"         , "�ѱ��������򰡰�����"          );  //������
    resultData.put("MainInstNm"         , "��RCMS"                          );  //�ְ����
    resultData.put("PrsSbjtStg"         , "0"                               );  //�ܰ�
    resultData.put("Annl"               , "1"                               );  //����
    resultData.put("AgrmtInstNm"        , "��RCMS"                          );  //�����
    resultData.put("AgrmtInstBzRegNo"   , "111-11-11111"                    );  //����ڵ�Ϲ�ȣ
    resultData.put("AgrmtInstRoleDv"    , "�ְ����"                        );  //��������
    resultData.put("DevStrDt"           , "2013.02.01~2014.01.31(12����)"   );  //���ذ��߱Ⱓ
    resultData.put("InstTotlInstAmt"    , "130,000"                         );  //�����ѻ����
    resultData.put("ExctnLimtSt"        , "����"                            );  //��밡�ɻ���


    accountData.put("IssuBnkCd"      , "A ����"       );  //�Ա�����
    accountData.put("IssuAcctNo"     , "100-00-000000"       );  //�Աݰ��¹�ȣ
    accountData.put("RcvAmt"         , RcvAmt       );  //�Աݱݾ�
    accountData.put("AgrmtInstNm"    , "��RCMS"       );  //�����ָ�
    accountData.put("AvblDate"       , AvblDate       );  //�Աݱ���
    accountData.put("InqDv"          , InqDv       );  //�߱޻���
  
}


String date = DateUtil.getDate("YYYYMMDD");
String year = date.substring(0, 4);
String month = date.substring(4, 6);
String day = date.substring(6);


%>

<title>������� �߱� ���� &gt; RCMS �ǽð����տ���������ý��� C-1 </title>
</head>
<body>

	<div id="head"> 
	    <!-- head title -->
	    <div class="title">
	        <p class="pop_title">������� �߱� ����</p>
	    </div>
	    <!-- //head title// --> 
	</div>

        <div id="body">
            <!-- content start -->
            <div id="content">
                <div class="docu_title"><img src="/pop/docu_t1.gif" alt="RCMS ������� �߱� ����"/></div>
                <h3>�߱ް�������</h3>
                <!-- �����/������ ����Ʈ start -->
                <div class="t10 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�����/������ ����Ʈ" class="tbl_type02">
                    <caption>�����/������ ����Ʈ</caption>
					<colgroup>
						<col width="20%" />
						<col width="*" />
					</colgroup>
					<tbody>
					<tr>
						<th scope="row">�����</th>
						<td colspan="3" class="ll"><nobr style="text-overflow:ellipsis;overflow:hidden;"><%=BzNm %></nobr></td>
					</tr>
					<tr>
						<th scope="row">������</th>
						<td colspan="3" class="ll"><nobr style="text-overflow:ellipsis;overflow:hidden;"><%=SbjtNm %></nobr></td>
					</tr>
					</tbody>
					</table>
                </div>
                <!-- //�����/������ ����Ʈ end// -->
                <!-- �߱ް������� ����Ʈ start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�߱ް�������" class="tbl_type03">
                    <caption>�߱ް�������</caption>
					<colgroup>
						<col width="8%"/>
						<col width="11%" span="2"/>
						<col width="20%"/>
						<col width="10%"/>
						<col width="10%"/>
					</colgroup>
                    <thead>
					<tr>
						<th scope="col">������ȣ</th>
						<th scope="col" colspan="2">������</th>
						<th scope="col">�ְ����</th>
						<th scope="col">�ܰ�</th>
						<th scope="col">����</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="ac"><%=resultData.get("SbjtId") %></td>
						<td colspan="2"><%=resultData.get("CpcgInstNm") %></td>
						<td class="ac"><%=resultData.get("MainInstNm") %></td>
						<td class="ar"><%=resultData.get("PrsSbjtStg") %></td>
						<td class="ar"><%=resultData.get("Annl") %></td>
					</tr>
					<tr>
						<th scope="col">�����</th>
						<th scope="col">����ڵ�Ϲ�ȣ</th>
						<th scope="col">��������</th>
						<th scope="col">���ذ��߱Ⱓ</th>
						<th scope="col">�����ѻ����</th>
						<th scope="col">��밡�ɻ���</th>
					</tr>
					<tr>
						<td class="ac"><%=resultData.get("AgrmtInstNm") %></td>
						<td><%=resultData.get("AgrmtInstBzRegNo") %></td>
						<td class="ac"><%=resultData.get("AgrmtInstRoleDv") %></td>
						<td class="ac"><%=resultData.get("DevStrDt") %></td>
						<td class="ac"><%=resultData.get("InstTotlInstAmt") %></td>
						<td class="ac"><%=resultData.get("ExctnLimtSt") %></td>
					</tr>
					</tbody>
					</table>
                </div>
                <!-- //�߱ް������� ����Ʈ end// -->
                <h3>������� ����</h3>
                <!-- ����������� ����Ʈ start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="������� ���� ����Ʈ" class="tbl_type03">
                    <caption>������� ����</caption>
					<colgroup>
						<col width="10%"/>
						<col width="15%"/>
						<col width="15%"/>
						<col width="25%"/>
						<col width="20%"/>
						<col width="15%"/>
					</colgroup>
					<thead>
					<tr>
						<th scope="col">�Ա�����</th>
						<th scope="col">�Աݰ��¹�ȣ</th>
						<th scope="col">�Աݱݾ�</th>
						<th scope="col">�����ָ�</th>
						<th scope="col">�Աݱ���</th>
						<th scope="col">�߱޻���</th>
					</tr>
					</thead>
					<tbody>
					<tr>
                        <td class="ac"><%=accountData.get("IssuBnkCd") %></td>
                        <td class="ac"><%=accountData.get("IssuAcctNo") %></td>
                        <td class="ar"><%=FormatUtil.getMoneyForm(accountData.getString("RcvAmt"))   %></td>
                        <td class="ac"><%=accountData.get("AgrmtInstNm")%></td>
                        <td class="ac"><%=accountData.get("AvblDate") %></td>
                        <td class="ac"><%=accountData.get("InqDv") %></td>
					</tr>
					</tbody>
					</table>
                </div>
                <!-- //������� ����Ʈ end// -->
                <div class="docu_txt"><img src="/pop/docu_txt1.gif" alt="���� ����� ������°� �߱޵Ǿ����� �����մϴ�."/></div>
                <div class="docu_date">
                    <span id="yyyy"><%=year %></span> ��
                    <span id="mm"><%=month %></span> ��
                    <span id="dd"><%=day %></span> ��                
                </div>
                <div class="docu_stamp"><img src="/pop/docu_stamp.gif" alt="Ȯ �� ��: �ѱ��������򰡰�������"/></div>
                <div class="docu_logo"><img src="/pop/mke_logo.gif" alt="���İ����� �ΰ�"/></div>
                <div class="ar" id="non_print2"><a href="#" onclick="uf_print(); return false;"><img src="/bt/bt_print.gif" alt="�μ�" /></a></div>
            </div>
            <!-- //content end// -->
        </div>



<!-- //content end// -->


<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 


<script type="text/javascript">
/******************************************************************
 * uf_print         ��ü���Ȯ���� ���
 * @param
 * @return
******************************************************************/
function uf_print(){
    //window.onbeforeprint = beforePrintDivs;
    //window.onafterprint = afterPrintDivs;
    window.print();
}
/******************************************************************
 * beforePrintDivs          �μ�����������������-�μ⿵����ȭ�����
 * @param
 * @return
******************************************************************/
function beforePrintDivs(){
    document.getElementById("non_print2").style.display = "none";
    document.getElementById("head").style.display = "none";
    document.getElementById("foot").style.display = "none";
}
/******************************************************************
 * afterPrintDivs           �μ��Ŀ���������ǥ��
 * @param
 * @return
******************************************************************/
function afterPrintDivs(){
    document.getElementById("non_print2").style.display = "block";
    document.getElementById("head").style.display = "block";
    document.getElementById("foot").style.display = "block";
}
</script>

</body>
</html> 