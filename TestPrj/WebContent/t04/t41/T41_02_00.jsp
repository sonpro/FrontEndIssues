<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_02_00.jsp
 *   Description        : ȸ������ ��ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29     				������        		
 *
 *  @author ������
 *  @Since  2013. 10. 29
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
<%@ include file="/inc/jspHead.jsp" %>
<!-- //head end -->

<title>ȸ������ ��ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body class="line">
<script type="text/javascript">
    //PrintObjectTag();
    PrintObjectTag_c();
    PutBannerUrl();
</script>
<script type="text/javascript" src="http://ck.softforum.co.kr/CKKeyPro/rcms/CKKeyPro3.js"></script>

<!---_BEGIN_ENC_--->

<form name='xecure'><input type=hidden name='p'></form>
<ul id="accessibility">
    <li><a href="#header">�ָ޴��ٷΰ���</a></li>
    <li><a href="#contaniner">�������ٷΰ���</a></li>
    <li><a href="#footer">�ϴܹٷΰ���</a></li>
</ul>
<hr/>
<noscript><p id="warning_script">�ڹٽ�ũ��Ʈ�� �������� ���� �� �������� ���������� ������ ���� �� �ֽ��ϴ�.</p></noscript>
<div id="wrapper">

    <!-- //header topMenu start// -->
	<%@ include file="/inc/topMenu.jsp" %>
    <!-- //header topMenu end// -->
    
    <!-- contaniner start -->
    <div id="contaniner">
        <!-- left start -->
        <div class="snb">
            <!-- left menu start -->
            




                    <div><img src="/images/pefo/sub_navt4.gif" alt="�̿�ȯ�����" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t04/t41/T41_01_00.jsp'); return false;" class="menu_txt_on">�⺻����</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_01_00.jsp'); return false;" class="menu_3dep">����⺻���� ��ȸ</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_02_00.jsp'); return false;" class="menu_3dep_on">ȸ������ ��ȸ</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_08_00.jsp'); return false;" class="menu_3dep">�������� Ȯ��</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_04_00.jsp'); return false;" class="menu_3dep">�߹�ŷ �̿��û</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_03_00.jsp'); return false;" class="menu_3dep">������ ���� ����</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_05_00.jsp'); return false;" class="menu_3dep">��ü��й�ȣ ���</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_06_00.jsp'); return false;" class="menu_3dep">������ī��� ���</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_07_00.jsp'); return false;" class="menu_3dep">������ī�� ���� ���</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_txt">�ΰ�����</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_3dep">���־��� �����</a></li>

                                    <li><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_3dep">���־��� �Աݰ���</a></li>

                                    <li><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_3dep">����� ���Ѱ���</a></li>

                                    <li><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_3dep">�����и�ȸ�����</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_txt">������°���</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_3dep">�ΰǺ� ���ް��� ����</a></li>

                                    <li><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_3dep">�ڰ�����ü�� ���� ����</a></li>

                                    <li><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_3dep">ī����� �������� ����</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>

                        </div>
                    </div>
                    <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->


        <!-- content start -->
        <div id="content">
            <form name="frm" method="post">
            <!-- pagenav start -->
            



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u41_02_00_t.gif" alt="ȸ������ ��ȸ"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>�̿�ȯ�����</li>
                       <li><img src="/images/common/arr.gif" alt=" " />�⺻����</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">ȸ������ ��ȸ</span></li>
						
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t20"></div>
            <h3>�⺻����</h3>      
            <!-- �⺻���� start -->
            <div class="t10 b15">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="�⺻����" class="tbl_type02">
                <caption>�⺻����</caption>
				<colgroup>
					<col width="20%" />
					<col width="30%" />
					<col width="20%" />
					<col width="30%" />
				</colgroup>
				<tbody>
				<tr>
					<th scope="row">���̵�</th>
					<td colspan="3" class="ll"><span id="UsrId">SMTEST</span></td>
				</tr>
				<tr>
					<th scope="col">�̸�</th>
					<td><span id="UsrNm">���Ѱ�</span></td>
					<th scope="col">�ֹε�Ϲ�ȣ</th>
					<td class="ll"><span id="ResRegNo">790301-*******</span></td>
				</tr>
				<tr>
					<th scope="col">�ڵ���</th>
					<td><span id="MbphNo">010-224-2424</span></td>
					<th scope="col">�̸����ּ�</th>
					<td class="ll"><span id="EmalAdr">smtest12@hitel.net</span></td>
				</tr>
				</tbody>
				</table>
            </div>
            <!-- //�⺻���� end// --> 
            <h3>�ΰǺ񳻿�</h3>      
            <!-- �ΰǺ񳻿� start -->
            <div class="t10">
				<table width="704" border="0" cellspacing="0" cellpadding="0" summary="�ΰǺ񳻿�" class="tbl_type02">
				<caption>�ΰǺ񳻿�</caption>
				<colgroup>
					<col width="20%" />
					<col width="30%" />
					<col width="20%" />
					<col width="30%" />
				</colgroup>
				<tbody>
				<tr>
					<th scope="col">��������</th>
					<td><span id="NtryDt">2007-09-12</span></td>
					<th scope="col">�����</th>
					<td class="ll"><span id="NtryDt"></span></td>
				</tr>
				<tr>
					<th scope="col">����</th>
					<td><span id="InstNm"></span></td>
					<th scope="col">�μ�</th>
					<td class="ll"><span id="PrsWkplDept">������</span></td>
				</tr>
				<tr>
					<th scope="col">�����ο���</th>
					<td><span id="">������</span></td>
					<th scope="col">���������Ͻ�</th>
					<td class="ll">2011-10-25&nbsp;06:56:36</span></td>
				</tr>
				</tbody>
				</table>
            </div>
            <!-- //�ΰǺ񳻿� end// -->
            <!-- action bt start -->
            <div class="action_bt ar">
                <a href="#dummy" onclick="uf_frmNewWinNs(document.frm, 'http://pms.keit.re.kr/reg/register.do?mbr_id=&sysCd=DI8017&command=membCheck', 'membCheck', '680', '600'); return false;" class="bt_action4-1" title="ȸ��Ż��"><span class="bt_sp">ȸ��Ż��</span></a>
            </div>
            <!-- //action bt end// -->
            </form> 
        </div>
        <!-- //content end// -->



    </div>
    <!-- //contaniner end//-->
    <div class="cb"></div>

    <!-- footer start -->
	<%@ include file="/inc/jspFooter.jsp" %>
    <!-- //footer end// -->
    
    <!-- ���޴� start -->
	<%@ include file="/inc/quickMenu.jsp" %>
    <!-- //���޴� end// -->

</div><!-- wrapper end -->




</body>
</html>