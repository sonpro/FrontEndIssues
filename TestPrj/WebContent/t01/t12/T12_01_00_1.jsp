<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T12_01_00_1.jsp
 *   Description        : ���켱���
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

<title>���켱 ��� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
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
    input.currency {text-align:right;padding-right:1px;}
    .cellItxpAdtnInfo {display:none;}
</style>

<script type="text/javascript">
var SbjtMapKeys = "";
var sbjtParam = "";

$(document).ready(function() {
    
    //��ȸ��ư ��Ʈ��
    $("span#searchBtn").show();
       
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
                        }else{
                            autoSbjtFormGen();
                        }
                    },500);
                    return false;
                }
                
            });
            
        },1000);
    }
    
    //Image Preload
    var preImg = ['//bt/bt_regist2.gif','//bt/bt_regist4.gif','//bt/bt_grid_close1.gif'];
    for(i = 0; i < preImg;i++){
        var img = new Image();
        img.src = preImg[i];
    }
    
    $('#btn-guide').click(function(){
        if( $('#guide').css('height') == '17px' ){
            $('#guide').css({overflow:'hidden'}).animate({height:217},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});    
        }else{
            $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
        }
        return false;
    });
    /*
    $('.btn-closedtl').live('click',function(){
        $this = $(this);
        _index = $('.btn-closedtl').index($this);
        $this.parent().parent().parent().hide();
        $('.btn-opendtl:eq('+_index+')').css('visibility','visible');       
        return false;
    });
    */
    $('.btn-opendtl').live('click',function(){
        $this = $(this);
        _index = $('.btn-opendtl').index($this);
        if( $('#EvmaGb_'+_index).val() == "" ){
            alert('���������� �����ϼ���');
            $('#EvmaGb_'+_index).focus();
            return false;
        }
        
        if( $this.children().attr('alt') != '�ݱ�' ){
            $this.parent().parent().next().next().show();   
            //$this.css('visibility','hidden');
            $this.children().attr('src','//bt/bt_grid_close1.gif').attr('alt','�ݱ�');
        }else{
            $this.parent().parent().next().next().hide();   
            $this.children().attr('src','//bt/bt_grid1.gif').attr('alt','�߰��Է�');
        }

        return false;
    });
});

//==================================================================
//���ð��� form ���� ���� method
//���ð������� �������� ����ϱ� �� autoSbjtFormGen() �޼ҵ� ȣ��ٶ��ϴ�..
//==================================================================
    
