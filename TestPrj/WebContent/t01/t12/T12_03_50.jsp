<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_50.jsp 
 *   Description        : 완료비목수정팝업창(비목우선)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.14                     예기해             
 *
 *  @author     예기해
 *  @Since      2014.01.14
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
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->
<%@ page import="jex.json.JSONObject"%>

<%  
    
//-------------------------------------------
//  실행실행-비목수정 업무시 받는 파라미터
//-------------------------------------------
String BzExpExctnEvdcDv             =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzExpExctnEvdcDv"));      // 사업비증빙사용구분
String ButrId                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ButrId"));                // 비목ID 
String ExctnRegDt                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnRegDt"));            // 집행실행일자
String ExctnRegDrtm                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnRegDrtm"));          // 집행실행시간
String Evdc_SumAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzExpExctnAmt"));         // 사업비사용금액            
String Evdc_SplyAmt                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"SplyAmt"));               // 공급금액               
String Evdc_VatAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"VatAmt"));                // 부가가치세액             
String AgrmtSeqNo                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));            // 협약일련번호                  
String AgrmtInstId                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstId"));           // 협약기관ID
String PmsId                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"pmsId"));                 // PMS_ID
String BzExpExctnRegYn              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzExpExctnRegYn"));       // 사업비집행등록여부
String CrdSetlMeth                  =   "";         // 결제방식구분(1:집계방식/2:실시간이체방식)
String PsnlAcctUseYn                =   "";     //인건비성계좌여부
String UnfyMgntInstYn               =   "";     //협약관리기관여부

String RchExpAcctBnkCd              =   "";     // 연구비계좌은행코드              
String RchExpAcctNo                 =   "";     // 연구비계좌번호

String Cus_ReprNm                   =   "";                                                                     // 거래처대표자명
String Cus_BizNo                    =   "";                                                                     // 거래처사업자번호
String Cus_TpBzNm                   =   "";                                                                     //거래처업종명
String Cus_TpOpNm                   =   "";                                                                     //거래처업태명
String Cus_Addr                     =   "";                                                                     //거래처사업장주소
String Cus_SplrCoNm                 =   "";                                                                     //공급자회사명

String TaxOgnSumAmt                 =   "";             //원 합계금액
String TaxOgnSplyAmt                =   "";             //원 공급금액
String TaxOgnVatAmt                 =   "";             //원 부가세액


String Trns_EexctnStg               =   "";
String Trns_ExctnKind               =   "";
String Trns_RcvBnkCd                =   "";
String Trns_RcvBnkNm                =   "";
String Trns_RcvAcctNo               =   "";
String Trns_OwacNm                  =   "";
String Trns_WdrwPsbkPrtCtt          =   "";
String Trns_RcvPsbkPrtCtt           =   "";
String Trns_AcvhInst1               =   "";
String Trns_AcvhInst2               =   "";
String Trns_TelNo                   =   "";
String Trns_PaymUsag                =   "";
String Trns_CrdSetlMeth             =   "";

//2011.11.30 
String hmpwRoleDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"hmpwRoleDv"));            // 인력역할구분
String rcmsGrpCd                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"rcmsGrpCd"));             //RCMS그룹코드 
String WRTG_DT                      =   "";                                                                     //사용일자(전자세금계산서)
String APV_DT                       =   "";                                                                     //사용일자(카드)  

String ExclsVatAmtYn                =   ""; //부가세금액 제외 상태

String ItemData[]   ;


        
    
JSONObject jData = new JSONObject();                //Json 생성 ( 조회결과값 담기 )
    
//if("G00000000000004".equals(AgrmtSeqNo) ){ // 기타증빙
     PsnlAcctUseYn        = "Y";
     UnfyMgntInstYn       = "Y";
     RchExpAcctBnkCd      = "020";
     RchExpAcctNo         = "555555555550";
     Cus_ReprNm           = "가사장";
     Cus_BizNo            = "1001010000";
     Cus_TpBzNm           = "연구";
     Cus_TpOpNm           = "개발";
     Cus_Addr             = "인천광역시 남동구 구월동 1138";
     Cus_SplrCoNm         = "(주) 가 업체";
     hmpwRoleDv           = "";
     rcmsGrpCd            = "";
     WRTG_DT              = "";
     APV_DT               = "";
     
     
     jData.put("AGRMT_SEQ_NO","G00000000000004");
     jData.put("AGRMT_INST_ID","10112249");
     jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
     jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
     jData.put("AGRMT_INST_NM","㈜RCMS");
     jData.put("CPCG_INST_BZ_REG_NO","1111111111");
     jData.put("EXCTN_STG_DV","1");
     jData.put("AGRMT_INST_ROLE_DV","C");
     jData.put("BZ_EXP_ACCT_BNK_CD","020");
     jData.put("BZ_EXP_ACCT_NO","40000000000");
     jData.put("RCH_EXP_ACCT_BNK_CD","020");
     jData.put("RCH_EXP_ACCT_NO","1005000000415");
     jData.put("OWAC_NM","㈜RCMS");
     jData.put("INST_SBJT_PRGR_ST","07");
     jData.put("EXCTN_LIMT_ST","0");
     jData.put("EXCTN_LIMT_RSN","연구기관 자체 정산 처리");
     jData.put("MY_ACCT_TRNS_ALWN_YN","Y");
     jData.put("INST_TOTL_INST_AMT","20000");
     jData.put("AGRMT_CASH_LIM_AMT","20000");
     jData.put("PMS_ID","G01");
     jData.put("BZ_CLAS_CD","S1854");
     jData.put("BZ_CLAS_NM","RCMS 실습");
     jData.put("CPCG_INST_ID","11000001");
     jData.put("CPCG_INST_NM","한국산업기술평가관리원");
     jData.put("SBJT_ID","TEST0004");
     jData.put("SBJT_NM","RCMS 실습용 정산과제");
     jData.put("PRS_SBJT_STG","0");
     jData.put("ANNL","1");
     jData.put("DEV_STR_DT","20100524");
     jData.put("DEV_END_DT","20110524");
     jData.put("TOTL_INST_AMT","20000");
     jData.put("BUTR_ID","E201005262907595");
     jData.put("TRSC_EVDC_DV","E");
     jData.put("TRSC_PFMC_REG_DT","20100526");
     jData.put("TRSC_PFMC_REG_TM","125619");
     jData.put("SPLY_AMT_DFAMT_RSN",null);
     jData.put("ITXP_REG_YN","Y");
     jData.put("BZ_EXP_EXCTN_REG_YN","Y");
     jData.put("EXCTN_ST","B04110");
     jData.put("SPLR_CO_NM","㈜RCMS");
     jData.put("TOTL_AMT","100");
     jData.put("USE_SPLY_AMT","100");
     jData.put("USE_VAT_AMT","0");
     jData.put("EXCTN_KIND_DV","B03000");
     jData.put("NPRF_INST_YN","N");
     jData.put("SQBN_SPLR_EXCTN_RSN",null);
     jData.put("EXCLS_VAT_AMT_YN","N");
     jData.put("EXCTN_DV","1");

//}

%>


<title>연구비사용결과 상세조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">연구비사용결과 상세조회</p>
        </div>
        <!-- //head title// --> 
    </div>




