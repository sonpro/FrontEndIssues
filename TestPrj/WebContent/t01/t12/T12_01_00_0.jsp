<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T12_02_00_0.jsp
 *   Description        : �����켱���
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
<%@ page import="jex.json.JSONObject"%>


<%
JSONObject usr_data = new JSONObject();                //Json ���� ( ��ȸ����� ��� )
JSONObject pt_header = new JSONObject();                //Json ���� ( ��ȸ����� ��� )
JSONObject sbjt_data = new JSONObject();                //Json ���� ( ��ȸ����� ��� )
%>
<!-- //head end -->

<title>�����켱 ��� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
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
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep_on">�����</a></li>
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


<style type="text/css">
div.tt_son {
    width: 550px;
    position: absolute;
    border-width: 2;
    border-color: #3a679e;
    border-style: solid;
    font-family: Gulim;
    font-size: 9pt;
    background-color: #FFFFFF
}

input.currency {
    text-align: right;
    padding-right: 1px;
}

.dycell {
    display: none;
}

.ItxpAdtnInfo {
    display: none;
}
</style>


<script type="text/javascript">
var SbjtMapKeys = "";
var sbjtParam = "";

function uf_callBack() {
    if(xmlHttp.readyState == 4) {
        if(xmlHttp.status == 200) {
            var responseXML = xmlHttp.responseText;
            document.getElementById("dt_bz_nm").innerHTML = responseXML;
        }else{
            alert("������ �߻��Ͽ����ϴ�. ����� �ٽ� �õ����ּ���.");
        }
    }
}
jQuery(document).ready(function() {
    
    //��ȸ��ư ��Ʈ��
    //$("span#searchBtn").show();
    
    if( SbjtMapKeys ){
        setTimeout(function(){ autocomplete.allview(false); },100);
        setTimeout(function(){
            autocomplete.hide();
            $('#SbjtList>tbody>tr').each(function(){
                var strKey = "["+SbjtMapKeys+"]";
                
                var sbjt = $(this).find('td').html().replace(/(<([^>]+)>)/ig,'');
                if( sbjt.substring(0,strKey.length) == strKey ){
                    autocomplete.select($(this));
                    setTimeout(function(){
                        if ($("#SBJT_DET_SCH_AUTO").val() == "Y") {
                            setDetailInfo_sbjt($("#SBJT_LIST_SCH_AUTO").val());
                        }
                    },500);
                    return false;
                }
            });
            
        },1000);
    }
    
    $("a#example1").fancybox();
    $("a#example2").fancybox();

    
    $('#btn-guide').click(function(){
        if( $('#guide').css('height') == '17px' ){
            $('#guide').css({overflow:'hidden'}).animate({height:380},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});    
        }else{
            $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
        }
        return false;
    });
    
});

var init = true;
function sbjtFormGen(){
    var chk = false;
    for(var i=0; i<document.forms['frm'].elements['itxp_cnt'].value; i++){
        if( $('#ItxpUseAmt_'+i).val() != "0" && $('#ItxpUseAmt_'+i).val() != "" ){
            chk = true;
            break;
        }
    }
    init = false;
    if( chk == true ){
        if( confirm('������� ��񳻿��� �����մϴ�. �ʱ�ȭ �Ͻðڽ��ϱ�?') ){
            autoSbjtFormGen();
        }
    }else{
        autoSbjtFormGen();
    }
}

