<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T12_02_00.jsp
 *   Description        : ������
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29                   ������             
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

    String ExctnPw          = "qwer1234";
    String ExctnPwLimtYn    = "N";
    
%>


<title>������ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
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
            




                    <div><img src="/images/pefo/sub_navt1.gif" alt="���������" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_txt">��Ȳ��ȸ</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_3dep">�������� ��Ȳ��ȸ</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>
                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_txt_on">�����������</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep">�����</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_02_00.jsp'); return false;" class="menu_3dep_on">������</a></li>
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
var _param;
function uf_search(param){
    var frmRtr = document.rtr_str_form;
    var frm = document.frm;
    var val='0';
    
    if(!param || typeof param == "undefined") param = _param;
    
    if( isSubmit() ) return;    // ����ó��
    
    // ��뿹���ݾ�, ��뿹���Ǽ� �ʱ�ȭ
    document.all["idExctnScheTrnAmt"].innerHTML = "0";
    document.all["idExctnScheTrnCnt"].innerHTML = "0";
    
    selectorColumn = gridRoot.getObjectById("selector");
    selectorColumn.setAllItemSelected(false);
    
    uf_proce_display_on();  //�ε���
    rMateGridLayoutInit_rMate();    //�׸��� �ʱ�ȭ
    setTimeout(
           function(){
               search(param);
           }
           , 1000);   // 1���� ���� 1000 = 1��
}

/********************************************************
* Function      : uf_extcn()
* Parameter     : 
* Description   : �����������
********************************************************/
function uf_extcn(){
    var frm = document.frm;
    var AgrmtSeqNo = "";
    var idx = -1;
    var otmAmt = "";
    //���õ� row�� �� ��������
    var dataRow;

    // ������ȸ ���� Ȯ��
    if(!bAutoSbjtSch()) return;
    
    if(!chkGridSelectedCount_rMate(gridRoot, "������")) return;  // ������������� �Ѱ� ����Ȯ��
    
    
    for(var i=0;i<selectorColumn.getSelectedIndices().length;i++){
        var idx = selectorColumn.getSelectedIndices()[i];
        
        dataRow = gridRoot.getItemAt(idx);
        
        if(("C"==dataRow.BZ_EXP_EXCTN_EVDC_DV) && ("B02003"==dataRow.CRD_SETL_METH)){
            alert("ī���ϳ����� ����ϱ����� �Ͻø� \nī������Ͽ� ī��������·� ī����(�������ߺ�)�� �Աݵ˴ϴ�.");
            return;
        }
        if("Y"!=dataRow.BZ_EXP_EXCTN_REG_YN){
            alert("������°� [���������û]������ ������ �������� �����մϴ�.\n[�����/����] ��ư�� �̿��Ͽ� �߰� �κ��� �ۼ����ּ���.");
            return;
        }
        
    }
    
    
    
    //��밡�ɻ���/�ݾ�Ȯ��
    var trnAmt = Number(document.all["idExctnScheTrnAmt"].innerHTML.replace(/,/gi,"")); 
    
    
    for(var i=0;i<selectorColumn.getSelectedIndices().length;i++){
        var idx = selectorColumn.getSelectedIndices()[i];
        
        dataRow = gridRoot.getItemAt(idx);
        
        if(otmAmt!="") otmAmt = otmAmt +"|"+dataRow.BZ_EXP_EXCTN_AMT;
        else otmAmt = dataRow.BZ_EXP_EXCTN_AMT;
    }
    
    
    if(!uf_StAllCheck()) return;

    if( !confirm("���õ� ������ ������ �Ͻðڽ��ϱ�?") ) return;
    
    for(var i=0;i<selectorColumn.getSelectedIndices().length;i++){
        var idx = selectorColumn.getSelectedIndices()[i];
        
        dataRow = gridRoot.getItemAt(idx);
        get2post(frm, dataRow.G_PARAM);
        
    }
    
    
    if( isSubmit() ) return;                // ����ó��

    frm.action = "T12_02_20.jsp";
    frm.target = "_self";
    fn_submit_ns2(frm);
    
    
}



function uf_autoSbjtSchCallBack(param) {
    
    if(!param){
        alert("������ �߻��Ͽ����ϴ�. ����� �ٽ� �õ����ּ���.");
        return;
    }

    var responseXML = "";
    _param = param;
    
    var paramArray = param.split(",");
    
    var responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result>";
    if(paramArray.length > 0){
        for(var i=0;i<paramArray.length;i++){
            if("1" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
            }else if("2" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
            }else if("3" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
            }else if("4" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
            }
        }
    }
    
    
    responseXML += "</result></results>";
    
    
    document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
    //=============================
    //  �����ų �޼ҵ� �� ��ġ
    //=============================
        uf_search(param);
    //=============================
}

