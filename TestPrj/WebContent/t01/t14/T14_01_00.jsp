<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T14_01_00.jsp
 *   Description        : ������ϳ��� ��ȸ
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

<title>������ϳ��� ��ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
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

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_3dep_on">������ϳ��� ��ȸ</a></li>

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
/******************************************************************
 * uf_search			 ������ϳ�����ȸ��û
 * @param
 * @return
******************************************************************/
 
function uf_search(SchGb){
    var frm = document.frm;
    
    if( isSubmit() ) return;    // ����ó��
    
    
    var rFrm = document.rtr_str_form;
    if(rFrm.S_AGRMT_SEQ_NO == "" || typeof rFrm.S_AGRMT_SEQ_NO == "undefined") return;
    
    uf_proce_display_on();  //�ε���
    rMateGridLayoutInit_rMate();    //�׸��� �ʱ�ȭ
    
    $("#InqPrsTotlNcnt2").text("0");
    $("#InqPrsTotlCnt2").text("0");
    
    setTimeout(
           function(){
               setGrid(rFrm.S_AGRMT_SEQ_NO.value);
           }
           , 1000);   // 1���� ���� 1000 = 1��
           
           
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

/******************************************************************
 * uf_sptDelete			 ������볻������(EDMS÷�����ϻ���)
 * @param
 * @return
******************************************************************/
function uf_sptDelete(){
	var frm = document.frm;
	var idx = -1;

	// ������ȸ ���� Ȯ��
    if(!bAutoSbjtSch()) return;
	
	if(!chkGridSelectedCount_rMate(gridRoot)) return false;		//�׸��弱�ó���Ȯ��
	
	if(!confirm("�ش系���� �����Ͻðڽ��ϱ�?")){
		return false;
	}
	
	if( isSubmit() ) return;	// ����ó��

	
    //���õ� row�� �� üũ
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot.getItemAt(rowIndex);
    
	get2post(frm, dataRow.GRIDKEY);
	
	
	get2post(frm, "&AgrmtInstId="+document.rtr_str_form.S_AGRMT_INST_ID.value);
	get2post(frm, "&AgrmtSeqNo="+document.rtr_str_form.S_AGRMT_SEQ_NO.value);
	get2post(frm, "&PmsId="+document.rtr_str_form.S_PMS_ID.value);
	get2post(frm, "&SbjtId="+document.rtr_str_form.S_SBJT_ID.value);
	
	
	uf_proce_display_on();  //�ε���
    
    setTimeout(
           function(){
        	    reset_submit();
                alert("������볻���� �����Ǿ����ϴ�.");
                uf_search('S');
           }
           , 1000);   // 1���� ���� 1000 = 1��
           
    removeTempAttribute(frm);    
	//***************************************************************************
}

</script>





    
    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
      



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u15_01_00_t.gif" alt="������ϳ��� ��ȸ"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>���������</li>
                       <li><img src="/images/common/arr.gif" alt=" " />������ϰ���</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">������ϳ��� ��ȸ</span></li>
						
                    </ul>
                </div>
            </div>                
      <!-- //pagenav end// -->
      <div class="t30"></div>
      
      

<!-- ---------------------------------------------------------------------------- -->
			
			





<!-- //auto search start -->
<%
    boolean isSbjtAutoSchMulti  =   false;  //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�
    boolean beSearchBtn         =   false;   //��ȸ��ư ��������
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->

			
			
			
      <div class="cb b10"></div>
      <h3>��볻��</h3>
      <!-- �˻��� start -->
      <!-- ---------------------------------------------------------------------------- --> 
            <form name="frm" method="post">
            
                <input type="hidden" name="TrSupYn" value="N" />        
                <input type="hidden" name="PrsPgno" value="0" />                         <!--������������ȣ-->
                <input type="hidden" name="attr98" value="" />                           <!--edms������ϸ�-->
                <input type="hidden" name="attr99" value="" />                           <!--edms���� �����-->
                
                <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" /> 
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
            <col width="12%" />
            <col width="88%" />
            </colgroup>
            <tbody>
              <tr>
                <th scope="row">��ȸ����</th>
                <td colspan="3">
                <select name="Dv" class=''>
                    <option value="R">�������</option>
                    <option value="U">�������</option>
                </select>
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
      <div class="search_bt1 ar"><a href="#dummy" onclick="autoSbjtFormGen();" class="bt_search" title="��ȸ"></a></div>
      <!-- //��ȸ ����ȸ ��ư end// -->
      <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->
      <div class="t10"></div>
      <!-- �ѰǼ�/�μ� ���� ��ư start -->
      <div class="total_box">
        <p class="fl t05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> �� /<span id="InqPrsTotlCnt2">0</span> ��]</p>
        <p class="ar b05">
          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�"/></a>
          <a href="#dummy" onclick="excelExport_rMate(); return false;" ><img src="/bt/bt_save.gif" alt="����"/></a>
        </p>
        <p class="cb"></p>
      </div>
      <!-- //�ѰǼ�/�μ� ���� ��ư end// -->
      
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
      <!-- action bt start -->
      <div class="action_bt"> 
        <div class="fl">
        <a href="#dummy" onclick="uf_search('N');" id="NextBtn" style="display:none;" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a>
        </div>
        <a href="#dummy" onclick="uf_sptDelete();" class="bt_action2-1" title="����"><span class="bt_sp">����</span></a> 
      </div>
      <!-- //action bt end// -->
      </form>
    <!-- �ȳ� ���̵� start -->
    <div class="guide_box1" id="guide">
        <div class="guide_boxt1">
            <p class="txt_title fl">������ϳ��� ��ȸ �ȳ�</p> 
            <p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="����" class="vc"/></a></p>
        </div>
        <div class="guide_boxc1">
            <ul>
            <li>������ ���Ǿ� �ִ� ��� RCMS �ý��ۿ� �������೻���� ����Ͻð� ������ '��������Ȯ�μ�'�� ���꼭����� �޴��� ���� ����Ͻø� �˴ϴ�.</li>
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
	      $('#guide').css({overflow:'hidden'}).animate({height:90},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
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
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"            headerText=\"����\"           width=\"50\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"USE_REG_DT\"         dataField=\"USE_REG_DT\"          headerText=\"�������\"       width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_DT\"             dataField=\"USE_DT\"              headerText=\"�������\"       width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_CD\"       dataField=\"DTLS_ITXP_CD\"        headerText=\"�����ڵ�\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"DTLS_ITXP_NM\"       dataField=\"DTLS_ITXP_NM\"        headerText=\"����\"           width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_CD\"   dataField=\"SUB_DTLS_ITXP_CD\"    headerText=\"�������ڵ�\"     width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SUB_DTLS_ITXP_NM\"   dataField=\"SUB_DTLS_ITXP_NM\"    headerText=\"������\"         width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PITM\"               dataField=\"PITM\"                headerText=\"���ó\"         width=\"130\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_AMT\"            dataField=\"USE_AMT\"             headerText=\"���ݾ�\"       width=\"100\" visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"USE_PTCL\"           dataField=\"USE_PTCL\"            headerText=\"��볻��\"       width=\"200\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUIT_ID\"            dataField=\"BUIT_ID\"             headerText=\"�����Ϸù�ȣ\"   width=\"150\" visible=\"false\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"GRIDKEY\"            dataField=\"GRIDKEY\"             headerText=\"GRIDKEY\"        width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
                <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{USE_DT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
                <DataGridFooterColumn />\
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
        selectorColumn = gridRoot.getObjectById("selector");
        selectorColumn.setSelectedIndices([event.getRowIndex()]);
    };
    

    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //�̺�Ʈ ���
        dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    //gridRoot.addEventListener("layoutComplete", gridInit);
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


//count
function getRowCount(){
    var cnt = getGridRowCount_rMate();
    
    $("#InqPrsTotlNcnt2").text(cnt);
    $("#InqPrsTotlCnt2").text(cnt);
}

</script>
<!-- **********************  rMateGrid setting END ***********************  -->




<script type="text/javascript">
var cnt = 0;
function setGridData(agrmtSeqNo){    

    try{
        
        var gridValue = [];
        cnt = 0;
        
        //1. �ű԰���
        if(agrmtSeqNo == "G00000000000001"){
            
        //2. �������
        }else if(agrmtSeqNo == "G00000000000002"){

        	gridValue[cnt++] = {"USE_REG_DT":"2014-02-10","USE_DT":"2014-02-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"1�� �ΰǺ�","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=1�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-03-10","USE_DT":"2014-03-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"2�� �ΰǺ�","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=2�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};

        //3. �������(���� ������)
        }else if(agrmtSeqNo == "G00000000000003"){

        	gridValue[cnt++] = {"USE_REG_DT":"2013-04-10","USE_DT":"2013-04-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 3�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 3�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-05-10","USE_DT":"2013-05-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 4�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 4�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-06-10","USE_DT":"2013-06-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 5�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 5�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-07-10","USE_DT":"2013-07-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 6�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 6�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-08-09","USE_DT":"2013-08-09","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 7�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 7�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-09-10","USE_DT":"2013-09-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 8�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 8�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-10-10","USE_DT":"2013-10-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 9�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 9�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-11-08","USE_DT":"2013-11-08","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 10�� �ΰǺ�","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 10�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-12-10","USE_DT":"2013-12-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 11�� �ΰǺ�","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 11�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-01-10","USE_DT":"2014-01-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 12�� �ΰǺ�","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 12�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-02-10","USE_DT":"2014-02-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"14�� 1�� �ΰǺ�" ,"BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=14�� 1�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-02-28","USE_DT":"2014-02-28","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"14�� 2�� �ΰǺ�" ,"BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=14�� 2�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};

        //4. �������(���� ���� �Ϸ�)
        }else if(agrmtSeqNo == "G00000000000004"){

        	gridValue[cnt++] = {"USE_REG_DT":"2013-03-08","USE_DT":"2013-03-08","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 2�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 2�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-04-10","USE_DT":"2013-04-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 3�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 3�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-05-10","USE_DT":"2013-05-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 4�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 4�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-06-10","USE_DT":"2013-06-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 5�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 5�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-07-10","USE_DT":"2013-07-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 6�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 6�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-08-09","USE_DT":"2013-08-09","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 7�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 7�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-09-10","USE_DT":"2013-09-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 8�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 8�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-10-10","USE_DT":"2013-10-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 9�� �ΰǺ�", "BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 9�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-11-08","USE_DT":"2013-11-08","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 10�� �ΰǺ�","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 10�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2013-12-10","USE_DT":"2013-12-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 11�� �ΰǺ�","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 11�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-01-10","USE_DT":"2014-01-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"13�� 12�� �ΰǺ�","BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=13�� 12�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};
        	gridValue[cnt++] = {"USE_REG_DT":"2014-02-10","USE_DT":"2014-02-10","DTLS_ITXP_CD":"B0101","DTLS_ITXP_NM":"�ΰǺ�","SUB_DTLS_ITXP_CD":"B0101001","SUB_DTLS_ITXP_NM":"�ΰǺ�","PITM":"��RCMS","USE_AMT":"2500","USE_PTCL":"14�� 1�� �ΰǺ�" ,"BUIT_ID":"U201312243766111","GRIDKEY":"&BuitId=U201312243766111&DtlsItxpCd=B0101&VatPsvApcYn=N&UseAmt=2500&Pitm=��RCMS&UsePtcl=14�� 1�� �ΰǺ�&SubDtlsItxpCd=B0101001&UseDt=20140210"};

        }
        

    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
    }
}

function setGrid(agrmtSeqNo){

    if(!agrmtSeqNo) return false;
    try{
        document.body.style.cursor = "wait";
        setGridData(agrmtSeqNo); //Insert    Grid
        //SetData(); //Insert Grid
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