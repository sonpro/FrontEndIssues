<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T23_01_00.jsp
 *   Description        : ī����� ������û
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29                   ������             
 *
 *  @author ������
 *  @Since  2014. 01. 16
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

<title>ī����� ������û &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body class="line">
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
            
            <div><img src="/images/pefo/sub_navt2.gif" alt="�����񺹿�" /></div>
            <div class="bg">
                <div class="sub">


                    <div class="sub_bg">
                    
                        <div class="navbox"><a href="#" onclick="fn_url('/t02/t21/T21_01_00.jsp'); return false;" class="menu_txt">��û������ȸ</a></div>

                        <ul>

                            <li><a href="#" onclick="fn_url('/t02/t21/T21_01_00.jsp'); return false;" class="menu_3dep">��û������ȸ</a></li>
                
                        </ul>
                        <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                    </div>


                    <div class="sub_bg">
                    
                        <div class="navbox"><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_txt">��������ü��� ��û</a></div>

                        <ul>

                            <li><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_3dep">��������ü��� ��û</a></li>
                
                        </ul>
                        <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                    </div>


                    <div class="sub_bg">
                    
                        <div class="navbox"><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_txt_on">ī�����������û</a></div>

                        <ul>

                            <li><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_3dep_on">ī�����������û</a></li>
                
                        </ul>
                        <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                    </div>


                    <div class="sub_bg">
                    
                        <div class="navbox"><a href="#" onclick="fn_url('/t02/t24/T24_01_00.jsp'); return false;" class="menu_txt">�ΰ��� ������û</a></div>

                        <ul>

                            <li><a href="#" onclick="fn_url('/t02/t24/T24_01_00.jsp'); return false;" class="menu_3dep">�ΰ��� ������û</a></li>
                
                        </ul>
                        <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                    </div>

                </div>
            </div>
            <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->
        
     
<!-- rMateGrid ���� ���� ���� -->
<script type="text/javaScript">        
    //rMateGrid�� bridge ���� �ٸ��� �־� �ڹٽ�ũ��Ʈ���� ������ �� �ֵ��� �մϴ�.
    var flashVars5 = "dataType=json&bridgeName=gridBridge5";
    var flashVars4 = "dataType=json&bridgeName=gridBridge4";
    //rMateGrid ���� ��ü
    var gridApp5; // �÷��� �⺻ ��ü
    var gridApp4; // �÷��� �⺻ ��ü
    var gridData5; // �׸��� ������ ���
    var gridData4; // �׸��� ������ ���
    var gridRoot5; // ����Ÿ�� �׸��带 �����ϴ� ��ü
    var gridRoot4; // ����Ÿ�� �׸��带 �����ϴ� ��ü
    var dataGrid5; // �׸��� ���� ���
    var dataGrid4; // �׸��� ���� ���
    
    //�׸��� ���̾ƿ� ��¿���
    var isGrid = false;
    var isGrid5 = false;
    var isGrid4 = false;
</script>


        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->

            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u23_02_00_t.gif" alt="ī�����������û"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>�����񺹿�</li>
                       <li><img src="/images/common/arr.gif" alt=" " />ī�����������û</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">ī�����������û</span></li>
                        
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t30"></div>
            <!-------------------------------------------------------------------------------->
            <!--  ����� ���� -->
            <!-------------------------------------------------------------------------------->

            <!-- ����߽� ������ȸ �ڵ��ϼ� ����� ����
                ������ȸ ��Ƽüũ ��� isSbjtAutoSchMulti : true
                ������ȸ �̱۸��   isSbjtAutoSchMulti : false
                ��ĳ�� ������ �ۼ� 20110426 -->
            <!-------------------------------------------------------------------------------->
            <% 
                boolean isSbjtAutoSchMulti = false; //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�  
                boolean beSearchBtn        = false;  //��ȸ��ư ��������(����޼ҵ�:uf_beSearchBtn();)
            %>
            <!-- �����˻� -->
            <%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
            
            <!-------------------------------------------------------------------------------->
            <!--  ����� �� -->
            <!-------------------------------------------------------------------------------->
            
            <div class="cb b10"></div>
            <form name="frm2" method="post">
            <input type="hidden" name="PrsPgno"             value="0" />            <!-- ������������ȣ        -->
            <input type="hidden" name="TrSupYn"             value="N" />
            </form>

            <form name="frm" method="post">
            <input type="hidden" name="ISSU_BNK_CD"         value=""  />            <!-- ������¹߱������ڵ�     -->
            <input type="hidden" name="EXIST_VACC"          value="N" />            <!-- ������¹߱޿���       -->
            <input type="hidden" name="VrtlAcctNo"          value=""  />            <!-- ������¹�ȣ         -->

            <input type="hidden" name="PrsPgno"             value="0" />            <!-- ������������ȣ        -->
            <input type="hidden" name="TrSupYn"             value="N" />

            <input type="hidden" name="PayPlanDtlsRegNcnt"  value="0" />            <!-- ī��ȯ�޿�û�Ǽ�       -->
            <input type="hidden" name="PlanAmt"             value="0" />            <!-- ī��ȯ�޿�û�ݾ�       -->
            <input type="hidden" name="searchDv"            value=""  />            <!-- ��ȸ���Ǳ���          -->
            <input type="hidden" name="CanDvCd"             value=""  />            <!-- ���������(��ü/�κ�)   -->
            <input type="hidden" name="SacPrgrSt"           value=""  />            <!-- �����������-->
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" /> 
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />
            
            <!-- ------------------------       ������¹߱����� ��ȸ����START      ------------------------ -->
			<h3>������¹߱�����</h3>
			<div class="t10">
				<table width="704" border="0" cellspacing="0" cellpadding="0"
					summary="������¹߱�����" class="tbl_type03">
					<caption>������¹߱�����</caption>
					<colgroup>
						<col width="18%" />
						<col width="14%" />
						<col width="13%" />
						<col width="10%" />
						<col width="17%" />
						<col width="15%" />
						<col width="13%" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col">������¹�ȣ</th>
							<th scope="col">�߱�����</th>
							<th scope="col">�߱�����</th>
							<th scope="col">����</th>
							<th scope="col">������뵵</th>
							<th scope="col">�Աݿ����ݾ�</th>
							<th scope="col" class="">�Աݸ�������</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="ac" id="idVrtlAcctNo"></td>
							<td class="ac"><input type="hidden" name="ISSU_BNK_CD"
								value="" /><span id="idVrtlAcctIssuBnkNm"></span></td>
							<td class="ac"><input type="hidden" name="ISSU_DT" value="" /><span
								id="idVrtlAcctIssuDt"></span></td>
							<td class="ac"><input type="hidden" name="ISSU_ST" value="" /><span
								id="idVrtlAcctIssuSt"></span></td>
							<td class="ac" id="idPayUsagDv"></td>
							<td class="ar" id="idPlanAmt"></td>
							<td class="ac" id="idValdEndDt"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- ------------------------       ������¹߱����� ��ȸ����END        ------------------------ -->                  
            <div class="cb b10"></div>
            <h3>������ȸ</h3>      
            <!-- �˻��� start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>������ȸ �˻�</legend>
                        <table width="680" summary="������ȸ �˻�" class="tbl_search">
                        <caption>������ȸ</caption>
                        <colgroup>
                            <col width="15%" />
                            <col width="25%" />
                            <col width="15%" />
                            <col width="45%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col">ī���ȣ</th>
                            <td>
                                <select name='CrdNo_sel' id='select01'
											style='width: 140px;' title='ī���ȣ ����'><option
													value=''>��üī��</option>
												<option value=1111222233334444>1111222233334444</option>
												<option value=1111222233335555>1111222233335555</option>
												</select>
										</td>
                            <th scope="col">��ұ���</th>
                            <td>
                                <input type="radio" name="CrdGbn" id="CrdGbn" value="4" class="radio1" title="������(������&RCMS)" onclick="fn_change('4');" checked/> <label for="CrdGbn">������(������&RCMS)</label>
                                <span class="l10"></span>
                                <input type="radio" name="CrdGbn" id="CrdGbn1" value="1" class="radio1" title="������(RCMS)" onclick="fn_change('1');"/> <label for="CrdGbn1">������(RCMS)</label>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">�������</th>
                            <td colspan="3">
                                <div id="DtBtn1" style="display: inline">
                                <%@ include file="/inc/set_date_btn.jsp" %>
                                <%@ include file="/inc/set_date_week.jsp" %>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                        </table>
                    </fieldset>
                </div>
                <div class="search_boxb1"></div>
            </div>
            <div class="cb"></div>
            <!-- //�˻��� end// -->
            <!-- ��ȸ ����ȸ ��ư start -->
            <div class="search_bt1 ar b10">
                <a href="#" class="bt_search" title="��ȸ" onclick="fn_change(); uf_search(); return false;"></a>
            </div>
            <!-- //��ȸ ����ȸ ��ư end// -->
            <!-- ���ǻ��� start -->
            <div class="guide_box" id="viewMsg1" style="display:inline;">
                <p class="guide_boxt"></p>
                <div class="guide_boxc">
                    <ul>
                        <li>������(������&RCMS)�� ������ �Ǵ� ī��縦 ���� ī����Գ��� ��ü�� ����� �� RCMS���� ��� ��Ҹ� �ϴ� ����Դϴ�.</li>
                        <li>������(������&RCMS)�� ī��������� ��û�Ͻ� ��쿡�� �ش� ������ ī���������� ������ �� �� �����ϴ�.</li>
                        <li>������(RCMS)�� ī��� �����Ŀ� ī���� ���Գ��� ��ü�� ������� �ʰ� RCMS���� ������� ������ ����ϴ� ����Դϴ�.</li>
                    </ul>    
                </div>
                <p class="guide_boxb"></p>
            </div>
            <!-- //���ǻ��� end// --> 
            
            
            <!-- ================== 2014 �׸��� ��ü �۾�======================== -->
            <!-- *************************  rMateGrid ************************* -->   
            
            <div id="title1" style="display:none;">
                <h3>�������Ҵ�� ���</h3>
                <!-- �ѰǼ� start -->
                <div class="total_box" id="Paging">
                   <p class="fl t05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> ��/<span id="InqPrsTotlCnt">0</span> ��]</p>
                   <p class="fl l05 b05"><a href="#" onclick="uf_checkAll_rMate(); return false;"><img src="/images/bt/bt_total.gif" alt="��ü����" valign="top" /></a></p>
                </div>
                <!-- //�ѰǼ� end// -->
            </div>
            <!-- �׸��� start -->
            <div id="viewGrid1" style="display:none;" class="b10">
                <script type="text/javascript">                
                    rMateGridCreate("grid", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "369", "#FFFFFF", "transparent");
                </script>                
            </div>
            <!-- //�׸��� end// -->
            <div id="title5" style="display:inline;">
                <h3>ī����Գ�����ȸ</h3>
                <!-- �ѰǼ� start -->
                <div class="total_box b05" id="Paging1">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt1">0</span> ��/<span id="InqPrsTotlCnt1">0</span> ��]</div>
                <!-- //�ѰǼ� end// -->
            </div>
            <!-- �׸��� start -->
            <div id="viewGrid5" style="display:inline;" >
                <script type="text/javascript">                
                    rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars5, "100%", "360", "#FFFFFF", "transparent");
                </script>            
            </div>
            <!-- //�׸��� end// -->
            <div class="b10"></div>
            <!-- ���ǻ��� start -->
            <div class="guide_box" id="viewMsg2" style="display:inline;">
                <p class="guide_boxt"></p>
                <div class="guide_boxc">
                    <ul>
                        <li>��ϳ����� ���� ��ҳ������� Ȯ���Ͻð� ��ϳ����� �ش�Ǵ� ��ҳ��� 1���� �����Ͻ� �� ī�����������û�� �Ͻø�˴ϴ�.</li>
                        <li>��ҳ�����ȸ������ ��� �� ���� �ݾױ��� ��� ��ȸ�� �˴ϴ�.</li>
                        <li>��ҳ�����ȸ���� ����Ͻ� ������ �����Ͻ� �� ī��������� ��û�� �Ͻø� �˴ϴ�.</li>
                    </ul>    
                </div>
                <p class="guide_boxb"></p>
            </div>
            <!-- //���ǻ��� end// -->
            <div id="title4" style="display:inline;"> 
                <h3>ī����ҳ�����ȸ</h3>
                <!-- �ѰǼ� start -->
                <div class="total_box b05" id="Paging2">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> ��/<span id="InqPrsTotlCnt2">0</span> ��]</div>
                <!-- //�ѰǼ� end// -->
            </div>
            <!-- �׸��� start -->
            <div id="viewGrid4" style="display:inline">
                <script type="text/javascript">                
                    rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars4, "100%", "194", "#FFFFFF", "transparent");
                </script>                
            </div>
            <!-- //�׸��� end// -->
            <!-- ������û�������� start -->
            <div class="t10" id="viewInfo" style="display:none;">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="������û��������" class="tbl_type03">
                <caption>������û��������</caption>
                <colgroup>
                    <col width="25%" />
                    <col width="25%" />
                    <col width="25%" />
                    <col width="25%" />
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">������û�Ǽ�</th>
                    <th scope="col">������û�ݾ�</th>
                    <th scope="col">���ޱݾ�</th>
                    <th scope="col">�ΰ���ġ����</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="ac"><span id="reqcnt">0</span></td>
                    <td class="ar"><span id="reqamt">0</span></td>
                    <td class="ar"><span id="reqsplamt">0</span></td>
                    <td class="ar"><span id="reqvatamt">0</span></td>
                </tr>
                </tbody>
                </table>
            </div>
            <!-- //������û�������� end// --> 
            <!-- action bt start -->
            <div class="action_bt ar">
                <a href="#" class="bt_action8" title="ī�����������û" onclick="uf_CrdRfnd(); return false;"><span class="bt_sp1">ī�����������û</span></a>
            </div>
            <!-- //action bt end// -->            
            <!-- �ȳ� ���̵� start -->
            <div class="guide_box1" id="guide">
                <div class="guide_boxt1">
                    <p class="txt_title fl">ī����� ���� ��û �ȳ�</p> 
                    <p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="����" class="vc"/></a></p>
                </div>
                <div class="guide_boxc1">
                    <ul>
                        <li>�� ī����� ������û�� RCMS�� ��ϵ� ī���� ������ ���� <span class="txt_or">RCMS�� ���ؼ� ī��������·� ������ ��ü�� �Ϸ�� ��</span>�� ���ؼ� ����� �� ����Ͻ� �� �ֽ��ϴ�.</li>
                        <li>������ ������ ��Ұ��� '����������� �� ������'���� �̵��Ͻð� ��ϰ��� �����Ͻø� �˴ϴ�.</li>
                    </ul>
                </div>
                <p class="guide_boxb1"></p>
            </div>
            <!-- //�ȳ� ���̵� end// -->
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



