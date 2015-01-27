<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T14_02_00.jsp
 *   Description        : ������볻�� ���
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

<title>������볻�� ��� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
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
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_txt">�����������</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep">�����</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_02_00.jsp'); return false;" class="menu_3dep">������</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_03_00.jsp'); return false;" class="menu_3dep">��������� ��ȸ</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_txt_on">������ϰ���</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_3dep">������ϳ��� ��ȸ</a></li>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_02_00.jsp'); return false;" class="menu_3dep_on">������볻�� ���</a></li>
                        
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
function uf_search(SchGb){
    var frm = document.frm;
    

    //if( isSubmit() ) return;    // ����ó��
    //getRegPossDis();          // ��ư����


    
    var rFrm = document.rtr_str_form;
    if(rFrm.S_AGRMT_SEQ_NO == "" || typeof rFrm.S_AGRMT_SEQ_NO == "undefined") return;
    
    //�׸��� �ʱ�ȭ
    rMateGridLayoutInit_rMate(gridRoot, gridApp, layoutStr);
    
    if( isSubmit() ) return;    // ����ó��
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(
           function(){
               setData(rFrm.S_AGRMT_SEQ_NO.value);
           }
           , 1000);   // 1���� ���� 1000 = 1��
           
    
    SpotBalTbl.style.display = "block";
           
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
    
    uf_search();
    
}


//��� ���̺� �޺�
var SelDtlsItxpCd = new Array();
var SelDtlsItxpNm = new Array();
var SelSubDtlsItxpCd = new Array();
var SelSubDtlsItxpNm = new Array();

function mkDtlsItxpCd(tObjIdx){
    var tObjItxp = document.all["ReprDtlsItxpCd"];
    var tObjDtlsItxp = document.all["ReprSubDtlsItxpCd"];
    var opt_name = "����";
    
    tObjItxp.options.length = 1;
    tObjItxp.options[0] = new Option(opt_name);
    
    for(var i=0,j=SelDtlsItxpCd.length; i<j; i++){
        tObjItxp.options[i+1] = new Option(SelDtlsItxpNm[i], SelDtlsItxpCd[i]);
    }
    
    tObjDtlsItxp.options.length = 1;
    tObjDtlsItxp.options[0] = new Option(opt_name);
}

function SelDtlsItxpCdOnChange(obj, idx){
    if(typeof obj=="undefined" || obj==""){
        obj = document.all["ReprDtlsItxpCd"];
        tObjIdx = idx;
    }
    
    var k = 0;
    var tObjIdx = obj.id.split("_")[1];
    var tObj = document.all["ReprSubDtlsItxpCd"];
    var opt_name = "����";
    if(obj.selectedIndex !=0 ){
        for(var j = 0;j < SelSubDtlsItxpCd.length; j++){
            if(obj.value == SelDtlsItxpCd[j]){k = j;}   
        }
        tObj.options.length = SelSubDtlsItxpCd[k].length+1;
        tObj.options[0] = new Option(opt_name);
        
        for(var i=0; i < SelSubDtlsItxpCd[k].length; i++){
            tObj.options[i+1] = new Option(SelSubDtlsItxpNm[k][i], SelSubDtlsItxpCd[k][i]);
        }
    }else{
        tObj.options.length = 1;
        tObj.options[0] = new Option(opt_name);
    }
}

</script>







<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//���̾ƿ� ����
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DateFormatter id=\"datefmt2\" formatString=\"YYYY-MM-DD\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"false\" lockedColumnCount=\"2\" draggableColumns=\"false\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" editable=\"true\">\
        <columns>\
            <DataGridColumn id=\"\"                   dataField=\"\"                    itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"            headerText=\"����\"           width=\"55\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" />\
            <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"�������\"       width=\"100\" visible=\"true\"  textAlign=\"center\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" formatter=\"{datefmt2}\" itemEditor=\"DateEditor\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"���κ��\"       width=\"100\"   visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"������\"         width=\"110\"   visible=\"true\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_BTN\"  dataField=\"SUB_DTLS_ITXP_BTN\"   headerText=\"���񺯰�\"       width=\"90\" visible=\"true\"  textAlign=\"center\" editable=\"false\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle2\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PITM\"               dataField=\"PITM\"                headerText=\"���ó\"         width=\"100\" visible=\"true\"  textAlign=\"center\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_AMT\"            dataField=\"USE_AMT\"             headerText=\"���ݾ�\"       width=\"90\" visible=\"true\"  textAlign=\"right\" editable=\"true\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_PTCL\"           dataField=\"USE_PTCL\"            headerText=\"��볻��\"       width=\"200\" visible=\"true\"  textAlign=\"left\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"���κ���ڵ�\"   width=\"0\" visible=\"false\"  textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"�������ڵ�\"     width=\"0\" visible=\"false\" textAlign=\"center\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUIT_ID\"            dataField=\"BUIT_ID\"             headerText=\"�����Ϸù�ȣ\"   width=\"130\" visible=\"false\"  textAlign=\"left\" editable=\"false\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUIT_INST\"          dataField=\"BUIT_INST\"           headerText=\"�����߰�\"       width=\"80\"   visible=\"false\"  textAlign=\"center\" editable=\"true\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{DTLS_ITXP_NM}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{USE_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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

        eventFocusRowIndex = rowIndex;
        if (dataField == "SUB_DTLS_ITXP_BTN") { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
            ItxpOneApcl("Y");               //������뿩��
        };
        
        
    };
    

    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //�̺�Ʈ ���
        dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
    };

    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    gridRoot.addEventListener("layoutComplete", rMateGridSetData);
    
    //data ��� �� ������ �̺�Ʈ ���
    gridRoot.addEventListener("dataComplete", columnBackGroundStyle);
    
    //�׸����� ������ ����� ȣ��
    gridRoot.addEventListener("itemDataChanged", uf_SetValue_rMate);
  

};



//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//�ε� �� rMadeGrid ���
function rMateGridSetData() {

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData([]); //������ ���
    
};



