<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T22_01_00.jsp
 *   Description        : ��������ü��� ��û
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

<title>��������ü��� ��û &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
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
                    
                        <div class="navbox"><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_txt_on">��������ü��� ��û</a></div>

                        <ul>

                            <li><a href="#" onclick="fn_url('/t02/t22/T22_01_00.jsp'); return false;" class="menu_3dep_on">��������ü��� ��û</a></li>
                
                        </ul>
                        <p class="t05 b05"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                    </div>


                    <div class="sub_bg">
                    
                        <div class="navbox"><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_txt">ī�����������û</a></div>

                        <ul>

                            <li><a href="#" onclick="fn_url('/t02/t23/T23_01_00.jsp'); return false;" class="menu_3dep">ī�����������û</a></li>
                
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


        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->
            
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u22_01_00_t.gif" alt="��������ü��� ��û"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>�����񺹿�</li>
                       <li><img src="/images/common/arr.gif" alt=" " />��������ü��� ��û</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">��������ü��� ��û</span></li>
						
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t30"></div>
            <!-------------------------------------------------------------------------------->
            <!--  ����� ���� -->
            <!-------------------------------------------------------------------------------->
            <!-- 
                  ����߽� ������ȸ �ڵ��ϼ� ����� ����
                  ������ȸ ��Ƽüũ ��� isSbjtAutoSchMulti : true
                  ������ȸ �̱۸��      isSbjtAutoSchMulti : false
                  ��ĳ�� �̼��� �ۼ� 20110426 
            -->
            <!-------------------------------------------------------------------------------->
            <% 
               boolean isSbjtAutoSchMulti = false;  //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�  
               boolean beSearchBtn        = false;  //��ȸ��ư ��������(����޼ҵ�:uf_beSearchBtn();)
            %>            

   			<!-- *************************  2014 �׸��� ��ü �۾� ��������( check box ������)    ************************* -->		          
			<!-- //auto search start -->
			<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
			<!-- //auto search end -->            
 			<!-- *************************  2014 �׸��� ��ü �۾� ��������( check box ������)    ************************* --> 
            
                             
            <div class="cb b10"></div>
			<form name="frm" method="post">
			<input type="hidden" name="ISSU_BNK_CD"        value=""  />   <!-- ������¹߱������ڵ� -->
			<input type="hidden" name="EXIST_VACC"         value=""  />   <!-- ������¹߱޿��� -->
			<input type="hidden" name="VrtlAcctNo"         value=""  />   <!-- ������¹�ȣ -->
			<input type="hidden" name="PayPlanDtlsRegNcnt" value="0" />   <!-- ������ȯ�޿�û�Ǽ� -->
			<input type="hidden" name="PlanAmt"            value="0" />   <!-- ������ȯ�޿�û�ݾ� -->
			<input type="hidden" name="PrsPgno"            value="0" />   <!-- ������������ȣ-->
			<input type="hidden" name="TrSupYn"            value="N" />   <!-- �ŷ���ӿ���-->
			<!-- �߰� -->
			<input type="hidden" name="MNG_ID"             value="" />    <!-- ������� ID -->
			<input type="hidden" name="PMS_ID"             value="" />    <!-- ������ ID -->
			<input type="hidden" name="BZ_CLAS_CD"         value="" />    <!-- ����з�ID -->
			<input type="hidden" name="SBJT_ID"            value="" />    <!-- ���� ID -->
			<input type="hidden" name="PRS_SBJT_STG"       value="" />    <!-- �����ܰ� -->
			<input type="hidden" name="ANNL"               value="" />    <!-- ���� -->
			<input type="hidden" name="AGRMT_SEQ_NO"       value="" />    <!-- �����ȣ -->
			<input type="hidden" name="AGRMT_INST_ID"      value="" />    <!-- ������ ID -->
			<input type="hidden" name="SacPrgrSt"          value="" />    <!-- �����������-->
			<!-- �߰� -->
			<input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" />
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />
			<!-- ------------------------       ������¹߱����� ��ȸ����START      ------------------------ -->
			<h3>������¹߱�����</h3>
			<div class="t10">      
			<table width="704" border="0" cellspacing="0" cellpadding="0" summary="������¹߱�����" class="tbl_type03">
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
				      <td class="ac"><input type="hidden" name="ISSU_BNK_CD" value="" /><span id="idVrtlAcctIssuBnkNm"></span></td>          
				      <td class="ac"><input type="hidden" name="ISSU_DT" value="" /><span id="idVrtlAcctIssuDt"></span></td>          
				      <td class="ac"><input type="hidden" name="ISSU_ST" value="" /><span id="idVrtlAcctIssuSt"></span></td>          
				      <td class="ac" id="idPayUsagDv"></td>          
				      <td class="ar" id="idPlanAmt"></td>          
				      <td class="ac" id="idValdEndDt"></td>      
			      </tr>
			      </tbody>
			</table>
			</div>
			<!-- ------------------------       ������¹߱����� ��ȸ����END        ------------------------ -->
            <div class="cb b10"></div>
            <h3>��볻����ȸ</h3>      
            <!-- �˻��� start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>��볻����ȸ �˻�</legend>
                        <table width="680" summary="��볻����ȸ �˻�" class="tbl_search">
                        <caption>��볻����ȸ</caption>
						<colgroup>
							<col width="12%" />
							<col width="88%" />
						</colgroup>
						<tbody>
						<tr>
							<th scope="col">��������</th>
							<td>
                                <select id="BzExpExctnEvdcDv_sel" name="BzExpExctnEvdcDv_sel">
                                    <option value="">��ü</option>
                                    <option value="T">���ڼ��ݰ�꼭</option>
                                    <option value="E">��Ÿ����</option>
                                </select>
							</td>
						</tr>
						<tr>
							<th scope="col">�������</th>
                            <td colspan="3">
                                <%@ include file="/inc/set_date_btn.jsp" %>
                                <%@ include file="/inc/set_date_week.jsp" %>
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
            <div class="search_bt1 ar">
                <a href="#" class="bt_search" title="��ȸ" onclick="uf_ExecListSearch('S'); return false;"></a>
            </div>
            <!-- //��ȸ ����ȸ ��ư end// -->
            
            <div class="cb t10"></div>
            
            <!-- *************************  2014 �׸��� ��ü �۾� rMateGrid ************************* -->
            <div class="total_box">
                <p class="fl t03">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt">0</span> ��/<span id="InqPrsTotlCnt">0</span> ��]</p>
                <p class="fl l05 b05"><a href="#" onclick="uf_checkAll_rMate(); return false;"><img src="/images/bt/bt_total.gif" alt="��ü����" valign="top" /></a></p>         
            </div>            
            <!-- //�ѰǼ�/�μ� ���� ��ư end// -->
            <!-- �׸��� start -->
            <div>
                <script type="text/javascript">                
                	rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "387", "#FFFFFF", "transparent");
                </script>
	            <!-- �󼼺��� ���̾� �˾� -->
	            <div id="layerPopup" style="display:none;z-index:999999;">
	                <div id="layerPopupTitle" style="width:355px;height:30px;">
	                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
	                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="�ݱ�"></a>
	                </div>
	                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
	            </div>                
            </div>            
            <!-- *************************  2014 �׸��� ��ü �۾� rMateGrid ************************* -->            
            
            
            <!-- ��ü��� start -->
            <div class="t10">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="��ü���" class="tbl_type03">
                <caption>��ü���</caption>
				<colgroup>
					<col width="25%" />
					<col width="25%" />
					<col width="25%" />
					<col width="25%" />
				</colgroup>
				<thead>
				<tr>
					<th scope="col">��ü��� ��û�Ǽ�</th>
					<th scope="col">��ü��� ��û�ݾ�</th>
					<th scope="col">��ü��� ���ޱݾ�</th>
					<th scope="col">��ü��� �ΰ���ġ����</th>
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
            <!-- //��ü��� end// -->  
            <!-- action bt start -->
            <div class="action_bt ar">
                <a href="#" class="bt_action9" title="������κ���ҿ�û" onclick="uf_psvreqpart(); return false;"><span class="bt_sp1">������κ���ҿ�û</span></a>
                <a href="#" class="bt_action9" title="��������ü��ҿ�û" onclick="uf_psvreq(); return false;"><span class="bt_sp">��������ü��ҿ�û</span></a>
            </div>
            <!-- //action bt end// --> 
            </form>
			<!-- �ȳ� ���̵� start -->
			<div class="guide_box1" id="guide">
				<div class="guide_boxt1">
					<p class="txt_title fl">��������ü��ҿ�û �ȳ�</p> 
					<p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="����" class="vc"/></a></p>
				</div>
				<div class="guide_boxc1">
					<ul>
						<li>��������ü��ҿ�û�� �ǽð�������ü����� ��ü��(���ڼ��ݰ�꼭, ��Ÿ����)�� ���ؼ� �Ѿ� �� �κ� �ݾ��� ����Ͽ� ������� ������ �� ����մϴ�.</li>
						<li>��ü�Ϸ�� ������ ����� �Ѿ��� ����ϽǶ����� '��������ü��ҿ�û'�� Ŭ���ϼ���.</li>
						<li>��ü�Ϸ�� ������ �κбݾ��� ����ϽǶ����� '������κ���ҿ�û'�� Ŭ���ϼ���.</li>
					</ul>
					<p class="tip">�κ���Ҵ� �ݾ��� �����ϴ� �κа� �߰� ���� ���ε尡 �ʼ��Դϴ�.</p>
					<ul>
						<li>��������ü��ҿ�û �ݾ��� õ���� �̻��� ��� ������ ������ �ʿ��մϴ�.</li>
					</ul>
				</div>
				<p class="guide_boxb1"></p>
			</div>
			<!-- //�ȳ� ���̵� end// -->
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

	/******************************************************************
	 * uf_ExecListSearch    ��볻�������ȸ
	 * @param
	 * @return
	******************************************************************/
	function uf_ExecListSearch(SchGb){
	    var frm   = document.frm;
	    var sdate = frm.InqStrDt.value;
	    var edate = frm.InqEndDt.value;
	
	    // ������� �ʱ�ȭ
	    frm.EXIST_VACC.value    = "N";
	    frm.VrtlAcctNo.value    = "";
	
	 	// ������ȸ ���� Ȯ��
	    if(!bAutoSbjtSch()) return;
	 
	    if( isSubmit() ) return;         // ����ó��
	    
	    var agrmtSeqNoVal = frm.AGRMT_SEQ_NO.value;
	    
	    if(sdate>edate){
	        alert("��ȸ���۳�¥�� ���ᳯ¥���� Ŭ �� �����ϴ�..");
	        return;
	    }

		/*** 2014 �׸��屳ü�۾� �׸����̺�Ʈ üũ�� �ʱ�ȭ***/
		uf_init();
		selectorColumn = gridRoot.getObjectById("selector");
	    selectorColumn.setAllItemSelected(false);
		/*** 2014 �׸��屳ü�۾� �׸����̺�Ʈ üũ�� �ʱ�ȭ***/
		
	    /* *************************  2014 �׸��� ��ü �۾� rMateGrid  ************************* */
	    var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
    	rMateGridDataInit();
    	uf_proce_display_on();  //�ε���
    	setTimeout(function(){search(seqNo);}, 1000);   // 1���� ���� 1000 = 1��s   	
	    /* *************************  2014 �׸��� ��ü �۾� rMateGrid   ************************* */
	}
	
	//�Ķ���� ����
	function uf_autoSbjtSchCallBack(param){
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
		
		rMateGridLayoutInit_rMate();
	}
	
	/******************************************************************
	 * uf_Click         �׸����̺�Ʈ,üũ���� �ݾ��յ���
	 * @param
	 * @return
	******************************************************************/
	function uf_Click(){
 
 		/*** 2014 �׸��屳ü�۾� �׸����̺�Ʈ üũ���� ***/
		selectorColumn = gridRoot.getObjectById("selector");
		var data = selectorColumn.getSelectedIndices();
	    var ReqCnt = 0;
	    var ReqAmt = 0;
	    var ReqSplAmt = 0;
	    var ReqVatAmt = 0;
	    
	    var checkBox = new Array();;
	    
	    
        // üũ���ɳ��� : ������ȯ���̽�û����, !�ΰ������� ��û��
        // �ΰ���������û�� �� ��û�Ϸ���� ������ȯ����û������
	    if(data.length > 0 ){
	       for(var i=0; i<data.length; i++){
	    	var isCheck = true;
	    	var dataRow = gridRoot.getItemAt(data[i]);
	        if(dataRow.RTRT_ST != "" && (dataRow.RTRT_ST == "B1000A" || dataRow.RTRT_ST == "B10001")){	        	
	            alert("��������ü��� ���û �Ǵ� �ΰ���������û���� ������ ��û �� �� �����ϴ�.");	            
	            //selectorColumn.setAllItemSelected(false);   //��������
	            
	            //uf_Click("");
	            isCheck = false;
	            continue;	            
	        }
	        if(isCheck){
	        	checkBox.push(data[i]);
	        }
	       }
	       
	       if(data.length != checkBox.length ){
		       selectorColumn.setAllItemSelected(false);   //��������
		       selectorColumn.setSelectedIndices(checkBox);
	       }
	       data = checkBox;
	       
	    }

	    if(data != "" && data.length > 0 ){
	       for(var i=0; i<data.length; i++){	
	    	   var dataRow = gridRoot.getItemAt(data[i]);
	       
	           ReqAmt += Number(dataRow.USE_SPLY_AMT) - Number(dataRow.RTRT_FIX_SPLY_AMT);
	           ReqAmt += Number(dataRow.USE_VAT_AMT) - Number(dataRow.VAT_PROC_RTRT_AMT);
	           ReqVatAmt += Number(dataRow.USE_VAT_AMT) - Number(dataRow.VAT_PROC_RTRT_AMT);
	           ReqSplAmt += Number(dataRow.USE_SPLY_AMT) - Number(dataRow.RTRT_FIX_SPLY_AMT);
	           
	           ReqCnt++;
	       }  
	    }     
	    frm.PayPlanDtlsRegNcnt.value        = ReqCnt;            // ��������ü��ҿ�û�Ǽ�
	    frm.PlanAmt.value                   = ReqAmt.toString(); // ��������ü��ҿ�û�ݾ�
	    
		$("#reqcnt").html(ReqCnt);
		$("#reqamt").html(ReqAmt);
		$("#reqsplamt").html(ReqSplAmt);
		$("#reqvatamt").html(ReqVatAmt); 
		/*** 2014 �׸��屳ü�۾� �׸����̺�Ʈ üũ���� ***/
	}
	
	/******************************************************************
	 * uf_psvreq                ������ȯ�޿�û pop-upȣ��
	 * @param
	 * @return
	******************************************************************/
	function uf_psvreq(){

	    var frm     = document.frm;	    
	    var idx     = -1;
	    var chkCnt  = 0;
	    
	    if( isSubmit() ) return;                // ����ó��
	
	    if(!bAutoSbjtSch())     return;         // ������ȸ����
	    if(!chkGridSelectedCount_rMate(gridRoot, "")) return false;      // �׸��弱�ó���Ȯ��	    
	    if(!uf_chkVaccState())  return false;   // ���»���üũ
	    
	    if(frm.SacPrgrSt.value == "1" || frm.SacPrgrSt.value == "2" || frm.SacPrgrSt.value == "3"){
	        alert("���� ������ �� �����̹Ƿ� ��������ü����� ��û�Ͻ� �� �����ϴ�.");
	        return false;
	    }   
	    
	    if(!(frm.PlanAmt.value > 0)){
	        alert("��ü��� ��û�ݾ��� \"0\"�� �Դϴ�.");
	        return false;
	    }    

	    
        //�׸��� ���� üũ
        selectorColumn = gridRoot.getObjectById("selector");
        //���õ� row�� �� üũ
        var data = selectorColumn.getSelectedIndices();     
        
		for(var i=0; i<data.length; i++){
			var dataRow = gridRoot.getItemAt(data[i]);
		
	    	if(dataRow.RTRT_ST != "" && (dataRow.RTRT_ST == "B1000A" || dataRow.RTRT_ST == "B10001")){   // �������� ������ ��û �Ұ�....
	            alert("���û�� ������ �ٽ� ��û�� �� �����ϴ�.");
	            return false;
	        }
	    	
	    	if (Number(dataRow.EXCTN_AMT) - Number(dataRow.RTRT_FIX_AMT) <= 0) {    		
	            alert("��Ұ��ɱݾ��� �������� ���� ���� ��û�� �� �����ϴ�.");
	            return false;
	    	}
	    	
	    	if (data.length > 1) {
	            if (Number(dataRow.EXCTN_AMT) >= 10000000) {
	                alert("���ð� �� 1õ���� �̻� ���� �����մϴ�. ��ü�ݾ��� 1õ���� �̻���� ������ �����Ͽ� ��û�Ͻ� �� �����ϴ�.");
	                return false;
	            }
	        }
	    	get2post(frm, dataRow.GRIDKEY);
	        
		}   
		get2post(frm, "AUTO_MAP_KEY=" + $("#SBJT_MAP_KEYS").val());
    
		uf_frmNewWinNs(frm, '/t02/t22/T22_01_20.jsp', 'PSVPOP1', '770', '550');
	    removeTempAttribute(frm);
	
	}
	
	/******************************************************************
	 * uf_psvreqpart                ������κ�ȯ�޿�û pop-upȣ��
	 * @param
	 * @return
	******************************************************************/
	function uf_psvreqpart(){
 		
		if(!bAutoSbjtSch())     return;         // ������ȸ����
		
	    var frm     = document.frm;	    
	    var idx     = -1;
	    	    
	    if( isSubmit() ) return;                // ����ó��	    
	    if(!chkGridOneSelectedCount_rMate(gridRoot, "")) return false;      // �׸��弱�ó���Ȯ��	    
	    if(!uf_chkVaccState())  return false;   // ���»���üũ
	    
	    
	    if(frm.SacPrgrSt.value == "1" || frm.SacPrgrSt.value == "2" || frm.SacPrgrSt.value == "3"){
	        alert("���� ������ �� �����̹Ƿ� ������κ���Ҹ� ��û�Ͻ� �� �����ϴ�.");
	        return false;
	    }   
	    
	  //�׸��� ���� üũ
        selectorColumn = gridRoot.getObjectById("selector");
        //���õ� row�� �� üũ
        var data = selectorColumn.getSelectedIndices();     
        
        for(var i=0; i<data.length; i++){
            var dataRow = gridRoot.getItemAt(data[i]);

	        if(dataRow.RTRT_ST != "" && (dataRow.RTRT_ST == "B1000A" || dataRow.RTRT_ST == "B10001")){   // �������� ������ ��û �Ұ�....
	            alert("���û�� ������ �ٽ� ��û�� �� �����ϴ�.");
	            return false;
	        }
	    	
	        if (Number(dataRow.EXCTN_AMT) - Number(dataRow.RTRT_FIX_AMT) <= 0) {
	            alert("��Ұ��ɱݾ��� �������� ���� ���� ��û�� �� �����ϴ�.");
	            return false;
	        }
	        get2post(frm, dataRow.GRIDKEY);
        }
        
        
        
        var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        
        get2post(frm, "AgrmtSeqNo=" + seqNo);
       
        uf_frmNewWinNs(frm, '/t02/t22/T22_01_30.jsp', 'PSVPOP1', '770', '760');
	    removeTempAttribute(frm);	    
	}
	
	function uf_Click2(inx) {
		
	    var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
        
	    get2post(frm, "AgrmtSeqNo=" + seqNo);
        
 		uf_frmNewWinNs(document.frm, '/t02/t22/T22_01_10.jsp', 'RCMS_MKE_POPUP1', '766', '300');
	    removeTempAttribute(document.frm);  
	    
	}
	
	/******************************************************************
	 * uf_psvreq : ȭ���ܿ���  ��Ŭ���� ��ȸ���� ���������� ������ ��ȸ������ hidden�� ���� -> ����
	 * @param
	 * @return
	******************************************************************/
	function setRetriveCondition() {
		 
	    var frmRtr  = document.rtr_str_form;        
	    var frm     = document.frm;
	
	    frm.MNG_ID.value        = frmRtr.S_MNG_ID.value;
	    frm.PMS_ID.value        = frmRtr.S_PMS_ID.value;
	    frm.BZ_CLAS_CD.value    = frmRtr.S_BZ_CLAS_CD.value;
	    frm.SBJT_ID.value       = frmRtr.S_SBJT_ID.value;
	    frm.PRS_SBJT_STG.value  = frmRtr.S_PRS_SBJT_STG.value;
	    frm.ANNL.value          = frmRtr.S_ANNL.value;
	    frm.AGRMT_SEQ_NO.value  = frmRtr.S_AGRMT_SEQ_NO.value;
	    frm.AGRMT_INST_ID.value = frmRtr.S_AGRMT_INST_ID.value;
	    
	}
	 
	/******************************************************************
	 * uf_init : ȭ�� �ʱ�ȭ
	 * @param
	 * @return
	******************************************************************/ 
	function uf_init() {
	
		frm.PayPlanDtlsRegNcnt.value        = ""; 
		frm.PlanAmt.value                   = ""; 	 
		 
		document.all['reqcnt'].innerHTML    = "0";
	    document.all['reqamt'].innerHTML    = "0";
	    document.all['reqsplamt'].innerHTML = "0";
	    document.all['reqvatamt'].innerHTML = "0";	
	
	}
	
