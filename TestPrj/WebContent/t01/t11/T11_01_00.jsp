<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T11_01_00.jsp
 *   Description        : ����������Ȳ��ȸ
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
 * 	20150116 sonpro
 	test
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

<title>�������� ��Ȳ��ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body class="line">
<!---_BEGIN_ENC_--->

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


                    <div><img src="/images/pefo/sub_navt1.gif" alt="���������" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_txt_on">��Ȳ��ȸ</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_3dep_on">�������� ��Ȳ��ȸ</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_txt">�����������</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep">�����</a></li>

                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_02_00.jsp'); return false;" class="menu_3dep">������</a></li>

                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_03_00.jsp'); return false;" class="menu_3dep">��������� ��ȸ</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_txt">������ϰ���</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_3dep">������ϳ��� ��ȸ</a></li>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_02_00.jsp'); return false;" class="menu_3dep">������볻�� ���</a></li>
                        
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

function uf_search(param){
	
    var frm = document.frm;

    if( isSubmit() ) return;    // ����ó��

    rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStr);
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(function(){search(param);}, 1000);   // 1���� ���� 1000 = 1��s
    
    
    removeTempAttribute(frm);   //get2post ����
}


//����� ���� ����
function uf_Dtl(){
	if(isSubmit()) 				return;			// ����ó��
	if(!bAutoSbjtSch()) 		return;			// ������ȸ����
	
    var frmRtr  =   document.rtr_str_form;      
    var frm     =   document.frm;

    
    if(null == frmRtr.SBJT_MAP_KEYS.value || ''==frmRtr.SBJT_MAP_KEYS.value ){
        alert("������ �����ϼ���.");
        return;
    }else{
        
        if(!isGridData()){
            alert("��ȸ�� ���� ������ �ֽʽÿ�.");
            return;
        }
        
        get2post(frm, "SBJT_MAP_KEYS="+frmRtr.SBJT_MAP_KEYS.value);
        uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_30.jsp', 'TAXVIEW3', '800', '440','no');
	    removeTempAttribute(document.frm);          // get2post ����       
    }
    
}

/* get2post�� ȭ�� ��ܿ� �Էµ� ��ȸ �� ��ŭ input���� */
function setRetriveCondition(){
    var frmRtr  =   document.rtr_str_form;      
    var frm     =   document.frm;
    if(frmRtr.S_AGRMT_SEQ_NO.length > 1){
        for(var i=0;i<frmRtr.S_AGRMT_SEQ_NO.length;i++){
            get2post(frm, "AGRMT_SEQ_NO="+frmRtr.S_AGRMT_SEQ_NO[i].value);
            get2post(frm, "AGRMT_INST_ID="+frmRtr.S_AGRMT_INST_ID[i].value);
            get2post(frm, "SBJT_ID="+frmRtr.S_SBJT_ID[i].value);
        }
    }else{
        get2post(frm, "AGRMT_SEQ_NO="+frmRtr.S_AGRMT_SEQ_NO.value);
        get2post(frm, "AGRMT_INST_ID="+frmRtr.S_AGRMT_INST_ID.value);
        get2post(frm, "SBJT_ID="+frmRtr.S_SBJT_ID.value);
    }
}
function setRetriveCondition1(){
    var frmRtr  =   document.rtr_str_form;      
    var frm     =   document.frm;
    
    if(typeof frmRtr.S_AGRMT_SEQ_NO == "undefined"){
    	alert("��ȸ�� ���� ������ �ֽʽÿ�.");
    	return false;
    }
    
    if(frmRtr.S_AGRMT_SEQ_NO.length > 1){
        for(var i=0;i<frmRtr.S_AGRMT_SEQ_NO.length;i++){    
        	get2post(frm, "INST_ROLE_DV="+frmRtr.S_INST_ROLE_DV[i].value);
            get2post(frm, "AGRMT_SEQ_NO="+frmRtr.S_AGRMT_SEQ_NO[i].value);
            get2post(frm, "AGRMT_INST_ID="+frmRtr.S_AGRMT_INST_ID[i].value);
        }
    }else{
    	get2post(frm, "INST_ROLE_DV="+frmRtr.S_INST_ROLE_DV.value);
        get2post(frm, "AGRMT_SEQ_NO="+frmRtr.S_AGRMT_SEQ_NO.value);
        get2post(frm, "AGRMT_INST_ID="+frmRtr.S_AGRMT_INST_ID.value);
    }
    
    return true;
}
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
    //=============================
    //  �����ų �޼ҵ� �� ��ġ
    //=============================
    uf_search(param);    
    //=============================
    
}