/********************************************************
* Function      : uf_itxpUpdate()
* Parameter     : 
* Description   : �����/���� �˾�â ȣ��
********************************************************/
function uf_itxpUpdate(){
    
    var frm_key = document.rtr_str_form;
    var rcmsGrpCd;
    var frm = document.frm;
    var pop_width = "800",pop_height = "890",param,url,evdc_cd,crdSetlMthd;
    
    // ������ȸ ���� Ȯ��
    if(!bAutoSbjtSch()) return;
    
    if(!chkGridOneSelectedCount_rMate(gridRoot, "�����/����")) return;  // ������������� �Ѱ� ����Ȯ��
    
        
    //���õ� row�� �� ��������
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot.getItemAt(rowIndex);
    
        get2post(frm,dataRow.G_PARAM);
        
        if( "B04121" == dataRow.EXCTN_ST ){
            alert('������ü ���û ������ ���� �Ǵ� ���� �� �� �����ϴ�.');
            return;
        }
        evdc_cd     =   dataRow.BZ_EXP_EXCTN_EVDC_DV;
        crdSetlMthd =   dataRow.CRD_SETL_METH;
        grpYn       =   dataRow.GRP_YN;
        
        //2011.11.30 EDMS ����
        get2post(frm, "hmpwRoleDv="+frm_key.S_HMPW_ROLE_DV.value);
        get2post(frm, "rcmsGrpCd="+frm_key.S_RCMS_GRP_CD.value);    
        get2post(frm, "pmsId="+frm_key.S_PMS_ID.value);
        

        
    //ī��鼭 �������ΰ�� âũ������
    if("C"  ==  evdc_cd && "B02003"==crdSetlMthd && grpYn == 'N'){
        pop_height = "650";
    }
    
    if( grpYn == 'Y' ){
        url = "/t01/t12/T12_02_11.jsp?"; //���켱
    }else{
        url = "/t01/t12/T12_02_10.jsp?"; //�����켱
    }
    uf_frmNewWinNs(frm, url, 'RCMS_MAKE_POPUP', pop_width, pop_height);
    removeTempAttribute(frm);
    
}
/********************************************************
* Function      : crd_info_display()
* Parameter     : 
* Description   : ī��������ȸ���ڸ�Ʈ
********************************************************/
function crd_info_display(val){
    if("0"==val){
        document.getElementById("crd_sch_info").style.display   =   "none"; 
    }else{
        document.getElementById("crd_sch_info").style.display   =   "inline";
    }
}
/********************************************************
* Function      : uf_Inst_delItxp()
* Parameter     : 
* Description   : ��� �� ��������
********************************************************/
function uf_Inst_delItxp(){
    var frm = document.frm;
        
    // ������ȸ ���� Ȯ��
    if(!bAutoSbjtSch()) return;

    if(!chkGridSelectedCount_rMate(gridRoot, "��� �� ��������")) return;  // ������������� �Ѱ� ����Ȯ��

    if( !confirm("�����Ͻ� ������ �����Ͻðڽ��ϱ�?") ) return;
    if( isSubmit() ) return;                                    // ����ó��

    //���õ� row�� �� ��������
    var dataRow;
    
    for(var i=0;i<selectorColumn.getSelectedIndices().length;i++){
        var idx = selectorColumn.getSelectedIndices()[i];
        
        dataRow = gridRoot.getItemAt(idx);
        
        if( "B04121" == dataRow.EXCTN_ST ){
            alert('���� �Ұ����� ���������� ���ԵǾ� �ֽ��ϴ�.(������ü ���û)');
            removeTempAttribute(frm);
            return;
        }else{
            get2post(frm, dataRow.G_PARAM);
        }
        
    }
    


    uf_proce_display_on();  //�ε���
    
    setTimeout(
        function(){
                try{   
                    reset_submit();
                    alert('�����Ǿ����ϴ�.');
                    uf_search();
                    
                }finally{

                }
            
            }, 1000);   // 1���� ���� 1000 = 1��s
}
</script>









    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
      



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u12_02_00_t.gif" alt="������"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>���������</li>
                       <li><img src="/images/common/arr.gif" alt=" " />�����������</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">������</span></li>
                        
                    </ul>
                </div>
            </div>                      
      <!-- //pagenav end// -->
      <div class="t30"></div>
    

        




<!-- //auto search start -->
<%
    boolean isSbjtAutoSchMulti  =   true;  //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�
    boolean beSearchBtn         =   false;   //��ȸ��ư ��������
    String SSbjtInqDvCd        = "F";      //������������
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->






    
      <div class="cb b10"></div>
      <h3>����û��ϳ���</h3>
      <!-- �˻��� start -->