// �׸��忡�� ������ �Ͼ�� �ҷ����ϴ�.
function uf_SetValue_rMate(event) {

    //columnBackGroundStyle();
    dataGrid.invalidateList();  //�׸��� ��ȣ��
    var footer = gridRoot.getObjectById("footer");
    footer.invalidateData();    //footer ����
    
    
    
    var rowIndex = event.getRowIndex();                 // ����� ���ȣ
    var columnIndex = event.getColumnIndex();       // ����� ����ȣ
    var dataField = event.getDataField();               // ����� ���� ����Ÿ �ʵ�
    var dataRow = gridRoot.getItemAt(rowIndex); // ����� ����Ÿ ���ڵ�
    //var oldValue = event.getValue();                        // ������ ��
    //var newValue = event.getNewValue();                 // ������ ��

    
    // �׸���ݾ��Էº� ���̳ʽ�üũ
    if("USE_AMT" == dataField){ //�ݾ׼��� �� �հ踦 ��ȣ���Ͽ� �� �ݾ� ����
        if(isNaN(dataRow.USE_AMT)){
            alert("[���ݾ�] �� ���ڸ� �Է��Ͻ� �� �����ϴ�.");
            gridRoot.setItemFieldAt("0", rowIndex, "USE_AMT");
            return false;
        }else{
            if(Number(dataRow.USE_AMT) < 0){
                alert("[���ݾ�] �� \"-\" �� �Է��Ͻ� �� �����ϴ�.");
                gridRoot.setItemFieldAt("0", rowIndex, "USE_AMT");
                return false;
            }
        }

        var useAmt  = parseFloat(dataRow.TRNS_AMT);     //���ݾ�
        var vatAmt  = parseFloat(dataRow.USE_VAT_AMT);  //�ΰ���ġ����

        gridRoot.setItemFieldAt((useAmt-vatAmt), rowIndex, "USE_SPLY_AMT");
        
        uf_sbjt_itxp_trn1();
    }
    
}


//�÷� ���󺯰�
function columnBackGroundStyle() {
  collection = gridRoot.getCollection();
  if (collection == null) {
      alert("collection ��ü�� ã�� �� �����ϴ�");
      return;
  }
  
  for (var i = 0; i < collection.getLength(); i++) {
      collection.addCellAttributeDetailAt(i, 2, 1, 1, null, 0xEDF2FE);
      collection.addCellAttributeDetailAt(i, 3, 1, 1, null, 0xEDF2FE);
      collection.addCellAttributeDetailAt(i, 4, 1, 1, null, 0xEDF2FE);
      collection.addCellAttributeDetailAt(i, 5, 1, 1, null, 0xF0F0F0);
      collection.addCellAttributeDetailAt(i, 6, 1, 1, null, 0xEDF2FE);
      collection.addCellAttributeDetailAt(i, 7, 1, 1, null, 0xEDF2FE);
      collection.addCellAttributeDetailAt(i, 8, 1, 1, null, 0xEDF2FE);
  }
}



function columnButtonStyle2(item, value, column) {
  if (value && value != "")
      return { color: 0xFF0000,       backgroundColor: 0xCCCCCC   };
  return null;
}



//�ǳ��� �� �߰�
function ItxpRecordInsert_setPitm_rMate() {
  
  if(null == document.rtr_str_form.SBJT_MAP_KEYS.value || ''==document.rtr_str_form.SBJT_MAP_KEYS.value ){
      alert("������ �����ϼ���.");
      return false;
  }
  
  //���� �� ���� ���൵ ��.
  var item = {
          "USE_DT": "",            
          "DTLS_ITXP_NM": "",      
          "SUB_DTLS_ITXP_NM": "",  
          "SUB_DTLS_ITXP_BTN": "���񺯰�", 
          "PITM": "�����",              
          "USE_AMT": "0",           
          "USE_PTCL": "",          
          "DTLS_ITXP_CD": "",      
          "SUB_DTLS_ITXP_CD": "",  
          "BUIT_ID": "",           
          "BUIT_INST": ""         
  };
  gridRoot.addItemAt(item);   //�÷��߰�
  columnBackGroundStyle();    //���󺯰�
}







/**
* ������� ��ü�ݾ� �߰�
* param : obj(���׸���), itx_cd_col_nm(����ڵ�), trn_amt_col_nm(�ݾ�)
*/
function uf_sbjt_itxp_trn1(obj, itx_cd_col_nm, trn_amt_col_nm){
    if( typeof obj=="undefined" ) obj = gridRoot;
    if( typeof itx_cd_col_nm=="undefined" )  itx_cd_col_nm = "DTLS_ITXP_CD";
    if( typeof trn_amt_col_nm=="undefined" )  trn_amt_col_nm = "USE_AMT";

    var itxp_sum = 0;   // �հ�
    uf_sbjt_itxp_reset();
    
    
    collection = obj.getCollection();
    
    var dataRow;
    var gridCnt = collection.getLength();
    
    
    for(var i=0;i<gridCnt;i++){
        dataRow = obj.getItemAt(i);
        
        if(eval("dataRow."+itx_cd_col_nm) != ""){
            var trn_obj = eval('document.all["'+eval("dataRow."+itx_cd_col_nm)+'_extcn_trn"]');
            var trn_amt =Number(trn_obj.innerHTML.replace(/,/gi,''));
            trn_amt = trn_amt + Number(eval("dataRow."+trn_amt_col_nm)); 
            trn_obj.innerHTML = toMoney(trn_amt);
        }
        itxp_sum = itxp_sum + Number(eval("dataRow."+trn_amt_col_nm));
    }

    document.all["itxp_extcn_sum"].innerHTML = toMoney(itxp_sum);
}

/**
* ���ݾ� reset
* param : obj(param : item_key=item_value&...)
*/
function uf_sbjt_itxp_reset(){
var test =0;
    $("#TblSbjtItxpBal span[id$=_extcn_trn]").each(function(){
        $(this).text("0");
    });

    $("#itxp_extcn_sum").text("0");
}



//����
function ItxpRecordDelete(SpotUsePossItxpYn){

    if(null == document.rtr_str_form.SBJT_MAP_KEYS.value || ''==document.rtr_str_form.SBJT_MAP_KEYS.value ){
        alert("������ �����ϼ���.");
        return false;
    }
    
    selectorColumn = gridRoot.getObjectById("selector");

    if(selectorColumn.getSelectedIndices().length < 1){
        alert("���õ� ������ �����ϴ�.");
        return;
    }
    
    removeItem(selectorColumn.getSelectedIndices());
    
    uf_sbjt_itxp_trn(gridRoot, SpotUsePossItxpYn);
}