<script type="text/javascript">

    //�Ķ���� ��������
    var paramGb;
    
    //���̾ƿ� ��������
    var layoutStrGb;

    /******************************************************************
     * uf_Click         �׸����̺�Ʈ,üũ���� �ݾ��յ���(ī��ȯ�޺���)
     * @param           
     * @return
     
        ī����� �κ������ ��� 
        - �����԰��� �ΰ������� �Ͽ��� ��� 10/11�� ���� �� ����. 
        --> ī������ �������� �ΰ����� ����� ���Ƿ� ������ �� �ֱ� ������
    ******************************************************************/

    function uf_Click4(){
        
       	var frm             = document.frm;
        var cnt             =  0;
        var sumAmt          =  0;  // �հ�ݾ�
        var trnsAmt         =  0;  // ��ü�ݾ� 
        var CanTrnsAmt      =  0;  // �κ���ұݾ�
        var CanCelAmt       =  0;  // ��ұݾ� (ī����ҳ����� ��ұݾ�)
        var SplyAmt         =  0;  // ���ޱݾ�
        var VatAmt          =  0;  // �ΰ�����
        var CanDvCd         = "P"; // ������ {��ü���(A),�κ����(P)}, �������� {U}
        
        var RtrtSt          = "";
        var RtrtFixSplyAmt  =  0;  // ȯ��Ȯ�����ޱݾ�
        var RtrtFixVatAmt   =  0;  // ȯ��Ȯ���ΰ����ݾ�
            
        
        
        // ������� ���� �� ó�� (������ ��Ҵ� �ܰ�)                
        //�׸��� ���� üũ
        var selectorColumn4 = gridRoot4.getObjectById("selector");
        var rowIndex = selectorColumn4.getSelectedIndex();
        var dataRow;
        
        // ��������� (��ҳ������� ��Ұ��ɱݾ� ��ȸ)
        if(rowIndex > -1){         
            dataRow = gridRoot4.getItemAt(rowIndex);
            CanCelAmt = Number(dataRow.KRW_BUY_SUM);    //��ұݾ�
        }
        
        cnt+=1;
        
        RtrtSt          = dataRow.RTRT_ST;   //�������±���
        RtrtFixSplyAmt  = Number(dataRow.RTRT_FIX_SPLY_AMT);    //�������ޱݾ�
        RtrtFixVatAmt   = Number(dataRow.RTRT_FIX_VAT_AMT);     //�����ΰ����ݾ�
        SplyAmt         = Number(dataRow.USE_SPLY_AMT);         //���ޱݾ�
        VatAmt          = Number(dataRow.USE_VAT_AMT);          //�ΰ���ġ����

        sumAmt = (SplyAmt + VatAmt);
        
        // ȯ���������
        if ("" != RtrtSt && ("B1000A" == RtrtSt || "B10001" == RtrtSt)) {
            alert("������û���� ������ ī��������� ��û �� �� �����ϴ�.");
            selectorColumn4.setSelectedIndices([]); //��������
        } else {
            sumAmt  = sumAmt - (RtrtFixSplyAmt + RtrtFixVatAmt);
            trnsAmt = sumAmt;
            
            if((RtrtFixSplyAmt + RtrtFixVatAmt) == 0 && sumAmt == CanCelAmt) {
                CanDvCd = "A";    // ������ ��ü���
            }               
        } 

        if(CanCelAmt > trnsAmt) {
            alert("��ұݾ��� ��Ұ��ɱݾ׺��� ũ�� ������ ī��������� ��û �� �� �����ϴ�.");            
            selectorColumn4.setSelectedIndices([]); //��������
        }        

        frm.PayPlanDtlsRegNcnt.value =  cnt;        // ������ȯ�޿�û�Ǽ�
        frm.PlanAmt.value            =  CanCelAmt;  // ��������Ҽ��ŵ� ȯ���ݾ�
        frm.CanDvCd.value            =  CanDvCd;    // �κ���ұ����� {A,P}
        
    }       
        
    
    /******************************************************************
     * uf_Click         �׸����̺�Ʈ,üũ���� �ݾ��յ���
     * @param
     * @return
    ******************************************************************/
    function uf_Click1() {
        
        var frm    = document.frm;
        var cnt    = 0;
        var amt    = 0;
        var splamt = 0;
        var vatamt = 0;
        var RtrtSt = "";
        
        selectorColumn = gridRoot.getObjectById("selector");
        var arrChk = selectorColumn.getSelectedIndices();
        var dataRow;
        var chkArr = new Array();
        var isRtrtSt = false;   //������û���� ���翩��
        
        if(arrChk.length > 0 ){
           for(var i=0; i<arrChk.length; i++){         
        	   cnt+=1;
        	   
        	   dataRow = gridRoot.getItemAt(arrChk[i]);
        	   
               RtrtSt = dataRow.RTRT_ST;   //�������±���
               
               //ȯ���������
               if(RtrtSt != "" && ("B1000A" == RtrtSt || "B10001" == RtrtSt)) {
                    alert("������û���� ������ ī�����������û �� �� �����ϴ�.");
                    isRtrtSt = true;
                    continue;
               }
               
               amt += Number(dataRow.USE_VAT_AMT); //�ΰ���ġ����
               amt -= Number(dataRow.RTRT_FIX_VAT_AMT);    //�����ΰ����ݾ�(ȯ���ݾ�)
               
               amt += Number(dataRow.USE_SPLY_AMT);    //���ޱݾ�
               amt -= Number(dataRow.RTRT_FIX_SPLY_AMT);   //�������ޱݾ�(ȯ���ݾ�)
               
               splamt += Number(dataRow.USE_SPLY_AMT); //���ޱݾ�
               vatamt += Number(dataRow.USE_VAT_AMT);  //�ΰ���ġ����
               
               //������û���� ������ �ƴ� ������ ����Ʈ ���
               chkArr.push(arrChk[i]);
           }
           //������û���� ������ ������ ���� üũ
           if(isRtrtSt){
	           selectorColumn.setAllItemSelected(false);
	           selectorColumn.setSelectedIndices(chkArr);
           }
           
        }
        
        frm.CanDvCd.value                   = "U";               
        frm.PayPlanDtlsRegNcnt.value        = cnt;
        frm.PlanAmt.value                   = amt.toString();                     // ȯ����û�հ�ݾ�
        
        document.all['reqcnt'].innerHTML    = cnt;
        document.all['reqamt'].innerHTML    = cur_format(amt.toString());
        document.all['reqsplamt'].innerHTML = cur_format(splamt.toString());
        document.all['reqvatamt'].innerHTML = cur_format(vatamt.toString());
    
    }
        
    /******************************************************************
     * uf_CrdRfnd       ī��ȯ�޿�û pop-upȣ��
     * @param
     * @return
    ******************************************************************/
    
    function uf_CrdRfnd(){
        
        var frm       = document.frm;
        var obj       = gridRoot;
        var obj4;
        var CanCelAmt =  0;
        var RtrtSt    = "";
        var splamt    = 0;
        var vatamt    = 0;
        var chkCnt    = 0;
        
        
        // ������ȸ ���� Ȯ��
        if(!bAutoSbjtSch()) return;
        
        
        // ���������
        if("4" == frm.searchDv.value){
        	obj = gridRoot5;
        	obj4 = gridRoot4;
            CanCelAmt =  0;
        
            if(!chkGridSelectedCount_rMate(gridRoot5, "ī�����")) return false;
            if(!chkGridSelectedCount_rMate(gridRoot4, "ī�����")) return false;            
        } else {
            // ��������           
            if(!chkGridSelectedCount_rMate(gridRoot, "ī����")) return false;
        }
        
        // ���»���üũ
        if(!uf_chkVaccState())  return false;           
        
        // �����������üũ
        if(frm.SacPrgrSt.value == "1" || frm.SacPrgrSt.value == "2" || frm.SacPrgrSt.value == "3"){
            alert("���� ������ �� �����̹Ƿ� �ΰ��������� ��û�Ͻ� �� �����ϴ�.");
            return false;
        }
        
        if(!(frm.PlanAmt.value > 0)){
            alert("������û�ݾ��� \"0\"�� �Դϴ�.");
            return false;
        }
    
        // ����ó��
        if( isSubmit() ) return;    
        
        // ��������   gridRoot
        if("1" == frm.searchDv.value) {         
            selectorColumn = obj.getObjectById("selector");
            var arrChk = selectorColumn.getSelectedIndices();         
            
            chkCnt = arrChk.length;
            
            var dataRow;
            var chkArr = []; //üũȰ��ȭ ��
            var falseChkArr = [];    //üũ �����Ұ�
            for(var i=0; i<arrChk.length; i++){
            	dataRow = obj.getItemAt(arrChk[i]);
            	
                RtrtSt = dataRow.RTRT_ST; //�������±���
                // ȯ���������
                if (RtrtSt != "" && ("B1000A" == RtrtSt || "B10001" == RtrtSt)) {
                    alert("������û���� ������ ī�����������û �� �� �����ϴ�.");
                    
                    falseChkArr.push(arrChk[i]);   //üũ ������ �� ���
                    continue;
                }
                
                if (chkCnt > 1) {
                    if (Number(dataRow.USE_SPLY_AMT) + Number(dataRow.USE_VAT_AMT) >= 10000000) { //���ޱݾ�:USE_SPLY_AMT, USE_VAT_AMT
                        alert("���ð� �� 1õ���� �̻� ���� �����մϴ�. 1õ���� �̻���� ������ �����Ͽ� ��û�Ͻ� �� �����ϴ�.");
                    
                        //������� üũ ������ ���� ������ �� üũ ����
                      	for(var i=0; i<arrChk.length; i++){
	                      	 for(var j=0; j<falseChkArr.length; j++){
	                      		 if(arrChk[i] == falseChkArr[j]){
	                       			 arrChk.splice(i,1); //�ش� üũ�� ����
	                                 continue;
	                       		 }//if
	                       	 }//for	   
                        }//for
                        
                        chkArr = arrChk;
                        //������û���� ������ ������ ���� üũ
                        selectorColumn.setAllItemSelected(false);
                        selectorColumn.setSelectedIndices(chkArr);
                        
                        return false;
                    }//if
                }//if
                
                vatamt = Number(dataRow.USE_VAT_AMT);  //�ΰ���ġ����
                vatamt = vatamt - Number(dataRow.RTRT_FIX_VAT_AMT);   // �����ΰ����ݾ�(ȯ���ݾ�)

                splamt = Number(dataRow.USE_SPLY_AMT); //���ޱݾ�
                splamt = splamt - Number(dataRow.RTRT_FIX_SPLY_AMT);     // �������ޱݾ�(ȯ���ݾ�)
                
                get2post(frm, "CanVatAmt="  + vatamt);
                get2post(frm, "CanSplyAmt=" + splamt);
                get2post(frm, dataRow.GRIDKEY);
                
                //������û���� ������ �ƴ� ������ ����Ʈ ���
                chkArr.push(arrChk[i]);
            }//for
            
            //������û���� ������ ������ ���� üũ
            selectorColumn.setAllItemSelected(false);
            selectorColumn.setSelectedIndices(chkArr);
            
            get2post(frm, 'CanDvCd='      + frm.CanDvCd.value);
            get2post(frm, "AUTO_MAP_KEY=" + $("#SBJT_MAP_KEYS").val());
            
            var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
            get2post(frm, "AgrmtSeqNo=" + seqNo);
            
            uf_frmNewWinNs(frm, '/t02/t23/T23_01_20.jsp', 'TAXVIEW', '765', '650');
        
        // ���������    gridRoot5, gridRoot4
        } else if("4" == frm.searchDv.value) {
    
            var uAmt = 0;
            var pAmt = 0;
            var cAmt = 0;
            
            var selectorColumn5 = obj.getObjectById("selector");
            var rowIdx1 = selectorColumn5.getSelectedIndex();   
            var dataRow1 = obj.getItemAt(rowIdx1);
            
            var selectorColumn4 = obj4.getObjectById("selector");
            var rowIdx2 = selectorColumn4.getSelectedIndex();               
            var dataRow2 = obj4.getItemAt(rowIdx2);
            
            
            get2post(frm, dataRow1.GRIDKEY);
            
            // ī����Գ��� ���ݾ�/�κ���ұݾ�
            uAmt = Number(dataRow1.OGN_BUY_SUM_AMT);  //���ݾ�                    
            pAmt = Number(dataRow1.RTRT_FIX_SPLY_AMT) + Number(dataRow1.RTRT_FIX_VAT_AMT); //�������ޱݾ�:RTRT_FIX_SPLY_AMT, �����ΰ����ݾ�:RTRT_FIX_VAT_AMT
            
            get2post(document.frm, 'VatProcDv='      + dataRow1.VAT_PROC_DV);    // �ΰ���ó������
            get2post(document.frm, 'RtrtFixSplyAmt=' + dataRow1.RTRT_FIX_SPLY_AMT);      // ȯ��Ȯ�����ޱݾ�
            get2post(document.frm, 'RtrtFixVatAmt='  + dataRow1.RTRT_FIX_VAT_AMT);    // ȯ��Ȯ���ΰ����ݾ�                 




            cAmt = Number(dataRow2.KRW_BUY_SUM); // ī����ҳ��� ��ұݾ�
            
            if(uAmt - pAmt < cAmt) {
                alert('��Ұ��ɱݾ��� ' + (uAmt-pAmt) + '�� �Դϴ�.\n�ش� ������ �κ���Ұ��ɱݾ� ���� ��ұݾ��� �� ũ�⶧����\nī��������� ��û �Ͻ� �� �����ϴ�.');
                return;
            }
            
            
            get2post(document.frm, 'CrdNo='        + dataRow2.CRD_NO);         //ī���ȣ
            get2post(document.frm, 'CanCelAmt='    + dataRow2.KRW_BUY_SUM);    // ��ұݾ�
            get2post(document.frm, 'RevoAmt='      + (uAmt-pAmt));                                          // �κ���Ұ��ɱݾ�
            get2post(document.frm, 'ApvDt='        + dataRow2.APV_DT);         // ����������
            get2post(document.frm, 'RegSeq='       + dataRow2.REG_SEQ);        // ��ϼ���
            get2post(document.frm, 'CTblBuyApvNo=' + dataRow2.BUY_APV_NO);     // ���Խ��ι�ȣ                   

            
            get2post(frm, 'CanDvCd='       + frm.CanDvCd.value);
            get2post(frm, 'PlanAmt='       + frm.PlanAmt.value);
            get2post(frm, "AUTO_MAP_KEY=" + $("#SBJT_MAP_KEYS").val());

            uf_frmNewWinNs(document.frm, '/t02/t23/T23_01_10.jsp', 'TAXVIEW', '785', '620'); 
        } 
        removeTempAttribute(frm);
    }   
    
    /******************************************************************
     * uf_search        ��ȸ���Ǳ���(ī���볻��/ī����ҳ���)
     * @param
     * @return
    ******************************************************************/
     
