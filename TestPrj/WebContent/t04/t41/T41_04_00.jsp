<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_04_00.jsp
 *   Description        : �߹�ŷ �̿��û
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

<%
String date = DateUtil.getDate("YYYYMMDD");
String year = date.substring(0, 4);
String month = date.substring(4, 6);
String day = date.substring(6);
%>
<title>�߹�ŷ �̿��û &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
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
            




                    <div><img src="/images/pefo/sub_navt4.gif" alt="�̿�ȯ�����" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t04/t41/T41_08_00.jsp'); return false;" class="menu_txt_on">�⺻����</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_08_00.jsp'); return false;" class="menu_3dep">�������� Ȯ��</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_04_00.jsp'); return false;" class="menu_3dep_on">�߹�ŷ �̿��û</a></li>

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
        
        


<script type="text/javascript">

	function _uf_tran_owac(){
		if(!bAutoSbjtSch()) return false;							// ������ȸ����Ȯ��
		
		
		var OwacNm = document.frm.OwacNm.value;
		if(OwacNm == "") OwacNm = "���Ѱ�";
		document.frm.OwacNm.value  = "";
		uf_proce_display_on();  //�ε���
        setTimeout(
        		function(){
        			document.frm.OwacNm.value = OwacNm;
        			reset_submit();
        			}, 1000);   // 1���� ���� 1000 = 1��s
        
        
	}
	//////////////////////////////////
	//��� ó��
	//////////////////////////////////
    function uf_create(){
		
		if(document.frm.OwacNm.value == ""){
			alert("�ʼ��׸��� �ݵ�� �Է��ϼž� �մϴ�.\n\n* �ʼ��Է� �׸� : ������");
			document.frm.OwacNm.focus();
			return;
		}
		
		if(!confirm("��� �Ͻðڽ��ϱ�?")){return;}

		
		var url = "/pop/sign_popup.jsp";
		var obj = "���� ����� ������ ����";
	    var style = "dialogWidth:441px;dialogHeight:475px;center:yes;scroll:no;resizable:no;status:no;";
		var reValue = window.showModalDialog(url, obj, style);
		if(reValue == undefined){
			reValue = window.returnValue;
		}
		

		if(reValue == "ok"){
			var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
			
			uf_proce_display_on();  //�ε���
			
	        setTimeout(
	                function(){
	                	//�ű԰����Ͻÿ��� ����
	                	if("G00000000000001" == seqNo){
	                		makeCookieData(frm.ReprNm.value);
	                		//makeSessData(frm.ReprNm.value);
	                	}
	                    alert("��ϵǾ����ϴ�.");
	                    reset_submit();
	                    uf_search();
	                    }, 1000);   // 1���� ���� 1000 = 1��s
		}
		return;
		
    }
	
	//���ǰ� ����
	function makeSessData(ReprNm){
		if(typeof ReprNm == "undefined" || ReprNm == "") return;
		
		dataCtrl.setObjData("T41_04_00", ReprNm);
	}
	//��Ű�� ����
	function makeCookieData(ReprNm){
		if(typeof ReprNm == "undefined" || ReprNm == "") return;
		
		setCookieTraning( "T41_04_00", ReprNm, 1 );
	}
	
    /******************************************************************
     * uf_search		�߹�ŷ ��ȸ
     * @param
     * @return
    ******************************************************************/
    function uf_search(){
    	
    	var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;
    	
    	if( isSubmit() ) return;	// ����ó��

        var InstNm;
        var AgrmtInstBzRegNo;
        var ZipNoSeqNo;
        var LoctDtlsAdr;
        var PrsWkplDept;
        var TelNo;
        var MbphNo;
        var RchExpAcctBnkCd;
        var RchExpAcctNo;
        var RcvBnkCd;
        var RcvAcctNo;
        var OwacNm;
        var idInstNm;
        var idAgrmtInstBzRegNo;
        var idZipNoSeqNo;
        var idLoctDtlsAdr;
        var idPrsWkplDept;
        var idUsrNm;
        var idTelNo;
        var idMbphNo;
        var idFaxNo;
        var idEmalAdr;
        var idRchExpAcctBnkCd;
        var idRchExpAcctNo;
        var idInstNm1;
        var yyyy;
        var mm;
        var dd;
        var viewBtn;
        var idReprNm;
    	
    	
        //1. �ű԰���
        if("G00000000000001" == seqNo){
        	InstNm              = "��RCMS";
            AgrmtInstBzRegNo    = "1111111111";
            ZipNoSeqNo          = "305-343";
            LoctDtlsAdr         = "���������� ������ ȭ�ϵ� 58-4";
            PrsWkplDept         = "������";
            TelNo               = "";
            MbphNo              = "";
            RchExpAcctBnkCd     = "020";
            RchExpAcctNo        = "10000000000";
            RcvBnkCd            = "020";
            RcvAcctNo           = "10000000000";
            OwacNm              = "";
            idInstNm            = "��RCMS";
            idAgrmtInstBzRegNo  = "111-11-11111";
            idZipNoSeqNo        = "305-348";
            idLoctDtlsAdr       = "���������� ������ ȭ�ϵ� 58-4";
            idPrsWkplDept       = "������";
            idUsrNm             = "�����";
            idTelNo             = "";
            idMbphNo            = "";
            idFaxNo             = "042-800-0000";
            idEmalAdr           = "test@test.kr";
            idRchExpAcctBnkCd   = "A ����";
            idRchExpAcctNo      = "10000000000";
            idInstNm1           = "��RCMS";
            yyyy                = "<%=year%>";
            mm                  = "<%=month%>";
            dd                  = "<%=day%>";
            
            //var _SESS_DATA = dataCtrl.getObjData("T41_04_00");
            var _COOKIE_DATA = getCookieTraning("T41_04_00");
            if(_COOKIE_DATA == false){
                viewBtn             = "block";
                idReprNm            = "<select name='ReprNm'><option value='�̿���' >�̿���</option><option value='�踸��' >�踸��</option></select>";
            }else{
                OwacNm              = "���Ѱ�";
                viewBtn             = "none";
                idReprNm            = _COOKIE_DATA;
            }
            
        //2. �������
        }else if("G00000000000002" == seqNo){
        	InstNm              = "��RCMS";
            AgrmtInstBzRegNo    = "1111111111";
            ZipNoSeqNo          = "305-343";
            LoctDtlsAdr         = "���������� ������ ȭ�ϵ� 58-4";
            PrsWkplDept         = "������";
            TelNo               = "";
            MbphNo              = "";
            RchExpAcctBnkCd     = "020";
            RchExpAcctNo        = "10000000000";
            RcvBnkCd            = "020";
            RcvAcctNo           = "10000000000";
            OwacNm              = "";
            idInstNm            = "��RCMS";
            idAgrmtInstBzRegNo  = "111-11-11111";
            idZipNoSeqNo        = "305-348";
            idLoctDtlsAdr       = "���������� ������ ȭ�ϵ� 58-4";
            idPrsWkplDept       = "������";
            idUsrNm             = "�����";
            idTelNo             = "";
            idMbphNo            = "";
            idFaxNo             = "042-800-0000";
            idEmalAdr           = "test@test.kr";
            idRchExpAcctBnkCd   = "A ����";
            idRchExpAcctNo      = "10000000000";
            idInstNm1           = "��RCMS";
            yyyy                = "2014";
            mm                  = "01";
            dd                  = "01";
            viewBtn             = "none";
            idReprNm            = "�ִ�ǥ";
            
        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){
        	InstNm              = "��RCMS";
            AgrmtInstBzRegNo    = "1111111111";
            ZipNoSeqNo          = "305-343";
            LoctDtlsAdr         = "���������� ������ ȭ�ϵ� 58-4";
            PrsWkplDept         = "������";
            TelNo               = "";
            MbphNo              = "";
            RchExpAcctBnkCd     = "020";
            RchExpAcctNo        = "10000000000";
            RcvBnkCd            = "020";
            RcvAcctNo           = "10000000000";
            OwacNm              = "";
            idInstNm            = "��RCMS";
            idAgrmtInstBzRegNo  = "111-11-11111";
            idZipNoSeqNo        = "305-348";
            idLoctDtlsAdr       = "���������� ������ ȭ�ϵ� 58-4";
            idPrsWkplDept       = "������";
            idUsrNm             = "�����";
            idTelNo             = "";
            idMbphNo            = "";
            idFaxNo             = "042-800-0000";
            idEmalAdr           = "test@test.kr";
            idRchExpAcctBnkCd   = "A ����";
            idRchExpAcctNo      = "10000000000";
            idInstNm1           = "��RCMS";
            yyyy                = "2014";
            mm                  = "01";
            dd                  = "01";
            viewBtn             = "none";
            idReprNm            = "���Ѱ�";
            
        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){
        	InstNm              = "��RCMS";
            AgrmtInstBzRegNo    = "1111111111";
            ZipNoSeqNo          = "305-343";
            LoctDtlsAdr         = "���������� ������ ȭ�ϵ� 58-4";
            PrsWkplDept         = "������";
            TelNo               = "";
            MbphNo              = "";
            RchExpAcctBnkCd     = "020";
            RchExpAcctNo        = "10000000000";
            RcvBnkCd            = "020";
            RcvAcctNo           = "10000000000";
            OwacNm              = "";
            idInstNm            = "��RCMS";
            idAgrmtInstBzRegNo  = "111-11-11111";
            idZipNoSeqNo        = "305-348";
            idLoctDtlsAdr       = "���������� ������ ȭ�ϵ� 58-4";
            idPrsWkplDept       = "������";
            idUsrNm             = "�����";
            idTelNo             = "";
            idMbphNo            = "";
            idFaxNo             = "042-800-0000";
            idEmalAdr           = "test@test.kr";
            idRchExpAcctBnkCd   = "A ����";
            idRchExpAcctNo      = "10000000000";
            idInstNm1           = "��RCMS";
            yyyy                = "2014";
            mm                  = "01";
            dd                  = "01";
            viewBtn             = "none";
            idReprNm            = "���Ѱ�";
            
        }

    	
    	document.frm.InstNm.value                       = InstNm;
    	document.frm.AgrmtInstBzRegNo.value             = AgrmtInstBzRegNo;
    	document.frm.ZipNoSeqNo.value                   = ZipNoSeqNo;
    	document.frm.LoctDtlsAdr.value                  = LoctDtlsAdr;
    	document.frm.PrsWkplDept.value                  = PrsWkplDept;
    	document.frm.TelNo.value                        = TelNo;
    	document.frm.MbphNo.value                       = MbphNo;
    	document.frm.RchExpAcctBnkCd.value              = RchExpAcctBnkCd;
    	document.frm.RchExpAcctNo.value                 = RchExpAcctNo;
    	document.frm.RcvBnkCd.value                     = RcvBnkCd;
    	document.frm.RcvAcctNo.value                    = RcvAcctNo;
    	document.frm.OwacNm.value                       = OwacNm;

    	document.all["idInstNm"].innerHTML              = idInstNm;
    	document.all["idAgrmtInstBzRegNo"].innerHTML    = idAgrmtInstBzRegNo;
    	document.all["idZipNoSeqNo"].innerHTML          = idZipNoSeqNo;
    	document.all["idLoctDtlsAdr"].innerHTML         = idLoctDtlsAdr;
    	document.all["idPrsWkplDept"].innerHTML         = idPrsWkplDept;
    	document.all["idUsrNm"].innerHTML               = idUsrNm;
    	document.all["idTelNo"].innerHTML               = idTelNo;
    	document.all["idMbphNo"].innerHTML              = idMbphNo;
    	document.all["idFaxNo"].innerHTML               = idFaxNo;
    	document.all["idEmalAdr"].innerHTML             = idEmalAdr;
    	document.all["idRchExpAcctBnkCd"].innerHTML     = idRchExpAcctBnkCd;
    	document.all["idRchExpAcctNo"].innerHTML        = idRchExpAcctNo;
    	document.all["idInstNm1"].innerHTML             = idInstNm1;
    	document.all["yyyy"].innerHTML                  = yyyy;
    	document.all["mm"].innerHTML                    = mm;
    	document.all["dd"].innerHTML                    = dd;

    	document.all["viewBtn"].style.display           = viewBtn;
    	document.all["idReprNm"].innerHTML              = idReprNm;
    	
    	
    	
    	reset_submit();
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
    	
    	
    	uf_proce_display_on();  //�ε���
        setTimeout(function(){uf_search();}, 1000);   // 1���� ���� 1000 = 1��s
    	
    }

    $(document).ready(function() {
  	  $("a#example1").fancybox();
  	  $("a#example2").fancybox();
  	  
  	  $('#btn-guide').click(function(){
  	    if( $('#guide').css('height') == '17px' ){
  	      $('#guide').css({overflow:'hidden'}).animate({height:100},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
  	    }else{
  	      $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
  	    }
  	    return false;
  	  });
  	});
</script>

        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->
            



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u41_04_00_t.gif" alt="�߹�ŷ �̿��û"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>�̿�ȯ�����</li>
                       <li><img src="/images/common/arr.gif" alt=" " />�⺻����</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">�߹�ŷ �̿��û</span></li>
						
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
                ������ȸ �̱۸��   isSbjtAutoSchMulti : false
                ��ĳ�� �̼��� �ۼ� 20110426 
                -->
            <!-------------------------------------------------------------------------------->
            
            








<!-- search start -->
<% 
    boolean isSbjtAutoSchMulti   =  false;  //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�
    boolean beSearchBtn          =  false;  //��ȸ��ư ��������(����޼ҵ�:uf_beSearchBtn();)
%>    
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //search end// -->
    
    
      

            <!-------------------------------------------------------------------------------->
            <!--  ����� �� -->
            <!-------------------------------------------------------------------------------->    
            <!-- ��û�� start -->
            <div class="t30"></div>
            <div class="docu_app">
                <form name="frm" method="post">
                <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />
                <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />
                <input type="hidden" name="InstNm"           value="" />
				<input type="hidden" name="AgrmtInstBzRegNo" value="" />
				<input type="hidden" name="ZipNoSeqNo"       value="" />
				<input type="hidden" name="LoctDtlsAdr"      value="" />
				<input type="hidden" name="PrsWkplDept"      value="" />
				<input type="hidden" name="TelNo"            value="" />
				<input type="hidden" name="MbphNo"           value="" />
				<input type="hidden" name="RchExpAcctBnkCd"  value="" />
				<input type="hidden" name="RchExpAcctNo"     value="" />
				<input type="hidden" name="RcvBnkCd"         value="" />
				<input type="hidden" name="RcvAcctNo"        value="" />

                <div class="t20 b50 ac"><img src="/images/pefo/docu_txt1.gif" alt="RCMS �߹�ŷ ���� �̿� ��û��"/></div>
                <p class="docu_title">1. ��û��� ����</p>
                <div class="t05 b25">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="��û��� ����" class="docu_type">
                    <caption>��û��� ����</caption>
					<colgroup>
						<col width="15%" />
						<col width="15%" />
						<col width="30%" />
						<col width="15%" />
						<col width="25%" />
					</colgroup>
					<tbody>
					<tr>
						<th scope="col" class="al">��ü��</th>
						<td colspan="2" class="ac" id="idInstNm"></td>
						<th scope="col" class="al">����ڹ�ȣ</th>
						<td id="idAgrmtInstBzRegNo"></td>
					</tr>
					<tr>
						<th scope="row" class="al">�ּ�</th>
						<td colspan="4">�� �� �� ȣ : <span id="idZipNoSeqNo"></span>
						    <div class="post" id="idLoctDtlsAdr"></div>
						</td>
					</tr>
					<tr>
						<th scope="col" rowspan="3" class="al">�����</th>
						<th scope="col" class="al">�μ���</th>
						<td id="idPrsWkplDept"></td>
						<th scope="col" class="al">����</th>
						<td id="idUsrNm"></td>
					</tr>
					<tr>
						<th scope="col" class="al">TEL</th>
						<td class="ac" id="idTelNo"></td>
						<th scope="col" class="al">HP</th>
						<td id="idMbphNo"></td>
					</tr>
					<tr>
						<th scope="col" class="al">FAX</th>
						<td class="ac" id="idFaxNo"></td>
						<th scope="col" class="al">e-Mail</th>
						<td id="idEmalAdr"></td>
					</tr>
					</tbody>
					</table>
                </div>
                <p class="docu_title">2. ��û����</p>
                <div class="t05 b25">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="��û����" class="docu_type">
                    <caption>��û����</caption>
					<colgroup>
						<col width="25%" />
						<col width="20%" />
						<col width="25%" />
						<col width="30%" />
					</colgroup>
					<thead>
					<tr>
						<th scope="col">���� �߷�</th>
						<th scope="col">����</th>
						<th scope="col">���¹�ȣ</th>
						<th scope="col"><label for="bankname">������</label></th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="ac">�ǽð� ����(���)��ü</td>
						<td class="ac" id="idRchExpAcctBnkCd"></td>
						<td class="ac" id="idRchExpAcctNo"></td>
						<td class="ac">
                            <a href="#dummy" onclick="_uf_tran_owac(); return false;"><img src="/bt/bt_acct02.gif" alt="��������ȸ"/></a>
                            <input type="text" name="OwacNm" id="bankname" title="������" style="width:80px;" class="inputl" notnull colname="������" readonly="readonly"/>
						</td>
					</tr>
					</tbody>
					</table>
                </div>
                <p class="docu_title">3. ���ǻ���</p>
                <div class="t05"></div>
                <div class="care_box">
                    <ul>
                        <li>�ǽð�������ü�� �����Ͽ� �ѱ��������򰡰������� �ش� ������ 2010�� 06�� 01�Ͽ� ���ü���� "RCMS �߹�ŷ ����
                            �̿��༭"�� ������ �ؿ��Ͽ� ó���ϴµ� �����Ѵ�.</li>
                        <li>�ǽð�������ü�� �ѱ��������򰡰������� RCMS�� �̿��Ͽ� �ش��������� ��üó���� ��û�Ͽ� �̿� ���� ������ ��üó���� ��� 
                            ������ � å�ӵ� �δ����� ������ �̿� ���� �� ��� å���� ���������� �δ��ϱ�� �Ѵ�
                        </li>
                        <li>������ �� ��û�� �����Ͽ� ���� �� ȣ���� ���ϴ� ������ ���Ͽ� �߻��� �ѱ��������򰡰����� �� ������, �Ǵ� ��3���� ���ؿ� ���Ͽ�
                            å���� ���ϱ�� �Ѵ�.
                            <p class="t05">�� õ������, ����, ��ű��, ȸ�� ��ǻ���� ���� �Ǵ� ���, ��Ÿ ������ ���� ����ó���� ����, �Ǵ� ó���Ҵ�</p>
                            <p class="t05">�� ������ ������� ����ó�������� ���� ����, ���� ���� ������ �����ڷμ��� �ǹ��� ���� ����</p>
                            <p class="t05 b10">�� ������ ��å�������� �ѱ��������򰡰����� �� ��û����� �� ���� �̿뿡 �ʿ��� ���ټ����� �����̳� ���� �Ǵ� ������ ���� �ϱ� 
                            ���� ������ ��Ȧ, ��Ÿ�� ���� �ѱ��������򰡰����� �� �������� ���ذ� �߻��� ���</p>
                        </li>
                        <li>
                            �������� �ѱ��������򰡰������� ������������ ü���Ͽ��� �ϸ�, ����ü�� �� �� ��û���� �ۼ��� ������ �ѱ��������򰡰������� 
                            å������ Ȯ���Ͽ� ���࿡ �����ϱ�� �Ѵ�.
                        </li>         
                    </ul>
                </div>
                <div id="sign_agrt_msg" style="display:none;">
                    - �ǽð�������ü�� �����Ͽ� �ѱ��������򰡰������� �ش� ������ 2010��06�� 01�Ͽ� ���ü����  "RCMS �߹�ŷ ���� �̿��༭"��  ������ �ؿ��Ͽ� ó���ϴµ� �����Ѵ�.<br />
                    -�ǽð�������ü�� �ѱ��������򰡰������� RCMS�� �̿��Ͽ� �ش��������� ��üó���� ��û�ϸ� �̿� ���� ������ ��üó���� ��� ������ � å�ӵ� �δ����� ������ �̿� ���� �� ��� å���� ���������� �δ��ϱ�� �Ѵ�<br />
                    -������ �� ��û�� �����Ͽ� ���� �� ȣ���� ���ϴ� ������ ���Ͽ� �߻��� �ѱ��������򰡰����� �� ������, �Ǵ� ��3���� ���ؿ� ���Ͽ� å���� ���ϱ�� �Ѵ�.<br />
                    ��õ������, ����, ��ű��, ȸ��, ��ǻ���� ���� �Ǵ� ���, ��Ÿ ������ ���� ����ó���� ����, �Ǵ� ó���Ҵ�<br />
                    �������� ������� ����ó�������� ���� ����, ���� ���� ������ �����ڷμ��� �ǹ��� ���� ����<br />
                    �������� ��å�������� �ѱ��������򰡰����� �� ��û����� �� ���� �̿뿡 �ʿ��� ���ټ����� �����̳� ���� �Ǵ� ������ �����ϱ� ���� ������ ��Ȧ, ��Ÿ�� ���� �ѱ��������򰡰����� �� �������� ���ذ� �߻��� ���<br />
                    -�������� �ѱ��������򰡰������� ������������ ü���Ͽ��� �ϸ�, ����ü�� �� �� ��û���� �ۼ��� ������ �ѱ��������򰡰������� å������ Ȯ���Ͽ� ���࿡ �����ϱ�� �Ѵ�.                
                </div>
                <div class="t20 ac"><span id="yyyy"></span> �� <span id="mm"></span> �� <span id="dd"></span> ��</div>
				<div class="t20 b">������ : <span id="idInstNm1"></span></div>
				<div class="b ar">Ȯ���� : <img src="/images/pefo/docu_stamp.gif" alt="�ѱ��������򰡰�������" class="vc"/></div>
				<div class="b">��ǥ�� : <span id="idReprNm"></span></div>
				<div class="t30">�� �� ��û���� ������������ ���ڼ���Ǿ� �ش� �ŷ��������� ���۵˴ϴ�.</div>
	            </form>
	        </div>
	        <!-- //��û�� end// -->
	        <div class="t30 ac" id="viewBtn" style="display:none">
	            <a href="#dummy" onclick="uf_create(); return false;"><img src="/bt/bt_agree.gif" alt="����"/></a>
	        </div>
			<!-- �ȳ� ���̵� start -->
			<div class="guide_box1" id="guide">
				<div class="guide_boxt1">
					<p class="txt_title fl">�߹�ŷ �̿��û �ȳ�</p> 
					<p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="����" class="vc"/></a></p>
				</div>
				<div class="guide_boxc1">
					<ul>
						<li>�߹�ŷ �̿��û�� RCMS�� ����Ͽ� ���ڱ��� ���񽺸� �̿��ϴ� <span class="txt_or">�ʼ� ��û���</span>���ν�, ����������� �����ϰ� �˴ϴ�. </li>
						<li><span class="txt_or">�߹�ŷ �̿��û�� ���� ������ ��������ü�� ���ѵǿ��� �����Ͻñ� �ٶ��ϴ�.</span></li>
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


</body>
</html>