//�ϰ���ȸ ��ư Ŭ�� �� ����Ǵ� �Լ�
function uf_FullViews(){
	var frmRtr 	= document.rtr_str_form;
	var frm     =   document.frm;
	if(null == frmRtr.SBJT_MAP_KEYS.value || ''==frmRtr.SBJT_MAP_KEYS.value ){
		alert("������ �����ϼ���.");
		return;
	}else{
        if(!isGridData()){
            alert("��ȸ�� ���� ������ �ֽʽÿ�.");
            return;
        }
		get2post(frm, "SBJT_MAP_KEYS="+frmRtr.SBJT_MAP_KEYS.value);
		uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_20.jsp', 'TAXVIEW2', '800', '560','no');
		removeTempAttribute(document.frm);	//get2post ����		
	}
}
</script>







    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
      



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u11_01_00_t.gif" alt="�������� ��Ȳ��ȸ"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>���������</li>
                       <li><img src="/images/common/arr.gif" alt=" " />��Ȳ��ȸ</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">�������� ��Ȳ��ȸ</span></li>
						
                    </ul>
                </div>
            </div>                
      <!-- //pagenav end// -->
      <div class="t30"></div>

        
    


<!-- //auto search start -->
<%  
    boolean isSbjtAutoSchMulti  = true; //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�
    boolean beSearchBtn         = true; //��ȸ��ư ��������(����޼ҵ�:uf_beSearchBtn();)
    String SSbjtInqDvCd        = "G";  //���ΰ������԰�����ȸ
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->









      
      <!-- �˻��� start -->
    <!--  ��ȸ ����ŭ input �� �ø��� ���� form name = "frm" ����  -->
    <form name="frm" method="post">           
	<input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" />
	<input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />
      
      
      
      
      <div class="cb t10"></div>
      <!-- �ѰǼ�/�μ� ���� ��ư start -->
      <div class="total_box">
        <p class="fl t05">
          <input type="checkbox" name="checkbox2" id="checkbox2" class="check1" value="Y" onclick="chkGroup(this);" /> <label for="checkbox">��üȮ��</label>
        </p>
        <p class="ar b05">
          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�"/></a>
          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="����"/></a>
        </p>
        <p class="cb"></p>
      </div>
      <!-- //�ѰǼ�/�μ� ���� ��ư end// -->
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div>
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "387", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- �׸��� End -->
            <!-- �󼼺��� ���̾� �˾� -->
            <div id="layerPopup" style="display:none;z-index:999999;">
                <div id="layerPopupTitle" style="width:355px;height:30px;">
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="�ݱ�"></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
<!-- *************************  rMateGrid ************************* -->
      
      
      
      <!-- //�׸��� end// -->
      <!-- action bt start -->
      <div class="action_bt ar">
        <div class="fl"> <a href="#dummy" onclick="uf_Dtl();" class="bt_action7" title="����񱸼�����"><span class="bt_sp1">����񱸼�����</span></a></div>
        <a href="#dummy" onclick="uf_FullViews();" class="bt_action4" title="�ϰ���ȸ"><span class="bt_sp1">�ϰ���ȸ</span></a> </div>
      <!-- //action bt end// -->
      
      </form>
	<!-- �ȳ� ���̵� start -->
	<div class="guide_box1" id="guide">
		<div class="guide_boxt1">
			<p class="txt_title fl">�������� ��Ȳ��ȸ �ȳ�</p> 
			<p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="����" class="vc"/></a>
			</p>
		</div>
		<div class="guide_boxc1">
			<ul>
				<li>�����⿬�� �Աݿ��θ� Ȯ���Ͻ÷��� �ϴ� ��ư ������񱸼��������� Ȯ���Ͻñ� �ٶ��ϴ�. </li>
				<li>�� ������ Ŭ���Ͻø�, �ش� <span class="txt_or">��� ��볻�� Ȯ���� ����</span>�մϴ�.</li>
				<li>����ϵ� �ݾ׵� <span class="txt_or">�ѵ� üũ�� ����</span>�ǹǷ� �����Ͻñ� �ٶ��ϴ�.</li>
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


