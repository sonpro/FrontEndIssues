<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_02_11.jsp
 *   Description        : 집행전비목수정팝업창(비목우선)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.07                     예기해             
 *
 *  @author     예기해
 *  @Since      2014.01.07
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
    String ExctnSt                      =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnSt"));       // 사업비집행등록여부
    String BzExpExctnRegYn              =   "";     //집행등록유무
    String CrdSetlMeth                  =   "";         // 결제방식구분(1:집계방식/2:실시간이체방식)
    String PsnlAcctUseYn                =   "";     //인건비성계좌여부
    String UnfyMgntInstYn               =   "";     //협약관리기관여부
    
    String RchExpAcctBnkCd              =   "";     // 연구비계좌은행코드              
    String RchExpAcctNo                 =   "";     // 연구비계좌번호
    
    String TaxOgnSumAmt                 =   "0";        // 전자세금계산서 원합계금액
    String TaxOgnSplyAmt                =   "0";        // 전자세금계산서 원공급금액
    String TaxOgnVatAmt                 =   "0";        // 전자세금계산서 원부가세액
    
    String CrdOgnSumAmt                 =   "0";        // 카드 원합계금액
    String CrdOgnSplyAmt                =   "0";        // 카드 원공급금액
    String CrdOgnVatAmt                 =   "0";        // 카드 원부가세액
    
    String Cus_ReprNm                   =   "";         // 거래처대표자명
    String Cus_BizNo                    =   "";         // 거래처사업자번호
    String Cus_TpBzNm                   =   "";         //거래처업종명
    String Cus_TpOpNm                   =   "";         //거래처업태명
    String Cus_Addr                     =   "";         //거래처사업장주소
    String Cus_SplrCoNm                 =   "";         //공급자회사명
    String Cus_SplrBzRegSt              =   "";         //공급자사업등록상태
    String Cus_SplrTaxtTypDv            =   "";         //공급자과세유형구분
    
    
    
    String Trns_EexctnDv                =   "";
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
    
    String ExclsVatAmtYn                =   ""; //부가세 제외여부
    
    String ItemData[]   ;
    
    
%>

<title>비목우선 수정 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">비목우선 수정</p>
        </div>
        <!-- //head title// --> 
    </div>




