<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_11_00.jsp 
 *   Description        : ���ڼ��ݰ�꼭 ��ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ================================================================================
 *   2014.01.10                     ������             �����ۼ�
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
<!-- //head end -->


<title>���ڼ��ݰ�꼭 ��ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���ڼ��ݰ�꼭 ��ȸ</p>
        </div>
        <!-- //head title// --> 
    </div>



    <div id="body"> 
        <!-- content start -->
        <form name="frm" method="post">
        <div id="content">
            <div class="t20"></div>
            <div><b>���ι�ȣ:</b> 201401010000000000001</div>
            <!-- ���ڼ��ݰ�꼭 start -->
            <div class="t10 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ڼ��ݰ�꼭 ������ ���޹޴���">
                <caption>���ڼ��ݰ�꼭 ������ ���޹޴���</caption>
                <colgroup>
                    <col width="5%" />
                    <col width="9%" />
                    <col width="15%" />
                    <col width="10%" />
                    <col width="12%" />
                    <col width="5%" />
                    <col width="9%" />
                    <col width="15%" />
                    <col width="10%" />
                    <col width="12%" />
                </colgroup>
                <tbody>
                <tr>
                    <th rowspan="6" scope="row" class="bill_thred02">��<br />��<br />��</th>
                    <th scope="row" class="bill_thred">��Ϲ�ȣ</th>
                    <td class="bill_tdred" id="PROV_REG_NUMBER">100-10-10000</td>
                    <th scope="row" class="bill_thred01">��������ȣ</th>
                    <td class="bill_tdred01" id="PROV_OTHER_REGNO"></td>
                    <td rowspan="6" class="bill_thblue02">��<br />��<br />��<br />��<br />��</td>
                    <td class="bill_thblue">��Ϲ�ȣ</td>
                    <td class="bill_tdblue" id="RECE_REG_NUMBER">111-11-11111</td>
                    <td class="bill_thblue01">��������ȣ</td>
                    <td class="bill_tdblue" id="RECE_OTHER_REGNO"></td>
                </tr>
                <tr>
                    <th scope="row" class="bill_thred">��ȣ</th>
                    <td class="bill_tdred" id="PROV_COMPANY_NM">(��) �� ��ü</td>
                    <th scope="row" class="bill_thred01">����</th>
                    <td class="bill_tdred01" id="PROV_CEO_NAME">������</td>
                    <td class="bill_thblue">��ȣ</td>
                    <td class="bill_tdblue" id="RECE_COMPANY_NAME">(��) RCMS</td>
                    <td class="bill_thblue01">����</td>
                    <td class="bill_tdblue" id="RECE_CEO_NAME">�����</td>
                </tr>
                <tr>
                    <th scope="row" class="bill_thred">�����</th>
                    <td colspan="3" class="bill_tdred01" id="PROV_BUSINESS_PLACE">��õ������ ������ ������ 1138</td>
                    <td class="bill_thblue">�����</td>
                    <td colspan="3" class="bill_tdblue" id="RECE_BUSINESS_PLACE">���������� ������ ȭ�ϵ� 58-4</td>
                </tr>
                <tr>
                    <th height="39" scope="row" class="bill_thred">����</th>
                    <td class="bill_tdred" id="PROV_BUSINESS_CATEGORY">����</td>
                    <th scope="row" class="bill_thred01">����</th>
                    <td class="bill_tdred01" id="PROV_BUSINESS_TYPE">����</td>
                    <td class="bill_thblue">����</td>
                    <td class="bill_tdblue" id="RECE_BUSINESS_CATEGORY">����</td>
                    <td class="bill_thblue01">����</td>
                    <td class="bill_tdblue" id="RECE_BUSINESS_TYPE">����</td>
                </tr>
                <tr>
                    <th rowspan="2"  scope="row" class="bill_thred02">�̸���</th>
                    <td rowspan="2" colspan="3" class="bill_tdred02" id="PROV_EMAIL">gaBusiness@business.net</td>
                    <td class="bill_thblue">�̸���</td>
                    <td colspan="3" class="bill_tdblue" id="RECE_EMAIL1">test@keit.re.kr</td>
                </tr>
                <tr>
                    <td class="bill_thblue02">�̸���</td>
                    <td colspan="3" class="bill_tdblue02"  id="RECE_EMAIL2"></td>
                </tr>
                </tbody>
                </table>
            </div>  
            <!-- //���ڼ��ݰ�꼭 end// --> 
            <!-- ���ڼ��ݰ�꼭 �󼼳���1 start -->
            <div class="t20 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ڼ��ݰ�꼭 �󼼳���" class="tbl_type03">
                <caption>���ڼ��ݰ�꼭 �󼼳���</caption>
                <colgroup>
                    <col width="15%" />
                    <col width="15%" />
                    <col width="15%" />
                    <col width="30%" />
                    <col width="25%" />
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">�ۼ�����</th>
                    <th scope="col">���ް���</th>
                    <th scope="col">�ΰ���ġ����</th>
                    <th scope="col">��������</th>
                    <th scope="col">���</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="ac">2014-10-20</td>
                    <td class="ar">1,000</td>
                    <td class="ar">100</td>
                    <td class="ar"></td>
                    <td></td>
                </tr>
                </tbody>
                </table>
            </div>
            <!-- //���ڼ��ݰ�꼭 �󼼳���1 end// -->
            <!-- ���ڼ��ݰ�꼭 �󼼳���2 start -->
            <div class="t20 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ڼ��ݰ�꼭 �󼼳���" class="tbl_type03">
                <caption>���ڼ��ݰ�꼭 �󼼳���</caption>
                <colgroup>
                    <col width="8%" />
                    <col width="8%" />
                    <col width="20%" />
                    <col width="8%" />
                    <col width="8%" />
                    <col width="8%" />
                    <col width="10%" />
                    <col width="15%" />
                    <col width="15%" />
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">��</th>
                    <th scope="col">��</th>
                    <th scope="col">ǰ��</th>
                    <th scope="col">�԰�</th>
                    <th scope="col">����</th>
                    <th scope="col">�ܰ�</th>
                    <th scope="col">���ް���</th>
                    <th scope="col">�ΰ���ġ����</th>
                    <th scope="col">���</th>
                </tr>
                </thead>
                <tbody>
                
                <tr>
                    <td class="ac">01</td>
                    <td class="ac">20</td>
                    <td>����Ժ�</td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ar">1,000</td>
                    <td class="ar">100</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ar"></td>
                    <td class="ar"></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ar"></td>
                    <td class="ar"></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ar"></td>
                    <td class="ar"></td>
                    <td></td>
                </tr>

                </tbody>
                </table>
            </div>
            <!-- //���ڼ��ݰ�꼭 �󼼳���2 end// -->
            <!-- ���ڼ��ݰ�꼭 �󼼳���3 start -->
            <div class="t20 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ڼ��ݰ�꼭 �󼼳���" class="tbl_type03">
                <caption>���ڼ��ݰ�꼭 �󼼳���</caption>
                <colgroup>
                    <col width="15%" />
                    <col width="15%" />
                    <col width="15%" />
                    <col width="15%" />
                    <col width="15%" />
                    <col width="*" />
                </colgroup>
                <tbody>
                <tr>
                    <th scope="col">�հ�ݾ�</th>
                    <th scope="col">����</th>
                    <th scope="col">��ǥ</th>
                    <th scope="col">����</th>
                    <th scope="col">�ܻ�̼���</th>
                    <td rowspan="2" class="ac">�� �ݾ��� û�� ��</td>
                </tr>
                <tr>
                    <td class="ar" id="TOTAL_AMT">1,100</td>
                    <td class="ar">0</td>
                    <td class="ar">0</td>
                    <td class="ar">0</td>
                    <td class="ar">1,100</td>
                </tr>
                </tbody>
                </table>
            </div>
            <!-- //���ڼ��ݰ�꼭 �󼼳���3 end// -->
   
        </div>
        <!-- //content end// -->
        </form>
    </div>



<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 