//  ================== 2014 �׸��� ��ü �۾�========================
    function uf_search(SchGb) {
    	
    	var frm = document.frm;
            
        // ������ȸ ���� Ȯ��
        if(!bAutoSbjtSch()) return;
     
        if( isSubmit() ) return;            // ����ó��
    
      //���������
        if(frm.CrdGbn[0].checked == true){
            //������ȸ ī���ȣ
            if(null != frm.select01.value && "" != frm.select01.value) {
                get2post(frm, "getCrdNo=" + frm.select01.value);      //ī���ȣ
            } 
            
            gridPgScrollSchStart_rMate(SchGb, gridRoot5, undefined, undefined, undefined, gridApp5);
            
            frm.searchDv.value = "4";
        }else{
        //��������
            gridPgScrollSchStart_rMate(); 
            
            //��ü���� ����
            selectorColumn = gridRoot.getObjectById("selector");
            selectorColumn.setAllItemSelected(false);
            
            frm.searchDv.value = "1";
        }
        

        var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        uf_proce_display_on();  //�ε���
        setTimeout(function(){search(seqNo);}, 1000);   // 1���� ���� 1000 = 1��s
        
        
        //üũ���� �ݾ��յ��� �ʱ�ȭ
        uf_amtInit();           
    }    


    function uf_autoSbjtSchCallBack(param) {
        
        if(!param){
            alert("������ �߻��Ͽ����ϴ�. ����� �ٽ� �õ����ּ���.");
            return;
        }
    
        var responseXML = "";
        
        if("1" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else if("2" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
        }else if("3" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
        }else if("4" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
        }
        
        
        document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
        
        
        paramGb = param;
        uf_init();
    }
    
    //üũ���� �ݾ��յ��� �ʱ�ȭ
    function uf_amtInit() {
        document.all['reqcnt'].innerHTML    = 0;
        document.all['reqamt'].innerHTML    = 0;
        document.all['reqsplamt'].innerHTML = 0;
        document.all['reqvatamt'].innerHTML = 0;        
    }
    
        
//  ================== 2014 �׸��� ��ü �۾�========================   
    
    
    
    /******************************************************************
     * searchCrdInfo ī����԰ǿ� ���� ī����ҳ��� ��ȸ�̺�Ʈ     
     * @param
     * @return
    ******************************************************************/
    function searchCrdInfo() {
    
        var frm  = document.frm2;   
        var getCrdNo      = '';
        var getBuyApvNo   = '';
        var getRcmsSetlDt = '';
        var getApcPrgrSt  = '';
        var getClmTotlAmt = 0;
        var getVatAmt     = 0;
        var getCanTrnsAmt = 0;
        var setAmt        = 0;
        var idx           = -1;     

        
        var selectorColumn5 = gridRoot5.getObjectById("selector");
        var rowIndex = selectorColumn5.getSelectedIndex();
        var dataRow;
        
        if(rowIndex > -1){
        	dataRow = gridRoot5.getItemAt(rowIndex);
        	
            getCrdNo      = dataRow.CRD_NO; //ī���ȣ
            //getRcmsSetlDt = data.;//��������  - �׸��忡 �÷��� �������� ����.              
            getClmTotlAmt = dataRow.OGN_BUY_SUM_AMT;    //���ݾ�              
            getBuyDt      = dataRow.BUY_DT; //��������              
            getRtrtSt     = dataRow.RTRT_ST;    //��������
            
            if("B01003" == dataRow.VAT_PROC_DV) {
                //�ʱ�ȭ
                rMateGridLayoutInit_rMate(gridRoot4, gridApp4);
                alert('�ΰ����� ȯ���� ������ ���ؼ��� ī��������� ��û�� �� �� �����ϴ�.');
                return;
            }
            
            if("B1000A" == getRtrtSt || "B10001" == getRtrtSt) {
                //�ʱ�ȭ
                rMateGridLayoutInit_rMate(gridRoot4, gridApp4);
                alert('�����Ͻ� ������ ���� ��û�����Դϴ�.\n�ش系���� ī��������� ��û�� �� �� �����ϴ�.');
                return;
            }
            
            if(getClmTotlAmt > 0) {
                get2post(frm, "getCrdNo="      + getCrdNo);      //ī���ȣ
                get2post(frm, "getRcmsSetlDt=" + getRcmsSetlDt); //��������
                get2post(frm, "getClmTotlAmt=" + getClmTotlAmt); //���ݾ�
            }              

            if( isSubmit() ) return;

            //�������ʱ�ȭ
            gridData4 = null;
            //�׸��� �ʱ�ȭ
            rMateGridLayoutInit_rMate(gridRoot4, gridApp4);
            
            var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
            uf_proce_display_on();  //�ε���
            setTimeout(function(){search2(seqNo);}, 1000);   // 1���� ���� 1000 = 1��s           
            
        } else {
            return;
        }
    }   
    
    /******************************************************************
     * uf_search        ��ȸ���� ����� �׸��� �ʱ�ȭ
     * @param
     * @return
    ******************************************************************/
    function fn_change(gbn){
    
        var frm;
        var frm2 = document.frm2;
        var InqPrsTotlNcnt, InqPrsTotlNcnt1, InqPrsTotlNcnt2;
        
        frm = document.frm;
        frm.PrsPgno.value           = "0";
        frm2.PrsPgno.value          = "0";
        
        document.getElementById("InqPrsTotlNcnt").innerHTML  = "0";     
        document.getElementById("InqPrsTotlNcnt1").innerHTML = "0";
        document.getElementById("InqPrsTotlNcnt2").innerHTML = "0";        
        document.getElementById("InqPrsTotlCnt").innerHTML  = "0";      
        document.getElementById("InqPrsTotlCnt1").innerHTML = "0";
        document.getElementById("InqPrsTotlCnt2").innerHTML = "0";        
        
        //üũ���� �ݾ��յ��� �ʱ�ȭ
        //uf_amtInit();       
    
        switch (gbn) {
        case "1" : //��������
            if(isGrid) rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStr);
        
        	document.getElementById("viewGrid1").style.display   = "inline";
            document.getElementById("viewGrid4").style.display   = "none";
            document.getElementById("viewGrid5").style.display   = "none";
            document.getElementById("viewMsg1").style.display    = "inline";
            document.getElementById("viewMsg2").style.display    = "none";      
            document.getElementById("title1").style.display      = "inline";
            document.getElementById("title4").style.display      = "none";
            document.getElementById("title5").style.display      = "none";
            document.getElementById("viewInfo").style.display    = "block";
            //������(RCMS)
            //gridApp5.setLayout(layoutStr);
            
            break;
        case "4" : //���������

        	if(isGrid5) rMateGridLayoutInit_rMate(gridRoot5, gridApp5, layoutStr5);
        	if(isGrid4) rMateGridLayoutInit_rMate(gridRoot4, gridApp4, layoutStr4); 
            
        	document.getElementById("viewGrid1").style.display   = "none";
            document.getElementById("viewGrid4").style.display   = "inline";    
            document.getElementById("viewGrid5").style.display   = "inline";
            document.getElementById("viewMsg1").style.display    = "inline";
            document.getElementById("viewMsg2").style.display    = "inline";        
            document.getElementById("title1").style.display      = "none";
            document.getElementById("title4").style.display      = "inline";    
            document.getElementById("title5").style.display      = "inline";    
            document.getElementById("viewInfo").style.display    = "none";
            //������(������&RCMS)
            //gridApp5.setLayout(layoutStr5);
            
            break;
        
        default : //���������

            if(isGrid5) rMateGridLayoutInit_rMate(gridRoot5, gridApp5, layoutStr5);
            if(isGrid4) rMateGridLayoutInit_rMate(gridRoot4, gridApp4, layoutStr4); 
            
            document.getElementById("viewGrid1").style.display   = "none";
            document.getElementById("viewGrid4").style.display   = "inline";    
            document.getElementById("viewGrid5").style.display   = "inline";
            document.getElementById("viewMsg1").style.display    = "inline";
            document.getElementById("viewMsg2").style.display    = "inline";        
            document.getElementById("title1").style.display      = "none";
            document.getElementById("title4").style.display      = "inline";    
            document.getElementById("title5").style.display      = "inline";    
            document.getElementById("viewInfo").style.display    = "none";
            //������(������&RCMS)
            //gridApp5.setLayout(layoutStr5);
            
            break;
        }
        
        if(frm.CrdGbn[0].checked == true){
        	if(isGrid5) rMateGridLayoutInit_rMate(gridRoot5, gridApp5, layoutStr5);
            if(isGrid4) rMateGridLayoutInit_rMate(gridRoot4, gridApp4, layoutStr4); 
            
            document.getElementById("viewGrid1").style.display   = "none";
            document.getElementById("viewGrid4").style.display   = "inline";    
            document.getElementById("viewGrid5").style.display   = "inline";
            document.getElementById("viewMsg1").style.display    = "inline";
            document.getElementById("viewMsg2").style.display    = "inline";        
            document.getElementById("title1").style.display      = "none";
            document.getElementById("title4").style.display      = "inline";    
            document.getElementById("title5").style.display      = "inline";    
            document.getElementById("viewInfo").style.display    = "none";
        }else{
        	if(isGrid) rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStr);
            
            document.getElementById("viewGrid1").style.display   = "inline";
            document.getElementById("viewGrid4").style.display   = "none";
            document.getElementById("viewGrid5").style.display   = "none";
            document.getElementById("viewMsg1").style.display    = "inline";
            document.getElementById("viewMsg2").style.display    = "none";      
            document.getElementById("title1").style.display      = "inline";
            document.getElementById("title4").style.display      = "none";
            document.getElementById("title5").style.display      = "none";
            document.getElementById("viewInfo").style.display    = "block";
        }
    }
    
    function uf_init() {
        fn_change();
    }
    
    function fn_cardCan() {
        var frm2 = document.frm2;                
        frm2.PrsPgno.value          = "0";        
        document.getElementById("InqPrsTotlNcnt2").innerHTML = "0";
        document.getElementById("InqPrsTotlCnt2").innerHTML = "0";
    }
    
    /******************************************************************
     * uf_checkAll : ��ü����
     * @param
     * @return
    ******************************************************************/ 
    function uf_checkAll_rMate() {
    	gridAllCheck_rMate(gridRoot);
        uf_Click1();
    }