function uf_autoSbjtSchCallBack(param){
    sbjtParam = param;
    var rtr_str = document.rtr_str_form;
    var bfrm = document.frm;
    
    if(!param){
        alert("�߸��� �����Դϴ�.");
        return;
    }

    var responseXML = "";
    
    if("1" == param){
        
        var _COOKIE_DATA_41_04 = getCookieTraning("T41_04_00");
        var _COOKIE_DATA_41_08 = getCookieTraning("T41_08_10");
        
        if(_COOKIE_DATA_41_08 == false){
            //S_AGCF_YN : N  :: ���������⺻�� N
            //S_AIFW : 0  :: �߹�ŷ �⺻�� 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else if(_COOKIE_DATA_41_04 == false){
            //S_AGCF_YN : Y  :: ���������⺻�� N
            //S_AIFW : 0  :: �߹�ŷ �⺻�� 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else{
            //S_AGCF_YN : Y  :: ���������⺻�� N
            //S_AIFW : 1  :: �߹�ŷ �⺻�� 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }
    }else if("2" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
    }else if("3" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
    }else if("4" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
    }
    
    
    document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
    
    //=============================
    //�����ų �޼ҵ� �� ��ġ
    //=============================
    //alert(rtr_str.S_AGCF_YN.value)
    if( "Y" == "N" ){
        alert("��������� Ȯ�ε��� �ʾ� �ش� �������� �̵��ϰڽ��ϴ�.");
        uf_frmNewWinNs(document.frm, '/pop/P01_00_40.jsp', 'membCheck', '680', '600');
        return;
        //fn_url("")
    }else if( rtr_str.S_AGCF_YN.value == "N" ){
        alert("���������� Ȯ�ε��� �ʾ� �ش� �޴��� �̵��ϰڽ��ϴ�.");
        fn_url("/t04/t41/T41_08_00.jsp");

    //�߹�ŷ �̿��� ��û�ߴ��� ���ߴ��� Ȯ��         
    }else if( rtr_str.S_AIFW.value == "0" || rtr_str.S_AIFW.value == null || rtr_str.S_AIFW.value == "" ){
        alert("�߹�ŷ �̿��û�� ���� �����ż� �ش� �޴��� �̵��ϰڽ��ϴ�.");
        fn_url("/t04/t41/T41_04_00.jsp");
    } else {
        document.getElementById("divBmokInfo").style.display = "none";
        resetAllControl();
        
        uf_proce_display_on();  //�ε���
          
          setTimeout(
                  function(){
                      setT12_01_00_0_r1(rtr_str.S_AGRMT_SEQ_NO.value);
                      document.body.style.cursor = "auto";
                      reset_submit();
                      }, 1000);   // 1���� ���� 1000 = 1��s
                        
    }
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


function resetAllControl(flag){
    var frm = document.frm;
    
    if( typeof flag == 'undefined' ) flag = true;
    
    if( flag != false ){
        // �迭 �ʱ�ȭ
        SelDtlsItxpCd           = new Array();
        SelDtlsItxpNm           = new Array();
        SelSubDtlsItxpCd        = new Array();
        SelSubDtlsItxpNm        = new Array();
    
        BzExpSprnExctnYn    = "N";
        SelShrSorcSn        = new Array();
        SelShrSorcNm        = new Array();
    }
    
    // �� �Է� �ؽ�Ʈ ��Ʈ�� �ʱ�ȭ
    $("#frm:input").each(function(){
        $(this).val("");
    });

    var ItxpObj = document.getElementById("SelSubDtlsItxpCd");
    ItxpObj.options.length = 1;
    ItxpObj.options[0] = new Option("������ ����",'',true,false);
        
    // ������̺�(���) �ʱ�ȭ
    fnItxpInit();
    
    document.getElementById('etcimpex_0').style.display     = "none";
    
    // �ŷ�ó ���� �ʱ�ȭ
    document.getElementById("d_SplrReprNm_0").innerHTML     = "";
    document.getElementById("d_SplrBzRegNo_0").innerHTML        = "";
    document.getElementById("d_SplrTpopNm_0").innerHTML     = "";
    document.getElementById("d_SplrTpbzNm_0").innerHTML     = "";
    document.getElementById("d_SplrAdr_0").innerHTML            = "";

    // ���౸�� �ʱ�ȭ
    exctn_ExctnStgDv_v2("1",'1', 
                        document.rtr_str_form.S_RCH_ACC_BNK_CD.value, 
                        document.rtr_str_form.S_RCH_ACC_BNK_NM.value, 
                        document.rtr_str_form.S_RCH_ACC_NO.value, 
                        '',
                        '',
                        document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value,0);
    

    
    // ������̺�(�ϴ�) �ʱ�ȭ
    document.getElementById("evdc_splyAmtTxt").innerHTML    = "0";
    document.getElementById("evdc_vatAmtTxt").innerHTML     = "0";
    document.getElementById("tot_TrnsAmt").innerHTML        = "0";
    document.getElementById("tot_splyAmt").innerHTML        = "0";
    document.getElementById("tot_vatAmt").innerHTML         = "0";
    
    // ������ü ��û�׸� �ʱ�ȭ
    document.getElementById("txt_trnsAmt_0").innerHTML      = "";
    document.getElementById("txt_splyAmt_0").innerHTML      = "";
    document.getElementById("txt_vatAmt_0").innerHTML       = "";
    
    document.getElementById("idFvrtAcct_0").style.display       = "inline";
    document.getElementById("idowacBtn_0").style.display            = "inline";
    document.getElementById("idExctnStgDv_td1_0").style.display     = "inline";
    document.getElementById("idExctnStgDv_td2_0").style.display     = "none";
    document.getElementById("idExctnStgDv_td2_0").innerHTML     =   "";
    document.getElementById("RcvBnkCd_0").value                 =   "";
    document.getElementById("RcvAcctNo_0").value                =   "";
    document.getElementById("OwacNm_0").value                   =   "";
    document.getElementById("RcvBnkCd_0").disabled              = false;
    document.getElementById("RcvAcctNo_0").disabled             = false;
    document.getElementById("OwacNm_0").disabled                = false;
    
    
    document.getElementById("ExctnStgDv1_0").disabled           = false;
    document.getElementById("ExctnStgDv2_0").disabled           = false;
    document.getElementById("kind_TrnsRchAcc_0").style.display  = "";
    document.getElementById("kind_TrnsRchAcc_0").disabled           = false;
    
    
    //�����Ȯ�� �ʱ�ȭ
    $('#etc_ChkBzRegNo_0'   ).show();
    $('#ChkBzRegNo_0'       ).show();
    $('#SplrAuth_0'         ).val('0');
    
    // �� �ʱ�ȭ
    frm.action = "";
    frm.target = "";
    
    //�������� �ʱ�ȭ
    $("#EdmsDocId").val("");
    $("#FileNm").val("");
    jQuery("#ItxpFileEvdc").html('<img src="/bt/bt_regist2off.gif" alt="�������ϵ��">');
    
    // 2011.12.12 �µ��� START
    // ī�̽�Ʈ �������� ���� ����밳���ڵ带 ������ �� ������ ����
    if("00006277" == document.rtr_str_form.S_AGRMT_INST_ID.value){
        document.getElementById("AchvInstIndv1Cd_0").readOnly               = true;
        document.getElementById("AchvInstIndv1Cd_0").style.backgroundColor  = "#d2d2d2";
    }
    // 2011.12.12 �µ��� END
}


function setDefaultKindTrnsRchAcc(idx){
    // ������� ����Ʈ�� ����
    document.getElementById('kind_TrnsRchAcc_'+idx).options[0].selected = true;
}
/******************************************************************
 * set_evdc_amt      ��� ù��° row�� �����ݾ� ����
 * @param
 * @return
 * page���� customizing �Ǿ���
******************************************************************/
function set_evdc_amt(){
    var frm =   document.frm;
    
}

//��� ���̺� �޺�
var SelDtlsItxpCd = new Array();
var SelDtlsItxpNm = new Array();
var SelSubDtlsItxpCd = new Array();
var SelSubDtlsItxpNm = new Array();

function mkDtlsItxpCd(tObjIdx){
    var tObj = document.all["SelDtlsItxpCd"];
    var opt_name = "���� ����";

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
* SelDtlsItxpCdOnChange      ���񺯰�
* @param
* @return
******************************************************************/
function SelDtlsItxpCdOnChange(obj){

    if(typeof obj=="undefined" || obj==""){
        obj = document.all["SelDtlsItxpCd"];
    }
    
    var k = 0;
    var tObj = document.all["SelSubDtlsItxpCd"];
    var opt_name = "������ ����";
    
    // ��������/�ΰǺ񳻿� ���� ó��
    if(!fnDelete(obj)) return;
    
    // ����/������ ���� ó��
    if(obj.selectedIndex !=0 ){
        for(var j = 0;j < SelSubDtlsItxpCd.length; j++){
            if( obj.options[obj.selectedIndex].value == SelDtlsItxpCd[j]){
                k = j;
                break;
            }
        }
        
        tObj.options.length = SelSubDtlsItxpCd[k].length+1;
        tObj.options[0] = new Option(opt_name,'');

        for(var i=0; i < SelSubDtlsItxpCd[k].length; i++){
            tObj.options[i+1] = new Option(SelSubDtlsItxpNm[k][i], SelSubDtlsItxpCd[k][i]);
        }
    
        fnAbleItxpAdtn(obj,'1');
        
    }else{
        $('#divBmokInfo').hide();
        tObj.options.length = 1;
        tObj.options[0] = new Option(opt_name,'');

    }
}

/******************************************************************
 * SelDtlsItxpCdOnChange         �����񺯰�� �����Լ�
 * @param
 * @return
******************************************************************/
function SelDtlsItxpCdOnChange2(obj){
    var frm = document.frm;
    var frm_key = document.rtr_str_form;
    
    if(document.frm.SelSubDtlsItxpCd.value == "B0206006"){
        var todate = new Date().getDate();
        var cookieValue = getCookie("cookie_P01_31_00.jsp");

        if(cookieValue==todate) return false;

        var frm = document.frm;
        var url = "/pop/T01_31_00.jsp";

        uf_frmNewWinNs(frm, url, 'NEW_ITXP_GUIDE', 800, 700, 'no');
        removeTempAttribute(frm);
    }
    
    uf_setIconEtcImpl();

    //��Ÿ�������� ó��
    uf_etcImplExc(obj);
    
    //���ΰŷ� ����
    setSplrPrsn(frm,frm_key);
    
    //�ΰǺ� ����ý� �ΰǺ����ް��� ����
    PsnlItxpAcctNoSet();
    
    document.getElementById("divBmokInfo").style.display = "block";
    
}
/******************************************************************
* PsnlItxpAcctNoSet      �ΰǺ����ް��¼���(��,�ܺ��ΰǺ�/��������)
* @param
* @return
******************************************************************/
function PsnlItxpAcctNoSet(idx){
    
    var frm_key =   document.rtr_str_form;
    var frm     =   document.frm;
    var ExctnStgDv = "";
    
    if( typeof idx == 'undefined' ){ idx = null; }
    
    _SelDtlsItxpCd = frm.SelSubDtlsItxpCd.value;
    
    for(var ridx =0; ridx < document.forms['frm'].elements['itxp_cnt'].value; ridx++){
    
        if( null != idx && ridx != idx ){
            continue;
        }
        
        //ī��� �ΰǺ� ����� �ź�
        //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
        if( document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y" && "C" == $('#EvmaGb_'+ridx).val() ){      
            if('Y' == itxpPsnlYn(_SelDtlsItxpCd)){
                alert("ī��� �ΰǺ� ����� ��� �� �� �����ϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
                frm.SelSubDtlsItxpCd.selectedIndex = 0;
                return;
            }
        }
        
        var ExctnStgDv = (true==$('#ExctnStgDv1_'+ridx).attr('checked')) ? "1" : "2";
        
        if( ExctnStgDv == "1" && "C" != $('#EvmaGb_'+ridx).val() ){ 
            
            if('Y' == itxpPsnlYn(_SelDtlsItxpCd)){  //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
                    //ī�������� �ƴϰ� �ΰǺ����ް��¸� ����ϴ� ����� ��쿡�� �ΰǺ� ���ް��·� ����.
                if(document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y"){
                          
                    var strVal  =   "003|20000000000|��RCMS";
                    
                    arrVal = strVal.split("|");

                    document.getElementById("idFvrtAcct_"+ridx).style.display           = "none";
                    document.getElementById("idowacBtn_"+ridx).style.display            = "none";
                    document.getElementById("idExctnStgDv_td1_"+ridx).style.display     = "none";
                    document.getElementById("idExctnStgDv_td2_"+ridx).style.display     = "inline";
                    document.getElementById("idExctnStgDv_td2_"+ridx).innerHTML         = "�ΰǺ����ް��� �����";
                    document.getElementById("RcvBnkCd_"+ridx).value                     = arrVal[0]=='null'?'':arrVal[0];
                    document.getElementById("RcvAcctNo_"+ridx).value                    = arrVal[1]=='null'?'':arrVal[1];
                    document.getElementById("OwacNm_"+ridx).value                       = arrVal[2]=='null'?'':arrVal[2];
                    document.getElementById("RcvBnkCd_"+ridx).disabled                  = true;
                    document.getElementById("RcvAcctNo_"+ridx).disabled                 = true;
                    document.getElementById("OwacNm_"+ridx).disabled                    = true;
                    document.getElementById("OwacNm_"+ridx).readonly                    = 'readonly';
                    
                    if(document.getElementById('RcvBnkCd_'+ridx).options[document.getElementById('RcvBnkCd_'+ridx).options.selectedIndex].value == frm_key.S_RCH_ACC_BNK_CD.value
                    && jQuery('#RcvAcctNo_'+ridx).val() == frm_key.S_RCH_ACC_NO.value){
                        jQuery('#ExctnStgDv1_'+ridx).attr('checked',false); //Ÿ������ü
                        jQuery('#ExctnStgDv2_'+ridx).attr('checked',true);  //�ڰ�����ü
                    }else{
                        jQuery('#ExctnStgDv1_'+ridx).attr('checked',true); //Ÿ������ü
                        jQuery('#ExctnStgDv2_'+ridx).attr('checked',false);  //�ڰ�����ü
                    }
                }
            }else{
                setEnabledBnkAcctInfo(ridx);
            }
        }
    
    }//END of For
}


//������̺� �ʱ�ȭ
function fnItxpInit(){
    
    var tbody = jQuery("#ItxpList > tbody");
    var rows = tbody.find(">tr").length/3;
    
    var newRow1 = tbody.find(">tr").eq(-3).clone(true);
    var newRow2 = tbody.find(">tr").eq(-2).clone(true);
    var newRow3 = tbody.find(">tr:last").clone(true);

    jQuery(tbody.find(">tr")).each(function(idx){
            jQuery(this).remove();
    });
    
    fnControlInit([newRow1,newRow2,newRow3], 0);
    
    //newRow1.addClass('blue_line').find('.btn-opendtl').css('visibility','visible');
    newRow1.addClass('blue_line').find('.btn-opendtl > img').attr('src','//bt/bt_grid1.gif').attr('alt','�߰��Է�');
    newRow1.appendTo(tbody)
    newRow2.attr('id','SplyAmtDfamtRsn_tr_0');
    newRow2.hide().appendTo(tbody);
    newRow3.hide().appendTo(tbody);
    
    var borderStyle = "";
    newRow1.find(":input[type=text]").focus(function(){
        borderStyle = $(this).css('border');
        $(this).css('border','1px solid #464646');  
    }).blur(function(){
        $(this).css('border',borderStyle);
    });
    newRow2.find(":input[type=text]").focus(function(){
        borderStyle = $(this).css('border');
        $(this).css('border','1px solid #464646');  
    }).blur(function(){
        $(this).css('border',borderStyle);
    });
    newRow3.find(":input[type=text]").focus(function(){
        borderStyle = $(this).css('border');
        $(this).css('border','1px solid #464646');  
    }).blur(function(){
        $(this).css('border',borderStyle);
    });

    jQuery("#SelDtlsItxpCd").val("");
    jQuery("#SelSubDtlsItxpCd").val("");
    jQuery("#itxp_cnt").val("1");
    
    
}

//���ϰ� ���� or �Է�
function fnItxpSetting(idx, dtlsIdxpCd, subDtlsItxpCd, item, useAmt, splyAmt, vatAmt, fileEvdc, adtnInfo){
    jQuery("#SelDtlsItxpCd").val(dtlsIdxpCd);

    SelDtlsItxpCdOnChange("",idx);
    jQuery("#SelSubDtlsItxpCd").val(subDtlsItxpCd);
    jQuery("#ItxpItem_"+idx).val(item);
    jQuery("#ItxpUseAmt_"+idx).val(toMoney(useAmt));
    jQuery("#rchrAmt_"+idx).val(toMoney(useAmt));
    jQuery("#ItxpSplyAmt_"+idx).val(toMoney(splyAmt));
    jQuery("#ItxpVatAmt_"+idx).val(toMoney(vatAmt));
    jQuery("#ItxpFileEvdcVal_"+idx).text(fileEvdc);
    jQuery("#ItxpAdtnInfoVal_"+idx).text(adtnInfo);
    
    if(adtnInfo!=""){
        jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_nonregist.gif" alt="�̵��">');
    }
}


/******************************************************************
 * uf_itxp_reset         ����� �ʱ�ȭ
 * @param
 * @return
******************************************************************/
function uf_itxp_reset(){
    if( confirm('����Ͻ� ������ ��� �ʱ�ȭ �˴ϴ�. ��� �����Ͻðڽ��ϱ�?') ){
        resetAllControl(false);
        document.forms['frm'].reset();
    }
    return false;
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
    
    if("" != $("#EdmsDocId").val()){
        mode = "update";
        edmsDocId = $("#EdmsDocId").val();
    }

    document.frm.doc_dv.value="1";
    uf_edmsUploadFile(mode,tObjIdx, edmsDocId);
    
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
    if(!chk_frm_value("SelDtlsItxpCd")) return;
    //��������üũ
    if(!chk_frm_value("SelSubDtlsItxpCd"))  return;

    usrId               = "SMTEST";
    hmpwRoleDv          = frm_key.S_HMPW_ROLE_DV.value;
    evdcDv              = "E";//��Ƽ ������ �����Ͽ� ��Ÿ�� Fixed

    useDt           = "2013" + "10" + "29";//��Ƽ ���������� �����Ͽ� ������ڷ� Fixed
    
    pmsId               = frm_key.S_PMS_ID.value;
    sbjtId              = frm_key.S_SBJT_ID.value;
    agrmtSeqNo          = frm_key.S_AGRMT_SEQ_NO.value;
    agrmtInstId         = frm_key.S_AGRMT_INST_ID.value;
    
    
    itxpCd          = trim(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value).substring(0,4)+"0";
    DtlsItxpCd      = frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
    SubDtlsItxpCd   = frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;

    if("create"==mode){
        //2011 �ű� EDMS ����Ű ����
        //����Ű����( PMSID + ����ID + �����Ϸù�ȣ + ������ + ����� + �������� + ��� + ���� + ������)
        dockey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
        frm.docKey.value    =   dockey;

        // EDMS÷�����ϵ��ȣ��
        //edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "http://61.41.119.163/rcmsConnect.do");
        edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
        
    }else{
        // EDMS÷�����ϵ��ȣ��
        //edmsUploadFileNew("frm", mode, edmsDocId, usrId,hmpwRoleDv, "http://61.41.119.163/rcmsConnect.do");
        edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
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
            $("#EdmsDocId").val(docKey);
            $("#FileNm").val(docName);
            jQuery("#ItxpFileEvdc").html('<img src="/bt/bt_regist2.gif" alt="�������ϵ��">');
        }
    }
}



function numcheck(num){
    var flag=true;
    for(var i =0 ; i<num.length ; i++){
        c = num.charAt(i);
        if(!(c>='0' && c<='9')) {
            flag=false;
            break;
        }
 }
    return flag;
}
       
       
function checkBizID(bizID) {
 
    var re = /-/g;
    var bizID = bizID.replace(re,'');
    var checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1);
    var tmpBizID, i, chkSum=0, c2, remander;

    if( '8888888888' == bizID ) return true;//�ؿܱ��
    
    for (i=0; i<=7; i++){
     chkSum += checkID[i] * bizID.charAt(i);
    }

    c2 = "0" + (checkID[8] * bizID.charAt(8));
    c2 = c2.substring(c2.length - 2, c2.length);

    chkSum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1));

    remander = (10 - (chkSum % 10)) % 10 ;

    if (Math.floor(bizID.charAt(9)) == remander){
     return true; // OK!
    }
    return false;
}