<form name="frm" method="post">
<input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />
<input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="N" />      
      <div class="search">
        <div class="search_boxt"></div>
        <div class="search_boxc">
          <fieldset>
          <legend>����û��ϳ��� �˻�</legend>
          <table width="680" summary="����û��ϳ��� �˻�" class="tbl_search">
            <caption>
            ����û��ϳ��� �˻�
            </caption>
            <colgroup>
            <col width="18%" />
            <col width="82%" />
            </colgroup>
            <tbody>
              <tr>
                  <th scope="row">��������</th>
                  <td>
                      <select name="sch_evdc_type" id="sch_evdc_type">
                          <option value="A">��ü</option>
                          <option value="T">���ڼ��ݰ�꼭</option>
                          <option value="C">ī��</option>
                          <option value="E">��Ÿ</option>
                          <option value="TE">���ڼ��ݰ�꼭/��Ÿ</option>
                      </select>
                  </td>
              </tr>            
              <tr>
                <th scope="row"><label for="usedaystart">��¥����</label></th>
                <td>
                <%=ComboUtil.getComboBox("RNDB30", "DATE_DV", "", "", "", ComboUtil.OPT_NONE) %>
                <%@ include file="/inc/set_date_btn.jsp" %>
                <%@ include file="/inc/set_date_week.jsp" %>        
                </td>
              </tr>
            </tbody>
          </table>
          </fieldset>
        </div>