</script> 
<!-- �׸��� �̺�Ʈ START -->


<script type="text/javascript">

$(document).ready(function() {
//  ================== 2014 �׸��� ��ü �۾�========================       
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
//  ================== 2014 �׸��� ��ü �۾�========================   
    
    $("a#example1").fancybox();
    $("a#example2").fancybox(); 
  
    $('#btn-guide').click(function(){
        if( $('#guide').css('height') == '17px' ){
            $('#guide').css({overflow:'hidden'}).animate({height:110},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
        }else{
            $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
        }
        return false;
    });
});

</script>


<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">
    
    //���̾ƿ� ����[������ (RCMS) : U23_01_00_r.jsp  ]
    var layoutStr = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\" />\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
        <DataGrid id=\"dg1\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                <DataGridSelectorColumn id=\"selector\"      dataField=\"selector\"               headerText=\"����\"                  width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowAllSelection=\"false\" allowMultipleSelection=\"true\" />\
                <DataGridColumn id=\"CRD_NO\"                dataField=\"CRD_NO\"                 headerText=\"ī���ȣ\"              width=\"130\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
                <DataGridColumn id=\"BUY_CLCT_NO\"           dataField=\"BUY_CLCT_NO\"            headerText=\"���Խ��ι�ȣ\"            width=\"170\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
                <DataGridColumn id=\"CRD_APV_DT\"            dataField=\"CRD_APV_DT\"             headerText=\"��������\"              width=\"100\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\"  />\
                <DataGridColumn id=\"BUY_DT\"                dataField=\"BUY_DT\"                 headerText=\"��������\"              width=\"100\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\"  />\
                <DataGridColumn id=\"TRSC_PFMC_REG_DT\"      dataField=\"TRSC_PFMC_REG_DT\"       headerText=\"�����������\"              width=\"100\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"ITXP_REG_NCNT\"        dataField=\"ITXP_REG_NCNT\"         headerText=\"����ϰǼ�\"               width=\"90\"    visible=\"true\"    textAlign=\"center\"    headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"SPLR_CO_NM\"           dataField=\"SPLR_CO_NM\"            headerText=\"���ó\"                  width=\"120\"   visible=\"true\"    textAlign=\"center\"    headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"SPLR_BZ_REG_NO\"       dataField=\"SPLR_BZ_REG_NO\"        headerText=\"����ڹ�ȣ\"                width=\"90\"    visible=\"true\"    textAlign=\"center\"    headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"USE_SPLY_AMT\"          dataField=\"USE_SPLY_AMT\"           headerText=\"���ޱݾ�\"              width=\"90\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"USE_VAT_AMT\"           dataField=\"USE_VAT_AMT\"            headerText=\"�ΰ���ġ����\"          width=\"90\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"RTRT_ST_NM\"            dataField=\"RTRT_ST_NM\"             headerText=\"��������\"              width=\"100\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"RTRT_ST\"               dataField=\"RTRT_ST\"                headerText=\"�������±���\"          width=\"90\"   visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"     dataField=\"RTRT_FIX_SPLY_AMT\"      headerText=\"�������ޱݾ�\"          width=\"90\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"      dataField=\"RTRT_FIX_VAT_AMT\"       headerText=\"�����ΰ����ݾ�\"        width=\"100\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"BUTR_ID\"               dataField=\"BUTR_ID\"                headerText=\"�������ŷ�����ID\"  width=\"90\"   visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"GRIDKEY\"               dataField=\"GRIDKEY\"                headerText=\"GRIDKEY\"               width=\"0\"    visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
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
    
    //���̾ƿ� ����[ī����Գ��� ��ȸ (���������) : U23_01_00_r1.jsp ]
    var layoutStr5 = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\" />\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
        <DataGrid id=\"dg1\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                <DataGridSelectorColumn id=\"selector\"      dataField=\"selector\"               headerText=\"����\"                  width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
                <DataGridColumn id=\"CRD_NO\"                dataField=\"CRD_NO\"                 headerText=\"ī���ȣ\"              width=\"130\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUY_CLCT_NO\"           dataField=\"BUY_CLCT_NO\"            headerText=\"�����Թ�ȣ\"            width=\"130\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"CRD_APV_DT\"            dataField=\"CRD_APV_DT\"             headerText=\"��������\"              width=\"80\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\"  />\
                <DataGridColumn id=\"BUY_DT\"                dataField=\"BUY_DT\"                 headerText=\"��������\"              width=\"80\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"TRSC_PFMC_REG_DT\"      dataField=\"TRSC_PFMC_REG_DT\"       headerText=\"�������\"              width=\"80\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\"  />\
                <DataGridColumn id=\"OGN_BUY_SUM_AMT\"       dataField=\"OGN_BUY_SUM_AMT\"        headerText=\"���ݾ�\"              width=\"100\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"USE_SPLY_AMT\"          dataField=\"USE_SPLY_AMT\"           headerText=\"���ޱݾ�\"              width=\"100\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"USE_VAT_AMT\"           dataField=\"USE_VAT_AMT\"            headerText=\"�ΰ���ġ����\"          width=\"100\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"RTRT_ST_NM\"            dataField=\"RTRT_ST_NM\"             headerText=\"��������\"              width=\"80\"   visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"RTRT_ST\"               dataField=\"RTRT_ST\"                headerText=\"�������±���\"          width=\"80\"   visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"     dataField=\"RTRT_FIX_SPLY_AMT\"      headerText=\"�������ޱݾ�\"          width=\"110\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"RTRT_FIX_VAT_AMT\"      dataField=\"RTRT_FIX_VAT_AMT\"       headerText=\"�����ΰ����ݾ�\"        width=\"120\"  visible=\"true\"  textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"SPLR_CO_NM\"            dataField=\"SPLR_CO_NM\"             headerText=\"��������\"              width=\"130\"  visible=\"true\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUTR_ID\"               dataField=\"BUTR_ID\"                headerText=\"�������ŷ�����ID\"  width=\"90\"   visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"VAT_PROC_DV\"           dataField=\"VAT_PROC_DV\"            headerText=\"�ΰ���ó������\"        width=\"90\"   visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"GRIDKEY\"               dataField=\"GRIDKEY\"                headerText=\"GRIDKEY\"               width=\"0\"    visible=\"false\" textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
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
    
    
    //���̾ƿ� ����[ī�� ��ҳ��� ��ȸ : U23_01_00_r2.jsp  ]
    var layoutStr4 = "\
    <?xml version=\"1.0\" encoding=\"utf-8\"?>\
    <rMateGrid>\
        <NumberFormatter id=\"numfmt\" />\
        <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
        <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
        <DataGrid id=\"dg2\" lockedColumnCount=\"2\"  styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
            <columns>\
                <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
                <DataGridSelectorColumn id=\"selector\"      dataField=\"selector\"          headerText=\"����\"                  width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
                <DataGridColumn id=\"CRD_NO\"                dataField=\"CRD_NO\"            headerText=\"ī���ȣ\"              width=\"130\"  visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"OGN_BUY_CLCT_NO\"       dataField=\"OGN_BUY_CLCT_NO\"   headerText=\"�����Թ�ȣ\"            width=\"130\"  visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"APV_DT\"                dataField=\"APV_DT\"            headerText=\"����������\"            width=\"80\"   visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"OGN_BUY_DT\"            dataField=\"OGN_BUY_DT\"        headerText=\"����������\"            width=\"80\"   visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUY_DT\"                dataField=\"BUY_DT\"            headerText=\"������������\"        width=\"100\"  visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"KRW_BUY_SUM\"           dataField=\"KRW_BUY_SUM\"       headerText=\"��ұݾ�\"              width=\"100\"  visible=\"true\"   textAlign=\"right\"   headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
                <DataGridColumn id=\"OVRS_USE_YN\"           dataField=\"OVRS_USE_YN\"       headerText=\"�ؿܻ�뿩��\"          width=\"100\"  visible=\"true\"   textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"REG_YN\"                dataField=\"REG_YN\"            headerText=\"��ҵ�Ͽ���\"          width=\"80\"   visible=\"false\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"BUY_APV_NO\"            dataField=\"BUY_APV_NO\"        headerText=\"���Խ��ι�ȣ\"          width=\"80\"   visible=\"false\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"REG_SEQ\"               dataField=\"REG_SEQ\"           headerText=\"��ϼ���\"              width=\"80\"   visible=\"false\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
                <DataGridColumn id=\"GRIDKEY\"               dataField=\"GRIDKEY\"           headerText=\"GRIDKEY\"               width=\"0\"    visible=\"false\"  textAlign=\"center\"  headerStyleName=\"gridHeaderStyle\" />\
            </columns>\
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
            
            
            if (dataField == "selector") {  //üũ�ڽ�
                uf_Click1(rowIndex);
            }else if(dataField == "CRD_NO"){    //ī���ȣ
                var crdNo = dataRow.CRD_NO;
                uf_popup_crd_sbjt_dtls_info(crdNo);
            } else if(dataField == "BUY_CLCT_NO"){
                var ButrId = dataRow.BUTR_ID;
                uf_popup_crd_sel_slip(ButrId);
            }

        };
        
        //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var column = dataGrid.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetai(dataGrid,dataRow);
            
        };
        
        //�׸��� �̺�Ʈ ���
        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ
            
            isGrid = true;
        };

        
        //layout ��� �� ����� �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        //data ��� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("dataComplete", setTotCnt);   //��ü ��ȸ�Ǽ� ���

    };


    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);
    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
        
    //�׸��� ���̾ƿ� ȣ�� 
    var rMateGridInitLayout5 = function() {
        gridApp5 = FABridge.gridBridge5.root();
        gridRoot5 = gridApp5.getGridRoot();
        gridApp5.setLayout(layoutStr5); //�׸��� ���̾ƿ� ����

        
        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot5.getItemAt(rowIndex);

            var columns = dataGrid5.getColumns();
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
            
            
            //��Ŭ���� ���� üũ�ǰ�
            var selectorColumn5 = gridRoot5.getObjectById("selector");
            selectorColumn5.setSelectedIndices([rowIndex]);

            
            //ī����ҳ��� ��ȸ            
            searchCrdInfo(rowIndex);  
            
        };
        
        //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot5.getItemAt(rowIndex);
            var column = dataGrid5.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid5,dataRow);
            
        };
        
        //�׸��� �̺�Ʈ ���
        var layoutCompleteHandler = function(event) {
            dataGrid5 = gridApp5.getDataGrid();
            
            //�̺�Ʈ ���
            //dataGrid5.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid5.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ
            
            isGrid5 = true;
        };

        
        //layout ��� �� ����� �̺�Ʈ ���
        gridRoot5.addEventListener("layoutComplete", layoutCompleteHandler);
        //data ��� �� ������ �̺�Ʈ ���
        gridRoot5.addEventListener("dataComplete", setTotCnt5);   //��ü ��ȸ�Ǽ� ���

    };


    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge5", rMateGridInitLayout5);
    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData5() {
        gridApp5 = FABridge.gridBridge5.root();
        gridApp5.setData(JSON.stringify(gridData5)); //������ ���
    };

    //-------------------------------------------------------------------------
    //�׸��� ���̾ƿ� ȣ�� 
    var rMateGridInitLayout4 = function() {
        gridApp4 = FABridge.gridBridge4.root();
        gridRoot4 = gridApp4.getGridRoot();
        gridApp4.setLayout(layoutStr4); //�׸��� ���̾ƿ� ����
        
        
        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
        	var rowIndex = event.getRowIndex();
            //��Ŭ���� ���� üũ�ǰ�
            var selectorColumn4 = gridRoot4.getObjectById("selector");
            selectorColumn4.setSelectedIndices([rowIndex]);      
            
            uf_Click4(rowIndex);
        };        
       
        //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot4.getItemAt(rowIndex);
            var column = dataGrid4.getColumns()[columnIndex];
            var dataField = column.getDataField();
            
            layerDetail(dataGrid4,dataRow);
            
        };
        
        //�׸��� �̺�Ʈ ���
        var layoutCompleteHandler = function(event) {
            dataGrid4 = gridApp4.getDataGrid();
            
            //�̺�Ʈ ���
            //dataGrid4.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid4.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ
            
            isGrid4 = true;
            
        };

        
        //layout ��� �� ����� �̺�Ʈ ���
        gridRoot4.addEventListener("layoutComplete", layoutCompleteHandler);
        //gridRoot4.addEventListener("layoutComplete", rMateGridSetData4);
        //data ��� �� ������ �̺�Ʈ ���
        gridRoot4.addEventListener("dataComplete", setTotCnt4);   //��ü ��ȸ�Ǽ� ���
    };    


    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge4", rMateGridInitLayout4);    
    
    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData4() {
        gridApp4 = FABridge.gridBridge4.root();
        gridApp4.setData(JSON.stringify(gridData4)); //������ ���        
    };
        

   //��ü �ڷ�� ���
    function setTotCnt(){
	    var cnt = getGridRowCount_rMate(gridRoot);
        $("#InqPrsTotlNcnt").html(cnt);
        $("#InqPrsTotlCnt").html(cnt);
    }
    function setTotCnt5(){
    	var cnt = getGridRowCount_rMate(gridRoot5);
        $("#InqPrsTotlNcnt1").html(cnt);
        $("#InqPrsTotlCnt1").html(cnt);
    }
    function setTotCnt4(){
    	var cnt = getGridRowCount_rMate(gridRoot4);
        $("#InqPrsTotlNcnt2").html(cnt);
        $("#InqPrsTotlCnt2").html(cnt);
    }    