/******************************************************************
 * chk_save     ������ ��ȿ�� üũ
 * @param
 * @return
******************************************************************/
function chk_save(PlanPrgrSt){
    var frm_key =   document.rtr_str_form;
    var frm     =   document.forms['frm'];
    var param,target_url;

    
    if( $('#SelDtlsItxpCd').val() == "" ){
        alert('������ �����ϼ���');
        $('#SelDtlsItxpCd').focus();
        return false;
    }

    if( $('#SelSubDtlsItxpCd').val() == "" ){
        alert('�������� �����ϼ���');
        $('#SelSubDtlsItxpCd').focus();
        return false;
    }
    


    for(i=0; i < document.forms['frm'].elements['itxp_cnt'].value; i++){

        if( $('#EvmaGb_'+i).val() == "" ){
            alert('���������� �����ϼ���');
            $('#EvmaGb_'+i).focus();
            return false;
        }
        
        //ī��� �ΰǺ� ����� �ź�
        //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
        if( document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y" && "C" == $('#EvmaGb_'+i).val() ){     
            if('Y' == itxpPsnlYn(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value)){
                alert("ī��� �ΰǺ� ����� ��� �� �� �����ϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
                return false;
            }
        }
        
        //-----------------------------------
        //  �ŷ�ó���� ��ȿ�� �˻�
        //-----------------------------------
        if( "E" == $('#EvmaGb_'+i).val() ){
            if(null == $('#etc_SplrCoNm_'+i).val() || "" == $('#etc_SplrCoNm_'+i).val()){
                alert("ȸ����� �Է����ּ���.");
                fnOpenTrFocus($('#etc_SplrCoNm_'+i),i);
                return false;
            }
            if(null == $('#etc_SplrAdr_'+i).val() || "" == $('#etc_SplrAdr_'+i).val()){
                alert("����� �ּҸ� �Է����ּ���.");
                fnOpenTrFocus($('#etc_SplrAdr_'+i),i);
                return false;
            }
            if(null == $('#etc_SplrReprNm_'+i).val() || "" == $('#etc_SplrReprNm_'+i).val()){
                alert("��ǥ�ڸ��� �Է����ּ���.");
                fnOpenTrFocus($('#etc_SplrReprNm_'+i),i);
                return false;
            }

            if(null == $('#etc_SplrBzRegNo_'+i).val() || "" == $('#etc_SplrBzRegNo_'+i).val() ){
                alert("����ڵ�Ϲ�ȣ�� �Է����ּ���.");
                $('#etc_SplrBzRegNo_'+i).focus();
                return false;
            }
            
            //�ǽ�ȯ�� ����ڹ�ȣ üũ ����
            /* 
            if( false == chk_bzregno($('#etc_SplrBzRegNo_'+i).val()) ){
                 alert("����ڵ�Ϲ�ȣ�� Ȯ���� �ֽñ� �ٶ��ϴ�.");
                 $('#etc_SplrBzRegNo_'+i).focus();
                 return false;
            }
             */
        }
        
        if( "Y" == $('#SqbnSplrExctnRsnYn_'+i).val() && "" == $.trim($('#SqbnSplrExctnRsn_'+i).val()) ){
             alert('����� ��������� �Է����ּ���.');
             $('#SplyAmtDfamtRsn_tr_'+i).next().show();
             $('#SqbnSplrExctnRsn_tbl_'+i).show();
             $('#SqbnSplrExctnRsn_'+i).focus();
            return false;
        }

        
        //-----------------------------------
        //  ��������� ��ȿ�� �˻�
        //-----------------------------------
        if(!chk_frm_value("ItxpItem",i))            return false;           // ǰ��
        if(!chk_frm_value("ItxpUseAmt",i))          return false;           // ���ݾ�
        if(!chk_frm_value("ItxpSplyAmt",i))         return false;           // ���ޱݾ�
        if(!chk_frm_value("ItxpVatAmt",i))          return false;           // �ΰ���
        
        // 2011.09.16 �µ��� : �ΰ����� �ִ� ���� �ݾ��� ���ޱݾ��� 50% ������ �� (������ ���� ��������)
        var splyAmt = Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        var vatAmt  = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
        
        if( splyAmt < 0 ){
            alert('���ޱݾ��� 0���� ���� �� �����ϴ�.');
            $("#ItxpSplyAmt_"+i).focus()
            return false;
        }
        if( vatAmt < 0 ){
            alert('�ΰ����ݾ��� 0���� ���� �� �����ϴ�.');
            $("#ItxpVatAmt_"+i).focus();
            return false;
        }
        
        // 2012.04.24 ����� : ���ݾ��� ""�̰ų� 0���� �ƴ� ��쿡�� ��� �����ϵ��� ����.
        var itxpUseAmt = $("#ItxpUseAmt_"+i).val() ;        
        if("0" == itxpUseAmt){
            alert("���ݾ��� 0���� �� �� �����ϴ�.");
            $("#ItxpSplyAmt_"+i).focus() ;
            return false;   
        }
        
        //2012.11.26 kjs ���ڼ��ݰ�꼭�� ��� ���ޱݾװ� ���ݾ��� �ٸ���� ���ޱݾ����� ���� ���� üũ
        if( "T" == $('#EvmaGb_'+i).val() ){
            if( parseInt($('#T_Evdc_SplyAmt_' + i).val(),10) > splyAmt && "" == document.forms['frm'].elements['SplyAmtDfamtRsn_'+i].value ){
                alert("���ޱݾ� ���׻����� �ۼ����ּ���");
                document.forms['frm'].elements['SplyAmtDfamtRsn_'+i].focus();
                return false;
            }
        }   
        
        
        //-----------------------------------
        //  �񿵸������ ������ ����� �������� �ΰǺ񳻿���Ͼ���
        //  �׿ܰ�� ���������� �ΰǺ񳻿� ���üũ��
        //-----------------------------------
        
        if(!(((frm_key.S_NPRF_INST_YN.value == "Y") && (chk_itxpExist2('B0301001'))) 
                || ((chk_itxpExist2('B0206001') && "E" != $('#EvmaGb_'+i).val())
                || (chk_itxpExist2('B0206002') && "E" != $('#EvmaGb_'+i).val()) 
                || (chk_itxpExist2('B0206003') && "E" != $('#EvmaGb_'+i).val())
                || (chk_itxpExist2('B0206004') && "E" != $('#EvmaGb_'+i).val())
                || (chk_itxpExist2('B0206005') && "E" != $('#EvmaGb_'+i).val())
                || (chk_itxpExist2('B0206006'))))){

            //-----------------------------------
            //  �������� üũ
            //-----------------------------------
            if( null == frm.EdmsDocId.value || ""==frm.EdmsDocId.value){
                    alert("���������� ������ּ���.");
                    return false;  
            }
            //-----------------------------------
            //  �ΰǺ񳻿� üũ(�ΰǺ�,���������ΰ�츸 ����ʼ�)
            //-----------------------------------
            if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                if( frm.rchrInfo.length > 1){
                    for( j = 0 ; j < frm.rchrInfo.length ; j++ ){
                        if(null==frm.rchrInfo[j].value || ""==frm.rchrInfo[j].value){
                            alert("�ΰǺ񳻿��� ������ּ���.");
                            return false;
                        }else{
                            if(frm.rchrAmt[j].value.replace(/,/gi,"") != frm.ItxpUseAmt[j].value.replace(/,/gi,"")){
                                alert("���ݾ��� �հ�� ��ϵ� �ΰǺ񳻿��� �ݾװ� ��ġ���� �ʽ��ϴ�.");
                                return false;
                            }
                        }
                    }
                }else{
                    if( null==frm.rchrInfo.value || ""==frm.rchrInfo.value ){
                        alert("�ΰǺ񳻿��� ������ּ���.");
                        return false;
                    }else{
                        if( frm.rchrAmt.value.replace(/,/gi,"") != frm.ItxpUseAmt.value.replace(/,/gi,"") ){
                            alert("���ݾ��� �հ�� ��ϵ� �ΰǺ񳻿��� �ݾװ� ��ġ���� �ʽ��ϴ�.");
                            return false;
                        }
                    }
                }
            }
        }
        
        
        if( $('#SplrAuth_'+i).val() != '1' && 'C' != $('#EvmaGb_'+i).val() ){
            alert('����ڵ�Ϲ�ȣȮ���� �����Ͻñ� �ٶ��ϴ�.');
            return false;   
        }
        
        //-----------------------------------
        //  ������ü ��û�׸� ��ȿ�� �˻�
        //-----------------------------------
        if("1"==PlanPrgrSt){
    
            if( !("C" == $('#EvmaGb_'+i).val()) ){
                var exctnStgDv = (true == $('#ExctnStgDv1_'+i).attr('checked') ) ? "1" : "2";
                
                // Ÿ������ ���
                if("1"==exctnStgDv){
                    //-----------------------------------
                    //  �������� ���� ������ ��ȿ���˻�
                    //-----------------------------------
                    var msg = chk_Itxp_ExctnStgDv(frm, $('#EvmaGb_'+i).val() , '2');
                    if(!(""==msg)){
                        alert(msg);
                        return false;
                    }   
                }else{
                    //-----------------------------------
                    //  �����������п� ���� ������ ��ȿ���˻�
                    //-----------------------------------
                    var msg = chk_Itxp_kindTrnsRchAcc(frm, $('#kind_TrnsRchAcc_'+i).val(), frm_key.S_NPRF_INST_YN.value , '1');
                    if(!(""==msg)){
                        alert(msg);
                        return false;
                    }
                }   
            }
            
            //ī��鼭 �������ϰ�츸 üũ��������
            if( !(("C"== $('#EvmaGb_'+i).val() ) && ("1" == frm.InstCrdSetlMeth.value))){
                if( $('#OwacNm_'+i).val() == "" ){
                    alert("��������ȸ�� ���ֽʽÿ�.");
                    fnOpenTrFocus(document.getElementById('OwacNm+'+i),i);
                    return false;
                }   
            
                //-----------------------------------
                //  ������ü ��û�׸� ��ȿ�� �˻�
                //-----------------------------------
                if(""==document.getElementById('RcvBnkCd_'+i).options[document.getElementById('RcvBnkCd_'+i).options.selectedIndex].value){
                    alert("�ʼ��׸��� �ݵ�� �����ϼž� �մϴ�.\r\n\r\n* �ʼ����� �׸� : �Աݰ���(����)");
                    fnOpenTrFocus(document.getElementById('RcvBnkCd_'+i),i);
                    return false;
                }
                //if(! validate_frm(frm) ) return false; // ��ȿ��ó��
            }   
                
            if( !("C" == $('#EvmaGb_'+i).val()) ){
                //-----------------------------------
                //  Ÿ������ü�� �Աݰ��°� ������������� �˻�
                //-----------------------------------
                if( true                                                    ==  $('#ExctnStgDv1_'+i).attr('checked')        &&
                    document.getElementById('RcvBnkCd_'+i).options[document.getElementById('RcvBnkCd_'+i).options.selectedIndex].value  ==  frm_key.S_RCH_ACC_BNK_CD.value          &&
                    document.getElementById('RcvAcctNo_'+i).value           ==  frm_key.S_RCH_ACC_NO.value){
                    alert("�Աݰ��°� ��������¿� �����մϴ�.");
                    return false;
                }
                
            }
            
            //--------------------------------------------------
            //  ��Ÿ����&&�ڰ�����ü�� ��� �����ݾװ� ��ġ���� üũ����
            //--------------------------------------------------
            if(!( ( "E" == $('#EvmaGb_'+i).val())&&(true==$('#ExctnStgDv2_'+i).attr('checked') ))){
                //-----------------------------------
                //  �ݾ� üũ
                //-----------------------------------
                var msg = chk_itxp_evdc_amt();
                if(!(""==msg)){  alert(msg);return false;   }       
            }
            
        }

    }//End of for
    
    return true;
}