<style type="text/css">
    div.tt_son {  width:550px; position:absolute; border-width:2; border-color:#3a679e; border-style:solid;font-family:Gulim;font-size:9pt; background-color:#FFFFFF }
    input.currency {text-align:right;padding-right:1px;}
    .cellItxpAdtnInfo {display:none;}
    .inputedit {background-color:#F0F4F9;}
</style>
<script type="text/javascript">
var agrMtSeqNo = "<%=AgrmtSeqNo%>"; 

jQuery(document).ready(function(){
    //Image Preload
    var preImg = ['//bt/bt_regist2.gif','//bt/bt_regist4.gif','//bt/bt_grid_close1.gif'];
    for(var i = 0; i < preImg;i++){
        var img = new Image();
        img.src = preImg[i];
    }
    
    uf_onLoadPage();
    
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
            $this.children().attr('src','//bt/bt_grid_close1.gif').attr('alt','닫기');
        }else{
            $this.parent().parent().next().next().hide();   
            $this.children().attr('src','//bt/bt_grid1.gif').attr('alt','추가입력');
        }
        return false;
    });
    
    
});
/******************************************************************
 * uf_onLoadPage         비목콤보박스생성 display on/off
 * @param
 * @return
******************************************************************/
function uf_onLoadPage(){
    if( isSubmit() ) return;    // 이중처리
    var frm =   document.frm;
    
    fnItxpInit();
    
    // 2011.12.12 태동현 START
    // 카이스트 대응으로 인해 기관용개별코드를 수정할 수 없도록 수정
    if("G01" == "<%=PmsId%>" && "00006277" == "<%=AgrmtInstId%>"){
        document.getElementById("AchvInstIndv1Cd").readOnly                 = true;
        document.getElementById("AchvInstIndv1Cd").style.backgroundColor    = "#d2d2d2";
    }
    // 2011.12.12 태동현 END
    
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                    try{   
                        document.body.setCapture(); // 'wait'
                        document.body.style.cursor = "wait";
                        setT12_01_00_0_r1(argMtSeqNo);
                        document.body.style.cursor = "auto";
                        document.body.releaseCapture(); //setCapture()_Next
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
                
                
    removeTempAttribute(frm);   //get2post 삭제
}

function DisplayDivMyAcctTransAlwn(){
    var frm = document.frm;

    get2post(frm, "AGRMT_SEQ_NO="+"<%=AgrmtSeqNo%>");
    get2post(frm, "AGRMT_INST_ID="+"<%=AgrmtInstId%>");
    
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                    try{   
                        document.body.setCapture(); // 'wait'
                        document.body.style.cursor = "wait";
                        setT12_01_00_0_r2(argMtSeqNo);
                        document.body.style.cursor = "auto";
                        document.body.releaseCapture(); //setCapture()_Next
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
                
                
    removeTempAttribute(frm);   //get2post 삭제
}

function setDefaultKindTrnsRchAcc(idx){
    // 허용비목을 디폴트로 설정
    document.getElementById('kind_TrnsRchAcc_'+idx).options[0].selected = true;
}
    
/******************************************************************
 * set_evdc_amt      비목 첫번째 row에 증빙금액 세팅
 * @param
 * @return
 *  page마다 customizing 되었음
******************************************************************/
var init = true;
var update_enabled = false;
function set_evdc_amt(){
    
    var frm =   document.frm;
    
    jQuery("#SelDtlsItxpCd").val("B0201");
    SelDtlsItxpCdOnChange("",0);
    jQuery("#SelSubDtlsItxpCd").val("B0201005");
    jQuery("#SelShrSorcSn").val("");
    jQuery("#EvdcDcmtCmadId").val("D201303113017071");
    jQuery("#ExtEdmsDocId").val("1360758351001092");
    
    jQuery("#EdmsDocId").val("1360758351001092");
    jQuery("#FileNm").val("이미지 3.png\;");
    if( "" != $.trim($("#EdmsDocId").val()) ){
        jQuery("#ItxpFileEvdc").html('<img src="/bt/bt_regist2.gif" alt="증빙파일등록">');
    }
    


        $('#d_SplrReprNm_'  +'0').html("(주)부산은행(김은동)");
        $('#d_SplrBzRegNo_' +'0').html("604-81-04753");
        $('#d_SplrTpopNm_'  +'0').html("은행");
        $('#d_SplrTpbzNm_'  +'0').html("금융");
        $('#d_SplrAdr_'     +'0').html("부산광역시 동구 범일동 830-38번지 ");
    
    
    $('#SplrBzRegSt_'       +'0').val("A04001");
    $('#SplrTaxtTypDv_'     +'0').val("A05001");
    
    
    
    fnItxpSetting(true,'0', 'T201303112250283','U201303113764290', 'B04101', 'T', 'B04101', '123', '2', '1', '1', '','B16000','','N'
            ,"11",'Y','N'
            ,'2','1', '1'
            ,'0','0', '0'
            ,'6048104753'
            );
    
    
    //이체계좌정보
    fnTrnsInfoSetting('0','T','2','B03004','003'
            ,'32303000000471','㈜RCMS','(주)부산은','㈜RCMS','금고은행테스트'
            ,'','11',"금고은행테스트", '', '1');
    
    jQuery("#SplrAuth_"         +"0").val("1"); //사업자확인 상태 설정
    jQuery("#rchrInfo_"         +'0').val("");
    jQuery("#SelShrSorcSn_"     +'0').val("");
    jQuery("#SqbnSplrExctnRsn_" +'0').val("");

    jQuery('#etc_ChkBzRegNo_'   +'0').hide();
    jQuery('#ChkBzRegNo_'       +'0').hide();

    
    
    if('3' != '0'){
        fnAddRow();
    }
    
    
    //기타증빙예외
    $('#etcimpex_' + '0').hide();
    if( 'E' == 'T' ){
        for(var i = 0 ; i < EtcImplItxpCd.length; i++){
            if( EtcImplItxpCd[i] == $('#SelSubDtlsItxpCd').val() ){
                $('#etcimpex_' + '0').show();
                $('#EtcEvdcExcCd_'+'0').val('');
                $('#EtcEvdcExcNo_'+'0').val('');
                break;
            } 
        }
    }
    
        $('#etc_SplrCoNm_'      +'1').val("1 ").attr('readonly',true);
        $('#etc_SplrBzRegNo_'   +'1').val("220-81-62517 ").attr('readonly',true);
        $('#etc_SplrTpopNm_'    +'1').val("1 ").attr('readonly',true);
        $('#etc_SplrTpbzNm_'    +'1').val("1 ").attr('readonly',true);
        $('#etc_SplrAdr_'       +'1').val("1 ").attr('readonly',true);
        $('#etc_SplrReprNm_'    +'1').val("1 ").attr('readonly',true);
        
        $('#d_SplrReprNm_'  +'1').html("1(1)");
        $('#d_SplrBzRegNo_' +'1').html("220-81-62517");
        $('#d_SplrTpopNm_'  +'1').html("1");
        $('#d_SplrTpbzNm_'  +'1').html("1");
        $('#d_SplrAdr_'     +'1').html("1");
    
    
    $('#SplrBzRegSt_'       +'1').val("A04001");
    $('#SplrTaxtTypDv_'     +'1').val("A05001");
    
    fnItxpSetting(true,'1', 'E201303112250284','U201303113764291', 'B04101', 'E', 'B04101', '품', '2', '1', '1', '','B16000','','N'
            ,"",'Y','N'
            ,'2','1', '1'
            ,'0','0', '0'
            ,'2208162517'
            );
    
    //이체계좌정보
    fnTrnsInfoSetting('1','E','2','B03005','003'
            ,'32303000000471','㈜RCMS','12','12','금고은행테스트'
            ,'','11',"금고은행테스트", '', '1');
    
    jQuery("#SplrAuth_"         +"1").val("1"); //사업자확인 상태 설정
    jQuery("#rchrInfo_"         +'1').val("");
    jQuery("#SelShrSorcSn_"     +'1').val("");
    jQuery("#SqbnSplrExctnRsn_" +'1').val("");

    jQuery('#etc_ChkBzRegNo_'   +'1').hide();
    jQuery('#ChkBzRegNo_'       +'1').hide();

    if('3' != '1'){
        fnAddRow();
    }
    
    //기타증빙예외
    $('#etcimpex_' + '1').hide();
    if( 'E' == 'E' ){
        for(var i = 0 ; i < EtcImplItxpCd.length; i++){
            if( EtcImplItxpCd[i] == $('#SelSubDtlsItxpCd').val() ){
                $('#etcimpex_' + '1').show();
                $('#EtcEvdcExcCd_'+'1').val('B07006');
                $('#EtcEvdcExcNo_'+'1').val('T,12341234123412341234');
                break;
            } 
        }
    }
    
        $('#etc_SplrCoNm_'      +'2').val("1 ").attr('readonly',true);
        $('#etc_SplrBzRegNo_'   +'2').val("220-81-62517 ").attr('readonly',true);
        $('#etc_SplrTpopNm_'    +'2').val("1 ").attr('readonly',true);
        $('#etc_SplrTpbzNm_'    +'2').val("1 ").attr('readonly',true);
        $('#etc_SplrAdr_'       +'2').val(" ").attr('readonly',true);
        $('#etc_SplrReprNm_'    +'2').val("1 ").attr('readonly',true);
        
        $('#d_SplrReprNm_'  +'2').html("1(1)");
        $('#d_SplrBzRegNo_' +'2').html("220-81-62517");
        $('#d_SplrTpopNm_'  +'2').html("1");
        $('#d_SplrTpbzNm_'  +'2').html("1");
        $('#d_SplrAdr_'     +'2').html("");
    
    
    $('#SplrBzRegSt_'       +'2').val("A04001");
    $('#SplrTaxtTypDv_'     +'2').val("A05001");
    
    fnItxpSetting(true,'2', 'E201303112250285','U201303113764292', 'B04101', 'E', 'B04101', '1', '2', '1', '1', '','B16000','','N'
            ,"",'Y','N'
            ,'2','1', '1'
            ,'0','0', '0'
            ,'2208162517'
            );
    
    //이체계좌정보
    fnTrnsInfoSetting('2','E','2','B03004','003'
            ,'32303000000471','㈜RCMS','KEIT','자계좌이체','금고은행테스트'
            ,'','1234',"금고은행테스트", '', '1');
    
    jQuery("#SplrAuth_"         +"2").val("1"); //사업자확인 상태 설정
    jQuery("#rchrInfo_"         +'2').val("");
    jQuery("#SelShrSorcSn_"     +'2').val("");
    jQuery("#SqbnSplrExctnRsn_" +'2').val("");

    jQuery('#etc_ChkBzRegNo_'   +'2').hide();
    jQuery('#ChkBzRegNo_'       +'2').hide();

    if('3' != '2'){
        fnAddRow();
    }
    
    //기타증빙예외
    $('#etcimpex_' + '2').hide();
    if( 'E' == 'E' ){
        for(var i = 0 ; i < EtcImplItxpCd.length; i++){
            if( EtcImplItxpCd[i] == $('#SelSubDtlsItxpCd').val() ){
                $('#etcimpex_' + '2').show();
                $('#EtcEvdcExcCd_'+'2').val('B07001');
                $('#EtcEvdcExcNo_'+'2').val('');
                break;
            } 
        }
    }
    
        $('#etc_SplrCoNm_'      +'3').val("1 ").attr('readonly',true);
        $('#etc_SplrBzRegNo_'   +'3').val("220-81-62517 ").attr('readonly',true);
        $('#etc_SplrTpopNm_'    +'3').val(" ").attr('readonly',true);
        $('#etc_SplrTpbzNm_'    +'3').val(" ").attr('readonly',true);
        $('#etc_SplrAdr_'       +'3').val(" ").attr('readonly',true);
        $('#etc_SplrReprNm_'    +'3').val("1 ").attr('readonly',true);
        
        $('#d_SplrReprNm_'  +'3').html("1(1)");
        $('#d_SplrBzRegNo_' +'3').html("220-81-62517");
        $('#d_SplrTpopNm_'  +'3').html("");
        $('#d_SplrTpbzNm_'  +'3').html("");
        $('#d_SplrAdr_'     +'3').html("");
    
    
    $('#SplrBzRegSt_'       +'3').val("A04001");
    $('#SplrTaxtTypDv_'     +'3').val("A05001");
    
    fnItxpSetting(true,'3', 'E201303112250286','U201303113764293', 'B04101', 'E', 'B04101', '1', '2', '1', '1', '','B16000','','N'
            ,"",'Y','N'
            ,'2','1', '1'
            ,'0','0', '0'
            ,'2208162517'
            );
    
    //이체계좌정보
    fnTrnsInfoSetting('3','E','2','B03004','003'
            ,'32303000000471','㈜RCMS','KEIT','자계좌이체','금고은행테스트'
            ,'','1',"금고은행테스트", '', '1');
    
    jQuery("#SplrAuth_"         +"3").val("1"); //사업자확인 상태 설정
    jQuery("#rchrInfo_"         +'3').val("");
    jQuery("#SelShrSorcSn_"     +'3').val("");
    jQuery("#SqbnSplrExctnRsn_" +'3').val("");

    jQuery('#etc_ChkBzRegNo_'   +'3').hide();
    jQuery('#ChkBzRegNo_'       +'3').hide();

    if('3' != '3'){
        fnAddRow();
    }
    
    //기타증빙예외
    $('#etcimpex_' + '3').hide();
    if( 'E' == 'E' ){
        for(var i = 0 ; i < EtcImplItxpCd.length; i++){
            if( EtcImplItxpCd[i] == $('#SelSubDtlsItxpCd').val() ){
                $('#etcimpex_' + '3').show();
                $('#EtcEvdcExcCd_'+'3').val('B07005');
                $('#EtcEvdcExcNo_'+'3').val('');
                break;
            } 
        }
    }
    
    update_enabled = true;
    
}

function fnTrnsInfoSetting(idx,evdcDv,exctnStg,exctnKind,bnkCd,acctNo,owacNm,wdrwPsbkPrtCtt,rcvPsbkPrtCtt,achvInst1,achvInst2,telNo, paymUsag, beforeCrdSetlMeth, crdSetlMeth){

    var mode = "1";
    mode = exctnStg;
    
    //카드 실시간계좌이체 방식
    if( evdcDv == 'C' ){
        $('#InstCrdSetlMeth').val(beforeCrdSetlMeth);
        $('#divTranInfo_'       +idx).show();
        if( beforeCrdSetlMeth == '2'){
            mode = "4";
            $('#divTranInfoItem_'   +idx).show();//계좌이체항목
        }else if( evdcDv == 'C' && beforeCrdSetlMeth == '1'){
            $('#divTranInfoItem_'   +idx).hide();//계좌이체항목
        }
    }else if( evdcDv == 'E' ){
        $('#divTranInfo_'       +idx).show();
        $('#divTranInfoItem_'   +idx).show();//계좌이체항목
    }else if( evdcDv == 'T' ){
        $("#divTranInfo_"       +idx).show();
        $('#divTranInfoItem_'   +idx).show();//계좌이체항목
    }
    
    exctn_ExctnStgDv_v2(mode, '2', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, bnkCd, acctNo,document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,idx);
    
    $('#ExctnStgDv_'        +idx).val(exctnStg      ).attr('disabled',true);    // 1:타계좌, 2:자계좌
    $('#kind_TrnsRchAcc_'   +idx).val(exctnKind     ).attr('disabled',true);    // 집행구분
    $('#RcvBnkCd_'          +idx).val(bnkCd         ).attr('disabled',true);    // 은행코드
    $('#RcvAcctNo_'         +idx).val(acctNo        ).attr('disabled',true);    // 계좌번호
    $('#OwacNm_'            +idx).val(owacNm        ).attr('disabled',true);    // 예금주명
    $('#WdrwPsbkPrtCtt_'    +idx).val(wdrwPsbkPrtCtt).attr('disabled',true);    // 연구비통장표시내용
    $('#RcvPsbkPrtCtt_'     +idx).val(rcvPsbkPrtCtt ).attr('disabled',true);    // 거래처통장표시내용
    $('#AchvInstIndv1Cd_'   +idx).val(achvInst1     ).attr('disabled',true);    // 기관용개별코드A
    $('#AchvInstIndv2Cd_'   +idx).val(achvInst2     ).attr('disabled',true);    // 기관용개별코드B
    $('#TelNo_'             +idx).val(telNo         ).attr('disabled',true);    // 전화번호
    $('#PaymUsag_'          +idx).val(paymUsag.replace(/&#34;/gi,'"')).attr('disabled',true);   // 지급용도
    

}


// 비목 테이블 콤보
var SelDtlsItxpCd = new Array();
var SelDtlsItxpNm = new Array();
var SelSubDtlsItxpCd = new Array();
var SelSubDtlsItxpNm = new Array();


function mkDtlsItxpCd(tObjIdx){
    var tObj = document.all["SelDtlsItxpCd"];
    var opt_name = "선택";

    tObj.options.length = 1;
    tObj.options[0] = new Option(opt_name,'',true,false);

    for(var i=0,j=SelDtlsItxpCd.length; i<j; i++){
        tObj.options[i+1] = new Option(SelDtlsItxpNm[i], SelDtlsItxpCd[i]);
    }
}
/******************************************************************
* SelDtlsItxpCdOnChange      세목변경
* @param
* @return
******************************************************************/
function SelDtlsItxpCdOnChange(obj, idx){

    if(typeof(obj)=="undefined" || obj==""){
        obj = document.all["SelDtlsItxpCd"];
        tObjIdx = idx;
    }

    var k = 0;
    var tObj = document.all["SelSubDtlsItxpCd"];
    var opt_name = "선택";
    if(obj.selectedIndex !=0 ){
        for(var j = 0;j < SelSubDtlsItxpCd.length; j++){
            if(obj.value == SelDtlsItxpCd[j]){k = j;}
        }
        tObj.options.length = SelSubDtlsItxpCd[k].length+1;
        tObj.options[0] = new Option(opt_name,'',true,false);

        for(var i=0; i < SelSubDtlsItxpCd[k].length; i++){
            tObj.options[i+1] = new Option(SelSubDtlsItxpNm[k][i], SelSubDtlsItxpCd[k][i],true,false);
        }
    }else{
        tObj.options.length = 1;
        tObj.options[0] = new Option(opt_name,'',true,false);
    }
    fnAbleItxpAdtn(obj,'1');
}

/******************************************************************
 * SelDtlsItxpCdOnChange         세세목변경시 실행함수
 * @param
 * @return
******************************************************************/
function SelDtlsItxpCdOnChange2(obj){
    
    if(document.frm.SelSubDtlsItxpCd.value == "B0206006"){
        var todate = new Date().getDate();
        var cookieValue = getCookie("cookie_P01_31_00.jsp");

        if(cookieValue==todate) return false;

        var frm = document.frm;
        var url = "/pop/T01_31_00.jsp";

        uf_frmNewWinNs(frm, url, 'NEW_ITXP_GUIDE', 800, 700, 'no');
        removeTempAttribute(frm);
    }
    //인건비성 비목선택시 인건비성지급계좌 설정
    PsnlItxpAcctNoSet();
    
}

/******************************************************************
* PsnlItxpAcctNoSet      인건비성지급계좌설정(내,외부인건비/연구수당)
* @param
* @return
******************************************************************/
function PsnlItxpAcctNoSet(){
    
    var frm     =   document.frm;
    var ExctnStgDv = "";
    
    _DtlsItxpCd = frm.SelSubDtlsItxpCd.value;
    
    for(var ridx =0; ridx < document.forms['frm'].elements['itxp_cnt'].value; ridx++){
            
        ExctnStgDv = (true==$('#ExctnStgDv1_'+ridx).attr('checked')) ? "1" : "2";
        if(ExctnStgDv == "1"){  
            if("C" != $('#EvmaGb_'+ridx).val() ){       
                if((_DtlsItxpCd == "B0101001") ||   (_DtlsItxpCd == "B0102001") || (_DtlsItxpCd == "B0203001") || (_DtlsItxpCd == "B0204001") || (_DtlsItxpCd == "B0205001")){  //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
                        //카드증빙이 아니고 인건비성지급계좌를 사용하는 기관인 경우에는 인건비성 지급계좌로 설정.
                    if(frm.S_PSNL_ACCT_USEYN.value == "Y"){
                        

                        var strVal  =   "003|20000000000|㈜RCMS";
                        
                        arrVal = strVal.split("|");
                        
                        document.getElementById("idFvrtAcct_"+ridx).style.display           = "none";
                        document.getElementById("idowacBtn_"+ridx).style.display            = "none";
                        document.getElementById("idExctnStgDv_td1_"+ridx).style.display     = "none";
                        document.getElementById("idExctnStgDv_td2_"+ridx).style.display     = "inline";
                        document.getElementById("idExctnStgDv_td2_"+ridx).innerHTML         = "인건비성지급계좌 사용기관";
                        document.getElementById("RcvBnkCd_"+ridx).value                     = arrVal[0];
                        document.getElementById("RcvAcctNo_"+ridx).value                    = arrVal[1];
                        document.getElementById("OwacNm_"+ridx).value                       = arrVal[2];
                        document.getElementById("RcvBnkCd_"+ridx).disabled                  = true;
                        document.getElementById("RcvAcctNo_"+ridx).disabled                 = true;
                        document.getElementById("OwacNm_"+ridx).disabled                    = true;
                        
                        if(document.getElementById('RcvBnkCd_'+ridx).options[document.getElementById('RcvBnkCd_'+ridx).options.selectedIndex].value == frm.S_RCH_ACC_BNK_CD.value
                        && jQuery('#RcvAcctCd_'+ridx).val() == frm.S_RCH_ACC_NO.value){
                            jQuery('#ExctnStgDv1_'+ridx).attr('checked',false); //타계좌이체
                            jQuery('#ExctnStgDv2_'+ridx).attr('checked',true);  //자계좌이체
                        }else{
                            jQuery('#ExctnStgDv1_'+ridx).attr('checked',true); //타계좌이체
                            jQuery('#ExctnStgDv2_'+ridx).attr('checked',false);  //자계좌이체
                        }
                    }
                }else{
                        document.getElementById("idFvrtAcct_"+ridx).style.display       = "inline";
                        document.getElementById("idowacBtn_"+ridx).style.display            = "inline";
                        document.getElementById("idExctnStgDv_td1_"+ridx).style.display     = "inline";
                        document.getElementById("idExctnStgDv_td2_"+ridx).style.display     = "none";
                        document.getElementById("idExctnStgDv_td2_"+ridx).innerHTML     = "";
                        //document.getElementById("RcvBnkCd_"+ridx).value                   = "";
                        //document.getElementById("RcvAcctNo_"+ridx).value              = "";
                        //document.getElementById("OwacNm_"+ridx).value                 = "";
                        document.getElementById("RcvBnkCd_"+ridx).disabled              = false;
                        document.getElementById("RcvAcctNo_"+ridx).disabled             = false;
                        document.getElementById("OwacNm_"+ridx).disabled                    = false;
                }
            }
        }
    }//END of For
}



/******************************************************************
 * fnAddRow      테이블 로우 추가
 * @param
 * @return
******************************************************************/


//테이블 로우 추가
/*
function fnAddRow(){
    
    var tbody = jQuery("#ItxpList > tbody");
    var rows = tbody.find(">tr").length/3;
    var newRow1 = tbody.find(">tr").eq(-3).clone(true);
    var newRow2 = tbody.find(">tr").eq(-2).clone(true);
    var newRow3 = tbody.find(">tr:last").clone(true);

    fnControlInit([newRow1,newRow2,newRow3], rows);
    
    //newRow1.addClass('blue_line').find('.btn-opendtl').css('visibility','visible');
    newRow1.addClass('blue_line').find('.btn-opendtl > img').attr('src','//bt/bt_grid1.gif').attr('alt','추가입력');
    newRow1.appendTo(tbody)
    newRow2.hide().appendTo(tbody);
    newRow3.hide().find('.frmElmtArea').html('');
    newRow3.appendTo(tbody);

    
    jQuery('.currency').ForceNumericOnly();
    document.forms['frm'].elements['itxp_cnt'].value    = parseInt(document.forms['frm'].elements['itxp_cnt'].value, 10)+1;

}

function fnControlInit(arrRowObj, rowCnt){
    for(i = 0 ; i < arrRowObj.length ; i++ ){
        jRowObj = arrRowObj[i];
        
        jQuery(jRowObj).find(':input[type="radio"]').each(function(){
            var id = this.id;
            if(id){
                fnConvertId(this,rowCnt);
                this.name = this.name.split("_")[0]+"_"+rowCnt;
            }
        });
        
        jQuery(jRowObj).find(':input[type!="radio"]').val("").each(function(){
            var id = this.id;
            if(id){
                fnConvertId(this,rowCnt);
            }
        });
        
        jQuery(jRowObj).find("select").val("").each(function(){
            var id = this.id;
            if(id){
                if( /^EvmaGb/.test(id) ){
                    $(this).attr('disabled',false); 
                }
                fnConvertId(this,rowCnt);
            }
        });
    
        jQuery(jRowObj).find("span").each(function(){
            var id = this.id;
            if(id){
                var _id = this.id.split("_")[0]+"_"+rowCnt;
                if( _id=="ItxpAdtnInfo_"+rowCnt ){
                    jQuery(this).html('<img src="/bt/bt_nonregist.gif" alt="미등록">');
                }else if( /^idBzRegNo/.test(id) ){
                    
                }else{
                    $(this).text("");
                }
                fnConvertId(this,rowCnt);
                
            }
        });

        jQuery(jRowObj).find("div").each(function(){
            var id = this.id;
            if(id){
                fnConvertId(this,rowCnt);
            }
        });
        
        jQuery(jRowObj).find("a").each(function(){
            var id = this.id;
            if(id){
                fnConvertId(this,rowCnt);
            }
        });
    }//end of for
}
*/
// 비목테이블 초기화
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


function fnAppendChild(ridx, nm, val){
    var inputNode = document.createElement('input');
    inputNode.setAttribute('type','hidden');
    inputNode.setAttribute('id',nm+'_'+ridx);
    inputNode.setAttribute('name',nm);
    inputNode.setAttribute('value',val);

    document.getElementById('frmElmtArea_'+ridx).appendChild(inputNode);
}

var totlTrnsAmt = 0;
// 기등록건 선택 or 입력
function fnItxpSetting(update, idx, butrId, buitId, evdcDv, trscSt, item, useAmt, splyAmt, vatAmt, adtnInfo, isptst,isptsn,isptupdyn,splyAmtDfamRsn, ExclsVatAmtYn,TaxOgnSumAmt,TaxOgnSplyAmt,TaxOgnVatAmt){    
    
    var tbody = jQuery("#ItxpList > tbody");
    
    var tr_idx = (idx*3);
    
    var row1 = tbody.find(">tr").eq(tr_idx);
    var row2 = tbody.find(">tr").eq(tr_idx+1);
    var row3 = tbody.find(">tr").eq(tr_idx+2);
    
    //정상인건만 수정 가능 그 외 상태건들은 disable
    if( trscSt != 'B04110' || update == false ){
        jQuery("#ItxpChk_"+idx).attr('disabled', true);
    
        jQuery("#ItxpItem_"         +idx).attr('disabled',true);
        jQuery("#ItxpUseAmt_"       +idx).attr('disabled',true);
        jQuery("#ItxpSplyAmt_"      +idx).attr('disabled',true);
        jQuery("#ItxpVatAmt_"       +idx).attr('disabled',true);
        
        row2.find('input').attr('disabled',true);
        row2.find('select').attr('disabled',true);
        row3.find('input').attr('disabled',true);
        row3.find('select').attr('disabled',true);
        
    }else{
        jQuery("#ItxpChk_"+idx).attr('disabled', false);
        
        jQuery("#ItxpItem_"         +idx).attr('disabled',false);
        jQuery("#ItxpUseAmt_"       +idx).attr('disabled',false);
        jQuery("#ItxpSplyAmt_"      +idx).attr('disabled',false);
        jQuery("#ItxpVatAmt_"       +idx).attr('disabled',false);

        row2.find('input').attr('disabled',false);
        row2.find('select').attr('disabled',false);
        row3.find('input').attr('disabled',false);
        row3.find('select').attr('disabled',false);
    }
        
    jQuery("#ButrId_"           +idx).val(butrId);
    jQuery("#BuitId_"           +idx).val(buitId);
    jQuery('#EvmaGb_'           +idx).val(evdcDv).attr('disabled',true);
    jQuery("#ItxpItem_"         +idx).val(item);
    jQuery("#ItxpUseAmt_"       +idx).val(toMoney(useAmt));
    jQuery("#rchrAmt_"          +idx).val(toMoney(useAmt));
    jQuery("#ItxpSplyAmt_"      +idx).val(toMoney(splyAmt));
    jQuery("#ItxpVatAmt_"       +idx).val(toMoney(vatAmt));

    jQuery("#ItxpAdtnInfoVal_"  +idx).text(adtnInfo);
    

    
    
    jQuery("#txt_trnsAmt_"      +idx).text(toMoney(useAmt));
    jQuery("#txt_splyAmt_"      +idx).text(toMoney(splyAmt));
    jQuery("#txt_vatAmt_"       +idx).text(toMoney(vatAmt));
    
    jQuery("#ItxpVatAmt_"       +idx).attr('readonly','');
    
    if( evdcDv == "T" ){
        
        //세금계산서는 금액 수정이 불가능
        jQuery("#ItxpUseAmt_"       +idx).attr('disabled',true);
        jQuery("#ItxpSplyAmt_"      +idx).attr('disabled',true);
        jQuery("#ItxpVatAmt_"       +idx).attr('disabled',true);
        
        var T_args = [
            'T_ExecTxblApvNo','T_SplpBzRegNo','T_SplpSucoEnplcNo','T_SplpCoNm','T_SplpTpbzNm','T_SplpTpopNm'
            ,'T_SplpReprNm','T_SplpAdr','T_SplrBzRegNo','T_SplrChidCoEnplcNo','T_SplrCoNm','T_SplrTpbzNm'
            ,'T_SplrTpopNm','T_SplrReprNm','T_SplrAdr','T_SplyAmt','T_VatAmt','T_SumAmt'
            ,'T_Rmk','T_CashAmt','T_ChkAmt','T_DrftAmt','T_CredRcblAmt','T_WrtgDt','T_SplpEmalAdr1','T_SplpEmalAdr2','T_SplrEmalAdr','T_CorcRsn','T_ReptNcnt'
            ,'T_strUseDt','T_strMitmNm','T_strMitmUprc','T_strMitmQnt','T_strSplyAmt','T_strVatAmt','T_strMitmNrm','T_strRmk'
            ];
        for(var i = 0 ; i < T_args.length; i++ ){ fnAppendChild(idx, T_args[i],''); }
        
        fnAppendChild(idx, 'T_ExclsVatAmtYn'    , ExclsVatAmtYn);
        fnAppendChild(idx, 'T_Evdc_SumAmt'      , useAmt);
        fnAppendChild(idx, 'T_Evdc_SplyAmt'     , splyAmt);
        fnAppendChild(idx, 'T_Evdc_VatAmt'      , vatAmt);
        
        //공급금액 차액 발생시 공급금액 차액사유 폼 표시
        if( TaxOgnSplyAmt != splyAmt ){
            $('#SplyAmtDfamtRsn_tr_'+idx).show();
            $('#SplyAmtDfamtRsn_'+idx).val(splyAmtDfamRsn);
        }
    }else if( evdcDv == "C" ){
        
        var C_args = [
            "C_CrdNo","C_FncInstCd","C_CrdKind","C_CrdTyp","C_BuyApvDv","C_BuyApvCanYn","C_ApvDt"
            ,"C_ApvDrtm","C_ApvNo","C_PrdDv","C_BuyDt","C_OvrsUseYn","C_BuyClctNo","C_SlipAcqr"
            ,"C_SplyPrcAmt","C_VatAmt","C_SrvFee","C_ApvSum","C_MestNm","C_MestTaxtTypInfo"
            ,"C_MestTaxtTypInqDt","C_MestReprNm","C_MestBzNo","C_MestNo","C_MestTelNo","C_MestAdr1"
            ,"C_MestAdr2","C_CrdDv","C_CmBrTp","C_TpbzCd","C_SetlScheDt"
        ];
        for(var i = 0 ; i < C_args.length; i++ ){ fnAppendChild(idx, C_args[i],''); }
                
        fnAppendChild(idx, 'C_Evdc_SumAmt',useAmt);
        fnAppendChild(idx, 'C_Evdc_SplyAmt',splyAmt);
        fnAppendChild(idx, 'C_Evdc_VatAmt',vatAmt);
    }else{
        fnAppendChild(idx, 'E_Evdc_SumAmt',useAmt);
    }

    if( adtnInfo != ""){
        jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_regist4.gif" alt="증비등록">');
    }
    totlTrnsAmt += parseInt(useAmt,10);
    $('#totlAmt').text(toMoney(totlTrnsAmt));
    
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
    
    if( typeof update_enabled != 'undefined' && false == update_enabled ){
        alert("현재 증빙정보를 수정할 수 없습니다. 상태정보를 확인 하세요");
        return;
    }
    
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

/******************************************************************
 * uf_edmsUploadFile        EDMS파일업로드 공통메소드 호출
 * @param
 * @return
******************************************************************/
function uf_edmsUploadFile(mode,idx, edmsDocId){
    var docKey;
    var usrId;          //사용자ID
    var hmpwRoleDv;     //사용자권한 
    var rcmsGrpCd;      //RCMS그룹코드 
    var evdcDv;         //증빙구분
    var pmsId;          //PMSID
    var sbjtId;         //과제번호
    var agrmtSeqNo;     //협약일련번호
    var agrmtInstId;    //협약기관
    var useDt;          //사용일자
    var itxpCd;         //비목코드
    var DtlsItxpCd;     //세목코드
    var SubDtlsItxpCd;  //세세목코드
    
    var frm     =   document.frm;
    frm.dockeyNo.value  =   idx;
    

    //세목선택체크
    if(!chk_frm_value("SelDtlsItxpCd")) return;
    //세세목선택체크
    if(!chk_frm_value("SelSubDtlsItxpCd"))  return;

    usrId               = "SMTEST";
    hmpwRoleDv          = "";
    rcmsGrpCd           = "";  
    evdcDv              = "E";//멀티 선택이 가능하여 기타로 Fixed
    
    if(rcmsGrpCd == "MR042" || rcmsGrpCd == "MR043" || rcmsGrpCd == "MR023" ){
        hmpwRoleDv = "03";
    } 
    

<%  
    Calendar today = Calendar.getInstance();
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

    pmsId               = frm.S_PMS_ID.value;
    sbjtId              = frm.S_SBJT_ID.value;
    agrmtSeqNo          = frm.S_AGRMT_SEQ_NO.value;
    agrmtInstId         = frm.S_AGRMT_INST_ID.value;
    
    itxpCd          = trim(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value).substring(0,4)+"0";
    DtlsItxpCd      = frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
    SubDtlsItxpCd   = frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
    
    if("create"==mode){
        
        //2011 신규 EDMS 연계키 생성
        //연계키생성( PMSID + 과제ID + 협약일련번호 + 협약기관 + 사용일 + 증빙구분 + 비목 + 세목 + 세세목)
        docKey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
        frm.docKey.value    =   docKey;

        // EDMS첨부파일등록호출
        edmsUploadFileNew("frm", mode, docKey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
        
    }else{
        // EDMS첨부파일등록호출
        edmsUploadFileNew("frm", mode, edmsDocId, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
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

/******************************************************************
 * chk_save     저장전 유효성 체크
 * @param
 * @return
******************************************************************/
function chk_save(){
    var frm = document.frm;
    var param,target_url;
    

    
    $('#Evdc_SumAmt'    ).val($('#tot_TrnsAmt'  ).text().replace(',',''));      //사용금액
    $('#Evdc_SplyAmt'   ).val($('#tot_SplyAmt'  ).text().replace(',',''));      //공급금액
    $('#Evdc_VatAmt'    ).val($('#tot_VatAmt'   ).text().replace(',',''));      //부가세금액

    //-----------------------------------
    //  비목등록정보 유효성 검사
    //-----------------------------------
    
    if(!chk_frm_value("SelDtlsItxpCd"))     return false;           // 세목
    if(!chk_frm_value("SelSubDtlsItxpCd"))  return false;           // 세세목  

    for(var i=0; i<document.frm.itxp_cnt.value; i++){

        if(!chk_frm_value("ItxpItem",i))            return false;           // 품목
        if(!chk_frm_value("ItxpUseAmt",i))          return false;           // 사용금액
        if(!chk_frm_value("ItxpSplyAmt",i))         return false;           // 공급금액
        if(!chk_frm_value("ItxpVatAmt",i))          return false;           // 부가세
        
        //-----------------------------------
        //  비영리기관이 간접비 집행시 증빙서류 인건비내역등록안함
        //  신규비목코드 추가로 인한 연구과제추진비인 경우에도 증빙서류 인건비내역등록안함
        //-----------------------------------
        //if(!(((frm.S_NPRF_INST_YN.value == "Y") && (chk_itxpExist2('B0301001'))) 
        if(!(
                (chk_itxpExist2('B0206001') && "E" != frm.Evdc_Dv.value)
                || (chk_itxpExist2('B0206002') && "E" != frm.Evdc_Dv.value) 
                || (chk_itxpExist2('B0206003') && "E" != frm.Evdc_Dv.value)
                || (chk_itxpExist2('B0206004') && "E" != frm.Evdc_Dv.value)
                || (chk_itxpExist2('B0206005') && "E" != frm.Evdc_Dv.value)
                || chk_itxpExist2('B0206006')
                )){
        
            //-----------------------------------
            //  증빙서류 체크
            //-----------------------------------
            if(null==frm.EdmsDocId.value || ""==frm.EdmsDocId.value){
                    alert("증빙서류를 등록해주세요.");
                    return false;
            }
            //-----------------------------------
            //  인건비내역 체크(인건비,연구수당인경우만 등록필수)
            //-----------------------------------
            if(frm.rchrInfo.length > 1){
                for(var j=0;j<frm.rchrInfo.length;j++){
                    if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                        if(null==frm.rchrInfo[j].value || ""==frm.rchrInfo[j].value){
                            alert("인건비내역을 등록해주세요.");
                            return false;
                        }else{
                            if(frm.rchrAmt[j].value.replace(/,/gi,"") != frm.ItxpUseAmt[j].value.replace(/,/gi,"")){
                                alert("비목금액의 합계와 등록된 인건비내역의 금액과 일치하지 않습니다..");
                                return false;
                            }
                        }
                    }
                }
            }else{
                if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                    if(null==frm.rchrInfo.value || ""==frm.rchrInfo.value){
                        alert("인건비내역을 등록해주세요.");
                        return false;
                    }else{
                        if(frm.rchrAmt.value.replace(/,/gi,"") != frm.ItxpUseAmt.value.replace(/,/gi,"")){
                            alert("비목금액의 합계와 등록된 인건비내역의 금액과 일치하지 않습니다..");
                            return false;
                        }
                    }
                }
            }
        }
        
        //-----------------------------------
        //  계좌이체 요청항목 유효성 검사
        //-----------------------------------
            if( !("C"==$('#EvmaGb_'+i).val()) ){
                var exctnStgDv = (true == $('#ExctnStgDv1_'+i).attr('checked') ) ? "1" : "2";
                
                // 타계좌일 경우
                if("1"==exctnStgDv){
                    //-----------------------------------
                    //  증빙구분 따른 세세목 유효성검사
                    //-----------------------------------
                    var msg = chk_Itxp_ExctnStgDv(frm, $('#EvmaGb_'+i).val(),'2');
                    if(!(""==msg)){
                        alert(msg);
                        return false;
                    }   
                }else{
                    //-----------------------------------
                    //  집행종류구분에 따른 세세목 유효성검사
                    //-----------------------------------
                    var msg = chk_Itxp_kindTrnsRchAcc(frm, $('#kind_TrnsRchAcc_'+i).val(), frm.S_NPRF_INST_YN.value, '1');
                    if(!(""==msg)){
                        alert(msg);
                        return false;
                    }
                }   
            }
            
            if( !(("C" == $('#EvmaGb_'+i).val()) &&  ("1"==frm.InstCrdSetlMeth.value))){
                if( $('#OwacNm+'+i).val() == "" ){
                    alert("예금주조회를 해주십시오.");
                    fnOpenTrFocus($('#OwacNm+'+i),i);
                    return false;
                }   
            }
    
            
    }// End of for
    
    var msg = chk_itxp_evdc_rst_amt();
    if( !( "" == msg ) ){  
        alert(msg);
        return false;   
    }
    return true;
}

/******************************************************************
 * chk_itxp_evdc_rst_amt    비목등록금액과 증빙금액 일치여부 체크
 * @param
 * @return
 * @author soneunjun
******************************************************************/
function chk_itxp_evdc_rst_amt(){
    var frm =   document.frm;

    var useAmt = 0, splyAmt = 0, vatAmt = 0;
    var msg =   "",return_msg   =   "";
    //비목등록금액 합계
    for(var i=0; i<document.forms['frm'].elements['itxp_cnt'].value; i++){
        useAmt  = Number($("#ItxpUseAmt_"+i).val().replace(/,/gi,""));
        splyAmt = Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        vatAmt  = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
    
    
        if( "C" == $('#EvmaGb_'+i).val() ){
            if( useAmt != Number($('#C_Evdc_SumAmt_'+i).val()) ){   
                return_msg  ="비목금액의 합계금액이 등록된 증빙의 합계금액("+toMoney($('#C_Evdc_SumAmt_'+i).val())+")과 일치하지 않습니다.";
                return return_msg;          
            }
        }else if( "T" == $('#EvmaGb_'+i).val() ){
            
            if(useAmt != Number($("#T_Evdc_SumAmt_"+i).val())){
                return_msg  = "비목금액의 합계금액이 등록된 증빙의 합계금액("+toMoney($("#T_Evdc_SumAmt_"+i).val())+")과 일치하지 않습니다.";
                return return_msg;
            }else if( splyAmt != Number($("#T_Evdc_SplyAmt_"+i).val()) ){   
                return_msg  ="비목금액의 공급금액이 등록된 증빙의 공급금액("+toMoney($("#T_Evdc_SplyAmt_"+i).val())+")과 일치하지 않습니다.";
                return return_msg;
            }else if( vatAmt != Number($("#T_Evdc_VatAmt_"+i).val())){
                return_msg  ="비목금액의 부가세금액이 등록된 증빙의 부가세금액("+ toMoney($("#T_Evdc_VatAmt_"+i).val())+")과 일치하지 않습니다.";
                return return_msg;
            }
    
        //기타, 카드는 합산금액만 일치하면 등록이 가능함(공급금액,부가세액 변경 가능)
        }else if( "E" == $('#EvmaGb_'+i).val() ){
            if( useAmt != Number($("#E_Evdc_SumAmt_"+i).val()) ){
                return_msg  = "비목금액의 합계금액이 등록된 증빙의 합계금액("+toMoney($("#E_Evdc_SumAmt_"+i).val())+")과 일치하지 않습니다.";
                return return_msg;
            }
        }else{
            alert("증빙 미등록 상태입니다.");
        }
    }
    return return_msg;
}

/******************************************************************
 * uf_Rsltitxp_update       /증빙/비목수정
 * @param
 * @return
******************************************************************/
function uf_Rsltitxp_update(){
    var frm = document.frm;
    var param,target_url;

    // 유효성 검사
    if(!chk_save()) return;
    
    if(!confirm("수정하시겠습니까?")){return;}
    
    param =     "AGRMT_SEQ_NO="+frm.S_AGRMT_SEQ_NO.value;
    param +=    "&AGRMT_INST_ID="+frm.S_AGRMT_INST_ID.value;
    param +=    "&PMS_ID="+frm.S_PMS_ID.value;
    param +=    "&BZ_CLAS_CD="+frm.S_BZ_CLAS_CD.value;
    param +=    "&CPCG_INST_BZPR_NO="+frm.S_CPCG_INST_BZPR_NO.value;
    param +=    "&AGRMT_INST_BZPR_NO="+frm.S_AGRMT_INST_BZPR_NO.value;
    
    //세목값담기
    param   +=  "&DTLS_ITXP_CD="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
    param   +=  "&DTLS_ITXP_NM="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].text;
        
    //세세목값담기
    param   +=  "&SUB_DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
    param   +=  "&SUB_DTLS_ITXP_NM="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].text;
    
    /* 
    target_url  =   "/jsp/u01/u12/U12_03_50_u.jsp";
    get2post(frm, param);
    frm.action = target_url;
    frm.target = "sendIfrm";
    fn_submit(frm);
    removeTempAttribute(frm);
     */
    
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                    reset_submit();
                    alert("수정되었습니다.");
                    window.close();
                    opener.uf_search();
                   
                }, 1000);   // 1초후 실행 1000 = 1초s
                
                
    removeTempAttribute(frm);   //get2post 삭제
    
    
}
//-------------------------------
//  카드결제방식에따른 화면구성변경
//-------------------------------
function uf_crdSetlMeth(){
    if("C"=='<%=BzExpExctnEvdcDv%>' && "1"=='<%=CrdSetlMeth%>'){
        document.getElementById("divTranInfoItem").style.display    = "none";
    }
}


/******************************************************************
 * calc_amtSet2     비목합계금액계산
 * pt_common.js override calc_amtSet2 function
 * @param
 * @return
******************************************************************/
calc_amtSet2 = function(obj, isFixed, dv){
    var useAmt      = 0;            // 사용금액
    var splyAmt     = 0;            // 공급금액
    var vatAmt      = 0;            // 부가세
    var tot_useAmt  = 0;            // 총사용금액
    var tot_splyAmt = 0;            // 총공급금액
    var tot_vatAmt  = 0;            // 총부가세
    if( dv == null ) dv = "1";      // 1:증빙우선, 2:비목우선
    
    if(typeof isFixed == "undefined"){
        isFixed = false;
    }
    // 사용금액 설정
    for(var i=0; i<document.forms['frm'].elements['itxp_cnt'].value; i++){
        
        useAmt      = Number($("#ItxpUseAmt_"+i).val().replace(/,/gi,""));
        vatAmt      = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
        splyAmt     = useAmt-vatAmt;
        if( splyAmt <= 0 ){
            alert("부가세는 사용금액을 초과할 수 없습니다.");
            vatAmt = 0;
            splyAmt = useAmt;
            $("#ItxpVatAmt_"+i).val('0');
        }
        $("#ItxpSplyAmt_"+i).val(toMoney(splyAmt));

        tot_splyAmt +=  splyAmt;
        tot_vatAmt  +=  vatAmt;
        tot_useAmt  +=  useAmt;
        
        // 기타증빙 && 사용등록,사용실행일 경우만 설정
        if( ("E" == $('#EvmaGb_'+ i ).val() && false == isFixed) || dv == "2" ){
            // 이체금액, 공급가액, 부가가치세액 설정
            document.getElementById("txt_trnsAmt_"+i).innerHTML = toMoney(useAmt);
            document.getElementById("txt_splyAmt_"+i).innerHTML = toMoney(splyAmt);
            document.getElementById("txt_vatAmt_"+i).innerHTML  = toMoney(vatAmt);
        }else{

        }       
    }

    
    // 기타증빙 && 사용등록,사용실행일 경우만 설정
    if( "E" == $('#EvmaGb_'+ i ).val() && false == isFixed ){

        
    }else{
        
    }   
    // 공급금액, 부가세액 설정
    document.getElementById("evdc_splyAmtTxt").innerHTML    = toMoney(tot_splyAmt);
    document.getElementById("evdc_vatAmtTxt").innerHTML     = toMoney(tot_vatAmt);  
    
    // 비목합계 설정
    document.getElementById("tot_TrnsAmt").innerHTML        = toMoney(tot_useAmt);
    document.getElementById("tot_splyAmt").innerHTML        = toMoney(tot_splyAmt);
    document.getElementById("tot_vatAmt").innerHTML         = toMoney(tot_vatAmt);
    
    
}

</script>
<script type="text/javascript" src="../../../js/pt_itxp_common.js"></script>

<div id="body">
  <!-- content start -->
  <div id="content">
    <div class="t10"></div>
    <!--  비목등록내역 상세내용 표 start -->
        <!-------------------------------------------------------------------------------->
        <!--    과제상세표시박스 공통부 시작 -->
        <!-------------------------------------------------------------------------------->
        <div class="t10 b20 pop_wh">
        <%@ include file="/inc/sbjt_info_pop.jsp" %>
        </div>                                                                                                                
        <!-------------------------------------------------------------------------------->
        <!--    과제상세표시박스 공통부 끝 -->
        <!-------------------------------------------------------------------------------->

        <form name="frm" id="frm" method="post">
            <!-- 공통정보  -->
            
            <input type="hidden" id="BUIT_GRP_ID"           name="BUIT_GRP_ID"              value="U201303113764282"/>
            <input type="hidden" id="S_PMS_ID"              name="S_PMS_ID"                 value="G01"/>
            <input type="hidden" id="S_BZ_CLAS_CD"          name="S_BZ_CLAS_CD"             value="S1598"/>
            <input type="hidden" id="S_SBJT_ID"             name="S_SBJT_ID"                value="TEST0002"/>
            <input type="hidden" id="S_PRS_SBJT_STG"        name="S_PRS_SBJT_STG"           value="0"/>
            <input type="hidden" id="S_ANNL"                name="S_ANNL"                   value="3"/>
            <input type="hidden" id="S_AGRMT_SEQ_NO"        name="S_AGRMT_SEQ_NO"           value="G00000000000002"/>
            <input type="hidden" id="S_AGRMT_INST_ID"       name="S_AGRMT_INST_ID"          value="10112249"/>
            <input type="hidden" id="S_CPCG_INST_BZPR_NO"   name="S_CPCG_INST_BZPR_NO"      value="1111111111"/>
            <input type="hidden" id="S_AGRMT_INST_BZPR_NO"  name="S_AGRMT_INST_BZPR_NO"     value="1111111111"/>
            <input type="hidden" id="S_EXCTN_STG_DV"        name="S_EXCTN_STG_DV"           value="2"/>
            <input type="hidden" id="S_RCH_ACC_BNK_CD"      name="S_RCH_ACC_BNK_CD"         value="003"/>
            <input type="hidden" id="S_RCH_ACC_BNK_NM"      name="S_RCH_ACC_BNK_NM"         value="기업"/>
            <input type="hidden" id="S_RCH_ACC_NO"          name="S_RCH_ACC_NO"             value="08203000000220"/>
            <input type="hidden" id="S_SBJT_NM"             name="S_SBJT_NM"                value="RCMS 실습용 진행과제"/>
            <input type="hidden" id="S_BZ_CLAS_NM"          name="S_BZ_CLAS_NM"             value="RCMS 실습"/>
            <input type="hidden" id="S_NPRF_INST_YN"        name="S_NPRF_INST_YN"           value="N"/>
            <input type="hidden" id="S_MY_ACCT_TRNS_ALWN_YN" name="S_MY_ACCT_TRNS_ALWN_YN"  value="N"/>
            <input type="hidden" id="S_PSNL_ACCT_USEYN"     name="S_PSNL_ACCT_USEYN"        value="Y"/>
            <input type="hidden" id="S_UNFY_MGNT_INST_YN"   name="S_UNFY_MGNT_INST_YN"      value="Y"/>
            <input type="hidden" id="ExctnRegDt"            name="ExctnRegDt"               value="20130311"/>           <!-- 집행실행일자                 -->
            <input type="hidden" id="ExctnRegDrtm"          name="ExctnRegDrtm"             value="204030"/>         <!-- 집행실행시간                 -->
            <input type="hidden" id="Evdc_Dv"               name ="Evdc_Dv"                 value="E"/>     <!-- 증빙구분                           -->
            <input type="hidden" id="Evdc_SumAmt"           name ="Evdc_SumAmt"             value=""/>          <!-- 증빙_이체금액                        -->
            <input type="hidden" id="Evdc_SplyAmt"          name ="Evdc_SplyAmt"            value=""/>          <!-- 증빙_공급금액                        -->
            <input type="hidden" id="Evdc_VatAmt"           name ="Evdc_VatAmt"             value=""/>          <!-- 증빙_부가세액                        -->
            <input type="hidden" id="Cus_SplrCoNm"          name ="Cus_SplrCoNm"            value="1"/>         <!-- 공급자회사명                         -->
            <input type="hidden" id="dockeyNo"              name="dockeyNo"                 value=""/>                                      <!-- 선택된 증빙테이블키         -->
            <input type="hidden" id="doc_dv"                name="doc_dv"                   value=""/>                                      <!-- 증빙서류/인건비내역             -->
            <input type="hidden" id="docName"               name="docName"                  value=""/>                                      <!-- 리턴결과값(등록파일명)   -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""/>                                      <!-- 생성된EDMS_dockey         -->
            <input type="hidden" id="methodName"            name="methodName"               value=""/>                                      <!-- 메소드명 -->    
            <input type="hidden" id="attr98"                name="attr98"                   value=""/>                                      <!-- 리턴결과값(등록파일명)   -->
            <input type="hidden" id="attr99"                name="attr99"                   value=""/>                                      <!-- 리턴결과값(등록파일갯수)  -->
            <input type="hidden" id="itxp_cnt"              name="itxp_cnt"                 value="1"/>                                     <!-- 비목등록건수             -->
            <input type="hidden" id="p_rchrInfo"            name="p_rchrInfo"               value=""/>
            <input type="hidden" id="BeforeCrdSetlMeth"     name="BeforeCrdSetlMeth"        value=""/>                                   <!--    기등록된 카드결제방식                 -->
            <input type="hidden" id="InstCrdSetlMeth"       name="InstCrdSetlMeth"          value="1"/>                   <!--    카드결제방식                  -->
            
            <!-- 증빙파일 -->
            <input type="hidden" name="EVDC_DCMT_CMAD_ID"   id="EvdcDcmtCmadId"     value="D201303113017071" /> <!-- 생성된EDMS_dockey -->
            <input type="hidden" name="ExtEdmsDocId"        id="ExtEdmsDocId"       value="" />
            <input type="hidden" name="EdmsDocId"       id="EdmsDocId"      value="" /> <!-- 생성된EDMS_dockey -->
            <input type="hidden" name="FileNm"          id="FileNm"         value="" /> <!-- 리턴결과값(등록파일명) -->
            <input type="hidden" name="file_Cnt"        id="file_Cnt"       value="" /> <!-- 리턴결과값(등록파일갯수) -->
            
    <!-- // 비목등록내역 상세내용 표 end// -->
    <!-- 증빙구분 상세내용 표 start -->
    <div class="pop_wh b20">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="증빙구분 상세내용 표" class="tbl_type02">
       <caption>
              비목우선 등록 검색
              </caption>
              <colgroup>
              <col width="12%" />
              <col width="88%" />
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row">비목선택</th>
                  <td><select title="세목선택" style="min-width:100px;" id="SelDtlsItxpCd" name="SelDtlsItxpCd"  onchange="SelDtlsItxpCdOnChange(this);" >
                      <option value="">세목 선택</option>
                    </select>
                    <select title="세세목 선택" style="min-width:100px;" id="SelSubDtlsItxpCd" name="SelSubDtlsItxpCd" onchange="SelDtlsItxpCdOnChange2(this);">
                      <option value="">세세목 선택</option>
                    </select>
                    <select title="지방비구분 선택" style="width:130px;display:none;" id="SelShrSorcSn" name="SelShrSorcSn">
                      <option value="">지방비 미사용</option>
                    </select>
                    <a href="#dummy" id="ItxpFileEvdc" class="itxpFileEvdcVal" onclick="fnFileEvdc(this);"><img src="/bt/bt_regist2off.gif" alt="증빙파일등록"/></a>
                  </td>
                </tr>
              </tbody>   
      </table>
      <!-- 2013-09-13 서성진 수정/강지은 팀장 요청 해당 알림 제거 -->
      <!-- <div class="guide_bu">비영리기관의 경우 간접비 집행시 증빙서류없이 등록가능합니다.</div> -->
    </div>
    <!-- //증빙구분 상세내용 표end// -->
    <h3>증빙등록정보</h3>
    <div class="b05 ar">
            <div class="fl" style="color:red;font-weight:bold;margin-top:7px;">증빙총액 : <span id="totlAmt">0</span></div>
            <a href="#dummy" onclick="uf_frmNewWin(document.frm, '/jsp/pop/P01_12_00.jsp', 'GUIDE_LINE', '800', '850');"><img src="/bt/bt_guide2.gif" alt="증빙 Guideline"/></a>
<!--            
그룹등록의 경우 행삭제나 행추가는 할 수 없음 - 비목과 집행은 1:1 관계
            <a href="#dummy" onclick="fnAddRow();"><img src="/bt/bt_plus.gif" alt="행삭제"/></a>
            <a href="#dummy" onclick="fnRemove();"><img src="/bt/bt_minus.gif" alt="행추가"/></a>
 -->
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
                  <th scope="col" style="white-space: nowrap;"  class="cellItxpAdtnInfo">인건비<br />내역</th>
                  <th scope="col">&nbsp;</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                    <td class="ac"><input type="checkbox" name="ItxpChk" disabled="disabled" id="ItxpChk_0" value="0" /></td>                
                  <td class="ac"><%=ComboUtil.getComboBox2("RND134", "evma_gb", "EvmaGb_0", "","title='증빙선택' onchange='SplrInfo(this);' style='width:98%'", "", ComboUtil.OPT_SEL) %>
                  </td>
                  <td class="ac">
                  <input type="hidden" name="EtcEvdcExcCd" id="EtcEvdcExcCd_0" value="" />
                    <input type="hidden" name="EtcEvdcExcNo" id="EtcEvdcExcNo_0" value="" />
                    <div class="posabs etcimpex" id="etcimpex_0" onclick="uf_rsltEtcImplExc(this)"><a href="#dummy"><img src="/bt/bt_etcimpex.gif" /></a></div>
                  <input type="text" name="ItxpItem" id="ItxpItem_0" readonly="readonly" title="품목" class="inputl inputedit" style="width:94%"/></td>
                  <td class="ac"><input type="text" name="ItxpUseAmt" id="ItxpUseAmt_0" readonly="readonly" title="사용금액" class="inputl currency" style="width:90px;background-color:#d2d2d2;" value="0" onfocus="this.blur()"/></td>
                  <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0" readonly="readonly" title="공급금액" class="inputl currency" style="width:90px" maxlength="15" value="0"  onkeyup="calc_amtSet2(this, false, '2');" /></td>
                  <td class="ac"><input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0"  title="부가세" class="inputl currency inputedit" style="width:70px" maxlength="15" onkeyup="calc_amtSet2(this, false, '2');"  onblur="calc_amtSet2(this, false, '2');" value="0"/></td>
                  <td class="ac cellItxpAdtnInfo"><span id="ItxpAdtnInfoVal_0" style="display:none;"></span><a href="#dummy"><span id="ItxpAdtnInfo_0" onclick="fnAdtnInfo(this);"><img src="/bt/bt_nonregist.gif" alt="미등록"/></span></a>
                            <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- 참여연구원정보 -->
                            <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- 참여연구원총금액 -->
                            
                            <input type="hidden" id="ButrId_0"              name="BUTR_ID"          value=""/>
                            <input type="hidden" id="BuitId_0"              name="BUIT_ID"          value=""/>
                            
                            <input type="hidden" id="LSTISPTDT_0"           name="LST_ISPT_DT"              value=""/>
                            <input type="hidden" id="LSTISPTST_0"           name="LST_ISPT_ST"              value=""/>
                            <input type="hidden" id="LSTISPTRSLTSN_0"       name="LST_ISPT_RSLT_SN"             value=""/>
                            <input type="hidden" id="LSTISPTAFTHUPDYN_0"    name="LST_ISPT_AFTH_UPD_YN"     value=""/>
                  </td>
                  <td class="ac"><a href="#" class="btn-opendtl" style="display:;"><img src="/bt/bt_grid1.gif" alt="추가입력" /></a></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr_0" style="display:none;">
                  <td class="sum1" colspan="2">공급금액차액 사유</td>
                  <td colspan="6"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn_0" class="inputl" disabled='disabled' style="width:98%" /></td>
                </tr>                
                <tr style="display:none;">
                  <td colspan="8">

                     <!-- 세금계산서/카드 거래처 정보 Div 시작  -->
                  <div id="divTranInfo_0" style="display:none;">
          <h5 class="fl">거래처정보</h5>
          <div class="t05 b10">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="거래처정보의 사업자번호,상호(법인명),사업장주소 등 내용을 제공한 표" class="tbl_type09">
              <caption>거래처정보의 사업자번호,상호(법인명),사업장주소 등 내용을 제공한 표</caption>
              <colgroup>
              <col width="15%" />
              <col width="35%"/>
              <col width="18%" />
              <col width="32%"/>
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row"><label for="company">대표자명</label></th>
                  <td><span id="d_SplrReprNm_0"> </span></td>
                  <th scope="row"><label for="busmun">사업자등록번호</label></th>
                  <td class="ll"><span id="d_SplrBzRegNo_0"></span></td>
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
                    <div class="fr" ><a href="#"  onclick="uf_popup_etc_dvdc_avl_info();"><img src="/bt/bt_guide9.gif" alt="기타증빙기능비목" class="vc"/></a></div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="거래처정보 상세내용 표" class="tbl_type09">
                      <caption>
                      거래처정보 상세내용 표
                      </caption>
                      <colgroup>
                      <col width="15%" />
                      <col width="35%"/>
                      <col width="18%" />
                      <col width="32%"/>
                      </colgroup>
                      <tbody>
                        <tr>
                          <th scope="row"><label for="etc_SplrCoNm_0">회사명</label></th>
                          <td><input type="text" name="etc_SplrCoNm" id="etc_SplrCoNm_0" readonly="readonly" title="회사명" class="inputl" style="width:100px"/>
                            <span id="idBzRegNo_0" style="display:none;"><a href="#dummy" id="aIndex_0" class="uf_popup_bzpr"><img src="/bt/bt_busin.gif" alt="자주쓰는사업자"/></a></span></td>
                          <th scope="row"><label for="etc_SplrBzRegNo_0">사업자등록번호</label></th>
                          <td class="ll"><input type="text" name="etc_SplrBzRegNo" id="etc_SplrBzRegNo_0"  title="사업자등록번호" class="inputl" style="width:100px"/></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="etc_SplrTpopNm_0">업태</label></th>
                          <td><input type="text" name="etc_SplrTpopNm" id="etc_SplrTpopNm_0" readonly="readonly" title="업태" class="inputl" style="width:100px"/></td>
                          <th scope="row"><label for="etc_SplrTpbzNm_0">업종</label></th>
                          <td class="ll"><input type="text" name="etc_SplrTpbzNm" id="etc_SplrTpbzNm_0" readonly="readonly" title="업종" class="inputl" style="width:100px"/></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="etc_SplrAdr_0">사업자주소</label></th>
                          <td><input type="text" name="etc_SplrAdr" id="etc_SplrAdr_0" readonly="readonly" title="사업자주소" class="inputl" style="width:195px"/></td>
                          <th scope="row"><label for="etc_SplrReprNm_0">대표자명</label></th>
                          <td class="ll"><input type="text" name="etc_SplrReprNm" id="etc_SplrReprNm_0" readonly="readonly" title="대표자명" class="inputl" style="width:100px"/></td>
                        </tr>
                      </tbody>
                    </table>    
                    </div>
                    </div>
                    
                    <div id="divTranInfoItem_0" style="display:none;">   <!-- 계좌이체요청항목 Div 시작  -->
                    <h5 class="fl">계좌이체 요청항목 </h5>
                    <div class="fr" id="trnsInfo_0"><a href="#" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="자계좌이체허용기준"/></a></div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="계좌이체 요청항목 상세내용 표" class="tbl_type09">
                      <caption>
                      계좌이체 요청항목 상세내용 표
                      </caption>
                      <colgroup>
                      <col width="18%" />
                      <col width="38%"/>
                      <col width="18%" />
                      <col width="26%"/>
                      </colgroup>
                      <tbody>
                        <tr id="ExctnStgDv_tr_0" style="display:;">
                          <th scope="row">집행구분</th>
                          <td colspan="3" class="ll">
                          <div id="idExctnStgDv_td1_0" style="display:block;">
                            <input type="hidden" name="ExctnStgDv" id="ExctnStgDv_0" value=""  />
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv1_0" value="1" class="radio2" disabled="disabled"  onclick="exctn_ExctnStgDv_v2(this.value,'1', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, '', '', document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);" checked="checked" /><label for="ra1">타계좌이체(연구비계좌경유이체)</label> 
                            <span class="l10"></span>
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv2_0" value="2" class="radio2" disabled="disabled" onclick="exctn_ExctnStgDv_v2(this.value,'1', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_NO.value,document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);"/><label for="ra2">자계좌이체(연구비계좌이체)</label> 
                            <%=ComboUtil.getComboBox2("RNDB03_1", "kind_TrnsRchAcc", "kind_TrnsRchAcc_0", "", "disabled='disabled' style='width:135px;' ", "", ComboUtil.OPT_NONE,"key") %>
                            </div>
                            <span id="idExctnStgDv_td2_0" style="display:none;"></span>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="bank">입금계좌</label></th>
                          <td><%=ComboUtil.getComboBox2("BNK_CD", "RcvBnkCd", "RcvBnkCd_0","", "disabled='disabled' onchange='uf_OwacNmRst2(this);' style='width:50px'", "", ComboUtil.OPT_SEL, false) %>
                            <input type="text" name="RcvAcctNo" id="RcvAcctNo_0" readonly="readonly"  title="입금계좌" class="inputl" style="width:80px" onchange="uf_OwacNmRst2(this);" value="" title="" notnull colname="입금계좌(계좌번호)" maxlength="20" />
                            <a id="idFvrtAcct_0" href="#dummy" style="display:none"></a>
                            <span id="idRcvBnkNm_0" style="display:none;"></span>
                            <span id="idMyAcctNo_0" style="display:none;"></span>
                          </td>
                          <th scope="row"><label for="account">예금주</label></th>
                          <td class="ll"><input type="text" name="OwacNm" id="OwacNm_0" readonly="readonly" title="예금주" class="inputl" style="width:80px;background-color:#d2d2d2;" readonly="readonly"/>
                            <a href="#dummy" id="idowacBtn_0" class="uf_tran_owac2"></a>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="WdrwPsbkPrtCtt_0" style="font-size:8pt">연구비통장표시내용</label></th>
                          <td><input type="text" name="WdrwPsbkPrtCtt" id="WdrwPsbkPrtCtt_0" readonly="readonly" title="연구비통장표시내용" class="inputl" style="width:132px" colname="연구비통장표시내용" notnull maxlength="12"/></td>
                          <th scope="row"><label for="RcvPsbkPrtCtt_0" style="font-size:8pt">거래처통장표시내용</label></th>
                          <td class="ll"><input type="text" name="RcvPsbkPrtCtt" id="RcvPsbkPrtCtt_0" readonly="readonly" title="거래처통장표시내용" class="inputl" style="width:80px"  colname="거래처통장표시내용"  notnull maxlength="12" /></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="AchvInstIndv1Cd_0">기관용개별코드A</label></th>
                          <td><input type="text" name="AchvInstIndv1Cd" id="AchvInstIndv1Cd_0" readonly="readonly"  title="기관용개별코드A" class="inputl" style="width:132px;ime-mode:disabled;" colname="기관용개별코드A" maxlength="20" value="" /></td>
                          <th scope="row"><label for="AchvInstIndv2Cd_0">기관용개별코드B</label></th>
                          <td class="ll"><input type="text" name="AchvInstIndv2Cd" id="AchvInstIndv2Cd_0" readonly="readonly" title="기관용개별코드B" class="inputl" style="width:80px;ime-mode:disabled;" colname="기관용개별코드B" maxlength="20" value=""/></td>
                        </tr>
                        <tr>
                          <th scope="row">이체금액</th>
                          <td><span id="txt_trnsAmt_0"></span></td>
                          <th scope="row"><label for="TelNo">전화번호</label></th>
                          <td class="ll"><input type="text" name="TelNo" id="TelNo_0" readonly="readonly" title="전화번호" class="inputl" style="width:80px"  notnull colname="전화번호" datatype="N" maxlength="15" mask="-" /></td>
                        </tr>
                        <tr>
                          <th scope="row">공급가액</th>
                          <td><span id="txt_splyAmt_0"></span></td>
                          <th scope="row">부가가치세액</th>
                          <td class="ll"><span id="txt_vatAmt_0"></span></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="PaymUsag_0">지급용도</label></th>
                          <td colspan="3" class="ll"><input type="text" name="PaymUsag" id="PaymUsag_0" readonly="readonly" title="지급용도" class="inputl" style="width:99%;ime-mode:inactive;" notnull colname="지급용도" maxlength="100"/></td>
                        </tr>
                      </tbody>
                    </table>
                    
                    </div>
                    </div>
                    <p class="ar b05">&nbsp;</p>
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

            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="합계 상세내용 표" class="tbl_type02">
              <caption>합계 상세내용 표</caption>
              <colgroup>
              <col width="15%" />
              <col width="35%"/>
              <col width="18%" />
              <col width="32%"/>
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
    <a href="#dummy" onclick="uf_Rsltitxp_update();" class="bt_action2-01" title="저장"><span class="bt_sp">저장</span></a> </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- 주의사항 start -->
    <div class="pop_guide_box1">
      <div class="pop_guide_boxtd1">
        <ul class="pop_comment b10">
          <li>집행완료내역은 비목수정만 가능합니다.</li>
        </ul>
        <ul class="pop_comment b10"  id="divMyAcctTransAlwn" style="display:none;">
          <li>실시간통합연구비관리시스템(RCMS) 적용에 다한 유예 신청 기업이므로 자계좌이체(연구비계좌이체)만 가능함</li>
        </ul>
        <p class="pop_point_title">기관용개별코드란?</p>
        <ul class="pop_comment">
          <li>연구기관이 본 화면에서 입력한 값을 은행에서 전산적인 거래내역을 받을때 추가정보로 내려주는 값임</li>
        </ul>
        <ul class="pop_comment_list">
          <li>- 현재 우리은행만 서비스가능합니다.</li>
          <li>- 영문/숫자만 입력 가능합니다.</li>
        </ul>
      </div>
    </div>
    <!-- //주의사항 end// -->
    </form>
  </div>
</div>
<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %> 



<script type="text/javascript">
    jQuery('.currency').ForceNumericOnly();
    jQuery(document).ready(function(){

    });
</script>


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


</body>
</html>