<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_17_00.jsp
 *   Description        : ī��߱� �ȳ� �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ========================================================================================
 *   2013.12.16                     ������             �����ۼ�
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

<title>ī��߱޾ȳ� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">ī��߱޾ȳ�</p>
        </div>
        <!-- //head title// --> 
    </div>
	<form name="frm" method="post">
	        <div id="body"> 
	            <!-- content start -->
	            <div id="content">
	                <div class="t20"></div>
	                <h3>ī��߱޾ȳ�</h3>
	                <!-- ī�峻�� �� ���� start -->
	                <div class="t10 b20 pop_wh">
	                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="ī��߱޾ȳ� ����Ʈ " class="tbl_type04">
	                    <caption>ī��߱޾ȳ� ����Ʈ</caption>
	                    <colgroup>
	                        <col width="20%" />
	                        <col width="15%" />
	                        <col width="20%" />
	                        <col width="20%" />
	                        <col width="25%" />
	                    </colgroup>
	                    <thead>
	                    <tr>
	                        <th scope="col">ī����</th>
	                        <th scope="col">��뿩��</th>
	                        <th scope="col">�����</th>
	                        <th scope="col">����ó</th>
	                        <th scope="col">���</th>
	                    </tr>
	                    </thead>
	                    <tbody>
	                    <tr>
	                        <td class="ac">�Ե�ī��</td>
	                        <td class="ac">����</td>
	                        <td class="ac">��� �輺��</td>
	                        <td class="ac">02-2050-1308</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">�Ｚī��</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� ������</td>
	                        <td class="ac">02-2172-8542</td>
	                        <td class="ac">������ī�� �߱��ʿ�</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">��ȯī��</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� ��â��</td>
	                        <td class="ac">02-3671-1721</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">IBK�������(BC)</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� �ݼ���</td>
	                        <td class="ac">1588-2588<br />����517</td>
	                        <td class="ac"><a href="#dummy" onclick="uf_frmNewWinNs(document.frm, '/jsp/pop/issu_gud_corp_crd.jsp', 'ISSU_CRD_CORP_POP', 526, 584);">[�߱޾ȳ�]</a></td>
	                    </tr>
	                    <tr>
	                        <td class="ac">�泲����(BC)</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� �ѵ���</td>
	                        <td class="ac">055-290-8546</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">�뱸����(BC)</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� ������</td>
	                        <td class="ac">053-740-2283</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">�λ�����(BC)</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� �ż���</td>
	                        <td class="ac">051-620-3858</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">��Ƽ����(BC)</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� ���¶�</td>
	                        <td class="ac">02-3455-2096</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">�츮����(BC)</td>
	                        <td class="ac">����</td>
	                        <td class="ac">������ ����</td>
	                        <td class="ac"></td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">�ϳ�ī��</td>
	                        <td class="ac">����</td>
	                        <td class="ac">�ݼ���</td>
	                        <td class="ac">1599-1155</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">�ϳ�SKī��(BC)</td>
	                        <td class="ac">����</td>
	                        <td class="ac">�ݼ���</td>
	                        <td class="ac">1599-1155</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">����ī��</td>
	                        <td class="ac">����</td>
	                        <td class="ac">����������</td>
	                        <td class="ac"></td>
	                        <td class="ac">������ī�� �߱��ʿ�</td>
	                    </tr>
	<!--                <tr>
	                        <td class="ac">KB��������(BC)</td>
	                        <td class="ac">�غ���</td>
	                        <td class="ac">���� ����</td>
	                        <td class="ac">02-2073-0174</td>
	                        <td class="ac"></td>
	                    </tr> -->
	                    <tr>
	                        <td class="ac">NH����</td>
	                        <td class="ac">����</td>
	                        <td class="ac">�ݼ���</td>
	                        <td class="ac">1644-4000</td>
	                        <td class="ac">������ī�� �߱��ʿ�</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">NH����(BC)</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� ������</td>
	                        <td class="ac">02-2129-8943</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">SC��������(BC)</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� ������</td>
	                        <td class="ac">02-3702-4766</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">����ī��</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� �ݼ���</td>
	                        <td class="ac">1566-0369</td>
	                        <td class="ac">������ī�� �߱��ʿ�</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">��������ī��</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� �տ���</td>
	                        <td class="ac">062-239-6145</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    <tr>
	                        <td class="ac">��������ī��</td>
	                        <td class="ac">����</td>
	                        <td class="ac">���� �迵��</td>
	                        <td class="ac">063-250-7749</td>
	                        <td class="ac">��������ī�� ��밡��</td>
	                    </tr>
	                    </tbody>
	                    </table>
	                </div>
	                <!-- //ī�峻�� �� ���� end// --> 
	            </div>
	        </div>
	</form>


<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 