//==================================================================
//���ð��� form ���� ���� method
//���ð������� �������� ����ϱ� �� autoSbjtFormGen() �޼ҵ� ȣ��ٶ��ϴ�..
//==================================================================
function uf_autoSbjtSchCallBack(param){
    
    sbjtParam = param;
    var rtr_str = document.rtr_str_form;

    if( $('#SBJT_LIST_SCH_AUTO').val() == 'N' ){
        $('#SBJT_LIST_SCH_AUTO').val('Y');
    }
    
    if(!param){
        alert("�߸��� �����Դϴ�.");
        return;
    }

    var responseXML = "";
    
    if("1" == param){
        //var _SESS_DATA_41_04 = dataCtrl.getObjData("T41_04_00");
        //var _SESS_DATA_41_08 = dataCtrl.getObjData("T41_08_10");
        var _COOKIE_DATA_41_04 = getCookieTraning("T41_04_00");
        var _COOKIE_DATA_41_08 = getCookieTraning("T41_08_10");
        
        //if(!getCookieTraning("T41_08_10")){
        if(_COOKIE_DATA_41_08 == false){
            //S_AGCF_YN : N  :: ���������⺻�� N
            //S_AIFW : 0  :: �߹�ŷ �⺻�� 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else if(_COOKIE_DATA_41_04 == false){
            //S_AGCF_YN : Y  :: ���������⺻�� N
            //S_AIFW : 0  :: �߹�ŷ �⺻�� 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='3' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else{
            //S_AGCF_YN : Y  :: ���������⺻�� N
            //S_AIFW : 1  :: �߹�ŷ �⺻�� 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='3' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }
    }else if("2" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
    }else if("3" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
    }else if("4" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
    }
        
    
    
    
    document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
    //=============================
    //�����ų �޼ҵ� �� ��ġ
    //=============================

    if( "Y" == "N" ){
        alert("��������� Ȯ�ε��� �ʾ� �ش� �������� �̵��ϰڽ��ϴ�.");
        uf_frmNewWinNs(document.frm, '/pop/P01_00_40.jsp', 'membCheck', '680', '600');
        return;
    }else if( rtr_str.S_AGCF_YN.value == "N" ){
        alert("���������� Ȯ�ε��� �ʾ� �ش� �޴��� �̵��ϰڽ��ϴ�.");
        fn_url("/t04/t41/T41_08_00.jsp");

    //�߹�ŷ �̿��� ��û�ߴ��� ���ߴ��� Ȯ��         
    }else if( rtr_str.S_AIFW.value == "0" || rtr_str.S_AIFW.value == null || rtr_str.S_AIFW.value == "" ){
        alert("�߹�ŷ �̿��û�� ���� �����ż� �ش� �޴��� �̵��ϰڽ��ϴ�.");
        fn_url("/t04/t41/T41_04_00.jsp");
    } else {
        
        if( init == false ){
            resetAllControl();
            document.getElementById("divBmokInfo").style.display = "none";
        
            uf_addEvdc_pop(document.frm, document.frm.evma_gb.value);
        }
    }
    //=============================
}

//==================================================================

function DisplayDivMyAcctTransAlwn(){
    var rtr_str = document.rtr_str_form;
    var frm = document.frm;

    if(!bAutoSbjtSch())         return;         // ������ȸ����
    
    get2post(frm, "AGRMT_SEQ_NO="+rtr_str.S_AGRMT_SEQ_NO.value);
    get2post(frm, "AGRMT_INST_ID="+rtr_str.S_AGRMT_INST_ID.value);
    
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                    try{   
                        document.body.setCapture(); // 'wait'
                        document.body.style.cursor = "wait";
                        setT12_01_00_0_r2(rtr_str.S_AGRMT_SEQ_NO.value);
                        document.body.style.cursor = "auto";
                        document.body.releaseCapture(); //setCapture()_Next
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
                
                
    removeTempAttribute(frm);   //get2post ����
}
    
function resetAllControl(){
    var frm = document.frm;
    
    // �迭 �ʱ�ȭ
    SelDtlsItxpCd           = new Array();
    SelDtlsItxpNm           = new Array();
    SelSubDtlsItxpCd        = new Array();
    SelSubDtlsItxpNm        = new Array();
    
    
    BzExpSprnExctnYn    = "N";
    SelShrSorcSn        = new Array();
    SelShrSorcNm        = new Array();
    
    // �� �Է� �ؽ�Ʈ ��Ʈ�� �ʱ�ȭ
    $("#frm").find('input').each(function(){
        $(this).val("");
    });

    // �ŷ�ó ���� �ʱ�ȭ
    document.getElementById("d_SplrReprNm").innerHTML       = "";
    document.getElementById("d_SplrBzRegNo").innerHTML      = "";
    document.getElementById("d_SplrTpopNm").innerHTML       = "";
    document.getElementById("d_SplrTpbzNm").innerHTML       = "";
    document.getElementById("d_SplrAdr").innerHTML          = "";

    // ���౸�� �ʱ�ȭ
    exctn_ExctnStgDv_v2("1",'1', 
                        document.rtr_str_form.S_RCH_ACC_BNK_CD.value, 
                        document.rtr_str_form.S_RCH_ACC_BNK_NM.value, 
                        document.rtr_str_form.S_RCH_ACC_NO.value,
                        '',
                        '', 
                        '', 
                        document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value);
    
    // ������̺�(���) �ʱ�ȭ
    fnItxpInit();
    
    
    
    // ������̺�(�ϴ�) �ʱ�ȭ
    document.getElementById("evdc_splyAmtTxt").innerHTML    = "0";
    document.getElementById("evdc_vatAmtTxt").innerHTML     = "0";
    document.getElementById("tot_TrnsAmt").innerHTML        = "0";
    document.getElementById("tot_splyAmt").innerHTML        = "0";
    document.getElementById("tot_vatAmt").innerHTML         = "0";
    
    // ������ü ��û�׸� �ʱ�ȭ
    document.getElementById("txt_trnsAmt").innerHTML        = "";
    document.getElementById("txt_splyAmt").innerHTML        = "";
    document.getElementById("txt_vatAmt").innerHTML         = "";
    
    document.getElementById("ExctnStgDv_tr").style.display      = "";
    document.getElementById("idFvrtAcct").style.display         = "inline";
    document.getElementById("idowacBtn").style.display          = "inline";
    document.getElementById("idExctnStgDv_td1").style.display   = "inline";
    document.getElementById("idExctnStgDv_td2").style.display   = "none";
    document.getElementById("idExctnStgDv_td2").innerHTML       =   "";
    document.getElementById("RcvBnkCd").value                   =   "";
    document.getElementById("RcvAcctNo").value                  =   "";
    document.getElementById("OwacNm").value                     =   "";
    document.getElementById("RcvBnkCd").disabled                = false;
    document.getElementById("RcvAcctNo").disabled               = false;
    document.getElementById("OwacNm").disabled                  = false;
    
    document.getElementById("ExctnStgDv1_0").disabled           = false;
    document.getElementById("ExctnStgDv2_0").disabled           = false;
    document.getElementById("kind_TrnsRchAcc").style.display    = "";
    document.getElementById("kind_TrnsRchAcc").disabled         = false;
    
    // �� �ʱ�ȭ
    frm.action = "";
    frm.target = "";
    
    frm.Evdc_Dv.value = frm.evma_gb.value;
    frm.InstCrdSetlMeth.value   =   "1";            //ī�������� �⺻��(1:����)  20121121 modified  by sonpro
    
    //���ݱ����׻��� �ʱ�ȭ
    $('#SplyAmtDfamtRsn_tr').hide();
    $('#SplyAmtDfamtRsn').val('');
    
    //�����Ȯ�� �ʱ�ȭ
    $('#etc_ChkBzRegNo_0'   ).show();
    $('#ChkBzRegNo_0'       ).show();
    $('#SplrAuth'           ).val('0');
    
    SplrInfoDisplay();
    
    // 2011.12.12 �µ��� START
    // ī�̽�Ʈ �������� ���� ����밳���ڵ带 ������ �� ������ ����
    if("00006277" == document.rtr_str_form.S_AGRMT_INST_ID.value){
        document.getElementById("AchvInstIndv1Cd").readOnly                 = true;
        document.getElementById("AchvInstIndv1Cd").style.backgroundColor    = "#d2d2d2";
    }
    // 2011.12.12 �µ��� END
}

function setDefaultKindTrnsRchAcc(){
    // ������� ����Ʈ�� ����
    document.frm.kind_TrnsRchAcc.options[0].selected    = true;
}
/******************************************************************
 * set_evdc_amt      ��� ù��° row�� �����ݾ� ����
 * @param
 * @return
 *  page���� customizing �Ǿ���
******************************************************************/
function set_evdc_amt(){
    var frm =   document.frm;
    //--------------------------------
    //  ���ݾ׼���
    //--------------------------------
    if(("T" == frm.Evdc_Dv.value) || ("C"==frm.Evdc_Dv.value)){
        document.getElementById("ItxpUseAmt_0"      ).value     = toMoney(frm.Evdc_SumAmt.value);                                   //�հ�ݾ�
        document.getElementById("ItxpSplyAmt_0"     ).value     = toMoney(frm.Evdc_SplyAmt.value);                                  //���ޱݾ�
        document.getElementById("ItxpVatAmt_0"      ).value     = toMoney(frm.Evdc_VatAmt.value);                                   //�ΰ���ġ����
    }
}

// ��� ���̺� �޺�
var SelDtlsItxpCd = new Array();
var SelDtlsItxpNm = new Array();
var SelSubDtlsItxpCd = new Array();
var SelSubDtlsItxpNm = new Array();

var BzExpSprnExctnYn = "N"; //�����и����� ����
var SelShrSorcSn = new Array();
var SelShrSorcNm = new Array();

//����� ����
function mkShrSorcSn(tObjIdx){
    var tObj = document.all["SelShrSorcSn_"+tObjIdx];

    tObj.options.length = 1;
    if( BzExpSprnExctnYn == "Y" ){
        tObj.options[0] = new Option("�̻��",'',true,false);
    
        for(var i=0 ; i < SelShrSorcSn.length; i++){
            tObj.options[i+1] = new Option(SelShrSorcNm[i], SelShrSorcSn[i]);
        }
        
        //20140305 �ǽ�ȯ�� ����񱸺� ��� ����
        //$('.dycell').show();
    }else{
        tObj.options[0] = new Option("�̻��",'',true,false);
        $('.dycell').hide();
    }
}

function mkDtlsItxpCd(tObjIdx){
    var tObj = document.all["SelDtlsItxpCd_"+tObjIdx];
    var opt_name = "����";

    tObj.options.length = 1;
    tObj.options[0] = new Option(opt_name,'',true,false);

    // 2011.12.12 �µ��� START
    // ī�̽�Ʈ �������� ���� ����밳���ڵ带 ������ �� ������ ����
    if( "G01" == document.rtr_str_form.S_PMS_ID.value && "00006277" == document.rtr_str_form.S_AGRMT_INST_ID.value){
        var tempSelDtlsItxpCd       = new Array();
        var tempSelDtlsItxpNm       = new Array();
        var tempSelSubDtlsItxpCd    = new Array();
        var tempSelSubDtlsItxpNm    = new Array();
        var idx1 = 0;
        
        for(var i=0,j=SelDtlsItxpCd.length; i<j; i++){
            // �����ΰǺ�, �ܺ��ΰǺ�, ��������, ������, �ΰǺ�, �л��ΰǺ� ����ϵ��� ����
            if("B0101" == SelDtlsItxpCd[i] || "B0102" == SelDtlsItxpCd[i] || "B0203" == SelDtlsItxpCd[i] || "B0301" == SelDtlsItxpCd[i] || "B0204" == SelDtlsItxpCd[i] || "B0205" == SelDtlsItxpCd[i]){
                tempSelDtlsItxpCd[idx1] = SelDtlsItxpCd[i];
                tempSelDtlsItxpNm[idx1] = SelDtlsItxpNm[i];
        
                tempSelSubDtlsItxpCd[idx1] = new Array();
                tempSelSubDtlsItxpNm[idx1] = new Array();
                for(var k=0,l=SelSubDtlsItxpCd[i].length; k<l; k++){
                    tempSelSubDtlsItxpCd[idx1][k] = SelSubDtlsItxpCd[i][k];
                    tempSelSubDtlsItxpNm[idx1][k] = SelSubDtlsItxpNm[i][k];
                }
                idx1++;
            }
        }
        
        SelDtlsItxpCd       = new Array();
        SelDtlsItxpNm       = new Array();
        SelSubDtlsItxpCd    = new Array();
        SelSubDtlsItxpNm    = new Array();

        for(var i=0,j=tempSelDtlsItxpCd.length; i<j; i++){
            SelDtlsItxpCd[i] = tempSelDtlsItxpCd[i];
            SelDtlsItxpNm[i] = tempSelDtlsItxpNm[i];
            
            SelSubDtlsItxpCd[i] = new Array();
            SelSubDtlsItxpNm[i] = new Array();
            for(var k=0,l=tempSelSubDtlsItxpCd[i].length; k<l; k++){
                SelSubDtlsItxpCd[i][k] = tempSelSubDtlsItxpCd[i][k];
                SelSubDtlsItxpNm[i][k] = tempSelSubDtlsItxpNm[i][k];
            }
        }
    }
    // 2011.12.12 �µ��� END
    for(var i=0,j=SelDtlsItxpCd.length; i<j; i++){
        tObj.options[i+1] = new Option(SelDtlsItxpNm[i], SelDtlsItxpCd[i]);
    }   
}
/******************************************************************
 * SelDtlsItxpCdOnChange         ���񺯰�
 * @param
 * @return
******************************************************************/
function SelDtlsItxpCdOnChange(obj, idx){
    
    if(typeof obj=="undefined" || obj==""){
        obj = document.all["SelDtlsItxpCd_"+idx];
        tObjIdx = idx;
    }
    
    fnAbleItxpAdtn(obj);
    
    var k = 0;
    var tObjIdx = obj.id.split("_")[1];
    var tObj = document.all["SelSubDtlsItxpCd_"+tObjIdx];
    var opt_name = "����";
    
    // ��������/�ΰǺ� ���� ó��
    if(!fnDelete(obj, tObjIdx)) return;
    
    // ����/������ ���� ó��
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
        
        $('#etc_SplrBzRegNo_0'  ).attr('readonly',false).val('').css('backgroundColor','#fff');
        $('#etc_SplrCoNm_0'     ).attr('readonly',false).val('').css('backgroundColor','#fff');
        
        $('#etc_ChkBzRegNo_0'   ).show();
        $('#ChkBzRegNo_0'       ).show();
        $('#SplrAuth'           ).val('0');
    }
}

/******************************************************************
 * SelDtlsItxpCdOnChange         �����񺯰�� �����Լ�
 * @param
 * @return
******************************************************************/
function SelDtlsItxpCdOnChange2(obj){
    
    var frm = document.frm;
    var frm_key =   document.rtr_str_form;
    
    var objIdx = obj.id.split('_')[1];
    
    
    //���ΰŷ� �ʱ�ȭ
    frm.etc_SplrPrsn.checked = false;
    frm.etc_SplrPrsn.disabled = false;
    $('#etc_SplrBzRegNo_0').attr('disabled',false).val('').css('backgroundColor','#ffffff');
    
    
    //��������������
    if( obj.value == "B0206006"){
        var todate = new Date().getDate();
        var cookieValue = getCookie("cookie_P01_31_00.jsp");

        if(cookieValue==todate) return false;

        var url = "/pop/T01_31_00.jsp";

        uf_frmNewWinNs(frm, url, 'NEW_ITXP_GUIDE', 800, 715, 'no');
        removeTempAttribute(frm);
    }
    
    //��Ÿ�������� ó��
    uf_etcImplExc(obj);
    
    //���ΰŷ� ����
    setSplrPrsn(frm,frm_key);
    
    //��Ÿ�������� ��� üũ
    if( false == chkEtcEvdcExc() ){
        return false;
    }
    
    //�ΰǺ� ����ý� �ΰǺ����ް��� ����
    PsnlItxpAcctNoSet(obj);
}

/******************************************************************
 * PsnlItxpAcctNoSet         �ΰǺ����ް��¼���(��,�ܺ��ΰǺ�/��������)
 * @param
 * @return
******************************************************************/
function PsnlItxpAcctNoSet(obj){
    var ExctnStgDv = (true==document.frm.ExctnStgDv[0].checked) ? "1" : "2";
    var frm_key =   document.rtr_str_form;
    var frm     =   document.frm;
    

    frm.S_PSNL_ACCT_USEYN.value = document.rtr_str_form.S_PSNL_ACCT_USEYN.value;
    
    //ī��� �ΰǺ� ����� �ź�
    //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
    if( document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y" && "C" == frm.Evdc_Dv.value ){     
        if( 'Y' == itxpPsnlYn(obj.value) ){
            alert("ī��� �ΰǺ� ����� ��� �� �� �����ϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
            obj.selectedIndex = 0;
            return;
        }
    }
    
    var ItxpPsnl = chkItxpPsnl(document.rtr_str_form.S_PSNL_ACCT_USEYN.value);
    if(ExctnStgDv == "1" || ( document.frm.itxp_cnt.value > 1 && 0 != ItxpPsnl) ){
        if( "C" != frm.Evdc_Dv.value ){     
            if( (document.frm.itxp_cnt.value > 1 && 0 != ItxpPsnl) || 'Y' == itxpPsnlYn(obj.value) ){   //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
                //ī�������� �ƴϰ� �ΰǺ����ް��¸� ����ϴ� ����� ��쿡�� �ΰǺ� ���ް��·� ����.
                if(document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y"){
                    
                          
                    var strVal  =   "003|20000000000|��RCMS";
                    
                    arrVal = strVal.split("|");
                    
                    document.getElementById("idFvrtAcct").style.display         = "none";
                    document.getElementById("idowacBtn").style.display          = "none";
                    document.getElementById("idExctnStgDv_td1").style.display   = "none";
                    document.getElementById("idExctnStgDv_td2").style.display   = "inline";
                    document.getElementById("idExctnStgDv_td2").innerHTML       = "�ΰǺ����ް��� �����";
                    document.getElementById("RcvBnkCd").value                   = arrVal[0];
                    document.getElementById("RcvAcctNo").value                  = (arrVal[1]=='null')?'':arrVal[1];
                    document.getElementById("OwacNm").value                     = (arrVal[2]=='null')?'':arrVal[2];
                    document.getElementById("RcvBnkCd").disabled                = true;
                    document.getElementById("RcvAcctNo").disabled               = true;
                    document.getElementById("OwacNm").disabled                  = true;
                    
                    if(frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value == frm_key.S_RCH_ACC_BNK_CD.value
                    && frm.RcvAcctNo.value == frm_key.S_RCH_ACC_NO.value){
                        document.frm.ExctnStgDv[0].checked = false; //Ÿ������ü
                        document.frm.ExctnStgDv[1].checked = true;  //�ڰ�����ü
                    }else{
                        document.frm.ExctnStgDv[0].checked = true;  //Ÿ������ü
                        document.frm.ExctnStgDv[1].checked = false; //�ڰ�����ü
                    }
                }
            }else{
                setEnabledBnkAcctInfo();
            }
        }
    }
}

// ���̺� �ο� �߰�
function fnAddRow(){
    var tbody = jQuery("#ItxpList tbody");
    var rows = tbody.find("tr").length;
    var newRow = tbody.find("tr:last").clone(true).appendTo(tbody);
    newRow.find('.etcimpex').hide();
    newRow.find("span[id^=rno]").html(rows+1);

    var borderStyle = "";
    newRow.find(":input[type=text]").focus(function(){
        borderStyle = $(this).css('border');
        $(this).css('border','1px solid #464646');  
    }).blur(function(){
        $(this).css('border',borderStyle);
    });

    fnControlInit(newRow, rows);
    
    $('.currency').ForceNumericOnly();
    document.frm.itxp_cnt.value = parseInt(document.frm.itxp_cnt.value, 10)+1;
    //CKKeyPro_ReScan();
}

function fnControlInit(jRowObj, rowCnt){
    jQuery(jRowObj).find(":input").val("").each(function(){
        var id = this.id;
        if(id){
            this.id = this.id.split("_")[0]+"_"+rowCnt;
        }
    });

    jQuery(jRowObj).find("select").val("").each(function(){
        var id = this.id;
        if(id){
            this.id = this.id.split("_")[0]+"_"+rowCnt;
            if(this.id=="SelSubDtlsItxpCd_"+rowCnt){
                this.options.length=1;
            }
        }
    });
    jQuery(jRowObj).find("div").each(function(){
        var id = this.id;
        if(id){
            this.id = this.id.split("_")[0]+"_"+rowCnt;
        }
    });
    jQuery(jRowObj).find("span").text("").each(function(){
        var id = this.id;
        if(id){
            this.id = this.id.split("_")[0]+"_"+rowCnt;
            if(this.id=="ItxpFileEvdc_"+rowCnt || this.id=="ItxpAdtnInfo_"+rowCnt){
                jQuery(this).html('<img src="/bt/bt_nonregist.gif" alt="�̵��">');
            }
        }
    });
}

/******************************************************************
 * fnRemove      ���̺� �ο� ����
 * @param
 * @return
******************************************************************/
function fnRemove(){
    var tbody = jQuery("#ItxpList tbody");
    
    jQuery(jQuery(tbody).find("tr")).each(function(){
        if(jQuery(":input[type=checkbox]", this)[0].checked){
            
            // ��ü ���� ����
            if(document.frm.itxp_cnt.value==1){
                alert("1�� �̻��� ����������� �ʿ��մϴ�.");
                return;
            }
            
            //---------------------------------------------------------
            // ���⼺ 2011/12/02
            // EDMS ȭ�鿬��IF - ����ϻ���
            try{
                //inc/sbjt_list_sch_auto.jsp ���Ͽ��� �������� ������ ��ü
                hmpwRoleDv = document.rtr_str_form.S_HMPW_ROLE_DV.value;
            }catch(e){
                hmpwRoleDv = "";    
            }
            
            
            $("#ItxpChk:checked").each(
                    /* 
                    edmsDeleteItemRev("frm",  "delete", $("#EdmsDocId1_" + $(this).index() ).val(), "SMTEST", hmpwRoleDv, "http://61.41.119.163/rcmsConnect.do")
                     */
            );
            //---------------------------------------------------------
            
            jQuery(this).remove();
            
            // ���̺� �ʵ� id ����
            jQuery(jQuery(tbody).find("tr")).each(function(idx){
                jQuery(this).find("span[id^=rno]").html(idx+1);

                jQuery(this).find(":input").each(function(){
                    var id = this.id;
                    if(id){
                        this.id = this.id.split("_")[0]+"_"+idx;
                    }
                });

                jQuery(this).find("select").each(function(){
                    var id = this.id;
                    if(id){
                        this.id = this.id.split("_")[0]+"_"+idx;
                    }
                });

                jQuery(this).find("span").each(function(){
                    var id = this.id;
                    if(id){
                        this.id = this.id.split("_")[0]+"_"+idx;
                    }
                });
            });
            
            document.frm.itxp_cnt.value = parseInt(document.frm.itxp_cnt.value, 10)-1;
        }
    });
}

// ������̺� �ʱ�ȭ
function fnItxpInit(){
    var tbody = jQuery("#ItxpList tbody");

    jQuery(jQuery(tbody).find("tr")).each(function(idx){
        if(idx!=0){
            jQuery(this).remove();
        }
    });
    
    var borderStyle = "";
    tbody.find(":input[type=text]").focus(function(){
        borderStyle = $(this).css('border');
        $(this).css('border','1px solid #464646');  
    }).blur(function(){
        $(this).css('border',borderStyle);
    });

    
    fnControlInit(tbody.find("tr:last"), 0);
    jQuery("#SelDtlsItxpCd_0").val("");
    jQuery("#itxp_cnt").val("1");
}

// ���ϰ� ���� or �Է�
function fnItxpSetting(idx, dtlsIdxpCd, subDtlsItxpCd, item, useAmt, splyAmt, vatAmt, fileEvdc, adtnInfo){
    jQuery("#SelDtlsItxpCd_"+idx).val(dtlsIdxpCd);

    SelDtlsItxpCdOnChange("",idx);
    jQuery("#SelSubDtlsItxpCd_"+idx).val(subDtlsItxpCd);
    jQuery("#ItxpItem_"+idx).val(item);
    jQuery("#ItxpUseAmt_"+idx).val(toMoney(useAmt));
    jQuery("#rchrAmt_"+idx).val(toMoney(useAmt));
    jQuery("#ItxpSplyAmt_"+idx).val(toMoney(splyAmt));
    jQuery("#ItxpVatAmt_"+idx).val(toMoney(vatAmt));
    jQuery("#ItxpFileEvdcVal_"+idx).text(fileEvdc);
    jQuery("#ItxpAdtnInfoVal_"+idx).text(adtnInfo);
    if(fileEvdc!=""){
        jQuery("#ItxpFileEvdc_"+idx).html('<img src="/bt/bt_nonregist.gif" alt="�̵��">');
    }
    if(adtnInfo!=""){
        jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_nonregist.gif" alt="�̵��">');
    }
}
/******************************************************************
 * fnFileEvdc        �������� ���
 * @param
 * @return
******************************************************************/
function fnFileEvdc(obj){
    
    var frm =   document.frm;
    var url, result;
    var tObjIdx = obj.id.split("_")[1];
    var mode = "create";
    var edmsDocId = "";
    
    if(""!=$("#EdmsDocId1_"+tObjIdx).val()){
        mode = "update";
        edmsDocId = $("#EdmsDocId1_"+tObjIdx).val();
    }

    document.frm.doc_dv.value="1";
    uf_edmsUploadFile(mode,tObjIdx, edmsDocId);
}
/******************************************************************
 * fnAdtnInfo        �ΰǺ񳻿� ���
 * @param
 * @return
******************************************************************/
function fnAdtnInfo(obj,idx){
    var frm     =   document.rtr_str_form;
    var frm_main    =   document.frm;
    var url, result,amt,param,arr_result;
    var tObjIdx = obj.id.split("_")[1];

    //������üũ
    if(!chk_frm_value("SelDtlsItxpCd",tObjIdx)) return;
    //��������üũ
    if(!chk_frm_value("SelSubDtlsItxpCd",tObjIdx))  return;
    //�ΰǺ�,���������ΰ�츸 ��ϰ���
    if(document.frm.itxp_cnt.value > 1){
        if(!uf_AdtnRegItxpChk(frm_main.SelDtlsItxpCd[tObjIdx].options[frm_main.SelDtlsItxpCd[tObjIdx].options.selectedIndex].value, true)) return;
    }else{
        if(!uf_AdtnRegItxpChk(frm_main.SelDtlsItxpCd.options[frm_main.SelDtlsItxpCd.options.selectedIndex].value, true)) return;
    }
    amt = Number($("#ItxpSplyAmt_"+tObjIdx).val().replace(/,/gi,"")) + Number($("#ItxpVatAmt_"+tObjIdx).val().replace(/,/gi,""));
    
    param   =   "ChkAmt="           +amt;
    param   +=  "&AgrmtInstId="     +frm.S_AGRMT_INST_ID.value;
    param   +=  "&AgrmtSeqNo="      +frm.S_AGRMT_SEQ_NO.value;
    param   +=  "&PmsId="           +frm.S_PMS_ID.value;
    param   +=  "&BzClasCd="        +frm.S_BZ_CLAS_CD.value;
    param   +=  "&SbjtId="          +frm.S_SBJT_ID.value;
    param   +=  "&UnfyMgntInstYn="  +frm.S_UNFY_MGNT_INST_YN.value;
    param   +=  "&ItxpCd="          +document.getElementById('SelDtlsItxpCd_'+tObjIdx).value;
    param   +=  "&tObjIdx="         + tObjIdx;
    
    frm_main.p_rchrInfo.value = $("#rchrInfo_"+tObjIdx).val();
    
    url = "/t01/t12/T12_01_30_0.jsp?"+param;
    
    //result = openModalNs(url, frm_main, "dialogWidth:800px; dialogHeight:400px; scroll:no;");
    result = openModalNs(url, frm_main, "dialogWidth:800px; dialogHeight:570px; scroll:no;");
    
    if(typeof result != "undefined"){
        if(result.length > 20){
            $("#ItxpAdtnInfo_"+tObjIdx).html('<img src="/bt/bt_regist4.gif" alt="���">');
            $("#rchrInfo_"+tObjIdx).val(result);            //�������������� ���ڿ�(������������ "/" ������ ������",")
        }else{
        }
    }
}
/******************************************************************
 * uf_edmsUploadFile        EDMS���Ͼ��ε� ����޼ҵ� ȣ��
 * @param
 * @return
******************************************************************/
function uf_edmsUploadFile(mode,idx, edmsDocId){
    var dockey;
    var usrId;          //�����ID
    var hmpwRoleDv;     //����ڱ��� 
    var evdcDv;         //��������
    var pmsId;          //PMSID
    var sbjtId;         //������ȣ
    var agrmtSeqNo;     //�����Ϸù�ȣ
    var agrmtInstId;    //������
    var useDt;          //�������
    var itxpCd;         //����ڵ�
    var DtlsItxpCd;     //�����ڵ�
    var SubDtlsItxpCd;  //�������ڵ�
    
    var frm_key =   document.rtr_str_form;
    var frm     =   document.frm;
    frm.dockeyNo.value  =   idx;

    //������üũ
    if(!chk_frm_value("SelDtlsItxpCd",idx)) return;
    //��������üũ
    if(!chk_frm_value("SelSubDtlsItxpCd",idx))  return;
    //ǰ��üũ
    if(!chk_frm_value("ItxpItem",idx))  return;
    //�ݾ�üũ
    if(!chk_frm_value("ItxpUseAmt",idx))    return;
    if(!chk_frm_value("ItxpSplyAmt",idx))   return;
    if(!chk_frm_value("ItxpVatAmt",idx))    return;

    usrId               = "SMTEST";
    hmpwRoleDv          = frm_key.S_HMPW_ROLE_DV.value;
    evdcDv              = frm.Evdc_Dv.value;
    if(frm.Evdc_Dv.value == "T"){
        useDt           = frm.T_WrtgDt.value;
    }else if(frm.Evdc_Dv.value == "C"){
        useDt           = frm.C_ApvDt.value;
    }else if(frm.Evdc_Dv.value == "E"){
        <%    Calendar today = Calendar.getInstance();
        String sMonth = String.valueOf(today.get(Calendar.MONTH)+1);
        String sDate = String.valueOf(today.get(Calendar.DATE));
        
        if(sMonth.length() == 1){
            sMonth = "0" + sMonth;
        
        }
        if(sDate.length() == 1){
            sDate = "0" + sDate;
        }
        
    %>
    useDt           = "<%=today.get(Calendar.YEAR)%>" + "<%=sMonth%>" + "<%=sDate%>";
    }   
    
    pmsId               = frm_key.S_PMS_ID.value;
    sbjtId              = frm_key.S_SBJT_ID.value;
    agrmtSeqNo          = frm_key.S_AGRMT_SEQ_NO.value;
    agrmtInstId         = frm_key.S_AGRMT_INST_ID.value;
    if(document.frm.itxp_cnt.value == 1){
        itxpCd          = trim(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value).substring(0,4)+"0";
        DtlsItxpCd      = frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
        SubDtlsItxpCd   = frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
        
    }else{
        itxpCd          = trim(frm.SelDtlsItxpCd[idx].options[frm.SelDtlsItxpCd[idx].options.selectedIndex].value).substring(0,4)+"0";
        DtlsItxpCd      = frm.SelDtlsItxpCd[idx].options[frm.SelDtlsItxpCd[idx].options.selectedIndex].value;
        SubDtlsItxpCd   = frm.SelSubDtlsItxpCd[idx].options[frm.SelSubDtlsItxpCd[idx].options.selectedIndex].value;
        
    }

    

    if("create"==mode){
        //����Ű����(����������(1)+�ý�������(8)+�ý��۽ð�(6)+"-"+�����Ϸù�ȣ(15)+"-"+���ID(20) )
        //edmsDocId = "P"+getDateTime("YYYY")+getDateTime("MM")+getDateTime("DD")+getDateTime("HH")+getDateTime("NN")+getDateTime("SS")+"-"+frm_key.S_AGRMT_SEQ_NO.value+"-"+frm_key.S_AGRMT_INST_ID.value;
        
        //2011 �ű� EDMS ����Ű ����
        //����Ű����( PMSID + ����ID + �����Ϸù�ȣ + ������ + ����� + �������� + ��� + ���� + ������)
        dockey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
        frm.docKey.value    =   dockey;

        // EDMS÷�����ϵ��ȣ��
        //edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "http://61.41.119.163/rcmsConnect.do");
        edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
        //edmsUploadFile("frm", "edms101", "CREATE", "PLAN", edmsDocId, "SMTEST" , frm_key.S_PMS_ID.value, "http://61.41.119.163/rcmsConnect.do");
    }else{
        // EDMS÷�����ϵ��ȣ��
        edmsUploadFileNew("frm", mode, edmsDocId, usrId,hmpwRoleDv, "/pop/file_popup.jsp?mode="+mode);
        //edmsUploadFileNew("frm", mode, edmsDocId, usrId,hmpwRoleDv, "http://61.41.119.163/rcmsConnect.do");
    }
    
}
/******************************************************************
 * edmsReturnAction     EDMS ��ȯ�� ����
 * @param
 * @return
******************************************************************/
function edmsReturnAction(){
    var dockeyNo, docname,dockey;
    var frm = document.frm;
    docKeyNo= frm.dockeyNo.value;
    docKey  = frm.docKey.value;
    docName = (frm.docName.value).replace(/=/gi,"-").replace(/&/gi,"n");

    if(docName.length>0){
        if("1"==document.frm.doc_dv.value){
            $("#EdmsDocId1_"+docKeyNo).val(docKey);
            $("#FileNm1_"+docKeyNo).val(docName);
            $("#ItxpFileEvdc_"+docKeyNo).html('<img src="/bt/bt_regist4.gif" alt="���">');
        }
    }
}


// ������ ���õ� ���� �ε���
var beforeSelectedIndex = 0;
/******************************************************************
 * fnDelete     �������/��������/�ΰǺ񳻿� ����
 * @param
 * @return
******************************************************************/
function fnDelete(obj, idx){
    var frm     = document.frm;
    var frm_key = document.rtr_str_form;
    var tObjIdx = idx;

    if('<img src="/bt/bt_regist4.gif" alt="���">'==jQuery("#ItxpFileEvdc_"+tObjIdx).html() || '<img src="/bt/bt_regist4.gif" alt="���">'==jQuery("#ItxpAdtnInfo_"+tObjIdx).html()){
        var edms_id = "edms101";
        var dockey  = frm.docKey.value;
        var name    = obj.options[obj.options.selectedIndex].text;
        
        if(!confirm("["+ name +"] ���κ������ �����\n��������/�ΰǺ񳻿� ��ϳ����� ���� �˴ϴ�.\n�����Ͻðڽ��ϱ�?")){
            obj.options.selectedIndex = beforeSelectedIndex;
            return false;
        }
        // DMS÷�����ϻ���ȣ��
        if('<img src="/bt/bt_regist4.gif" alt="���">'==jQuery("#ItxpFileEvdc_"+tObjIdx).html()){
            edmsDeleteItem("frm", edms_id,"DELETE","PLAN", dockey, "SMTEST", frm_key.S_PMS_ID.value, "http://61.41.119.163/rcmsConnect.do");
            }
            // �������� ���� ���� �ʱ�ȭ
            jQuery("#ItxpFileEvdc_" + tObjIdx)
                    .html(
                            '<img src="/bt/bt_nonregist.gif" alt="�̵��">');
            $("#EdmsDocId1_" + tObjIdx).val("");
            $("#FileNm1_" + tObjIdx).val("");

            // �ΰǺ񳻿� ���� ���� �ʱ�ȭ
            jQuery("#ItxpAdtnInfo_" + tObjIdx)
                    .html(
                            '<img src="/bt/bt_nonregist.gif" alt="�̵��">');
            $("#rchrInfo_" + tObjIdx).val("");
        }
        beforeSelectedIndex = obj.options.selectedIndex;
        return true;
    }

    function numcheck(num) {
        var flag = true;
        for ( var i = 0; i < num.length; i++) {
            c = num.charAt(i);
            if (!(c >= '0' && c <= '9')) {
                flag = false;
                break;
            }
        }
        return flag;
    }

    function checkBizID(bizID) {

        var re = /-/g;
        var bizID = bizID.replace(re, '');
        var checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1);
        var tmpBizID, i, chkSum = 0, c2, remander;

        for (i = 0; i <= 7; i++) {
            chkSum += checkID[i] * bizID.charAt(i);
        }

        c2 = "0" + (checkID[8] * bizID.charAt(8));
        c2 = c2.substring(c2.length - 2, c2.length);

        chkSum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1));

        remander = (10 - (chkSum % 10)) % 10;

        if (Math.floor(bizID.charAt(9)) == remander) {
            return true; // OK!
        }
        return false;
    }

    /******************************************************************
     * chk_save     ������ ��ȿ�� üũ
     * @param
     * @return
     ******************************************************************/
    function chk_save(PlanPrgrSt) {
        var frm_key = document.rtr_str_form;
        var frm = document.forms['frm'];
        var param, target_url;
        
        frm.S_PSNL_ACCT_USEYN.value = document.rtr_str_form.S_PSNL_ACCT_USEYN.value;
        
        if (-1 == chkItxpPsnl(document.rtr_str_form.S_PSNL_ACCT_USEYN.value)) {
            return false;
        }

        //��Ÿ�������ܰ� üũ
        if (false == chkEtcEvdcExc())
            return false;

        //-----------------------------------
        //  �ŷ�ó���� ��ȿ�� �˻�
        //-----------------------------------
        if ("E" == frm.Evdc_Dv.value) {
            if (null == frm.etc_SplrCoNm.value || "" == frm.etc_SplrCoNm.value) {
                alert("ȸ����� �Է����ּ���.");
                frm.etc_SplrCoNm.focus();
                return false;
            }
            if (null == frm.etc_SplrAdr.value || "" == frm.etc_SplrAdr.value) {
                alert("������ּҸ� �Է����ּ���.");
                frm.etc_SplrAdr.focus();
                return false;
            }
            if (null == frm.etc_SplrReprNm.value
                    || "" == frm.etc_SplrReprNm.value) {
                alert("��ǥ�ڸ��� �Է����ּ���.");
                frm.etc_SplrReprNm.focus();
                return false;
            }

            if (null == frm.etc_SplrBzRegNo.value
                    || "" == frm.etc_SplrBzRegNo.value) {
                alert("����ڵ�Ϲ�ȣ�� �Է����ּ���.");
                frm.etc_SplrBzRegNo.focus();
                return false;
            }

            //�ǽ�ȯ�� ����ڵ�Ϲ�ȣ üũ ���� 20140128
            /* 
            if (false == chk_bzregno(frm.etc_SplrBzRegNo.value)) {
                alert("����ڵ�Ϲ�ȣ�� Ȯ���� �ֽñ� �ٶ��ϴ�.");
                frm.etc_SplrBzRegNo.focus();
                return false;
            }
 */
        }

        //-----------------------------------
        //  ��������� ��ȿ�� �˻�
        //-----------------------------------
        var totSplyAmt = 0;
        var totVatAmt = 0;

        for (var i = 0; i < document.forms['frm'].elements['itxp_cnt'].value; i++) {

            //ī��� �ΰǺ� ����� �ź�
            //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
            if (document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y"
                    && "C" == frm.Evdc_Dv.value) {
                if ('Y' == itxpPsnlYn(document
                        .getElementById("SelSubDtlsItxpCd_" + i).value)) {
                    alert("ī��� �ΰǺ� ����� ��� �� �� �����ϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
                    return false;
                }
            }

            if (!chk_frm_value("SelDtlsItxpCd", i))
                return false; // ����
            if (!chk_frm_value("SelSubDtlsItxpCd", i))
                return false; // ������
            if (!chk_frm_value("ItxpItem", i))
                return false; // ǰ��
            if (!chk_frm_value("ItxpUseAmt", i))
                return false; // ���ݾ�
            if (!chk_frm_value("ItxpSplyAmt", i))
                return false; // ���ޱݾ�
            if (!chk_frm_value("ItxpVatAmt", i))
                return false; // �ΰ���

            // 2011.09.16 �µ��� : �ΰ����� �ִ� ���� �ݾ��� ���ޱݾ��� 50% ������ �� (������ ���� ��������)
            var splyAmt = Number($("#ItxpSplyAmt_" + i).val()
                    .replace(/,/gi, ""));
            var vatAmt = Number($("#ItxpVatAmt_" + i).val().replace(/,/gi, ""));

            totSplyAmt += splyAmt;
            totVatAmt += vatAmt;
            //if(splyAmt < vatAmt*2){
            //  alert("�ΰ����� �ִ� ���� �ݾ��� ���ޱݾ��� 50%���� �Դϴ�.");
            //  $("#ItxpVatAmt_"+i).focus();
            //  return false;
            //}
            if (splyAmt < 0) {
                alert('���ޱݾ��� 0���� ���� �� �����ϴ�.');
                $("#ItxpSplyAmt_" + i).focus();
                return false;
            }
            if (vatAmt < 0) {
                alert('�ΰ����ݾ��� 0���� ���� �� �����ϴ�.');
                $("#ItxpVatAmt_" + i).focus();
                return false;
            }

            // 2012.04.24 ����� : ���ݾ��� ""�̰ų� 0���� �ƴ� ��쿡�� ��� �����ϵ��� ����.
            var itxpUseAmt = $("#ItxpUseAmt_" + i).val();
            if ("0" == itxpUseAmt) {
                alert("���ݾ��� 0���� �� �� �����ϴ�.");
                $("#ItxpSplyAmt_" + i).focus();
                return false;
            }

        }//End of for

        //2012.11.26 kjs ���ڼ��ݰ�꼭�� ��� ���ޱݾװ� ���ݾ��� �ٸ���� ���ޱݾ����� ���� ���� üũ
        if ("T" == document.forms['frm'].elements['Evdc_Dv'].value) {
            if (parseInt(frm.Evdc_SplyAmt.value, 10) > totSplyAmt
                    && "" == document.forms['frm'].elements['SplyAmtDfamtRsn'].value) {
                alert("���ޱݾ� ���׻����� �ۼ����ּ���");
                document.forms['frm'].elements['SplyAmtDfamtRsn'].focus();
                return false;
            }
        }

        //-----------------------------------
        //  �񿵸������ ������ ����� �������� �ΰǺ��Ͼ���
        //  �׿ܰ�� ���������� �ΰǺ� ���üũ��
        //-----------------------------------

        if (!(((frm_key.S_NPRF_INST_YN.value == "Y") && (chk_itxpExist(
                document.frm.itxp_cnt.value, 'B0301001'))) || ((chk_itxpExist(
                document.frm.itxp_cnt.value, 'B0206001') && "E" != frm.Evdc_Dv.value)
                || (chk_itxpExist(document.frm.itxp_cnt.value, 'B0206002') && "E" != frm.Evdc_Dv.value)
                || (chk_itxpExist(document.frm.itxp_cnt.value, 'B0206003') && "E" != frm.Evdc_Dv.value)
                || (chk_itxpExist(document.frm.itxp_cnt.value, 'B0206004') && "E" != frm.Evdc_Dv.value)
                || (chk_itxpExist(document.frm.itxp_cnt.value, 'B0206005') && "E" != frm.Evdc_Dv.value) || (chk_itxpExist(
                document.frm.itxp_cnt.value, 'B0206006'))))) {

            //-----------------------------------
            //  �������� üũ
            //-----------------------------------
            if (frm.EdmsDocId1.length > 1) {
                for (i = 0; i < frm.EdmsDocId1.length; i++) {
                    if ("B0301001" != $("#SelSubDtlsItxpCd_" + i).val()
                            && (null == frm.EdmsDocId1[i].value || "" == frm.EdmsDocId1[i].value)) {
                        alert("���������� ������ּ���.");
                        return false;
                    }
                }
            } else {
                if (null == frm.EdmsDocId1.value || "" == frm.EdmsDocId1.value) {
                    alert("���������� ������ּ���.");
                    return false;
                }
            }
            //-----------------------------------
            //  �ΰǺ� üũ(�ΰǺ�,���������ΰ�츸 ����ʼ�)
            //-----------------------------------
            if (frm.rchrInfo.length > 1) {
                for (i = 0; i < frm.rchrInfo.length; i++) {
                    if (uf_AdtnRegItxpChk(
                            frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].value,
                            false)) {
                        if (null == frm.rchrInfo[i].value
                                || "" == frm.rchrInfo[i].value) {
                            alert("�ΰǺ� ������ּ���.");
                            return false;
                        } else {
                            
                            if (frm.rchrAmt[i].value.replace(/,/gi, "") != frm.ItxpUseAmt[i].value
                                    .replace(/,/gi, "")) {
                                alert("���ݾ��� �հ�� ��ϵ� �ΰǺ��� �ݾװ� ��ġ���� �ʽ��ϴ�.");
                                return false;
                            }
                        }
                    }
                }
            } else {
                if (uf_AdtnRegItxpChk(
                        frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value,
                        false)) {
                    if (null == frm.rchrInfo.value || "" == frm.rchrInfo.value) {
                        alert("�ΰǺ� ������ּ���.");
                        return false;
                    } else {
                        
                        if (frm.rchrAmt.value.replace(/,/gi, "") != frm.ItxpUseAmt.value
                                .replace(/,/gi, "")) {
                            alert("���ݾ��� �հ�� ��ϵ� �ΰǺ��� �ݾװ� ��ġ���� �ʽ��ϴ�.");
                            return false;
                        }
                    }
                }
            }
        }

        //-----------------------------------
        //  ������ü ��û�׸� ��ȿ�� �˻�
        //-----------------------------------
        if ("1" == PlanPrgrSt) {

            if ("Y" == frm.SqbnSplrExctnRsnYn.value
                    && "" == $.trim(frm.SqbnSplrExctnRsn.value)) {
                alert('����� ��������� �Է����ּ���.');
                frm.SqbnSplrExctnRsn.focus();
                return false;
            }

            if (!("C" == frm.Evdc_Dv.value)) {
                var exctnStgDv = (true == document.frm.ExctnStgDv[0].checked) ? "1"
                        : "2";

                //�����Ȯ�� üũ
                if (frm.SplrAuth.value != '1') {
                    alert('����ڵ�Ϲ�ȣȮ���� �����Ͻñ� �ٶ��ϴ�.');
                    return false;
                }

                // Ÿ������ ���
                if ("1" == exctnStgDv) {

                    //-----------------------------------
                    //  �������� ���� ������ ��ȿ���˻�
                    //-----------------------------------
                    var msg = chk_Itxp_ExctnStgDv(frm, frm.Evdc_Dv.value);
                    if (!("" == msg)) {
                        alert(msg);
                        return false;
                    }
                } else {
                    //-----------------------------------
                    //  �����������п� ���� ������ ��ȿ���˻�
                    //-----------------------------------
                    var msg = chk_Itxp_kindTrnsRchAcc(frm,
                            frm.kind_TrnsRchAcc.value,
                            frm_key.S_NPRF_INST_YN.value);
                    if (!("" == msg)) {
                        alert(msg); 
                        return false;
                    }
                }
            }

            //ī��鼭 �������ϰ�츸 üũ��������
            if (!(("C" == frm.Evdc_Dv.value) && ("1" == frm.InstCrdSetlMeth.value))) {
                if (frm.OwacNm.value == "") {
                    alert("��������ȸ�� ���ֽʽÿ�.");
                    return false;
                }
            }

            //ī��鼭 �������ϰ�츸 üũ��������
            if (!(("C" == frm.Evdc_Dv.value) && ("1" == frm.InstCrdSetlMeth.value))) {
                //-----------------------------------
                //  ������ü ��û�׸� ��ȿ�� �˻�
                //-----------------------------------
                if ("" == frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value) {
                    alert("�ʼ��׸��� �ݵ�� �����ϼž� �մϴ�.\r\n\r\n* �ʼ����� �׸� : �Աݰ���(����)");
                    frm.RcvBnkCd.focus();
                    return false;
                }
                if (!validate_frm(frm))
                    return false; // ��ȿ��ó��
            }

            if (!("C" == frm.Evdc_Dv.value)) {
                //-----------------------------------
                //  Ÿ������ü�� �Աݰ��°� ������������� �˻�
                //-----------------------------------
                if (true == document.frm.ExctnStgDv[0].checked
                        && frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value == frm_key.S_RCH_ACC_BNK_CD.value
                        && frm.RcvAcctNo.value == frm_key.S_RCH_ACC_NO.value) {
                    alert("�Աݰ��°� ��������¿� �����մϴ�.");
                    return false;
                }

            }

            //--------------------------------------------------
            //  ��Ÿ����&&�ڰ�����ü�� ��� �����ݾװ� ��ġ���� üũ����
            //--------------------------------------------------
            if (!(("E" == frm.Evdc_Dv.value) && (true == document.frm.ExctnStgDv[1].checked))) {
                //-----------------------------------
                //  �ݾ� üũ
                //-----------------------------------
                var msg = chk_itxp_evdc_amt();
                if (!("" == msg)) {
                    alert(msg);
                    return false;
                }
            }
        }

        return true;
    }
    /******************************************************************
     * uf_itxp_save     ��ȹ/����/�������
     * @param
     * @return
     ******************************************************************/
    function uf_itxp_save(PlanPrgrSt) {
        var frm_key = document.rtr_str_form;
        var frm     = document.frm;
        var param, target_url;
        var bzRegNo = "";
        _PlanPrgrSt = PlanPrgrSt;
        
        var _evdc_dv = frm.evma_gb.value;
        
        
        //��ȿ�� �˻�
        if (!chk_save(PlanPrgrSt))
            return;
        
        if ("0" == PlanPrgrSt
                && ("" != frm.OwacNm.value || "" != frm.PaymUsag.value || "" != frm.TelNo.value)) {
            alert('������ü ��û�׸��� ������� �ʽ��ϴ�.');
        }

        if ('E' == _evdc_dv) {
            bzRegNo = frm.etc_SplrBzRegNo.value;
            bzRegNm = frm.etc_SplrCoNm.value;
        } else if ('C' == _evdc_dv) {
            bzRegNo = frm.C_MestBzNo.value;
            bzRegNm = frm.C_MestNm.value;
        } else if ('T' == _evdc_dv) {
            bzRegNo = frm.T_SplrBzRegNo.value;
            bzRegNm = frm.T_SplpCoNm.value;
        }
        param += "&SplrBzRegNo=" + bzRegNo;
        param += "&SplrCoNm=" + bzRegNm;
        frm.SplrCoNm.value = bzRegNm;
        get2post(frm, param);
    
        //�ŷ�ó ���� Ȯ��
        if( bzRegNo == "0000000000" || bzRegNo == "8888888888" ){ //���ΰŷ� �Ǵ� �ؿܰŷ�ó �ΰ�� �������ȸ ����
            fn_itxp_save();         
        }else{
            
            uf_proce_display_on();  //�ε���
                
            setTimeout(
                    function(){
                            try{   
                                document.frm.SplrBzRegSt.value       = "";        //����ڵ�ϻ���
                                document.frm.SplrTaxtTypDv.value     = "";  //����ڰ�������
                            }finally{
                                reset_submit();
                                fn_itxp_save();
                            }
                        
                        }, 1000);   // 1���� ���� 1000 = 1��s

        }

    }
    
    function fn_itxp_save(){
        var frm_key = document.rtr_str_form;
        var frm     = document.frm;
        var param, target_url;
        var confirm_msg = "";
        var splrCoNm = frm.SplrCoNm.value;
        
            if( 'A04009' == frm.SplrBzRegSt.value ){ //�޾�
                confirm_msg = splrCoNm + "��(��) ����û���� �޾����� �Ű�� �ŷ�ó �Դϴ�.\n\n";
            }else if( 'A04010' == frm.SplrBzRegSt.value ){ //���
                confirm_msg = splrCoNm + "��(��) ����û���� ������� �Ű�� �ŷ�ó �Դϴ�.\n\n";
            }
            if( confirm_msg != "" ){
                confirm_msg += "��������Ͻðڽ��ϱ�?";
            }else{
                confirm_msg = "����Ͻðڽ��ϱ�?";
            }
            
            if (!confirm(confirm_msg)) {
                return;
            }
            
            param = "AGRMT_SEQ_NO=" + frm_key.S_AGRMT_SEQ_NO.value;
            param += "&AGRMT_INST_ID=" + frm_key.S_AGRMT_INST_ID.value;
            param += "&PMS_ID=" + frm_key.S_PMS_ID.value;
            param += "&BZ_CLAS_CD=" + frm_key.S_BZ_CLAS_CD.value;
            param += "&CPCG_INST_BZPR_NO=" + frm_key.S_CPCG_INST_BZPR_NO.value;
            param += "&AGRMT_INST_BZPR_NO=" + frm_key.S_AGRMT_INST_BZPR_NO.value;
            //���񰪴��
            if (document.frm.itxp_cnt.value == 1) {
                param += "&ITXP_CD="
                        + frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
                param += "&ITXP_NM="
                        + frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].text;
            } else {
                for (var i = 0; i < frm.SelDtlsItxpCd.length; i++) {
                    param += "&ITXP_CD="
                            + frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].value;
                    param += "&ITXP_NM="
                            + frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].text;
                }
            }
            //�����񰪴��
            if (document.frm.itxp_cnt.value == 1) {
                param += "&DTLS_ITXP_CD="
                        + frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
                param += "&DTLS_ITXP_NM="
                        + frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].text;
            } else {
                for (var i = 0; i < frm.SelSubDtlsItxpCd.length; i++) {
                    param += "&DTLS_ITXP_CD="
                            + frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value;
                    param += "&DTLS_ITXP_NM="
                            + frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].text;
                }
            }
            //����񱸺� ���
            if (document.frm.itxp_cnt.value == 1) {
                param += "&SHR_SORC_SN="
                        + frm.SelShrSorcSn.options[frm.SelShrSorcSn.options.selectedIndex].value;
            } else {
                for (var i = 0; i < frm.SelSubDtlsItxpCd.length; i++) {
                    param += "&SHR_SORC_SN="
                            + frm.SelShrSorcSn[i].options[frm.SelShrSorcSn[i].options.selectedIndex].value;
                }
            }

            param += "&PLAN_PRGR_ST=" + _PlanPrgrSt;
            param += "&CRD_SETL_METH=" + frm.InstCrdSetlMeth.value;
            param += "&DEV_STR_DT=" + frm_key.S_DEV_STR_DT.value;
            
            var ExctnStgDv = (true==document.frm.ExctnStgDv[0].checked) ? "1" : "2";
            param += "&SelExctnStgDv=" + ExctnStgDv;
            
            get2post(frm, param);
            
            
            if ("T" == frm.Evdc_Dv.value) {
                //target_url = "/t01/t12/T12_01_00_0_c1.jsp"; //���ڼ��ݰ�꼭
                <%-- 
                if( "N".equals(result.getRsltYn()) ){
                    <script type="text/javascript">
                        parent.setSqbnSplrExctnRsn("<%=result.getIdxNo()%>");
                        parent.reset_submit();
                    </script>
                }else{
                <script type="text/javascript">
                    parent.reset_submit();
                    parent.resetAllControl();
                    parent.alert("��ϵǾ����ϴ�.");
                </script>
                }
         --%>
                
                 uf_proce_display_on();  //�ε���

                 setTimeout(
                         function(){
                             reset_submit();
                             resetAllControl();
                             document.body.style.cursor = "auto";
                             
                             alert("��ϵǾ����ϴ�.");
                             
                             }, 1000);   // 1���� ���� 1000 = 1��s
            } else if ("C" == frm.Evdc_Dv.value) {
                //target_url = "/t01/t12/T12_01_00_0_c2.jsp"; //ī��
                <%-- 
                if( "N".equals(result.getRsltYn()) ){
                    <script type="text/javascript">
                        parent.setSqbnSplrExctnRsn("<%=result.getIdxNo()%>");
                        parent.reset_submit();
                    </script>
                }else{
                <script type="text/javascript">
                    parent.reset_submit();
                    parent.resetAllControl();
                    parent.alert("��ϵǾ����ϴ�.");
                </script>
                }
         --%>
                
                 uf_proce_display_on();  //�ε���

                 setTimeout(
                         function(){
                             reset_submit();
                             resetAllControl();
                             document.body.style.cursor = "auto";
                             
                             alert("��ϵǾ����ϴ�.");
                             
                             }, 1000);   // 1���� ���� 1000 = 1��s
            } else if ("E" == frm.Evdc_Dv.value) {
                //target_url = "/t01/t12/T12_01_00_0_c3.jsp"; //��Ÿ
        <%-- 
                if( "N".equals(result.getRsltYn()) ){
                    <script type="text/javascript">
                        parent.setSqbnSplrExctnRsn("<%=result.getIdxNo()%>");
                        parent.reset_submit();
                    </script>
                }else{
                <script type="text/javascript">
                    parent.reset_submit();
                    parent.resetAllControl();
                    parent.alert("��ϵǾ����ϴ�.");
                </script>
                }
         --%>
                
                 uf_proce_display_on();  //�ε���

                 setTimeout(
                         function(){
                             
                             reset_submit();
                             resetAllControl();
                             document.body.style.cursor = "auto";
                             alert("��ϵǾ����ϴ�.");
                             
                             }, 1000);   // 1���� ���� 1000 = 1��s
                             
                
            } else {
                alert("���� �̵�� �����Դϴ�.");
                return;
            }
            
        removeTempAttribute(frm);
    }

    /*********************************************
     * uf_tran_owac  ������(�Ǹ�) ��ȸ
     * @param
     * @return
     ********************************************/
    function uf_tran_owac() {
        var frm = document.frm;
        var bzRegNo = "";
        var _evdc_dv = frm.evma_gb.value;

        if (frm.SplrAuth.value != '1' && 'C' != _evdc_dv) {
            alert('����ڵ�Ϲ�ȣȮ���� �����Ͻñ� �ٶ��ϴ�.[' + frm.SplrAuth.value + ']');
            if ('E' == _evdc_dv) {
                $('#etc_ChkBzRegNo_0').focus();
            } else if ('T' == _evdc_dv) {
                $('#ChkBzRegNo_0').focus();
            }
            return false;
        }

        if (frm.ExctnStgDv[0].checked == true) {
            if ('E' == _evdc_dv) {
                bzRegNo = frm.etc_SplrBzRegNo.value;
            } else if ('C' == _evdc_dv) {

            } else if ('T' == _evdc_dv) {
                bzRegNo = frm.T_SplrBzRegNo.value;
            } else {
                alert('������ �����ϼ���');
                return false;
            }
        }

        var chk_cnt = 0;
        for ( var i = 0; i < document.forms['frm'].elements['itxp_cnt'].value; i++) {
            if (false == chkAcnmAuthPass($('#SelSubDtlsItxpCd_' + i).val())) {
                chk_cnt++; //�Ǹ������ʿ� ������ ����
            }
        }//end of for

        $('#RcvNmChkDv_0').val('');
        if (chk_cnt == 0) {
            $('#RcvNmChkDv_0').val('B06006'); //[RNDB06] B06006 �Ǹ���ȸ���ܼ���
            uf_tran_owac2();
        } else {
            if (bzRegNo == '0000000000' && frm.etc_SplrPrsn.checked == true) {
                $('#RcvNmChkDv_0').val('B06008'); //[RNDB06] B06008 ���ΰŷ�ó
                uf_tran_owac2();
            } else if (bzRegNo == '0000000000'
                    && frm.etc_SplrPrsn.checked == false) {
                alert('�ŷ�ó ����ڵ�Ϲ�ȣ�� Ȯ���ϼ���.');
            } else if (bzRegNo == '8888888888') {
                $('#RcvNmChkDv_0').val('B06009'); //[RNDB06] B06009 �ؿܰŷ�ó
                uf_tran_owac2();
            } else {
                //bzRegNo ���� ������ ������ ��ȸ��
                uf_tran_owac_c(bzRegNo);
            }
        }

        return false;
    }
