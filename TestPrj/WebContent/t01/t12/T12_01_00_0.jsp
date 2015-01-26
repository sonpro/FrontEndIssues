<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T12_02_00_0.jsp
 *   Description        : 증빙우선등록
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
<%@ page import="jex.json.JSONObject"%>


<%
JSONObject usr_data = new JSONObject();                //Json 생성 ( 조회결과값 담기 )
JSONObject pt_header = new JSONObject();                //Json 생성 ( 조회결과값 담기 )
JSONObject sbjt_data = new JSONObject();                //Json 생성 ( 조회결과값 담기 )
%>
<!-- //head end -->

<title>증빙우선 등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
            alert("에러가 발생하였습니다. 잠시후 다시 시도해주세요.");
        }
    }
}
jQuery(document).ready(function() {
    
    //조회버튼 컨트롤
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
        if( confirm('등록중인 비목내역이 존재합니다. 초기화 하시겠습니까?') ){
            autoSbjtFormGen();
        }
    }else{
        autoSbjtFormGen();
    }
}

//==================================================================
//선택과제 form 생성 관련 method
//선택과제정보 폼데이터 사용하기 전 autoSbjtFormGen() 메소드 호출바랍니다..
//==================================================================
function uf_autoSbjtSchCallBack(param){
    
    sbjtParam = param;
    var rtr_str = document.rtr_str_form;

    if( $('#SBJT_LIST_SCH_AUTO').val() == 'N' ){
        $('#SBJT_LIST_SCH_AUTO').val('Y');
    }
    
    if(!param){
        alert("잘못된 접근입니다.");
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
            //S_AGCF_YN : N  :: 협약정보기본값 N
            //S_AIFW : 0  :: 펌뱅킹 기본값 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 신규과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else if(_COOKIE_DATA_41_04 == false){
            //S_AGCF_YN : Y  :: 협약정보기본값 N
            //S_AIFW : 0  :: 펌뱅킹 기본값 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='3' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 신규과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else{
            //S_AGCF_YN : Y  :: 협약정보기본값 N
            //S_AIFW : 1  :: 펌뱅킹 기본값 0
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='3' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 신규과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }
    }else if("2" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 진행과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
    }else if("3" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
    }else if("4" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='N' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
    }
        
    
    
    
    document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
    //=============================
    //실행시킬 메소드 들어갈 위치
    //=============================

    if( "Y" == "N" ){
        alert("기관정보가 확인되지 않아 해당 페이지로 이동하겠습니다.");
        uf_frmNewWinNs(document.frm, '/pop/P01_00_40.jsp', 'membCheck', '680', '600');
        return;
    }else if( rtr_str.S_AGCF_YN.value == "N" ){
        alert("협약정보가 확인되지 않아 해당 메뉴로 이동하겠습니다.");
        fn_url("/t04/t41/T41_08_00.jsp");

    //펌뱅킹 이용을 신청했는지 안했는지 확인         
    }else if( rtr_str.S_AIFW.value == "0" || rtr_str.S_AIFW.value == null || rtr_str.S_AIFW.value == "" ){
        alert("펌뱅킹 이용신청을 하지 않으셔서 해당 메뉴로 이동하겠습니다.");
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
    
function resetAllControl(){
    var frm = document.frm;
    
    // 배열 초기화
    SelDtlsItxpCd           = new Array();
    SelDtlsItxpNm           = new Array();
    SelSubDtlsItxpCd        = new Array();
    SelSubDtlsItxpNm        = new Array();
    
    
    BzExpSprnExctnYn    = "N";
    SelShrSorcSn        = new Array();
    SelShrSorcNm        = new Array();
    
    // 각 입력 텍스트 컨트롤 초기화
    $("#frm").find('input').each(function(){
        $(this).val("");
    });

    // 거래처 정보 초기화
    document.getElementById("d_SplrReprNm").innerHTML       = "";
    document.getElementById("d_SplrBzRegNo").innerHTML      = "";
    document.getElementById("d_SplrTpopNm").innerHTML       = "";
    document.getElementById("d_SplrTpbzNm").innerHTML       = "";
    document.getElementById("d_SplrAdr").innerHTML          = "";

    // 집행구분 초기화
    exctn_ExctnStgDv_v2("1",'1', 
                        document.rtr_str_form.S_RCH_ACC_BNK_CD.value, 
                        document.rtr_str_form.S_RCH_ACC_BNK_NM.value, 
                        document.rtr_str_form.S_RCH_ACC_NO.value,
                        '',
                        '', 
                        '', 
                        document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value);
    
    // 비목테이블(상단) 초기화
    fnItxpInit();
    
    
    
    // 비목테이블(하단) 초기화
    document.getElementById("evdc_splyAmtTxt").innerHTML    = "0";
    document.getElementById("evdc_vatAmtTxt").innerHTML     = "0";
    document.getElementById("tot_TrnsAmt").innerHTML        = "0";
    document.getElementById("tot_splyAmt").innerHTML        = "0";
    document.getElementById("tot_vatAmt").innerHTML         = "0";
    
    // 계좌이체 요청항목 초기화
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
    
    // 폼 초기화
    frm.action = "";
    frm.target = "";
    
    frm.Evdc_Dv.value = frm.evma_gb.value;
    frm.InstCrdSetlMeth.value   =   "1";            //카드결제방식 기본값(1:집계)  20121121 modified  by sonpro
    
    //공금금차액사유 초기화
    $('#SplyAmtDfamtRsn_tr').hide();
    $('#SplyAmtDfamtRsn').val('');
    
    //사업자확인 초기화
    $('#etc_ChkBzRegNo_0'   ).show();
    $('#ChkBzRegNo_0'       ).show();
    $('#SplrAuth'           ).val('0');
    
    SplrInfoDisplay();
    
    // 2011.12.12 태동현 START
    // 카이스트 대응으로 인해 기관용개별코드를 수정할 수 없도록 수정
    if("00006277" == document.rtr_str_form.S_AGRMT_INST_ID.value){
        document.getElementById("AchvInstIndv1Cd").readOnly                 = true;
        document.getElementById("AchvInstIndv1Cd").style.backgroundColor    = "#d2d2d2";
    }
    // 2011.12.12 태동현 END
}

function setDefaultKindTrnsRchAcc(){
    // 허용비목을 디폴트로 설정
    document.frm.kind_TrnsRchAcc.options[0].selected    = true;
}
/******************************************************************
 * set_evdc_amt      비목 첫번째 row에 증빙금액 세팅
 * @param
 * @return
 *  page마다 customizing 되었음
******************************************************************/
function set_evdc_amt(){
    var frm =   document.frm;
    //--------------------------------
    //  비목금액세팅
    //--------------------------------
    if(("T" == frm.Evdc_Dv.value) || ("C"==frm.Evdc_Dv.value)){
        document.getElementById("ItxpUseAmt_0"      ).value     = toMoney(frm.Evdc_SumAmt.value);                                   //합계금액
        document.getElementById("ItxpSplyAmt_0"     ).value     = toMoney(frm.Evdc_SplyAmt.value);                                  //공급금액
        document.getElementById("ItxpVatAmt_0"      ).value     = toMoney(frm.Evdc_VatAmt.value);                                   //부가가치세액
    }
}

// 비목 테이블 콤보
var SelDtlsItxpCd = new Array();
var SelDtlsItxpNm = new Array();
var SelSubDtlsItxpCd = new Array();
var SelSubDtlsItxpNm = new Array();

var BzExpSprnExctnYn = "N"; //사업비분리집행 여부
var SelShrSorcSn = new Array();
var SelShrSorcNm = new Array();

//지방비 선택
function mkShrSorcSn(tObjIdx){
    var tObj = document.all["SelShrSorcSn_"+tObjIdx];

    tObj.options.length = 1;
    if( BzExpSprnExctnYn == "Y" ){
        tObj.options[0] = new Option("미사용",'',true,false);
    
        for(var i=0 ; i < SelShrSorcSn.length; i++){
            tObj.options[i+1] = new Option(SelShrSorcNm[i], SelShrSorcSn[i]);
        }
        
        //20140305 실습환경 지방비구분 사용 안함
        //$('.dycell').show();
    }else{
        tObj.options[0] = new Option("미사용",'',true,false);
        $('.dycell').hide();
    }
}

function mkDtlsItxpCd(tObjIdx){
    var tObj = document.all["SelDtlsItxpCd_"+tObjIdx];
    var opt_name = "선택";

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
 * SelDtlsItxpCdOnChange         세목변경
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
    var opt_name = "선택";
    
    // 증빙서류/인건비 삭제 처리
    if(!fnDelete(obj, tObjIdx)) return;
    
    // 세목/세세목 변경 처리
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
 * SelDtlsItxpCdOnChange         세세목변경시 실행함수
 * @param
 * @return
******************************************************************/
function SelDtlsItxpCdOnChange2(obj){
    
    var frm = document.frm;
    var frm_key =   document.rtr_str_form;
    
    var objIdx = obj.id.split('_')[1];
    
    
    //개인거래 초기화
    frm.etc_SplrPrsn.checked = false;
    frm.etc_SplrPrsn.disabled = false;
    $('#etc_SplrBzRegNo_0').attr('disabled',false).val('').css('backgroundColor','#ffffff');
    
    
    //연구과제추진비
    if( obj.value == "B0206006"){
        var todate = new Date().getDate();
        var cookieValue = getCookie("cookie_P01_31_00.jsp");

        if(cookieValue==todate) return false;

        var url = "/pop/T01_31_00.jsp";

        uf_frmNewWinNs(frm, url, 'NEW_ITXP_GUIDE', 800, 715, 'no');
        removeTempAttribute(frm);
    }
    
    //기타증빙예외 처리
    uf_etcImplExc(obj);
    
    //개인거래 설정
    setSplrPrsn(frm,frm_key);
    
    //기타증빙예외 비목 체크
    if( false == chkEtcEvdcExc() ){
        return false;
    }
    
    //인건비성 비목선택시 인건비성지급계좌 설정
    PsnlItxpAcctNoSet(obj);
}

/******************************************************************
 * PsnlItxpAcctNoSet         인건비성지급계좌설정(내,외부인건비/연구수당)
 * @param
 * @return
******************************************************************/
function PsnlItxpAcctNoSet(obj){
    var ExctnStgDv = (true==document.frm.ExctnStgDv[0].checked) ? "1" : "2";
    var frm_key =   document.rtr_str_form;
    var frm     =   document.frm;
    

    frm.S_PSNL_ACCT_USEYN.value = document.rtr_str_form.S_PSNL_ACCT_USEYN.value;
    
    //카드로 인건비성 비목등록 거부
    //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
    if( document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y" && "C" == frm.Evdc_Dv.value ){     
        if( 'Y' == itxpPsnlYn(obj.value) ){
            alert("카드는 인건비성 비목을 등록 할 수 없습니다.\n\n[내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비]");
            obj.selectedIndex = 0;
            return;
        }
    }
    
    var ItxpPsnl = chkItxpPsnl(document.rtr_str_form.S_PSNL_ACCT_USEYN.value);
    if(ExctnStgDv == "1" || ( document.frm.itxp_cnt.value > 1 && 0 != ItxpPsnl) ){
        if( "C" != frm.Evdc_Dv.value ){     
            if( (document.frm.itxp_cnt.value > 1 && 0 != ItxpPsnl) || 'Y' == itxpPsnlYn(obj.value) ){   //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
                //카드증빙이 아니고 인건비성지급계좌를 사용하는 기관인 경우에는 인건비성 지급계좌로 설정.
                if(document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y"){
                    
                          
                    var strVal  =   "003|20000000000|㈜RCMS";
                    
                    arrVal = strVal.split("|");
                    
                    document.getElementById("idFvrtAcct").style.display         = "none";
                    document.getElementById("idowacBtn").style.display          = "none";
                    document.getElementById("idExctnStgDv_td1").style.display   = "none";
                    document.getElementById("idExctnStgDv_td2").style.display   = "inline";
                    document.getElementById("idExctnStgDv_td2").innerHTML       = "인건비성지급계좌 사용기관";
                    document.getElementById("RcvBnkCd").value                   = arrVal[0];
                    document.getElementById("RcvAcctNo").value                  = (arrVal[1]=='null')?'':arrVal[1];
                    document.getElementById("OwacNm").value                     = (arrVal[2]=='null')?'':arrVal[2];
                    document.getElementById("RcvBnkCd").disabled                = true;
                    document.getElementById("RcvAcctNo").disabled               = true;
                    document.getElementById("OwacNm").disabled                  = true;
                    
                    if(frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value == frm_key.S_RCH_ACC_BNK_CD.value
                    && frm.RcvAcctNo.value == frm_key.S_RCH_ACC_NO.value){
                        document.frm.ExctnStgDv[0].checked = false; //타계좌이체
                        document.frm.ExctnStgDv[1].checked = true;  //자계좌이체
                    }else{
                        document.frm.ExctnStgDv[0].checked = true;  //타계좌이체
                        document.frm.ExctnStgDv[1].checked = false; //자계좌이체
                    }
                }
            }else{
                setEnabledBnkAcctInfo();
            }
        }
    }
}

// 테이블 로우 추가
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
                jQuery(this).html('<img src="/bt/bt_nonregist.gif" alt="미등록">');
            }
        }
    });
}