$(document).ready(function() {
	
	//��ȸ��ư ��Ʈ��
	$("span#searchBtn").show();
	
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
	  
      // rMateGrid �ʱ�ȭ
      rMateGridInit();
      
	});
	

</script>


<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//���̾ƿ� ���� (�׷���)
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
<NumberFormatter id=\"numfmt\" />\
<SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
<SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
<!-- displayItemsExpanded=\"true\" : ��ȸ �� ��ü ��ġ�� -->\
<!-- selectionMode=\"singleRow\" : ���콺�� �ڷ� ���ý� �� ���� -->\
<!-- doubleClickEnabled=\"true\" : ����Ŭ�� �̺�Ʈ ��뿩�� -->\
<DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
    <columns>\
        <DataGridColumn id=\"AGRMT_INST_NM\"          dataField=\"AGRMT_INST_NM\"           headerText=\"�����\"         width=\"130\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"HGRK_ITXP_NM\"           dataField=\"HGRK_ITXP_NM\"            headerText=\"���\"           width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"ITXP_NM\"                dataField=\"ITXP_NM\"                 headerText=\"���κ��\"       width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" styleJsFunction=\"columnUnderline\" itemRenderer=\"HandCursorItem\" />\
        <DataGridColumn id=\"AGRMT_CASH_LIM_AMT\"     dataField=\"AGRMT_CASH_LIM_AMT\"      headerText=\"�����ѵ�\"       width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"USE_APV_CASH_LIM_AMT\"   dataField=\"USE_APV_CASH_LIM_AMT\"    headerText=\"�������ѵ�\"   width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"EXCTN_BAL\"              dataField=\"EXCTN_BAL\"               headerText=\"����ܾ�\"       width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"EXCTN_EXEC_AMT\"         dataField=\"EXCTN_EXEC_AMT\"          headerText=\"��ü�Ϸ�ݾ�\"    width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"EXCTN_REG_AMT\"          dataField=\"EXCTN_REG_AMT\"           headerText=\"����ϱݾ�\"   width=\"100\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"USE_APV_CASH_LIM_AMT2\"  dataField=\"USE_APV_CASH_LIM_AMT2\"   headerText=\"��ϰ��ɱݾ�\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"EXCTN_REG_VAT_AMT\"      dataField=\"EXCTN_REG_VAT_AMT\"       headerText=\"�ΰ���ġ����\"   width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"VAT_PSV_AMT\"            dataField=\"VAT_PSV_AMT\"             headerText=\"�ΰ��������ݾ�\" width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"SPOT_PLAN\"              dataField=\"SPOT_PLAN\"               headerText=\"������ȹ\"       width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"SPOT_USE\"               dataField=\"SPOT_USE\"                headerText=\"�������\"       width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"SPOT_BAL\"               dataField=\"SPOT_BAL\"                headerText=\"�����ܾ�\"       width=\"100\" visible=\"true\" sortable=\"false\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"lastNumericGroupingSort\" />\
        <DataGridColumn id=\"INST_NM\"                dataField=\"INST_NM\"                 headerText=\"������\"       width=\"150\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"USR_NM\"                 dataField=\"USR_NM\"                  headerText=\"���������\"     width=\"100\" visible=\"true\" sortable=\"true\" ttextAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"SBJT_NM\"                dataField=\"SBJT_NM\"                 headerText=\"������\"         width=\"100\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"AGRMT_INST_ID\"          dataField=\"AGRMT_INST_ID\"           headerText=\"������ID\"     width=\"100\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"AGRMT_SEQ_NO\"           dataField=\"AGRMT_SEQ_NO\"            headerText=\"�����Ϸù�ȣ\"   width=\"100\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"ITXP_CD\"                dataField=\"ITXP_CD\"                 headerText=\"���κ���ڵ�\"   width=\"100\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    </columns>\
    <rendererProviders>\
        <AdvancedDataGridRendererProvider column=\"{AGRMT_INST_NM}\" columnSpan=\"16\" depth=\"1\" renderer=\"GroupItem\"/>\
    </rendererProviders>\
    <dataProvider>\
        <!--  �׸����� �ڷḦ dataProvider�� �ƴ� ������ ������Ʈ�� �Է��ؾ� �� ��� �Ʒ��� ���� $gridData�� �־��ݴϴ�   -->\
        <GroupingCollection source=\"{$gridData}\">\
            <Grouping>\
                <GroupingField name=\"SBJT_NM\">\
                <summaries>\
                <SummaryRow>\
                    <SummaryField dataField=\"AGRMT_CASH_LIM_AMT\" operation=\"SUM\" />\
                    <SummaryField dataField=\"USE_APV_CASH_LIM_AMT\" operation=\"SUM\" />\
                    <SummaryField dataField=\"EXCTN_BAL\" operation=\"SUM\" />\
                    <SummaryField dataField=\"EXCTN_EXEC_AMT\" operation=\"SUM\" />\
                    <SummaryField dataField=\"EXCTN_REG_AMT\" operation=\"SUM\" />\
                    <SummaryField dataField=\"USE_APV_CASH_LIM_AMT2\" operation=\"SUM\" />\
                    <SummaryField dataField=\"EXCTN_REG_VAT_AMT\" operation=\"SUM\" />\
                    <SummaryField dataField=\"VAT_PSV_AMT\" operation=\"SUM\" />\
                    <SummaryField dataField=\"SPOT_PLAN\" operation=\"SUM\" />\
                    <SummaryField dataField=\"SPOT_USE\" operation=\"SUM\" />\
                    <SummaryField dataField=\"SPOT_BAL\" operation=\"SUM\" />\
                </SummaryRow>\
                </summaries>\
                </GroupingField>\
            </Grouping>\
        </GroupingCollection>\
    </dataProvider>\
    <footers>\
        <!-- useDataSource=true �� ����ؾ߸� ������ Ǫ���� ���� ������ �ʴ´�. -->\
        <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\" useDataSource=\"true\" fontWeight=\"bold\" >\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn label=\"�հ� �ݾ�\" textAlign=\"center\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{AGRMT_CASH_LIM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_APV_CASH_LIM_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_EXEC_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_REG_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_APV_CASH_LIM_AMT2}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{EXCTN_REG_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_PSV_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_PLAN}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_USE}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{SPOT_BAL}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

        
        // �Ұ����� ����
        if (dataRow.typeName == "mx.collections::SummaryObject") {
            return;
        }
        
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
        
        //if (columnIndex == 3) { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
        if (dataField == "ITXP_NM") { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
            uf_Click(rowIndex, columnIndex, dataRow, dataField);
        };
    };
    
    //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
    var itemDoubleClickHandler = function(event) {
        
        var rowIndex = event.getRowIndex();
        var columnIndex = event.getColumnIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        var column = dataGrid.getColumns()[columnIndex];
        var dataField = column.getDataField();
        // �Ұ����� ����
        if (dataRow.typeName == "mx.collections::SummaryObject") {
            return;
        }
        
        if (columnIndex == 0) {
            // �ش� ����Ÿ�� ������ ������ ����
            var isOpen = gridRoot.isItemOpen(rowIndex);
            // �ִϸ��̼� ȿ�� ���� ����
            var animate = true;
            // �ش� ����Ÿ�� ���� �ڽ��� open/close�մϴ�.
            gridRoot.expandItem(rowIndex, !isOpen, animate);
        }
        
        //group �����ΰ� Ȯ��
        if(typeof(dataRow.children) != "undefined") return;
        
        //layerDetail(dataGrid,dataRow);
        
    };

    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //�׷��� �׸��忡�� �̹��� �Ⱥ��̰� ó��
        dataGrid.setStyle("defaultLeafIcon", null);
        dataGrid.setStyle("folderOpenIcon", null);
        dataGrid.setStyle("folderClosedIcon", null);
        
        //�̺�Ʈ ���
        dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
        dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);

};