</script>
<!-- **********************  rMateGrid setting END ***********************  -->
            
            
<!--  ================== 2014 �׸��� ��ü �۾�======================== -->
<script type="text/javascript">
var cnt5 = 0;
function SetData(seqNo){    
    var frm = document.frm;    
    try{
        cnt5 = 0;       
        var gridValue5 = [];
        
        
        //1. �ű԰���
        if("G00000000000001" == seqNo){            
            
            //�������
            document.frm.SacPrgrSt.value ="";
            
            //���������ȸ
            document.all["idVrtlAcctNo"].innerHTML="00000010000000";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A ����";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-03-21";
            document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="�̻��";
            document.frm.ISSU_BNK_CD.value="003";
            document.frm.ISSU_DT.value="20140321";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="00000010000000";

        //2. �������
        }else if("G00000000000002" == seqNo){
            if(frm.searchDv.value == "4") {
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"H000000000","CRD_APV_DT":"2014-02-04","BUY_DT":"2014-02-06","TRSC_PFMC_REG_DT":"2014-02-11","OGN_BUY_SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� A ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233334444&BuyClctNo=H0000000000&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20140206&TrscPfmcRegDt=20140211&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=220&UseSplyAmt=200&UseVatAmt=20&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20140206&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000002"};

            } else if(frm.searchDv.value == "1") {
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"H000000000","CRD_APV_DT":"2014-02-04","BUY_DT":"2014-02-06","TRSC_PFMC_REG_DT":"2014-02-11","ITXP_REG_NCNT":"1","SPLR_CO_NM":"�� A ������","SPLR_BZ_REG_NO":"222-22-22222","USE_SPLY_AMT":"220","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334444&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=H000000000&CrdApvDt=20140204&BuyDt=20140206&TrscPfmcRegDt=20140211&ItxpRegNcnt=1&SplrBzRegNo=2222222222&SplrCoNm=�� A ������&UseSplyAmt=220&UseVatAmt=20&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	
            } else {}
            //������¹߱�����
            document.all["idVrtlAcctNo"].innerHTML="00000010000000";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="A ����";
            document.all["idVrtlAcctIssuDt"].innerHTML="2012-03-18";
            document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="�̻��";
            document.frm.ISSU_BNK_CD.value="003";
            document.frm.ISSU_DT.value="20140418";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="00000010000000";    
            //�������
            document.frm.SacPrgrSt.value = "";
            
        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){
            if(frm.searchDv.value == "4") {
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"N000000000","CRD_APV_DT":"2013-02-26","BUY_DT":"2013-03-04","TRSC_PFMC_REG_DT":"2013-03-13","OGN_BUY_SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� A ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233334444&BuyClctNo=N000000000&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20130304&TrscPfmcRegDt=20130313&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=220&UseSplyAmt=200&UseVatAmt=20&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130226&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000003"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4445","BUY_CLCT_NO":"N000000001","CRD_APV_DT":"2013-03-19","BUY_DT":"2013-03-22","TRSC_PFMC_REG_DT":"2013-03-27","OGN_BUY_SUM_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� B ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233334445&BuyClctNo=N000000001&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20130322&TrscPfmcRegDt=20130327&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=1100&UseSplyAmt=1000&UseVatAmt=100&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130319&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000003"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000003","CRD_APV_DT":"2013-04-16","BUY_DT":"2013-04-19","TRSC_PFMC_REG_DT":"2013-04-29","OGN_BUY_SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� C ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233335555&BuyClctNo=N000000003&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20130419&TrscPfmcRegDt=20130429&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=220&UseSplyAmt=200&UseVatAmt=20&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130416&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000003"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4446","BUY_CLCT_NO":"N000000002","CRD_APV_DT":"2013-10-18","BUY_DT":"2013-10-23","TRSC_PFMC_REG_DT":"2013-11-01","OGN_BUY_SUM_AMT":"500","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� E ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01003","GRIDKEY":"&CrdNo=1111222233334446&BuyClctNo=N000000002&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20131023&TrscPfmcRegDt=20131101&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=500&UseSplyAmt=455&UseVatAmt=45&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20131018&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000003"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000004","CRD_APV_DT":"2013-12-02","BUY_DT":"2013-12-04","TRSC_PFMC_REG_DT":"2013-12-17","OGN_BUY_SUM_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� D ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233335555&BuyClctNo=N000000004&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20131204&TrscPfmcRegDt=20131217&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=9060&UseSplyAmt=8237&UseVatAmt=823&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20131202&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000003"};

            } else if(frm.searchDv.value == "1") {              
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"N000000000","CRD_APV_DT":"2013-02-26","BUY_DT":"2013-03-04","TRSC_PFMC_REG_DT":"2013-03-13","ITXP_REG_NCNT":"1","SPLR_CO_NM":"�� A ������","SPLR_BZ_REG_NO":"222-22-22222","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334444&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=N000000000&CrdApvDt=20130226&BuyDt=20130304&TrscPfmcRegDt=20130313&ItxpRegNcnt=1&SplrBzRegNo=2222222222&SplrCoNm=�� A ������&UseSplyAmt=200&UseVatAmt=20&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4445","BUY_CLCT_NO":"N000000001","CRD_APV_DT":"2013-03-19","BUY_DT":"2013-03-22","TRSC_PFMC_REG_DT":"2013-03-27","ITXP_REG_NCNT":"2","SPLR_CO_NM":"�� B ������","SPLR_BZ_REG_NO":"333-33-33333","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334445&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=N000000001&CrdApvDt=20130319&BuyDt=20130322&TrscPfmcRegDt=20130327&ItxpRegNcnt=1&SplrBzRegNo=3333333333&SplrCoNm=�� B ������&UseSplyAmt=1000&UseVatAmt=100&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000002","CRD_APV_DT":"2013-04-16","BUY_DT":"2013-04-19","TRSC_PFMC_REG_DT":"2013-04-29","ITXP_REG_NCNT":"3","SPLR_CO_NM":"�� C ������","SPLR_BZ_REG_NO":"444-44-44444","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233335555&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=N000000002&CrdApvDt=20130416&BuyDt=20130419&TrscPfmcRegDt=20130429&ItxpRegNcnt=1&SplrBzRegNo=4444444444&SplrCoNm=�� C ������&UseSplyAmt=200&UseVatAmt=20&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4446","BUY_CLCT_NO":"N000000003","CRD_APV_DT":"2013-10-18","BUY_DT":"2013-10-23","TRSC_PFMC_REG_DT":"2013-11-01","ITXP_REG_NCNT":"4","SPLR_CO_NM":"�� E ������","SPLR_BZ_REG_NO":"555-55-55555","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334446&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=N000000003&CrdApvDt=20131018&BuyDt=20131023&TrscPfmcRegDt=20131101&ItxpRegNcnt=1&SplrBzRegNo=5555555555&SplrCoNm=�� E ������&UseSplyAmt=455&UseVatAmt=45&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5556","BUY_CLCT_NO":"N000000004","CRD_APV_DT":"2013-12-02","BUY_DT":"2013-12-04","TRSC_PFMC_REG_DT":"2013-12-17","ITXP_REG_NCNT":"5","SPLR_CO_NM":"�� D ������","SPLR_BZ_REG_NO":"666-66-66666","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233335556&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=N000000004&CrdApvDt=20131202&BuyDt=20131204&TrscPfmcRegDt=20131217&ItxpRegNcnt=1&SplrBzRegNo=6666666666&SplrCoNm=�� D ������&UseSplyAmt=8237&UseVatAmt=823&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
                
            } else {}
            //������¹߱�����
            document.all["idVrtlAcctNo"].innerHTML="080000000080";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="B����";
            document.all["idVrtlAcctIssuDt"].innerHTML="2014-02-18";
            document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="�̻��";
            document.frm.ISSU_BNK_CD.value="003";
            document.frm.ISSU_DT.value="20140218";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="080000000080";
            //�������
            document.frm.SacPrgrSt.value = "0";             
            
        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){
            if(frm.searchDv.value == "4") {
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"N000000000","CRD_APV_DT":"2013-02-26","BUY_DT":"2013-03-04","TRSC_PFMC_REG_DT":"2013-03-13","OGN_BUY_SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� A ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233334444&BuyClctNo=N000000000&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20130304&TrscPfmcRegDt=20130313&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=220&UseSplyAmt=200&UseVatAmt=20&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130226&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000004"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4445","BUY_CLCT_NO":"N000000001","CRD_APV_DT":"2013-03-19","BUY_DT":"2013-03-22","TRSC_PFMC_REG_DT":"2013-03-27","OGN_BUY_SUM_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� B ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233334445&BuyClctNo=N000000001&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20130322&TrscPfmcRegDt=20130327&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=1100&UseSplyAmt=1000&UseVatAmt=100&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130319&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000004"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000003","CRD_APV_DT":"2013-04-16","BUY_DT":"2013-04-19","TRSC_PFMC_REG_DT":"2013-04-29","OGN_BUY_SUM_AMT":"220","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� C ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233335555&BuyClctNo=N000000003&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20130419&TrscPfmcRegDt=20130429&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=220&UseSplyAmt=200&UseVatAmt=20&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20130416&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000004"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4446","BUY_CLCT_NO":"N000000002","CRD_APV_DT":"2013-10-18","BUY_DT":"2013-10-23","TRSC_PFMC_REG_DT":"2013-11-01","OGN_BUY_SUM_AMT":"500","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� E ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01003","GRIDKEY":"&CrdNo=1111222233334446&BuyClctNo=N000000002&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20131023&TrscPfmcRegDt=20131101&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=500&UseSplyAmt=455&UseVatAmt=45&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20131018&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000004"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000004","CRD_APV_DT":"2013-12-02","BUY_DT":"2013-12-04","TRSC_PFMC_REG_DT":"2013-12-17","OGN_BUY_SUM_AMT":"9060","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_ST_NM":"","RTRT_ST":"B10010","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","SPLR_CO_NM":"�� D ������","BUTR_ID":"C201102162373374","VAT_PROC_DV":"B01001","GRIDKEY":"&CrdNo=1111222233335555&BuyClctNo=N000000004&ButrId=C201102162373374&CrdcoCd=IB&CrdcoNm=A ī��&BuyDt=20131204&TrscPfmcRegDt=20131217&ItxpRegNcnt=1&SplrBzRegNo=1078529173&SplrCoNm=�� A ������&OgnBuySumAmt=9060&UseSplyAmt=8237&UseVatAmt=823&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&RtrtSn=1&RtrtSt=B10010&RcmsSetlDt=20131202&AgrmtInstId=10112249&AgrmtSeqNo=G00000000000004"};

            } else if(frm.searchDv.value == "1") {
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4444","BUY_CLCT_NO":"N000000000","CRD_APV_DT":"2013-02-26","BUY_DT":"2013-03-04","TRSC_PFMC_REG_DT":"2013-03-13","ITXP_REG_NCNT":"1","SPLR_CO_NM":"�� A ������","SPLR_BZ_REG_NO":"222-22-22222","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334444&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=N000000000&CrdApvDt=20130226&BuyDt=20130304&TrscPfmcRegDt=20130313&ItxpRegNcnt=1&SplrBzRegNo=2222222222&SplrCoNm=�� A ������&UseSplyAmt=200&UseVatAmt=20&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4445","BUY_CLCT_NO":"N000000001","CRD_APV_DT":"2013-03-19","BUY_DT":"2013-03-22","TRSC_PFMC_REG_DT":"2013-03-27","ITXP_REG_NCNT":"2","SPLR_CO_NM":"�� B ������","SPLR_BZ_REG_NO":"333-33-33333","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334445&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=N000000001&CrdApvDt=20130319&BuyDt=20130322&TrscPfmcRegDt=20130327&ItxpRegNcnt=1&SplrBzRegNo=3333333333&SplrCoNm=�� B ������&UseSplyAmt=1000&UseVatAmt=100&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5555","BUY_CLCT_NO":"N000000002","CRD_APV_DT":"2013-04-16","BUY_DT":"2013-04-19","TRSC_PFMC_REG_DT":"2013-04-29","ITXP_REG_NCNT":"3","SPLR_CO_NM":"�� C ������","SPLR_BZ_REG_NO":"444-44-44444","USE_SPLY_AMT":"200","USE_VAT_AMT":"20","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233335555&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=N000000002&CrdApvDt=20130416&BuyDt=20130419&TrscPfmcRegDt=20130429&ItxpRegNcnt=1&SplrBzRegNo=4444444444&SplrCoNm=�� C ������&UseSplyAmt=200&UseVatAmt=20&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-4446","BUY_CLCT_NO":"N000000003","CRD_APV_DT":"2013-10-18","BUY_DT":"2013-10-23","TRSC_PFMC_REG_DT":"2013-11-01","ITXP_REG_NCNT":"4","SPLR_CO_NM":"�� E ������","SPLR_BZ_REG_NO":"555-55-55555","USE_SPLY_AMT":"455","USE_VAT_AMT":"45","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233334446&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=N000000003&CrdApvDt=20131018&BuyDt=20131023&TrscPfmcRegDt=20131101&ItxpRegNcnt=1&SplrBzRegNo=5555555555&SplrCoNm=�� E ������&UseSplyAmt=455&UseVatAmt=45&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};
            	gridValue5[cnt5++] = {"CRD_NO":"1111-2222-3333-5556","BUY_CLCT_NO":"N000000004","CRD_APV_DT":"2013-12-02","BUY_DT":"2013-12-04","TRSC_PFMC_REG_DT":"2013-12-17","ITXP_REG_NCNT":"5","SPLR_CO_NM":"�� D ������","SPLR_BZ_REG_NO":"666-66-66666","USE_SPLY_AMT":"8237","USE_VAT_AMT":"823","RTRT_ST_NM":"","RTRT_ST":"B10099","RTRT_FIX_SPLY_AMT":"0","RTRT_FIX_VAT_AMT":"0","BUTR_ID":"C201111212383103","GRIDKEY":"&CrdNo=1111222233335556&ButrId=C201111212383103&CrdcoCd=IB&CrdcoNm=A ī��&BuyClctNo=N000000004&CrdApvDt=20131202&BuyDt=20131204&TrscPfmcRegDt=20131217&ItxpRegNcnt=1&SplrBzRegNo=6666666666&SplrCoNm=�� D ������&UseSplyAmt=8237&UseVatAmt=823&RtrtSn=17&RtrtSt=B10099&RtrtFixSplyAmt=0&RtrtFixVatAmt=0"};

                
            } else {}
            
            //������¹߱�����
            document.all["idVrtlAcctNo"].innerHTML="080000000080";
            document.all["idVrtlAcctIssuBnkNm"].innerHTML="B����";
            document.all["idVrtlAcctIssuDt"].innerHTML="2013-05-25";
            document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
            document.all["idPlanAmt"].innerHTML="0";
            document.all["idValdEndDt"].innerHTML="";
            document.all["idPayUsagDv"].innerHTML="�̻��";
            document.frm.ISSU_BNK_CD.value="020";
            document.frm.ISSU_DT.value="20130525";
            document.frm.ISSU_ST.value="1";
            document.frm.EXIST_VACC.value="Y";
            document.frm.VrtlAcctNo.value="080000000080";         
            //�������
            document.frm.SacPrgrSt.value = "1";          
            
        }

    }finally{
    	if(frm.searchDv.value == "1"){ //���������
	        gridData = gridValue5;    //��ȸ��� JSON �� ��������        
	        rMateGridSetData();  //rMateGrid ����
    	}else{ //��������
    		gridData5 = gridValue5;    //��ȸ��� JSON �� ��������        
            rMateGridSetData5();  //rMateGrid ����
    	}
    }
}