<div class="search_boxb1" id="search_boxb"></div>
                <!-- �˻��� ����ȸ start -->
                <div class="detail_boxt" id="detail_box"style="display:none;">
                    <p class="ar07">
                        <a href="#dummy" onclick="uf_hide_detail_condition('btnDetailShow');"><img src="/bt/bt_sclose.gif" alt="����" /></a>
                    </p>
                    <div class="detail_boxc">
                        <fieldset>
                            <legend>��������ȸ ����ȸ</legend>
                            <table width="680" summary="��������ȸ ����ȸ" class="tbl_search01">
                            <caption>��������ȸ ����ȸ</caption>
                            <colgroup>
                                <col width="18%" />
                                <col width="32%" />
                                <col width="18%"/>
                                <col width="32%"/>
                            </colgroup>
                            <tbody>
                          <tr>
                            <th scope="row"><label for="search_AchvInstIndv1Cd">����밳���ڵ�A</label></th>
                            <td><input type="text" name="search_AchvInstIndv1Cd" id="search_AchvInstIndv1Cd" title="����밳���ڵ�A" class="inputl"  style="ime-mode:inactive;width:125px;"/></td>
                            <th scope="row"><label for="search_AchvInstIndv2Cd">����밳���ڵ�B</label></th>
                            <td><input type="text" name="search_AchvInstIndv2Cd" id="search_AchvInstIndv2Cd" title="����밳���ڵ�B" class="inputl"  style="ime-mode:inactive;width:125px;"/></td>
                            </tr>
                            </tbody>
                            </table>
                        </fieldset>
                    </div>
                </div>
                <div id="detail_boxb" style="display:none;"><img src="/images/pefo/search_box5.gif" alt=" " /></div>
                <!-- //�˻��� ����ȸ end// -->        
      </div>
      <div class="cb"></div>
      <!-- //�˻��� end// -->
      <!-- ��ȸ ����ȸ ��ư start -->
      <div class="search_bt1 ar">
                      <a href="#dummy" onclick="uf_show_detail_condition(this.id);" id="btnDetailShow"><img src="/bt/bt_search1.gif" alt="����ȸ" class="vt" /></a>
      <a href="#dummy" onclick="autoSbjtFormGen();" class="bt_search" title="��ȸ"></a></div>
      <!-- //��ȸ ����ȸ ��ư end// -->
      <div class="t10"></div>
      <div class="total_box">
        <p class="fl">
                <div style="display:inline-block;margin-top:5px;">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> ��]</div>
                <a href="#dummy" onclick="gridAllCheck();"><img src="/images/bt/bt_total.gif" alt="��ü����" valign="top" class="b05" /></a>
        </p>
                <p id="crd_sch_info" class="ar b05" style="display:none;"><span style='color:red;'> �� ī�������� ��������(������) ������ ��ȸ�� �˴ϴ�.</span></p>
                <p class="cb"></p>
      </div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv" style="width:100%;">
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
      
      
      
      
      
      
      
      
      
      
      <div class="t10">
        <table width="704" border="0" cellspacing="0" cellpadding="0" summary="����û��ϳ��� �󼼳���" class="tbl_type02">
          <caption>
          ����û��ϳ��� �󼼳���
          </caption>
          <colgroup>
          <col width="20%" />
          <col width="30%"/>
          <col width="20%" />
          <col width="30%"/>
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">��뿹���ݾ�</th>
              <td id="idExctnScheTrnAmt">0</td>
              <th scope="row">��뿹���Ǽ�</th>
              <td class="ll" id="idExctnScheTrnCnt">0</td>
            </tr>
          </tbody>
        </table>
      </div>
      </form>
      <!-- action bt start -->
        <div class="action_bt">
            <div class="fl"> 
                <a href="#dummy"  onclick="uf_itxpUpdate();" class="bt_action2" title="����"><span class="bt_sp1">����</span></a> 
                <a href="#dummy"  onclick="uf_Inst_delItxp();" class="bt_action2-1" title="����"><span class="bt_sp">����</span></a> 
            </div>
            <div class="fr">
            
                <a href="#dummy" onclick="uf_extcn();" class="bt_action7-1" title="�����������"><span class="bt_sp">�����������</span></a>                  
            
             </div>
        </div>
    <div class="cb"></div>  
      <!-- //action bt end// -->
      <!-- ���ǻ��� start -->
      <div class="guide_box">
        <p class="guide_boxt"></p>
        <div class="guide_boxc">
          <ul>
            
            <li>������(��ü) ���ɽð��� 09:00~20:00 �Դϴ�.</li>
          </ul>
        </div>
        <p class="guide_boxb"></p>
      </div>
      <!-- //���ǻ��� end// -->

    <!-- �ȳ� ���̵� start -->
    <div class="guide_box1" id="guide">
        <div class="guide_boxt1">
            <p class="txt_title fl">������ �ȳ�</p> 
            <p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="����" class="vc"/></a></p>
        </div>
        <div class="guide_boxc1">
            <ul>
                <li>�� �������� ����� ��ü����(�ѹ������, ȸ������)�� ���� ����ڰ� <span class="txt_or">'���ΰ���������'�� �α���</span>�� �� �̸� ������  <span class="txt_or">'��ü��й�ȣ'�� '����ڹ��ι������������'�� ���� �ǽð�������ü</span>�� �Ͻ� �� �ֽ��ϴ�. </li>
                <li>'�����������' ��ư�� ������ �ʴ´ٸ�? ����å���ڿ��� ��û�Ͽ� ��ü������ �����ñ� �ٶ��ϴ�.</li>
                <li>�ǽð�������ü�� <span class="txt_or">���ڼ��ݰ�꼭, ��Ÿ���� �ǿ� ���� ó�� ����</span>�մϴ�.(ī�������� ����)</li>
            </ul>
            <p class="tip">�������� ������ �����Ͽ� �������� ������ �ѹ��� ó���� �� �ֽ��ϴ�.</p>
            <ul>
                <li>ī�������� ��� ������ ���� ��� �ǿ� ���ؼ��� �̰����� ���������Ͻø� �����Ͽ� ������� �ʽ��ϴ�.</li>
                <li>������(��ü) ���ɽð��� 09:00~20:00 �Դϴ�.</li>
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
/********************************************************
* Function      : uf_StAllCheck(idx)
* Parameter     : 
* Description   : ����������� �׸��� OnChange Evt�� ���ܾ� ����
********************************************************/
function uf_StAllCheck(){
    
    var bzRegNo = "";
    var idx = -1;
    
    //���õ� row�� �� ��������
    var dataRow;
    
    selectorColumn = gridRoot.getObjectById("selector");    //üũ�� ID ��������
    var arrIdx = selectorColumn.getSelectedIndices();       //üũ�� row ��������
    
    for(var i=0;i<arrIdx.length;i++){
        var idx = arrIdx[i];
        
        dataRow = gridRoot.getItemAt(idx);
        
        if("����" != dataRow.EXCTN_LIMT_ST){
            alert("������ �����߿� ������ѻ��°� ���������� ������ �ֽ��ϴ�.\n������ ������ѻ��°� ���������� ���� ������ �� �� �����ϴ�.");
            return false;
        }
        
        if("8" != dataRow.AGRMT_ST_DV){
            alert("["+dataRow.SBJT_NM +"] ������ \n����ü���� ���� ���� �����Դϴ�.\n����ü���� ���� ���� ������ ������ �� �� �����ϴ�.");
            return false;
        }
        
        if("N" == dataRow.PRIVT_ALOT_AMT_UN_PAY_YN){              
            alert("["+dataRow.SBJT_NM +"] ������ \n�ΰ��δ���� �̳��Ǿ� �������� �� �� �����ϴ�.");
            return false;
        }
        
        if("N"== dataRow.AGRMT_SEQ_NO3){
            alert("["+dataRow.SBJT_NM +"] ������ \n��ü ������ �����ϴ�.\n���������� Ȯ���� �ֽñ� �ٶ��ϴ�.");
            return false;
        }
        
        if(bzRegNo=="") bzRegNo=dataRow.AGRMT_INST_BZ_REG_NO;
        if(bzRegNo!=dataRow.AGRMT_INST_BZ_REG_NO){
            alert("������ �����߿� ���(����ڵ�Ϲ�ȣ)�� �ٸ� ������ �ֽ��ϴ�.\n����� �ٸ� ������ ���ÿ� ������ �Ҽ� �����ϴ�.");
            return false;
        }
        
    }
    
    return true;
}

    