</script>

<!-- content start -->
<div id="content">
    <!-- pagenav start -->
    



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u12_01_00_t.gif" alt="�����"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>���������</li>
                       <li><img src="/images/common/arr.gif" alt=" " />�����������</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">�����</span></li>
                        
                    </ul>
                </div>
            </div>                
    <!-- //pagenav end// -->
    <div class="t30"></div>
    



<!-- //auto search start -->
<% 
    boolean isSbjtAutoSchMulti  =   false;  //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�
    boolean beSearchBtn         =   false;  //��ȸ��ư ��������
    String SSbjtInqDvCd        = "F";      //������������
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->







    <div class="cb b10"></div>
    <!-- ---------------------------------------------------------------------------- -->
    <!--    ����߽� ������ȸ �ڵ��ϼ� ����� �� -->
    <!-- ---------------------------------------------------------------------------- -->
    <form name="frm" id="frm" method="post">
        <input type="hidden" name="S_PSNL_ACCT_USEYN" id="S_PSNL_ACCT_USEYN" value="" />
        <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" /> 
        <input type="hidden" name="SBJT_DET_SCH_AUTO" id="SBJT_DET_SCH_AUTO" value="Y" />
        <!-- ��������  -->
        <input type="hidden" id="EvdcSeqNo" name="EvdcSeqNo" value="" />
        <!--    �����Ϸù�ȣ                              -->
        <input type="hidden" id="Evdc_Dv" name="Evdc_Dv" value="" />
        <!--    ��������                                    -->
        <input type="hidden" id="dockeyNo" name="dockeyNo" value="" />
        <!--    ���õ� �������̺�Ű                      -->
        <input type="hidden" id="doc_dv" name="doc_dv" value="" />
        <!--    ��������/�ΰǺ�                            -->
        <input type="hidden" id="docKey" name="docKey" value="" />
        <!--    ������EDMS_dockey                      -->
        <input type="hidden" id="docNo" name="docNo" value="" />
        <!--    ���������(������Ͻ�����)              -->
        <input type="hidden" id="docName" name="docName" value="" />
        <!--    ���ϰ����(������ϸ�)                    -->
        <input type="hidden" id="methodName" name="methodName" value="" />
        <!--    �޼ҵ��                                    -->
        <input type="hidden" id="attr98" name="attr98" value="" />
        <!--    ���ϰ����(������ϸ�)                    -->
        <input type="hidden" id="attr99" name="attr99" value="" />
        <!--    ���ϰ����(������ϰ���)                   -->
        <input type="hidden" id="itxp_cnt" name="itxp_cnt" value="1" />
        <!--    ����ϰǼ�                              -->
        <input type="hidden" id="Evdc_SumAmt" name="Evdc_SumAmt" value="" />
        <!--    ���ݾ�                                -->
        <input type="hidden" id="Evdc_SplyAmt" name="Evdc_SplyAmt" value="" />
        <!--    ���ޱݾ�(�������ް���)                    -->
        <input type="hidden" id="Evdc_VatAmt" name="Evdc_VatAmt" value="" />
        <!--    �ΰ�����(�����ΰ���ġ����)                  -->
        <input type="hidden" id="p_rchrInfo" name="p_rchrInfo" value="" />

        <!------------------------------------------------------------>
        <!-----------------     ���� ������  BEGIN           -------------->
        <!------------------------------------------------------------>
        <!-----------------     1)���ڼ��ݰ�꼭 ������       -------------->
        <!------------------------------------------------------------>
        <input type="hidden" id="T_SplpBzRegNo" name="T_SplpBzRegNo" value="" />
        <!--     ���޹޴��ڻ���ڵ�Ϲ�ȣ       -->
        <input type="hidden" id="T_SplpSucoEnplcNo" name="T_SplpSucoEnplcNo"
            value="" />
        <!--     ���޹޴�����ȸ�������ȣ      -->
        <input type="hidden" id="T_SplpCoNm" name="T_SplpCoNm" value="" />
        <!--     ���޹޴���ȸ���               -->
        <input type="hidden" id="T_SplpTpbzNm" name="T_SplpTpbzNm" value="" />
        <!--     ���޹޴��ھ�����               -->
        <input type="hidden" id="T_SplpTpopNm" name="T_SplpTpopNm" value="" />
        <!--     ���޹޴��ھ��¸�               -->
        <input type="hidden" id="T_SplpReprNm" name="T_SplpReprNm" value="" />
        <!--     ���޹޴��ڴ�ǥ�ڸ�              -->
        <input type="hidden" id="T_SplpAdr" name="T_SplpAdr" value="" />
        <!--     ���޹޴����ּ�                -->
        <input type="hidden" id="T_SplrBzRegNo" name="T_SplrBzRegNo" value="" />
        <!--     �����ڻ���ڵ�Ϲ�ȣ         -->
        <input type="hidden" id="T_SplrChidCoEnplcNo"
            name="T_SplrChidCoEnplcNo" value="" />
        <!--     ��������ȸ�������ȣ        -->
        <input type="hidden" id="T_SplrCoNm" name="T_SplrCoNm" value="" />
        <!--     ������ȸ���                 -->
        <input type="hidden" id="T_SplrTpbzNm" name="T_SplrTpbzNm" value="" />
        <!--     �����ھ�����                 -->
        <input type="hidden" id="T_SplrTpopNm" name="T_SplrTpopNm" value="" />
        <!--     �����ھ��¸�                 -->
        <input type="hidden" id="T_SplrReprNm" name="T_SplrReprNm" value="" />
        <!--     �����ڴ�ǥ�ڸ�                -->
        <input type="hidden" id="T_SplrAdr" name="T_SplrAdr" value="" />
        <!--     �������ּ�                      -->
        <input type="hidden" id="T_Rmk" name="T_Rmk" value="" />
        <!--     ���                         -->
        <!-- 2012.01.25 �µ��� -->
        <!-- �ΰ����� ������ ���ް������ε� ��� �����ϵ��� ���� Start-->
        <input type="hidden" id="T_SumAmt" name="T_SumAmt" value="" />
        <!--     ���ݾ�                       -->
        <input type="hidden" id="T_SplyAmt" name="T_SplyAmt" value="" />
        <!--     ���ޱݾ�(�������ް���)       -->
        <input type="hidden" id="T_VatAmt" name="T_VatAmt" value="" />
        <!--     �ΰ�����(�����ΰ���ġ����)     -->
        <input type="hidden" id="T_ExclsVatAmtYn" name="T_ExclsVatAmtYn"
            value="" />
        <!--     �ΰ��� ���� �÷���         -->
        <!-- �ΰ����� ������ ���ް������ε� ��� �����ϵ��� ���� End-->
        <input type="hidden" id="T_CashAmt" name="T_CashAmt" value="" />
        <!--     ���ݱݾ�                       -->
        <input type="hidden" id="T_ChkAmt" name="T_ChkAmt" value="" />
        <!--     ��ǥ�ݾ�                       -->
        <input type="hidden" id="T_DrftAmt" name="T_DrftAmt" value="" />
        <!--     �����ݾ�                       -->
        <input type="hidden" id="T_CredRcblAmt" name="T_CredRcblAmt" value="" />
        <!--     �ܻ�̼��ݾ�                 -->
        <input type="hidden" id="T_WrtgDt" name="T_WrtgDt" value="" />
        <!--     �ۼ�����                       -->
        <input type="hidden" id="T_ReptNcnt" name="T_ReptNcnt" value="" />
        <!--     �ݺ��Ǽ�                       -->
        <input type="hidden" id="T_SplpEmalAdr1" name="T_SplpEmalAdr1"
            value="" />
        <!--     ���޹޴����̸����ּ�         -->
        <input type="hidden" id="T_SplpEmalAdr2" name="T_SplpEmalAdr2"
            value="" />
        <!--     ���޹޴����̸����ּ�         -->
        <input type="hidden" id="T_SplrEmalAdr" name="T_SplrEmalAdr" value="" />
        <!--     �������̸����ּ�               -->
        <input type="hidden" id="T_CorcRsn" name="T_CorcRsn" value="" />
        <!--     ��������                       -->
        <input type="hidden" id="T_ReptNcnt" name="T_ReptNcnt" value="" />
        <!--     �ݺ��Ǽ�                       -->
        <!--    ���ڼ��ݰ�꼭 ������(�ݺ���)         -->
        <input type="hidden" id="T_strUseDt" name="T_strUseDt" value="" />
        <!--     �������       -->
        <input type="hidden" id="T_strMitmNm" name="T_strMitmNm" value="" />
        <!--     ǰ��         -->
        <input type="hidden" id="T_strMitmUprc" name="T_strMitmUprc" value="" />
        <!--     �ܰ�         -->
        <input type="hidden" id="T_strMitmQnt" name="T_strMitmQnt" value="" />
        <!--     ����         -->
        <input type="hidden" id="T_strSplyAmt" name="T_strSplyAmt" value="" />
        <!--     ���ޱݾ�       -->
        <input type="hidden" id="T_strVatAmt" name="T_strVatAmt" value="" />
        <!--     �ΰ���ġ���� -->
        <input type="hidden" id="T_strMitmNrm" name="T_strMitmNrm" value="" />
        <!--     �԰�         -->
        <input type="hidden" id="T_strRmk" name="T_strRmk" value="" />
        <!--     ���         -->
        <!------------------------------------------------------------>
        <!-----------------     2)ī������ ������              -------------->
        <!------------------------------------------------------------>
        <input type="hidden" id="InstCrdSetlMeth" name="InstCrdSetlMeth"
            value="1" />
        <!--    ī��������           -->
        <input type="hidden" id="C_CrdNo" name="C_CrdNo" value="" />
        <!--    ī���ȣ               -->
        <input type="hidden" id="C_FncInstCd" name="C_FncInstCd" value="" />
        <!--    ī����������ڵ�     -->
        <input type="hidden" id="C_CrdKind" name="C_CrdKind" value="" />
        <!--    ī������               -->
        <input type="hidden" id="C_CrdTyp" name="C_CrdTyp" value="" />
        <!--    ī������               -->
        <input type="hidden" id="C_BuyApvDv" name="C_BuyApvDv" value="" />
        <!--    ���Խ��α���           -->
        <input type="hidden" id="C_BuyApvCanYn" name="C_BuyApvCanYn" value="" />
        <!--    ���Խ�����ҿ���       -->
        <input type="hidden" id="C_ApvDt" name="C_ApvDt" value="" />
        <!--    ��������               -->
        <input type="hidden" id="C_ApvDrtm" name="C_ApvDrtm" value="" />
        <!--    ���νð�               -->
        <input type="hidden" id="C_ApvNo" name="C_ApvNo" value="" />
        <!--    ���ι�ȣ               -->
        <input type="hidden" id="C_BuyDt" name="C_BuyDt" value="" />
        <!--    ��������               -->
        <input type="hidden" id="C_PrdDv" name="C_PrdDv" value="" />
        <!--    ��ǰ����               -->
        <input type="hidden" id="C_OvrsUseYn" name="C_OvrsUseYn" value="" />
        <!--    �ؿܻ�뿩��           -->
        <input type="hidden" id="C_BuyClctNo" name="C_BuyClctNo" value="" />
        <!--    �����߽ɹ�ȣ           -->
        <input type="hidden" id="C_SlipAcqr" name="C_SlipAcqr" value="" />
        <!--    ��ǥ���Ի�             -->
        <input type="hidden" id="C_SplyPrcAmt" name="C_SplyPrcAmt" value="" />
        <!--    ���ް���               -->
        <input type="hidden" id="C_VatAmt" name="C_VatAmt" value="" />
        <!--    �ΰ���ġ����           -->
        <input type="hidden" id="C_SrvFee" name="C_SrvFee" value="" />
        <!--    �����                 -->
        <input type="hidden" id="C_SrvFee_r" name="C_SrvFee_r" value="" />
        <!--    ���������             -->
        <input type="hidden" id="C_ApvSum" name="C_ApvSum" value="" />
        <!--    �����հ�               -->
        <input type="hidden" id="C_MestNm" name="C_MestNm" value="" />
        <!--    ��������               -->
        <input type="hidden" id="C_MestTaxtTypInfo" name="C_MestTaxtTypInfo"
            value="" />
        <!--    ������������������     -->
        <input type="hidden" id="C_MestTaxtTypInqDt" name="C_MestTaxtTypInqDt"
            value="" />
        <!--    ����������������ȸ���� -->
        <input type="hidden" id="C_MestReprNm" name="C_MestReprNm" value="" />
        <!--    ��������ǥ�ڸ�         -->
        <input type="hidden" id="C_MestBzNo" name="C_MestBzNo" value="" />
        <!--    ����������ڵ�Ϲ�ȣ   -->
        <input type="hidden" id="C_MestNo" name="C_MestNo" value="" />
        <!--    ��������ȣ             -->
        <input type="hidden" id="C_MestTelNo" name="C_MestTelNo" value="" />
        <!--    ��������ȭ��ȣ         -->
        <input type="hidden" id="C_MestAdr1" name="C_MestAdr1" value="" />
        <!--    �������ּ�1              -->
        <input type="hidden" id="C_MestAdr2" name="C_MestAdr2" value="" />
        <!--    �������ּ�2              -->
        <input type="hidden" id="C_CrdDv" name="C_CrdDv" value="" />
        <!--    ī�屸��               -->
        <input type="hidden" id="C_CmBrTp" name="C_CmBrTp" value="" />
        <!--    ������                 -->
        <input type="hidden" id="C_TpbzCd" name="C_TpbzCd" value="" />
        <!--    �����ڵ�               -->
        <input type="hidden" id="C_SetlScheDt" name="C_SetlScheDt" value="" />
        <!--    ����������             -->
        <!------------------------------------------------------------>
        <!-----------------     ���� ������  END     ------------------>
        <!------------------------------------------------------------>
        
        
        <input type="hidden" id="SplrBzRegSt" name="SplrBzRegSt" value="" />        <!-- ����ڵ�ϻ��� -->
        <input type="hidden" id="SplrTaxtTypDv" name="SplrTaxtTypDv" value="" />    <!-- ����ھ������� -->
        <input type="hidden" id="SplrCoNm" name="SplrCoNm" value="" />
        
        <div class="cb b10"></div>
        <div class="t10">
            <img src="/images/pefo/u12_01_00_img.gif"
                alt="���������� ���þȳ� ���̵� �������켱 ��� : ���ڼ��ݰ�꼭, ī��, ��Ÿ ���������� ��������, �׿� ���� �������(����, ���ݾ׵�)�� �Է��մϴ�. ����켱 ��� : ���(����, ������, ����񱸺�)�� ��������, �׿� ���� ��������(���ڼ��ݰ�꼭, ī��, ŰŸ ��)�� �Է��մϴ�." />
        </div>
        <!-- �����켱��� �׷� start -->
        <div class="t20 b10">
            <div class="tab_line1">
                <a href="#dummy"
                    onclick="fnEvdcRegTabUrl('/t01/t12/T12_01_00_0.jsp')"><img
                    src="/images/pefo/u12_01_00_tab1on.gif" alt="�����켱 ���" /></a><a
                    href="#dummy"
                    onclick="fnEvdcRegTabUrl('/t01/t12/T12_01_00_1.jsp')"><img
                    src="/images/pefo/u12_01_00_tab2.gif" alt="����߽� ���" /></a>
            </div>
            <div class="tab_box">
                <div class="find_box">
                    <fieldset>
                        <legend>�����켱 ���</legend>
                        <table width="680" summary="�����켱 ��� �˻�" class="tbl_search">
                            <caption>�����켱 ��� �˻�</caption>
                            <colgroup>
                                <col width="12%" />
                                <col width="30%" />
                                <col width="15%" />
                                <col width="43%" />
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">��������</th>
                                    <td><select name='evma_gb'  id='evma_gb'  class='' onchange='SplrInfoDisplay();' ><option value='E' >��Ÿ</option><option value='T' selected>���ڼ��ݰ�꼭</option><option value='C' >ī��</option></select>
                                        <a href="#dummy" onclick="sbjtFormGen();"><img
                                            src="/bt/bt_regist1.gif" alt="�������" /></a></td>
                                    <td scope="row"></td>
                                    <td align="right"><a href="#"
                                        onclick="uf_popup_etc_dvdc_avl_info();" id="etcInfoBtnDisplay"
                                        style="display: none;"><img
                                            src="/bt/bt_guide9.gif" alt="��Ÿ������ɺ��"
                                            class="vc" /></a></td>
                                </tr>
                            </tbody>
                        </table>
                    </fieldset>
                </div>
                <div class="t10"></div>

                <!------------------------------------------------------------>
                <!----------------- ���������  ������ BEGIN   ------------------>
                <!------------------------------------------------------------>
                <div id="divBmokInfo" style="display: none;">
                    <h3>���������</h3>
                    <div class="ar">
                        <a href="#dummy" onclick="uf_ItxpLimDtl();"><img type="image"
                            src="/bt/bt_guide1.gif" alt="��񺰻���ѵ�" /></a> <a
                            href="#dummy"
                            onclick="uf_frmNewWinNs(document.frm, '/pop/T01_12_30.jsp', 'GUIDE_LINE', '800', '850');"><img
                            src="/bt/bt_guide2.gif" alt="���� Guideline" /></a> <a
                            href="#dummy" onclick="fnAddRow();"><img
                            src="/bt/bt_plus.gif" alt="���߰�" /></a> <a
                            href="#dummy" onclick="fnRemove();calc_amtSet();"><img
                            src="/bt/bt_minus.gif" alt="�����" /></a>
                    </div>
                    <div class="t05 b10">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0"
                            summary="ǰ�� ����" class="tbl_type08" id="ItxpList">
                            <caption>ǰ����</caption>
                            <colgroup>
                                <col width="5%" />
                                <col width="12%" />
                                <col width="15%" />
                                <col width="13%" />
                                <col width="10%" />
                                <col width="10%" />
                                <col width="10%" />
                                <col width="5%" />
                                <col width="5%" />
                                <col width="10%" class="dycell" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col"><label for="chck"
                                        style="white-space: nowrap;">����</label></th>
                                    <th scope="col">����</th>
                                    <th scope="col">������</th>
                                    <th scope="col"><label for="part">ǰ��</label></th>
                                    <th scope="col"><label for="usemoney">���ݾ�</label></th>
                                    <th scope="col"><label for="suppmoney">���ޱݾ�</label></th>
                                    <th scope="col"><label for="vat">�ΰ���</label></th>
                                    <th scope="col">����<br />����
                                    </th>
                                    <th scope="col" style="white-space: nowrap;">�ΰǺ�<br />����
                                    </th>
                                    <th scope="col" class="dycell" style="display:none;">�����<br />����
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="ac"><input type="checkbox" name="ItxpChk"
                                        id="ItxpChk_0" value="0" /></td>
                                    <td class="ac"><select title="����" name="SelDtlsItxpCd"
                                        id="SelDtlsItxpCd_0" onchange="SelDtlsItxpCdOnChange(this);"
                                        style="width: 98%">
                                            <option value="">����</option>
                                    </select></td>
                                    <td class="ac"><select title="������" name="SelSubDtlsItxpCd"
                                        id="SelSubDtlsItxpCd_0" style="width: 98%"
                                        onchange="SelDtlsItxpCdOnChange2(this);">
                                            <option value="">����</option>
                                    </select></td>
                                    <td class="ac"><input type="hidden" name="EtcEvdcExcCd"
                                        id="EtcEvdcExcCd_0" value="" /> <input type="hidden"
                                        name="EtcEvdcExcNo" id="EtcEvdcExcNo_0" value="" />
                                        <div class="posabs etcimpex" id="etcimpex_0" onclick="uf_etcImplExc(this)">
                                            <a href="#dummy"><img src="/bt/bt_etcimpex.gif" /></a>
                                        </div> <input type="text" name="ItxpItem" id="ItxpItem_0" value="" maxlength="100" size="20" title="ǰ��" class="inputl" style="width: 70px" /></td>
                                    <td class="ac"><input type="text" name="ItxpUseAmt"
                                        id="ItxpUseAmt_0" value="0" size="17" readonly maxlength="15"
                                        title="���ݾ�" class="inputl currency"
                                        style="width: 62px; background-color: #d2d2d2;"
                                        onfocus="fnNextFocus(this,'ItxpSplyAmt');" /></td>
                                    <td class="ac"><input type="text" name="ItxpSplyAmt"
                                        id="ItxpSplyAmt_0" onkeyup="calc_amtSet(this, false);"
                                        onblur="calc_amtSet(this, false);" value="0" size="17"
                                        maxlength="15" title="���ޱݾ�" class="inputl currency"
                                        style="width: 62px" /></td>
                                    <td class="ac"><input type="text" name="ItxpVatAmt"
                                        id="ItxpVatAmt_0" onkeyup="calc_amtSet(this, false);"
                                        onblur="calc_amtSet(this, false);chk_amtSet(this);" value="0"
                                        size="17" maxlength="15" title="�ΰ���" class="inputl currency"
                                        style="width: 55px" /></td>
                                    <td class="ac"><div style="width: 34px">
                                            <span id="ItxpFileEvdcVal_0" style="display: none;"></span><a
                                                href="#dummy" class="itxpFileEvdcVal"><span
                                                id="ItxpFileEvdc_0" onclick="fnFileEvdc(this);"><img
                                                    src="/bt/bt_nonregist.gif" alt="�̵��" /></span></a> <input
                                                type="hidden" name="EdmsDocId1" id="EdmsDocId1_0" value="" />
                                            <!-- ������EDMS_dockey -->
                                            <input type="hidden" name="FileNm1" id="FileNm1_0" value="" />
                                            <!-- ���ϰ����(������ϸ�) -->
                                            <input type="hidden" name="file_Cnt1" id="file_Cnt1_0"
                                                value="" />
                                            <!-- ���ϰ����(������ϰ���) -->
                                        </div></td>
                                    <td class="ac"><span id="ItxpAdtnInfoVal_0"
                                        style="display: none;"></span><a href="#dummy"
                                        class="ItxpAdtnInfo"><span id="ItxpAdtnInfo_0"
                                            onclick="fnAdtnInfo(this);"><img
                                                src="/bt/bt_nonregist.gif" alt="�̵��" /></span></a> <input
                                        type="hidden" name="rchrInfo" id="rchrInfo_0" value="" /> <!-- �������������� -->
                                        <input type="hidden" name="rchrAmt" id="rchrAmt_0" value="" />
                                        <!-- �����������ѱݾ� --></td>
                                    <td class="ac dycell" style="display:none;"><select title="����񱸺�"
                                        name="SelShrSorcSn" id="SelShrSorcSn_0" style="width: 60px;">
                                            <option value="">�̻��</option>
                                    </select></td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="2" class="sum1">���ޱݾ� <span
                                        id="evdc_splyAmtTxt">0</span></td>
                                    <td class="sum1">�ΰ����� <span id="evdc_vatAmtTxt">0</span></td>
                                    <td class="sum1">����հ�</td>
                                    <td class="sum2"><span id="tot_TrnsAmt">0</span></td>
                                    <td class="sum2"><span id="tot_splyAmt">0</span></td>
                                    <td class="sum2"><span id="tot_vatAmt">0</span></td>
                                    <td class="sum1"></td>
                                    <td class="sum1"></td>
                                    <td class="sum1 dycell" style="display:none;"></td>
                                </tr>
                                <tr id="SplyAmtDfamtRsn_tr" style="display: none;">
                                    <td colspan="2" class="sum1">���ޱݾ����� ����</td>
                                    <td colspan="8"><input type="text" name="SplyAmtDfamtRsn"
                                        id="SplyAmtDfamtRsn" class="inputl" style="width: 98%"
                                        value="" /></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <!-- 2013-09-17 ������ ����/������ ���� ��û �ش� �˸� ���� -->
                    <!-- <div class="guide_bu">�񿵸������ ��� ������ ����� ������������ ����� �����մϴ�.</div> -->

                    <!------------------------------------------------------------>
                    <!------------------ �ŷ�ó ���� ���̺�  ����  ---------------------->
                    <!------------------------------------------------------------>
                    <input type="hidden" name="SplrAuth" id="SplrAuth" value="0" />
                    <div id="divTranInfo" style="display: none;">
                        <!-- �ŷ�ó ���� Div ����  -->
                        <h3>�ŷ�ó����</h3>
                        <div class="t05 b10">
                            <table width="672" border="0" cellspacing="0" cellpadding="0"
                                summary="�ŷ�ó������ ����ڹ�ȣ,��ȣ(���θ�),������ּ� �� ������ ������ ǥ"
                                class="tbl_type02">
                                <caption>�ŷ�ó������ ����ڹ�ȣ,��ȣ(���θ�),������ּ� �� ������ ������ ǥ</caption>
                                <colgroup>
                                    <col width="18%" />
                                    <col width="36%" />
                                    <col width="18%" />
                                    <col width="28%" />
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row"><label for="company">��ǥ�ڸ�</label></th>
                                        <td><span id="d_SplrReprNm"> </span></td>
                                        <th scope="row"><label for="busmun">����ڵ�Ϲ�ȣ</label></th>
                                        <td class="ll"><span id="d_SplrBzRegNo"></span> <a href="#" id="ChkBzRegNo_0" onclick="return uf_chkbzregno('0')"><img src="/bt/bt_bzregno.gif" alt="����ڹ�ȣȮ��" /></a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><label for="part">����</label></th>
                                        <td><span id="d_SplrTpopNm"></span></td>
                                        <th scope="row"><label for="part1">����</label></th>
                                        <td class="ll"><span id="d_SplrTpbzNm"></span></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><label for="add">������ּ�</label></th>
                                        <td class="ll" colspan="3"><span id="d_SplrAdr"></span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--------------------  ��Ÿ���� ��Ͻ� ǥ��     ------------------------->
                    <div id="divTranInfo_etc" style="display: none;">
                        <!-- �ŷ�ó ���� Div ����  -->
                        <h3>�ŷ�ó����</h3>
                        <div class="fr">
                            <input type="checkbox" value="1" name="etc_SplrPrsn"
                                id="etc_SplrPrsn_0" onclick="uf_tglSplrPrsn(this)" /><label
                                for="etc_SplrPrsn_0">���ΰŷ�</label>
                        </div>
                        <div class="t05 b10 cb">
                            <table width="672" border="0" cellspacing="0" cellpadding="0"
                                summary="�ŷ�ó������ ����ڹ�ȣ,��ȣ(���θ�),������ּ� �� ������ ������ ǥ"
                                class="tbl_type02">
                                <caption>�ŷ�ó������ ����ڹ�ȣ,��ȣ(���θ�),������ּ� �� ������ ������ ǥ</caption>
                                <colgroup>
                                    <col width="18%" />
                                    <col width="36%" />
                                    <col width="18%" />
                                    <col width="28%" />
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="etc_SplrCoNm_0">ȸ���</label></th>
                                        <td><input type="text" name="etc_SplrCoNm"
                                            id="etc_SplrCoNm_0" title="ȸ���" class="inputl"
                                            style="width: 120px" /> <span id="idBzRegNo"
                                            style="display: none;"><a
                                                href="javascript:uf_popup_bzpr();"><img
                                                    src="/bt/bt_busin.gif" alt="���־��»����" /></a></span></td>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="etc_SplrBzRegNo_0">����ڵ�Ϲ�ȣ</label></th>
                                        <td class="ll"><input type="text" name="etc_SplrBzRegNo"
                                            id="etc_SplrBzRegNo_0" title="����ڵ�Ϲ�ȣ" class="inputl"
                                            maxlength="10" style="width: 95px" onKeyup="numcheck(this.value)" onfocus="numcheck(this.value)" /> <a href="#"
                                            id="etc_ChkBzRegNo_0" onclick="return uf_chkbzregno('0')"><img
                                                src="/bt/bt_bzregno.gif" alt="����ڹ�ȣȮ��" /></a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><label for="etc_SplrTpopNm_0">����</label></th>
                                        <td><input type="text" name="etc_SplrTpopNm"
                                            id="etc_SplrTpopNm_0" title="����" class="inputl"
                                            style="width: 120px" /></td>
                                        <th scope="row"><label for="etc_SplrTpbzNm_0">����</label></th>
                                        <td class="ll"><input type="text" name="etc_SplrTpbzNm"
                                            id="etc_SplrTpbzNm_0" title="����" class="inputl"
                                            style="width: 95px" /></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrAdr_0">������ּ�</label></th>
                                        <td><input type="text" name="etc_SplrAdr" id="etc_SplrAdr_0" title="������ּ�" class="inputl" style="width: 195px" /></td>
                                        <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrReprNm_0">��ǥ�ڸ�</label></th>
                                        <td class="ll"><input type="text" name="etc_SplrReprNm" id="etc_SplrReprNm_0" title="��ǥ�ڸ�" class="inputl" style="width: 95px" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- �ŷ�ó���� �� -->

                    <div id="SqbnSplrExctnRsn_tbl_0" style="display: none;">
                        <input type="hidden" name="SqbnSplrExctnRsnYn"
                            id="SqbnSplrExctnRsnYn_0" value="N" /> <input type="hidden"
                            name="RcvNmChkDv" id="RcvNmChkDv_0" value="" />
                        <h3>����� �������</h3>
                        <div class="t05 b10">
                            <table width="672" border="0" cellspacing="0" cellpadding="0"
                                summary="������ŷ�ó �������" class="tbl_type02">
                                <caption>����� �������</caption>
                                <colgroup>
                                    <col width="18%" />
                                    <col width="82%" />
                                <tbody>
                                    <tr>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="SqbnSplrExctnRsn_0">�������</label></th>
                                        <td class="ll"><input type="text" name="SqbnSplrExctnRsn"
                                            id="SqbnSplrExctnRsn_0" class="inputl"
                                            style="width: 455px; ime-mode: inactive;" colname="������������"
                                            maxlength="200" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- ������ü��û�׸� ���̺�  ����  -->
                    <div id="divTranInfoItem" style="display: none;">
                        <!-- ������ü��û�׸� Div ����  -->
                        <h3>������ü ��û�׸�</h3>
                        <div class="ar">
                            <a href="#" id="trnsInfo_0"
                                onclick="uf_popup_trns_stndrd_info();"><img
                                src="/bt/bt_guide3.gif" alt="�ڰ�����ü������" /></a>
                        </div>
                        <div class="t05 b10">
                            <table width="672" border="0" cellspacing="0" cellpadding="0"
                                summary="������ü ��û�׸� �󼼳��� ǥ" class="tbl_type02">
                                <caption>������ü ��û�׸� �󼼳��� ǥ</caption>
                                <colgroup>
                                    <col width="18%" />
                                    <col width="36%" />
                                    <col width="18%" />
                                    <col width="28%" />
                                </colgroup>
                                <tbody>
                                    <tr id="ExctnStgDv_tr" style="display:;">
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="ExctnStgDv1_0">���౸��</label></th>
                                        <td colspan="3" class="ll">
                                            <div id="idExctnStgDv_td1" style="display: block;">
                                                <input type="radio" name="ExctnStgDv" id="ExctnStgDv1_0"
                                                    value="1" class="radio2"
                                                    onclick="exctn_ExctnStgDv_v2(this.value,'1', document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_BNK_NM.value, document.rtr_str_form.S_RCH_ACC_NO.value, '', '', '', document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value);setDefaultKindTrnsRchAcc();"
                                                    checked="checked" /><label for="ExctnStgDv1">Ÿ������ü(��������°�����ü)</label>
                                                <span class="l10"></span> <input type="radio"
                                                    name="ExctnStgDv" id="ExctnStgDv2_0" value="2"
                                                    class="radio2"
                                                    onclick="exctn_ExctnStgDv_v2(this.value,'1', document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_BNK_NM.value, document.rtr_str_form.S_RCH_ACC_NO.value, document.rtr_str_form.S_RCH_ACC_BNK_NM.value, document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_NO.value,document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value);setDefaultKindTrnsRchAcc();" /><label
                                                    for="ExctnStgDv2">�ڰ�����ü(�����������ü)</label>
                                                <select name='kind_TrnsRchAcc'  id='kind_TrnsRchAcc'  class='' id='kind_TrnsRchAcc' style='width:135px;'  ><option value='B03001' >�����</option><option value='B03002' >���ڱ���</option><option value='B03003' >������������</option><option value='B03004' >�������ܾ׺���</option><option value='B03005' >��ü�����������ü</option><option value='B03006' >���������ݾ�</option><option value='B03007' >�ڰ�����ü���α��</option><option value='B03009' >�������������� �ΰǺ�(������)</option></select>
                                            </div> <span id="idExctnStgDv_td2" style="display: none;"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="bank">�Աݰ���</label></th>
                                        <td><select name='RcvBnkCd'  id='RcvBnkCd'  class='' onchange='uf_OwacNmRst();' style='width:50px' ><option value=''>����</option><option value='020' >A ����</option><option value='003' >B ����</option><option value='004' >C ����</option></select>
                                            <input type="text" title="�Աݰ���" class="inputl"
                                            onchange='uf_OwacNmRst();' style="width: 80px" id="RcvAcctNo"
                                            name="RcvAcctNo" value="" title="" notnull
                                            colname="�Աݰ���(���¹�ȣ)" datatype="N" maxlength="20" enc="on"
                                            onfocus="chkEnc();" /> <a id="idFvrtAcct" href="#dummy"
                                            onclick="uf_popup_fvrt_acct();"><img
                                                src="/bt/bt_acct01.gif" alt="���־��°���" /></a>
                                            <div id="idRcvBnkNm" style="float: left; padding-top: 4px; display: none;"></div>
                                            <a id="idMyAcctNo" href="#dummy" onclick="uf_popup_my_acct();" style="float: right; display: none"><img src="/bt/bt_myacctno.gif" alt="�ڰ�����ü�����" /></a></td>
                                        <th scope="row"><span class="txt_orb">*</span> <label for="account">������</label></th>
                                        <td class="ll" style="white-space: nowrap"><input
                                            type="text" name="OwacNm" id="OwacNm" title="������"
                                            class="inputl"
                                            style="width: 100px; background-color: #d2d2d2;"
                                            readonly="readonly" /> <a href="#dummy" id="idowacBtn"
                                            onclick="uf_tran_owac();"><img
                                                src="/bt/bt_acct02.gif" alt="��������ȸ" /></a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="white-space: nowrap;"><span
                                            class="txt_orb DynReqStar">*</span><label
                                            for="WdrwPsbkPrtCtt" style="font-size: 8pt">����������ǥ�ó���</label></th>
                                        <td><input type="text" name="WdrwPsbkPrtCtt"
                                            id="WdrwPsbkPrtCtt" class="inputl" style="width: 132px"
                                            value="" title="����������ǥ�ó���" notnull colname="����������ǥ�ó���"
                                            maxlength="12" /></td>
                                        <th scope="row" style="white-space: nowrap;"><span
                                            class="txt_orb DynReqStar">*</span><label for="RcvPsbkPrtCtt"
                                            style="font-size: 8pt">�ŷ�ó����ǥ�ó���</label></th>
                                        <td class="ll"><input type="text" name="RcvPsbkPrtCtt"
                                            id="RcvPsbkPrtCtt" class="inputl" style="width: 100px"
                                            value="" title="�ŷ�ó����ǥ�ó���" notnull colname="�ŷ�ó����ǥ�ó���"
                                            maxlength="12" /></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><label for="AchvInstIndv1Cd">����밳���ڵ�A</label></th>
                                        <td><input type="text" name="AchvInstIndv1Cd"
                                            id="AchvInstIndv1Cd" class="inputl"
                                            style="width: 132px; ime-mode: disabled;" value=""
                                            title="����밳���ڵ�A" colname="����밳���ڵ�A" maxlength="20" /></td>
                                        <th scope="row"><label for="codeb">����밳���ڵ�B</label></th>
                                        <td class="ll"><input type="text" name="AchvInstIndv2Cd"
                                            id="AchvInstIndv2Cd" class="inputl"
                                            style="width: 100px; ime-mode: disabled;" value=""
                                            title="����밳���ڵ�B" colname="����밳���ڵ�B" maxlength="20" /></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">��ü�ݾ�</th>
                                        <td><span id="txt_trnsAmt"></span></td>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="tel">��ȭ��ȣ</label></th>
                                        <td class="ll"><input type="text" name="TelNo" id="TelNo" title="��ȭ��ȣ" class="inputl" style="width: 100px" notnull colname="��ȭ��ȣ" datatype="N" maxlength="15" mask="-" /></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">���ް���</th>
                                        <td><span id="txt_splyAmt"></span></td>
                                        <th scope="row">�ΰ���ġ����</th>
                                        <td class="ll"><span id="txt_vatAmt"></span></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="memo">���޿뵵</label></th>
                                        <td colspan="3" class="ll"><input type="text" name="PaymUsag" id="PaymUsag" class="inputl" style="width: 455px; ime-mode: active;" notnull colname="���޿뵵" maxlength="100" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- action bt start -->
                    <div class="ar">
                        <a href="#dummy" onclick="uf_itxp_save('0');" class="bt_action4-1"
                            title="�����" id="btnItxp"><span class="bt_sp">�����</span></a> <a
                            href="#dummy" onclick="uf_itxp_save('1');" class="bt_action4-1"
                            title="����û"><span class="bt_sp">����û</span></a>
                    </div>
                    <!-- //action bt end// -->
                </div>




                <!-- �ȳ� ���̵� start -->
                <div class="guide_box2" id="guide">
                    <div class="guide_boxt2">
                        <p class="txt_title fl">�����켱��� �ȳ�</p>
                        <p class="ar txt_s">
                            * �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide"><img
                                src="/bt/bt_close.gif" alt="����" class="vc" /></a>
                        </p>
                    </div>
                    <div class="guide_boxc2">
                        <div class="point_title" id="divMyAcctTransAlwn" style="display: none;">�ǽð����տ���������ý���(RCMS) ���뿡 ���� ���� ��û ����̹Ƿ� �ڰ�����ü(�����������ü)�� ������</div>
                        <ul class="comment">
                            <li>���ڼ��ݰ�꼭, ��Ÿ������ <span class="txt_or">�ǽð�������ü</span>
                                ����Դϴ�.
                            </li>
                            <li>ī�������� �ǽð�������ü ���� �ʰ� ī������� ���ϱ��� ��ϵ� �ǿ� ���ؼ� �ϰ��� �������·�
                                ��ü�˴ϴ�.</li>
                            <li>ī��������Ͻ� <span class="txt_or">���ް��װ� �ΰ��� ������ �ݵ��
                                    �Ͻñ� �ٶ��ϴ�.(�������, �񿵸���� ��� �ش�)</span></li>
                        </ul>
                        <div class="point_title">��Ÿ����</div>
                        <ul class="comment">
                            <li>������ ���� ����� <span class="txt_or">���ڼ��ݰ�꼭 ������ ī��
                                    ������ �켱���� �����Ͽ� ���</span>���ּž� �մϴ�.
                            </li>
                            <li>��Ÿ�������ɺ���� Ȯ���Ͽ� �ֽñ� �ٶ��ϴ�.</li>
                        </ul>
                        <ul class="comment_list">
                            <li>1) ���ڼ��ݰ�꼭 �߱ް� ī������� ������ �������� ���ڼ��ݰ�꼭 ������ ī�� �������� ����ؾ� ��</li>
                            <li>2) '��Ÿ�������ɺ��'�� ������ �̿��� �ٸ� �������� ��Ÿ�������� ������� �Ұ���</li>
                        </ul>
                        <ul class="comment">
                            <li>����� �����񸮽�Ʈ, ������ �ʿ����� ������ '�������� �� ����� ���ȳ�'���� Ȯ���� ��
                                �ֽ��ϴ�.</li>
                            <li>������ü ��û�׸��� ����ϴ� ����� 'Ÿ������ü'�� '�ڰ�����ü' 2������ �ֽ��ϴ�.</li>
                        </ul>
                        <ul class="comment_list">
                            <li>1) Ÿ������ü : <span class="txt_or">RCMS �� ���������������
                                    �� �ŷ�ó���·� �ǽð� ��ü</span>�Ǹ�, RCMS ������� Ÿ������ü�� �����ؾ� ��
                            </li>
                            <li>2) �ڰ�����ü : <span class="txt_or">RCMS �� ��������������·�
                                    �ǽð� ��ü</span>�Ǹ�, �ڰ�����ü �������� ��쿡�� ����
                            </li>
                        </ul>
                        <div class="point_title">����밳���ڵ��?</div>
                        <ul class="comment">
                            <li>��������� �� ȭ�鿡�� �Է��� ���� ���࿡�� �������� �ŷ������� ���� �� �߰������� �����ִ� ���Դϴ�.</li>
                        </ul>
                    </div>
                    <p class="guide_boxb2"></p>
                </div>
                <!-- //�ȳ� ���̵� end// -->
            </div>
        </div>
        <!------------------------------------------------------------>
        <!----------------- ���������  ������ END     ------------------>
        <!------------------------------------------------------------>
    </form>
    <!-- //�����켱��� �׷� end//-->
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
    $('.currency').ForceNumericOnly();