/**
* ��� ��ü�ݾ� �߰�
* param : obj(���׸���), itx_cd_col_nm(����ڵ�), trn_amt_col_nm(�ݾ�)
*/
function uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn,itx_cd_col_nm,trn_amt_col_nm){
    if( typeof obj=="undefined" ) obj = gridRoot;
    if( typeof itx_cd_col_nm=="undefined" )  itx_cd_col_nm = "DTLS_ITXP_CD";    //���κ���ڵ�
    if( typeof trn_amt_col_nm=="undefined" )  trn_amt_col_nm = "ǰ���հ�"; //ǰ���հ�
    if( typeof SpotUsePossItxpYn=="undefined" )  SpotUsePossItxpYn = "";

    var itxp_sum = 0;   // �հ�
    uf_sbjt_itxp_reset();
    
    
    
    collection = obj.getCollection();
    
    var dataRow;
    var gridCnt = collection.getLength();
    
    
    for(var i=0;i<gridCnt;i++){
        dataRow = obj.getItemAt(i);
        
        if( obj.getItemFieldAt(i, itx_cd_col_nm) != "" ){
            //var trn_obj = eval('document.all["'+getCell(obj,i,itx_cd_col_nm)+'_extcn_trn"]');
            var col_extcn_trn = dataRow.DTLS_ITXP_CD+'_extcn_trn';
            var trn_obj = document.all[col_extcn_trn];
            var trn_amt =Number(trn_obj.innerHTML.replace(/,/gi,''));
            //trn_amt += Number(getCell(obj,i,trn_amt_col_nm));
            //itxp_sum += Number(getCell(obj,i,trn_amt_col_nm));
            if( SpotUsePossItxpYn=="Y" ){
                trn_amt = trn_amt + Number(dataRow.USE_AMT); 
            }else{
                trn_amt = trn_amt + Number(dataRow.SPLY_AMT) + Number(dataRow.EXCTN_REG_VAT_AMT);
            } 
            trn_obj.innerHTML = toMoney(trn_amt);
        }
        if( SpotUsePossItxpYn=="Y" ){
            itxp_sum = itxp_sum + Number(dataRow.USE_AMT);
        }else{
            itxp_sum = itxp_sum + Number(dataRow.SPLY_AMT) + Number(dataRow.EXCTN_REG_VAT_AMT);
        }
    }

    document.all["itxp_extcn_sum"].innerHTML = toMoney(itxp_sum);

    
}

//�ϰ�����
function ItxpBachApcl(SpotUsePossItxpYn, dtlsItxpCd, dtlsItxpNm, subDtlsItxpCd, subDtlsItxpNm, itx_cd_col_nm, trn_amt_col_nm){
    if( typeof obj=="undefined" ) obj = gridRoot;
    var cbReprDtlsItxpCd = document.all["ReprDtlsItxpCd"];              // �����޺�
    var cbReprSubDtlsItxpCd = document.all["ReprSubDtlsItxpCd"];        // ���κ���޺�
    
    var ReprDtlsItxpCd = "";
    var ReprDtlsItxpNm = "";
    var ReprSubDtlsItxpCd = "";
    var ReprSubDtlsItxpNm = "";
    
    if(cbReprDtlsItxpCd.selectedIndex!=0 && cbReprSubDtlsItxpCd.selectedIndex!=0){
        ReprDtlsItxpCd = cbReprDtlsItxpCd[cbReprDtlsItxpCd.selectedIndex].value;
        ReprDtlsItxpNm = cbReprDtlsItxpCd[cbReprDtlsItxpCd.selectedIndex].text;
        
        ReprSubDtlsItxpCd = cbReprSubDtlsItxpCd[cbReprSubDtlsItxpCd.selectedIndex].value;
        ReprSubDtlsItxpNm = cbReprSubDtlsItxpCd[cbReprSubDtlsItxpCd.selectedIndex].text;
    }else{
        alert("��ǥ���κ���� ������ �ֽʽÿ�.");
        return;
    }
    
        
    if(typeof dtlsItxpCd=="undefined") dtlsItxpCd="DTLS_ITXP_CD"; //���κ���ڵ�
    if(typeof dtlsItxpNm=="undefined") dtlsItxpNm="DTLS_ITXP_NM";   //���κ��
    if(typeof subDtlsItxpCd=="undefined") subDtlsItxpCd="SUB_DTLS_ITXP_CD";    //�������ڵ�
    if(typeof subDtlsItxpNm=="undefined") subDtlsItxpNm="SUB_DTLS_ITXP_NM";  //������
    if(typeof SpotUsePossItxpYn=="undefined") SpotUsePossItxpYn="";
    
    
    collection = obj.getCollection();
    
    var dataRow;
    var gridCnt = collection.getLength();
    for(var i=0;i<gridCnt;i++){
        dataRow = obj.getItemAt(i);
        
        //eval(dataRow+dtlsItxpNm ) = ReprDtlsItxpNm;
        dataRow.DTLS_ITXP_CD = ReprDtlsItxpCd;
        dataRow.DTLS_ITXP_NM = ReprDtlsItxpNm;
        dataRow.SUB_DTLS_ITXP_CD = ReprSubDtlsItxpCd;
        dataRow.SUB_DTLS_ITXP_NM = ReprSubDtlsItxpNm;
        obj.setItemAt(dataRow, i);
    }
    
    columnBackGroundStyle();    //
    uf_sbjt_itxp_trn(obj, SpotUsePossItxpYn, itx_cd_col_nm, trn_amt_col_nm);
}




//arItxp.jsp ���Ͽ� ����
function ItxpOneApcl(SpotUsePossItxpYn){
    var frm = document.frm;
    var rFrom = document.rtr_str_form;
    var seqNo = rFrom.S_AGRMT_SEQ_NO.value;
    var idx = eventFocusRowIndex;
    //if(!chk_sbjt_sch()) return false;
    uf_popup_SubDtlsItxp_rMate(frm, idx, SpotUsePossItxpYn, seqNo);
}