$(document).ready(function() {
        // rMateGrid �ʱ�ȭ
        rMateGridInit();
        
        $("a#example1").fancybox();
        $("a#example2").fancybox();
        
        $('#btn-guide').click(function(){
          if( $('#guide').css('height') == '17px' ){
            $('#guide').css({overflow:'hidden'}).animate({height:200},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
          }else{
            $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
          }
          return false;
        });
    
      
});

</script>






<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//���̾ƿ� ����
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"2\" draggableColumns=\"false\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
    <columns>\
    <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\" dataField=\"selector\" headerText=\"����\" width=\"45\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"EXCTN_TIME\"                 dataField=\"EXCTN_TIME\"              headerText=\"����Ͻ�\"             width=\"120\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_DT\"                    dataField=\"TRSC_DT\"                 headerText=\"�������\"             width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_REG_YN_NM\"     dataField=\"BZ_EXP_EXCTN_REG_YN_NM\"  headerText=\"�������\"             width=\"100\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_REG_YN\"        dataField=\"BZ_EXP_EXCTN_REG_YN\"     headerText=\"�����Ͽ���\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_EVDC_DV_NM\"    dataField=\"BZ_EXP_EXCTN_EVDC_DV_NM\" headerText=\"��������\"             width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_NM\"                    dataField=\"SBJT_NM\"                 headerText=\"������\"               width=\"130\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_ACCT_BNK_NM\"            dataField=\"RCV_ACCT_BNK_NM\"         headerText=\"�Ա�����\"             width=\"70\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_ACCT_NO\"                dataField=\"RCV_ACCT_NO\"             headerText=\"�Աݰ��¹�ȣ\"         width=\"100\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OWAC_NM\"                    dataField=\"OWAC_NM\"                 headerText=\"�����ָ�\"             width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_AMT\"           dataField=\"BZ_EXP_EXCTN_AMT\"        headerText=\"�ݾ�\"                 width=\"100\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_SPLY_AMT\"               dataField=\"USE_SPLY_AMT\"            headerText=\"���ޱݾ�\"             width=\"110\"   visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_VAT_AMT\"                dataField=\"USE_VAT_AMT\"             headerText=\"�ΰ���ġ����\"         width=\"90\"    visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_ST_NM\"                dataField=\"EXCTN_ST_NM\"             headerText=\"����ܰ�\"             width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_SETL_METH_NM\"           dataField=\"CRD_SETL_METH_NM\"        headerText=\"��ü���\"             width=\"100\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USR_NM\"                     dataField=\"USR_NM\"                  headerText=\"����å����\"           width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_ID\"                    dataField=\"SBJT_ID\"                 headerText=\"������ȣ\"             width=\"80\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUTR_ID\"                    dataField=\"BUTR_ID\"                 headerText=\"�����Ϸù�ȣ\"         width=\"200\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_EVDC_DV\"       dataField=\"BZ_EXP_EXCTN_EVDC_DV\"    headerText=\"���������ڵ�\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO\"               dataField=\"AGRMT_SEQ_NO\"            headerText=\"�����Ϸù�ȣ\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"INST_SBJT_PRGR_ST\"          dataField=\"INST_SBJT_PRGR_ST\"       headerText=\"�����������\"         width=\"90\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_LIMT_ST\"              dataField=\"EXCTN_LIMT_ST\"           headerText=\"������ѻ���\"         width=\"90\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_BZ_REG_NO\"       dataField=\"AGRMT_INST_BZ_REG_NO\"    headerText=\"����ڵ�Ϲ�ȣ\"       width=\"95\"    visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACHV_INST_INDV_1_CD\"        dataField=\"ACHV_INST_INDV_1_CD\"     headerText=\"����밳���ڵ�A\"      width=\"110\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ACHV_INST_INDV_2_CD\"        dataField=\"ACHV_INST_INDV_2_CD\"     headerText=\"����밳���ڵ�B\"      width=\"110\"   visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_ST_DV\"                dataField=\"AGRMT_ST_DV\"             headerText=\"������±���\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PRIVT_ALOT_AMT_UN_PAY_YN\"   dataField=\"PRIVT_ALOT_AMT_UN_PAY_YN\" headerText=\"�ΰ��δ�ݹ̳�����\"  width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO2\"              dataField=\"AGRMT_SEQ_NO2\"           headerText=\"��������\"             width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO3\"              dataField=\"AGRMT_SEQ_NO3\"           headerText=\"��ü���ɱ��ѿ���\"     width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_SETL_METH\"              dataField=\"CRD_SETL_METH\"           headerText=\"��ü����ڵ�\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"GRP_YN\"                     dataField=\"GRP_YN\"                  headerText=\"�׷�YN\"               width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_ST\"                   dataField=\"EXCTN_ST\"               headerText=\"��������ڵ�\"         width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"G_PARAM\"                    dataField=\"G_PARAM\"                 headerText=\"G_PARAM\"              width=\"0\"     visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{BZ_EXP_EXCTN_REG_YN_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{BZ_EXP_EXCTN_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_SPLY_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_VAT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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
        
        //if (columnIndex == 3) { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
        if (dataField == "selector") { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
            //uf_Click(rowIndex, columnIndex, dataRow, dataField);
            selectorColumn = gridRoot.getObjectById("selector");
            //alert(selectorColumn.getSelectedIndices());
            
            //���õ� ���� �հ�ݾ� ���ϱ�
            uf_ExctnScheCnt(selectorColumn.getSelectedIndices()); 
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
        
        //popupDetail(rowIndex, dataRow);
        layerDetail(dataGrid, dataRow);
        
    };

    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //�̺�Ʈ ���
        //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
        dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    gridRoot.addEventListener("dataComplete", getRowCount);

};