var cnt4 = 0;
function SetData2(seqNo){   
    var frm = document.frm;    
    try{
        cnt4 = 0;       
        var gridValue4 = [];
        
        //1. �ű԰���   
        if("G00000000000001" == seqNo){
            
        //2. �������
        }else if("G00000000000002" == seqNo){
        	gridValue4[cnt4++] = {"CRD_NO":"1111-2222-3333-4444","OGN_BUY_CLCT_NO":"H000000000","APV_DT":"2014-02-04","OGN_BUY_DT":"2014-02-06","BUY_DT":"2014-02-12","KRW_BUY_SUM":"100","OVRS_USE_YN":"����","REG_YN":"�̵��","BUY_APV_NO":"H000000000","REG_SEQ":"0","GRIDKEY":"&CrdNo=1111222233334444&OgnBuyClctNo=H000000000&ApvDt=20140204&BuyDt=20140212&KrwBuySum=100&OvrsUseYn=A&RegYn=N&BuyApvNo=H000000000&RegSeq=0",};

        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){
        	gridValue4[cnt4++] = {"CRD_NO":"1111-2222-3333-4444","OGN_BUY_CLCT_NO":"N000000000","APV_DT":"2013-02-26","OGN_BUY_DT":"2013-03-04","BUY_DT":"2013-03-12","KRW_BUY_SUM":"100","OVRS_USE_YN":"����","REG_YN":"�̵��","BUY_APV_NO":"N000000000","REG_SEQ":"0","GRIDKEY":"&CrdNo=1111222233334444&OgnBuyClctNo=N000000000&ApvDt=20140226&BuyDt=20140312&KrwBuySum=50&OvrsUseYn=A&RegYn=N&BuyApvNo=N000000000&RegSeq=0",};
        	gridValue4[cnt4++] = {"CRD_NO":"1111-2222-3333-5555","OGN_BUY_CLCT_NO":"N000000003","APV_DT":"2014-04-16","OGN_BUY_DT":"2013-04-19","BUY_DT":"2013-04-24","KRW_BUY_SUM":"100","OVRS_USE_YN":"����","REG_YN":"�̵��","BUY_APV_NO":"N000000003","REG_SEQ":"0","GRIDKEY":"&CrdNo=1111222233335555&OgnBuyClctNo=N000000003&ApvDt=20140416&BuyDt=20140424&KrwBuySum=20&OvrsUseYn=A&RegYn=N&BuyApvNo=N000000003&RegSeq=0",};

        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){    
        
        }


     
     
    }finally{             
        gridData4 = gridValue4;    //��ȸ��� JSON �� ��������
        rMateGridSetData4();  //rMateGrid ����
    }
}



function search(seqNo){
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        SetData(seqNo); //Insert    Grid        
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
        searchAlert1();
        
    }
}

function search2(seqNo){
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor = "wait";
        SetData2(seqNo); //Insert    Grid        
        document.body.style.cursor = "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
        searchAlert2();
    }
}


function searchAlert1(){
	   if(cnt5<1){      
	       window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
	   }     
	}
function searchAlert2(){
	   if(cnt4<1){      
	       window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
	   }     
	}
	
</script>           
            
<!-- ======== 2014 �׸��� ��ü �۾� =========-->

</body>
</html> 