/******************************************************************
 * uf_sptSave       ������볻����� ����
 * @param
 * @return
******************************************************************/
function uf_sptSave(){
    var frm = document.frm;
    var obj = gridRoot;
    var insertStr       =   "";
    var idxlength       =   getGridRowCount_rMate(obj);           //����Ѽ��κ��

    if(!bAutoSbjtSch()) return false;                           // ������ȸ����Ȯ��
    
    //20140402 ���������� alert �ȶ߰� ��û
    //if(!chkGridSelectedCount_rMate(obj)) return false;      // �׸��弱�ó���Ȯ��
    
    
    if(!chk_sbjt_itxp_trnAmt("Y")) return false;                // ���ݾ�üũ
    
    if(idxlength <= 0){
        alert("����Ͻ� ������ �����ϴ�.\n�߰���ư�� Ŭ���Ͽ� ������ �߰��ϼ���");
        return false;
    }
    frm.ReptNcnt.value  =   idxlength;                          //������ϰǼ�
 
    
    
    selectorColumn = gridRoot.getObjectById("selector");    //üũ�� ID ��������
    var arrIdx = selectorColumn.getSelectedIndices();       //üũ�� row ��������
    arrIdx = arrIdx.sort(sortNumber);   //������������
    var dataRow;
    
    
    for(var i=0;i<idxlength;i++){
//        dataRow = obj.getItemAt(arrIdx[i]);
        dataRow = obj.getItemAt(i);
        var useDt = dataRow.USE_DT.replace(/-/gi,"");
        
        if( useDt.length == 8)  insertStr   +=      "&UseDt=" +useDt;
        else{
            alert((i+1)+"��° ������ ������ڸ� �Է��ϼ���");
            return false;
        }
        
        if(!chkGridNullValue_rMate( dataRow.DTLS_ITXP_NM, "���κ��"))
            return false;
        else{
            insertStr   +=      "&DtlsItxpNm=" +dataRow.DTLS_ITXP_NM;
            insertStr   +=      "&DtlsItxpCd=" +dataRow.DTLS_ITXP_CD;
        }
        if(!chkGridNullValue_rMate(dataRow.SUB_DTLS_ITXP_NM, "������"))
            return false;
        else{
            insertStr   +=      "&SubDtlsItxpNm=" +dataRow.SUB_DTLS_ITXP_NM;
            insertStr   +=      "&SubDtlsItxpCd=" +dataRow.SUB_DTLS_ITXP_CD;
        }
        if(!chkGridNullValue_rMate(dataRow.PITM, "���ó"))
            return false;
        else{
            insertStr   +=      "&Pitm=" +dataRow.PITM;
        }
        
        if(!chkGridNullValue_rMate(dataRow.USE_AMT, "���ݾ�")){
            return false;
        }else if(Number(dataRow.USE_AMT) <= 0){
            alert("[���ݾ�]�� ������ �Է��ϼ���.");
            return false;
        }
        else{
            insertStr   +=      "&UseAmt=" +dataRow.USE_AMT;
        }
        
        if(!chkGridNullValue_rMate(dataRow.USE_PTCL, "��볻��"))
            return false;
        else{
            insertStr   +=      "&UsePtcl=" +dataRow.USE_PTCL;
        }
        //if(!chkGridNullValue(obj, i, "�����Ϸù�ȣ"))
        //  return false;
        //else{
        //  insertStr   +=  "&EvdcSeqNo=" +getCell(obj, i, "�����Ϸù�ȣ");
        //}
    }
    //alert(document.rtr_str_form.S_AGRMT_INST_ID.value + ' ' + document.rtr_str_form.S_SBJT_ID.value + ' ' + document.rtr_str_form.S_ANNL.value);
    if( isSubmit() ) return;                    // ����ó��
    get2post(frm, insertStr);                   //�������
    
    get2post(frm, "&AgrmtInstId="+document.rtr_str_form.S_AGRMT_INST_ID.value);
    get2post(frm, "&AgrmtSeqNo="+document.rtr_str_form.S_AGRMT_SEQ_NO.value);
    get2post(frm, "&PmsId="+document.rtr_str_form.S_PMS_ID.value);
    get2post(frm, "&SbjtId="+document.rtr_str_form.S_SBJT_ID.value);
    
    

    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                try{
                    reset_submit();
                    alert("������볻���� ��ϵǾ����ϴ�.");
                }finally{
                    //fn_url("T14_02_00.jsp","CC3","CC00301");
                    fn_url("/t01/t14/T14_02_00.jsp"); 
                    removeTempAttribute(frm);
                }
            }
            , 1000);   // 1���� ���� 1000 = 1��
            
    
    
    
    
}


function chk_sbjt_itxp_trnAmt(SpotUsePossItxpYn){
    var elem = document.body.all.tags('span');
    
    var idx=0;
    
    while (idx < elem.length) {
    
        //_extcn_bal
        //_extcn_trn
        //_extcn_tit
        if( elem[idx].id.indexOf('_extcn_trn') > 0 ){
        
            var trn = elem[idx].innerHTML;
            trn = trn.replace(/,/gi, '');
            if( trn == "0" ){
                idx++;
                continue;
            }
            
            var bal = document.getElementById( elem[idx].id.substring(0, elem[idx].id.length-10) + "_extcn_bal" ).innerHTML;
            bal = bal.replace(/,/gi, '');
            
            if( Number(trn) > Number(bal) ){
                var msg;
                if( typeof SpotUsePossItxpYn!="undefined" && SpotUsePossItxpYn=="Y" ){
                    msg = " �������ݾ��� �����ܾ��� �ʰ��Ͽ����ϴ�.\n\n�����ܾ��� Ȯ���Ͻñ� �ٶ��ϴ�.";
                }else{
                    msg = " ��뿹���ݾ��� ����ܾ��� �ʰ��Ͽ����ϴ�.\n\n����ܾ��� Ȯ���Ͻñ� �ٶ��ϴ�.";                   
                }
                
                var tit = document.getElementById( elem[idx].id.substring(0, elem[idx].id.length-10) + "_extcn_tit" ).innerHTML;
                alert(tit + msg);
                return false;
            }
        }
        idx++;
    }
    
    return true;    
}