//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//�ε� �� rMadeGrid ���
function rMateGridSetData() {
    //rMageGrid �ʱ�ȭ
    //gridApp.setData(null);

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //������ ���
    
    
    // ���콺 �� �̺�Ʈ �����ʸ� �����մϴ�.
    addGridMouseWheelEventListener();

    
};


/********************************************************
* Function      : uf_ExctnScheCnt()
* Parameter     : ���ε���(rIdx)
* Description   : ����������� �׸��� OnChange Evt�� ���ܾ� ����
********************************************************/
function uf_ExctnScheCnt(rIdx){
    var ExctnScheTrnAmt = 0;
    var ExctnScheTrnCnt = 0;
    
    if(!rIdx || rIdx.length < 1 ){
        document.all["idExctnScheTrnAmt"].innerHTML = toMoney(ExctnScheTrnAmt);
        document.all["idExctnScheTrnCnt"].innerHTML= toMoney(ExctnScheTrnCnt);
        return;
    }
    
    var idx;
    
    for(var i=0;i<rIdx.length;i++){
        idx = rIdx[i];
        ExctnScheTrnAmt = ExctnScheTrnAmt + Number(gridRoot.getItemFieldAt(idx, "BZ_EXP_EXCTN_AMT"));
        ExctnScheTrnCnt++;
    }
    
    document.all["idExctnScheTrnAmt"].innerHTML = toMoney(ExctnScheTrnAmt);
    document.all["idExctnScheTrnCnt"].innerHTML= toMoney(ExctnScheTrnCnt);
}


    
    

/**
 * ��ü ������ �����ϰų� �����մϴ�.
 */
function gridAllCheck() {
    selectorColumn = gridRoot.getObjectById("selector");
    var isSelected = selectorColumn.getAllItemSelected();
    selectorColumn.setAllItemSelected(!selectorColumn.getAllItemSelected());
    
    
    if(!isSelected){    // false �� �� ��ü ����
        selectorColumn = gridRoot.getObjectById("selector");
        //���õ� ���� �հ�ݾ� ���ϱ�
        uf_ExctnScheCnt(selectorColumn.getSelectedIndices()); 
    }else{
        uf_ExctnScheCnt();
    }
    
}



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

    //uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_10.jsp', 'TAXVIEW1', '800', '500', 'yes');
    uf_frmNewWinNs(document.frm, '/t01/t11/T11_01_10.jsp', 'TAXVIEW1', '800', '1000', 'yes');
    removeTempAttribute(document.frm); //get2post ����

}




function getRowCount(){
    $("#InqPrsTotlNcnt2").html(getGridRowCount_rMate());
}

</script>
<!-- **********************  rMateGrid setting END ***********************  -->