//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//�ε� �� rMadeGrid ���
function rMateGridSetData() {
    //rMageGrid �ʱ�ȭ
    //gridApp.setData(null);

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //������ ���
    
    document.frm.checkbox2.checked = false; //��ü���� üũ�ڽ�

};

//���κ�� �˾� ( ���� ��Ÿ�ϰ� ���� �����ϰ� ��� )
function uf_Click(rowIndex, columnIndex, dataRow, dataField) {

    editRowIndex = rowIndex; //����idx
    editDataRow = dataRow; //����data
    editDataField = dataField;

    get2post(document.frm, "AgrmtInstId=" + editDataRow.AGRMT_INST_ID); //������ID
    get2post(document.frm, "AgrmtSeqNo=" + editDataRow.AGRMT_SEQ_NO); //�����Ϸù�ȣ
    get2post(document.frm, "DtlsItxpCd=" + editDataRow.ITXP_CD); //���κ���ڵ�
    get2post(document.frm, "HgrkItxpNm=" + editDataRow.HGRK_ITXP_NM); //���
    get2post(document.frm, "DtlsItxpNm=" + editDataRow.ITXP_NM); //���κ��

    uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_10.jsp', 'TAXVIEW1', '800', '500', 'no');
    removeTempAttribute(document.frm); //get2post ����

}