/******************************************************************
 * uf_edmsDelete        �׸�������� EDMS÷�����ϻ���
 * @param               �������ΰ�� docKey '|'�� ����
 * @return
******************************************************************/
function uf_edmsDelete(){
    var frm = document.frm;
    var trgdocKey   =   "";     //������ ����Ű"|" �����ڻ��
    var isDelEvdc   =   false;  //�����ϴ³����� �����Ϸù�ȣ�� �����ϸ� true �׸��常������ false

    
    selectorColumn = gridRoot.getObjectById("selector");    //üũ�� ID ��������
    var arrIdx = selectorColumn.getSelectedIndices();       //üũ�� row ��������
    arrIdx = arrIdx.sort(sortNumber);   //������������
    var dataRow;
    
    for(var i=0;i<arrIdx.length;i++){
        dataRow = gridRoot.getItemAt(arrIdx[i]);
    
        if(dataRow.BUIT_ID != ""){
            trgdocKey   +=  dataRow.BUIT_ID + "|";
            isDelEvdc = true;
        }
    }
    if(isDelEvdc){
        frm.reqkeys.value = trgdocKey;
        // EMDS��ϳ�������
        edmsDeleteItem('frm','edms101','DELETE','INKIND', trgdocKey,'SMTEST','null','');
    }
}
</script>
<!-- **********************  rMateGrid setting END ***********************  -->




    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
      

    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u15_02_00_t.gif" alt="������볻�� ���"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>���������</li>
                       <li><img src="/images/common/arr.gif" alt=" " />������ϰ���</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">������볻�� ���</span></li>
                        
                    </ul>
                </div>
            </div>                
      <!-- //pagenav end// -->
      <div class="t30"></div>
        <!-- ����߽� ������ȸ �ڵ��ϼ� ����� ����
              ������ȸ ��Ƽüũ ��� isSbjtAutoSchMulti : true
             ������ȸ �̱۸��   isSbjtAutoSchMulti : false
             ��ĳ�� �̼��� �ۼ� 20110426 -->
        <!-------------------------------------------------------------------------------->
        
        













<!-- //auto search start -->
<%
    boolean isSbjtAutoSchMulti  =   false;  //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�
    boolean beSearchBtn         =   false;   //��ȸ��ư ��������
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->





<form name="frm" method="post">
                <input type="hidden" name="ReptNcnt"    value="">               <!-- ������ϰǼ� -->
                <input type="hidden" name="selectedGrdIdx"  value="">           <!-- �����ѱ׸���row -->
                <!-- ---    EDMS �������� form START    -- -->
                <input type="hidden" name="reqkeys"     value="">               <!-- ������û��key -->
                <input type="hidden" name="docKey"      value="">               <!-- ����Ű(������ȣ-�����-�ú���-�����ID) -->
                <input type="hidden" name="methodName"  value="">               <!-- �޼ҵ�� -->    
                <input type="hidden" name="attr20"      value="">               <!-- ���ݾ� -->
                <input type="hidden" name="attr98"      value="" />             <!--edms������ϸ�-->
                <input type="hidden" name="attr99"      value="">               <!-- ������ ���ϰ���� -->
                <!-- ---    EDMS �������� form END  -- -->
                <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />
                <input type="hidden" name="SelSbjtId"       value="">           <!-- ���õ� ����ID-->
                <input type="hidden" name="SelSbjtNm"       value="">           <!-- ���õ� ������-->
                <input type="hidden" name="SeltBzClasNm"    value="">           <!-- ���õ� ����� -->
                       
      <div class="cb b10"></div>
      <div id="SpotBalTbl" style="display:none;">
      </div>
      
      
<!-- *************************  rMateGrid ************************* -->
      <h3>��ǥ���κ��</h3>
      <div class="t10 b05">
        <span id="ItxpbachApclCombo">
            <select name="SelDtlsItxpCd" id="ReprDtlsItxpCd" onchange="SelDtlsItxpCdOnChange(this);" style="width:150px">
                <option value="">����</option>
            </select>
            <select name="SelSubDtlsItxpCd" id="ReprSubDtlsItxpCd" style="width:150px">
                <option value="">����</option>
            </select>
        </span>
        <a href="#dummy" onclick="ItxpBachApcl('Y', undefined, undefined, undefined, undefined, undefined, undefined, document.all['SelDtlsItxpCd_0'], document.all['SelSubDtlsItxpCd_0'])"><img src="/bt/bt_apply.gif" alt="�ϰ�����"/></a>
      </div>
      
            <!-- �׸��� Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "387", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- �׸��� End -->
            
      <!-- action bt start -->
      <div class="action_bt ar">
        <div class="fl">
        <a href="#dummy" onclick="ItxpRecordDelete('Y');uf_edmsDelete();" class="bt_action2-1" title="����"><span class="bt_sp">����</span></a> 
        <a href="#dummy" onclick="ItxpRecordInsert_setPitm_rMate();" class="bt_action2" title="�߰�"><span class="bt_sp1">�߰�</span></a> 
         
        </div>
        <a href="#dummy" onclick="uf_sptSave();" class="bt_action2-1" title="����"><span class="bt_sp">����</span></a> </div>
      <!-- //action bt end// -->
      
<!-- *************************  rMateGrid ************************* -->      
      </form>
      
    <!-- �ȳ� ���̵� start -->
    <div class="guide_box1" id="guide">
        <div class="guide_boxt1">
            <p class="txt_title fl">������볻�� ��� �ȳ�</p> 
            <p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="����" class="vc"/></a></p>
        </div>
        <div class="guide_boxc1">
            <ul>
                <li>������ ���Ǿ� �ִ� ��� RCMS �ý��ۿ� �������೻���� ����Ͻð� ������ ����������Ȯ�μ����� ���꼭����� �޴��� ���� ����Ͻø� �˴ϴ�.</li>
                <li>�Ǽ��� �߸� �Է��Ͻ� ���� '����'�Ͻð� �ٽ� ����Ͻ� �� �ֽ��ϴ�.</li>
                <li>�������������� ���� ���Ŀ��� ����� �Ұ��� �Ͽ��� �����Ͻñ� �ٶ��ϴ�.</li>
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
        
        // rMateGrid �ʱ�ȭ
        rMateGridInit();    
        
      $("a#example1").fancybox();
      $("a#example2").fancybox();
      
      $('#btn-guide').click(function(){
        if( $('#guide').css('height') == '17px' ){
          $('#guide').css({overflow:'hidden'}).animate({height:130},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
        }else{
          $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
        }
        return false;
      });
    });
        
</script>