/******************************************************************
 * uf_itxp_save     ��ȹ/����/�������
 * @param
 * @return
******************************************************************/
function uf_itxp_save(PlanPrgrSt){
    var frm_key =   document.rtr_str_form;
    var frm     =   document.frm;
    var param,target_url;

    _PlanPrgrSt = PlanPrgrSt;
    //��ȿ�� �˻�
    if(!chk_save(PlanPrgrSt)) return false;

    var chkAcc = false;
    $('input[name="OwacNm"]').each(function(){
        if( "" != $(this).val() ){
            chkAcc = true;
            return false;
        }
    });
    $('input[name="PaymUsag"]').each(function(){
        if( "" != $(this).val() ){
            chkAcc = true;
            return false;
        }
    });
    $('input[name="TelNo"]').each(function(){
        if( "" != $(this).val() ){
            chkAcc = true;
            return false;
        }
    });
    
    if( "0" == PlanPrgrSt && true == chkAcc ){
        alert('������ü ��û�׸��� ������� �ʽ��ϴ�.');
    }

    var bz_pass_cnt = 0;
    var param = "";
    for(i=0; i < document.forms['frm'].elements['itxp_cnt'].value; i++){
        
        _evdc_dv = $('#EvmaGb_'+i).val();
        param = "";
        if ('E' == _evdc_dv) {
            bzRegNo = $('#etc_SplrBzRegNo_'+i).val();
            bzRegNm = $('#etc_SplrCoNm_'+i).val();
        } else if ('C' == _evdc_dv) {
            bzRegNo = $('#C_MestBzNo_'+i).val();
            bzRegNm = $('#C_MestNm_'+i).val();
        } else if ('T' == _evdc_dv) {
            bzRegNo = $('#T_SplrBzRegNo_'+i).val();
            bzRegNm = $('#T_SplpCoNm_'+i).val();
        }
        
        if( bzRegNo == "0000000000" || bzRegNo == "8888888888" ){ //���ΰŷ� �Ǵ� �ؿܰŷ�ó �ΰ�� �������ȸ ����
            bz_pass_cnt++;
        }else{
            param += "&SplrBzRegNo=" + bzRegNo;
            param += "&SplrCoNm=" + bzRegNm;
            $('#SplrCoNm_'+i).val(bzRegNm);
            get2post(frm, param);
        }
    }

    if( document.forms['frm'].elements['itxp_cnt'].value == bz_pass_cnt ){
        fn_itxp_save();
    }else{
        uf_proce_display_on();  //�ε���
        
        setTimeout(
                function(){
                        try{   
                            for(var i=0; i<document.frm.itxp_cnt.value; i++){
                                
                                if( "E" == $('#EvmaGb_'+i,document).val() && bzRegNo == $('#etc_SplrBzRegNo_'+i,document).val() ){
                                    eval('document.frm.SplrBzRegSt_'+i+'.value      = ""');     //����ڵ�ϻ���
                                    eval('document.frm.SplrTaxtTypDv_'+i+'.value    = ""');     //����ڰ�������
                                    break;
                                }else if( "T" == $('#EvmaGb_'+i,document).val() && bzRegNo == $('#T_SplrBzRegNo_'+i,document).val() ){
                                    eval('document.frm.SplrBzRegSt_'+i+'.value      = ""');     //����ڵ�ϻ���
                                    eval('document.frm.SplrTaxtTypDv_'+i+'.value    = ""');   //����ڰ�������
                                    break;
                                }else if( "C" == $('#EvmaGb_'+i,document).val() && bzRegNo == $('#C_MestBzNo_'+i,document).val() ){
                                    eval('document.frm.SplrBzRegSt_'+i+'.value      = ""');     //����ڵ�ϻ���
                                    eval('document.frm.SplrTaxtTypDv_'+i+'.value    = ""');   //����ڰ�������
                                    break;
                                }

                            }
                        }finally{
                            reset_submit();
                            fn_itxp_save();
                        }
                    
                    }, 1000);   // 1���� ���� 1000 = 1��s
                    
    }
    return false;
}