<script type="text/javascript">
var cnt = 0;
function SetData(param){    

    try{
        
        var paramArray = param.split(",");
        var gridValue = [];
        cnt = 0;
        
        if(paramArray.length > 0){
            var paramValue = "";
            for(var i=0;i<paramArray.length;i++){
                
                paramValue = paramArray[i];
                if(paramValue == "1"){

                }else if(paramValue == "2"){
                    
                    gridValue[cnt++] = {"BZ_EXP_EXCTN_EVDC_DV":"T","EXCTN_TIME":"2014-03-20 17:01:42","TRSC_DT":"2014-03-11",  "BZ_EXP_EXCTN_REG_YN_NM":"���������û","BZ_EXP_EXCTN_REG_YN":"Y","BZ_EXP_EXCTN_EVDC_DV_NM":"���ڼ��ݰ�꼭", "SBJT_NM":"RCMS �ǽ��� �������","RCV_ACCT_BNK_NM":"E ����", "RCV_ACCT_NO":"555-55-555555-0","OWAC_NM":"�� �� ��ü","BZ_EXP_EXCTN_AMT":"5500","USE_SPLY_AMT":"5000","USE_VAT_AMT":"500","EXCTN_ST_NM":"������",    "CRD_SETL_METH_NM":"�ǽð���ü","USR_NM":"��å��","SBJT_ID":"TEST0002","INST_SBJT_PRGR_ST":"����","EXCTN_LIMT_ST":"����","AGRMT_INST_BZ_REG_NO":"111-11-11111","ACHV_INST_INDV_1_CD":"","ACHV_INST_INDV_2_CD":"","AGRMT_ST_DV":"8","CRD_SETL_METH":"2","G_PARAM":"SbjtId=TEST0002&SbjtNm=RCMS �ǽ��� �������&ExctnRegDt=20140320&ExctnRegDrtm=170142&BzExpExctnEvdcDv=T&ButrId=T201308192251542&RcvBnkCd=&RcvBnkNm=E����&RcvAcctNo=100-10-100000&RcvPsbkPrtCtt=�����ü�����Ժ�&WdrwPsbkPrtCtt=�����ü�����Ժ�&BzExpExctnAmt=5500&SplyAmt=5000&VatAmt=500&PaymUsag=(��)RCMS&OwacNm=(��) �� ��ü&TelNo=&ExctnStgDv=&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&BzMomAcctBnkCd=003&RchExpAcctBnkCd=003&BzMomAcctNo=10000000000&RchExpAcctNo=10000000000&AgrmtInstBzRegNo=1111111111&AchvInstIndv1Cd=&AchvInstIndv2Cd=&BzExpExctnRegYn=Y&CrdSetlMeth=2&InstLnkDatYn=N&ExctnSt="};
                    gridValue[cnt++] = {"BZ_EXP_EXCTN_EVDC_DV":"E","EXCTN_TIME":"2014-03-10 14:52:31","TRSC_DT":"",            "BZ_EXP_EXCTN_REG_YN_NM":"��������",    "BZ_EXP_EXCTN_REG_YN":"N","BZ_EXP_EXCTN_EVDC_DV_NM":"��Ÿ����",       "SBJT_NM":"RCMS �ǽ��� �������","RCV_ACCT_BNK_NM":"",      "RCV_ACCT_NO":"",             "OWAC_NM":"",       "BZ_EXP_EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0",  "EXCTN_ST_NM":"",         "CRD_SETL_METH_NM":"�ǽð���ü","USR_NM":"��å��","SBJT_ID":"TEST0002","INST_SBJT_PRGR_ST":"����","EXCTN_LIMT_ST":"����","AGRMT_INST_BZ_REG_NO":"111-11-11111","ACHV_INST_INDV_1_CD":"","ACHV_INST_INDV_2_CD":"","AGRMT_ST_DV":"8","CRD_SETL_METH":"2","G_PARAM":"SbjtId=TEST0002&SbjtNm=RCMS �ǽ��� �������&ExctnRegDt=20140310&ExctnRegDrtm=145231&BzExpExctnEvdcDv=E&ButrId=E201308192251542&RcvBnkCd=&RcvBnkNm=&RcvAcctNo=&RcvPsbkPrtCtt=�����ü�����Ժ�&WdrwPsbkPrtCtt=�����ü�����Ժ�&BzExpExctnAmt=2500&SplyAmt=2500&VatAmt=0&PaymUsag=(��) �� ��ü&OwacNm=(��) �� ��ü&TelNo=&ExctnStgDv=&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&BzMomAcctBnkCd=003&RchExpAcctBnkCd=003&BzMomAcctNo=10000000000&RchExpAcctNo=10000000000&AgrmtInstBzRegNo=1111111111&AchvInstIndv1Cd=&AchvInstIndv2Cd=&BzExpExctnRegYn=N&CrdSetlMeth=2&InstLnkDatYn=N&ExctnSt="};
                    gridValue[cnt++] = {"BZ_EXP_EXCTN_EVDC_DV":"C","EXCTN_TIME":"2014-02-18 17:33:43","TRSC_DT":"2014-02-14",  "BZ_EXP_EXCTN_REG_YN_NM":"��������",    "BZ_EXP_EXCTN_REG_YN":"N","BZ_EXP_EXCTN_EVDC_DV_NM":"ī�����",       "SBJT_NM":"RCMS �ǽ��� �������","RCV_ACCT_BNK_NM":"",      "RCV_ACCT_NO":"",             "OWAC_NM":"",       "BZ_EXP_EXCTN_AMT":"1100","USE_SPLY_AMT":"1000","USE_VAT_AMT":"100","EXCTN_ST_NM":"������",    "CRD_SETL_METH_NM":"������������","USR_NM":"��å��","SBJT_ID":"TEST0002","INST_SBJT_PRGR_ST":"����","EXCTN_LIMT_ST":"����","AGRMT_INST_BZ_REG_NO":"111-11-11111","ACHV_INST_INDV_1_CD":"","ACHV_INST_INDV_2_CD":"","AGRMT_ST_DV":"8","CRD_SETL_METH":"1","G_PARAM":"SbjtId=TEST0002&SbjtNm=RCMS �ǽ��� �������&ExctnRegDt=20140218&ExctnRegDrtm=173343&BzExpExctnEvdcDv=C&ButrId=C201304182250861&RcvBnkCd=&RcvBnkNm=&RcvAcctNo=&RcvPsbkPrtCtt=�����ü�����Ժ�&WdrwPsbkPrtCtt=�����ü�����Ժ�&BzExpExctnAmt=1100&SplyAmt=1000&VatAmt=100&PaymUsag=(��) �� ��ü&OwacNm=(��) �� ��ü&TelNo=&ExctnStgDv=&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&BzMomAcctBnkCd=003&RchExpAcctBnkCd=003&BzMomAcctNo=10000000000&RchExpAcctNo=10000000000&AgrmtInstBzRegNo=1111111111&AchvInstIndv1Cd=&AchvInstIndv2Cd=&BzExpExctnRegYn=N&CrdSetlMeth=2&InstLnkDatYn=N&ExctnSt="};
                    gridValue[cnt++] = {"BZ_EXP_EXCTN_EVDC_DV":"E","EXCTN_TIME":"2014-02-10 11:36:40","TRSC_DT":"",            "BZ_EXP_EXCTN_REG_YN_NM":"���������û","BZ_EXP_EXCTN_REG_YN":"Y","BZ_EXP_EXCTN_EVDC_DV_NM":"��Ÿ����",       "SBJT_NM":"RCMS �ǽ��� �������","RCV_ACCT_BNK_NM":"C ����", "RCV_ACCT_NO":"300-30-300000","OWAC_NM":"�� �� ��ü","BZ_EXP_EXCTN_AMT":"2500","USE_SPLY_AMT":"2500","USE_VAT_AMT":"0",   "EXCTN_ST_NM":"������",  "CRD_SETL_METH_NM":"�ǽð���ü","USR_NM":"��å��","SBJT_ID":"TEST0002","INST_SBJT_PRGR_ST":"����","EXCTN_LIMT_ST":"����","AGRMT_INST_BZ_REG_NO":"111-11-11111","ACHV_INST_INDV_1_CD":"","ACHV_INST_INDV_2_CD":"","AGRMT_ST_DV":"8","CRD_SETL_METH":"2","GRP_YN":"Y","G_PARAM":"SbjtId=TEST0002&SbjtNm=RCMS �ǽ��� �������&ExctnRegDt=20140210&ExctnRegDrtm=113640&BzExpExctnEvdcDv=E&ButrId=E201308192251542&RcvBnkCd=&RcvBnkNm=C����&RcvAcctNo=300-30-300000&RcvPsbkPrtCtt=�����ü�����Ժ�&WdrwPsbkPrtCtt=�����ü�����Ժ�&BzExpExctnAmt=2500&SplyAmt=2500&VatAmt=0&PaymUsag=(��) �� ��ü&OwacNm=(��) �� ��ü&TelNo=&ExctnStgDv=&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&BzMomAcctBnkCd=003&RchExpAcctBnkCd=003&BzMomAcctNo=10000000000&RchExpAcctNo=10000000000&AgrmtInstBzRegNo=1111111111&AchvInstIndv1Cd=&AchvInstIndv2Cd=&BzExpExctnRegYn=Y&CrdSetlMeth=2&InstLnkDatYn=N&ExctnSt="};
                    gridValue[cnt++] = {"BZ_EXP_EXCTN_EVDC_DV":"T","EXCTN_TIME":"2014-02-03 10:23:12","TRSC_DT":"2014-02-03",  "BZ_EXP_EXCTN_REG_YN_NM":"��������",    "BZ_EXP_EXCTN_REG_YN":"N","BZ_EXP_EXCTN_EVDC_DV_NM":"���ڼ��ݰ�꼭", "SBJT_NM":"RCMS �ǽ��� �������","RCV_ACCT_BNK_NM":"",      "RCV_ACCT_NO":"",                "OWAC_NM":"",       "BZ_EXP_EXCTN_AMT":"1320","USE_SPLY_AMT":"1200","USE_VAT_AMT":"120","EXCTN_ST_NM":"",       "CRD_SETL_METH_NM":"�ǽð���ü","USR_NM":"��å��","SBJT_ID":"TEST0002","INST_SBJT_PRGR_ST":"����","EXCTN_LIMT_ST":"����","AGRMT_INST_BZ_REG_NO":"111-11-11111","ACHV_INST_INDV_1_CD":"","ACHV_INST_INDV_2_CD":"","AGRMT_ST_DV":"8","CRD_SETL_METH":"2","GRP_YN":"Y","G_PARAM":"SbjtId=TEST0002&SbjtNm=RCMS �ǽ��� �������&ExctnRegDt=20140203&ExctnRegDrtm=102312&BzExpExctnEvdcDv=T&ButrId=T201308192251542&RcvBnkCd=003&RcvBnkNm=&RcvAcctNo=20020200000&RcvPsbkPrtCtt=�����ü�����Ժ�&WdrwPsbkPrtCtt=�����ü�����Ժ�&BzExpExctnAmt=1320&SplyAmt=1200&VatAmt=120&PaymUsag=(��)RCMS&OwacNm=(��)RCMS&TelNo=2345&ExctnStgDv=2&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&BzMomAcctBnkCd=003&RchExpAcctBnkCd=003&BzMomAcctNo=10000000000&RchExpAcctNo=10000000000&AgrmtInstBzRegNo=1111111111&AchvInstIndv1Cd=(��)RCMS&AchvInstIndv2Cd=&BzExpExctnRegYn=Y&CrdSetlMeth=2&InstLnkDatYn=N&ExctnSt=B04101"};

                }else if(paramValue == "3"){
                    
                    
                }else if(paramValue == "4"){


                }
                
                paramValue = "";
            }

        }
    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
    }
}

function search(param){

    if(!param) return false;
    try{
        document.body.style.cursor = "wait";
        SetData(param); //Insert    Grid
        document.body.style.cursor = "auto";

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