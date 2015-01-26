<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T12_01_00_1.jsp
 *   Description        : 비목우선등록
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29                   예기해             
 *
 *  @author 예기해
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

<title>비목우선 등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body class="line">

<ul id="accessibility">
    <li><a href="#header">주메뉴바로가기</a></li>
    <li><a href="#contaniner">컨텐츠바로가기</a></li>
    <li><a href="#footer">하단바로가기</a></li>
</ul>
<hr/>
<noscript><p id="warning_script">자바스크립트가 동작하지 않을 시 디자인이 정상적으로 보이지 않을 수 있습니다.</p></noscript>
<div id="wrapper">

    <!-- //header topMenu start// -->
    <%@ include file="/inc/topMenu.jsp" %>
    <!-- //header topMenu end// -->
    
    <!-- contaniner start -->
    <div id="contaniner">
        <!-- left start -->
        <div class="snb">
            <!-- left menu start -->
            




                    <div><img src="/images/pefo/sub_navt1.gif" alt="연구비관리" /></div>
                    <div class="bg">
                        <div class="sub">
                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_txt">현황조회</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_3dep">연구비사용 현황조회</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>
                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_txt_on">연구비사용관리</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep_on">사용등록</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_02_00.jsp'); return false;" class="menu_3dep">사용실행</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_03_00.jsp'); return false;" class="menu_3dep">사용결과내역 조회</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_txt">현물등록관리</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_3dep">현물등록내역 조회</a></li>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_02_00.jsp'); return false;" class="menu_3dep">현물사용내역 등록</a></li>
                        
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
    
    //조회버튼 컨트롤
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
            alert('증빙구분을 선택하세요');
            $('#EvmaGb_'+_index).focus();
            return false;
        }
        
        if( $this.children().attr('alt') != '닫기' ){
            $this.parent().parent().next().next().show();   
            //$this.css('visibility','hidden');
            $this.children().attr('src','//bt/bt_grid_close1.gif').attr('alt','닫기');
        }else{
            $this.parent().parent().next().next().hide();   
            $this.children().attr('src','//bt/bt_grid1.gif').attr('alt','추가입력');
        }

        return false;
    });
});

//==================================================================
//선택과제 form 생성 관련 method
//선택과제정보 폼데이터 사용하기 전 autoSbjtFormGen() 메소드 호출바랍니다..
//==================================================================
    
function uf_autoSbjtSchCallBack(param){
    sbjtParam = param;
    var rtr_str = document.rtr_str_form;
    var bfrm = document.frm;
    
    if(!param){
        alert("잘못된 접근입니다.");
        return;
    }

    var responseXML = "";
    
    if("1" == param){
        
        var _COOKIE_DATA_41_04 = getCookieTraning("T41_04_00");
        var _COOKIE_DATA_41_08 = getCookieTraning("T41_08_10");
        
        if(_COOKIE_DATA_41_08 == false){
            //S_AGCF_YN : N  :: 협약정보기본값 N
            //S_AIFW : 0  :: 펌뱅킹 기본값 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 신규과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else if(_COOKIE_DATA_41_04 == false){
            //S_AGCF_YN : Y  :: 협약정보기본값 N
            //S_AIFW : 0  :: 펌뱅킹 기본값 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 신규과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else{
            //S_AGCF_YN : Y  :: 협약정보기본값 N
            //S_AIFW : 1  :: 펌뱅킹 기본값 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 신규과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }
    }else if("2" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 진행과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
    }else if("3" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
    }else if("4" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
    }
    
    
    document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
    
    //=============================
    //실행시킬 메소드 들어갈 위치
    //=============================
    //alert(rtr_str.S_AGCF_YN.value)
    if( "Y" == "N" ){
        alert("기관정보가 확인되지 않아 해당 페이지로 이동하겠습니다.");
        uf_frmNewWinNs(document.frm, '/pop/P01_00_40.jsp', 'membCheck', '680', '600');
        return;
        //fn_url("")
    }else if( rtr_str.S_AGCF_YN.value == "N" ){
        alert("협약정보가 확인되지 않아 해당 메뉴로 이동하겠습니다.");
        fn_url("/t04/t41/T41_08_00.jsp");

    //펌뱅킹 이용을 신청했는지 안했는지 확인         
    }else if( rtr_str.S_AIFW.value == "0" || rtr_str.S_AIFW.value == null || rtr_str.S_AIFW.value == "" ){
        alert("펌뱅킹 이용신청을 하지 않으셔서 해당 메뉴로 이동하겠습니다.");
        fn_url("/t04/t41/T41_04_00.jsp");
    } else {
        document.getElementById("divBmokInfo").style.display = "none";
        resetAllControl();
        
        uf_proce_display_on();  //로딩바
          
          setTimeout(
                  function(){
                      setT12_01_00_0_r1(rtr_str.S_AGRMT_SEQ_NO.value);
                      document.body.style.cursor = "auto";
                      reset_submit();
                      }, 1000);   // 1초후 실행 1000 = 1초s
                        
    }
}

//==================================================================

function DisplayDivMyAcctTransAlwn(){
    var rtr_str = document.rtr_str_form;
    var frm = document.frm;

    if(!bAutoSbjtSch())         return;         // 과제조회여부
    
    get2post(frm, "AGRMT_SEQ_NO="+rtr_str.S_AGRMT_SEQ_NO.value);
    get2post(frm, "AGRMT_INST_ID="+rtr_str.S_AGRMT_INST_ID.value);
    
    uf_proce_display_on();  //로딩바
    
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
                
                }, 1000);   // 1초후 실행 1000 = 1초s
                
                
    removeTempAttribute(frm);   //get2post 삭제
}


function resetAllControl(flag){
    var frm = document.frm;
    
    if( typeof flag == 'undefined' ) flag = true;
    
    if( flag != false ){
        // 배열 초기화
        SelDtlsItxpCd           = new Array();
        SelDtlsItxpNm           = new Array();
        SelSubDtlsItxpCd        = new Array();
        SelSubDtlsItxpNm        = new Array();
    
        BzExpSprnExctnYn    = "N";
        SelShrSorcSn        = new Array();
        SelShrSorcNm        = new Array();
    }
    
    // 각 입력 텍스트 컨트롤 초기화
    $("#frm:input").each(function(){
        $(this).val("");
    });

    var ItxpObj = document.getElementById("SelSubDtlsItxpCd");
    ItxpObj.options.length = 1;
    ItxpObj.options[0] = new Option("세세목 선택",'',true,false);
        
    // 비목테이블(상단) 초기화
    fnItxpInit();
    
    document.getElementById('etcimpex_0').style.display     = "none";
    
    // 거래처 정보 초기화
    document.getElementById("d_SplrReprNm_0").innerHTML     = "";
    document.getElementById("d_SplrBzRegNo_0").innerHTML        = "";
    document.getElementById("d_SplrTpopNm_0").innerHTML     = "";
    document.getElementById("d_SplrTpbzNm_0").innerHTML     = "";
    document.getElementById("d_SplrAdr_0").innerHTML            = "";

    // 집행구분 초기화
    exctn_ExctnStgDv_v2("1",'1', 
                        document.rtr_str_form.S_RCH_ACC_BNK_CD.value, 
                        document.rtr_str_form.S_RCH_ACC_BNK_NM.value, 
                        document.rtr_str_form.S_RCH_ACC_NO.value, 
                        '',
                        '',
                        document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value,0);
    

    
    // 비목테이블(하단) 초기화
    document.getElementById("evdc_splyAmtTxt").innerHTML    = "0";
    document.getElementById("evdc_vatAmtTxt").innerHTML     = "0";
    document.getElementById("tot_TrnsAmt").innerHTML        = "0";
    document.getElementById("tot_splyAmt").innerHTML        = "0";
    document.getElementById("tot_vatAmt").innerHTML         = "0";
    
    // 계좌이체 요청항목 초기화
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
    
    
    //사업자확인 초기화
    $('#etc_ChkBzRegNo_0'   ).show();
    $('#ChkBzRegNo_0'       ).show();
    $('#SplrAuth_0'         ).val('0');
    
    // 폼 초기화
    frm.action = "";
    frm.target = "";
    
    //증빙파일 초기화
    $("#EdmsDocId").val("");
    $("#FileNm").val("");
    jQuery("#ItxpFileEvdc").html('<img src="/bt/bt_regist2off.gif" alt="증빙파일등록">');
    
    // 2011.12.12 태동현 START
    // 카이스트 대응으로 인해 기관용개별코드를 수정할 수 없도록 수정
    if("00006277" == document.rtr_str_form.S_AGRMT_INST_ID.value){
        document.getElementById("AchvInstIndv1Cd_0").readOnly               = true;
        document.getElementById("AchvInstIndv1Cd_0").style.backgroundColor  = "#d2d2d2";
    }
    // 2011.12.12 태동현 END
}


function setDefaultKindTrnsRchAcc(idx){
    // 허용비목을 디폴트로 설정
    document.getElementById('kind_TrnsRchAcc_'+idx).options[0].selected = true;
}
/******************************************************************
 * set_evdc_amt      비목 첫번째 row에 증빙금액 세팅
 * @param
 * @return
 * page마다 customizing 되었음
******************************************************************/
function set_evdc_amt(){
    var frm =   document.frm;
    
}

//비목 테이블 콤보
var SelDtlsItxpCd = new Array();
var SelDtlsItxpNm = new Array();
var SelSubDtlsItxpCd = new Array();
var SelSubDtlsItxpNm = new Array();