/**************************************************************************
 * �׸��� �׷��� Ȯ��
 * elem : checkbox ��ü 
 **************************************************************************/
function chkGroup(elem){
    
    if (collection == null)
        collection = gridRoot.getCollection();
    if (collection == null) 
        return;
    
    if(elem.checked){
        dataGrid.expandAll();
    }else{
        dataGrid.collapseAll();
    }
}

 
</script>
<!-- **********************  rMateGrid setting END ***********************  -->





<script	type="text/javascript">
var cnt = 0;
function SetData(gubun){	
	try{
		cnt = 0;
		var param = gubun.split(",");
		var gridValue = [];
	    if(param.length > 0){
	    	var paramValue = "";
	        for(var i=0;i<param.length;i++){
	        	paramValue = param[i];
	        	
	        	if("1" == paramValue){
	        		gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":20000,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"100-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000001","SPOT_USE":"0","ITXP_NM":"����Ȱ����","ITXP_CD":"B0202","AGRMT_CASH_LIM_AMT":"20000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"20000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"0","VAT_PSV_AMT":"0","EXCTN_BAL":"20000","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0001  ��������¹�ȣ : A���� 100-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"0","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":38000,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"100-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000001","SPOT_USE":"0","ITXP_NM":"�����ü������ �� ����","ITXP_CD":"B0201","AGRMT_CASH_LIM_AMT":"38000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"38000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"0","VAT_PSV_AMT":"0","EXCTN_BAL":"38000","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0001  ��������¹�ȣ : A���� 100-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"0","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"30000","USE_APV_CASH_LIM_AMT2":30000,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"100-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000001","SPOT_USE":"0","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0100","AGRMT_CASH_LIM_AMT":"30000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"30000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"0","VAT_PSV_AMT":"0","EXCTN_BAL":"30000","SPOT_PLAN":"30000","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0001  ��������¹�ȣ : A���� 100-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"0","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":9000, "AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"100-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000001","SPOT_USE":"0","ITXP_NM":"��������������","ITXP_CD":"B0203","AGRMT_CASH_LIM_AMT":"9000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"9000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"0","VAT_PSV_AMT":"0","EXCTN_BAL":"9000","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0001  ��������¹�ȣ : A���� 100-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"0","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":2000, "AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"100-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000001","SPOT_USE":"0","ITXP_NM":"��������","ITXP_CD":"B0203","AGRMT_CASH_LIM_AMT":"2000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"2000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"0","VAT_PSV_AMT":"0","EXCTN_BAL":"2000","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0001  ��������¹�ȣ : A���� 100-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"0","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":1000, "AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"100-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000001","SPOT_USE":"0","ITXP_NM":"������","ITXP_CD":"B0301","AGRMT_CASH_LIM_AMT":"1000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0300","USE_APV_CASH_LIM_AMT":"1000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"0","VAT_PSV_AMT":"0","EXCTN_BAL":"1000","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0001  ��������¹�ȣ : A���� 100-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"0","RCH_EXP_ACCT_BNK_CD":"020"};
                    
                }else if("2" == paramValue){

                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":18680,"AGRMT_INST_ID":"10112249","RCH_EXP_ACCT_NO":"200-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000002","SPOT_USE":"0","ITXP_NM":"����Ȱ����","ITXP_CD":"B0202","AGRMT_CASH_LIM_AMT":"20000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"20000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"1320","VAT_PSV_AMT":"0","EXCTN_BAL":"19780","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0002  ��������¹�ȣ : B���� 200-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"220","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":30080,"AGRMT_INST_ID":"10112249","RCH_EXP_ACCT_NO":"200-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000002","SPOT_USE":"0","ITXP_NM":"�����ü������ �� ����","ITXP_CD":"B0201","AGRMT_CASH_LIM_AMT":"38000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"38000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"7920","VAT_PSV_AMT":"0","EXCTN_BAL":"36900","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0002  ��������¹�ȣ : B���� 200-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"1100","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"25000","USE_APV_CASH_LIM_AMT2":22500,"AGRMT_INST_ID":"10112249","RCH_EXP_ACCT_NO":"200-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000002","SPOT_USE":"5000","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0202","AGRMT_CASH_LIM_AMT":"30000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"30000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"7500","VAT_PSV_AMT":"0","EXCTN_BAL":"27500","SPOT_PLAN":"30000","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0002  ��������¹�ȣ : B���� 200-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"2500","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":6750,"AGRMT_INST_ID":"10112249","RCH_EXP_ACCT_NO":"200-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000002","SPOT_USE":"0","ITXP_NM":"��������������","ITXP_CD":"B0203","AGRMT_CASH_LIM_AMT":"9000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"9000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"2250","VAT_PSV_AMT":"0","EXCTN_BAL":"6750","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0002  ��������¹�ȣ : B���� 200-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"2250","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":2000,"AGRMT_INST_ID":"10112249","RCH_EXP_ACCT_NO":"200-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000002","SPOT_USE":"0","ITXP_NM":"��������","ITXP_CD":"B0203","AGRMT_CASH_LIM_AMT":"2000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"2000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"0","VAT_PSV_AMT":"0","EXCTN_BAL":"2000","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0002  ��������¹�ȣ : B���� 200-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"0","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":900,"AGRMT_INST_ID":"10112249","RCH_EXP_ACCT_NO":"200-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000002","SPOT_USE":"0","ITXP_NM":"������","ITXP_CD":"B0301","AGRMT_CASH_LIM_AMT":"1000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0300","USE_APV_CASH_LIM_AMT":"1000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"100","VAT_PSV_AMT":"0","EXCTN_BAL":"900","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0002  ��������¹�ȣ : B���� 200-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"100","RCH_EXP_ACCT_BNK_CD":"020"};

                }else if("3" == paramValue){

                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":500,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"300-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000003","SPOT_USE":"0","ITXP_NM":"����Ȱ����","ITXP_CD":"B0202","AGRMT_CASH_LIM_AMT":"20000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"20000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"19500","VAT_PSV_AMT":"0","EXCTN_BAL":"500","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0003  ��������¹�ȣ : C���� 300-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"19500","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":800,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"300-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000003","SPOT_USE":"0","ITXP_NM":"�����ü������ �� ����","ITXP_CD":"B0201","AGRMT_CASH_LIM_AMT":"38000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"38000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"37200","VAT_PSV_AMT":"0","EXCTN_BAL":"800","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0003  ��������¹�ȣ : C���� 300-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"37200","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":0,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"300-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000003","SPOT_USE":"30000","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0202","AGRMT_CASH_LIM_AMT":"30000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"30000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"30000","VAT_PSV_AMT":"0","EXCTN_BAL":"0","SPOT_PLAN":"30000","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0003  ��������¹�ȣ : C���� 300-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"30000","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":100, "AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"300-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000003","SPOT_USE":"0","ITXP_NM":"��������������","ITXP_CD":"B0203","AGRMT_CASH_LIM_AMT":"9000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"9000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"8900","VAT_PSV_AMT":"0","EXCTN_BAL":"100","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0003  ��������¹�ȣ : C���� 300-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"8900","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":0, "AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"300-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000003","SPOT_USE":"0","ITXP_NM":"��������","ITXP_CD":"B0203","AGRMT_CASH_LIM_AMT":"2000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"2000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"2000","VAT_PSV_AMT":"0","EXCTN_BAL":"0","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0003  ��������¹�ȣ : C���� 300-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"2000","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":0,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"300-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000003","SPOT_USE":"0","ITXP_NM":"������","ITXP_CD":"B0301","AGRMT_CASH_LIM_AMT":"1000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0300","USE_APV_CASH_LIM_AMT":"1000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"1000","VAT_PSV_AMT":"0","EXCTN_BAL":"0","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0003  ��������¹�ȣ : C���� 300-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"1000","RCH_EXP_ACCT_BNK_CD":"020"};

                    
                }else if("4" == paramValue){
                    
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":1363,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"400-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000004","SPOT_USE":"0","ITXP_NM":"����Ȱ����","ITXP_CD":"B0202","AGRMT_CASH_LIM_AMT":"20000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"20000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"18639","VAT_PSV_AMT":"863","EXCTN_BAL":"1363","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0004  ��������¹�ȣ : D���� 400-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"18637","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":4181,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"400-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000004","SPOT_USE":"0","ITXP_NM":"�����ü������ �� ����","ITXP_CD":"B0201","AGRMT_CASH_LIM_AMT":"38000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"38000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"33819","VAT_PSV_AMT":"3381","EXCTN_BAL":"4181","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0004  ��������¹�ȣ : D���� 400-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"33819","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":0,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"400-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000004","SPOT_USE":"30000","ITXP_NM":"�ΰǺ�","ITXP_CD":"B0202","AGRMT_CASH_LIM_AMT":"30000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"30000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"30000","VAT_PSV_AMT":"0","EXCTN_BAL":"0","SPOT_PLAN":"30000","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0004  ��������¹�ȣ : D���� 400-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"30000","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":100, "AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"400-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000004","SPOT_USE":"0","ITXP_NM":"��������������","ITXP_CD":"B0203","AGRMT_CASH_LIM_AMT":"9000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"9000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"8900","VAT_PSV_AMT":"0","EXCTN_BAL":"100","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0004  ��������¹�ȣ : D���� 400-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"8900","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":0, "AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"400-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000004","SPOT_USE":"0","ITXP_NM":"��������","ITXP_CD":"B0203","AGRMT_CASH_LIM_AMT":"2000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0200","USE_APV_CASH_LIM_AMT":"2000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"2000","VAT_PSV_AMT":"0","EXCTN_BAL":"0","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0004  ��������¹�ȣ : D���� 400-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"2000","RCH_EXP_ACCT_BNK_CD":"020"};
                    gridValue[cnt++] = {"USR_NM":"������","SPOT_BAL":"0","USE_APV_CASH_LIM_AMT2":90,"AGRMT_INST_ID":"10000001","RCH_EXP_ACCT_NO":"400-00-000000","AGRMT_INST_NM":"��RCMS","AGRMT_SEQ_NO":"G00000000000004","SPOT_USE":"0","ITXP_NM":"������","ITXP_CD":"B0301","AGRMT_CASH_LIM_AMT":"1000","HGRK_ITXP_NM":"������","HGRK_ITXP_CD":"B0300","USE_APV_CASH_LIM_AMT":"1000","EXCTN_REG_VAT_AMT":"0","SPLM_AMT":"0","EXCTN_REG_AMT":"910","VAT_PSV_AMT":"0","EXCTN_BAL":"90","SPOT_PLAN":"0","PMS_ID":"G01","INT_USE_AMT":"0","SBJT_ID":"TEST0001","SBJT_NM":"������ : RCMS �ǽ��� �ű԰��� (������ȣ : TEST0004  ��������¹�ȣ : D���� 400-00-000000)","INST_NM":"�ѱ��������򰡰�����","EXCTN_EXEC_AMT":"910","RCH_EXP_ACCT_BNK_CD":"020"};

                }
	        	paramValue = "";
	        	
	        }

	    }

	}finally{
		gridData = gridValue;    //��ȸ��� JSON �� ��������
	    rMateGridSetData();  //rMateGrid ����
	    
	}
}

function search(gubun){
	if(!gubun) return false;
	
	try{
		document.body.setCapture(); // 'wait'
		document.body.style.cursor =	"wait";
	    //SetData(); //Insert   Grid
		SetData(gubun); //Insert	Grid
		document.body.style.cursor =	"auto";
		document.body.releaseCapture(); //setCapture()_Next
	}finally{
		reset_submit();
		searchAlert();
	}
}
function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}
</script>

</body>
</html>