</script>


<script type="text/javascript">

$(document).ready(function() {
    $("a#example1").fancybox();
	$("a#example2").fancybox();	
	  
    $('#btn-guide').click(function(){
        if( $('#guide').css('height') == '17px' ){
            $('#guide').css({overflow:'hidden'}).animate({height:190},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
        }else{
           $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
        }
	    return false;
   });
    
	/* *************************  2014 �׸��� ��ü �۾� rMateGrid �ʱ�ȭ  ************************* */    
    rMateGridInit();
});


/* **********************  2014 �׸��� ��ü �۾� rMateGrid setting START ***********************  */

var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
<NumberFormatter id=\"numfmt\" />\
<SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
<SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
<DataGrid id=\"dg1\" lockedColumnCount=\"2\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
    <columns>\
    <DataGridColumn dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
    <DataGridSelectorColumn id=\"selector\" 	dataField=\"selector\" 			headerText=\"����\" 					width=\"50\" visible=\"true\" textAlign=\"center\" allowAllSelection=\"false\" allowMultipleSelection=\"true\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"EXCTN_EXEC_DT\"		dataField=\"EXCTN_EXEC_DT\"   	headerText=\"����Ͻ�\"    			width=\"130\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
    <DataGridColumn id=\"TRSC_PFMC_ST\"			dataField=\"TRSC_PFMC_ST\"   	headerText=\"������\"   	 		width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RTRT_TYP_DV_NM\"		dataField=\"RTRT_TYP_DV_NM\"   	headerText=\"����������������\"    	width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"TRSC_EVDC_DV_NM\"		dataField=\"TRSC_EVDC_DV_NM\"  	headerText=\"��������\"    			width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RTRT_ST_NM\"			dataField=\"RTRT_ST_NM\"   		headerText=\"��������\"    			width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"VAT_PROC_DV\"       	dataField=\"VAT_PROC_DV\"   	headerText=\"�ΰ���ó������\"    	width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RCV_ACCT_BNK_CD\"      dataField=\"RCV_ACCT_BNK_CD\"   headerText=\"�Ա�����\"    			width=\"80\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RCV_ACCT_NO\"			dataField=\"RCV_ACCT_NO\"   	headerText=\"�Աݰ��¹�ȣ\"    		width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RCV_ACCT_OWAC_NM\"		dataField=\"RCV_ACCT_OWAC_NM\"  headerText=\"������\"    			width=\"80\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"EXCTN_AMT\"			dataField=\"EXCTN_AMT\"   		headerText=\"��ü�ݾ�\"    			width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"USE_SPLY_AMT\"			dataField=\"USE_SPLY_AMT\"  	headerText=\"���ޱݾ�\" 				width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"USE_VAT_AMT\"			dataField=\"USE_VAT_AMT\"  		headerText=\"�ΰ���ġ����\"   		width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"RTRT_TYP_DV\"			dataField=\"RTRT_TYP_DV\"  		headerText=\"������������\"  	 	width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RTRT_ST\"				dataField=\"RTRT_ST\"  			headerText=\"�������±���\"  	 	width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"TRSC_EVDC_DV\"			dataField=\"TRSC_EVDC_DV\"  	headerText=\"���������ڵ�\"  	 	width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"RTRT_FIX_AMT\"      	dataField=\"RTRT_FIX_AMT\"  	headerText=\"�����ݾ�\" 				width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"    dataField=\"VAT_PROC_RTRT_AMT\" headerText=\"�����ΰ����ݾ�\" 		width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"RTRT_FIX_SPLY_AMT\"    dataField=\"RTRT_FIX_SPLY_AMT\" headerText=\"�������ޱݾ�\" 			width=\"110\" visible=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
    <DataGridColumn id=\"BUTR_ID\"      		dataField=\"BUTR_ID\"  			headerText=\"�������ŷ�����ID\" 	width=\"110\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    <DataGridColumn id=\"GRIDKEY\"      		dataField=\"GRIDKEY\"  			headerText=\"GRIDKEY\" 				width=\"110\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    </columns>\
    <footers>\
    	<DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\">\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"��\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{EXCTN_EXEC_DT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn label=\"��\" textAlign=\"right\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\"  formatter=\"{numfmt}\" textAlign=\"right\" />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
		     <DataGridFooterColumn />\
	     </DataGridFooter>\
	</footers>\
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
        
		//checkbox ���ý� �ջ�
        if (dataField == "selector") {            
/*             if(dataRow.RTRT_ST == "B10001") {
                selectorColumn = gridRoot.getObjectById("selector");
                selectorColumn.setAllItemSelected(false);   //��������                
                alert("��������ü��� ���û �Ǵ� �ΰ���������û���� ������ ��û �� �� �����ϴ�.");
                uf_Click("");
                return false;
            }   */       
        	uf_Click("");
        };        
        
        //�󼼺��� �˾�
        if (dataField == "EXCTN_EXEC_DT") {
        	uf_Click2("");        	
        };         
        
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


//��ü �ڷ�� ���
function setTotCnt(){

	var cnt = getGridRowCount_rMate();
    $("#InqPrsTotlNcnt").html(cnt);
    $("#InqPrsTotlCnt").html(cnt);
   
}

//��ü����/������
function uf_checkAll_rMate() {		
	
	if(isGridData(gridRoot)){  // �׸��� ���� �����ϴ°��
		selectorColumn = gridRoot.getObjectById("selector");
	    selectorColumn.setAllItemSelected(!selectorColumn.getAllItemSelected());
    }
    
    uf_Click();	
}		


/* **********************  2014 �׸��� ��ü �۾� �󼼺��� ***********************  */

var cnt = 0;
function SetData(seqNo){

   try{

	   var gridValue = [];
       
	   cnt = 0;       

	   
       //1. �ű԰���
       if("G00000000000001" == seqNo){
           
           document.frm.SacPrgrSt.value ="";
           
           //���������ȸ
           document.all["idVrtlAcctNo"].innerHTML="0010200000030";
           document.all["idVrtlAcctIssuBnkNm"].innerHTML="A ����";
           document.all["idVrtlAcctIssuDt"].innerHTML="2014-02-21";
           document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
           document.all["idPlanAmt"].innerHTML="0";
           document.all["idValdEndDt"].innerHTML="";
           document.all["idPayUsagDv"].innerHTML="�̻��";
           document.frm.ISSU_BNK_CD.value="003";
           document.frm.ISSU_DT.value="20140217";
           document.frm.ISSU_ST.value="1";
           document.frm.EXIST_VACC.value="Y";
           document.frm.VrtlAcctNo.value="0010200000030";
              
       //2. �������
       }else if("G00000000000002" == seqNo){

    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-03-07 12:27:13","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"E ����","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"1100","USE_SPLY_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140307&ExctnExecTm=122713&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=E ����&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=1100&UseSplyAmt=1100&UseVatAmt=100&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-10 13:07:20","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140210&ExctnExecTm=130720&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000 &RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13 15:46:58","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"B ����","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140113&ExctnExecTm=154658&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=B ����&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=100&UseSplyAmt=91&UseVatAmt=9&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13 15:44:36","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140113&ExctnExecTm=154436&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000 &RcvAcctOwacNm=�� RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};

    	   
           //�����������
           document.frm.SacPrgrSt.value = "";
           //���������ȸ
           document.all["idVrtlAcctNo"].innerHTML="0010200000030";
           document.all["idVrtlAcctIssuBnkNm"].innerHTML="A ����";
           document.all["idVrtlAcctIssuDt"].innerHTML="2014-02-21";
           document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
           document.all["idPlanAmt"].innerHTML="0";
           document.all["idValdEndDt"].innerHTML="";
           document.all["idPayUsagDv"].innerHTML="�̻��";
           document.frm.ISSU_BNK_CD.value="003";
           document.frm.ISSU_DT.value="20140217";
           document.frm.ISSU_ST.value="1";
           document.frm.EXIST_VACC.value="Y";
           document.frm.VrtlAcctNo.value="0010200000030";
           
	   //3. �������(���� ������)
       }else if("G00000000000003" == seqNo){
           
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-06 10:31:01","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"E ����","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130306&ExctnExecTm=103101&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=E ����&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=1100&UseSplyAmt=1000&UseVatAmt=100&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-21 10:44:38","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130321&ExctnExecTm=104438&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10 13:07:20","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130410&ExctnExecTm=130720&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10 13:41:58","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"B ����","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130410&ExctnExecTm=134158&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=B ����&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=100&UseSplyAmt=91&UseVatAmt=9&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-05-10 11:01:45","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130510&ExctnExecTm=110145&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-06-04 10:22:30","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130604&ExctnExecTm=102230&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-06-10 12:12:56","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130610&ExctnExecTm=121256&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-08 16:02:09","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"G ����","RCV_ACCT_NO":"777-77-777777-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130708&ExctnExecTm=160209&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=G ����&RcvAcctBnkCd=003&RcvAcctNo=777777777770&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=100&UseSplyAmt=91&UseVatAmt=9&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-10 10:54:37","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130710&ExctnExecTm=105437&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-22 17:26:25","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"C ����","RCV_ACCT_NO":"300-30-300000","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"20000","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130722&ExctnExecTm=172625&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=C ����&RcvAcctBnkCd=003&RcvAcctNo=30030300000&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=20000&UseSplyAmt=18182&UseVatAmt=1818&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-08-09 09:58:01","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130809&ExctnExecTm=095801&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-03 09:45:27","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130903&ExctnExecTm=094527&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-10 10:15:21","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130910&ExctnExecTm=101521&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-30 17:52:50","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"10000","USE_SPLY_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130930&ExctnExecTm=175250&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=10000&UseSplyAmt=10000&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-10 14:51:08","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131010&ExctnExecTm=145108&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-29 13:12:08","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"F ����","RCV_ACCT_NO":"999-99-999999-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"15000","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131029&ExctnExecTm=131208&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=F ����&RcvAcctBnkCd=003&RcvAcctNo=999999999990&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=15000&UseSplyAmt=13637&UseVatAmt=1363&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-11-08 12:01:28","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131108&ExctnExecTm=120128&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-02 11:50:19","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2150","USE_SPLY_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131202&ExctnExecTm=115019&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2150&UseSplyAmt=2150&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-10 11:10:12","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131210&ExctnExecTm=111012&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-10 10:46:32","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140110&ExctnExecTm=104632&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13 15:46:58","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"H ����","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"300","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140113&ExctnExecTm=154658&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=H ����&RcvAcctBnkCd=003&RcvAcctNo=222222222220&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=300&UseSplyAmt=273&UseVatAmt=27&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-10 15:36:41","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140210&ExctnExecTm=153641&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-28 11:49:19","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140228&ExctnExecTm=114919&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   
           //�����������
           document.frm.SacPrgrSt.value = "0";
           
           //���������ȸ
           document.all["idVrtlAcctNo"].innerHTML="0010200000030";
           document.all["idVrtlAcctIssuBnkNm"].innerHTML="A ����";
           document.all["idVrtlAcctIssuDt"].innerHTML="2014-02-21";
           document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
           document.all["idPlanAmt"].innerHTML="0";
           document.all["idValdEndDt"].innerHTML="";
           document.all["idPayUsagDv"].innerHTML="�̻��";
           document.frm.ISSU_BNK_CD.value="003";
           document.frm.ISSU_DT.value="20140217";
           document.frm.ISSU_ST.value="1";
           document.frm.EXIST_VACC.value="Y";
           document.frm.VrtlAcctNo.value="0010200000030";
           
	   //4. �������(���� ���� �Ϸ�)
       }else if("G00000000000004" == seqNo){
           
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-21 10:44:38","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130321&ExctnExecTm=104438&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-06 10:31:01","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"E ����","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130306&ExctnExecTm=103101&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=E ����&RcvAcctBnkCd=003&RcvAcctNo=555555555550&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=1100&UseSplyAmt=1000&UseVatAmt=100&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-03-21 10:44:38","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130321&ExctnExecTm=104438&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10 13:07:20","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130410&ExctnExecTm=130720&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-04-10 13:41:58","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"B ����","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130410&ExctnExecTm=134158&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=B ����&RcvAcctBnkCd=003&RcvAcctNo=888888888880&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=100&UseSplyAmt=91&UseVatAmt=9&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-05-10 11:01:45","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130510&ExctnExecTm=110145&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-06-04 10:22:30","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130604&ExctnExecTm=102230&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-06-10 12:12:56","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130610&ExctnExecTm=121256&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-08 16:02:09","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"G ����","RCV_ACCT_NO":"777-77-777777-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"100","USE_SPLY_AMT":"91","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130708&ExctnExecTm=160209&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=G ����&RcvAcctBnkCd=003&RcvAcctNo=777777777770&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=100&UseSplyAmt=91&UseVatAmt=9&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-10 10:54:37","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130710&ExctnExecTm=105437&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-07-22 17:26:25","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"C ����","RCV_ACCT_NO":"300-30-300000","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"20000","USE_SPLY_AMT":"18182","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130722&ExctnExecTm=172625&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=C ����&RcvAcctBnkCd=003&RcvAcctNo=30030300000&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=20000&UseSplyAmt=18182&UseVatAmt=1818&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-08-09 09:58:01","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130809&ExctnExecTm=095801&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-03 09:45:27","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2250","USE_SPLY_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130903&ExctnExecTm=094527&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2250&UseSplyAmt=2250&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-10 10:15:21","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130910&ExctnExecTm=101521&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-09-30 17:52:50","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"10000","USE_SPLY_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20130930&ExctnExecTm=175250&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=10000&UseSplyAmt=10000&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-10 14:51:08","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131010&ExctnExecTm=145108&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-10-29 13:12:08","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"F ����","RCV_ACCT_NO":"999-99-999999-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"15000","USE_SPLY_AMT":"13637","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131029&ExctnExecTm=131208&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=F ����&RcvAcctBnkCd=003&RcvAcctNo=999999999990&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=15000&UseSplyAmt=13637&UseVatAmt=1363&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-11-08 12:01:28","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131108&ExctnExecTm=120128&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-02 11:50:19","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2150","USE_SPLY_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131202&ExctnExecTm=115019&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2150&UseSplyAmt=2150&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2013-12-10 11:10:12","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20131210&ExctnExecTm=111012&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-10 10:46:32","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140110&ExctnExecTm=104632&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-01-13 15:46:58","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"H ����","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","EXCTN_AMT":"300","USE_SPLY_AMT":"273","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"T","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140113&ExctnExecTm=154658&TrscPfmcSt=B04110&TrscEvdcDv=T&ItxpRegNcnt=1&RcvBnkNm=H ����&RcvAcctBnkCd=003&RcvAcctNo=222222222220&RcvAcctOwacNm=�� �� ��ü&ExctnAmt=300&UseSplyAmt=273&UseVatAmt=27&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};
    	   gridValue[cnt++] = {"EXCTN_EXEC_DT":"2014-02-10 15:36:41","TRSC_PFMC_ST":"����(��ü) �Ϸ�","TRSC_EVDC_DV_NM":"��Ÿ����","RTRT_ST_NM":"","VAT_PROC_DV":"�ΰ��� ��ó��","RCV_ACCT_BNK_CD":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RTRT_TYP_DV_NM":"","RTRT_TYP_DV":"","RTRT_ST":"","TRSC_EVDC_DV":"E","RTRT_FIX_SPLY_AMT":"0","BUTR_ID":"D201312192251783","GRIDKEY":"&ButrId=D201312192251783&ExctnStgDv=1&ExctnExecDt=20140210&ExctnExecTm=153641&TrscPfmcSt=B04110&TrscEvdcDv=E&ItxpRegNcnt=1&RcvBnkNm=A ����&RcvAcctBnkCd=003&RcvAcctNo=10000000000&RcvAcctOwacNm=�� RCMS&ExctnAmt=2500&UseSplyAmt=2500&UseVatAmt=0&RtrtFixAmt=0&RtrtFixSplyAmt=0&RtrtFixVatAmt=0&VatProcRtrtAmt=0"};

           //�����������
           document.frm.SacPrgrSt.value = "1";
           
           //���������ȸ
           document.all["idVrtlAcctNo"].innerHTML="0010200000030";
           document.all["idVrtlAcctIssuBnkNm"].innerHTML="A ����";
           document.all["idVrtlAcctIssuDt"].innerHTML="2013-02-21";
           document.all["idVrtlAcctIssuSt"].innerHTML="��밡��";
           document.all["idPlanAmt"].innerHTML="0";
           document.all["idValdEndDt"].innerHTML="";
           document.all["idPayUsagDv"].innerHTML="�̻��";
           document.frm.ISSU_BNK_CD.value="003";
           document.frm.ISSU_DT.value="20130217";
           document.frm.ISSU_ST.value="1";
           document.frm.EXIST_VACC.value="Y";
           document.frm.VrtlAcctNo.value="0010200000030";

       }

       
   }finally{
       gridData = gridValue;    //��ȸ��� JSON �� ��������
       rMateGridSetData();  //rMateGrid ����
   }
}

function search(seqNo){
	if(!seqNo) return false;
	
	try{
		document.body.style.cursor =	"wait";	    
		SetData(seqNo); //Insert	Grid
		document.body.style.cursor =	"auto";
		
	}finally{
		reset_submit();
		searchAlert();		
	}
}

function searchAlert(){
   if(cnt<1){	   
       window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
   }	 
}

/* **********************  2014 �׸��� ��ü �۾� rMateGrid setting END ***********************  */

</script>



</body>
</html> 