<script type="text/javascript">
function setInitData(agrmtSeqNo){    

    //1. �ű԰���
    if(agrmtSeqNo == "G00000000000001"){
        
        document.frm.SelSbjtId.value     = "TEST0001";
        document.frm.SelSbjtNm.value     = "RCMS �ǽ��� �ű԰���";
        document.frm.SeltBzClasNm.value     = "RCMS �ǽ�";
        document.all['SpotBalTbl'].innerHTML     = "<h3>�ѵ�����</h3>  <div class=\"t10 b10\">      <div class=\"guide_bu\">�ΰǺ��ǰ�� ����밡���ܾ�(�ѻ�밡���ܾ�)���� ǥ�õ�    </div>        <table width=\"704\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"TblSbjtItxpBal\" summary=\"���,���κ�� �� ��ϳ�����ȸ������ ������ ǥ\" class=\"tbl_type03\">               <caption>��ϳ�����ȸ    </caption>        <colgroup>            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"*\" />        </colgroup>        <thead>            <tr>                <th scope=\"col\" class=\"first-child\">���</th>                <th scope=\"col\">���κ��</th>                <th scope=\"col\">������ȹ�ݾ�</th>                <th scope=\"col\">�����ܾ�</th>                <th scope=\"col\" class=\"last-child\">������뿹���ݾ�</th>            </tr>        </thead>        <tbody>            <tr>                <td class=\"first-child\" rowspan=\"5\">������</td>                <td><span id=\"B0206_extcn_tit\">��������������</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0203_extcn_tit\">��������</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0201_extcn_tit\">�����ü������ �� ����</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0202_extcn_tit\">����Ȱ����</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0204_extcn_tit\">�ΰǺ�</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_Plan\">30,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_bal\">30,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_trn\">0</span></td>            </tr>            <tr>                <td class=\"first-child\" rowspan=\"1\">������</td>                <td><span id=\"B0301_extcn_tit\">������</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_trn\">0</span></td>            </tr>            <tr>                <td colspan=\"2\" class=\"sum\"><strong>�հ�</strong></td>                <td class=\"sum\"><strong>30,000</strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_bal_sum\">30,000</span></strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_sum\">0</span></strong></td>            </tr>        </tbody>    </table></div>";
        
        
    //2. �������
    }else if(agrmtSeqNo == "G00000000000002"){
        document.frm.SelSbjtId.value = "TEST0002";
        document.frm.SelSbjtNm.value = "RCMS �ǽ��� �������";
        document.frm.SeltBzClasNm.value = "RCMS �ǽ�";
        document.all['SpotBalTbl'].innerHTML = "<h3>�ѵ�����</h3>  <div class=\"t10 b10\">      <div class=\"guide_bu\">�ΰǺ��ǰ�� ����밡���ܾ�(�ѻ�밡���ܾ�)���� ǥ�õ�    </div>        <table width=\"704\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"TblSbjtItxpBal\" summary=\"���,���κ�� �� ��ϳ�����ȸ������ ������ ǥ\" class=\"tbl_type03\">               <caption>��ϳ�����ȸ    </caption>        <colgroup>            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"*\" />        </colgroup>        <thead>            <tr>                <th scope=\"col\" class=\"first-child\">���</th>                <th scope=\"col\">���κ��</th>                <th scope=\"col\">������ȹ�ݾ�</th>                <th scope=\"col\">�����ܾ�</th>                <th scope=\"col\" class=\"last-child\">������뿹���ݾ�</th>            </tr>        </thead>        <tbody>            <tr>                <td class=\"first-child\" rowspan=\"5\">������</td>                <td><span id=\"B0206_extcn_tit\">��������������</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0203_extcn_tit\">��������</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0201_extcn_tit\">�����ü������ �� ����</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0202_extcn_tit\">����Ȱ����</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0204_extcn_tit\">�ΰǺ�</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_Plan\">30,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_bal\">25,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_trn\">0</span></td>            </tr>            <tr>                <td class=\"first-child\" rowspan=\"1\">������</td>                <td><span id=\"B0301_extcn_tit\">������</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_trn\">0</span></td>            </tr>            <tr>                <td colspan=\"2\" class=\"sum\"><strong>�հ�</strong></td>                <td class=\"sum\"><strong>30,000</strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_bal_sum\">25,000</span></strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_sum\">0</span></strong></td>            </tr>        </tbody>    </table></div>";

        
    //3. �������(���� ������)
    }else if(agrmtSeqNo == "G00000000000003"){
        document.frm.SelSbjtId.value = "TEST0003";
        document.frm.SelSbjtNm.value = "RCMS �ǽ��� �������";
        document.frm.SeltBzClasNm.value = "RCMS �ǽ�";
        document.all['SpotBalTbl'].innerHTML = "<h3>�ѵ�����</h3>  <div class=\"t10 b10\">      <div class=\"guide_bu\">�ΰǺ��ǰ�� ����밡���ܾ�(�ѻ�밡���ܾ�)���� ǥ�õ�    </div>        <table width=\"704\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"TblSbjtItxpBal\" summary=\"���,���κ�� �� ��ϳ�����ȸ������ ������ ǥ\" class=\"tbl_type03\">               <caption>��ϳ�����ȸ    </caption>        <colgroup>            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"*\" />        </colgroup>        <thead>            <tr>                <th scope=\"col\" class=\"first-child\">���</th>                <th scope=\"col\">���κ��</th>                <th scope=\"col\">������ȹ�ݾ�</th>                <th scope=\"col\">�����ܾ�</th>                <th scope=\"col\" class=\"last-child\">������뿹���ݾ�</th>            </tr>        </thead>        <tbody>            <tr>                <td class=\"first-child\" rowspan=\"5\">������</td>                <td><span id=\"B0206_extcn_tit\">��������������</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0203_extcn_tit\">��������</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0201_extcn_tit\">�����ü������ �� ����</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0202_extcn_tit\">����Ȱ����</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0204_extcn_tit\">�ΰǺ�</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_Plan\">30,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_trn\">0</span></td>            </tr>            <tr>                <td class=\"first-child\" rowspan=\"1\">������</td>                <td><span id=\"B0301_extcn_tit\">������</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_trn\">0</span></td>            </tr>            <tr>                <td colspan=\"2\" class=\"sum\"><strong>�հ�</strong></td>                <td class=\"sum\"><strong>30,000</strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_bal_sum\">0</span></strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_sum\">0</span></strong></td>            </tr>        </tbody>    </table></div>";

        
    //4. �������(���� ���� �Ϸ�)
    }else if(agrmtSeqNo == "G00000000000004"){
        document.frm.SelSbjtId.value = "TEST0004";
        document.frm.SelSbjtNm.value = "RCMS �ǽ��� �������";
        document.frm.SeltBzClasNm.value = "RCMS �ǽ�";
        document.all['SpotBalTbl'].innerHTML = "<h3>�ѵ�����</h3>  <div class=\"t10 b10\">      <div class=\"guide_bu\">�ΰǺ��ǰ�� ����밡���ܾ�(�ѻ�밡���ܾ�)���� ǥ�õ�    </div>        <table width=\"704\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"TblSbjtItxpBal\" summary=\"���,���κ�� �� ��ϳ�����ȸ������ ������ ǥ\" class=\"tbl_type03\">               <caption>��ϳ�����ȸ    </caption>        <colgroup>            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"20%\" />            <col width=\"*\" />        </colgroup>        <thead>            <tr>                <th scope=\"col\" class=\"first-child\">���</th>                <th scope=\"col\">���κ��</th>                <th scope=\"col\">������ȹ�ݾ�</th>                <th scope=\"col\">�����ܾ�</th>                <th scope=\"col\" class=\"last-child\">������뿹���ݾ�</th>            </tr>        </thead>        <tbody>            <tr>                <td class=\"first-child\" rowspan=\"5\">������</td>                <td><span id=\"B0206_extcn_tit\">��������������</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0206_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0203_extcn_tit\">��������</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0203_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0201_extcn_tit\">�����ü������ �� ����</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0201_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0202_extcn_tit\">����Ȱ����</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0202_extcn_trn\">0</span></td>            </tr>            <tr>                <td><span id=\"B0204_extcn_tit\">�ΰǺ�</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_Plan\">30,000</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0204_extcn_trn\">0</span></td>            </tr>            <tr>                <td class=\"first-child\" rowspan=\"1\">������</td>                <td><span id=\"B0301_extcn_tit\">������</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_Plan\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_bal\">0</span></td>                <td class=\"ar\"><span id=\"B0301_extcn_trn\">0</span></td>            </tr>            <tr>                <td colspan=\"2\" class=\"sum\"><strong>�հ�</strong></td>                <td class=\"sum\"><strong>30,000</strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_bal_sum\">0</span></strong></td>                <td class=\"sum\"><strong><span id=\"itxp_extcn_sum\">0</span></strong></td>            </tr>        </tbody>    </table></div>";

        
    }
    
    
    SelDtlsItxpCd[0] = "B0201";
    SelDtlsItxpNm[0] = "�����ü������ �� ����";
    SelSubDtlsItxpCd[0] = new Array();
    SelSubDtlsItxpNm[0] = new Array();
    SelSubDtlsItxpCd[0][0]  = "B0201009";    SelSubDtlsItxpNm[0][0]  = "�ǹ����Ժ�";
    SelSubDtlsItxpCd[0][1]  = "B0201010";    SelSubDtlsItxpNm[0][1]  = "�ǹ�������";
    SelSubDtlsItxpCd[0][2]  = "B0201005";    SelSubDtlsItxpNm[0][2]  = "�����";
    SelSubDtlsItxpCd[0][3]  = "B0201006";    SelSubDtlsItxpNm[0][3]  = "�������Ժ�";
    SelSubDtlsItxpCd[0][4]  = "B0201008";    SelSubDtlsItxpNm[0][4]  = "����������";
    SelSubDtlsItxpCd[0][5]  = "B0201007";    SelSubDtlsItxpNm[0][5]  = "����������";
    SelSubDtlsItxpCd[0][6]  = "B0201015";    SelSubDtlsItxpNm[0][6]  = "�þࡤ��ᱸ�Ժ�";
    SelSubDtlsItxpCd[0][7]  = "B0201018";    SelSubDtlsItxpNm[0][7]  = "����ǰ���ۺ�";
    SelSubDtlsItxpCd[0][8]  = "B0201019";    SelSubDtlsItxpNm[0][8]  = "����ǰ���ۺ�";
    SelSubDtlsItxpCd[0][9]  = "B0201016";    SelSubDtlsItxpNm[0][9]  = "����м���";
    SelSubDtlsItxpCd[0][10] = "B0201020";    SelSubDtlsItxpNm[0][10] = "���輳�����ۺ�";
    SelSubDtlsItxpCd[0][11] = "B0201001";    SelSubDtlsItxpNm[0][11] = "�����ü�������Ժ�";
    SelSubDtlsItxpCd[0][12] = "B0201021";    SelSubDtlsItxpNm[0][12] = "�����ü���������";
    SelSubDtlsItxpCd[0][13] = "B0201002";    SelSubDtlsItxpNm[0][13] = "�����ü������ġ��";
    SelSubDtlsItxpCd[0][14] = "B0201004";    SelSubDtlsItxpNm[0][14] = "�����ü��������";
    SelSubDtlsItxpCd[0][15] = "B0201003";    SelSubDtlsItxpNm[0][15] = "�����ü������������";
    SelSubDtlsItxpCd[0][16] = "B0201017";    SelSubDtlsItxpNm[0][16] = "����ó����������";

    SelDtlsItxpCd[1] = "B0202";
    SelDtlsItxpNm[1] = "����Ȱ����";
    SelSubDtlsItxpCd[1] = new Array();
    SelSubDtlsItxpNm[1] = new Array();
    SelSubDtlsItxpCd[1][0]  = "B0202010";   SelSubDtlsItxpNm[1][0]  = "������ݡ�����";
    SelSubDtlsItxpCd[1][1]  = "B0202022";   SelSubDtlsItxpNm[1][1]  = "�����Ʒú�";
    SelSubDtlsItxpCd[1][2]  = "B0202001";   SelSubDtlsItxpNm[1][2]  = "��������";
    SelSubDtlsItxpCd[1][3]  = "B0202002";   SelSubDtlsItxpNm[1][3]  = "���ܿ���";
    SelSubDtlsItxpCd[1][4]  = "B0202032";   SelSubDtlsItxpNm[1][4]  = "������Ժ�";
    SelSubDtlsItxpCd[1][5]  = "B0202019";   SelSubDtlsItxpNm[1][5]  = "�������������";
    SelSubDtlsItxpCd[1][6]  = "B0202041";   SelSubDtlsItxpNm[1][6]  = "���������";
    SelSubDtlsItxpCd[1][7]  = "B0202043";   SelSubDtlsItxpNm[1][7]  = "��Ʈ��ũ ���";
    SelSubDtlsItxpCd[1][8]  = "B0202020";   SelSubDtlsItxpNm[1][8]  = "���������屸�Ժ�";
    SelSubDtlsItxpCd[1][9]  = "B0202042";   SelSubDtlsItxpNm[1][9]  = "������ȫ����";
    SelSubDtlsItxpCd[1][10] = "B0202005";   SelSubDtlsItxpNm[1][10] = "�����";
    SelSubDtlsItxpCd[1][11] = "B0202013";   SelSubDtlsItxpNm[1][11] = "��ǰ���Ժ�";
    SelSubDtlsItxpCd[1][12] = "B0202012";   SelSubDtlsItxpNm[1][12] = "�繫��ǰ��";
    SelSubDtlsItxpCd[1][13] = "B0202023";   SelSubDtlsItxpNm[1][13] = "���̳����ֺ�";
    SelSubDtlsItxpCd[1][14] = "B0202036";   SelSubDtlsItxpNm[1][14] = "���ΰ���������";
    SelSubDtlsItxpCd[1][15] = "B0202030";   SelSubDtlsItxpNm[1][15] = "�ӱ��";
    SelSubDtlsItxpCd[1][16] = "B0202011";   SelSubDtlsItxpNm[1][16] = "������";
    SelSubDtlsItxpCd[1][17] = "B0202037";   SelSubDtlsItxpNm[1][17] = "�߱ٽĴ�";
    SelSubDtlsItxpCd[1][18] = "B0202038";   SelSubDtlsItxpNm[1][18] = "�����η�Ȱ���";
    SelSubDtlsItxpCd[1][19] = "B0202040";   SelSubDtlsItxpNm[1][19] = "����Ȱ����";
    SelSubDtlsItxpCd[1][20] = "B0202028";   SelSubDtlsItxpNm[1][20] = "�����";
    SelSubDtlsItxpCd[1][21] = "B0202004";   SelSubDtlsItxpNm[1][21] = "�μ��";
    SelSubDtlsItxpCd[1][22] = "B0202014";   SelSubDtlsItxpNm[1][22] = "������Ȱ���";
    SelSubDtlsItxpCd[1][23] = "B0202039";   SelSubDtlsItxpNm[1][23] = "�����η¾缺��";
    SelSubDtlsItxpCd[1][24] = "B0202035";   SelSubDtlsItxpNm[1][24] = "����DB �� ��Ʈ��ũ ����";
    SelSubDtlsItxpCd[1][25] = "B0202034";   SelSubDtlsItxpNm[1][25] = "�����ú�";
    SelSubDtlsItxpCd[1][26] = "B0202029";   SelSubDtlsItxpNm[1][26] = "�뿪��";
    SelSubDtlsItxpCd[1][27] = "B0202033";   SelSubDtlsItxpNm[1][27] = "Ư�����������";
    SelSubDtlsItxpCd[1][28] = "B0202024";   SelSubDtlsItxpNm[1][28] = "��ȸ�����̳�������";
    SelSubDtlsItxpCd[1][29] = "B0202044";   SelSubDtlsItxpNm[0][29] = "����ȸ ���";
    SelSubDtlsItxpCd[1][30] = "B0202021";   SelSubDtlsItxpNm[1][30] = "ȸ�Ǻ�";

    SelDtlsItxpCd[2] = "B0203";
    SelDtlsItxpNm[2] = "��������";
    SelSubDtlsItxpCd[2] = new Array();
    SelSubDtlsItxpNm[2] = new Array();
    SelSubDtlsItxpCd[2][0]  = "B0203001";    SelSubDtlsItxpNm[2][0]  = "��������";

    SelDtlsItxpCd[3] = "B0204";
    SelDtlsItxpNm[3] = "�ΰǺ�";
    SelSubDtlsItxpCd[3] = new Array();
    SelSubDtlsItxpNm[3] = new Array();
    SelSubDtlsItxpCd[3][0]  = "B0204001";    SelSubDtlsItxpNm[3][0]  = "�ΰǺ�";

    SelDtlsItxpCd[4] = "B0206";
    SelDtlsItxpNm[4] = "��������������";
    SelSubDtlsItxpCd[4] = new Array();
    SelSubDtlsItxpNm[4] = new Array();
    SelSubDtlsItxpCd[4][0]  = "B0206001";    SelSubDtlsItxpNm[4][0]  = "��������";
    SelSubDtlsItxpCd[4][1]  = "B0206002";    SelSubDtlsItxpNm[4][1]  = "�繫��ǰ��";
    SelSubDtlsItxpCd[4][2]  = "B0206005";    SelSubDtlsItxpNm[4][2]  = "�߱ٽĴ�";
    SelSubDtlsItxpCd[4][3]  = "B0206006";    SelSubDtlsItxpNm[4][3]  = "��������������";
    SelSubDtlsItxpCd[4][4]  = "B0206003";    SelSubDtlsItxpNm[4][4]  = "����ȯ��������";
    SelSubDtlsItxpCd[4][5]  = "B0206004";    SelSubDtlsItxpNm[4][5]  = "ȸ�Ǻ�";

    SelDtlsItxpCd[5] = "B0301";
    SelDtlsItxpNm[5] = "������";
    SelSubDtlsItxpCd[5] = new Array();
    SelSubDtlsItxpNm[5] = new Array();
    SelSubDtlsItxpCd[5][0] = "B0301001";    SelSubDtlsItxpNm[5][0] = "������";
    
}

function setData(agrmtSeqNo){

    if(!agrmtSeqNo) return false;
    try{
        document.body.style.cursor = "wait";
        setInitData(agrmtSeqNo); //Insert    Grid
        //SetData(); //Insert Grid
        document.body.style.cursor = "auto";
    }finally{
        reset_submit();
        mkDtlsItxpCd("0");
    }
}

</script>


</body>
</html>