function mkDtlsItxpCd(tObjIdx){
    var tObj = document.all["SelDtlsItxpCd"];
    var opt_name = "세목 선택";

    tObj.options.length = 1;
    tObj.options[0] = new Option(opt_name,'',true,false);

    // 2011.12.12 태동현 START
    // 카이스트 대응으로 인해 기관용개별코드를 수정할 수 없도록 수정
    if( "G01" == document.rtr_str_form.S_PMS_ID.value && "00006277" == document.rtr_str_form.S_AGRMT_INST_ID.value){
        var tempSelDtlsItxpCd       = new Array();
        var tempSelDtlsItxpNm       = new Array();
        var tempSelSubDtlsItxpCd    = new Array();
        var tempSelSubDtlsItxpNm    = new Array();
        var idx1 = 0;
        
        for(var i=0,j=SelDtlsItxpCd.length; i<j; i++){
            // 내부인건비, 외부인건비, 연구수당, 간접비, 인건비, 학생인건비만 허용하도록 수정
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
    // 2011.12.12 태동현 END
    for(var i=0,j=SelDtlsItxpCd.length; i<j; i++){
        tObj.options[i+1] = new Option(SelDtlsItxpNm[i], SelDtlsItxpCd[i]);
    }   
}

/******************************************************************
* SelDtlsItxpCdOnChange      세목변경
* @param
* @return
******************************************************************/
function SelDtlsItxpCdOnChange(obj){

    if(typeof obj=="undefined" || obj==""){
        obj = document.all["SelDtlsItxpCd"];
    }
    
    var k = 0;
    var tObj = document.all["SelSubDtlsItxpCd"];
    var opt_name = "세세목 선택";
    
    // 증빙서류/인건비내역 삭제 처리
    if(!fnDelete(obj)) return;
    
    // 세목/세세목 변경 처리
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
 * SelDtlsItxpCdOnChange         세세목변경시 실행함수
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

    //기타증빙예외 처리
    uf_etcImplExc(obj);
    
    //개인거래 설정
    setSplrPrsn(frm,frm_key);
    
    //인건비성 비목선택시 인건비성지급계좌 설정
    PsnlItxpAcctNoSet();
    
    document.getElementById("divBmokInfo").style.display = "block";
    
}
/******************************************************************
* PsnlItxpAcctNoSet      인건비성지급계좌설정(내,외부인건비/연구수당)
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
        
        //카드로 인건비성 비목등록 거부
        //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
        if( document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y" && "C" == $('#EvmaGb_'+ridx).val() ){      
            if('Y' == itxpPsnlYn(_SelDtlsItxpCd)){
                alert("카드는 인건비성 비목을 등록 할 수 없습니다.\n\n[내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비]");
                frm.SelSubDtlsItxpCd.selectedIndex = 0;
                return;
            }
        }
        
        var ExctnStgDv = (true==$('#ExctnStgDv1_'+ridx).attr('checked')) ? "1" : "2";
        
        if( ExctnStgDv == "1" && "C" != $('#EvmaGb_'+ridx).val() ){ 
            
            if('Y' == itxpPsnlYn(_SelDtlsItxpCd)){  //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
                    //카드증빙이 아니고 인건비성지급계좌를 사용하는 기관인 경우에는 인건비성 지급계좌로 설정.
                if(document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y"){
                          
                    var strVal  =   "003|20000000000|㈜RCMS";
                    
                    arrVal = strVal.split("|");

                    document.getElementById("idFvrtAcct_"+ridx).style.display           = "none";
                    document.getElementById("idowacBtn_"+ridx).style.display            = "none";
                    document.getElementById("idExctnStgDv_td1_"+ridx).style.display     = "none";
                    document.getElementById("idExctnStgDv_td2_"+ridx).style.display     = "inline";
                    document.getElementById("idExctnStgDv_td2_"+ridx).innerHTML         = "인건비성지급계좌 사용기관";
                    document.getElementById("RcvBnkCd_"+ridx).value                     = arrVal[0]=='null'?'':arrVal[0];
                    document.getElementById("RcvAcctNo_"+ridx).value                    = arrVal[1]=='null'?'':arrVal[1];
                    document.getElementById("OwacNm_"+ridx).value                       = arrVal[2]=='null'?'':arrVal[2];
                    document.getElementById("RcvBnkCd_"+ridx).disabled                  = true;
                    document.getElementById("RcvAcctNo_"+ridx).disabled                 = true;
                    document.getElementById("OwacNm_"+ridx).disabled                    = true;
                    document.getElementById("OwacNm_"+ridx).readonly                    = 'readonly';
                    
                    if(document.getElementById('RcvBnkCd_'+ridx).options[document.getElementById('RcvBnkCd_'+ridx).options.selectedIndex].value == frm_key.S_RCH_ACC_BNK_CD.value
                    && jQuery('#RcvAcctNo_'+ridx).val() == frm_key.S_RCH_ACC_NO.value){
                        jQuery('#ExctnStgDv1_'+ridx).attr('checked',false); //타계좌이체
                        jQuery('#ExctnStgDv2_'+ridx).attr('checked',true);  //자계좌이체
                    }else{
                        jQuery('#ExctnStgDv1_'+ridx).attr('checked',true); //타계좌이체
                        jQuery('#ExctnStgDv2_'+ridx).attr('checked',false);  //자계좌이체
                    }
                }
            }else{
                setEnabledBnkAcctInfo(ridx);
            }
        }
    
    }//END of For
}


//비목테이블 초기화
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
    newRow1.addClass('blue_line').find('.btn-opendtl > img').attr('src','//bt/bt_grid1.gif').attr('alt','추가입력');
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

//기등록건 선택 or 입력
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
        jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_nonregist.gif" alt="미등록">');
    }
}


/******************************************************************
 * uf_itxp_reset         비목등록 초기화
 * @param
 * @return
******************************************************************/
function uf_itxp_reset(){
    if( confirm('등록하신 정보가 모두 초기화 됩니다. 계속 진행하시겠습니까?') ){
        resetAllControl(false);
        document.forms['frm'].reset();
    }
    return false;
}

/******************************************************************
 * fnFileEvdc        증빙서류 등록
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
 * uf_edmsUploadFile        EDMS파일업로드 공통메소드 호출
 * @param
 * @return
******************************************************************/
function uf_edmsUploadFile(mode,idx, edmsDocId){
    var dockey;
    var usrId;          //사용자ID
    var hmpwRoleDv;     //사용자권한 
    var evdcDv;         //증빙구분
    var pmsId;          //PMSID
    var sbjtId;         //과제번호
    var agrmtSeqNo;     //협약일련번호
    var agrmtInstId;    //협약기관
    var useDt;          //사용일자
    var itxpCd;         //비목코드
    var DtlsItxpCd;     //세목코드
    var SubDtlsItxpCd;  //세세목코드
    
    var frm_key =   document.rtr_str_form;
    var frm     =   document.frm;
    frm.dockeyNo.value  =   idx;

    //세목선택체크
    if(!chk_frm_value("SelDtlsItxpCd")) return;
    //세세목선택체크
    if(!chk_frm_value("SelSubDtlsItxpCd"))  return;

    usrId               = "SMTEST";
    hmpwRoleDv          = frm_key.S_HMPW_ROLE_DV.value;
    evdcDv              = "E";//멀티 선택이 가능하여 기타로 Fixed

    useDt           = "2013" + "10" + "29";//멀티 증빙구분이 가능하여 등록일자로 Fixed
    
    pmsId               = frm_key.S_PMS_ID.value;
    sbjtId              = frm_key.S_SBJT_ID.value;
    agrmtSeqNo          = frm_key.S_AGRMT_SEQ_NO.value;
    agrmtInstId         = frm_key.S_AGRMT_INST_ID.value;
    
    
    itxpCd          = trim(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value).substring(0,4)+"0";
    DtlsItxpCd      = frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
    SubDtlsItxpCd   = frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;

    if("create"==mode){
        //2011 신규 EDMS 연계키 생성
        //연계키생성( PMSID + 과제ID + 협약일련번호 + 협약기관 + 사용일 + 증빙구분 + 비목 + 세목 + 세세목)
        dockey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
        frm.docKey.value    =   dockey;

        // EDMS첨부파일등록호출
        //edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "http://61.41.119.163/rcmsConnect.do");
        edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
        
    }else{
        // EDMS첨부파일등록호출
        //edmsUploadFileNew("frm", mode, edmsDocId, usrId,hmpwRoleDv, "http://61.41.119.163/rcmsConnect.do");
        edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
    }
    
}
/******************************************************************
 * edmsReturnAction     EDMS 반환값 셋팅
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
            jQuery("#ItxpFileEvdc").html('<img src="/bt/bt_regist2.gif" alt="증빙파일등록">');
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

    if( '8888888888' == bizID ) return true;//해외기관
    
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
 * chk_save     저장전 유효성 체크
 * @param
 * @return
******************************************************************/
function chk_save(PlanPrgrSt){
    var frm_key =   document.rtr_str_form;
    var frm     =   document.forms['frm'];
    var param,target_url;

    
    if( $('#SelDtlsItxpCd').val() == "" ){
        alert('세목을 선택하세요');
        $('#SelDtlsItxpCd').focus();
        return false;
    }

    if( $('#SelSubDtlsItxpCd').val() == "" ){
        alert('세세목을 선택하세요');
        $('#SelSubDtlsItxpCd').focus();
        return false;
    }
    


    for(i=0; i < document.forms['frm'].elements['itxp_cnt'].value; i++){

        if( $('#EvmaGb_'+i).val() == "" ){
            alert('증빙구분을 선택하세요');
            $('#EvmaGb_'+i).focus();
            return false;
        }
        
        //카드로 인건비성 비목등록 거부
        //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
        if( document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y" && "C" == $('#EvmaGb_'+i).val() ){     
            if('Y' == itxpPsnlYn(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value)){
                alert("카드는 인건비성 비목을 등록 할 수 없습니다.\n\n[내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비]");
                return false;
            }
        }
        
        //-----------------------------------
        //  거래처정보 유효성 검사
        //-----------------------------------
        if( "E" == $('#EvmaGb_'+i).val() ){
            if(null == $('#etc_SplrCoNm_'+i).val() || "" == $('#etc_SplrCoNm_'+i).val()){
                alert("회사명을 입력해주세요.");
                fnOpenTrFocus($('#etc_SplrCoNm_'+i),i);
                return false;
            }
            if(null == $('#etc_SplrAdr_'+i).val() || "" == $('#etc_SplrAdr_'+i).val()){
                alert("사업장 주소를 입력해주세요.");
                fnOpenTrFocus($('#etc_SplrAdr_'+i),i);
                return false;
            }
            if(null == $('#etc_SplrReprNm_'+i).val() || "" == $('#etc_SplrReprNm_'+i).val()){
                alert("대표자명을 입력해주세요.");
                fnOpenTrFocus($('#etc_SplrReprNm_'+i),i);
                return false;
            }

            if(null == $('#etc_SplrBzRegNo_'+i).val() || "" == $('#etc_SplrBzRegNo_'+i).val() ){
                alert("사업자등록번호를 입력해주세요.");
                $('#etc_SplrBzRegNo_'+i).focus();
                return false;
            }
            
            //실습환경 사업자번호 체크 해지
            /* 
            if( false == chk_bzregno($('#etc_SplrBzRegNo_'+i).val()) ){
                 alert("사업자등록번호를 확인해 주시기 바랍니다.");
                 $('#etc_SplrBzRegNo_'+i).focus();
                 return false;
            }
             */
        }
        
        if( "Y" == $('#SqbnSplrExctnRsnYn_'+i).val() && "" == $.trim($('#SqbnSplrExctnRsn_'+i).val()) ){
             alert('휴폐업 집행사유를 입력해주세요.');
             $('#SplyAmtDfamtRsn_tr_'+i).next().show();
             $('#SqbnSplrExctnRsn_tbl_'+i).show();
             $('#SqbnSplrExctnRsn_'+i).focus();
            return false;
        }

        
        //-----------------------------------
        //  비목등록정보 유효성 검사
        //-----------------------------------
        if(!chk_frm_value("ItxpItem",i))            return false;           // 품목
        if(!chk_frm_value("ItxpUseAmt",i))          return false;           // 사용금액
        if(!chk_frm_value("ItxpSplyAmt",i))         return false;           // 공급금액
        if(!chk_frm_value("ItxpVatAmt",i))          return false;           // 부가세
        
        // 2011.09.16 태동현 : 부가세의 최대 설정 금액을 공급금액의 50% 까지로 함 (감리로 인한 수정사항)
        var splyAmt = Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        var vatAmt  = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
        
        if( splyAmt < 0 ){
            alert('공급금액은 0보다 작을 수 없습니다.');
            $("#ItxpSplyAmt_"+i).focus()
            return false;
        }
        if( vatAmt < 0 ){
            alert('부가세금액은 0보다 작을 수 없습니다.');
            $("#ItxpVatAmt_"+i).focus();
            return false;
        }
        
        // 2012.04.24 김봉민 : 사용금액이 ""이거나 0원이 아닌 경우에만 등록 가능하도록 수정.
        var itxpUseAmt = $("#ItxpUseAmt_"+i).val() ;        
        if("0" == itxpUseAmt){
            alert("사용금액은 0원이 될 수 없습니다.");
            $("#ItxpSplyAmt_"+i).focus() ;
            return false;   
        }
        
        //2012.11.26 kjs 전자세금계산서의 경우 공급금액과 사용금액이 다를경우 공급금액차액 사유 선택 체크
        if( "T" == $('#EvmaGb_'+i).val() ){
            if( parseInt($('#T_Evdc_SplyAmt_' + i).val(),10) > splyAmt && "" == document.forms['frm'].elements['SplyAmtDfamtRsn_'+i].value ){
                alert("공급금액 차액사유를 작성해주세요");
                document.forms['frm'].elements['SplyAmtDfamtRsn_'+i].focus();
                return false;
            }
        }   
        
        
        //-----------------------------------
        //  비영리기관이 간접비 집행시 증빙서류 인건비내역등록안함
        //  그외경우 증빙서류과 인건비내역 등록체크함
        //-----------------------------------
        
        if(!(((frm_key.S_NPRF_INST_YN.value == "Y") && (chk_itxpExist2('B0301001'))) 
                || ((chk_itxpExist2('B0206001') && "E" != $('#EvmaGb_'+i).val())
                || (chk_itxpExist2('B0206002') && "E" != $('#EvmaGb_'+i).val()) 
                || (chk_itxpExist2('B0206003') && "E" != $('#EvmaGb_'+i).val())
                || (chk_itxpExist2('B0206004') && "E" != $('#EvmaGb_'+i).val())
                || (chk_itxpExist2('B0206005') && "E" != $('#EvmaGb_'+i).val())
                || (chk_itxpExist2('B0206006'))))){

            //-----------------------------------
            //  증빙서류 체크
            //-----------------------------------
            if( null == frm.EdmsDocId.value || ""==frm.EdmsDocId.value){
                    alert("증빙서류를 등록해주세요.");
                    return false;  
            }
            //-----------------------------------
            //  인건비내역 체크(인건비,연구수당인경우만 등록필수)
            //-----------------------------------
            if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                if( frm.rchrInfo.length > 1){
                    for( j = 0 ; j < frm.rchrInfo.length ; j++ ){
                        if(null==frm.rchrInfo[j].value || ""==frm.rchrInfo[j].value){
                            alert("인건비내역을 등록해주세요.");
                            return false;
                        }else{
                            if(frm.rchrAmt[j].value.replace(/,/gi,"") != frm.ItxpUseAmt[j].value.replace(/,/gi,"")){
                                alert("비목금액의 합계와 등록된 인건비내역의 금액과 일치하지 않습니다.");
                                return false;
                            }
                        }
                    }
                }else{
                    if( null==frm.rchrInfo.value || ""==frm.rchrInfo.value ){
                        alert("인건비내역을 등록해주세요.");
                        return false;
                    }else{
                        if( frm.rchrAmt.value.replace(/,/gi,"") != frm.ItxpUseAmt.value.replace(/,/gi,"") ){
                            alert("비목금액의 합계와 등록된 인건비내역의 금액과 일치하지 않습니다.");
                            return false;
                        }
                    }
                }
            }
        }
        
        
        if( $('#SplrAuth_'+i).val() != '1' && 'C' != $('#EvmaGb_'+i).val() ){
            alert('사업자등록번호확인을 진행하시기 바랍니다.');
            return false;   
        }
        
        //-----------------------------------
        //  계좌이체 요청항목 유효성 검사
        //-----------------------------------
        if("1"==PlanPrgrSt){
    
            if( !("C" == $('#EvmaGb_'+i).val()) ){
                var exctnStgDv = (true == $('#ExctnStgDv1_'+i).attr('checked') ) ? "1" : "2";
                
                // 타계좌일 경우
                if("1"==exctnStgDv){
                    //-----------------------------------
                    //  증빙구분 따른 세세목 유효성검사
                    //-----------------------------------
                    var msg = chk_Itxp_ExctnStgDv(frm, $('#EvmaGb_'+i).val() , '2');
                    if(!(""==msg)){
                        alert(msg);
                        return false;
                    }   
                }else{
                    //-----------------------------------
                    //  집행종류구분에 따른 세세목 유효성검사
                    //-----------------------------------
                    var msg = chk_Itxp_kindTrnsRchAcc(frm, $('#kind_TrnsRchAcc_'+i).val(), frm_key.S_NPRF_INST_YN.value , '1');
                    if(!(""==msg)){
                        alert(msg);
                        return false;
                    }
                }   
            }
            
            //카드면서 집계방식일경우만 체크하지않음
            if( !(("C"== $('#EvmaGb_'+i).val() ) && ("1" == frm.InstCrdSetlMeth.value))){
                if( $('#OwacNm_'+i).val() == "" ){
                    alert("예금주조회를 해주십시오.");
                    fnOpenTrFocus(document.getElementById('OwacNm+'+i),i);
                    return false;
                }   
            
                //-----------------------------------
                //  계좌이체 요청항목 유효성 검사
                //-----------------------------------
                if(""==document.getElementById('RcvBnkCd_'+i).options[document.getElementById('RcvBnkCd_'+i).options.selectedIndex].value){
                    alert("필수항목은 반드시 선택하셔야 합니다.\r\n\r\n* 필수선택 항목 : 입금계좌(은행)");
                    fnOpenTrFocus(document.getElementById('RcvBnkCd_'+i),i);
                    return false;
                }
                //if(! validate_frm(frm) ) return false; // 유효성처리
            }   
                
            if( !("C" == $('#EvmaGb_'+i).val()) ){
                //-----------------------------------
                //  타계좌이체시 입금계좌가 연구비계좌인지 검사
                //-----------------------------------
                if( true                                                    ==  $('#ExctnStgDv1_'+i).attr('checked')        &&
                    document.getElementById('RcvBnkCd_'+i).options[document.getElementById('RcvBnkCd_'+i).options.selectedIndex].value  ==  frm_key.S_RCH_ACC_BNK_CD.value          &&
                    document.getElementById('RcvAcctNo_'+i).value           ==  frm_key.S_RCH_ACC_NO.value){
                    alert("입금계좌가 연구비계좌와 동일합니다.");
                    return false;
                }
                
            }
            
            //--------------------------------------------------
            //  기타증빙&&자계좌이체인 경우 증빙금액과 일치여부 체크안함
            //--------------------------------------------------
            if(!( ( "E" == $('#EvmaGb_'+i).val())&&(true==$('#ExctnStgDv2_'+i).attr('checked') ))){
                //-----------------------------------
                //  금액 체크
                //-----------------------------------
                var msg = chk_itxp_evdc_amt();
                if(!(""==msg)){  alert(msg);return false;   }       
            }
            
        }

    }//End of for
    
    return true;
}

/******************************************************************
 * uf_itxp_save     계획/증빙/비목저장
 * @param
 * @return
******************************************************************/
function uf_itxp_save(PlanPrgrSt){
    var frm_key =   document.rtr_str_form;
    var frm     =   document.frm;
    var param,target_url;

    _PlanPrgrSt = PlanPrgrSt;
    //유효성 검사
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
        alert('계좌이체 요청항목은 저장되지 않습니다.');
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
        
        if( bzRegNo == "0000000000" || bzRegNo == "8888888888" ){ //개인거래 또는 해외거래처 인경우 휴폐업조회 안함
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
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                        try{   
                            for(var i=0; i<document.frm.itxp_cnt.value; i++){
                                
                                if( "E" == $('#EvmaGb_'+i,document).val() && bzRegNo == $('#etc_SplrBzRegNo_'+i,document).val() ){
                                    eval('document.frm.SplrBzRegSt_'+i+'.value      = ""');     //사업자등록상태
                                    eval('document.frm.SplrTaxtTypDv_'+i+'.value    = ""');     //사업자과세유형
                                    break;
                                }else if( "T" == $('#EvmaGb_'+i,document).val() && bzRegNo == $('#T_SplrBzRegNo_'+i,document).val() ){
                                    eval('document.frm.SplrBzRegSt_'+i+'.value      = ""');     //사업자등록상태
                                    eval('document.frm.SplrTaxtTypDv_'+i+'.value    = ""');   //사업자과세유형
                                    break;
                                }else if( "C" == $('#EvmaGb_'+i,document).val() && bzRegNo == $('#C_MestBzNo_'+i,document).val() ){
                                    eval('document.frm.SplrBzRegSt_'+i+'.value      = ""');     //사업자등록상태
                                    eval('document.frm.SplrTaxtTypDv_'+i+'.value    = ""');   //사업자과세유형
                                    break;
                                }

                            }
                        }finally{
                            reset_submit();
                            fn_itxp_save();
                        }
                    
                    }, 1000);   // 1초후 실행 1000 = 1초s
                    
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
        
        if( 'A04009' == $('#SplrBzRegSt_'+i).val() ){ //휴업
            confirm_msg += splrCoNm + "는(은) 국세청에서 휴업으로 신고된 거래처 입니다.\n\n";
        }else if( 'A04010' == $('#SplrBzRegSt_'+i).val() ){ //폐업
            confirm_msg += splrCoNm + "는(은) 국세청에서 폐업으로 신고된 거래처 입니다.\n\n";
        }

    }
    
    if( confirm_msg != "" ){
        confirm_msg += "계속진행하시겠습니까?";
    }else{
        confirm_msg = "등록하시겠습니까?";
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
    //세목값담기
    param   +=  "&DTLS_ITXP_CD="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
    param   +=  "&DTLS_ITXP_NM="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].text;

    //세세목값담기
    param   +=  "&SUB_DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
    param   +=  "&SUB_DTLS_ITXP_NM="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].text;
    
    param += "&PLAN_PRGR_ST="+ _PlanPrgrSt;
    param += "&CRD_SETL_METH="+frm.InstCrdSetlMeth.value;
    param += "&DEV_STR_DT=" + frm_key.S_DEV_STR_DT.value;
    
    get2post(frm, param);
    
     
    uf_proce_display_on();  //로딩바

    setTimeout(
            function(){
                reset_submit();
                resetAllControl(false);
                
                alert("등록되었습니다.");
                
                }, 1000);   // 1초후 실행 1000 = 1초s
    
    removeTempAttribute(frm);
}