</script>



</body>
</html>



<script type="text/javascript">
function setT12_01_00_0_r1(argMtSeqNo){
    if(!argMtSeqNo) return;
    
    //1. �ű԰���
    if("G00000000000001" == argMtSeqNo){
        BzExpSprnExctnYn = "N";
        EtcImplItxpCd[0] = "B0201017";
        EtcImplItxpCd[1] = "B0201009";
        EtcImplItxpCd[2] = "B0201019";
        EtcImplItxpCd[3] = "B0201003";
        EtcImplItxpCd[4] = "B0201005";
        EtcImplItxpCd[5] = "B0201018";
        EtcImplItxpCd[6] = "B0201001";
        EtcImplItxpCd[7] = "B0201006";
        EtcImplItxpCd[8] = "B0201002";
        EtcImplItxpCd[9] = "B0201007";
        EtcImplItxpCd[10] = "B0201008";
        EtcImplItxpCd[11] = "B0201015";
        EtcImplItxpCd[12] = "B0201016";
        EtcImplItxpCd[13] = "B0201020";
        EtcImplItxpCd[14] = "B0201010";
        EtcImplItxpCd[15] = "B0201021";
        EtcImplItxpCd[16] = "B0201004";
        arrSubDtlsItxpOptInfo[0] = new SubDtlsItxpOptInfo('B0203001','Y','Y');
        arrSubDtlsItxpOptInfo[1] = new SubDtlsItxpOptInfo('B0202014','N','Y');
        arrSubDtlsItxpOptInfo[2] = new SubDtlsItxpOptInfo('B0202013','Y','Y');
        arrSubDtlsItxpOptInfo[3] = new SubDtlsItxpOptInfo('B0202012','Y','Y');
        arrSubDtlsItxpOptInfo[4] = new SubDtlsItxpOptInfo('B0202010','Y','Y');
        arrSubDtlsItxpOptInfo[5] = new SubDtlsItxpOptInfo('B0202005','Y','Y');
        arrSubDtlsItxpOptInfo[6] = new SubDtlsItxpOptInfo('B0202002','N','Y');
        arrSubDtlsItxpOptInfo[7] = new SubDtlsItxpOptInfo('B0202001','N','Y');
        arrSubDtlsItxpOptInfo[8] = new SubDtlsItxpOptInfo('B0101001','Y','Y');
        arrSubDtlsItxpOptInfo[9] = new SubDtlsItxpOptInfo('B0301001','Y','Y');
        arrSubDtlsItxpOptInfo[10] = new SubDtlsItxpOptInfo('B0201016','Y','Y');
        arrSubDtlsItxpOptInfo[11] = new SubDtlsItxpOptInfo('B0201015','Y','Y');
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //�ΰǺ�
      //��������������
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[15] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //�繫��ǰ��
        arrSubDtlsItxpOptInfo[16] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //�߱ٽĴ�
        arrSubDtlsItxpOptInfo[17] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //��������������
        arrSubDtlsItxpOptInfo[18] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //����ȯ��������
        arrSubDtlsItxpOptInfo[19] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //ȸ�Ǻ�
        
        
    //2. �������
    }else if("G00000000000002" == argMtSeqNo){
        BzExpSprnExctnYn = "Y";
        EtcImplItxpCd[0] = "B0201017";
        EtcImplItxpCd[1] = "B0201009";
        EtcImplItxpCd[2] = "B0201019";
        EtcImplItxpCd[3] = "B0201003";
        EtcImplItxpCd[4] = "B0201005";
        EtcImplItxpCd[5] = "B0201018";
        EtcImplItxpCd[6] = "B0201001";
        EtcImplItxpCd[7] = "B0201006";
        EtcImplItxpCd[8] = "B0201002";
        EtcImplItxpCd[9] = "B0201007";
        EtcImplItxpCd[10] = "B0201008";
        EtcImplItxpCd[11] = "B0201015";
        EtcImplItxpCd[12] = "B0201016";
        EtcImplItxpCd[13] = "B0201020";
        EtcImplItxpCd[14] = "B0201010";
        EtcImplItxpCd[15] = "B0201021";
        EtcImplItxpCd[16] = "B0201004";
        arrSubDtlsItxpOptInfo[0] = new SubDtlsItxpOptInfo('B0102001','Y','Y');
        arrSubDtlsItxpOptInfo[1] = new SubDtlsItxpOptInfo('B0202014','N','Y');
        arrSubDtlsItxpOptInfo[2] = new SubDtlsItxpOptInfo('B0202013','Y','Y');
        arrSubDtlsItxpOptInfo[3] = new SubDtlsItxpOptInfo('B0202012','Y','Y');
        arrSubDtlsItxpOptInfo[4] = new SubDtlsItxpOptInfo('B0202010','Y','Y');
        arrSubDtlsItxpOptInfo[5] = new SubDtlsItxpOptInfo('B0202005','Y','Y');
        arrSubDtlsItxpOptInfo[6] = new SubDtlsItxpOptInfo('B0202002','N','Y');
        arrSubDtlsItxpOptInfo[7] = new SubDtlsItxpOptInfo('B0202001','N','Y');
        arrSubDtlsItxpOptInfo[8] = new SubDtlsItxpOptInfo('B0101001','Y','Y');
        arrSubDtlsItxpOptInfo[9] = new SubDtlsItxpOptInfo('B0201016','Y','Y');
        arrSubDtlsItxpOptInfo[10] = new SubDtlsItxpOptInfo('B0201015','Y','Y');
        arrSubDtlsItxpOptInfo[11] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //�ΰǺ�
      //��������������
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //�繫��ǰ��
        arrSubDtlsItxpOptInfo[15] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //�߱ٽĴ�
        arrSubDtlsItxpOptInfo[16] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //��������������
        arrSubDtlsItxpOptInfo[17] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //����ȯ��������
        arrSubDtlsItxpOptInfo[18] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //ȸ�Ǻ�
        
        
        
    //3. �������(���� ������)
    }else if("G00000000000003" == argMtSeqNo){
        BzExpSprnExctnYn = "N";
        EtcImplItxpCd[0] = "B0201017";
        EtcImplItxpCd[1] = "B0201009";
        EtcImplItxpCd[2] = "B0201019";
        EtcImplItxpCd[3] = "B0201003";
        EtcImplItxpCd[4] = "B0201005";
        EtcImplItxpCd[5] = "B0201018";
        EtcImplItxpCd[6] = "B0201001";
        EtcImplItxpCd[7] = "B0201006";
        EtcImplItxpCd[8] = "B0201002";
        EtcImplItxpCd[9] = "B0201007";
        EtcImplItxpCd[10] = "B0201008";
        EtcImplItxpCd[11] = "B0201015";
        EtcImplItxpCd[12] = "B0201016";
        EtcImplItxpCd[13] = "B0201020";
        EtcImplItxpCd[14] = "B0201010";
        EtcImplItxpCd[15] = "B0201021";
        EtcImplItxpCd[16] = "B0201004";
        arrSubDtlsItxpOptInfo[0] = new SubDtlsItxpOptInfo('B0202005','Y','Y');
        arrSubDtlsItxpOptInfo[1] = new SubDtlsItxpOptInfo('B0202002','N','Y');
        arrSubDtlsItxpOptInfo[2] = new SubDtlsItxpOptInfo('B0202001','N','Y');
        arrSubDtlsItxpOptInfo[3] = new SubDtlsItxpOptInfo('B0202014','N','Y');
        arrSubDtlsItxpOptInfo[4] = new SubDtlsItxpOptInfo('B0202013','Y','Y');
        arrSubDtlsItxpOptInfo[5] = new SubDtlsItxpOptInfo('B0202012','Y','Y');
        arrSubDtlsItxpOptInfo[6] = new SubDtlsItxpOptInfo('B0202010','Y','Y');
        arrSubDtlsItxpOptInfo[7] = new SubDtlsItxpOptInfo('B0101001','Y','Y');
        arrSubDtlsItxpOptInfo[8] = new SubDtlsItxpOptInfo('B0102001','Y','Y');
        arrSubDtlsItxpOptInfo[9] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[10] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //�ΰǺ�
      //��������������
        arrSubDtlsItxpOptInfo[11] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //�繫��ǰ��
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //�߱ٽĴ�
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //��������������
        arrSubDtlsItxpOptInfo[15] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //����ȯ��������
        arrSubDtlsItxpOptInfo[16] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //ȸ�Ǻ�
       
        
    //4. �������(���� ���� �Ϸ�)
    }else if("G00000000000004" == argMtSeqNo){
        BzExpSprnExctnYn = "N";
        EtcImplItxpCd[0] = "B0201017";
        EtcImplItxpCd[1] = "B0201009";
        EtcImplItxpCd[2] = "B0201019";
        EtcImplItxpCd[3] = "B0201003";
        EtcImplItxpCd[4] = "B0201005";
        EtcImplItxpCd[5] = "B0201018";
        EtcImplItxpCd[6] = "B0201001";
        EtcImplItxpCd[7] = "B0201006";
        EtcImplItxpCd[8] = "B0201002";
        EtcImplItxpCd[9] = "B0201007";
        EtcImplItxpCd[10] = "B0201008";
        EtcImplItxpCd[11] = "B0201015";
        EtcImplItxpCd[12] = "B0201016";
        EtcImplItxpCd[13] = "B0201020";
        EtcImplItxpCd[14] = "B0201010";
        EtcImplItxpCd[15] = "B0201021";
        EtcImplItxpCd[16] = "B0201004";
        arrSubDtlsItxpOptInfo[0] = new SubDtlsItxpOptInfo('B0202005','Y','Y');
        arrSubDtlsItxpOptInfo[1] = new SubDtlsItxpOptInfo('B0202002','N','Y');
        arrSubDtlsItxpOptInfo[2] = new SubDtlsItxpOptInfo('B0202001','N','Y');
        arrSubDtlsItxpOptInfo[3] = new SubDtlsItxpOptInfo('B0202014','N','Y');
        arrSubDtlsItxpOptInfo[4] = new SubDtlsItxpOptInfo('B0202013','Y','Y');
        arrSubDtlsItxpOptInfo[5] = new SubDtlsItxpOptInfo('B0202012','Y','Y');
        arrSubDtlsItxpOptInfo[6] = new SubDtlsItxpOptInfo('B0202010','Y','Y');
        arrSubDtlsItxpOptInfo[7] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[8] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //�ΰǺ�
      //��������������
        arrSubDtlsItxpOptInfo[9] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[10] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //�繫��ǰ��
        arrSubDtlsItxpOptInfo[11] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //�߱ٽĴ�
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //��������������
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //����ȯ��������
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //ȸ�Ǻ�
        
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
    
    
    
    mkDtlsItxpCd("0");
    mkShrSorcSn("0");
    set_evdc_amt();
    calc_amtSet(this, true);
    DisplayDivMyAcctTransAlwn();
    
}


function setT12_01_00_0_r2(argMtSeqNo){
    if(!argMtSeqNo) return;
    
    if("G00000000000001" == argMtSeqNo){  //1. �ű԰���
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }else if("G00000000000002" == argMtSeqNo){  //2. �������
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }else if("G00000000000003" == argMtSeqNo){  //3. �������(���� ������)
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }else if("G00000000000004" == argMtSeqNo){    //4. �������(���� ���� �Ϸ�)
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }
}    
</script>