<style type="text/css">
    div.tt_son {  width:550px; position:absolute; border-width:2; border-color:#3a679e; border-style:solid;font-family:Gulim;font-size:9pt; background-color:#FFFFFF }
    input.currency {text-align:right;padding-right:1px;}
    .cellItxpAdtnInfo {display:none;}
</style>
<script type="text/javascript">

var init = true;
var update_enabled = false;

jQuery(document).ready(function(){
    
    //Image Preload
    var preImg = ['//bt/bt_regist2.gif','//bt/bt_regist4.gif','//bt/bt_grid_close1.gif'];
    for(i = 0; i < preImg;i++){
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
    if("G01" == "" && "00006277" == "10112249"){
        document.getElementById("AchvInstIndv1Cd").readOnly                 = true;
        document.getElementById("AchvInstIndv1Cd").style.backgroundColor    = "#d2d2d2";
    }
    // 2011.12.12 태동현 END
    

    uf_proce_display_on();  //로딩바
        
    setTimeout(
        function(){
                try{   
                    setData();
                    mkDtlsItxpCd("0");
                    mkShrSorcSn("0");
                    set_evdc_amt();
                    calc_amtSet(this, true);
                    
                    
                    document.getElementById("divMyAcctTransAlwn").style.display = "none";
                }finally{
                    reset_submit();
                }
            
            }, 1000);   // 1초후 실행 1000 = 1초s

            
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
    


        $('#d_SplrReprNm_'  +'0').html("(주) A 가맹점(가사장)");
        $('#d_SplrBzRegNo_' +'0').html("100-10-10000");
        $('#d_SplrTpopNm_'  +'0').html("연구");
        $('#d_SplrTpbzNm_'  +'0').html("개발");
        $('#d_SplrAdr_'     +'0').html("서울특별시 중구 태평로1가 31 ");
    
    
    $('#SplrBzRegSt_'       +'0').val("A04001");
    $('#SplrTaxtTypDv_'     +'0').val("A05001");
    
    
    
    fnItxpSetting(true,'0', 'T201303112250283','U201303113764290', 'B04101', 'T', 'B04101', '자재비', '550', '500', '50', '','B16000','','N'
            ,"11",'Y','N'
            ,'550', '500', '50'
            ,'0','0', '0'
            ,'1111111111'
            );
    
    
    //이체계좌정보
    fnTrnsInfoSetting('0','T','2','B03004','003'
            ,'100000000000','㈜RCMS','A 가맹점','가대표','RCMS 실습'
            ,'','021112222',"사용품 자재비", '', '1');
    
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
        $('#etc_SplrBzRegNo_'   +'1').val("1001010000").attr('readonly',true);
        $('#etc_SplrTpopNm_'    +'1').val("1 ").attr('readonly',true);
        $('#etc_SplrTpbzNm_'    +'1').val("1 ").attr('readonly',true);
        $('#etc_SplrAdr_'       +'1').val("1 ").attr('readonly',true);
        $('#etc_SplrReprNm_'    +'1').val("1 ").attr('readonly',true);
        
        $('#d_SplrReprNm_'  +'1').html("(주) B 가맹점(나대표)");
        $('#d_SplrBzRegNo_' +'1').html("333-3-333333");
        $('#d_SplrTpopNm_'  +'1').html("연구");
        $('#d_SplrTpbzNm_'  +'1').html("개발");
        $('#d_SplrAdr_'     +'1').html("대전광역시 서구 둔산동 1420");
    
    
    $('#SplrBzRegSt_'       +'1').val("A04001");
    $('#SplrTaxtTypDv_'     +'1').val("A05001");
    
    fnItxpSetting(true,'1', 'E201303112250284','U201303113764291', 'B04101', 'E', 'B04101', '수당지급', '550', '500', '50', '','B16000','','N'
            ,"",'Y','N'
            ,'550', '500', '50'
            ,'0','0', '0'
            ,'1001010000'
            );
    
    //이체계좌정보
    fnTrnsInfoSetting('1','E','2','B03005','003'
            ,'555555555550','㈜RCMS','수당지급','수당지급','RCMS 실습'
            ,'','0422223333',"배달 수당", '', '1');
    
    jQuery("#SplrAuth_"         +"1").val("1"); //사업자확인 상태 설정
    jQuery("#rchrInfo_"         +'1').val("");
    jQuery("#SelShrSorcSn_"     +'1').val("");
    jQuery("#SqbnSplrExctnRsn_" +'1').val("");

    jQuery('#etc_ChkBzRegNo_'   +'1').hide();
    jQuery('#ChkBzRegNo_'       +'1').hide();

        
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
        
        
    
    //카드결재 상태 확인
    //등록시 1:집계방식에서, 수정시 현재 2:실시간인경우 안내창
    if( $('#BeforeCrdSetlMeth').val() != "" && $('#InstCrdSetlMeth').val() != $('#BeforeCrdSetlMeth').val() ){
        if( $('#BeforeCrdSetlMeth').val() == "1" ){
            alert('증빙내역 저장시 이체방식이 [결제일집계]에서 [실시간결제]로\n변경이 됩니다.');
        }else if( $('#BeforeCrdSetlMeth').val() == "2" ){
            alert('증빙내역 저장시 이체방식이 [실시간결제]에서 [결제일집계]로\n변경이 됩니다.');
        }
    }
    
    PsnlItxpAcctNoSet();
    
    update_enabled = true;
    update_state = false;
    
    
    
    init = false;
    
}



function fnTrnsInfoSetting(idx,evdcDv,exctnStg,exctnKind,bnkCd,acctNo,owacNm,wdrwPsbkPrtCtt,rcvPsbkPrtCtt,achvInst1,achvInst2,telNo, paymUsag, beforeCrdSetlMeth, crdSetlMeth){
    var mode = "1";
    mode = exctnStg;
    
    $('#divTranInfo_'       +idx).show(); //default show
    $('#divTranInfo_etc_'   +idx).hide(); //default hide
    
    //카드 실시간계좌이체 방식
    if( evdcDv == 'C'){
        
        $('#BeforeCrdSetlMeth').val(beforeCrdSetlMeth);//현재시점의 결재방식으로 설정
        
        if( crdSetlMeth == '2' ){
            mode = "4";
            $('#divTranInfoItem_'   +idx).show();//계좌이체항목
        }else if( crdSetlMeth == '1'){ //카드 집계방식
            $('#divTranInfoItem_'   +idx).hide();//계좌이체항목
        }
    }else if( evdcDv == 'E' ){ //기타
        $('#divTranInfoItem_'   +idx).show();//계좌이체항목
    }else if( evdcDv == 'T' ){ //전자세금계산서
        $('#divTranInfoItem_'   +idx).show();//계좌이체항목
    }
    
    exctn_ExctnStgDv_v2(mode, '2', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, bnkCd,acctNo,document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,idx);
    
    if( ""!=owacNm && ""!=bnkCd && ""!=acctNo ){
        $('#ExctnStgDv_'        +idx).val(exctnStg      );  // 1:타계좌, 2:자계좌
        $('#kind_TrnsRchAcc_'   +idx).val(exctnKind     );  // 집행구분
        $('#RcvBnkCd_'          +idx).val(bnkCd         );  // 은행코드
        $('#RcvAcctNo_'         +idx).val(acctNo        );  // 계좌번호
        $('#OwacNm_'            +idx).val(owacNm        );  // 예금주명
        $('#WdrwPsbkPrtCtt_'    +idx).val(wdrwPsbkPrtCtt);  // 연구비통장표시내용
        $('#RcvPsbkPrtCtt_'     +idx).val(rcvPsbkPrtCtt );  // 거래처통장표시내용
        $('#AchvInstIndv1Cd_'   +idx).val(achvInst1     );  // 기관용개별코드A
        $('#AchvInstIndv2Cd_'   +idx).val(achvInst2     );  // 기관용개별코드B
        $('#TelNo_'             +idx).val(telNo         );  // 전화번호
        $('#PaymUsag_'          +idx).val(paymUsag.replace(/&#34;/gi,'"')       );  // 지급용도
    }

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
    
    var frm = document.frm;
    
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
    
    //개인거래 설정
    setSplrPrsn(frm,frm);
    
    //인건비성 비목선택시 인건비성지급계좌 설정
    PsnlItxpAcctNoSet();
}


/******************************************************************
* PsnlItxpAcctNoSet      인건비성지급계좌설정(내,외부인건비/연구수당)
* @param
* @return
******************************************************************/
function PsnlItxpAcctNoSet(idx){
    
    var frm     =   document.frm;
    var ridx    = 0;
    
    if( typeof idx == 'undefined' ){ idx = null; }
    
    _SelDtlsItxpCd = frm.SelSubDtlsItxpCd.value;

    for(ridx =0; ridx < document.forms['frm'].elements['itxp_cnt'].value; ridx++){
        
        if( null != idx && ridx != idx ){
            continue;
        }
        //카드로 인건비성 비목등록 거부
        //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
        if( frm.S_PSNL_ACCT_USEYN.value == "Y" && "C" == $('#EvmaGb_'+ridx).val() ){        
            if('Y' == itxpPsnlYn(_SelDtlsItxpCd)){
                alert("카드는 인건비성 비목을 등록 할 수 없습니다.\n\n(내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비)");
                frm.SelSubDtlsItxpCd.selectedIndex = 0;
                return;
            }
        }
        
        //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
        //카드증빙이 아니고 인건비성지급계좌를 사용하는 기관인 경우에는 인건비성 지급계좌로 설정.
        if( frm.S_PSNL_ACCT_USEYN.value == "Y" ){ 
            if( "C" != $('#EvmaGb_'+ridx).val() && 'Y' == itxpPsnlYn(_SelDtlsItxpCd)){      
                
                      
                var strVal  =   "003|20000000000|㈜RCMS";
                
                arrVal = strVal.split("|");
                
                document.getElementById("RcvBnkCd_"     +ridx).style.display        = "";
                document.getElementById("RcvAcctNo_"    +ridx).style.display        = "";
                
                document.getElementById("idRcvBnkNm_"   +ridx).style.display        = "none";
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
            }else{
                
                if( typeof jQuery("#ButrId_"+idx) != "undefined" && jQuery("#ButrId_"+idx).val() == "" ){
                    if( init == false ) setEnabledBnkAcctInfo(ridx);
                }

            }
        }else{
            
        }

        
        if("C"==$('#EvmaGb_'+ridx).val()){
            // 실시간 경우 계좌이체 필수 항목에 notnull 속성추가
            if( '2' == $('#InstCrdSetlMeth').val() ){//실시간방식
                $('#RcvAcctNo_'         + ridx).attr('notnull','true');
                $('#WdrwPsbkPrtCtt_'    + ridx).attr('notnull','true');
                $('#RcvPsbkPrtCtt_'     + ridx).attr('notnull','true');
                $('#TelNo_'             + ridx).attr('notnull','true');
                $('#PaymUsag_'          + ridx).attr('notnull','true');
            }else if( '1' == $('#InstCrdSetlMeth').val() ){//집계방식
                $('#RcvAcctNo_'         + ridx).removeAttr('notnull');
                $('#WdrwPsbkPrtCtt_'    + ridx).removeAttr('notnull');
                $('#RcvPsbkPrtCtt_'     + ridx).removeAttr('notnull');
                $('#TelNo_'             + ridx).removeAttr('notnull');
                $('#PaymUsag_'          + ridx).removeAttr('notnull');      
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
    newRow1.appendTo(tbody);
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

// 기등록건 선택 or 입력
function fnItxpSetting(update, idx, butrId, buitId, TrscPfmcSt, evdcDv, trscSt, item, useAmt, splyAmt, vatAmt, adtnInfo, isptst,isptsn,isptupdyn,splyAmtDfamRsn,BzExpExctnRegYn,ExclsVatAmtYn
        ,TaxOgnSumAmt,TaxOgnSplyAmt,TaxOgnVatAmt
        ,CrdOgnSumAmt,CrdOgnSplyAmt,CrdOgnVatAmt
        ,BzRegNo){  
        
    var tbody = jQuery("#ItxpList > tbody");
    
    var tr_idx = (idx*3);
    
    var row1 = tbody.find(">tr").eq(tr_idx);
    var row2 = tbody.find(">tr").eq(tr_idx+1);
    var row3 = tbody.find(">tr").eq(tr_idx+2);
    
    // 거래실적 등록인 경우 수정가능 하도록 처리

    if(trscSt == 'B04001'){
        
        jQuery("#ItxpChk_"+idx).attr('disabled', false);
        
        jQuery("#ItxpItem_"         +idx).attr('disabled',false);
        jQuery("#ItxpUseAmt_"       +idx).attr('disabled',false);
        jQuery("#ItxpSplyAmt_"      +idx).attr('disabled',false);
        jQuery("#ItxpVatAmt_"       +idx).attr('disabled',false);
   
        row2.find('input').attr('disabled',false);
        row2.find('select').attr('disabled',false);
        row3.find('input').attr('disabled',false);
        row3.find('select').attr('disabled',false);
        

    //거래실적 등록상태, 집행등록상태 외 상태는 삭제 및 수정 방지
    // 2013.4.18 KJS : 카드청구등록, 카드청구취소, 카드청구등록오류 상태 추가
    }else if( !(trscSt == 'B04001' || trscSt == 'B04101' || trscSt == 'B04011' || trscSt == 'B04012' || trscSt == 'B04019'  ) || update == false ){
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
    
    jQuery('#BzExpExctnRegYn_'  +idx).val(BzExpExctnRegYn);
    jQuery("#ButrId_"           +idx).val(butrId);
    jQuery("#BuitId_"           +idx).val(buitId);
    jQuery("#TrscPfmcSt_"           +idx).val(TrscPfmcSt);//2013.6.4 kjs 상태가 추가 TODO 
    
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
    
    if( evdcDv == "T" ){
        
        var T_args = [
            'T_ExecTxblApvNo','T_SplpBzRegNo','T_SplpSucoEnplcNo','T_SplpCoNm','T_SplpTpbzNm','T_SplpTpopNm'
            ,'T_SplpReprNm','T_SplpAdr','T_SplrChidCoEnplcNo','T_SplrCoNm','T_SplrTpbzNm'
            ,'T_SplrTpopNm','T_SplrReprNm','T_SplrAdr','T_SplyAmt','T_VatAmt','T_SumAmt'
            ,'T_Rmk','T_CashAmt','T_ChkAmt','T_DrftAmt','T_CredRcblAmt','T_WrtgDt','T_SplpEmalAdr1','T_SplpEmalAdr2','T_SplrEmalAdr','T_CorcRsn','T_ReptNcnt'
            ,'T_strUseDt','T_strMitmNm','T_strMitmUprc','T_strMitmQnt','T_strSplyAmt','T_strVatAmt','T_strMitmNrm','T_strRmk'
            ];
        for(var i = 0 ; i < T_args.length; i++ ){ fnAppendChild(idx, T_args[i],''); }
        
        
        fnAppendChild(idx, 'T_SplrBzRegNo'      ,BzRegNo);//사업자번호
        fnAppendChild(idx, 'T_ExclsVatAmtYn'    ,ExclsVatAmtYn);
        fnAppendChild(idx, 'T_Evdc_SumAmt'      ,TaxOgnSumAmt);
        fnAppendChild(idx, 'T_Evdc_SplyAmt'     ,TaxOgnSplyAmt);
        fnAppendChild(idx, 'T_Evdc_VatAmt'      ,TaxOgnVatAmt);
        
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
                
        fnAppendChild(idx, 'C_Evdc_SumAmt'  , CrdOgnSumAmt);
        fnAppendChild(idx, 'C_Evdc_SplyAmt' , CrdOgnSplyAmt);
        fnAppendChild(idx, 'C_Evdc_VatAmt'  , CrdOgnVatAmt);
    }else if( evdcDv == "E" ){
        $('#etc_SplrBzRegNo_'+idx).val(BzRegNo);
    }

    //개인거래처
    if( "0000000000" == BzRegNo ){
        $('#etc_SplrPrsn_'  +idx).attr('checked',true);
    }
    
    if(adtnInfo!=""){
        jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_regist4.gif" alt="등록">');
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
        edmsUploadFileNew("frm", mode, docKey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
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
function chk_save(p_PlanPrgrSt){
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

    for(i=0; i<document.frm.itxp_cnt.value; i++){


        if(!chk_frm_value("ItxpItem",i))            return false;           // 품목
        if(!chk_frm_value("ItxpUseAmt",i))          return false;           // 사용금액
        if(!chk_frm_value("ItxpSplyAmt",i))         return false;           // 공급금액
        if(!chk_frm_value("ItxpVatAmt",i))          return false;           // 부가세
        
        //카드로 인건비성 비목등록 거부
        //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
        if( frm.S_PSNL_ACCT_USEYN.value == "Y" && "C" == $('#EvmaGb_'+i).val() ){       
            if('Y' == itxpPsnlYn(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value)){
                alert("카드는 인건비성 비목을 등록 할 수 없습니다.\n\n[내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비]");
                return false;
            }
        }

        //-----------------------------------
        //  2013.03.11 기타증빙예외 등록 여부 검사
        //-----------------------------------
        if( "E" == $('#EvmaGb_'+i).val() ){
            for(var j = 0 ; j < EtcImplItxpCd.length; j++){
                if( EtcImplItxpCd[j] == $('#SelSubDtlsItxpCd').val() && $('#EtcEvdcExcCd_'+i).val() == "" ){
                    alert("[기타증빙예외] 정보를 등록하세요!");
                    return false;
                    //break;
                } 
            }
        }
        
        //-----------------------------------
        //  거래처정보 유효성 검사
        //-----------------------------------
        if( "E" == $('#EvmaGb_'+i).val() ){
            if(null == $('#etc_SplrCoNm_'+i).val() || "" == $('#etc_SplrCoNm_'+i).val()){
                alert("회사명을 입력해주세요.");
                $('#etc_SplrCoNm_'+i).attr('readonly',false);
                fnOpenTrFocus($('#etc_SplrCoNm_'+i),i);
                return false;
            }
            if(null == $('#etc_SplrAdr_'+i).val() || "" == $('#etc_SplrAdr_'+i).val()){
                alert("사업장 주소를 입력해주세요.");
                $('#etc_SplrAdr_'+i).attr('readonly',false);
                fnOpenTrFocus($('#etc_SplrAdr_'+i),i);
                return false;
            }
            if(null == $('#etc_SplrReprNm_'+i).val() || "" == $('#etc_SplrReprNm_'+i).val()){
                alert("대표자명을 입력해주세요.");
                $('#etc_SplrReprNm_'+i).attr('readonly',false);
                fnOpenTrFocus($('#etc_SplrReprNm_'+i),i);
                return false;
            }
            
            if(null == $('#etc_SplrBzRegNo_'+i).val() || "" == $('#etc_SplrBzRegNo_'+i).val() ){
                alert("사업자등록번호를 입력해주세요.");
                $('#etc_SplrBzRegNo_'+i).attr('readonly',false);
                fnOpenTrFocus($('#etc_SplrBzRegNo_'+i),i);
                return false;
            }
            
            //20140324 실습환경 체크 해제 
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
        
        
        var splyAmt = Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        var vatAmt  = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
        
        if( splyAmt < 0 ){
            alert('공급금액은 0보다 작을 수 없습니다.');
            $("#ItxpSplyAmt_"+i).focus();
            return false;
        }
        if( vatAmt < 0 ){
            alert('부가세금액은 0보다 작을 수 없습니다.');
            $("#ItxpVatAmt_"+i).focus();
            return false;
        }
    
        
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
                    //return false;
            }
            //-----------------------------------
            //  인건비내역 체크(인건비,연구수당인경우만 등록필수)
            //-----------------------------------
            if(frm.rchrInfo.length > 1){
                for(j=0;j<frm.rchrInfo.length;j++){
                    if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
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
                }
            }else{
                if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                    if(null==frm.rchrInfo.value || ""==frm.rchrInfo.value){
                        alert("인건비내역을 등록해주세요.");
                        return false;
                    }else{
                        if(frm.rchrAmt.value.replace(/,/gi,"") != frm.ItxpUseAmt.value.replace(/,/gi,"")){
                            alert("비목금액의 합계와 등록된 인건비내역의 금액과 일치하지 않습니다.");
                            return false;
                        }
                    }
                }
            }
        }
        
        if( $('#SplrAuth_'+i).val() != '1' && 'C' != $('#EvmaGb_'+i).val() ){
            alert('사업자등록번호확인을 진행하시기 바랍니다.');
            $('#SplyAmtDfamtRsn_tr_' + i).next().show();
            
            return false;   
        }
        
        //-----------------------------------
        //  계좌이체 요청항목 유효성 검사
        //-----------------------------------
        if("1"==p_PlanPrgrSt){
            if( !( "C" == $('#EvmaGb_'+i).val()) ){
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


            //카드면서 집계방식일경우만 체크하지않음
            if( !(("C" == $('#EvmaGb_'+i).val() ) && ("1"==frm.InstCrdSetlMeth.value))){
                //-----------------------------------
                //  계좌이체 요청항목 유효성 검사
                //-----------------------------------
                if(""==document.getElementById('RcvBnkCd_'+i).options[document.getElementById('RcvBnkCd_'+i).options.selectedIndex].value){
                    alert("필수항목은 반드시 선택하셔야 합니다.\r\n\r\n* 필수선택 항목 : 입금계좌(은행)");
                    fnOpenTrFocus(document.getElementById('RcvBnkCd_'+i),i);
                    return false;
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
            
            if( !("C"== $('#EvmaGb_'+i).val()) ){   
                //-----------------------------------
                //  타계좌이체시 입금계좌가 연구비계좌인지 검사
                //-----------------------------------
                if( true                                                    ==  $('#ExctnStgDv1_'+i).attr('checked')        &&
                    document.getElementById('RcvBnkCd_'+i).options[document.getElementById('RcvBnkCd_'+i).options.selectedIndex].value  ==  "003"                   &&
                    document.getElementById('RcvAcctNo_'+i).value           ==  "08203000000220"){
                    alert("입금계좌가 연구비계좌와 동일합니다.");
                    return false;
                }
            
            } 

            
            //--------------------------------------------------
            //  기타증빙&&자계좌이체인 경우 증빙금액과 일치여부 체크안함
            //--------------------------------------------------
            if(!( ("E"== $('#EvmaGb_'+i).val() )&&( true == $('#ExctnStgDv2_'+i).attr('checked')))){
                //-----------------------------------
                //  금액 체크
                //-----------------------------------
                var msg = chk_itxp_evdc_amt();
                if(!(""==msg)){  alert(msg);return false;   }
            }
            

            //2012.11.26 kjs 전자세금계산서의 경우 공급금액과 사용금액이 다를경우 공급금액차액 사유 선택 체크
            if( "T" == $('#EvmaGb_'+i).val() ){
                if( parseInt($('#T_Evdc_SplyAmt_' + i).val(),10) > splyAmt && "" == document.forms['frm'].elements['SplyAmtDfamtRsn_'+i].value ){
                    alert("공급금액 차액사유를 작성해주세요");
                    document.forms['frm'].elements['SplyAmtDfamtRsn_'+i].focus();
                    return false;
                }
            }   
        }
    }// End of for
    return true;
}

/******************************************************************
 * uf_itxp_update       계획/증빙/비목저장
 * @param
 * @return
******************************************************************/
var p_PlanPrgrSt = "0";
function uf_itxp_update(PlanPrgrSt){
    var frm = document.frm;
    var param,target_url;
    p_PlanPrgrSt = PlanPrgrSt;
    if( typeof update_enabled != 'undefined' && false == update_enabled && false == update_state ){
        alert("현재 증빙정보를 수정할 수 없습니다. 상태정보를 확인 하세요");
        return;
    }
    // 유효성 검사
    if(!chk_save(p_PlanPrgrSt)) return;
    

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
    
    if( "0" == p_PlanPrgrSt && true == chkAcc ){
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

    fn_itxp_save();
    /* 
    if( document.forms['frm'].elements['itxp_cnt'].value == bz_pass_cnt ){
        fn_itxp_save();
    }else{

        uf_proce_display_on();  //로딩바
            
        setTimeout(
            function(){
                    try{   
                        setData();
                        mkDtlsItxpCd("0");
                        mkShrSorcSn("0");
                        set_evdc_amt();
                        calc_amtSet(this, true);
                        
                        
                        document.getElementById("divMyAcctTransAlwn").style.display = "none";
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
    }
    
     */
    return false;
    
}

function fn_itxp_save(){
    var frm = document.frm;
    var param,target_url;
    
    var confirmMessage = "";
    
    

    if( $('#BeforeCrdSetlMeth').val() != "" && $('#InstCrdSetlMeth').val() != $('#BeforeCrdSetlMeth').val() ){
        if( $('#BeforeCrdSetlMeth').val() == "1" ){
            confirmMessage = '증빙내역 저장시 이체방식이 [결제일집계]에서 [실시간결제]로\n변경이 됩니다.\n\n';
        }else if( $('#BeforeCrdSetlMeth').val() == "2" ){
            confirmMessage = '증빙내역 저장시 이체방식이 [실시간결제]에서 [결제일집계]로\n변경이 됩니다.\n\n';
        }
        
    }
    

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
            confirmMessage += splrCoNm + "는(은) 국세청에서 휴업으로 신고된 거래처 입니다.\n\n";
        }else if( 'A04010' == $('#SplrBzRegSt_'+i).val() ){ //폐업
            confirmMessage += splrCoNm + "는(은) 국세청에서 폐업으로 신고된 거래처 입니다.\n\n";
        }

    }

    confirmMessage += "수정하시겠습니까?";
    
    if(!confirm(confirmMessage)){return;}
    
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
    
    param += "&PLAN_PRGR_ST="+p_PlanPrgrSt;
    
    uf_proce_display_on();  //로딩바

    setTimeout(
            function(){
                    try{   
                        reset_submit();
                        alert("수정되었습니다.");
                        opener.uf_search();
                        window.close();
                        
                    }finally{
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
    removeTempAttribute(frm);
}
//-------------------------------
//  카드결제방식에따른 화면구성변경
//-------------------------------
function uf_crdSetlMeth(){
    if("C"=='E' && "1"=='1'){
        document.getElementById("divTranInfoItem").style.display    = "none";
    }
}


</script>
<script type="text/javascript" src="/js/pt_itxp_common.js"></script>

<div id="body">
  <!-- content start -->
  <div id="content">
    <div class="t10"></div>
    <!--  비목등록내역 상세내용 표 start -->
        <!-------------------------------------------------------------------------------->
        <!--    과제상세표시박스 공통부 시작 -->
        <!-------------------------------------------------------------------------------->
        <div class="t10 b20 pop_wh">
        





        <h3>과제현황</h3>
        <!-- 과제현황 리스트 start -->
        <div class="t10 pop_wh">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="과제현황 리스트" class="tbl_type02">
            <caption>과제현황 리스트</caption>
            <colgroup>
                <col width="20%" />
                <col width="80%" />
            </colgroup>
            <tbody>
            <tr>
                <th scope="col">사업명</th>
                <td class="ll">RCMS 실습</td>
            </tr>
            <tr>
                <th scope="row">과제명</th>
                <td class="ll">RCMS 실습용 진행과제</td>
            </tr>
            </tbody>
            </table>
        </div>
        <!-- //과제현황 리스트 end// -->
        <!-- 과제현황 상세내용 start -->
        <div class="t20 b15 pop_wh">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="과제현황 상세내용" class="tbl_type03">
            <caption>과제현황</caption>
            <colgroup>
                <col width="10%"/>
                <col width="11%" span="2"/>
                <col width="20%"/>
                <col width="10%"/>
                <col width="10%"/>
            </colgroup>
            <thead>
            <tr>
                <th scope="col">과제번호</th>
                <th scope="col" colspan="2">전담기관</th>
                <th scope="col">주관기관</th>
                <th scope="col">단계</th>
                <th scope="col">년차</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="ac"><a href="#dummy" style="text-decoration:underline; color:blue;" onclick="uf_SbjtDtlReq('BzClasCd=S1598&SbjtId=TEST0002&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249')">TEST0002</a></td>
                <td colspan="2">한국산업기술평가관리원</td>
                <td class="ac">㈜RCMS</td>
                <td class="ar">0</td>
                <td class="ar">3</td>
            </tr>
            <tr>
                <th scope="col">기관명</th>
                <th scope="col">사업자등록번호</th>
                <th scope="col">참여역할</th>
                <th scope="col">당해개발기간</th>
                <th scope="col">당해총사업비</th>
                <th scope="col">집행가능상태</th>
            </tr>
            <tr>
                <td class="ac">㈜RCMS</td>
                <td class="ac">1111111111</td>
                <td class="ac">주관기관</td>
                <td class="ac">2012.04.01~2013.07.31(16개월)</td>
                <td class="ar">110,000,000</td>
                <td class="ac">정상</td>
            </tr>
            </tbody>
            </table>
        </div>
        <!-- //과제현황 상세내용 end// -->

        </div>                                                                                                                
        <!-------------------------------------------------------------------------------->
        <!--    과제상세표시박스 공통부 끝 -->
        <!-------------------------------------------------------------------------------->

        <form name="frm" method="post" id="frm">
            <!-- 공통정보  -->
            <input type="hidden" id="BUIT_GRP_ID"           name="BUIT_GRP_ID"              value="U201303113764282">
            <input type="hidden" id="S_PMS_ID"              name="S_PMS_ID"                 value="G01">
            <input type="hidden" id="S_BZ_CLAS_CD"          name="S_BZ_CLAS_CD"             value="S1598">
            <input type="hidden" id="S_SBJT_ID"             name="S_SBJT_ID"                value="TEST0002">
            <input type="hidden" id="S_PRS_SBJT_STG"        name="S_PRS_SBJT_STG"           value="0">
            <input type="hidden" id="S_ANNL"                name="S_ANNL"                   value="3">
            <input type="hidden" id="S_AGRMT_SEQ_NO"        name="S_AGRMT_SEQ_NO"           value="G00000000000002">
            <input type="hidden" id="S_AGRMT_INST_ID"       name="S_AGRMT_INST_ID"          value="10112249">
            <input type="hidden" id="S_CPCG_INST_BZPR_NO"   name="S_CPCG_INST_BZPR_NO"      value="1111111111">
            <input type="hidden" id="S_AGRMT_INST_BZPR_NO"  name="S_AGRMT_INST_BZPR_NO"     value="1111111111">
            <input type="hidden" id="S_EXCTN_STG_DV"        name="S_EXCTN_STG_DV"           value="2">
            <input type="hidden" id="S_RCH_ACC_BNK_CD"      name="S_RCH_ACC_BNK_CD"         value="<%=RchExpAcctBnkCd %>">
            <input type="hidden" id="S_RCH_ACC_BNK_NM"      name="S_RCH_ACC_BNK_NM"         value="<%=CodeUtil.getCode("BNK_CD", RchExpAcctBnkCd, false)%>"/>
            <input type="hidden" id="S_RCH_ACC_NO"          name="S_RCH_ACC_NO"             value="08203000000220">
            <input type="hidden" id="S_SBJT_NM"             name="S_SBJT_NM"                value="RCMS 실습용 진행과제">
            <input type="hidden" id="S_BZ_CLAS_NM"          name="S_BZ_CLAS_NM"             value="RCMS 실습">
            <input type="hidden" id="S_NPRF_INST_YN"        name="S_NPRF_INST_YN"           value="N">
            <input type="hidden" id="S_MY_ACCT_TRNS_ALWN_YN" name="S_MY_ACCT_TRNS_ALWN_YN"  value="N">
            <input type="hidden" id="S_PSNL_ACCT_USEYN"     name="S_PSNL_ACCT_USEYN"        value="Y">
            <input type="hidden" id="S_UNFY_MGNT_INST_YN"   name="S_UNFY_MGNT_INST_YN"      value="Y">
            <input type="hidden" id="ExctnRegDt"            name="ExctnRegDt"               value="20130311">           <!-- 집행실행일자                 -->
            <input type="hidden" id="ExctnRegDrtm"          name="ExctnRegDrtm"             value="204030">         <!-- 집행실행시간                 -->
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
            <input type="hidden" id="BeforeCrdSetlMeth"     name="BeforeCrdSetlMeth"        value="" />                                   <!--    기등록된 카드결제방식                 -->
            <input type="hidden" id="InstCrdSetlMeth"       name="InstCrdSetlMeth"          value="1" />                   <!--    카드결제방식                  -->
            
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
                    <select title="지방비구분 선택" style="width:130px;display:none;" id="SelShrSorcSn" name="ShrSorcSn">
                      <option value="">지방비 미사용</option>
                    </select>
                    <a href="#dummy" id="ItxpFileEvdc" class="itxpFileEvdcVal" onclick="fnFileEvdc(this);"><img src="/bt/bt_regist2off.gif" alt="증빙파일미등록"/></a>
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
            <a href="#dummy" onclick="uf_frmNewWinNs(document.frm, '/pop/T01_12_00.jsp', 'GUIDE_LINE', '800', '850');"><img src="/bt/bt_guide2.gif" alt="증빙 Guideline"/></a>
            <a href="#dummy" onclick="fnAddRow(true);"><img src="/bt/bt_plus.gif" alt="행추가"/></a>
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
              <col width="5%" class="cellItxpAdtnInfo" />
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
                  <input type="text" name="ItxpItem" id="ItxpItem_0"  title="품목" class="inputl inputedit" style="width:98%"/></td>
                  <td class="ac"><input type="text" name="ItxpUseAmt" id="ItxpUseAmt_0"  title="사용금액" readonly="readonly" class="inputl currency" style="width:90px;background-color:#d2d2d2;" value="0" onfocus="fnNextFocus(this,'ItxpSplyAmt')" /></td>
                  <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0"  title="공급금액" class="inputl currency inputedit" style="width:90px" maxlength="15" onkeyup="calc_amtSet2(this, false,'1');" onblur="calc_amtSet2(this, false,'1');chk_amtSet(this,1);" value="0"/></td>
                  <td class="ac"><input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0"  title="부가세" class="inputl currency inputedit" style="width:60px" maxlength="15" onkeyup="calc_amtSet2(this, false, '1');" onblur="calc_amtSet2(this, false,'1');chk_amtSet(this,1);" value="0"/></td>
                  <td class="ac cellItxpAdtnInfo"><span id="ItxpAdtnInfoVal_0" style="display:none;"></span><a href="#dummy"><span id="ItxpAdtnInfo_0" onclick="fnAdtnInfo(this);"><img src="/bt/bt_nonregist.gif" alt="미등록"/></span></a>
                            <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- 참여연구원정보 -->
                            <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- 참여연구원총금액 -->
                            
                            <input type="hidden" id="BzExpExctnRegYn_0"     name="BzExpExctnRegYn"          value=""/>
                            <input type="hidden" id="ButrId_0"              name="BUTR_ID"          value=""/>
                            <input type="hidden" id="BuitId_0"              name="BUIT_ID"          value=""/>
                            <input type="hidden" id="TrscPfmcSt_0"          name="TRSC_PFMC_ST"         value=""/>
                            
                            
                            <input type="hidden" id="LSTISPTDT_0"           name="LST_ISPT_DT"              value=""/>
                            <input type="hidden" id="LSTISPTST_0"           name="LST_ISPT_ST"              value=""/>
                            <input type="hidden" id="LSTISPTRSLTSN_0"       name="LST_ISPT_RSLT_SN"             value=""/>
                            <input type="hidden" id="LSTISPTAFTHUPDYN_0"    name="LST_ISPT_AFTH_UPD_YN"     value=""/>
                  </td>
                  <td class="ac"><a href="#" class="btn-opendtl" style="display:;"><img src="/bt/bt_grid1.gif" alt="추가입력" /></a></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr_0" style="display:none;">
                  <td class="sum1" colspan="2"><span class="txt_orb">*</span>공급금액차액 사유</td>
                  <td colspan="6"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn_0" class="inputl" style="width:98%" /></td>
                </tr>                
                <tr style="display:none;">
                  <td colspan="8">

                     <!-- 세금계산서/카드 거래처 정보 Div 시작  -->
                     <input type="hidden" name="SplrAuth" id="SplrAuth_0" value="0" />
                     
                    <input type="hidden" id="SplrBzRegSt_0" name="SplrBzRegSt" value="" />      <!-- 사업자등록상태 -->
                    <input type="hidden" id="SplrTaxtTypDv_0" name="SplrTaxtTypDv" value="" />  <!-- 사업자업종유형 -->
                    <input type="hidden" id="SplrCoNm_0" name="SplrCoNm" value="" />
                    
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
                  <td class="ll"><span id="d_SplrBzRegNo_0"></span>  <a href="#dummy" id="ChkBzRegNo_0" class="uf_chkbzregno"><img src="/bt/bt_bzregno.gif" alt="사업자번호확인"/></a></td>
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
                    <a href="#"  onclick="uf_popup_etc_dvdc_avl_info();"><img src="/bt/bt_guide9.gif" alt="기타증빙기능비목" class="vc"/></a>
                    </div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="거래처정보 상세내용 표" class="tbl_type09">
                      <caption>
                      거래처정보 상세내용 표
                      </caption>
                      <colgroup>
                      <col width="18%" />
                      <col width="35%"/>
                      <col width="18%" />
                      <col width="29%"/>
                      </colgroup>
                      <tbody>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrCoNm_0">회사명</label></th>
                          <td><input type="text" name="etc_SplrCoNm" id="etc_SplrCoNm_0"  title="회사명" class="inputl" style="width:100px"/>
                            <span id="idBzRegNo_0" style="display:none;"><a href="#dummy" id="aIndex_0" class="uf_popup_bzpr"><img src="/bt/bt_busin.gif" alt="자주쓰는사업자"/></a></span></td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrBzRegNo_0">사업자등록번호</label></th>
                          <td class="ll"><input type="text" name="etc_SplrBzRegNo" id="etc_SplrBzRegNo_0"  title="사업자등록번호" class="inputl" style="width:100px"/>
                          <a href="#" id="etc_ChkBzRegNo_0" class="uf_chkbzregno"><img src="/bt/bt_bzregno.gif" alt="사업자번호확인"/></a>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="etc_SplrTpopNm_0">업태</label></th>
                          <td><input type="text" name="etc_SplrTpopNm" id="etc_SplrTpopNm_0"  title="업태" class="inputl" style="width:100px"/></td>
                          <th scope="row"><label for="etc_SplrTpbzNm_0">업종</label></th>
                          <td class="ll"><input type="text" name="etc_SplrTpbzNm" id="etc_SplrTpbzNm_0"  title="업종" class="inputl" style="width:100px"/></td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrAdr_0">사업자주소</label></th>
                          <td><input type="text" name="etc_SplrAdr" id="etc_SplrAdr_0"  title="사업자주소" class="inputl" style="width:195px"/></td>
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
                    <caption>휴폐업 집행사유</caption>
                      <colgroup>
                        <col width="15%" />
                        <col width="85%"/>
                      <tbody>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="SqbnSplrExctnRsn_0">집행사유</label></th>
                          <td class="ll"><input type="text" name="SqbnSplrExctnRsn" id="SqbnSplrExctnRsn_0" class="inputl" style="width:455px;ime-mode:inactive;" colname="휴폐업집행사유" maxlength="200"/></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  </div>
          
                    <div id="divTranInfoItem_0" style="display:none;">   <!-- 계좌이체요청항목 Div 시작  -->
                    <h5 class="fl">계좌이체 요청항목 </h5>
                    <div class="fr"  id="trnsInfo_0"><a href="#" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="자계좌이체허용기준"/></a></div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="계좌이체 요청항목 상세내용 표" class="tbl_type09">
                      <caption>
                      계좌이체 요청항목 상세내용 표
                      </caption>
                      <colgroup>
                      <col width="18%" />
                      <col width="35%"/>
                      <col width="18%" />
                      <col width="29%"/>
                      </colgroup>
                      <tbody>
                        <tr id="ExctnStgDv_tr_0" style="display:;">
                          <th scope="row"><span class="txt_orb">*</span> 집행구분</th>
                          <td colspan="3" class="ll">
                          <div id="idExctnStgDv_td1_0" style="display:block;">
                            <input type="hidden" name="ExctnStgDv" id="ExctnStgDv_0" value=""  />
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv1_0" value="1" class="radio2"  onclick="exctn_ExctnStgDv_v2(this.value,'1', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, '', '', document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);" checked="checked" /><label for="ra1">타계좌이체(연구비계좌경유이체)</label> 
                            <span class="l10"></span>
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv2_0" value="2" class="radio2" onclick="exctn_ExctnStgDv_v2(this.value,'1', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_NO.value,document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);"/><label for="ra2">자계좌이체(연구비계좌이체)</label> 
                            <select name='kind_TrnsRchAcc'  id='kind_TrnsRchAcc_0'  class=''  style='width:135px;'  ><option value='B03001' >허용비목</option><option value='B03002' >외자구매</option><option value='B03003' >지로직접납부</option><option value='B03004' >연구비잔액부족</option><option value='B03005' >지체보상금제외이체</option><option value='B03006' >협약전사용금액</option><option value='B03007' >자계좌이체승인기관</option><option value='B03009' >연구지원전문가 인건비(간접비)</option></select>
                            </div>
                            <span id="idExctnStgDv_td2_0" style="display:none;"></span>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="bank">입금계좌</label></th>
                          <td><select name='RcvBnkCd'  id='RcvBnkCd_0'  class='' onchange='uf_OwacNmRst2(this);' style='width:50px' ><option value=''>선택</option><option value='024' ></option><option value='056' >AB</option><option value='054' >HSBC</option><option value='02' >PRIVT_CTBT_SFBX_ACCT</option><option value='057' >UF</option><option value='039' >경남</option><option value='034' >광주</option><option value='004' >국민</option><option value='003' >기업</option><option value='011' >농협</option><option value='031' >대구</option><option value='055' >도이</option><option value='032' >부산</option><option value='002' >산업</option><option value='050' >상호</option><option value='045' >새마을</option><option value='008' >수출</option><option value='007' >수협</option><option value='088' >신한</option><option value='048' >신협</option><option value='027' >씨티</option><option value='005' >외환</option><option value='020' >우리</option><option value='071' >우체국</option><option value='037' >전북</option><option value='023' >제일</option><option value='035' >제주</option><option value='081' >하나</option></select>
                            <input type="text" name="RcvAcctNo_0" id="RcvAcctNo_0"  title="입금계좌" class="RcvAcctNo inputl" style="width:100px" onchange="uf_OwacNmRst2(this);" value="" title="" notnull colname="입금계좌(계좌번호)" maxlength="20" onfocus="chkEncOn(this);" />
                            <a id="idFvrtAcct_0" href="#dummy" class="uf_popup_fvrt_acct"><img src="/bt/bt_acct01.gif" alt="자주쓰는계좌"/></a>
                            <div id="idRcvBnkNm_0" style="float:left;padding-top:4px;display:none;"></div>
                            <a id="idMyAcctNo_0" href="#dummy" class="uf_popup_my_acct" style="float:right;display:none"><img src="/bt/bt_myacctno.gif" alt="자계좌이체용계좌"/></a>
                          </td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="account">예금주</label></th>
                          <td class="ll"><input type="text" name="OwacNm" id="OwacNm_0" title="예금주" class="inputl" style="width:100px;background-color:#d2d2d2;" readonly="readonly" onfocus="this.blur()"/>
                             <a href="#dummy" id="idowacBtn_0" class="uf_tran_owac2"><img src="/bt/bt_acct02.gif" alt="예금주조회"/></a>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><div class="txt_orb" id="DynReqStar1_0" style="display:inline;">*</div> <label for="WdrwPsbkPrtCtt_0" style="font-size:8pt">연구비통장표시내용</label></th>
                          <td><input type="text" name="WdrwPsbkPrtCtt" id="WdrwPsbkPrtCtt_0" title="연구비통장표시내용" class="inputl" style="width:132px" colname="연구비통장표시내용" notnull maxlength="12"/></td>
                          <th scope="row"><div class="txt_orb" id="DynReqStar2_0" style="display:inline;">*</div> <label for="RcvPsbkPrtCtt_0" style="font-size:8pt">거래처통장표시내용</label></th>
                          <td class="ll"><input type="text" name="RcvPsbkPrtCtt" id="RcvPsbkPrtCtt_0" title="거래처통장표시내용" class="inputl" style="width:100px" colname="거래처통장표시내용"  notnull maxlength="12"/></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="AchvInstIndv1Cd_0">기관용개별코드A</label></th>
                          <td><input type="text" name="AchvInstIndv1Cd" id="AchvInstIndv1Cd_0"  title="기관용개별코드A" class="inputl" style="width:132px;ime-mode:disabled;"  colname="기관용개별코드A" maxlength="20" value="" /></td>
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
                          <td colspan="3" class="ll"><input type="text" name="PaymUsag" id="PaymUsag_0" title="지급용도" class="inputl" style="width:99%;ime-mode:inactive;" notnull colname="지급용도" maxlength="100"/></td>
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
    <% if( "N".equals(BzExpExctnRegYn)){ %>
    <a href="#dummy" onclick="uf_itxp_update('0');" class="bt_action4-01" title="비목등록"><span class="bt_sp">비목등록</span></a>
    <% } %> 
    <a href="#dummy" onclick="uf_itxp_update('1');" class="bt_action4-01" title="사용요청"><span class="bt_sp">사용요청</span></a> </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- 주의사항 start -->
    <div class="pop_guide_box1">
      <div class="pop_guide_boxtd1">
        <p class="pop_point_title" id="divMyAcctTransAlwn" style="display:none;">실시간통합연구비관리시스템(RCMS) 적용에 대한 유예 신청 기업이므로 자계좌이체(연구비계좌이체)만 가능함</p>
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
        //자주쓰는사업자 버튼 이벤트
        $('.uf_popup_bzpr').live('click',function(){
            var ridx = "";
            ridx = $(this).attr('id').split('_')[1];
            uf_popup_bzpr(ridx);
            return false;
        });
        //자주쓰는계좌 버튼 이벤트
        $('.uf_popup_fvrt_acct').live('click',function(){
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
                uf_tran_owac2(document.frm, document.frm, ridx);    
            }else{
                
                if( bzRegNo == '0000000000' && $('#etc_SplrPrsn_'+ridx).attr('checked') == true ){
                    $('#RcvNmChkDv_'+ridx).val('B06008'); //[RNDB06] B06008 개인거래처
                    uf_tran_owac2(document.frm, document.frm, ridx);    //예금주만 조회
                }else if( bzRegNo == '0000000000' && $('#etc_SplrPrsn_'+ridx).attr('checked') == false ){
                    alert('거래처 사업자등록번호를 확인하세요.');
                }else if( bzRegNo == '8888888888' ){
                    $('#RcvNmChkDv_'+ridx).val('B06009'); //[RNDB06] B06009 해외거래처
                    uf_tran_owac2(document.frm, document.frm, ridx);    //예금주만 조회
                }else{
                    uf_tran_owac_c(bzRegNo, ridx, document.frm ,document.frm);
                }
            }
            
            return false;
        });
    });
    
    
    
    
    function setData(){
        var seqNo = "<%=AgrmtSeqNo%>";
        
        //1. 신규과제
        if("G00000000000001" == seqNo){
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
        }else if("G00000000000002" == seqNo){
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
        }else if("G00000000000003" == seqNo){
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
        //}else if("G00000000000004" == seqNo){
        }else{
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
    }
</script>

<div style="display:none" id="log">
</div>


</body>
</html> 