</script>
<script type="text/javascript" src="/js/pt_itxp_common.js"></script>

    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
      



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u12_01_00_t.gif" alt="사용등록"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>연구비관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />연구비사용관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">사용등록</span></li>
                        
                    </ul>
                </div>
            </div>                
      <!-- //pagenav end// -->
      <div class="t30"></div>



<!-- //auto search start -->
<%
    boolean isSbjtAutoSchMulti  =   false;  //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글
    boolean beSearchBtn         =   true;   //조회버튼 생성구분
    String SSbjtInqDvCd        = "F";      //정산협약제외
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->
    
    
    

      <div class="cb b10"></div>
      <div class="t10"><img src="/images/pefo/u12_01_00_img.gif" alt="연구비사용등록 선택안내 가이드 ①증빙우선 등록 : 전자세금계산서, 카드, 기타 증빙구분을 기준으로, 그에 따른 비목정보(세목, 사용금액등)를 입력합니다. ②비목우선 등록 : 비목(세목, 세세목, 지방비구분)을 기준으로, 그에 따른 증빙정보(전자세금계산서, 카드, 키타 등)를 입력합니다."/></div>
      <!-- 비목우선등록 그룹 start -->
      <form name="frm" id="frm" method="post">
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" />    
<!-- 공통정보  -->
            <input type="hidden" id="EvdcSeqNo"             name="EvdcSeqNo"                value=""     />                 <!-- 증빙일련번호                    -->
            <input type="hidden" id="dockeyNo"              name="dockeyNo"                 value=""    />                  <!-- 선택된 증빙테이블키 -->
            <input type="hidden" id="doc_dv"                name="doc_dv"                   value=""    />                  <!-- 증빙서류/인건비내역 -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""    />                  <!-- 생성된EDMS_dockey -->
            <input type="hidden" id="docNo"                 name="docNo"                    value=""    />                  <!-- 리컨결과값(등록파일시퀸스) -->
            <input type="hidden" id="docName"               name="docName"                  value=""    />                  <!-- 리턴결과값(등록파일명) -->
            <input type="hidden" id="methodName"            name="methodName"               value=""    />                  <!-- 메소드명 -->    
            <input type="hidden" id="attr98"                name="attr98"                   value=""    />                  <!-- 리턴결과값(등록파일명) -->
            <input type="hidden" id="attr99"                name="attr99"                   value=""    />                  <!-- 리턴결과값(등록파일갯수) -->
            <input type="hidden" id="itxp_cnt"              name="itxp_cnt"                 value="1"   />                  <!-- 비목등록건수 -->
            <input type="hidden" id="Evdc_SumAmt"           name="Evdc_SumAmt"              value=""    />                  <!--    사용금액           -->
            <input type="hidden" id="Evdc_SplyAmt"          name="Evdc_SplyAmt"             value=""    />                  <!--    공급금액(수정공급가액)           -->      
            <input type="hidden" id="Evdc_VatAmt"           name="Evdc_VatAmt"              value=""    />                  <!--    부가세액(수정부가가치세액)       -->
            <input type="hidden" id="p_rchrInfo"            name="p_rchrInfo"               value=""    />
            
            <!------------------------------------------------------------>
            <!-----------------     2)카드증빙 데이터              -------------->
            <!------------------------------------------------------------>
            <input type="hidden" id="InstCrdSetlMeth"       name="InstCrdSetlMeth"      value="1"   />          <!--    카드결제방식               -->
                 
            <!------------------------------------------------------------>
            <!-----------------     증빙 데이터  END     ------------------>
            <!------------------------------------------------------------>        
            <!-- 증빙파일 -->
            <input type="hidden" name="EdmsDocId"       id="EdmsDocId"      value="" /> <!-- 생성된EDMS_dockey -->
            <input type="hidden" name="FileNm"          id="FileNm"         value="" /> <!-- 리턴결과값(등록파일명) -->
            <input type="hidden" name="file_Cnt"        id="file_Cnt"       value="" /> <!-- 리턴결과값(등록파일갯수) -->

      <div class="t20 b10">
        <div class="tab_line1"><a href="#dummy" onclick="fnEvdcRegTabUrl('/t01/t12/T12_01_00_0.jsp')"><img src="/images/pefo/u12_01_00_tab1.gif" alt="증빙우선 등록"/></a><a href="#dummy" onclick="fnEvdcRegTabUrl('/t01/t12/T12_01_00_1.jsp')"><img src="/images/pefo/u12_01_00_tab2on.gif" alt="비목우선 등록"/></a></div>
        <div class="tab_box">
          <div class="find_box">
            <fieldset>
            <legend>비목우선 등록</legend>
            <table width="680" summary="비목우선 등록 검색" class="tbl_search">
              <caption>비목우선 등록 검색</caption>
              <colgroup>
              <col width="10%" />
              <col width="90%" />
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row">비목선택</th>
                  <td><select title="세목선택" style="width:120px;" id="SelDtlsItxpCd" name="SelDtlsItxpCd"  onchange="SelDtlsItxpCdOnChange(this);" >
                      <option value="">세목 선택</option>
                    </select>
                    <select title="세세목 선택" style="width:130px;" id="SelSubDtlsItxpCd" name="SelSubDtlsItxpCd" onchange="SelDtlsItxpCdOnChange2(this);">
                      <option value="">세세목 선택</option>
                    </select>
                    <select title="지방비 선택" style="width:100px;display:none;" id="SelShrSorcSn" name="ShrSorcSn">
                      <option value="">지방비 미사용</option>
                    </select>
                    <a href="#dummy" id="ItxpFileEvdc" class="itxpFileEvdcVal" onclick="fnFileEvdc(this);"><img src="/bt/bt_regist2off.gif" alt="증빙파일미등록"/></a>
                    <a href="#dummy" onclick="uf_ItxpLimDtl();"><img type="image" src="/bt/bt_guide1.gif" alt="비목별사용한도"/></a>
                  </td>
                </tr>
              </tbody>
            </table>
            </fieldset>
          </div>
          <div class="guide_bu">비영리기관의 경우 간접비 집행시 증빙서류없이 등록이 가능합니다.</div>
          
          <!--  비목등록 시작 -->
          <div id="divBmokInfo" style="display:none;">
          
          <h3>증빙등록정보</h3>
          <div class="ar">
            <a href="#dummy" onclick="uf_frmNewWinNs(document.frm, '/pop/T01_12_30.jsp', 'GUIDE_LINE', '800', '850');"><img src="/bt/bt_guide2.gif" alt="증빙 Guideline"/></a>
            <a href="#dummy" onclick="fnAddRow();"><img src="/bt/bt_plus.gif" alt="행추가"/></a>
            <a href="#dummy" onclick="fnRemove();"><img src="/bt/bt_minus.gif" alt="행삭제"/></a>
          </div>
          <div class="t05 b10">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="증빙등록정보 상세내용 표" class="tbl_type08" id="ItxpList">
              <caption>증빙등록정보 상세내용 표</caption>
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
                  <th scope="col"><label for="chck">선택</label></th>
                  <th scope="col">증빙구분</th>
                  <th scope="col"><label for="part">품목</label></th>
                  <th scope="col"><label for="usemoney">사용금액</label></th>
                  <th scope="col"><label for="suppmomey">공급금액</label></th>
                  <th scope="col"><label for="vat">부가세</label></th>
                  <th scope="col" class="cellItxpAdtnInfo" style="white-space: nowrap;">인건비<br />내역</th>
                  <th scope="col">&nbsp;</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="ac"><input type="checkbox" name="ItxpChk" id="ItxpChk_0" value="0" /></td>                
                  <td class="ac"><select name='evma_gb'  id='EvmaGb_0'  class='' title='증빙선택' onchange='SplrInfo(this);' style='width:98%' ><option value=''>선택</option><option value='E' >기타</option><option value='T' >전자세금계산서</option><option value='C' >카드</option></select></td>
                  <td class="ac">
                    <input type="hidden" name="EtcEvdcExcCd" id="EtcEvdcExcCd_0" value="" />
                    <input type="hidden" name="EtcEvdcExcNo" id="EtcEvdcExcNo_0" value="" />
                    <div class="posabs etcimpex" id="etcimpex_0" onclick="uf_etcImplExc(this)"><a href="#dummy"><img src="/bt/bt_etcimpex.gif" /></a></div>
                  <input type="text" name="ItxpItem" id="ItxpItem_0"  title="품목" class="inputl" style="width:100px"/></td>
                  <td class="ac"><input type="text" name="ItxpUseAmt" id="ItxpUseAmt_0"  title="사용금액" class="inputl currency" style="width:90px;background-color:#d2d2d2;" value="0" readonly="readonly" onfocus="fnNextFocus(this,'ItxpSplyAmt')" /></td>
                  <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0"  title="공급금액" class="inputl currency" style="width:90px" maxlength="15" onkeyup="calc_amtSet2(this, false,'1');" onblur="calc_amtSet2(this, false,'1');chk_amtSet(this,1);" value="0"/></td>
                  <td class="ac"><input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0"  title="부가세" class="inputl currency" style="width:65px" maxlength="15" onkeyup="calc_amtSet2(this, false,'1');" onblur="calc_amtSet2(this, false,'1');chk_amtSet(this,1);" value="0"/></td>
                  <td class="ac cellItxpAdtnInfo" style="widht:34px;"><span id="ItxpAdtnInfoVal_0" style="display:none;"></span><a href="#dummy"><span id="ItxpAdtnInfo_0" onclick="fnAdtnInfo(this);chk_amtSet(this,1);"><img src="/bt/bt_nonregist.gif" alt="미등록"/></span></a>
                            <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- 참여연구원정보 -->
                            <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- 참여연구원총금액 -->
                  </td>
                  <td class="ac"><a href="#" class="btn-opendtl" style="display:;"><img src="/bt/bt_grid1.gif" alt="추가입력" /></a></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr_0" style="display:none;"  >
                  <td class="sum1" colspan="2"><span class="txt_orb">*</span>공급금액차액 사유</td>
                  <td colspan="6" class="dyncols"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn_0" class="inputl" style="width:98%" value="" /></td>
                </tr>                
                <tr style="display:none;">
                  <td colspan="8" class="dyncols">
                     <!-- 세금계산서/카드 거래처 정보 Div 시작  -->
                     <input type="hidden" name="SplrAuth" id="SplrAuth_0" value="0" />
                     
                    <input type="hidden" id="SplrBzRegSt_0" name="SplrBzRegSt" value="" />      <!-- 사업자등록상태 -->
                    <input type="hidden" id="SplrTaxtTypDv_0" name="SplrTaxtTypDv" value="" />  <!-- 사업자업종유형 -->
                    <input type="hidden" id="SplrCoNm_0" name="SplrCoNm_0" value="" />
                     
                  <div id="divTranInfo_0" style="display:none;">
          <h5 class="fl">거래처정보</h5>
          <div class="t05 b10">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="거래처정보의 사업자번호,상호(법인명),사업장주소 등 내용을 제공한 표" class="tbl_type09">
              <caption>거래처정보의 사업자번호,상호(법인명),사업장주소 등 내용을 제공한 표</caption>
              <colgroup>
              <col width="18%" />
              <col width="35%"/>
              <col width="18%" />
              <col width="29%"/>
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row"><label for="company">대표자명</label></th>
                  <td><span id="d_SplrReprNm_0"> </span></td>
                  <th scope="row"><label for="busmun">사업자등록번호</label></th>
                  <td class="ll"><span id="d_SplrBzRegNo_0"></span> <a href="#dummy" id="ChkBzRegNo_0" class="uf_chkbzregno"><img src="/bt/bt_bzregno.gif" alt="사업자번호확인"/></a></td>
                </tr>
                <tr>
                  <th scope="row"><label for="part">업태</label></th>
                  <td><span id="d_SplrTpopNm_0"></span></td>
                  <th scope="row"><label for="part1">업종</label></th>
                  <td class="ll"><span id="d_SplrTpbzNm_0"></span></td>
                </tr>
                <tr>
                  <th scope="row"><label for="add">사업자주소</label></th>
                  <td class="ll" colspan="3"><span id="d_SplrAdr_0"></span></td>
                </tr>
              </tbody>
            </table>
          </div>
          
          </div>
                    <!--------------------  기타증빙 등록시 표시     ------------------------->
                    <div id="divTranInfo_etc_0" style="display:none;">   <!-- 거래처 정보 Div 시작  -->
                    <h5 class="fl">거래처정보 </h5>
                    
                    <div class="fr" >
                    <label style="padding-top:5px;display:inline-block;"><input type="checkbox" value="1" name="etc_SplrPrsn" id="etc_SplrPrsn_0" onclick="uf_tglSplrPrsn(this)" />개인거래</label>
                    <a href="#"  onclick="uf_popup_etc_dvdc_avl_info();"><img src="/bt/bt_guide9.gif" alt="기타증빙기능비목" class="vc"/></a></div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="거래처정보 상세내용 표" class="tbl_type09">
                      <caption>
                      거래처정보 상세내용 표
                      </caption>
                      <colgroup>
                      <col width="18%" />
                      <col width="37%"/>
                      <col width="18%" />
                      <col width="27%"/>
                      </colgroup>
                      <tbody>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrCoNm_0">회사명</label></th>
                          <td style="white-space: normal;"><input type="text" name="etc_SplrCoNm" id="etc_SplrCoNm_0"  title="회사명" class="inputl" style="width:120px"/>
                            <span id="idBzRegNo_0" style="display:none;"><a href="#dummy" id="aIndex_0" class="uf_popup_bzpr"><img src="/bt/bt_busin.gif" alt="자주쓰는사업자"/></a></span></td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrBzRegNo_0">사업자등록번호</label></th>
                          <td class="ll" style="white-space: normal;"><input type="text" name="etc_SplrBzRegNo" id="etc_SplrBzRegNo_0"  title="사업자등록번호" class="inputl" style="width:80px" maxlength="10" />
                          <a href="#" id="etc_ChkBzRegNo_0" class="uf_chkbzregno"><img src="/bt/bt_bzregno.gif" alt="사업자번호확인"/></a>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="etc_SplrTpopNm_0">업태</label></th>
                          <td><input type="text" name="etc_SplrTpopNm" id="etc_SplrTpopNm_0"  title="업태" class="inputl" style="width:120px"/></td>
                          <th scope="row"><label for="etc_SplrTpbzNm_0">업종</label></th>
                          <td class="ll"><input type="text" name="etc_SplrTpbzNm" id="etc_SplrTpbzNm_0"  title="업종" class="inputl" style="width:100px"/></td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrAdr_0">사업자주소</label></th>
                          <td><input type="text" name="etc_SplrAdr" id="etc_SplrAdr_0"  title="사업자주소" class="inputl" style="width:210px"/></td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrReprNm_0">대표자명</label></th>
                          <td class="ll"><input type="text" name="etc_SplrReprNm" id="etc_SplrReprNm_0"  title="대표자명" class="inputl" style="width:100px"/></td>
                        </tr>
                      </tbody>
                    </table>    
                    </div>
                    </div>
                    
        <div id="SqbnSplrExctnRsn_tbl_0" style="display:none;">
            <input type="hidden" name="SqbnSplrExctnRsnYn" id="SqbnSplrExctnRsnYn_0" value="N"/>
            <input type="hidden" name="RcvNmChkDv" id="RcvNmChkDv_0" value="" />
            <h5 class="fl">휴폐업 집행사유</h5>
            <div class="t05 b10">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="휴폐업거래처 집행사유" class="tbl_type09">
            <caption><span class="txt_orb">*</span> 휴폐업 집행사유</caption>
              <colgroup>
                <col width="18%" />
                <col width="82%"/>
              <tbody>
                <tr>
                  <th scope="row"><label for="SqbnSplrExctnRsn_0">집행사유</label></th>
                  <td class="ll"><input type="text" name="SqbnSplrExctnRsn" id="SqbnSplrExctnRsn_0" class="inputl" style="width:455px;ime-mode:inactive;" colname="휴폐업집행사유" maxlength="200"/></td>
                </tr>
              </tbody>
            </table>
          </div>
          </div>
          
                    <div id="divTranInfoItem_0" style="display:none;">   <!-- 계좌이체요청항목 Div 시작  -->
                    <h5 class="fl">계좌이체 요청항목 </h5>
                    <div class="fr"  id="trnsInfo_0" ><a href="#dummy" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="자계좌이체허용기준"/></a></div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="계좌이체 요청항목 상세내용 표" class="tbl_type09">
                      <caption>
                      계좌이체 요청항목 상세내용 표
                      </caption>
                      <colgroup>
                      <col width="18%" />
                      <col width="37%"/>
                      <col width="18%" />
                      <col width="27%"/>
                      </colgroup>
                      <tbody>
                        <tr id="ExctnStgDv_tr_0" style="display:;">
                          <th scope="row"><span class="txt_orb">*</span> <label for="ExctnStgDv_0">집행구분</label></th>
                          <td colspan="3" class="ll" style="white-space: nowrap;">
                          <div id="idExctnStgDv_td1_0" style="display:block;" >
                            <input type="hidden" name="ExctnStgDv" id="ExctnStgDv_0" value=""  />
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv1_0" value="1" class="radio2"  onclick="exctn_ExctnStgDv_v2(this.value,'1', document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_BNK_NM.value, document.rtr_str_form.S_RCH_ACC_NO.value, '', '', document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);" checked="checked" /><label for="ra1">타계좌이체(연구비계좌경유이체)</label> 
                            <span class="l10"></span>
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv2_0" value="2" class="radio2" onclick="exctn_ExctnStgDv_v2(this.value,'1', document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_BNK_NM.value, document.rtr_str_form.S_RCH_ACC_NO.value, document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_NO.value,document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);"/><label for="ra2">자계좌이체(연구비계좌이체)</label> 
                            <select name='kind_TrnsRchAcc'  id='kind_TrnsRchAcc_0'  class=''  style='width:135px;'  ><option value='B03001' >허용비목</option><option value='B03002' >외자구매</option><option value='B03003' >지로직접납부</option><option value='B03004' >연구비잔액부족</option><option value='B03005' >지체보상금제외이체</option><option value='B03006' >협약전사용금액</option><option value='B03007' >자계좌이체승인기관</option><option value='B03009' >연구지원전문가 인건비(간접비)</option></select>
                            </div>
                            <span id="idExctnStgDv_td2_0" style="display:none;"></span>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="bank">입금계좌</label></th>
                          <td style="white-space: nowrap;"><select name='RcvBnkCd'  id='RcvBnkCd_0'  class='' onchange='uf_OwacNmRst2(this);' style='width:50px' ><option value=''>선택</option><option value='020' >A 은행</option><option value='003' >B 은행</option><option value='004' >C 은행</option></select>
                            <input type="text" name="RcvAcctNo_0" id="RcvAcctNo_0" onchange="uf_OwacNmRst2(this);" title="입금계좌" class="RcvAcctNo inputl" style="width:80px" value="" title="" notnull colname="입금계좌(계좌번호)" maxlength="20" onfocus="chkEncOn(this);" />
                            <a id="idFvrtAcct_0" href="#dummy" class="uf_popup_fvrt_acct"><img src="/bt/bt_acct01.gif" alt="자주쓰는계좌"/></a>
                            <div id="idRcvBnkNm_0" style="float:left;padding-top:4px;display:none;"></div>
                            <a id="idMyAcctNo_0" href="#dummy" class="uf_popup_my_acct" style="float:right;display:none"><img src="/bt/bt_myacctno.gif" alt="자계좌이체용계좌"/></a>
                          </td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="account">예금주</label></th>
                          <td class="ll"><input type="text" name="OwacNm" id="OwacNm_0" title="예금주" class="inputl" style="width:80px;background-color:#d2d2d2;" readonly="readonly" onfocus="this.blur()"/>
                             <a href="#dummy" id="idowacBtn_0" class="uf_tran_owac2"><img src="/bt/bt_acct02.gif" alt="예금주조회"/></a>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row" style="white-space:nowrap;"><div class="txt_orb" id="DynReqStar1_0" style="display:inline;">*</div><label for="WdrwPsbkPrtCtt_0" style="font-size:8pt">연구비통장표시내용</label></th>
                          <td><input type="text" name="WdrwPsbkPrtCtt" id="WdrwPsbkPrtCtt_0" title="연구비통장표시내용" class="inputl" style="width:132px" colname="연구비통장표시내용" notnull maxlength="12" /></td>
                          <th scope="row" style="white-space:nowrap;"><div class="txt_orb" id="DynReqStar2_0" style="display:inline;">*</div><label for="RcvPsbkPrtCtt_0" style="font-size:8pt">거래처통장표시내용</label></th>
                          <td class="ll"><input type="text" name="RcvPsbkPrtCtt" id="RcvPsbkPrtCtt_0" title="거래처통장표시내용" class="inputl" style="width:100px" colname="거래처통장표시내용"  notnull maxlength="12" /></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="AchvInstIndv1Cd_0">기관용개별코드A</label></th>
                          <td><input type="text" name="AchvInstIndv1Cd" id="AchvInstIndv1Cd_0"  title="기관용개별코드A" class="inputl" style="width:132px;ime-mode:disabled;" colname="기관용개별코드A" maxlength="20" value="" /></td>
                          <th scope="row"><label for="AchvInstIndv2Cd_0">기관용개별코드B</label></th>
                          <td class="ll"><input type="text" name="AchvInstIndv2Cd" id="AchvInstIndv2Cd_0" title="기관용개별코드B" class="inputl" style="width:100px;ime-mode:disabled;" colname="기관용개별코드B" maxlength="20" value=""/></td>
                        </tr>
                        <tr>
                          <th scope="row">이체금액</th>
                          <td><span id="txt_trnsAmt_0"></span></td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="TelNo">전화번호</label></th>
                          <td class="ll"><input type="text" name="TelNo" id="TelNo_0" title="전화번호" class="inputl" style="width:100px"  notnull colname="전화번호" datatype="N" maxlength="15" mask="-" /></td>
                        </tr>
                        <tr>
                          <th scope="row">공급가액</th>
                          <td><span id="txt_splyAmt_0"></span></td>
                          <th scope="row">부가가치세액</th>
                          <td class="ll"><span id="txt_vatAmt_0"></span></td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="PaymUsag_0">지급용도</label></th>
                          <td colspan="3" class="ll"><input type="text" name="PaymUsag" id="PaymUsag_0" title="지급용도" class="inputl" style="width:99%;ime-mode:active;" notnull colname="지급용도" maxlength="100"/></td>
                        </tr>
                      </tbody>
                    </table>
                    
                    </div>
                    </div>
                    <p class="ar b05"><!-- <a href="#" class="btn-closedtl"><img src="/bt/bt_grid_close.gif" alt="닫기"></a> --></p>
                    <div id="frmElmtArea_0" class="frmElmtArea">
                    <!-- 동적폼 추가 공간 -->
                    </div>
                  </td>
                </tr>

              </tbody>
              <tfoot>
                <tr class="blue_line">
                <th colspan="3">합계</th>
                <td class="ar"><span id="tot_TrnsAmt">0</span></td>
                <td class="ar"><span id="evdc_splyAmtTxt">0</span></td>
                <td class="ar"><span id="evdc_vatAmtTxt">0</span></td>
                <th class="cellItxpAdtnInfo"></th>
                <th></th>
              </tfoot>
            </table>
          </div>
          
          <h3>합계</h3>
          <div class="t05 b10">

            <table width="672" border="0" cellspacing="0" cellpadding="0" summary="합계 상세내용 표" class="tbl_type02">
              <caption>합계 상세내용 표</caption>
              <colgroup>
              <col width="18%" />
              <col width="35%"/>
              <col width="18%" />
              <col width="29%"/>
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row">공급금액</th>
                  <td><span id="tot_splyAmt">0</span></td>
                  <th scope="row">부가세액</th>
                  <td class="ll"><span id="tot_vatAmt">0</span></td>
                </tr>
              </tbody>
            </table>
          </div>
          <!-- action bt start -->
          <div class="ar"> 
          <a href="#dummy" onclick="uf_itxp_save('0');" class="bt_action4-1" title="비목등록"><span class="bt_sp">비목등록</span></a> 
          <a href="#dummy" onclick="uf_itxp_save('1');" class="bt_action4-1" title="사용요청"><span class="bt_sp">사용요청</span></a> 
          <a href="#dummy" onclick="uf_itxp_reset();" class="bt_action3-1" title="초기화"><span class="bt_sp">초기화</span></a> 
          </div>
          
          
          </div>
          <!-- 비목등록 끝 -->
          <!-- //action bt end// -->
          <!-- 안내 가이드 start -->
          <div class="guide_box2" id="guide">
            <div class="guide_boxt2">
              <p class="txt_title fl">비목우선등록 안내</p>
              <p class="ar txt_s">* 안내를 꼭 확인하세요.
                <a href="#" id="btn-guide"><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a>
              </p>
            </div>
            <div class="guide_boxc2">
              <div class="point_title" id="divMyAcctTransAlwn" style="display:none;">실시간통합연구비관리시스템(RCMS) 적용에 대한 유예 신청 기업이므로 자계좌이체(연구비계좌이체)만 가능함</div>
              <div class="point_title">비목우선등록</div>
              <ul class="comment">
                <li><span class="txt_or">세목과 세세목리스트, 세세목별 필요증빙 문서는 "정보마당 > 사업비 비목안내” </span>에서 확인할 수 있습니다.</li>
                <li>계좌이체 요청항목을 등록하는 방법은 '타계좌이체'와 '자계좌이체' 2가지가 있습니다.</li>
              </ul>
              <ul class="comment_list">
                <li>1) 타계좌이체 : <span class="txt_or">RCMS → 수행기관연구비계좌 → 거래처계좌로 실시간 이체</span>되며, RCMS 연구비는 타계좌이체로 집행해야 함</li>
                <li>2) 자계좌이체 : <span class="txt_or">RCMS → 수행기관연구비계좌로 실시간 이체</span>되며, 자계좌이체 허용기준일 경우에만 가능</li>
              </ul>
              <div class="point_title">기관용개별코드란?</div>
              <ul class="comment">
                <li>연구기관이 본 화면에서 입력한 값을 은행에서 전산적인 거래내역을 받을 때 추가정보로 내려주는 값입니다.</li>
              </ul>
            </div>
            <p class="guide_boxb2"></p>
          </div>
          <!-- //안내 가이드 end// -->
        </div>
      </div>
      <!-- //증빙우선등록 그룹 end//-->
      </form>
    </div>
    <!-- //content end// -->
    


    </div>
    <!-- //contaniner end//-->
    <div class="cb"></div>

    <!-- footer start -->
    <%@ include file="/inc/jspFooter.jsp" %>
    <!-- //footer end// -->
    
    <!-- 퀵메뉴 start -->
    <%@ include file="/inc/quickMenu.jsp" %>
    <!-- //퀵메뉴 end// -->
    