/******************************************************************
 * fnRemove      테이블 로우 삭제
 * @param
 * @return
******************************************************************/
function fnRemove(){
    var tbody = jQuery("#ItxpList tbody");
    
    jQuery(jQuery(tbody).find("tr")).each(function(){
        if(jQuery(":input[type=checkbox]", this)[0].checked){
            
            // 전체 삭제 방지
            if(document.frm.itxp_cnt.value==1){
                alert("1건 이상의 비목등록정보가 필요합니다.");
                return;
            }
            
            //---------------------------------------------------------
            // 유기성 2011/12/02
            // EDMS 화면연계IF - 비목등록삭제
            try{
                //inc/sbjt_list_sch_auto.jsp 파일에서 동적으로 생성된 객체
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
            
            // 테이블 필드 id 변경
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

// 비목테이블 초기화
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

// 기등록건 선택 or 입력
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
        jQuery("#ItxpFileEvdc_"+idx).html('<img src="/bt/bt_nonregist.gif" alt="미등록">');
    }
    if(adtnInfo!=""){
        jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_nonregist.gif" alt="미등록">');
    }
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
    
    if(""!=$("#EdmsDocId1_"+tObjIdx).val()){
        mode = "update";
        edmsDocId = $("#EdmsDocId1_"+tObjIdx).val();
    }

    document.frm.doc_dv.value="1";
    uf_edmsUploadFile(mode,tObjIdx, edmsDocId);
}
/******************************************************************
 * fnAdtnInfo        인건비내역 등록
 * @param
 * @return
******************************************************************/
function fnAdtnInfo(obj,idx){
    var frm     =   document.rtr_str_form;
    var frm_main    =   document.frm;
    var url, result,amt,param,arr_result;
    var tObjIdx = obj.id.split("_")[1];

    //세목선택체크
    if(!chk_frm_value("SelDtlsItxpCd",tObjIdx)) return;
    //세세목선택체크
    if(!chk_frm_value("SelSubDtlsItxpCd",tObjIdx))  return;
    //인건비,연구수당인경우만 등록가능
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
            $("#ItxpAdtnInfo_"+tObjIdx).html('<img src="/bt/bt_regist4.gif" alt="등록">');
            $("#rchrInfo_"+tObjIdx).val(result);            //참여연구원정보 문자열(연구원구분자 "/" 상세정보 구분자",")
        }else{
        }
    }
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
    if(!chk_frm_value("SelDtlsItxpCd",idx)) return;
    //세세목선택체크
    if(!chk_frm_value("SelSubDtlsItxpCd",idx))  return;
    //품목체크
    if(!chk_frm_value("ItxpItem",idx))  return;
    //금액체크
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
        //연계키생성(증빙구분자(1)+시스템일자(8)+시스템시간(6)+"-"+협약일련번호(15)+"-"+기관ID(20) )
        //edmsDocId = "P"+getDateTime("YYYY")+getDateTime("MM")+getDateTime("DD")+getDateTime("HH")+getDateTime("NN")+getDateTime("SS")+"-"+frm_key.S_AGRMT_SEQ_NO.value+"-"+frm_key.S_AGRMT_INST_ID.value;
        
        //2011 신규 EDMS 연계키 생성
        //연계키생성( PMSID + 과제ID + 협약일련번호 + 협약기관 + 사용일 + 증빙구분 + 비목 + 세목 + 세세목)
        dockey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
        frm.docKey.value    =   dockey;

        // EDMS첨부파일등록호출
        //edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "http://61.41.119.163/rcmsConnect.do");
        edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
        //edmsUploadFile("frm", "edms101", "CREATE", "PLAN", edmsDocId, "SMTEST" , frm_key.S_PMS_ID.value, "http://61.41.119.163/rcmsConnect.do");
    }else{
        // EDMS첨부파일등록호출
        edmsUploadFileNew("frm", mode, edmsDocId, usrId,hmpwRoleDv, "/pop/file_popup.jsp?mode="+mode);
        //edmsUploadFileNew("frm", mode, edmsDocId, usrId,hmpwRoleDv, "http://61.41.119.163/rcmsConnect.do");
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
            $("#EdmsDocId1_"+docKeyNo).val(docKey);
            $("#FileNm1_"+docKeyNo).val(docName);
            $("#ItxpFileEvdc_"+docKeyNo).html('<img src="/bt/bt_regist4.gif" alt="등록">');
        }
    }
}