function fn_itxp_save(){
    var frm_key =   document.rtr_str_form;
    var frm     =   document.frm;
    var param,target_url;
    
    var confirm_msg = "";
    

    for(i=0; i < document.forms['frm'].elements['itxp_cnt'].value; i++){
        
        _evdc_dv = $('#EvmaGb_'+i).val();

        if ('E' == _evdc_dv) {
            splrCoNm = $('#etc_SplrCoNm_'+i).val();
        } else if ('C' == _evdc_dv) {
            splrCoNm = $('#C_MestNm_'+i).val();
        } else if ('T' == _evdc_dv) {
            splrCoNm = $('#T_SplpCoNm_'+i).val();
        }
        
        if( 'A04009' == $('#SplrBzRegSt_'+i).val() ){ //�޾�
            confirm_msg += splrCoNm + "��(��) ����û���� �޾����� �Ű�� �ŷ�ó �Դϴ�.\n\n";
        }else if( 'A04010' == $('#SplrBzRegSt_'+i).val() ){ //���
            confirm_msg += splrCoNm + "��(��) ����û���� ������� �Ű�� �ŷ�ó �Դϴ�.\n\n";
        }

    }
    
    if( confirm_msg != "" ){
        confirm_msg += "��������Ͻðڽ��ϱ�?";
    }else{
        confirm_msg = "����Ͻðڽ��ϱ�?";
    }
    
    if (!confirm(confirm_msg)) {
        return;
    }
    
    
    param =     "AGRMT_SEQ_NO="+frm_key.S_AGRMT_SEQ_NO.value;
    param +=    "&AGRMT_INST_ID="+frm_key.S_AGRMT_INST_ID.value;
    param +=    "&PMS_ID="+frm_key.S_PMS_ID.value;
    param +=    "&SBJT_ID="+frm_key.S_SBJT_ID.value;
    param +=    "&BZ_CLAS_CD="+frm_key.S_BZ_CLAS_CD.value;
    param +=    "&CPCG_INST_BZPR_NO="+frm_key.S_CPCG_INST_BZPR_NO.value;
    param +=    "&AGRMT_INST_BZPR_NO="+frm_key.S_AGRMT_INST_BZPR_NO.value;
    //���񰪴��
    param   +=  "&DTLS_ITXP_CD="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
    param   +=  "&DTLS_ITXP_NM="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].text;

    //�����񰪴��
    param   +=  "&SUB_DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
    param   +=  "&SUB_DTLS_ITXP_NM="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].text;
    
    param += "&PLAN_PRGR_ST="+ _PlanPrgrSt;
    param += "&CRD_SETL_METH="+frm.InstCrdSetlMeth.value;
    param += "&DEV_STR_DT=" + frm_key.S_DEV_STR_DT.value;
    
    get2post(frm, param);
    
     
    uf_proce_display_on();  //�ε���

    setTimeout(
            function(){
                reset_submit();
                resetAllControl(false);
                
                alert("��ϵǾ����ϴ�.");
                
                }, 1000);   // 1���� ���� 1000 = 1��s
    
    removeTempAttribute(frm);
}