</div><!-- wrapper end -->


<script type="text/javascript">
    jQuery('.currency').ForceNumericOnly();
    jQuery(document).ready(function(){
        $("#autoSearchBtn").show();
        //자주쓰는사업자 버튼 이벤트
        $('.uf_popup_bzpr').live('click',function(){
            var ridx = "0";

            if( typeof document.frm.etc_SplrCoNm.length != 'undefined' && document.frm.etc_SplrCoNm.length > 0 ){
                ridx = $(this).attr('id').split('_')[1];
            }
            uf_popup_bzpr(ridx);
            return false;
        });
        
        
        //자주쓰는계좌 버튼 이벤트
        $('.uf_popup_fvrt_acct').live('click',function(){
            var ridx = "0";
            ridx = $(this).attr('id').split('_')[1];
            uf_popup_fvrt_acct(ridx);
            return false;
        });
        
        //자계좌이체용 계좌 버튼 이벤트
        $('.uf_popup_my_acct').live('click',function(){
            var ridx = "0";
            ridx = $(this).attr('id').split('_')[1];
            uf_popup_my_acct(ridx);
        });
        
        
        //사업자확인 버튼 이벤트
        $('.uf_chkbzregno').live('click',function(){
            var ridx = "0";
            var _id = $(this).attr('id').split('_');
            ridx = _id[_id.length-1];
            uf_chkbzregno('1',ridx);
            return false;
        });
        
        
        //예금주조회 버튼 이벤트
        $('.uf_tran_owac2').live('click',function(){
            
            var bzRegNo = "";
            var ridx = "0";
            
            var _id = $(this).attr('id').split('_');
            ridx = _id[_id.length-1];
            
            var _evdc_dv = $('#EvmaGb_'+ridx).val();
            
            if( $('#SplrAuth_'+ridx).val() != '1' && 'C' != _evdc_dv){
                alert('사업자등록번호확인을 진행하시기 바랍니다.');
                return false;   
            }
            //타계좌선택
            //alert($('#ExctnStgDv1_'+ridx).attr('checked') + ' ' +  $('#SplrAuth_'+ridx).val() + ' ' + _evdc_dv)
            if( $('#ExctnStgDv1_'+ridx).attr('checked') == true  ){ 
                
                if( 'E' == _evdc_dv ){
                    bzRegNo = $('#etc_SplrBzRegNo_'+ridx).val();
                }else if( 'C' == _evdc_dv ){
            
                }else if( 'T' == _evdc_dv ){
                    bzRegNo = $('#T_SplrBzRegNo_'+ridx).val();
                }else{
                    alert('증빙을 선택하세요')
                    return false;
                }
            }
            
            $('#RcvNmChkDv_'+ridx).val('');
            if( true == chkAcnmAuthPass($('#SelSubDtlsItxpCd').val()) ){
                $('#RcvNmChkDv_'+ridx).val('B06006'); //[RNDB06] B06006 실명조회예외세목
                uf_tran_owac2(document.frm, document.rtr_str_form, ridx);   //예금주만 조회
            }else{
                if( bzRegNo == '0000000000' && $('#etc_SplrPrsn_'+ridx).attr('checked') == true ){
                    $('#RcvNmChkDv_'+ridx).val('B06008'); //[RNDB06] B06008 개인거래처
                    uf_tran_owac2(document.frm, document.rtr_str_form, ridx);   //예금주만 조회
                }else if( bzRegNo == '0000000000' && $('#etc_SplrPrsn_'+ridx).attr('checked') == false ){
                    alert('거래처 사업자등록번호를 확인하세요.');
                }else if( bzRegNo == '8888888888' ){
                    $('#RcvNmChkDv_'+ridx).val('B06009'); //[RNDB06] B06009 해외거래처
                    uf_tran_owac2(document.frm, document.rtr_str_form, ridx);   //예금주만 조회
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
    
    //1. 신규과제
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
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //연구수당
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //인건비
      //연구과제추진비
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //국내여비
        arrSubDtlsItxpOptInfo[15] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //사무용품비
        arrSubDtlsItxpOptInfo[16] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //야근식대
        arrSubDtlsItxpOptInfo[17] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //연구과제추진비
        arrSubDtlsItxpOptInfo[18] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //연구환경유지비
        arrSubDtlsItxpOptInfo[19] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //회의비
        
     
    //2. 진행과제
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
        arrSubDtlsItxpOptInfo[11] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //연구수당
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //인건비
      //연구과제추진비
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //국내여비
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //사무용품비
        arrSubDtlsItxpOptInfo[15] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //야근식대
        arrSubDtlsItxpOptInfo[16] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //연구과제추진비
        arrSubDtlsItxpOptInfo[17] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //연구환경유지비
        arrSubDtlsItxpOptInfo[18] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //회의비
        
        
    //3. 정산과제(보고서 미제출)
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
        arrSubDtlsItxpOptInfo[9] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //연구수당
        arrSubDtlsItxpOptInfo[10] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //인건비
      //연구과제추진비
        arrSubDtlsItxpOptInfo[11] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //국내여비
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //사무용품비
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //야근식대
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //연구과제추진비
        arrSubDtlsItxpOptInfo[15] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //연구환경유지비
        arrSubDtlsItxpOptInfo[16] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //회의비
        
        
    //4. 정산과제(보고서 제출 완료)
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
        arrSubDtlsItxpOptInfo[7] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //연구수당
        arrSubDtlsItxpOptInfo[8] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //인건비
      //연구과제추진비
        arrSubDtlsItxpOptInfo[9] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //국내여비
        arrSubDtlsItxpOptInfo[10] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //사무용품비
        arrSubDtlsItxpOptInfo[11] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //야근식대
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //연구과제추진비
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //연구환경유지비
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //회의비
        
            
    }

    
    
    SelDtlsItxpCd[0] = "B0201";
    SelDtlsItxpNm[0] = "연구시설·장비 및 재료비";
    SelSubDtlsItxpCd[0] = new Array();
    SelSubDtlsItxpNm[0] = new Array();
    SelSubDtlsItxpCd[0][0]  = "B0201009";    SelSubDtlsItxpNm[0][0]  = "건물구입비";
    SelSubDtlsItxpCd[0][1]  = "B0201010";    SelSubDtlsItxpNm[0][1]  = "건물임차비";
    SelSubDtlsItxpCd[0][2]  = "B0201005";    SelSubDtlsItxpNm[0][2]  = "건축비";
    SelSubDtlsItxpCd[0][3]  = "B0201006";    SelSubDtlsItxpNm[0][3]  = "부지매입비";
    SelSubDtlsItxpCd[0][4]  = "B0201008";    SelSubDtlsItxpNm[0][4]  = "부지임차비";
    SelSubDtlsItxpCd[0][5]  = "B0201007";    SelSubDtlsItxpNm[0][5]  = "부지조성비";
    SelSubDtlsItxpCd[0][6]  = "B0201015";    SelSubDtlsItxpNm[0][6]  = "시약·재료구입비";
    SelSubDtlsItxpCd[0][7]  = "B0201018";    SelSubDtlsItxpNm[0][7]  = "시작품제작비";
    SelSubDtlsItxpCd[0][8]  = "B0201019";    SelSubDtlsItxpNm[0][8]  = "시제품제작비";
    SelSubDtlsItxpCd[0][9]  = "B0201016";    SelSubDtlsItxpNm[0][9]  = "시험분석료";
    SelSubDtlsItxpCd[0][10] = "B0201020";    SelSubDtlsItxpNm[0][10] = "시험설비제작비";
    SelSubDtlsItxpCd[0][11] = "B0201001";    SelSubDtlsItxpNm[0][11] = "연구시설·장비구입비";
    SelSubDtlsItxpCd[0][12] = "B0201021";    SelSubDtlsItxpNm[0][12] = "연구시설·장비사용비";
    SelSubDtlsItxpCd[0][13] = "B0201002";    SelSubDtlsItxpNm[0][13] = "연구시설·장비설치비";
    SelSubDtlsItxpCd[0][14] = "B0201004";    SelSubDtlsItxpNm[0][14] = "연구시설·장비운영비";
    SelSubDtlsItxpCd[0][15] = "B0201003";    SelSubDtlsItxpNm[0][15] = "연구시설·장비임차비";
    SelSubDtlsItxpCd[0][16] = "B0201017";    SelSubDtlsItxpNm[0][16] = "전산처리·관리비";

    SelDtlsItxpCd[1] = "B0202";
    SelDtlsItxpNm[1] = "연구활동비";
    SelSubDtlsItxpCd[1] = new Array();
    SelSubDtlsItxpNm[1] = new Array();
    SelSubDtlsItxpCd[1][0]  = "B0202010";   SelSubDtlsItxpNm[1][0]  = "공공요금·세금";
    SelSubDtlsItxpCd[1][1]  = "B0202022";   SelSubDtlsItxpNm[1][1]  = "교육훈련비";
    SelSubDtlsItxpCd[1][2]  = "B0202001";   SelSubDtlsItxpNm[1][2]  = "국내여비";
    SelSubDtlsItxpCd[1][3]  = "B0202002";   SelSubDtlsItxpNm[1][3]  = "국외여비";
    SelSubDtlsItxpCd[1][4]  = "B0202032";   SelSubDtlsItxpNm[1][4]  = "기술도입비";
    SelSubDtlsItxpCd[1][5]  = "B0202019";   SelSubDtlsItxpNm[1][5]  = "기술정보수집비";
    SelSubDtlsItxpCd[1][6]  = "B0202041";   SelSubDtlsItxpNm[1][6]  = "기업지원비";
    SelSubDtlsItxpCd[1][7]  = "B0202043";   SelSubDtlsItxpNm[1][7]  = "네트워크 운영비";
    SelSubDtlsItxpCd[1][8]  = "B0202020";   SelSubDtlsItxpNm[1][8]  = "도서·문헌구입비";
    SelSubDtlsItxpCd[1][9]  = "B0202042";   SelSubDtlsItxpNm[1][9]  = "마케팅홍보비";
    SelSubDtlsItxpCd[1][10] = "B0202005";   SelSubDtlsItxpNm[1][10] = "복사비";
    SelSubDtlsItxpCd[1][11] = "B0202013";   SelSubDtlsItxpNm[1][11] = "비품구입비";
    SelSubDtlsItxpCd[1][12] = "B0202012";   SelSubDtlsItxpNm[1][12] = "사무용품비";
    SelSubDtlsItxpCd[1][13] = "B0202023";   SelSubDtlsItxpNm[1][13] = "세미나개최비";
    SelSubDtlsItxpCd[1][14] = "B0202036";   SelSubDtlsItxpNm[1][14] = "세부과제관리비";
    SelSubDtlsItxpCd[1][15] = "B0202030";   SelSubDtlsItxpNm[1][15] = "속기료";
    SelSubDtlsItxpCd[1][16] = "B0202011";   SelSubDtlsItxpNm[1][16] = "수수료";
    SelSubDtlsItxpCd[1][17] = "B0202037";   SelSubDtlsItxpNm[1][17] = "야근식대";
    SelSubDtlsItxpCd[1][18] = "B0202038";   SelSubDtlsItxpNm[1][18] = "연구인력활용비";
    SelSubDtlsItxpCd[1][19] = "B0202040";   SelSubDtlsItxpNm[1][19] = "연계활동비";
    SelSubDtlsItxpCd[1][20] = "B0202028";   SelSubDtlsItxpNm[1][20] = "원고료";
    SelSubDtlsItxpCd[1][21] = "B0202004";   SelSubDtlsItxpNm[1][21] = "인쇄비";
    SelSubDtlsItxpCd[1][22] = "B0202014";   SelSubDtlsItxpNm[1][22] = "전문가활용비";
    SelSubDtlsItxpCd[1][23] = "B0202039";   SelSubDtlsItxpNm[1][23] = "전문인력양성비";
    SelSubDtlsItxpCd[1][24] = "B0202035";   SelSubDtlsItxpNm[1][24] = "정보DB 및 네트워크 사용료";
    SelSubDtlsItxpCd[1][25] = "B0202034";   SelSubDtlsItxpNm[1][25] = "컨설팅비";
    SelSubDtlsItxpCd[1][26] = "B0202029";   SelSubDtlsItxpNm[1][26] = "통역료";
    SelSubDtlsItxpCd[1][27] = "B0202033";   SelSubDtlsItxpNm[1][27] = "특허정보조사비";
    SelSubDtlsItxpCd[1][28] = "B0202024";   SelSubDtlsItxpNm[1][28] = "학회·세미나참가비";
    SelSubDtlsItxpCd[1][29] = "B0202044";   SelSubDtlsItxpNm[0][29] = "협의회 운영비";
    SelSubDtlsItxpCd[1][30] = "B0202021";   SelSubDtlsItxpNm[1][30] = "회의비";

    SelDtlsItxpCd[2] = "B0203";
    SelDtlsItxpNm[2] = "연구수당";
    SelSubDtlsItxpCd[2] = new Array();
    SelSubDtlsItxpNm[2] = new Array();
    SelSubDtlsItxpCd[2][0]  = "B0203001";    SelSubDtlsItxpNm[2][0]  = "연구수당";

    SelDtlsItxpCd[3] = "B0204";
    SelDtlsItxpNm[3] = "인건비";
    SelSubDtlsItxpCd[3] = new Array();
    SelSubDtlsItxpNm[3] = new Array();
    SelSubDtlsItxpCd[3][0]  = "B0204001";    SelSubDtlsItxpNm[3][0]  = "인건비";

    SelDtlsItxpCd[4] = "B0206";
    SelDtlsItxpNm[4] = "연구과제추진비";
    SelSubDtlsItxpCd[4] = new Array();
    SelSubDtlsItxpNm[4] = new Array();
    SelSubDtlsItxpCd[4][0]  = "B0206001";    SelSubDtlsItxpNm[4][0]  = "국내여비";
    SelSubDtlsItxpCd[4][1]  = "B0206002";    SelSubDtlsItxpNm[4][1]  = "사무용품비";
    SelSubDtlsItxpCd[4][2]  = "B0206005";    SelSubDtlsItxpNm[4][2]  = "야근식대";
    SelSubDtlsItxpCd[4][3]  = "B0206006";    SelSubDtlsItxpNm[4][3]  = "연구과제추진비";
    SelSubDtlsItxpCd[4][4]  = "B0206003";    SelSubDtlsItxpNm[4][4]  = "연구환경유지비";
    SelSubDtlsItxpCd[4][5]  = "B0206004";    SelSubDtlsItxpNm[4][5]  = "회의비";

    SelDtlsItxpCd[5] = "B0301";
    SelDtlsItxpNm[5] = "간접비";
    SelSubDtlsItxpCd[5] = new Array();
    SelSubDtlsItxpNm[5] = new Array();
    SelSubDtlsItxpCd[5][0] = "B0301001";    SelSubDtlsItxpNm[5][0] = "간접비";
    
    
    
    mkDtlsItxpCd("0");
    mkShrSorcSn("0");
    set_evdc_amt();
    calc_amtSet(this, true);
    DisplayDivMyAcctTransAlwn();
    
}


function setT12_01_00_0_r2(argMtSeqNo){
    if(!argMtSeqNo) return;
    
    if("G00000000000001" == argMtSeqNo){  //1. 신규과제
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }else if("G00000000000002" == argMtSeqNo){  //2. 진행과제
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }else if("G00000000000003" == argMtSeqNo){  //3. 정산과제(보고서 미제출)
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }else if("G00000000000004" == argMtSeqNo){    //4. 정산과제(보고서 제출 완료)
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }
}    
</script>