// 이전에 선택된 세목 인덱스
var beforeSelectedIndex = 0;
/******************************************************************
 * fnDelete     사용증빙/증빙서류/인건비내역 삭제
 * @param
 * @return
******************************************************************/
function fnDelete(obj, idx){
    var frm     = document.frm;
    var frm_key = document.rtr_str_form;
    var tObjIdx = idx;

    if('<img src="/bt/bt_regist4.gif" alt="등록">'==jQuery("#ItxpFileEvdc_"+tObjIdx).html() || '<img src="/bt/bt_regist4.gif" alt="등록">'==jQuery("#ItxpAdtnInfo_"+tObjIdx).html()){
        var edms_id = "edms101";
        var dockey  = frm.docKey.value;
        var name    = obj.options[obj.options.selectedIndex].text;
        
        if(!confirm("["+ name +"] 세부비목으로 변경시\n증빙서류/인건비내역 등록내역이 삭제 됩니다.\n변경하시겠습니까?")){
            obj.options.selectedIndex = beforeSelectedIndex;
            return false;
        }
        // DMS첨부파일삭제호출
        if('<img src="/bt/bt_regist4.gif" alt="등록">'==jQuery("#ItxpFileEvdc_"+tObjIdx).html()){
            edmsDeleteItem("frm", edms_id,"DELETE","PLAN", dockey, "SMTEST", frm_key.S_PMS_ID.value, "http://61.41.119.163/rcmsConnect.do");
            }
            // 증빙서류 관련 변수 초기화
            jQuery("#ItxpFileEvdc_" + tObjIdx)
                    .html(
                            '<img src="/bt/bt_nonregist.gif" alt="미등록">');
            $("#EdmsDocId1_" + tObjIdx).val("");
            $("#FileNm1_" + tObjIdx).val("");

            // 인건비내역 관련 변수 초기화
            jQuery("#ItxpAdtnInfo_" + tObjIdx)
                    .html(
                            '<img src="/bt/bt_nonregist.gif" alt="미등록">');
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
     * chk_save     저장전 유효성 체크
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

        //기타증빙예외건 체크
        if (false == chkEtcEvdcExc())
            return false;

        //-----------------------------------
        //  거래처정보 유효성 검사
        //-----------------------------------
        if ("E" == frm.Evdc_Dv.value) {
            if (null == frm.etc_SplrCoNm.value || "" == frm.etc_SplrCoNm.value) {
                alert("회사명을 입력해주세요.");
                frm.etc_SplrCoNm.focus();
                return false;
            }
            if (null == frm.etc_SplrAdr.value || "" == frm.etc_SplrAdr.value) {
                alert("사업장주소를 입력해주세요.");
                frm.etc_SplrAdr.focus();
                return false;
            }
            if (null == frm.etc_SplrReprNm.value
                    || "" == frm.etc_SplrReprNm.value) {
                alert("대표자명을 입력해주세요.");
                frm.etc_SplrReprNm.focus();
                return false;
            }

            if (null == frm.etc_SplrBzRegNo.value
                    || "" == frm.etc_SplrBzRegNo.value) {
                alert("사업자등록번호를 입력해주세요.");
                frm.etc_SplrBzRegNo.focus();
                return false;
            }

            //실습환경 사업자등록번호 체크 해지 20140128
            /* 
            if (false == chk_bzregno(frm.etc_SplrBzRegNo.value)) {
                alert("사업자등록번호를 확인해 주시기 바랍니다.");
                frm.etc_SplrBzRegNo.focus();
                return false;
            }
 */
        }

        //-----------------------------------
        //  비목등록정보 유효성 검사
        //-----------------------------------
        var totSplyAmt = 0;
        var totVatAmt = 0;

        for (var i = 0; i < document.forms['frm'].elements['itxp_cnt'].value; i++) {

            //카드로 인건비성 비목등록 거부
            //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
            if (document.rtr_str_form.S_PSNL_ACCT_USEYN.value == "Y"
                    && "C" == frm.Evdc_Dv.value) {
                if ('Y' == itxpPsnlYn(document
                        .getElementById("SelSubDtlsItxpCd_" + i).value)) {
                    alert("카드는 인건비성 비목을 등록 할 수 없습니다.\n\n[내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비]");
                    return false;
                }
            }

            if (!chk_frm_value("SelDtlsItxpCd", i))
                return false; // 세목
            if (!chk_frm_value("SelSubDtlsItxpCd", i))
                return false; // 세세목
            if (!chk_frm_value("ItxpItem", i))
                return false; // 품목
            if (!chk_frm_value("ItxpUseAmt", i))
                return false; // 사용금액
            if (!chk_frm_value("ItxpSplyAmt", i))
                return false; // 공급금액
            if (!chk_frm_value("ItxpVatAmt", i))
                return false; // 부가세

            // 2011.09.16 태동현 : 부가세의 최대 설정 금액을 공급금액의 50% 까지로 함 (감리로 인한 수정사항)
            var splyAmt = Number($("#ItxpSplyAmt_" + i).val()
                    .replace(/,/gi, ""));
            var vatAmt = Number($("#ItxpVatAmt_" + i).val().replace(/,/gi, ""));

            totSplyAmt += splyAmt;
            totVatAmt += vatAmt;
            //if(splyAmt < vatAmt*2){
            //  alert("부가세의 최대 설정 금액은 공급금액의 50%까지 입니다.");
            //  $("#ItxpVatAmt_"+i).focus();
            //  return false;
            //}
            if (splyAmt < 0) {
                alert('공급금액은 0보다 작을 수 없습니다.');
                $("#ItxpSplyAmt_" + i).focus();
                return false;
            }
            if (vatAmt < 0) {
                alert('부가세금액은 0보다 작을 수 없습니다.');
                $("#ItxpVatAmt_" + i).focus();
                return false;
            }

            // 2012.04.24 김봉민 : 사용금액이 ""이거나 0원이 아닌 경우에만 등록 가능하도록 수정.
            var itxpUseAmt = $("#ItxpUseAmt_" + i).val();
            if ("0" == itxpUseAmt) {
                alert("사용금액은 0원이 될 수 없습니다.");
                $("#ItxpSplyAmt_" + i).focus();
                return false;
            }

        }//End of for

        //2012.11.26 kjs 전자세금계산서의 경우 공급금액과 사용금액이 다를경우 공급금액차액 사유 선택 체크
        if ("T" == document.forms['frm'].elements['Evdc_Dv'].value) {
            if (parseInt(frm.Evdc_SplyAmt.value, 10) > totSplyAmt
                    && "" == document.forms['frm'].elements['SplyAmtDfamtRsn'].value) {
                alert("공급금액 차액사유를 작성해주세요");
                document.forms['frm'].elements['SplyAmtDfamtRsn'].focus();
                return false;
            }
        }

        //-----------------------------------
        //  비영리기관이 간접비 집행시 증빙서류 인건비등록안함
        //  그외경우 증빙서류과 인건비 등록체크함
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
            //  증빙서류 체크
            //-----------------------------------
            if (frm.EdmsDocId1.length > 1) {
                for (i = 0; i < frm.EdmsDocId1.length; i++) {
                    if ("B0301001" != $("#SelSubDtlsItxpCd_" + i).val()
                            && (null == frm.EdmsDocId1[i].value || "" == frm.EdmsDocId1[i].value)) {
                        alert("증빙서류를 등록해주세요.");
                        return false;
                    }
                }
            } else {
                if (null == frm.EdmsDocId1.value || "" == frm.EdmsDocId1.value) {
                    alert("증빙서류를 등록해주세요.");
                    return false;
                }
            }
            //-----------------------------------
            //  인건비 체크(인건비,연구수당인경우만 등록필수)
            //-----------------------------------
            if (frm.rchrInfo.length > 1) {
                for (i = 0; i < frm.rchrInfo.length; i++) {
                    if (uf_AdtnRegItxpChk(
                            frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].value,
                            false)) {
                        if (null == frm.rchrInfo[i].value
                                || "" == frm.rchrInfo[i].value) {
                            alert("인건비를 등록해주세요.");
                            return false;
                        } else {
                            
                            if (frm.rchrAmt[i].value.replace(/,/gi, "") != frm.ItxpUseAmt[i].value
                                    .replace(/,/gi, "")) {
                                alert("비목금액의 합계와 등록된 인건비의 금액과 일치하지 않습니다.");
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
                        alert("인건비를 등록해주세요.");
                        return false;
                    } else {
                        
                        if (frm.rchrAmt.value.replace(/,/gi, "") != frm.ItxpUseAmt.value
                                .replace(/,/gi, "")) {
                            alert("비목금액의 합계와 등록된 인건비의 금액과 일치하지 않습니다.");
                            return false;
                        }
                    }
                }
            }
        }

        //-----------------------------------
        //  계좌이체 요청항목 유효성 검사
        //-----------------------------------
        if ("1" == PlanPrgrSt) {

            if ("Y" == frm.SqbnSplrExctnRsnYn.value
                    && "" == $.trim(frm.SqbnSplrExctnRsn.value)) {
                alert('휴폐업 집행사유를 입력해주세요.');
                frm.SqbnSplrExctnRsn.focus();
                return false;
            }

            if (!("C" == frm.Evdc_Dv.value)) {
                var exctnStgDv = (true == document.frm.ExctnStgDv[0].checked) ? "1"
                        : "2";

                //사업자확인 체크
                if (frm.SplrAuth.value != '1') {
                    alert('사업자등록번호확인을 진행하시기 바랍니다.');
                    return false;
                }

                // 타계좌일 경우
                if ("1" == exctnStgDv) {

                    //-----------------------------------
                    //  증빙구분 따른 세세목 유효성검사
                    //-----------------------------------
                    var msg = chk_Itxp_ExctnStgDv(frm, frm.Evdc_Dv.value);
                    if (!("" == msg)) {
                        alert(msg);
                        return false;
                    }
                } else {
                    //-----------------------------------
                    //  집행종류구분에 따른 세세목 유효성검사
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

            //카드면서 집계방식일경우만 체크하지않음
            if (!(("C" == frm.Evdc_Dv.value) && ("1" == frm.InstCrdSetlMeth.value))) {
                if (frm.OwacNm.value == "") {
                    alert("예금주조회를 해주십시오.");
                    return false;
                }
            }

            //카드면서 집계방식일경우만 체크하지않음
            if (!(("C" == frm.Evdc_Dv.value) && ("1" == frm.InstCrdSetlMeth.value))) {
                //-----------------------------------
                //  계좌이체 요청항목 유효성 검사
                //-----------------------------------
                if ("" == frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value) {
                    alert("필수항목은 반드시 선택하셔야 합니다.\r\n\r\n* 필수선택 항목 : 입금계좌(은행)");
                    frm.RcvBnkCd.focus();
                    return false;
                }
                if (!validate_frm(frm))
                    return false; // 유효성처리
            }

            if (!("C" == frm.Evdc_Dv.value)) {
                //-----------------------------------
                //  타계좌이체시 입금계좌가 연구비계좌인지 검사
                //-----------------------------------
                if (true == document.frm.ExctnStgDv[0].checked
                        && frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value == frm_key.S_RCH_ACC_BNK_CD.value
                        && frm.RcvAcctNo.value == frm_key.S_RCH_ACC_NO.value) {
                    alert("입금계좌가 연구비계좌와 동일합니다.");
                    return false;
                }

            }

            //--------------------------------------------------
            //  기타증빙&&자계좌이체인 경우 증빙금액과 일치여부 체크안함
            //--------------------------------------------------
            if (!(("E" == frm.Evdc_Dv.value) && (true == document.frm.ExctnStgDv[1].checked))) {
                //-----------------------------------
                //  금액 체크
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
     * uf_itxp_save     계획/증빙/비목저장
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
        
        
        //유효성 검사
        if (!chk_save(PlanPrgrSt))
            return;
        
        if ("0" == PlanPrgrSt
                && ("" != frm.OwacNm.value || "" != frm.PaymUsag.value || "" != frm.TelNo.value)) {
            alert('계좌이체 요청항목은 저장되지 않습니다.');
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
    
        //거래처 상태 확인
        if( bzRegNo == "0000000000" || bzRegNo == "8888888888" ){ //개인거래 또는 해외거래처 인경우 휴폐업조회 안함
            fn_itxp_save();         
        }else{
            
            uf_proce_display_on();  //로딩바
                
            setTimeout(
                    function(){
                            try{   
                                document.frm.SplrBzRegSt.value       = "";        //사업자등록상태
                                document.frm.SplrTaxtTypDv.value     = "";  //사업자과세유형
                            }finally{
                                reset_submit();
                                fn_itxp_save();
                            }
                        
                        }, 1000);   // 1초후 실행 1000 = 1초s

        }

    }
    
    function fn_itxp_save(){
        var frm_key = document.rtr_str_form;
        var frm     = document.frm;
        var param, target_url;
        var confirm_msg = "";
        var splrCoNm = frm.SplrCoNm.value;
        
            if( 'A04009' == frm.SplrBzRegSt.value ){ //휴업
                confirm_msg = splrCoNm + "는(은) 국세청에서 휴업으로 신고된 거래처 입니다.\n\n";
            }else if( 'A04010' == frm.SplrBzRegSt.value ){ //폐업
                confirm_msg = splrCoNm + "는(은) 국세청에서 폐업으로 신고된 거래처 입니다.\n\n";
            }
            if( confirm_msg != "" ){
                confirm_msg += "계속진행하시겠습니까?";
            }else{
                confirm_msg = "등록하시겠습니까?";
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
            //세목값담기
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
            //세세목값담기
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
            //지방비구분 등록
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
                //target_url = "/t01/t12/T12_01_00_0_c1.jsp"; //전자세금계산서
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
                    parent.alert("등록되었습니다.");
                </script>
                }
         --%>
                
                 uf_proce_display_on();  //로딩바

                 setTimeout(
                         function(){
                             reset_submit();
                             resetAllControl();
                             document.body.style.cursor = "auto";
                             
                             alert("등록되었습니다.");
                             
                             }, 1000);   // 1초후 실행 1000 = 1초s
            } else if ("C" == frm.Evdc_Dv.value) {
                //target_url = "/t01/t12/T12_01_00_0_c2.jsp"; //카드
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
                    parent.alert("등록되었습니다.");
                </script>
                }
         --%>
                
                 uf_proce_display_on();  //로딩바

                 setTimeout(
                         function(){
                             reset_submit();
                             resetAllControl();
                             document.body.style.cursor = "auto";
                             
                             alert("등록되었습니다.");
                             
                             }, 1000);   // 1초후 실행 1000 = 1초s
            } else if ("E" == frm.Evdc_Dv.value) {
                //target_url = "/t01/t12/T12_01_00_0_c3.jsp"; //기타
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
                    parent.alert("등록되었습니다.");
                </script>
                }
         --%>
                
                 uf_proce_display_on();  //로딩바

                 setTimeout(
                         function(){
                             
                             reset_submit();
                             resetAllControl();
                             document.body.style.cursor = "auto";
                             alert("등록되었습니다.");
                             
                             }, 1000);   // 1초후 실행 1000 = 1초s
                             
                
            } else {
                alert("증빙 미등록 상태입니다.");
                return;
            }
            
        removeTempAttribute(frm);
    }

    /*********************************************
     * uf_tran_owac  예금주(실명) 조회
     * @param
     * @return
     ********************************************/
    function uf_tran_owac() {
        var frm = document.frm;
        var bzRegNo = "";
        var _evdc_dv = frm.evma_gb.value;

        if (frm.SplrAuth.value != '1' && 'C' != _evdc_dv) {
            alert('사업자등록번호확인을 진행하시기 바랍니다.[' + frm.SplrAuth.value + ']');
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
                alert('증빙을 선택하세요');
                return false;
            }
        }

        var chk_cnt = 0;
        for ( var i = 0; i < document.forms['frm'].elements['itxp_cnt'].value; i++) {
            if (false == chkAcnmAuthPass($('#SelSubDtlsItxpCd_' + i).val())) {
                chk_cnt++; //실명인증필요 세세목 개수
            }
        }//end of for

        $('#RcvNmChkDv_0').val('');
        if (chk_cnt == 0) {
            $('#RcvNmChkDv_0').val('B06006'); //[RNDB06] B06006 실명조회예외세목
            uf_tran_owac2();
        } else {
            if (bzRegNo == '0000000000' && frm.etc_SplrPrsn.checked == true) {
                $('#RcvNmChkDv_0').val('B06008'); //[RNDB06] B06008 개인거래처
                uf_tran_owac2();
            } else if (bzRegNo == '0000000000'
                    && frm.etc_SplrPrsn.checked == false) {
                alert('거래처 사업자등록번호를 확인하세요.');
            } else if (bzRegNo == '8888888888') {
                $('#RcvNmChkDv_0').val('B06009'); //[RNDB06] B06009 해외거래처
                uf_tran_owac2();
            } else {
                //bzRegNo 값이 없으면 예금주 조회만
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
    boolean beSearchBtn         =   false;  //조회버튼 생성구분
    String SSbjtInqDvCd        = "F";      //정산협약제외
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->







    <div class="cb b10"></div>
    <!-- ---------------------------------------------------------------------------- -->
    <!--    기관중심 과제조회 자동완성 공통부 끝 -->
    <!-- ---------------------------------------------------------------------------- -->
    <form name="frm" id="frm" method="post">
        <input type="hidden" name="S_PSNL_ACCT_USEYN" id="S_PSNL_ACCT_USEYN" value="" />
        <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" /> 
        <input type="hidden" name="SBJT_DET_SCH_AUTO" id="SBJT_DET_SCH_AUTO" value="Y" />
        <!-- 공통정보  -->
        <input type="hidden" id="EvdcSeqNo" name="EvdcSeqNo" value="" />
        <!--    증빙일련번호                              -->
        <input type="hidden" id="Evdc_Dv" name="Evdc_Dv" value="" />
        <!--    증빙구분                                    -->
        <input type="hidden" id="dockeyNo" name="dockeyNo" value="" />
        <!--    선택된 증빙테이블키                      -->
        <input type="hidden" id="doc_dv" name="doc_dv" value="" />
        <!--    증빙서류/인건비                            -->
        <input type="hidden" id="docKey" name="docKey" value="" />
        <!--    생성된EDMS_dockey                      -->
        <input type="hidden" id="docNo" name="docNo" value="" />
        <!--    리컨결과값(등록파일시퀸스)              -->
        <input type="hidden" id="docName" name="docName" value="" />
        <!--    리턴결과값(등록파일명)                    -->
        <input type="hidden" id="methodName" name="methodName" value="" />
        <!--    메소드명                                    -->
        <input type="hidden" id="attr98" name="attr98" value="" />
        <!--    리턴결과값(등록파일명)                    -->
        <input type="hidden" id="attr99" name="attr99" value="" />
        <!--    리턴결과값(등록파일갯수)                   -->
        <input type="hidden" id="itxp_cnt" name="itxp_cnt" value="1" />
        <!--    비목등록건수                              -->
        <input type="hidden" id="Evdc_SumAmt" name="Evdc_SumAmt" value="" />
        <!--    사용금액                                -->
        <input type="hidden" id="Evdc_SplyAmt" name="Evdc_SplyAmt" value="" />
        <!--    공급금액(수정공급가액)                    -->
        <input type="hidden" id="Evdc_VatAmt" name="Evdc_VatAmt" value="" />
        <!--    부가세액(수정부가가치세액)                  -->
        <input type="hidden" id="p_rchrInfo" name="p_rchrInfo" value="" />

        <!------------------------------------------------------------>
        <!-----------------     증빙 데이터  BEGIN           -------------->
        <!------------------------------------------------------------>
        <!-----------------     1)전자세금계산서 데이터       -------------->
        <!------------------------------------------------------------>
        <input type="hidden" id="T_SplpBzRegNo" name="T_SplpBzRegNo" value="" />
        <!--     공급받는자사업자등록번호       -->
        <input type="hidden" id="T_SplpSucoEnplcNo" name="T_SplpSucoEnplcNo"
            value="" />
        <!--     공급받는자자회사사업장번호      -->
        <input type="hidden" id="T_SplpCoNm" name="T_SplpCoNm" value="" />
        <!--     공급받는자회사명               -->
        <input type="hidden" id="T_SplpTpbzNm" name="T_SplpTpbzNm" value="" />
        <!--     공급받는자업종명               -->
        <input type="hidden" id="T_SplpTpopNm" name="T_SplpTpopNm" value="" />
        <!--     공급받는자업태명               -->
        <input type="hidden" id="T_SplpReprNm" name="T_SplpReprNm" value="" />
        <!--     공급받는자대표자명              -->
        <input type="hidden" id="T_SplpAdr" name="T_SplpAdr" value="" />
        <!--     공급받는자주소                -->
        <input type="hidden" id="T_SplrBzRegNo" name="T_SplrBzRegNo" value="" />
        <!--     공급자사업자등록번호         -->
        <input type="hidden" id="T_SplrChidCoEnplcNo"
            name="T_SplrChidCoEnplcNo" value="" />
        <!--     공급자자회사사업장번호        -->
        <input type="hidden" id="T_SplrCoNm" name="T_SplrCoNm" value="" />
        <!--     공급자회사명                 -->
        <input type="hidden" id="T_SplrTpbzNm" name="T_SplrTpbzNm" value="" />
        <!--     공급자업종명                 -->
        <input type="hidden" id="T_SplrTpopNm" name="T_SplrTpopNm" value="" />
        <!--     공급자업태명                 -->
        <input type="hidden" id="T_SplrReprNm" name="T_SplrReprNm" value="" />
        <!--     공급자대표자명                -->
        <input type="hidden" id="T_SplrAdr" name="T_SplrAdr" value="" />
        <!--     공급자주소                      -->
        <input type="hidden" id="T_Rmk" name="T_Rmk" value="" />
        <!--     비고                         -->
        <!-- 2012.01.25 태동현 -->
        <!-- 부가세를 제외한 공급가액으로도 등록 가능하도록 수정 Start-->
        <input type="hidden" id="T_SumAmt" name="T_SumAmt" value="" />
        <!--     사용금액                       -->
        <input type="hidden" id="T_SplyAmt" name="T_SplyAmt" value="" />
        <!--     공급금액(수정공급가액)       -->
        <input type="hidden" id="T_VatAmt" name="T_VatAmt" value="" />
        <!--     부가세액(수정부가가치세액)     -->
        <input type="hidden" id="T_ExclsVatAmtYn" name="T_ExclsVatAmtYn"
            value="" />
        <!--     부가세 제외 플래그         -->
        <!-- 부가세를 제외한 공급가액으로도 등록 가능하도록 수정 End-->
        <input type="hidden" id="T_CashAmt" name="T_CashAmt" value="" />
        <!--     현금금액                       -->
        <input type="hidden" id="T_ChkAmt" name="T_ChkAmt" value="" />
        <!--     수표금액                       -->
        <input type="hidden" id="T_DrftAmt" name="T_DrftAmt" value="" />
        <!--     어음금액                       -->
        <input type="hidden" id="T_CredRcblAmt" name="T_CredRcblAmt" value="" />
        <!--     외상미수금액                 -->
        <input type="hidden" id="T_WrtgDt" name="T_WrtgDt" value="" />
        <!--     작성일자                       -->
        <input type="hidden" id="T_ReptNcnt" name="T_ReptNcnt" value="" />
        <!--     반복건수                       -->
        <input type="hidden" id="T_SplpEmalAdr1" name="T_SplpEmalAdr1"
            value="" />
        <!--     공급받는자이메일주소         -->
        <input type="hidden" id="T_SplpEmalAdr2" name="T_SplpEmalAdr2"
            value="" />
        <!--     공급받는자이메일주소         -->
        <input type="hidden" id="T_SplrEmalAdr" name="T_SplrEmalAdr" value="" />
        <!--     공급자이메일주소               -->
        <input type="hidden" id="T_CorcRsn" name="T_CorcRsn" value="" />
        <!--     수정사유                       -->
        <input type="hidden" id="T_ReptNcnt" name="T_ReptNcnt" value="" />
        <!--     반복건수                       -->
        <!--    전자세금계산서 데이터(반복부)         -->
        <input type="hidden" id="T_strUseDt" name="T_strUseDt" value="" />
        <!--     사용일자       -->
        <input type="hidden" id="T_strMitmNm" name="T_strMitmNm" value="" />
        <!--     품목         -->
        <input type="hidden" id="T_strMitmUprc" name="T_strMitmUprc" value="" />
        <!--     단가         -->
        <input type="hidden" id="T_strMitmQnt" name="T_strMitmQnt" value="" />
        <!--     수량         -->
        <input type="hidden" id="T_strSplyAmt" name="T_strSplyAmt" value="" />
        <!--     공급금액       -->
        <input type="hidden" id="T_strVatAmt" name="T_strVatAmt" value="" />
        <!--     부가가치세액 -->
        <input type="hidden" id="T_strMitmNrm" name="T_strMitmNrm" value="" />
        <!--     규격         -->
        <input type="hidden" id="T_strRmk" name="T_strRmk" value="" />
        <!--     비고         -->
        <!------------------------------------------------------------>
        <!-----------------     2)카드증빙 데이터              -------------->
        <!------------------------------------------------------------>
        <input type="hidden" id="InstCrdSetlMeth" name="InstCrdSetlMeth"
            value="1" />
        <!--    카드결제방식           -->
        <input type="hidden" id="C_CrdNo" name="C_CrdNo" value="" />
        <!--    카드번호               -->
        <input type="hidden" id="C_FncInstCd" name="C_FncInstCd" value="" />
        <!--    카드사금융기관코드     -->
        <input type="hidden" id="C_CrdKind" name="C_CrdKind" value="" />
        <!--    카드종류               -->
        <input type="hidden" id="C_CrdTyp" name="C_CrdTyp" value="" />
        <!--    카드유형               -->
        <input type="hidden" id="C_BuyApvDv" name="C_BuyApvDv" value="" />
        <!--    매입승인구분           -->
        <input type="hidden" id="C_BuyApvCanYn" name="C_BuyApvCanYn" value="" />
        <!--    매입승인취소여부       -->
        <input type="hidden" id="C_ApvDt" name="C_ApvDt" value="" />
        <!--    승인일자               -->
        <input type="hidden" id="C_ApvDrtm" name="C_ApvDrtm" value="" />
        <!--    승인시간               -->
        <input type="hidden" id="C_ApvNo" name="C_ApvNo" value="" />
        <!--    승인번호               -->
        <input type="hidden" id="C_BuyDt" name="C_BuyDt" value="" />
        <!--    매입일자               -->
        <input type="hidden" id="C_PrdDv" name="C_PrdDv" value="" />
        <!--    상품구분               -->
        <input type="hidden" id="C_OvrsUseYn" name="C_OvrsUseYn" value="" />
        <!--    해외사용여부           -->
        <input type="hidden" id="C_BuyClctNo" name="C_BuyClctNo" value="" />
        <!--    매입추심번호           -->
        <input type="hidden" id="C_SlipAcqr" name="C_SlipAcqr" value="" />
        <!--    전표매입사             -->
        <input type="hidden" id="C_SplyPrcAmt" name="C_SplyPrcAmt" value="" />
        <!--    공급가액               -->
        <input type="hidden" id="C_VatAmt" name="C_VatAmt" value="" />
        <!--    부가가치세액           -->
        <input type="hidden" id="C_SrvFee" name="C_SrvFee" value="" />
        <!--    봉사료                 -->
        <input type="hidden" id="C_SrvFee_r" name="C_SrvFee_r" value="" />
        <!--    수정봉사료             -->
        <input type="hidden" id="C_ApvSum" name="C_ApvSum" value="" />
        <!--    승인합계               -->
        <input type="hidden" id="C_MestNm" name="C_MestNm" value="" />
        <!--    가맹점명               -->
        <input type="hidden" id="C_MestTaxtTypInfo" name="C_MestTaxtTypInfo"
            value="" />
        <!--    가맹점과세유형정보     -->
        <input type="hidden" id="C_MestTaxtTypInqDt" name="C_MestTaxtTypInqDt"
            value="" />
        <!--    가맹점과세유형조회일자 -->
        <input type="hidden" id="C_MestReprNm" name="C_MestReprNm" value="" />
        <!--    가맹점대표자명         -->
        <input type="hidden" id="C_MestBzNo" name="C_MestBzNo" value="" />
        <!--    가맹점사업자등록번호   -->
        <input type="hidden" id="C_MestNo" name="C_MestNo" value="" />
        <!--    가맹점번호             -->
        <input type="hidden" id="C_MestTelNo" name="C_MestTelNo" value="" />
        <!--    가맹점전화번호         -->
        <input type="hidden" id="C_MestAdr1" name="C_MestAdr1" value="" />
        <!--    가맹점주소1              -->
        <input type="hidden" id="C_MestAdr2" name="C_MestAdr2" value="" />
        <!--    가맹점주소2              -->
        <input type="hidden" id="C_CrdDv" name="C_CrdDv" value="" />
        <!--    카드구분               -->
        <input type="hidden" id="C_CmBrTp" name="C_CmBrTp" value="" />
        <!--    업종명                 -->
        <input type="hidden" id="C_TpbzCd" name="C_TpbzCd" value="" />
        <!--    업종코드               -->
        <input type="hidden" id="C_SetlScheDt" name="C_SetlScheDt" value="" />
        <!--    결제예정일             -->
        <!------------------------------------------------------------>
        <!-----------------     증빙 데이터  END     ------------------>
        <!------------------------------------------------------------>
        
        
        <input type="hidden" id="SplrBzRegSt" name="SplrBzRegSt" value="" />        <!-- 사업자등록상태 -->
        <input type="hidden" id="SplrTaxtTypDv" name="SplrTaxtTypDv" value="" />    <!-- 사업자업종유형 -->
        <input type="hidden" id="SplrCoNm" name="SplrCoNm" value="" />
        
        <div class="cb b10"></div>
        <div class="t10">
            <img src="/images/pefo/u12_01_00_img.gif"
                alt="연구비사용등록 선택안내 가이드 ①증빙우선 등록 : 전자세금계산서, 카드, 기타 증빙구분을 기준으로, 그에 따른 비목정보(세목, 사용금액등)를 입력합니다. ②비목우선 등록 : 비목(세목, 세세목, 지방비구분)을 기준으로, 그에 따른 증빙정보(전자세금계산서, 카드, 키타 등)를 입력합니다." />
        </div>
        <!-- 증빙우선등록 그룹 start -->
        <div class="t20 b10">
            <div class="tab_line1">
                <a href="#dummy"
                    onclick="fnEvdcRegTabUrl('/t01/t12/T12_01_00_0.jsp')"><img
                    src="/images/pefo/u12_01_00_tab1on.gif" alt="증빙우선 등록" /></a><a
                    href="#dummy"
                    onclick="fnEvdcRegTabUrl('/t01/t12/T12_01_00_1.jsp')"><img
                    src="/images/pefo/u12_01_00_tab2.gif" alt="비목중심 등록" /></a>
            </div>
            <div class="tab_box">
                <div class="find_box">
                    <fieldset>
                        <legend>증빙우선 등록</legend>
                        <table width="680" summary="증빙우선 등록 검색" class="tbl_search">
                            <caption>증빙우선 등록 검색</caption>
                            <colgroup>
                                <col width="12%" />
                                <col width="30%" />
                                <col width="15%" />
                                <col width="43%" />
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">증빙선택</th>
                                    <td><select name='evma_gb'  id='evma_gb'  class='' onchange='SplrInfoDisplay();' ><option value='E' >기타</option><option value='T' selected>전자세금계산서</option><option value='C' >카드</option></select>
                                        <a href="#dummy" onclick="sbjtFormGen();"><img
                                            src="/bt/bt_regist1.gif" alt="증빙등록" /></a></td>
                                    <td scope="row"></td>
                                    <td align="right"><a href="#"
                                        onclick="uf_popup_etc_dvdc_avl_info();" id="etcInfoBtnDisplay"
                                        style="display: none;"><img
                                            src="/bt/bt_guide9.gif" alt="기타증빙기능비목"
                                            class="vc" /></a></td>
                                </tr>
                            </tbody>
                        </table>
                    </fieldset>
                </div>
                <div class="t10"></div>

                <!------------------------------------------------------------>
                <!----------------- 비목등록정보  데이터 BEGIN   ------------------>
                <!------------------------------------------------------------>
                <div id="divBmokInfo" style="display: none;">
                    <h3>비목등록정보</h3>
                    <div class="ar">
                        <a href="#dummy" onclick="uf_ItxpLimDtl();"><img type="image"
                            src="/bt/bt_guide1.gif" alt="비목별사용한도" /></a> <a
                            href="#dummy"
                            onclick="uf_frmNewWinNs(document.frm, '/pop/T01_12_30.jsp', 'GUIDE_LINE', '800', '850');"><img
                            src="/bt/bt_guide2.gif" alt="증빙 Guideline" /></a> <a
                            href="#dummy" onclick="fnAddRow();"><img
                            src="/bt/bt_plus.gif" alt="행추가" /></a> <a
                            href="#dummy" onclick="fnRemove();calc_amtSet();"><img
                            src="/bt/bt_minus.gif" alt="행삭제" /></a>
                    </div>
                    <div class="t05 b10">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0"
                            summary="품목 설정" class="tbl_type08" id="ItxpList">
                            <caption>품목설정</caption>
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
                                        style="white-space: nowrap;">선택</label></th>
                                    <th scope="col">세목</th>
                                    <th scope="col">세세목</th>
                                    <th scope="col"><label for="part">품목</label></th>
                                    <th scope="col"><label for="usemoney">사용금액</label></th>
                                    <th scope="col"><label for="suppmoney">공급금액</label></th>
                                    <th scope="col"><label for="vat">부가세</label></th>
                                    <th scope="col">증빙<br />서류
                                    </th>
                                    <th scope="col" style="white-space: nowrap;">인건비<br />내역
                                    </th>
                                    <th scope="col" class="dycell" style="display:none;">지방비<br />구분
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="ac"><input type="checkbox" name="ItxpChk"
                                        id="ItxpChk_0" value="0" /></td>
                                    <td class="ac"><select title="세목" name="SelDtlsItxpCd"
                                        id="SelDtlsItxpCd_0" onchange="SelDtlsItxpCdOnChange(this);"
                                        style="width: 98%">
                                            <option value="">선택</option>
                                    </select></td>
                                    <td class="ac"><select title="세세목" name="SelSubDtlsItxpCd"
                                        id="SelSubDtlsItxpCd_0" style="width: 98%"
                                        onchange="SelDtlsItxpCdOnChange2(this);">
                                            <option value="">선택</option>
                                    </select></td>
                                    <td class="ac"><input type="hidden" name="EtcEvdcExcCd"
                                        id="EtcEvdcExcCd_0" value="" /> <input type="hidden"
                                        name="EtcEvdcExcNo" id="EtcEvdcExcNo_0" value="" />
                                        <div class="posabs etcimpex" id="etcimpex_0" onclick="uf_etcImplExc(this)">
                                            <a href="#dummy"><img src="/bt/bt_etcimpex.gif" /></a>
                                        </div> <input type="text" name="ItxpItem" id="ItxpItem_0" value="" maxlength="100" size="20" title="품목" class="inputl" style="width: 70px" /></td>
                                    <td class="ac"><input type="text" name="ItxpUseAmt"
                                        id="ItxpUseAmt_0" value="0" size="17" readonly maxlength="15"
                                        title="사용금액" class="inputl currency"
                                        style="width: 62px; background-color: #d2d2d2;"
                                        onfocus="fnNextFocus(this,'ItxpSplyAmt');" /></td>
                                    <td class="ac"><input type="text" name="ItxpSplyAmt"
                                        id="ItxpSplyAmt_0" onkeyup="calc_amtSet(this, false);"
                                        onblur="calc_amtSet(this, false);" value="0" size="17"
                                        maxlength="15" title="공급금액" class="inputl currency"
                                        style="width: 62px" /></td>
                                    <td class="ac"><input type="text" name="ItxpVatAmt"
                                        id="ItxpVatAmt_0" onkeyup="calc_amtSet(this, false);"
                                        onblur="calc_amtSet(this, false);chk_amtSet(this);" value="0"
                                        size="17" maxlength="15" title="부가세" class="inputl currency"
                                        style="width: 55px" /></td>
                                    <td class="ac"><div style="width: 34px">
                                            <span id="ItxpFileEvdcVal_0" style="display: none;"></span><a
                                                href="#dummy" class="itxpFileEvdcVal"><span
                                                id="ItxpFileEvdc_0" onclick="fnFileEvdc(this);"><img
                                                    src="/bt/bt_nonregist.gif" alt="미등록" /></span></a> <input
                                                type="hidden" name="EdmsDocId1" id="EdmsDocId1_0" value="" />
                                            <!-- 생성된EDMS_dockey -->
                                            <input type="hidden" name="FileNm1" id="FileNm1_0" value="" />
                                            <!-- 리턴결과값(등록파일명) -->
                                            <input type="hidden" name="file_Cnt1" id="file_Cnt1_0"
                                                value="" />
                                            <!-- 리턴결과값(등록파일갯수) -->
                                        </div></td>
                                    <td class="ac"><span id="ItxpAdtnInfoVal_0"
                                        style="display: none;"></span><a href="#dummy"
                                        class="ItxpAdtnInfo"><span id="ItxpAdtnInfo_0"
                                            onclick="fnAdtnInfo(this);"><img
                                                src="/bt/bt_nonregist.gif" alt="미등록" /></span></a> <input
                                        type="hidden" name="rchrInfo" id="rchrInfo_0" value="" /> <!-- 참여연구원정보 -->
                                        <input type="hidden" name="rchrAmt" id="rchrAmt_0" value="" />
                                        <!-- 참여연구원총금액 --></td>
                                    <td class="ac dycell" style="display:none;"><select title="지방비구분"
                                        name="SelShrSorcSn" id="SelShrSorcSn_0" style="width: 60px;">
                                            <option value="">미사용</option>
                                    </select></td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="2" class="sum1">공급금액 <span
                                        id="evdc_splyAmtTxt">0</span></td>
                                    <td class="sum1">부가세액 <span id="evdc_vatAmtTxt">0</span></td>
                                    <td class="sum1">비목합계</td>
                                    <td class="sum2"><span id="tot_TrnsAmt">0</span></td>
                                    <td class="sum2"><span id="tot_splyAmt">0</span></td>
                                    <td class="sum2"><span id="tot_vatAmt">0</span></td>
                                    <td class="sum1"></td>
                                    <td class="sum1"></td>
                                    <td class="sum1 dycell" style="display:none;"></td>
                                </tr>
                                <tr id="SplyAmtDfamtRsn_tr" style="display: none;">
                                    <td colspan="2" class="sum1">공급금액차액 사유</td>
                                    <td colspan="8"><input type="text" name="SplyAmtDfamtRsn"
                                        id="SplyAmtDfamtRsn" class="inputl" style="width: 98%"
                                        value="" /></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <!-- 2013-09-17 서성진 수정/강지은 팀장 요청 해당 알림 제거 -->
                    <!-- <div class="guide_bu">비영리기관의 경우 간접비 집행시 증빙서류없이 등록이 가능합니다.</div> -->

                    <!------------------------------------------------------------>
                    <!------------------ 거래처 정보 테이블  시작  ---------------------->
                    <!------------------------------------------------------------>
                    <input type="hidden" name="SplrAuth" id="SplrAuth" value="0" />
                    <div id="divTranInfo" style="display: none;">
                        <!-- 거래처 정보 Div 시작  -->
                        <h3>거래처정보</h3>
                        <div class="t05 b10">
                            <table width="672" border="0" cellspacing="0" cellpadding="0"
                                summary="거래처정보의 사업자번호,상호(법인명),사업장주소 등 내용을 제공한 표"
                                class="tbl_type02">
                                <caption>거래처정보의 사업자번호,상호(법인명),사업장주소 등 내용을 제공한 표</caption>
                                <colgroup>
                                    <col width="18%" />
                                    <col width="36%" />
                                    <col width="18%" />
                                    <col width="28%" />
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row"><label for="company">대표자명</label></th>
                                        <td><span id="d_SplrReprNm"> </span></td>
                                        <th scope="row"><label for="busmun">사업자등록번호</label></th>
                                        <td class="ll"><span id="d_SplrBzRegNo"></span> <a href="#" id="ChkBzRegNo_0" onclick="return uf_chkbzregno('0')"><img src="/bt/bt_bzregno.gif" alt="사업자번호확인" /></a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><label for="part">업태</label></th>
                                        <td><span id="d_SplrTpopNm"></span></td>
                                        <th scope="row"><label for="part1">업종</label></th>
                                        <td class="ll"><span id="d_SplrTpbzNm"></span></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><label for="add">사업자주소</label></th>
                                        <td class="ll" colspan="3"><span id="d_SplrAdr"></span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--------------------  기타증빙 등록시 표시     ------------------------->
                    <div id="divTranInfo_etc" style="display: none;">
                        <!-- 거래처 정보 Div 시작  -->
                        <h3>거래처정보</h3>
                        <div class="fr">
                            <input type="checkbox" value="1" name="etc_SplrPrsn"
                                id="etc_SplrPrsn_0" onclick="uf_tglSplrPrsn(this)" /><label
                                for="etc_SplrPrsn_0">개인거래</label>
                        </div>
                        <div class="t05 b10 cb">
                            <table width="672" border="0" cellspacing="0" cellpadding="0"
                                summary="거래처정보의 사업자번호,상호(법인명),사업장주소 등 내용을 제공한 표"
                                class="tbl_type02">
                                <caption>거래처정보의 사업자번호,상호(법인명),사업장주소 등 내용을 제공한 표</caption>
                                <colgroup>
                                    <col width="18%" />
                                    <col width="36%" />
                                    <col width="18%" />
                                    <col width="28%" />
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="etc_SplrCoNm_0">회사명</label></th>
                                        <td><input type="text" name="etc_SplrCoNm"
                                            id="etc_SplrCoNm_0" title="회사명" class="inputl"
                                            style="width: 120px" /> <span id="idBzRegNo"
                                            style="display: none;"><a
                                                href="javascript:uf_popup_bzpr();"><img
                                                    src="/bt/bt_busin.gif" alt="자주쓰는사업자" /></a></span></td>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="etc_SplrBzRegNo_0">사업자등록번호</label></th>
                                        <td class="ll"><input type="text" name="etc_SplrBzRegNo"
                                            id="etc_SplrBzRegNo_0" title="사업자등록번호" class="inputl"
                                            maxlength="10" style="width: 95px" onKeyup="numcheck(this.value)" onfocus="numcheck(this.value)" /> <a href="#"
                                            id="etc_ChkBzRegNo_0" onclick="return uf_chkbzregno('0')"><img
                                                src="/bt/bt_bzregno.gif" alt="사업자번호확인" /></a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><label for="etc_SplrTpopNm_0">업태</label></th>
                                        <td><input type="text" name="etc_SplrTpopNm"
                                            id="etc_SplrTpopNm_0" title="업태" class="inputl"
                                            style="width: 120px" /></td>
                                        <th scope="row"><label for="etc_SplrTpbzNm_0">업종</label></th>
                                        <td class="ll"><input type="text" name="etc_SplrTpbzNm"
                                            id="etc_SplrTpbzNm_0" title="업종" class="inputl"
                                            style="width: 95px" /></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrAdr_0">사업자주소</label></th>
                                        <td><input type="text" name="etc_SplrAdr" id="etc_SplrAdr_0" title="사업자주소" class="inputl" style="width: 195px" /></td>
                                        <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrReprNm_0">대표자명</label></th>
                                        <td class="ll"><input type="text" name="etc_SplrReprNm" id="etc_SplrReprNm_0" title="대표자명" class="inputl" style="width: 95px" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- 거래처정보 끝 -->

                    <div id="SqbnSplrExctnRsn_tbl_0" style="display: none;">
                        <input type="hidden" name="SqbnSplrExctnRsnYn"
                            id="SqbnSplrExctnRsnYn_0" value="N" /> <input type="hidden"
                            name="RcvNmChkDv" id="RcvNmChkDv_0" value="" />
                        <h3>휴폐업 집행사유</h3>
                        <div class="t05 b10">
                            <table width="672" border="0" cellspacing="0" cellpadding="0"
                                summary="휴폐업거래처 집행사유" class="tbl_type02">
                                <caption>휴폐업 집행사유</caption>
                                <colgroup>
                                    <col width="18%" />
                                    <col width="82%" />
                                <tbody>
                                    <tr>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="SqbnSplrExctnRsn_0">집행사유</label></th>
                                        <td class="ll"><input type="text" name="SqbnSplrExctnRsn"
                                            id="SqbnSplrExctnRsn_0" class="inputl"
                                            style="width: 455px; ime-mode: inactive;" colname="휴폐업집행사유"
                                            maxlength="200" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- 계좌이체요청항목 테이블  시작  -->
                    <div id="divTranInfoItem" style="display: none;">
                        <!-- 계좌이체요청항목 Div 시작  -->
                        <h3>계좌이체 요청항목</h3>
                        <div class="ar">
                            <a href="#" id="trnsInfo_0"
                                onclick="uf_popup_trns_stndrd_info();"><img
                                src="/bt/bt_guide3.gif" alt="자계좌이체허용기준" /></a>
                        </div>
                        <div class="t05 b10">
                            <table width="672" border="0" cellspacing="0" cellpadding="0"
                                summary="계좌이체 요청항목 상세내용 표" class="tbl_type02">
                                <caption>계좌이체 요청항목 상세내용 표</caption>
                                <colgroup>
                                    <col width="18%" />
                                    <col width="36%" />
                                    <col width="18%" />
                                    <col width="28%" />
                                </colgroup>
                                <tbody>
                                    <tr id="ExctnStgDv_tr" style="display:;">
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="ExctnStgDv1_0">집행구분</label></th>
                                        <td colspan="3" class="ll">
                                            <div id="idExctnStgDv_td1" style="display: block;">
                                                <input type="radio" name="ExctnStgDv" id="ExctnStgDv1_0"
                                                    value="1" class="radio2"
                                                    onclick="exctn_ExctnStgDv_v2(this.value,'1', document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_BNK_NM.value, document.rtr_str_form.S_RCH_ACC_NO.value, '', '', '', document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value);setDefaultKindTrnsRchAcc();"
                                                    checked="checked" /><label for="ExctnStgDv1">타계좌이체(연구비계좌경유이체)</label>
                                                <span class="l10"></span> <input type="radio"
                                                    name="ExctnStgDv" id="ExctnStgDv2_0" value="2"
                                                    class="radio2"
                                                    onclick="exctn_ExctnStgDv_v2(this.value,'1', document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_BNK_NM.value, document.rtr_str_form.S_RCH_ACC_NO.value, document.rtr_str_form.S_RCH_ACC_BNK_NM.value, document.rtr_str_form.S_RCH_ACC_BNK_CD.value, document.rtr_str_form.S_RCH_ACC_NO.value,document.rtr_str_form.S_MY_ACCT_TRNS_ALWN_YN.value);setDefaultKindTrnsRchAcc();" /><label
                                                    for="ExctnStgDv2">자계좌이체(연구비계좌이체)</label>
                                                <select name='kind_TrnsRchAcc'  id='kind_TrnsRchAcc'  class='' id='kind_TrnsRchAcc' style='width:135px;'  ><option value='B03001' >허용비목</option><option value='B03002' >외자구매</option><option value='B03003' >지로직접납부</option><option value='B03004' >연구비잔액부족</option><option value='B03005' >지체보상금제외이체</option><option value='B03006' >협약전사용금액</option><option value='B03007' >자계좌이체승인기관</option><option value='B03009' >연구지원전문가 인건비(간접비)</option></select>
                                            </div> <span id="idExctnStgDv_td2" style="display: none;"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="bank">입금계좌</label></th>
                                        <td><select name='RcvBnkCd'  id='RcvBnkCd'  class='' onchange='uf_OwacNmRst();' style='width:50px' ><option value=''>선택</option><option value='020' >A 은행</option><option value='003' >B 은행</option><option value='004' >C 은행</option></select>
                                            <input type="text" title="입금계좌" class="inputl"
                                            onchange='uf_OwacNmRst();' style="width: 80px" id="RcvAcctNo"
                                            name="RcvAcctNo" value="" title="" notnull
                                            colname="입금계좌(계좌번호)" datatype="N" maxlength="20" enc="on"
                                            onfocus="chkEnc();" /> <a id="idFvrtAcct" href="#dummy"
                                            onclick="uf_popup_fvrt_acct();"><img
                                                src="/bt/bt_acct01.gif" alt="자주쓰는계좌" /></a>
                                            <div id="idRcvBnkNm" style="float: left; padding-top: 4px; display: none;"></div>
                                            <a id="idMyAcctNo" href="#dummy" onclick="uf_popup_my_acct();" style="float: right; display: none"><img src="/bt/bt_myacctno.gif" alt="자계좌이체용계좌" /></a></td>
                                        <th scope="row"><span class="txt_orb">*</span> <label for="account">예금주</label></th>
                                        <td class="ll" style="white-space: nowrap"><input
                                            type="text" name="OwacNm" id="OwacNm" title="예금주"
                                            class="inputl"
                                            style="width: 100px; background-color: #d2d2d2;"
                                            readonly="readonly" /> <a href="#dummy" id="idowacBtn"
                                            onclick="uf_tran_owac();"><img
                                                src="/bt/bt_acct02.gif" alt="예금주조회" /></a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row" style="white-space: nowrap;"><span
                                            class="txt_orb DynReqStar">*</span><label
                                            for="WdrwPsbkPrtCtt" style="font-size: 8pt">연구비통장표시내용</label></th>
                                        <td><input type="text" name="WdrwPsbkPrtCtt"
                                            id="WdrwPsbkPrtCtt" class="inputl" style="width: 132px"
                                            value="" title="연구비통장표시내용" notnull colname="연구비통장표시내용"
                                            maxlength="12" /></td>
                                        <th scope="row" style="white-space: nowrap;"><span
                                            class="txt_orb DynReqStar">*</span><label for="RcvPsbkPrtCtt"
                                            style="font-size: 8pt">거래처통장표시내용</label></th>
                                        <td class="ll"><input type="text" name="RcvPsbkPrtCtt"
                                            id="RcvPsbkPrtCtt" class="inputl" style="width: 100px"
                                            value="" title="거래처통장표시내용" notnull colname="거래처통장표시내용"
                                            maxlength="12" /></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><label for="AchvInstIndv1Cd">기관용개별코드A</label></th>
                                        <td><input type="text" name="AchvInstIndv1Cd"
                                            id="AchvInstIndv1Cd" class="inputl"
                                            style="width: 132px; ime-mode: disabled;" value=""
                                            title="기관용개별코드A" colname="기관용개별코드A" maxlength="20" /></td>
                                        <th scope="row"><label for="codeb">기관용개별코드B</label></th>
                                        <td class="ll"><input type="text" name="AchvInstIndv2Cd"
                                            id="AchvInstIndv2Cd" class="inputl"
                                            style="width: 100px; ime-mode: disabled;" value=""
                                            title="기관용개별코드B" colname="기관용개별코드B" maxlength="20" /></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">이체금액</th>
                                        <td><span id="txt_trnsAmt"></span></td>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="tel">전화번호</label></th>
                                        <td class="ll"><input type="text" name="TelNo" id="TelNo" title="전화번호" class="inputl" style="width: 100px" notnull colname="전화번호" datatype="N" maxlength="15" mask="-" /></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">공급가액</th>
                                        <td><span id="txt_splyAmt"></span></td>
                                        <th scope="row">부가가치세액</th>
                                        <td class="ll"><span id="txt_vatAmt"></span></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="txt_orb">*</span> <label
                                            for="memo">지급용도</label></th>
                                        <td colspan="3" class="ll"><input type="text" name="PaymUsag" id="PaymUsag" class="inputl" style="width: 455px; ime-mode: active;" notnull colname="지급용도" maxlength="100" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- action bt start -->
                    <div class="ar">
                        <a href="#dummy" onclick="uf_itxp_save('0');" class="bt_action4-1"
                            title="비목등록" id="btnItxp"><span class="bt_sp">비목등록</span></a> <a
                            href="#dummy" onclick="uf_itxp_save('1');" class="bt_action4-1"
                            title="사용요청"><span class="bt_sp">사용요청</span></a>
                    </div>
                    <!-- //action bt end// -->
                </div>




                <!-- 안내 가이드 start -->
                <div class="guide_box2" id="guide">
                    <div class="guide_boxt2">
                        <p class="txt_title fl">증빙우선등록 안내</p>
                        <p class="ar txt_s">
                            * 안내를 꼭 확인하세요. <a href="#" id="btn-guide"><img
                                src="/bt/bt_close.gif" alt="숨김" class="vc" /></a>
                        </p>
                    </div>
                    <div class="guide_boxc2">
                        <div class="point_title" id="divMyAcctTransAlwn" style="display: none;">실시간통합연구비관리시스템(RCMS) 적용에 대한 유예 신청 기업이므로 자계좌이체(연구비계좌이체)만 가능함</div>
                        <ul class="comment">
                            <li>전자세금계산서, 기타증빙은 <span class="txt_or">실시간계좌이체</span>
                                방식입니다.
                            </li>
                            <li>카드증빙은 실시간계좌이체 하지 않고 카드결제일 전일까지 등록된 건에 한해서 일괄로 결제계좌로
                                이체됩니다.</li>
                            <li>카드증빙등록시 <span class="txt_or">공급가액과 부가세 구분을 반드시
                                    하시기 바랍니다.(영리기관, 비영리기관 모두 해당)</span></li>
                        </ul>
                        <div class="point_title">기타증빙</div>
                        <ul class="comment">
                            <li>연구비 집행 등록은 <span class="txt_or">전자세금계산서 증빙과 카드
                                    증빙을 우선으로 집행하여 등록</span>해주셔야 합니다.
                            </li>
                            <li>기타증빙가능비목을 확인하여 주시기 바랍니다.</li>
                        </ul>
                        <ul class="comment_list">
                            <li>1) 전자세금계산서 발급과 카드결제가 가능한 세세목은 전자세금계산서 증빙과 카드 증빙으로 등록해야 함</li>
                            <li>2) '기타증빙가능비목'의 세세목 이외의 다른 세세목은 기타증빙으로 비목등록이 불가함</li>
                        </ul>
                        <ul class="comment">
                            <li>세목과 세세목리스트, 세세목별 필요증빙 문서는 '정보마당 → 사업비 비목안내'에서 확인할 수
                                있습니다.</li>
                            <li>계좌이체 요청항목을 등록하는 방법은 '타계좌이체'와 '자계좌이체' 2가지가 있습니다.</li>
                        </ul>
                        <ul class="comment_list">
                            <li>1) 타계좌이체 : <span class="txt_or">RCMS → 수행기관연구비계좌
                                    → 거래처계좌로 실시간 이체</span>되며, RCMS 연구비는 타계좌이체로 집행해야 함
                            </li>
                            <li>2) 자계좌이체 : <span class="txt_or">RCMS → 수행기관연구비계좌로
                                    실시간 이체</span>되며, 자계좌이체 허용기준일 경우에만 가능
                            </li>
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
        <!------------------------------------------------------------>
        <!----------------- 비목등록정보  데이터 END     ------------------>
        <!------------------------------------------------------------>
    </form>
    <!-- //증빙우선등록 그룹 end//-->
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
    $('.currency').ForceNumericOnly();
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