</script>
<script type="text/javascript" src="/js/pt_itxp_common.js"></script>

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
    boolean beSearchBtn         =   true;   //��ȸ��ư ��������
    String SSbjtInqDvCd        = "F";      //������������
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->
    
    
    

      <div class="cb b10"></div>
      <div class="t10"><img src="/images/pefo/u12_01_00_img.gif" alt="���������� ���þȳ� ���̵� �������켱 ��� : ���ڼ��ݰ�꼭, ī��, ��Ÿ ���������� ��������, �׿� ���� �������(����, ���ݾ׵�)�� �Է��մϴ�. ����켱 ��� : ���(����, ������, ����񱸺�)�� ��������, �׿� ���� ��������(���ڼ��ݰ�꼭, ī��, ŰŸ ��)�� �Է��մϴ�."/></div>
      <!-- ���켱��� �׷� start -->
      <form name="frm" id="frm" method="post">
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />    
<!-- ��������  -->
            <input type="hidden" id="EvdcSeqNo"             name="EvdcSeqNo"                value=""     />                 <!-- �����Ϸù�ȣ                    -->
            <input type="hidden" id="dockeyNo"              name="dockeyNo"                 value=""    />                  <!-- ���õ� �������̺�Ű -->
            <input type="hidden" id="doc_dv"                name="doc_dv"                   value=""    />                  <!-- ��������/�ΰǺ񳻿� -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""    />                  <!-- ������EDMS_dockey -->
            <input type="hidden" id="docNo"                 name="docNo"                    value=""    />                  <!-- ���������(������Ͻ�����) -->
            <input type="hidden" id="docName"               name="docName"                  value=""    />                  <!-- ���ϰ����(������ϸ�) -->
            <input type="hidden" id="methodName"            name="methodName"               value=""    />                  <!-- �޼ҵ�� -->    
            <input type="hidden" id="attr98"                name="attr98"                   value=""    />                  <!-- ���ϰ����(������ϸ�) -->
            <input type="hidden" id="attr99"                name="attr99"                   value=""    />                  <!-- ���ϰ����(������ϰ���) -->
            <input type="hidden" id="itxp_cnt"              name="itxp_cnt"                 value="1"   />                  <!-- ����ϰǼ� -->
            <input type="hidden" id="Evdc_SumAmt"           name="Evdc_SumAmt"              value=""    />                  <!--    ���ݾ�           -->
            <input type="hidden" id="Evdc_SplyAmt"          name="Evdc_SplyAmt"             value=""    />                  <!--    ���ޱݾ�(�������ް���)           -->      
            <input type="hidden" id="Evdc_VatAmt"           name="Evdc_VatAmt"              value=""    />                  <!--    �ΰ�����(�����ΰ���ġ����)       -->
            <input type="hidden" id="p_rchrInfo"            name="p_rchrInfo"               value=""    />
            
            <!------------------------------------------------------------>
            <!-----------------     2)ī������ ������              -------------->
            <!------------------------------------------------------------>
            <input type="hidden" id="InstCrdSetlMeth"       name="InstCrdSetlMeth"      value="1"   />          <!--    ī��������               -->
                 
            <!------------------------------------------------------------>
            <!-----------------     ���� ������  END     ------------------>
            <!------------------------------------------------------------>        
            <!-- �������� -->
            <input type="hidden" name="EdmsDocId"       id="EdmsDocId"      value="" /> <!-- ������EDMS_dockey -->
            <input type="hidden" name="FileNm"          id="FileNm"         value="" /> <!-- ���ϰ����(������ϸ�) -->
            <input type="hidden" name="file_Cnt"        id="file_Cnt"       value="" /> <!-- ���ϰ����(������ϰ���) -->

      <div class="t20 b10">
        <div class="tab_line1"><a href="#dummy" onclick="fnEvdcRegTabUrl('/t01/t12/T12_01_00_0.jsp')"><img src="/images/pefo/u12_01_00_tab1.gif" alt="�����켱 ���"/></a><a href="#dummy" onclick="fnEvdcRegTabUrl('/t01/t12/T12_01_00_1.jsp')"><img src="/images/pefo/u12_01_00_tab2on.gif" alt="���켱 ���"/></a></div>
        <div class="tab_box">
          <div class="find_box">
            <fieldset>
            <legend>���켱 ���</legend>
            <table width="680" summary="���켱 ��� �˻�" class="tbl_search">
              <caption>���켱 ��� �˻�</caption>
              <colgroup>
              <col width="10%" />
              <col width="90%" />
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row">�����</th>
                  <td><select title="������" style="width:120px;" id="SelDtlsItxpCd" name="SelDtlsItxpCd"  onchange="SelDtlsItxpCdOnChange(this);" >
                      <option value="">���� ����</option>
                    </select>
                    <select title="������ ����" style="width:130px;" id="SelSubDtlsItxpCd" name="SelSubDtlsItxpCd" onchange="SelDtlsItxpCdOnChange2(this);">
                      <option value="">������ ����</option>
                    </select>
                    <select title="����� ����" style="width:100px;display:none;" id="SelShrSorcSn" name="ShrSorcSn">
                      <option value="">����� �̻��</option>
                    </select>
                    <a href="#dummy" id="ItxpFileEvdc" class="itxpFileEvdcVal" onclick="fnFileEvdc(this);"><img src="/bt/bt_regist2off.gif" alt="�������Ϲ̵��"/></a>
                    <a href="#dummy" onclick="uf_ItxpLimDtl();"><img type="image" src="/bt/bt_guide1.gif" alt="��񺰻���ѵ�"/></a>
                  </td>
                </tr>
              </tbody>
            </table>
            </fieldset>
          </div>
          <div class="guide_bu">�񿵸������ ��� ������ ����� ������������ ����� �����մϴ�.</div>
          
          <!--  ����� ���� -->
          <div id="divBmokInfo" style="display:none;">
          
          <h3>�����������</h3>
          <div class="ar">
            <a href="#dummy" onclick="uf_frmNewWinNs(document.frm, '/pop/T01_12_30.jsp', 'GUIDE_LINE', '800', '850');"><img src="/bt/bt_guide2.gif" alt="���� Guideline"/></a>
            <a href="#dummy" onclick="fnAddRow();"><img src="/bt/bt_plus.gif" alt="���߰�"/></a>
            <a href="#dummy" onclick="fnRemove();"><img src="/bt/bt_minus.gif" alt="�����"/></a>
          </div>
          <div class="t05 b10">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����������� �󼼳��� ǥ" class="tbl_type08" id="ItxpList">
              <caption>����������� �󼼳��� ǥ</caption>
              <colgroup>
              <col width="5%" />
              <col width="18%" />
              <col width="18%" />
              <col width="17%" />
              <col width="16%" />
              <col width="13%" />
              <col width="5%" />
              <col width="8%" />
              </colgroup>
              <thead>
                <tr>
                  <th scope="col"><label for="chck">����</label></th>
                  <th scope="col">��������</th>
                  <th scope="col"><label for="part">ǰ��</label></th>
                  <th scope="col"><label for="usemoney">���ݾ�</label></th>
                  <th scope="col"><label for="suppmomey">���ޱݾ�</label></th>
                  <th scope="col"><label for="vat">�ΰ���</label></th>
                  <th scope="col" class="cellItxpAdtnInfo" style="white-space: nowrap;">�ΰǺ�<br />����</th>
                  <th scope="col">&nbsp;</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="ac"><input type="checkbox" name="ItxpChk" id="ItxpChk_0" value="0" /></td>                
                  <td class="ac"><select name='evma_gb'  id='EvmaGb_0'  class='' title='��������' onchange='SplrInfo(this);' style='width:98%' ><option value=''>����</option><option value='E' >��Ÿ</option><option value='T' >���ڼ��ݰ�꼭</option><option value='C' >ī��</option></select></td>
                  <td class="ac">
                    <input type="hidden" name="EtcEvdcExcCd" id="EtcEvdcExcCd_0" value="" />
                    <input type="hidden" name="EtcEvdcExcNo" id="EtcEvdcExcNo_0" value="" />
                    <div class="posabs etcimpex" id="etcimpex_0" onclick="uf_etcImplExc(this)"><a href="#dummy"><img src="/bt/bt_etcimpex.gif" /></a></div>
                  <input type="text" name="ItxpItem" id="ItxpItem_0"  title="ǰ��" class="inputl" style="width:100px"/></td>
                  <td class="ac"><input type="text" name="ItxpUseAmt" id="ItxpUseAmt_0"  title="���ݾ�" class="inputl currency" style="width:90px;background-color:#d2d2d2;" value="0" readonly="readonly" onfocus="fnNextFocus(this,'ItxpSplyAmt')" /></td>
                  <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0"  title="���ޱݾ�" class="inputl currency" style="width:90px" maxlength="15" onkeyup="calc_amtSet2(this, false,'1');" onblur="calc_amtSet2(this, false,'1');chk_amtSet(this,1);" value="0"/></td>
                  <td class="ac"><input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0"  title="�ΰ���" class="inputl currency" style="width:65px" maxlength="15" onkeyup="calc_amtSet2(this, false,'1');" onblur="calc_amtSet2(this, false,'1');chk_amtSet(this,1);" value="0"/></td>
                  <td class="ac cellItxpAdtnInfo" style="widht:34px;"><span id="ItxpAdtnInfoVal_0" style="display:none;"></span><a href="#dummy"><span id="ItxpAdtnInfo_0" onclick="fnAdtnInfo(this);chk_amtSet(this,1);"><img src="/bt/bt_nonregist.gif" alt="�̵��"/></span></a>
                            <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- �������������� -->
                            <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- �����������ѱݾ� -->
                  </td>
                  <td class="ac"><a href="#" class="btn-opendtl" style="display:;"><img src="/bt/bt_grid1.gif" alt="�߰��Է�" /></a></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr_0" style="display:none;"  >
                  <td class="sum1" colspan="2"><span class="txt_orb">*</span>���ޱݾ����� ����</td>
                  <td colspan="6" class="dyncols"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn_0" class="inputl" style="width:98%" value="" /></td>
                </tr>                
                <tr style="display:none;">
                  <td colspan="8" class="dyncols">
                     <!-- ���ݰ�꼭/ī�� �ŷ�ó ���� Div ����  -->
                     <input type="hidden" name="SplrAuth" id="SplrAuth_0" value="0" />
                     
                    <input type="hidden" id="SplrBzRegSt_0" name="SplrBzRegSt" value="" />      <!-- ����ڵ�ϻ��� -->
                    <input type="hidden" id="SplrTaxtTypDv_0" name="SplrTaxtTypDv" value="" />  <!-- ����ھ������� -->
                    <input type="hidden" id="SplrCoNm_0" name="SplrCoNm_0" value="" />
                     
                  <div id="divTranInfo_0" style="display:none;">
          <h5 class="fl">�ŷ�ó����</h5>
          <div class="t05 b10">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�ŷ�ó������ ����ڹ�ȣ,��ȣ(���θ�),������ּ� �� ������ ������ ǥ" class="tbl_type09">
              <caption>�ŷ�ó������ ����ڹ�ȣ,��ȣ(���θ�),������ּ� �� ������ ������ ǥ</caption>
              <colgroup>
              <col width="18%" />
              <col width="35%"/>
              <col width="18%" />
              <col width="29%"/>
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row"><label for="company">��ǥ�ڸ�</label></th>
                  <td><span id="d_SplrReprNm_0"> </span></td>
                  <th scope="row"><label for="busmun">����ڵ�Ϲ�ȣ</label></th>
                  <td class="ll"><span id="d_SplrBzRegNo_0"></span> <a href="#dummy" id="ChkBzRegNo_0" class="uf_chkbzregno"><img src="/bt/bt_bzregno.gif" alt="����ڹ�ȣȮ��"/></a></td>
                </tr>
                <tr>
                  <th scope="row"><label for="part">����</label></th>
                  <td><span id="d_SplrTpopNm_0"></span></td>
                  <th scope="row"><label for="part1">����</label></th>
                  <td class="ll"><span id="d_SplrTpbzNm_0"></span></td>
                </tr>
                <tr>
                  <th scope="row"><label for="add">������ּ�</label></th>
                  <td class="ll" colspan="3"><span id="d_SplrAdr_0"></span></td>
                </tr>
              </tbody>
            </table>
          </div>
          
          </div>
                    <!--------------------  ��Ÿ���� ��Ͻ� ǥ��     ------------------------->
                    <div id="divTranInfo_etc_0" style="display:none;">   <!-- �ŷ�ó ���� Div ����  -->
                    <h5 class="fl">�ŷ�ó���� </h5>
                    
                    <div class="fr" >
                    <label style="padding-top:5px;display:inline-block;"><input type="checkbox" value="1" name="etc_SplrPrsn" id="etc_SplrPrsn_0" onclick="uf_tglSplrPrsn(this)" />���ΰŷ�</label>
                    <a href="#"  onclick="uf_popup_etc_dvdc_avl_info();"><img src="/bt/bt_guide9.gif" alt="��Ÿ������ɺ��" class="vc"/></a></div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�ŷ�ó���� �󼼳��� ǥ" class="tbl_type09">
                      <caption>
                      �ŷ�ó���� �󼼳��� ǥ
                      </caption>
                      <colgroup>
                      <col width="18%" />
                      <col width="37%"/>
                      <col width="18%" />
                      <col width="27%"/>
                      </colgroup>
                      <tbody>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrCoNm_0">ȸ���</label></th>
                          <td style="white-space: normal;"><input type="text" name="etc_SplrCoNm" id="etc_SplrCoNm_0"  title="ȸ���" class="inputl" style="width:120px"/>
                            <span id="idBzRegNo_0" style="display:none;"><a href="#dummy" id="aIndex_0" class="uf_popup_bzpr"><img src="/bt/bt_busin.gif" alt="���־��»����"/></a></span></td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrBzRegNo_0">����ڵ�Ϲ�ȣ</label></th>
                          <td class="ll" style="white-space: normal;"><input type="text" name="etc_SplrBzRegNo" id="etc_SplrBzRegNo_0"  title="����ڵ�Ϲ�ȣ" class="inputl" style="width:80px" maxlength="10" />
                          <a href="#" id="etc_ChkBzRegNo_0" class="uf_chkbzregno"><img src="/bt/bt_bzregno.gif" alt="����ڹ�ȣȮ��"/></a>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="etc_SplrTpopNm_0">����</label></th>
                          <td><input type="text" name="etc_SplrTpopNm" id="etc_SplrTpopNm_0"  title="����" class="inputl" style="width:120px"/></td>
                          <th scope="row"><label for="etc_SplrTpbzNm_0">����</label></th>
                          <td class="ll"><input type="text" name="etc_SplrTpbzNm" id="etc_SplrTpbzNm_0"  title="����" class="inputl" style="width:100px"/></td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrAdr_0">������ּ�</label></th>
                          <td><input type="text" name="etc_SplrAdr" id="etc_SplrAdr_0"  title="������ּ�" class="inputl" style="width:210px"/></td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrReprNm_0">��ǥ�ڸ�</label></th>
                          <td class="ll"><input type="text" name="etc_SplrReprNm" id="etc_SplrReprNm_0"  title="��ǥ�ڸ�" class="inputl" style="width:100px"/></td>
                        </tr>
                      </tbody>
                    </table>    
                    </div>
                    </div>
                    
        <div id="SqbnSplrExctnRsn_tbl_0" style="display:none;">
            <input type="hidden" name="SqbnSplrExctnRsnYn" id="SqbnSplrExctnRsnYn_0" value="N"/>
            <input type="hidden" name="RcvNmChkDv" id="RcvNmChkDv_0" value="" />
            <h5 class="fl">����� �������</h5>
            <div class="t05 b10">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="������ŷ�ó �������" class="tbl_type09">
            <caption><span class="txt_orb">*</span> ����� �������</caption>
              <colgroup>
                <col width="18%" />
                <col width="82%"/>
              <tbody>
                <tr>
                  <th scope="row"><label for="SqbnSplrExctnRsn_0">�������</label></th>
                  <td class="ll"><input type="text" name="SqbnSplrExctnRsn" id="SqbnSplrExctnRsn_0" class="inputl" style="width:455px;ime-mode:inactive;" colname="������������" maxlength="200"/></td>
                </tr>
              </tbody>
            </table>
          </div>
          </div>
          
                    <div id="divTranInfoItem_0" style="display:none;">   <!-- ������ü��û�׸� Div ����  -->
                    <h5 class="fl">������ü ��û�׸� </h5>
                    <div class="fr"  id="trnsInfo_0" ><a href="#dummy" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="�ڰ�����ü������"/></a></div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="������ü ��û�׸� �󼼳��� ǥ" class="tbl_type09">
                      <caption>
                      ������ü ��û�׸� �󼼳��� ǥ
                      </caption>
                      <colgroup>
                      <col width="18%" />
                      <col width="37%"/>
                      <col width="18%" />
                      <col width="27%"/>
                      </colgroup>
                      <tbody>
                        <tr id="ExctnStgDv_tr_0" style="display:;">
                          <th scope="row"><span class="txt_orb">*</span> <label for="ExctnStgDv_0">���౸��</label></th>
                          <td colspan="3" class="ll" style="white-space: nowrap;">
                          <div id="idExctnStgDv_td1_0" style="display:block;" >
                            <input type="hidden" name="ExctnStgDv" id="ExctnStgDv_0" value=""  />
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv1_0" value="1" class="radio2"  onclick="exctn_ExctnStgDv_v2(this.value,'1', document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_BNK_NM.value, document.rtr_str_form.S_RCH_ACC_NO.value, '', '', document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);" checked="checked" /><label for="ra1">Ÿ������ü(��������°�����ü)</label> 
                            <span class="l10"></span>
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv2_0" value="2" class="radio2" onclick="exctn_ExctnStgDv_v2(this.value,'1', document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_BNK_NM.value, document.rtr_str_form.S_RCH_ACC_NO.value, document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_NO.value,document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);"/><label for="ra2">�ڰ�����ü(�����������ü)</label> 
                            <select name='kind_TrnsRchAcc'  id='kind_TrnsRchAcc_0'  class=''  style='width:135px;'  ><option value='B03001' >�����</option><option value='B03002' >���ڱ���</option><option value='B03003' >������������</option><option value='B03004' >�������ܾ׺���</option><option value='B03005' >��ü�����������ü</option><option value='B03006' >���������ݾ�</option><option value='B03007' >�ڰ�����ü���α��</option><option value='B03009' >�������������� �ΰǺ�(������)</option></select>
                            </div>
                            <span id="idExctnStgDv_td2_0" style="display:none;"></span>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="bank">�Աݰ���</label></th>
                          <td style="white-space: nowrap;"><select name='RcvBnkCd'  id='RcvBnkCd_0'  class='' onchange='uf_OwacNmRst2(this);' style='width:50px' ><option value=''>����</option><option value='020' >A ����</option><option value='003' >B ����</option><option value='004' >C ����</option></select>
                            <input type="text" name="RcvAcctNo_0" id="RcvAcctNo_0" onchange="uf_OwacNmRst2(this);" title="�Աݰ���" class="RcvAcctNo inputl" style="width:80px" value="" title="" notnull colname="�Աݰ���(���¹�ȣ)" maxlength="20" onfocus="chkEncOn(this);" />
                            <a id="idFvrtAcct_0" href="#dummy" class="uf_popup_fvrt_acct"><img src="/bt/bt_acct01.gif" alt="���־��°���"/></a>
                            <div id="idRcvBnkNm_0" style="float:left;padding-top:4px;display:none;"></div>
                            <a id="idMyAcctNo_0" href="#dummy" class="uf_popup_my_acct" style="float:right;display:none"><img src="/bt/bt_myacctno.gif" alt="�ڰ�����ü�����"/></a>
                          </td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="account">������</label></th>
                          <td class="ll"><input type="text" name="OwacNm" id="OwacNm_0" title="������" class="inputl" style="width:80px;background-color:#d2d2d2;" readonly="readonly" onfocus="this.blur()"/>
                             <a href="#dummy" id="idowacBtn_0" class="uf_tran_owac2"><img src="/bt/bt_acct02.gif" alt="��������ȸ"/></a>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row" style="white-space:nowrap;"><div class="txt_orb" id="DynReqStar1_0" style="display:inline;">*</div><label for="WdrwPsbkPrtCtt_0" style="font-size:8pt">����������ǥ�ó���</label></th>
                          <td><input type="text" name="WdrwPsbkPrtCtt" id="WdrwPsbkPrtCtt_0" title="����������ǥ�ó���" class="inputl" style="width:132px" colname="����������ǥ�ó���" notnull maxlength="12" /></td>
                          <th scope="row" style="white-space:nowrap;"><div class="txt_orb" id="DynReqStar2_0" style="display:inline;">*</div><label for="RcvPsbkPrtCtt_0" style="font-size:8pt">�ŷ�ó����ǥ�ó���</label></th>
                          <td class="ll"><input type="text" name="RcvPsbkPrtCtt" id="RcvPsbkPrtCtt_0" title="�ŷ�ó����ǥ�ó���" class="inputl" style="width:100px" colname="�ŷ�ó����ǥ�ó���"  notnull maxlength="12" /></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="AchvInstIndv1Cd_0">����밳���ڵ�A</label></th>
                          <td><input type="text" name="AchvInstIndv1Cd" id="AchvInstIndv1Cd_0"  title="����밳���ڵ�A" class="inputl" style="width:132px;ime-mode:disabled;" colname="����밳���ڵ�A" maxlength="20" value="" /></td>
                          <th scope="row"><label for="AchvInstIndv2Cd_0">����밳���ڵ�B</label></th>
                          <td class="ll"><input type="text" name="AchvInstIndv2Cd" id="AchvInstIndv2Cd_0" title="����밳���ڵ�B" class="inputl" style="width:100px;ime-mode:disabled;" colname="����밳���ڵ�B" maxlength="20" value=""/></td>
                        </tr>
                        <tr>
                          <th scope="row">��ü�ݾ�</th>
                          <td><span id="txt_trnsAmt_0"></span></td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="TelNo">��ȭ��ȣ</label></th>
                          <td class="ll"><input type="text" name="TelNo" id="TelNo_0" title="��ȭ��ȣ" class="inputl" style="width:100px"  notnull colname="��ȭ��ȣ" datatype="N" maxlength="15" mask="-" /></td>
                        </tr>
                        <tr>
                          <th scope="row">���ް���</th>
                          <td><span id="txt_splyAmt_0"></span></td>
                          <th scope="row">�ΰ���ġ����</th>
                          <td class="ll"><span id="txt_vatAmt_0"></span></td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="PaymUsag_0">���޿뵵</label></th>
                          <td colspan="3" class="ll"><input type="text" name="PaymUsag" id="PaymUsag_0" title="���޿뵵" class="inputl" style="width:99%;ime-mode:active;" notnull colname="���޿뵵" maxlength="100"/></td>
                        </tr>
                      </tbody>
                    </table>
                    
                    </div>
                    </div>
                    <p class="ar b05"><!-- <a href="#" class="btn-closedtl"><img src="/bt/bt_grid_close.gif" alt="�ݱ�"></a> --></p>
                    <div id="frmElmtArea_0" class="frmElmtArea">
                    <!-- ������ �߰� ���� -->
                    </div>
                  </td>
                </tr>

              </tbody>
              <tfoot>
                <tr class="blue_line">
                <th colspan="3">�հ�</th>
                <td class="ar"><span id="tot_TrnsAmt">0</span></td>
                <td class="ar"><span id="evdc_splyAmtTxt">0</span></td>
                <td class="ar"><span id="evdc_vatAmtTxt">0</span></td>
                <th class="cellItxpAdtnInfo"></th>
                <th></th>
              </tfoot>
            </table>
          </div>
          
          <h3>�հ�</h3>
          <div class="t05 b10">

            <table width="672" border="0" cellspacing="0" cellpadding="0" summary="�հ� �󼼳��� ǥ" class="tbl_type02">
              <caption>�հ� �󼼳��� ǥ</caption>
              <colgroup>
              <col width="18%" />
              <col width="35%"/>
              <col width="18%" />
              <col width="29%"/>
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row">���ޱݾ�</th>
                  <td><span id="tot_splyAmt">0</span></td>
                  <th scope="row">�ΰ�����</th>
                  <td class="ll"><span id="tot_vatAmt">0</span></td>
                </tr>
              </tbody>
            </table>
          </div>
          <!-- action bt start -->
          <div class="ar"> 
          <a href="#dummy" onclick="uf_itxp_save('0');" class="bt_action4-1" title="�����"><span class="bt_sp">�����</span></a> 
          <a href="#dummy" onclick="uf_itxp_save('1');" class="bt_action4-1" title="����û"><span class="bt_sp">����û</span></a> 
          <a href="#dummy" onclick="uf_itxp_reset();" class="bt_action3-1" title="�ʱ�ȭ"><span class="bt_sp">�ʱ�ȭ</span></a> 
          </div>
          
          
          </div>
          <!-- ����� �� -->
          <!-- //action bt end// -->
          <!-- �ȳ� ���̵� start -->
          <div class="guide_box2" id="guide">
            <div class="guide_boxt2">
              <p class="txt_title fl">���켱��� �ȳ�</p>
              <p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���.
                <a href="#" id="btn-guide"><img src="/bt/bt_close.gif" alt="����" class="vc"/></a>
              </p>
            </div>
            <div class="guide_boxc2">
              <div class="point_title" id="divMyAcctTransAlwn" style="display:none;">�ǽð����տ���������ý���(RCMS) ���뿡 ���� ���� ��û ����̹Ƿ� �ڰ�����ü(�����������ü)�� ������</div>
              <div class="point_title">���켱���</div>
              <ul class="comment">
                <li><span class="txt_or">����� �����񸮽�Ʈ, ������ �ʿ����� ������ "�������� > ����� ���ȳ��� </span>���� Ȯ���� �� �ֽ��ϴ�.</li>
                <li>������ü ��û�׸��� ����ϴ� ����� 'Ÿ������ü'�� '�ڰ�����ü' 2������ �ֽ��ϴ�.</li>
              </ul>
              <ul class="comment_list">
                <li>1) Ÿ������ü : <span class="txt_or">RCMS �� ��������������� �� �ŷ�ó���·� �ǽð� ��ü</span>�Ǹ�, RCMS ������� Ÿ������ü�� �����ؾ� ��</li>
                <li>2) �ڰ�����ü : <span class="txt_or">RCMS �� ��������������·� �ǽð� ��ü</span>�Ǹ�, �ڰ�����ü �������� ��쿡�� ����</li>
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
      <!-- //�����켱��� �׷� end//-->
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
    jQuery('.currency').ForceNumericOnly();
    jQuery(document).ready(function(){
        $("#autoSearchBtn").show();
        //���־��»���� ��ư �̺�Ʈ
        $('.uf_popup_bzpr').live('click',function(){
            var ridx = "0";

            if( typeof document.frm.etc_SplrCoNm.length != 'undefined' && document.frm.etc_SplrCoNm.length > 0 ){
                ridx = $(this).attr('id').split('_')[1];
            }
            uf_popup_bzpr(ridx);
            return false;
        });
        
        
        //���־��°��� ��ư �̺�Ʈ
        $('.uf_popup_fvrt_acct').live('click',function(){
            var ridx = "0";
            ridx = $(this).attr('id').split('_')[1];
            uf_popup_fvrt_acct(ridx);
            return false;
        });
        
        //�ڰ�����ü�� ���� ��ư �̺�Ʈ
        $('.uf_popup_my_acct').live('click',function(){
            var ridx = "0";
            ridx = $(this).attr('id').split('_')[1];
            uf_popup_my_acct(ridx);
        });
        
        
        //�����Ȯ�� ��ư �̺�Ʈ
        $('.uf_chkbzregno').live('click',function(){
            var ridx = "0";
            var _id = $(this).attr('id').split('_');
            ridx = _id[_id.length-1];
            uf_chkbzregno('1',ridx);
            return false;
        });
        
        
        //��������ȸ ��ư �̺�Ʈ
        $('.uf_tran_owac2').live('click',function(){
            
            var bzRegNo = "";
            var ridx = "0";
            
            var _id = $(this).attr('id').split('_');
            ridx = _id[_id.length-1];
            
            var _evdc_dv = $('#EvmaGb_'+ridx).val();
            
            if( $('#SplrAuth_'+ridx).val() != '1' && 'C' != _evdc_dv){
                alert('����ڵ�Ϲ�ȣȮ���� �����Ͻñ� �ٶ��ϴ�.');
                return false;   
            }
            //Ÿ���¼���
            //alert($('#ExctnStgDv1_'+ridx).attr('checked') + ' ' +  $('#SplrAuth_'+ridx).val() + ' ' + _evdc_dv)
            if( $('#ExctnStgDv1_'+ridx).attr('checked') == true  ){ 
                
                if( 'E' == _evdc_dv ){
                    bzRegNo = $('#etc_SplrBzRegNo_'+ridx).val();
                }else if( 'C' == _evdc_dv ){
            
                }else if( 'T' == _evdc_dv ){
                    bzRegNo = $('#T_SplrBzRegNo_'+ridx).val();
                }else{
                    alert('������ �����ϼ���')
                    return false;
                }
            }
            
            $('#RcvNmChkDv_'+ridx).val('');
            if( true == chkAcnmAuthPass($('#SelSubDtlsItxpCd').val()) ){
                $('#RcvNmChkDv_'+ridx).val('B06006'); //[RNDB06] B06006 �Ǹ���ȸ���ܼ���
                uf_tran_owac2(document.frm, document.rtr_str_form, ridx);   //�����ָ� ��ȸ
            }else{
                if( bzRegNo == '0000000000' && $('#etc_SplrPrsn_'+ridx).attr('checked') == true ){
                    $('#RcvNmChkDv_'+ridx).val('B06008'); //[RNDB06] B06008 ���ΰŷ�ó
                    uf_tran_owac2(document.frm, document.rtr_str_form, ridx);   //�����ָ� ��ȸ
                }else if( bzRegNo == '0000000000' && $('#etc_SplrPrsn_'+ridx).attr('checked') == false ){
                    alert('�ŷ�ó ����ڵ�Ϲ�ȣ�� Ȯ���ϼ���.');
                }else if( bzRegNo == '8888888888' ){
                    $('#RcvNmChkDv_'+ridx).val('B06009'); //[RNDB06] B06009 �ؿܰŷ�ó
                    uf_tran_owac2(document.frm, document.rtr_str_form, ridx);   //�����ָ� ��ȸ
                }else{
                    uf_tran_owac_c(bzRegNo, ridx);
                }
            }
            return false;
        });
    });
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