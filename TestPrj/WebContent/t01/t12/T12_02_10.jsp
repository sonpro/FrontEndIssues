<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_02_10.jsp
 *   Description        : 집행전비목수정팝업창(증빙우선)
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
    String ButrId                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ButrId"));                // 증빙일련번호
    String ExctnRegDt                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnRegDt"));            // 집행실행일자
    String ExctnRegDrtm                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnRegDrtm"));          // 집행실행시간
    String OwacNm                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"OwacNm"));                // 예금주
    String RcvBnkCd                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvBnkCd"));              // 입금은행코드             
    String RcvAcctNo                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvAcctNo"));             // 입금계좌번호
    String RcvPsbkPrtCtt                =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvPsbkPrtCtt"));         // 연구비계좌입금통장인쇄내용      
    String WdrwPsbkPrtCtt               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"WdrwPsbkPrtCtt"));        // 연구비계좌출금통장인쇄내용      
    String Evdc_SumAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzExpExctnAmt"));         // 사업비사용금액            
    String Evdc_SplyAmt                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"SplyAmt"));               // 공급금액               
    String Evdc_VatAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"VatAmt"));                // 부가가치세액             
    String PaymUsag                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"PaymUsag"));              // 사용내역               
    String TelNo                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TelNo"));                 // 전화번호               
    String ExctnStgDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnStgDv"));            // 사용단계구분                        
    String AgrmtSeqNo                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));            // 협약일련번호                  
    String AgrmtInstId                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstId"));           // 협약기관ID
    String PmsId                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"pmsId"));                 // PMS_ID                
    String RchExpAcctBnkCd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RchExpAcctBnkCd"));       // 연구비계좌은행코드              
    String RchExpAcctNo                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RchExpAcctNo"));          // 연구비계좌번호                 
    String AgrmtInstBzRegNo             =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstBzRegNo"));      // 협약기관사업자등록번호
    String BzExpExctnRegYn              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzExpExctnRegYn"));       // 사업비집행등록여부
    String AchvInstIndv1Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv1Cd"));               // 기관용개별코드1
    String AchvInstIndv2Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv2Cd"));           // 기관용개별코드2
    String CrdSetlMeth                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"CrdSetlMeth"));           // 결제방식구분(1:집계방식/2:실시간이체방식)
    String TrscPfmcSt                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnSt"));           // 거래실적상태
    
    String PsnlAcctUseYn                =   "";     //인건비성계좌여부
    String UnfyMgntInstYn               =   "";     //협약관리기관여부
    
    String Cus_ReprNm                   =   "";                                                                     // 거래처대표자명
    String Cus_BizNo                    =   "";                                                                     // 거래처사업자번호
    String Cus_TpBzNm                   =   "";                                                                     //거래처업종명
    String Cus_TpOpNm                   =   "";                                                                     //거래처업태명
    String Cus_Addr                     =   "";                                                                     //거래처사업장주소
    String Cus_SplrCoNm                 =   "";                                                                     //공급자회사명
    String RcvBnkNm                     =   "";                                                                     //입금계좌은행명
    
    //2011.11.30 
    String hmpwRoleDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"hmpwRoleDv"));            // 인력역할구분
    String rcmsGrpCd                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"rcmsGrpCd"));             //RCMS그룹코드 
    String WRTG_DT                      =   "";                                                                     //사용일자(전자세금계산서)
    String APV_DT                       =   "";                                                                     //사용일자(카드)  
    
    
    String OgnSumAmt                    =   ""; //원 합계금액
    String OgnSplyAmt                   =   ""; //원 공급금액
    String OgnVatAmt                    =   ""; //원 부가세금액
    
    String ItemData[]   ;
    
%>

<title>비목등록내역 수정 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">비목등록내역 수정</p>
        </div>
        <!-- //head title// --> 
    </div>




<style type="text/css">
    div.tt_son {  width:550px; position:absolute; border-width:2; border-color:#3a679e; border-style:solid;font-family:Gulim;font-size:9pt; background-color:#FFFFFF }
    input.currency {text-align:right;padding-right:1px;}
    .dycell {display:none;}
    .ItxpAdtnInfo {display:none;}
</style>
<script type="text/javascript">
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
    if("G01" == "G01" && "00006277" == "10112249"){
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

    
    
/******************************************************************
 * set_evdc_amt      비목 첫번째 row에 증빙금액 세팅
 * @param
 * @return
 *  page마다 customizing 되었음
******************************************************************/
function set_evdc_amt(){
    
    var frm = document.frm;
    var s_SubDtlsItxpIdx = "0";
    
    // 2012.06.15 : 이기영 - 상시점검 관련 추가

        fnItxpSetting('0', 'B0202', 'B0202022', "훈련비", '1100', '1000', '100', '1000000000000001', '','U201401073766288','20140306','143313','1','B16000','','0');
        
        jQuery("#EvdcDcmtCmadId_"+'0').val("D201401011122337");
        jQuery("#ExtEdmsDocId_"+'0').val("1000000000000001");
        
        jQuery("#EdmsDocId_"+'0').val("1000000000000001");
        jQuery("#FileNm_"+'0').val("test_txt.gif\;");
        jQuery("#rchrInfo_"+'0').val("");
        
        jQuery("#SelShrSorcSn_"+'0').val("");
    
        if('0' != '0'){
            fnAddRow();
        }
        
        //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
        if( frm.S_PSNL_ACCT_USEYN.value == "Y" && 'Y' == itxpPsnlYn('B0202022') ){
            if( "C" == frm.Evdc_Dv.value ){//카드인경우 인건비성 비목 등록 불가.
                alert("카드는 인건비성 비목을 등록 할 수 없습니다.\n\n[내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비]");
                $('#SelSubDtlsItxpCd_'+'0').val(''); //세세목 초기화
            }else{
                s_SubDtlsItxpIdx = 'B0202022';
            }
            
        }
        
        //기타증빙예외
        $('#etcimpex_' + '0').hide();
        if( 'E' == frm.Evdc_Dv.value ){
            for(var i = 0 ; i < EtcImplItxpCd.length; i++){
                if( EtcImplItxpCd[i] == 'B0202022' ){
                    $('#etcimpex_' + '0').show();
                    $('#EtcEvdcExcCd_'+'0').val('');
                    $('#EtcEvdcExcNo_'+'0').val('');
                    break;
                }
            }
        }
        
    
    var mode="";
    if("C"=='E'){
        mode="4";
    }
    exctn_ExctnStgDv_v2(mode,'2', '020','A', '10000000000','A','020','10000000000','Y','1');
    document.frm.OwacNm.value = "㈜RCMS";

    PsnlItxpAcctNoSet();
    
    
}

// 비목 테이블 콤보
var SelDtlsItxpCd = new Array();
var SelDtlsItxpNm = new Array();
var SelSubDtlsItxpCd = new Array();
var SelSubDtlsItxpNm = new Array();

var BzExpSprnExctnYn = "N"; //사업비분리집행 여부
var SelShrSorcSn = new Array();
var SelShrSorcNm = new Array();


function mkShrSorcSn(tObjIdx){
    var tObj = document.all["SelShrSorcSn_"+tObjIdx];

    tObj.options.length = 1;
    if( BzExpSprnExctnYn == "Y" ){
        tObj.options[0] = new Option("미사용",'',true,false);
    
        for(var i=0 ; i < SelShrSorcSn.length; i++){
            tObj.options[i+1] = new Option(SelShrSorcNm[i], SelShrSorcSn[i]);
        }   
        $('.dycell').show();
    }else{
        tObj.options[0] = new Option("미사용",'',true,false);
        $('.dycell').hide();
    }
}

function mkDtlsItxpCd(tObjIdx){
    var tObj = document.all["SelDtlsItxpCd_"+tObjIdx];
    var opt_name = "선택";

    tObj.options.length = 1;
    tObj.options[0] = new Option(opt_name);

    for(var i=0,j=SelDtlsItxpCd.length; i<j; i++){
        tObj.options[i+1] = new Option(SelDtlsItxpNm[i], SelDtlsItxpCd[i]);
    }
}

function SelDtlsItxpCdOnChange(obj, idx){

    if(typeof(obj)=="undefined" || obj==""){
        obj = document.all["SelDtlsItxpCd_"+idx];
        tObjIdx = idx;
    }

    fnAbleItxpAdtn(obj);
    
    var k = 0;
    var tObjIdx = obj.id.split("_")[1];
    var tObj = document.all["SelSubDtlsItxpCd_"+tObjIdx];
    var opt_name = "선택";
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


/******************************************************************
 * SelDtlsItxpCdOnChange         세세목변경시 실행함수
 * @param
 * @return
******************************************************************/
function SelDtlsItxpCdOnChange2(obj){
    
    var frm =   document.frm;
    
    if(document.frm.SelSubDtlsItxpCd.value == "B0206006"){
        var todate = new Date().getDate();
        var cookieValue = getCookie("cookie_P01_31_00.jsp");

        if(cookieValue==todate) return false;

        var frm = document.frm;
        var url = "/pop/T01_31_00.jsp";

        uf_frmNewWinNs(frm, url, 'NEW_ITXP_GUIDE', 730, 700);
        removeTempAttribute(frm);
    }
    
    //기타증빙예외 처리
    uf_etcImplExc(obj);
    
    //개인거래 설정
    setSplrPrsn(frm,frm);
    
    if( false == chkEtcEvdcExc() ){
        return false;
    }
    
    //인건비성지급계좌설정(내,외부인건비/연구수당)
    PsnlItxpAcctNoSet(obj);
}

/******************************************************************
 * PsnlItxpAcctNoSet         인건비성지급계좌설정(내,외부인건비/연구수당)
 * @param
 * @return
******************************************************************/
function PsnlItxpAcctNoSet(obj){
    
    var ExctnStgDv = (true==document.frm.ExctnStgDv[0].checked) ? "1" : "2";
    var frm     =   document.frm;
    var ItxpCd  = "";
    if( typeof obj == 'undefined' || null == obj){
        ItxpCd = "";
    }else{
        ItxpCd = obj.value;
    }
    
     var RchExpAcctNo   = "10000000000";//연구비계좌
     var RcvAcctNo      = "10000000000";//입금계좌
     
    //카드로 인건비성 비목등록 거부
    //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
    if( frm.S_PSNL_ACCT_USEYN.value == 'Y' && "C" == frm.Evdc_Dv.value ){       
        if('Y' == itxpPsnlYn(ItxpCd)){
            alert("카드는 인건비성 비목을 등록 할 수 없습니다.\n\n[내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비]");
            obj.selectedIndex = 0;
            return;
        }
    }
    
    var ItxpPsnl = chkItxpPsnl(frm.S_PSNL_ACCT_USEYN.value);

    if( ExctnStgDv == '1' && "C" != frm.Evdc_Dv.value){

        if( ( 0 != ItxpPsnl ) || 'Y' == itxpPsnlYn(ItxpCd)){    //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
            //카드증빙이 아니고 인건비성지급계좌를 사용하는 기관인 경우에는 인건비성 지급계좌로 설정.
            if( document.frm.S_PSNL_ACCT_USEYN.value == "Y" ){
                      
                var strVal  =   "003|10000000000|(주) RCMS";
                
                arrVal = strVal.split("|");
                

                document.getElementById("RcvBnkCd").style.display       = "";
                document.getElementById("RcvAcctNo").style.display      = "";
                
                document.getElementById("idRcvBnkNm").style.display         = "none";
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
                
                if(frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value == frm.S_RCH_ACC_BNK_CD.value
                && frm.RcvAcctNo.value == frm.S_RCH_ACC_NO.value){
                    document.frm.ExctnStgDv[0].checked = false; //타계좌이체
                    document.frm.ExctnStgDv[1].checked = true;  //자계좌이체
                }else{
                    document.frm.ExctnStgDv[0].checked = true;  //타계좌이체
                    document.frm.ExctnStgDv[1].checked = false; //자계좌이체
                }
            }
        }else{
            if( typeof obj != 'undefined' && null != obj){
                setEnabledBnkAcctInfo();
            }
        }

    }
    
}


/******************************************************************
 * fnAddRow      테이블 로우 추가
 * @param
 * @return
******************************************************************/
function fnAddRow(){
    var tbody = jQuery("#ItxpList tbody");
    var rows = tbody.find("tr").length;
    var newRow = tbody.find("tr:last").clone(true).appendTo(tbody);
    newRow.find('.etcimpex').hide();
    fnControlInit(newRow, rows);
    newRow.find("span[id^=rno]").html(rows+1);
    
    var borderStyle = "";
    newRow.find(":input[type=text]").focus(function(){
        borderStyle = $(this).css('border');
        $(this).css('border','1px solid #464646');  
    }).blur(function(){
        $(this).css('border',borderStyle);
    });
    
    document.frm.itxp_cnt.value = parseInt(document.frm.itxp_cnt.value)+1;  
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
            //alert( $("#EdmsDocId_" + $(this).index() ).val());
            
            $("#ItxpChk:checked").each(
                    //edmsDeleteItemRev("frm",  "delete", $("#EdmsDocId_" + $(this).index() ).val(), "SMTEST", "02", "http://61.41.119.163/rcmsConnect.do")
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
            
            document.frm.itxp_cnt.value =   parseInt(document.frm.itxp_cnt.value)-1;
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
}

// 기등록건 선택 or 입력
//function fnItxpSetting(idx, dtlsIdxpCd, subDtlsItxpCd, item, useAmt, splyAmt, vatAmt, fileEvdc, adtnInfo, itxpdt, itxptm, itxpseq,reviwyn,reviewdt,reviewrsn,alwyyn,alwyrsn){
function fnItxpSetting(idx, dtlsIdxpCd, subDtlsItxpCd, item, useAmt, splyAmt, vatAmt, edmsDocId, adtnInfo, buitid, itxpdt, itxptm, itxpseq,isptst,isptsn,isptupdyn){    
    jQuery("#SelDtlsItxpCd_"+idx).val(dtlsIdxpCd);

    SelDtlsItxpCdOnChange("",idx);
    jQuery("#SelSubDtlsItxpCd_"+idx).val(subDtlsItxpCd);
    jQuery("#ItxpItem_"+idx).val(item);
    jQuery("#ItxpUseAmt_"+idx).val(toMoney(useAmt));
    jQuery("#rchrAmt_"+idx).val(toMoney(useAmt));
    jQuery("#ItxpSplyAmt_"+idx).val(toMoney(splyAmt));
    jQuery("#ItxpVatAmt_"+idx).val(toMoney(vatAmt));
    jQuery("#ItxpFileEvdcVal_"+idx).text(edmsDocId);
    jQuery("#ItxpAdtnInfoVal_"+idx).text(adtnInfo);
    // 2012.06.15 : 이기영 - 상시점검 관련 추가
    jQuery("#BUITID_"+idx).val(buitid); 
    jQuery("#USEREGDT_"+idx).val(itxpdt);   
    jQuery("#USEREGTM_"+idx).val(itxptm);
    jQuery("#USEREGSEQ_"+idx).val(itxpseq);
    jQuery("#REVIEWYN_"+idx).val(isptst);
    
    jQuery("#LSTISPTST_"+idx).val(isptst);
    jQuery("#LSTISPTRSLTSN_"+idx).val(isptsn);
    jQuery("#LSTISPTAFTHUPDYN_"+idx).val(isptupdyn);
            
    // 2012.06.15 : 이기영 - 상시점검 관련 추가
    
    if( null == edmsDocId || edmsDocId != "" ){
        jQuery("#ItxpFileEvdc_"+idx).html('<img src="/bt/bt_regist4.gif" alt="등록">');
    }
    
    // 과제중심데이타에는 인건비내역의 시작일(0번), 종료일(1번)이 없기 때문에 인건비내역가 있는 경우에도 미등록으로 표시됨.
    // 시작일(0번)이 아닌 주민등록번호(2번)으로 조건을 수정
    //if((null !=adtnInfo.split(',')[0])&&("null" !=adtnInfo.split(',')[0]) && (adtnInfo.split(',')[0]!="" )){
    if(adtnInfo.split(',').length > 3){
        if((null !=adtnInfo.split(',')[2])&&("null" !=adtnInfo.split(',')[2]) && (adtnInfo.split(',')[2]!="" )){
            jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_regist4.gif" alt="등록">');
        }       
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
    var EdmsDocId = "";
    
    if(""!=$("#EdmsDocId_"+tObjIdx).val()){
        mode = "update";
        EdmsDocId = $("#EdmsDocId_"+tObjIdx).val();
    }

    document.frm.doc_dv.value="1";
    uf_edmsUploadFile(mode,tObjIdx, EdmsDocId);
}
/******************************************************************
 * fnAdtnInfo        인건비내역 등록
 * @param
 * @return
******************************************************************/
function fnAdtnInfo(obj,idx){
    var frm     =   document.frm;
    var url, result,amt,param,arr_result;
    var tObjIdx = obj.id.split("_")[1];
    
    //세목선택체크
    if(!chk_frm_value("SelDtlsItxpCd",tObjIdx)) return;
    //세세목선택체크
    if(!chk_frm_value("SelSubDtlsItxpCd",tObjIdx))  return;
    //인건비,연구수당인경우만 등록가능
    if(document.frm.itxp_cnt.value > 1){
        if(!uf_AdtnRegItxpChk(frm.SelDtlsItxpCd[tObjIdx].options[frm.SelDtlsItxpCd[tObjIdx].options.selectedIndex].value, true)) return;
    }else{
        if(!uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, true)) return;
    }
    
    amt = Number($("#ItxpSplyAmt_"+tObjIdx).val().replace(/,/gi,"")) + Number($("#ItxpVatAmt_"+tObjIdx).val().replace(/,/gi,""));

    param   =   "ChkAmt="           + amt;
    param   +=  "&AgrmtInstId="     + frm.S_AGRMT_INST_ID.value;
    param   +=  "&AgrmtSeqNo="      + frm.S_AGRMT_SEQ_NO.value;
    param   +=  "&PmsId="           + frm.S_PMS_ID.value;
    param   +=  "&BzClasCd="        + frm.S_BZ_CLAS_CD.value;
    param   +=  "&SbjtId="          + frm.S_SBJT_ID.value;
    param   +=  "&UnfyMgntInstYn="  + frm.S_UNFY_MGNT_INST_YN.value;
    param   +=  "&ItxpCd="          + document.getElementById('SelDtlsItxpCd_'+tObjIdx).value;
    param   +=  "&tObjIdx="         + tObjIdx;
    
    frm.p_rchrInfo.value = $("#rchrInfo_"+tObjIdx).val();
    
    url = "/t01/t12/T12_01_30_0.jsp?"+param;
    
    result = openModalNs(url, frm, "dialogWidth:800px; dialogHeight:400px; scroll:no");
    
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
function uf_edmsUploadFile(mode,idx, EdmsDocId){
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
    hmpwRoleDv          = "02";
    rcmsGrpCd           = "MR010";  

    if(rcmsGrpCd == "MR042" || rcmsGrpCd == "MR043" || rcmsGrpCd == "MR023" ){
        hmpwRoleDv = "03";
    } 
    
    evdcDv              = frm.Evdc_Dv.value;
    if(frm.Evdc_Dv.value == "T"){
        useDt           = "";
    }else if(frm.Evdc_Dv.value == "C"){
        useDt           = "";
    }else if(frm.Evdc_Dv.value == "E"){
        
        useDt           = "2014" + "01" + "07";
    }
    pmsId               = frm.S_PMS_ID.value;
    sbjtId              = frm.S_SBJT_ID.value;
    agrmtSeqNo          = frm.S_AGRMT_SEQ_NO.value;
    agrmtInstId         = frm.S_AGRMT_INST_ID.value;
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

    //alert(docName);
    
    if(docName.length>0){
        if("1"==document.frm.doc_dv.value){
            $("#EdmsDocId_"+docKeyNo).val(docKey);
            $("#FileNm_"+docKeyNo).val(docName);
            $("#ItxpFileEvdc_"+docKeyNo).html('<img src="/bt/bt_regist4.gif" alt="등록">');
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

    
    if( -1 == chkItxpPsnl(frm.S_PSNL_ACCT_USEYN.value) ){
        return false;
    }
    
    //기타증빙예외건 체크
    if( false == chkEtcEvdcExc() ){
        return false;
    }
    //-----------------------------------
    //  비목등록정보 유효성 검사
    //-----------------------------------
    for(i=0; i<document.frm.itxp_cnt.value; i++){
        if(!chk_frm_value("SelDtlsItxpCd",i))       return false;           // 세목
        if(!chk_frm_value("SelSubDtlsItxpCd",i))    return false;           // 세세목
        if(!chk_frm_value("ItxpItem",i))            return false;           // 품목
        if(!chk_frm_value("ItxpUseAmt",i))          return false;           // 사용금액
        if(!chk_frm_value("ItxpSplyAmt",i))         return false;           // 공급금액
        if(!chk_frm_value("ItxpVatAmt",i))          return false;           // 부가세
        
        
        //카드로 인건비성 비목등록 거부
        //내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비가 선택되었을 경우
        if( frm.S_PSNL_ACCT_USEYN.value == "Y" && "C" == frm.Evdc_Dv.value ){       
            if( 'Y' == itxpPsnlYn(document.getElementById("SelSubDtlsItxpCd_" + i).value) ){
                alert("카드는 인건비성 비목을 등록 할 수 없습니다.\n\n[내부인건비, 외부인건비, 연구수당, 인건비, 학생인건비]");
                return false;
            }
        }
        
        // 2011.10.19 태동현 : 부가세가 공급금액을 초과하는 경우가 있기 때문에 로직 삭제
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
        //if(splyAmt < vatAmt*2){
        //  alert("부가세의 최대 설정 금액은 공급금액의 50%까지 입니다.");
        //  $("#ItxpVatAmt_"+i).focus();
        //  return false;
        //}
    }
    
    //-----------------------------------
    //  비영리기관이 간접비 집행시 증빙서류 인건비내역등록안함
    //  신규비목코드 추가로 인한 연구과제추진비인 경우에도 증빙서류 인건비내역등록안함
    //-----------------------------------
    //if(!(((frm.S_NPRF_INST_YN.value == "Y") && (chk_itxpExist(document.frm.itxp_cnt.value,'B0301001'))) 
    if(!(
            (chk_itxpExist(document.frm.itxp_cnt.value,'B0206001') && "E" != frm.Evdc_Dv.value)
            || (chk_itxpExist(document.frm.itxp_cnt.value,'B0206002') && "E" != frm.Evdc_Dv.value) 
            || (chk_itxpExist(document.frm.itxp_cnt.value,'B0206003') && "E" != frm.Evdc_Dv.value)
            || (chk_itxpExist(document.frm.itxp_cnt.value,'B0206004') && "E" != frm.Evdc_Dv.value)
            || (chk_itxpExist(document.frm.itxp_cnt.value,'B0206005') && "E" != frm.Evdc_Dv.value)
            || chk_itxpExist(document.frm.itxp_cnt.value,'B0206006')
            )){
    
        //-----------------------------------
        //  증빙서류 체크
        //-----------------------------------
        if(frm.EdmsDocId.length > 1){
            for(i=0;i<frm.EdmsDocId.length;i++){
                //if("B0301001"!=$("#SelSubDtlsItxpCd_"+i).val() && (null==frm.EdmsDocId[i].value || ""==frm.EdmsDocId[i].value)){
                if( null==frm.EdmsDocId[i].value || ""==frm.EdmsDocId[i].value ){
                    alert("증빙서류를 등록해주세요.");
                    return false;
                }
            }
        }else{
            if(null==frm.EdmsDocId.value || ""==frm.EdmsDocId.value){
                alert("증빙서류를 등록해주세요.");
                return false;
            }       
        }
        //-----------------------------------
        //  인건비내역 체크(인건비,연구수당인경우만 등록필수)
        //-----------------------------------
        if(frm.rchrInfo.length > 1){
            for(i=0;i<frm.rchrInfo.length;i++){
                if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].value, false)){
                    if(null==frm.rchrInfo[i].value || ""==frm.rchrInfo[i].value){
                        alert("인건비내역을 등록해주세요.");
                        return false;
                    }else{
                        if(frm.rchrAmt[i].value.replace(/,/gi,"") != frm.ItxpUseAmt[i].value.replace(/,/gi,"")){
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
    
    //-----------------------------------
    //  계좌이체 요청항목 유효성 검사
    //-----------------------------------
    if("1"==p_PlanPrgrSt){
        

        if( "Y" == frm.SqbnSplrExctnRsnYn.value && "" == $.trim(frm.SqbnSplrExctnRsn.value) ){
            alert('휴폐업 집행사유를 입력해주세요.');
            frm.SqbnSplrExctnRsn.focus();
            return false;
        }
        
        if( !("C"==frm.Evdc_Dv.value) ){
            var exctnStgDv = (true==document.frm.ExctnStgDv[0].checked) ? "1" : "2";
            
            // 타계좌일 경우
            if("1"==exctnStgDv){
                //-----------------------------------
                //  증빙구분 따른 세세목 유효성검사
                //-----------------------------------
                var msg = chk_Itxp_ExctnStgDv(frm, frm.Evdc_Dv.value);
                if(!(""==msg)){
                    alert(msg);
                    return false;
                }   
            }else{
                //-----------------------------------
                //  집행종류구분에 따른 세세목 유효성검사
                //-----------------------------------
                var msg = chk_Itxp_kindTrnsRchAcc(frm, frm.kind_TrnsRchAcc.value, frm.S_NPRF_INST_YN.value);
                if(!(""==msg)){
                    alert(msg);
                    return false;
                }
            }   
        }
        
        if( !(("C"==frm.Evdc_Dv.value) &&  ("1"==frm.InstCrdSetlMeth.value))){
            if( frm.OwacNm.value == "" ){
                alert("예금주조회를 해주십시오.");
                return false;
            }   
        }

        if( !(("C"==frm.Evdc_Dv.value) &&  ("1"==frm.InstCrdSetlMeth.value))){
            //-----------------------------------
            //  계좌이체 요청항목 유효성 검사
            //-----------------------------------
            if(""==frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value){
                alert("필수항목은 반드시 선택하셔야 합니다.\r\n\r\n* 필수선택 항목 : 입금계좌(은행)");
                frm.RcvBnkCd.focus();
                return false;
            }
            //if(! validate_frm(frm) ) return false; // 유효성처리
        }
        
        if( !("C"==frm.Evdc_Dv.value) ){    
            //-----------------------------------
            //  타계좌이체시 입금계좌가 연구비계좌인지 검사
            //-----------------------------------
            if( true                                                    ==  document.frm.ExctnStgDv[0].checked      &&
                frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value  ==  "020"                   &&
                frm.RcvAcctNo.value                                     ==  "1005000000415"){
                alert("입금계좌가 연구비계좌와 동일합니다.");
                return false;
            }

        } 

        
        
        //--------------------------------------------------
        //  기타증빙&&자계좌이체인 경우 증빙금액과 일치여부 체크안함
        //--------------------------------------------------
        if(!( ("E"==frm.Evdc_Dv.value)&&(true==document.frm.ExctnStgDv[1].checked))){
            //-----------------------------------
            //  금액 체크
            //-----------------------------------
            var msg = chk_itxp_evdc_amt();
            if(!(""==msg)){  alert(msg);return false;   }
        }
    }
    

    
    return true;
}

/******************************************************************
 * uf_itxp_update       계획/증빙/비목저장
 * @param
 * @return
******************************************************************/
function uf_itxp_update(p_PlanPrgrSt){
    var frm = document.frm;
    var param,target_url;

    
    // 유효성 검사
    if(!chk_save(p_PlanPrgrSt)) return;
    
    if( "0" == p_PlanPrgrSt && ( "" != frm.OwacNm.value || "" != frm.PaymUsag.value || "" != frm.TelNo.value ) ){
        alert('계좌이체 요청항목은 저장되지 않습니다.');
    }
    
    if(!confirm("수정하시겠습니까?")){return;}
    
    param =     "AGRMT_SEQ_NO="+frm.S_AGRMT_SEQ_NO.value;
    param +=    "&AGRMT_INST_ID="+frm.S_AGRMT_INST_ID.value;
    param +=    "&PMS_ID="+frm.S_PMS_ID.value;
    param +=    "&BZ_CLAS_CD="+frm.S_BZ_CLAS_CD.value;
    param +=    "&CPCG_INST_BZPR_NO="+frm.S_CPCG_INST_BZPR_NO.value;
    param +=    "&AGRMT_INST_BZPR_NO="+frm.S_AGRMT_INST_BZPR_NO.value;
    
    //세목값담기
    if(document.frm.itxp_cnt.value == 1){
        param   +=  "&ITXP_CD="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
        param   +=  "&ITXP_NM="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].text;
    }else{
        for(i =0;i< frm.SelDtlsItxpCd.length;i++){
            param   +=  "&ITXP_CD="+frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].value;
            param   +=  "&ITXP_NM="+frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].text;
        }
    }
    //세세목값담기
    if(document.frm.itxp_cnt.value == 1){
        param   +=  "&DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
        param   +=  "&DTLS_ITXP_NM="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].text;
    }else{
        for(i =0;i< frm.SelSubDtlsItxpCd.length;i++){
            param   +=  "&DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value;
            param   +=  "&DTLS_ITXP_NM="+frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].text;
        }       
    }
    
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
                
    
    
    
}
//-------------------------------
//  카드결제방식에따른 화면구성변경
//-------------------------------
function uf_crdSetlMeth(){
    if("C"=='E' && "1"=='2'){
        document.getElementById("divTranInfoItem").style.display    = "none";
    }
}


/*********************************************
 * uf_tran_owac  예금주(실명) 조회
 * @param
 * @return
 ********************************************/
function uf_tran_owac(){
    var frm = document.frm;
    var bzRegNo = "";
    var _evdc_dv = frm.evma_gb.value;
    
    if( frm.ExctnStgDv[0].checked == true  ){
        if( 'C' != _evdc_dv ){
            bzRegNo = frm.SplrBzRegNo.value;
        }
    }

    var chk_cnt = 0;
    for(var i = 0; i < document.forms['frm'].elements['itxp_cnt'].value; i++){
        if( false == chkAcnmAuthPass($('#SelSubDtlsItxpCd_'+i).val()) ){
            chk_cnt++; //실명인증필요 세세목 개수
        }
    }//end of for
    $('#RcvNmChkDv_0').val('');
    if( chk_cnt == 0 ){
        $('#RcvNmChkDv_0').val('B06006'); //[RNDB06] B06006 실명조회예외세목
        uf_tran_owac2(frm,frm);
    }else{
        if( bzRegNo == '0000000000' && frm.etc_SplrPrsn.checked == true ){
            $('#RcvNmChkDv_0').val('B06008'); //[RNDB06] B06008 개인거래처
            uf_tran_owac2(frm,frm);
        }else if( bzRegNo == '0000000000' && frm.etc_SplrPrsn.checked == false ){
            alert('거래처 사업자등록번호를 확인하세요.');
        }else if( bzRegNo == '8888888888' ){
            $('#RcvNmChkDv_0').val('B06009'); //[RNDB06] B06009 해외거래처
            uf_tran_owac2(frm,frm);         
        }else{
            //bzRegNo 값이 없으면 예금주 조회만
            uf_tran_owac_c(bzRegNo,'',frm,frm);
        }
    }
    

    
    return false;
}
</script>

<div id="body">
  <!-- content start -->
  <div id="content">
    <div class="t10"></div>
    <!--  비목등록내역 상세내용 표 start -->
        <!-- ---------------------------------------------------------------------------- -->
        <!--    과제상세표시박스 공통부 시작 -->
        <!-- ---------------------------------------------------------------------------- -->
        <div class="t10 b20 pop_wh">
        <%@ include file="/inc/sbjt_info_pop.jsp" %>
        </div>                                                                                                                
        <!-- ---------------------------------------------------------------------------- -->
        <!--    과제상세표시박스 공통부 끝 -->
        <!-- ---------------------------------------------------------------------------- -->

        <form name="frm" id="frm" method="post">
            <!-- 공통정보  -->
            <input type="hidden" id="S_PMS_ID"              name="S_PMS_ID"                 value="G01">
            <input type="hidden" id="S_BZ_CLAS_CD"          name="S_BZ_CLAS_CD"             value="S1854">
            <input type="hidden" id="S_SBJT_ID"             name="S_SBJT_ID"                value="TEST0004">
            <input type="hidden" id="S_PRS_SBJT_STG"        name="S_PRS_SBJT_STG"           value="0">
            <input type="hidden" id="S_ANNL"                name="S_ANNL"                   value="1">
            <input type="hidden" id="S_AGRMT_SEQ_NO"        name="S_AGRMT_SEQ_NO"           value="G00000000000004">
            <input type="hidden" id="S_AGRMT_INST_ID"       name="S_AGRMT_INST_ID"          value="10112249">
            <input type="hidden" id="S_CPCG_INST_BZPR_NO"   name="S_CPCG_INST_BZPR_NO"      value="1111111111">
            <input type="hidden" id="S_AGRMT_INST_BZPR_NO"  name="S_AGRMT_INST_BZPR_NO"     value="1111111111">
            <input type="hidden" id="S_EXCTN_STG_DV"        name="S_EXCTN_STG_DV"           value="2">
            <input type="hidden" id="S_RCH_ACC_BNK_CD"      name="S_RCH_ACC_BNK_CD"         value="020">
            <input type="hidden" id="S_RCH_ACC_NO"          name="S_RCH_ACC_NO"             value="10000000000">
            <input type="hidden" id="S_SBJT_NM"             name="S_SBJT_NM"                value="RCMS 실습용 정산과제">
            <input type="hidden" id="S_BZ_CLAS_NM"          name="S_BZ_CLAS_NM"             value="RCMS 실습">
            <input type="hidden" id="S_NPRF_INST_YN"        name="S_NPRF_INST_YN"           value="N">
            <input type="hidden" id="S_MY_ACCT_TRNS_ALWN_YN"    name="S_MY_ACCT_TRNS_ALWN_YN"   value="Y">
            <input type="hidden" id="S_PSNL_ACCT_USEYN"     name="S_PSNL_ACCT_USEYN"        value="<%=StringUtil.null2void(PsnlAcctUseYn) %>">
            <input type="hidden" id="S_UNFY_MGNT_INST_YN"   name="S_UNFY_MGNT_INST_YN"      value="<%=StringUtil.null2void(UnfyMgntInstYn) %>">
            <input type="hidden" id="ExctnRegDt"            name="ExctnRegDt"               value="<%=StringUtil.null2void(ExctnRegDt) %>">            <!-- 집행실행일자                 -->
            <input type="hidden" id="ExctnRegDrtm"          name="ExctnRegDrtm"             value="<%=StringUtil.null2void(ExctnRegDrtm) %>">          <!-- 집행실행시간                 -->
            <input type="hidden" id ="ButrId"               name ="ButrId"                  value="<%=StringUtil.null2void(ButrId) %>"/>               <!-- 증빙일련번호                 -->
            <input type="hidden" id ="TrscPfmcSt"           name ="TrscPfmcSt"              value="<%=StringUtil.null2void(TrscPfmcSt) %>"/>           <!-- 거래실적상태                 -->
            <input type="hidden" id ="Evdc_Dv"              name ="Evdc_Dv"                 value="<%=StringUtil.null2void(BzExpExctnEvdcDv) %>"/>     <!-- 증빙구분                           -->
            <input type="hidden" id ="Evdc_SumAmt"          name ="Evdc_SumAmt"             value="<%=StringUtil.null2void(Evdc_SumAmt) %>"/>          <!-- 증빙_이체금액                        -->
            <input type="hidden" id ="Evdc_SplyAmt"         name ="Evdc_SplyAmt"            value="<%=StringUtil.null2void(Evdc_SplyAmt) %>"/>         <!-- 증빙_공급금액                        -->
            <input type="hidden" id ="Evdc_VatAmt"          name ="Evdc_VatAmt"             value="<%=StringUtil.null2void(Evdc_VatAmt) %>"/>          <!-- 증빙_부가세액                        -->
            <input type="hidden" id ="Cus_SplrCoNm"         name ="Cus_SplrCoNm"            value="<%=StringUtil.null2void(Cus_SplrCoNm) %>"/>         <!-- 공급자회사명                         -->
            <input type="hidden" id="BzExpExctnRegYn"       name="BzExpExctnRegYn"          value="<%=BzExpExctnRegYn%>"/>                  <!-- 사업비집행등록여부                  -->
            <input type="hidden" id="dockeyNo"              name="dockeyNo"                 value=""/>                                      <!-- 선택된 증빙테이블키         -->
            <input type="hidden" id="doc_dv"                name="doc_dv"                   value=""/>                                      <!-- 증빙서류/인건비내역             -->
            <input type="hidden" id="docName"               name="docName"                  value=""/>                                      <!-- 리턴결과값(등록파일명)   -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""/>                                      <!-- 생성된EDMS_dockey         -->
            <input type="hidden" id="methodName"            name="methodName"               value=""/>                                      <!-- 메소드명 -->    
            <input type="hidden" id="attr98"                name="attr98"                   value=""/>                                      <!-- 리턴결과값(등록파일명)   -->
            <input type="hidden" id="attr99"                name="attr99"                   value=""/>                                      <!-- 리턴결과값(등록파일갯수)  -->
            <input type="hidden" id="itxp_cnt"              name="itxp_cnt"                 value="1"/>                                     <!-- 비목등록건수             -->
            <input type="hidden" id="p_rchrInfo"            name="p_rchrInfo"               value=""/>
            <input type="hidden" id="InstCrdSetlMeth"       name="InstCrdSetlMeth"          value="<%=CrdSetlMeth %>"/>                 <!--    카드결제방식                  -->
    
            <input type="hidden" id ="OgnSumAmt"            name ="OgnSumAmt"               value="<%=OgnSumAmt %>"/>
            <input type="hidden" id ="OgnSplyAmt"           name ="OgnSplyAmt"              value="<%=OgnSplyAmt %>"/>
            <input type="hidden" id ="OgnVatAmt"            name ="OgnVatAmt"               value="<%=OgnVatAmt %>"/>

            <input type="hidden" id="ExclsVatAmtYn"         name="ExclsVatAmtYn"            value="N" /> <!--  부가세 제외여부 -->
            
            
    <!-- // 비목등록내역 상세내용 표 end// -->
    <!-- 증빙구분 상세내용 표 start -->
    <div class="pop_wh b20">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="증빙구분 상세내용 표" class="tbl_type02">
        <caption>
        증빙구분 상세내용 표
        </caption>
        <colgroup>
        <col width="20%" />
        <col width="80%" />
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">증빙구분</th>
            <td class="ll"><%=ComboUtil.getComboBox("RND134", "evma_gb", "", "disabled onchange='SplrInfoDisplay();'", BzExpExctnEvdcDv, ComboUtil.OPT_NONE) %></td>
          </tr>
          </tbody>          
      </table>
    </div>
    <!-- //증빙구분 상세내용 표end// -->
    <h3>비목등록정보</h3>
    <div class="b05 ar">
        
      <a href="#dummy" onclick="uf_frmNewWinNs(document.frm, '/pop/T01_12_00.jsp', 'GUIDE_LINE', '800', '850');"><img src="/bt/bt_guide2.gif" alt="증빙 Guideline"/></a>
      <a href="#dummy" onclick="fnAddRow();"><img src="/bt/bt_plus.gif" alt="추가하기"/></a>
      <a href="#dummy" onclick="fnRemove();calc_amtSet();"><img src="/bt/bt_minus.gif" alt="빼기"/></a>
    </div>
    <!-- 품목테이블 -->
    <div>
 <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="품목 설정" class="tbl_type08" id="ItxpList">
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
              <col width="10%" class="dycell"/>
              </colgroup>
              <thead>
                <tr>
                  <th scope="col"><label for="chck">선택</label></th>
                  <th scope="col">세목</th>
                  <th scope="col">세세목</th>
                  <th scope="col"><label for="part">품목</label></th>
                  <th scope="col"><label for="usemoney">사용금액</label></th>
                  <th scope="col"><label for="suppmoney">공급금액</label></th>
                  <th scope="col"><label for="vat">부가세</label></th>
                  <th scope="col">증빙<br />서류</th>
                  <th scope="col" style="white-space: nowrap;">인건비<br />내역</th>
                  <th scope="col" class="dycell">사업비<br />출처</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="ac"><input type="checkbox" name="ItxpChk" id="ItxpChk_0" value="0" /></td>
                  <td class="ac">
                    <select title="세목" name="SelDtlsItxpCd" id="SelDtlsItxpCd_0" onchange="SelDtlsItxpCdOnChange(this);" style="width:98%">
                    <option value="">선택</option>
                    </select>
                  </td>
                  <td class="ac">
                    <select title="세세목" name="SelSubDtlsItxpCd" id="SelSubDtlsItxpCd_0" style="width:98%" onchange="SelDtlsItxpCdOnChange2(this);" >                            
                    <option value="">선택</option>
                    </select>
                  </td>
                  <td class="ac">
                    <input type="hidden" name="EtcEvdcExcCd" id="EtcEvdcExcCd_0" value="" />
                    <input type="hidden" name="EtcEvdcExcNo" id="EtcEvdcExcNo_0" value="" />
                    <div class="posabs etcimpex" id="etcimpex_0" onclick="uf_etcImplExc(this)"><a href="#dummy"><img src="/bt/bt_etcimpex.gif" /></a></div>
                  <input type="text" name="ItxpItem" id="ItxpItem_0" value="" maxlength="100" size="20" title="품목" class="inputl inputedit" style="width:90px"/></td>
                  <td class="ac"><input type="text" name="ItxpUseAmt"  id="ItxpUseAmt_0" value="0"   size="17" readonly maxlength="15" title="사용금액" class="inputl currency" style="width:72px;background-color:#d2d2d2;"  onfocus="fnNextFocus(this,'ItxpSplyAmt')" /></td>
                  <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0"   onkeyup="calc_amtSet(this, false);" onblur="calc_amtSet(this, false);chk_amtSet(this);" value="0"   size="17" maxlength="15"  title="공급금액" class="inputl currency inputedit" style="width:72px"/></td>
                  <td class="ac"><input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0" onkeyup="calc_amtSet(this, false);" onblur="calc_amtSet(this, false);chk_amtSet(this);" value="0"   size="17" maxlength="15" title="부가세" class="inputl currency inputedit" style="width:65px"/></td>
                  <td class="ac"><span id="ItxpFileEvdcVal_0" style="display:none;"></span><a href="#dummy" class="itxpFileEvdcVal" ><span id="ItxpFileEvdc_0" onclick="fnFileEvdc(this);"><img src="/bt/bt_nonregist.gif" alt="미등록"/></span></a>
                  
                            <input type="hidden" name="EvdcDcmtCmadId"      id="EvdcDcmtCmadId_0"       value="" />
                            <input type="hidden" name="ExtEdmsDocId"        id="ExtEdmsDocId_0"     value="" />
                  
                            <input type="hidden" name="EdmsDocId"       id="EdmsDocId_0"        value="" /> <!-- 생성된EDMS_dockey -->
                            <input type="hidden" name="FileNm"              id="FileNm_0"               value="" /> <!-- 리턴결과값(등록파일명) -->
                            <input type="hidden" name="file_Cnt"            id="file_Cnt_0"         value="" /> <!-- 리턴결과값(등록파일갯수) -->
                  </td>
                  <td class="ac"><div style="width:34px"><span id="ItxpAdtnInfoVal_0" style="display:none;"></span><a href="#dummy" class="ItxpAdtnInfo" ><span id="ItxpAdtnInfo_0" onclick="fnAdtnInfo(this);"><img src="/bt/bt_nonregist.gif" alt="미등록"/></span></a>
                            <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- 참여연구원정보 -->
                            <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- 참여연구원총금액 -->
                            <!-- 2012.06.15 : 이기영 - 상시점검 관련 추가 -->
                            <input type="hidden" id="BUITID_0"          name="BUIT_ID"          value=""/>
                            
                            <input type="hidden" id="USEREGDT_0"        name="USE_REG_DT"       value=""/>
                            <input type="hidden" id="USEREGTM_0"        name="USE_REG_TM"       value=""/>
                            <input type="hidden" id="USEREGSEQ_0"       name="USE_REG_SN"           value=""/>
                            <input type="hidden" id="LSTISPTST_0"       name="LST_ISPT_ST"              value=""/>
                            <input type="hidden" id="LSTISPTRSLTSN_0"       name="LST_ISPT_RSLT_SN"             value=""/>
                            <input type="hidden" id="LSTISPTAFTHUPDYN_0"    name="LST_ISPT_AFTH_UPD_YN"     value=""/>
                            <!-- 2012.06.15 : 이기영 - 상시점검 관련 추가 -->
                            </div>
                  </td>
                  <td class="ac dycell">
                  <select title="지방비구분" name="ShrSorcSn" id="SelShrSorcSn_0" style="width:60px;">
                    <option value="">미사용</option>
                  </select>
                  </td>
                </tr>
                </tbody>
               <tfoot>
                <tr>
                  <td colspan="2" class="sum1">공급금액 <span id="evdc_splyAmtTxt"><%=FormatUtil.getMoneyForm(Evdc_SplyAmt) %></span></td>
                  <td class="sum1">부가세액 <span id="evdc_vatAmtTxt"><%=FormatUtil.getMoneyForm(Evdc_VatAmt) %></span></td>
                  <td class="sum1">비목합계</td>
                  <td class="sum2"><span id="tot_TrnsAmt">0</span></td>
                  <td class="sum2"><span id="tot_splyAmt">0</span></td>
                  <td class="sum2"><span id="tot_vatAmt">0</span></td>
                  <td class="sum1"></td>
                  <td class="sum1"></td>
                  <td class="sum1 dycell"></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr" style="display:none;">
                  <td colspan="2" class="sum1">공급금액차액 사유</td>
                  <td colspan="8"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn" class="inputl" style="width:98%" value="" /></td>
                </tr>               
              </tfoot>
            </table>
    </div>
    <!-- //품목테이블 end// -->
    
    <!-- 2013-09-13 서성진 수정/강지은 팀장 요청 해당 알림 제거 -->
    <!-- <div class="guide_bu">비영리기관의 경우 간접비 집행시 증빙서류없이 등록가능합니다.</div> -->
    
    <div class="t10"></div>
    <div id="divTranInfo">   <!-- 거래처 정보 Div 시작  -->
    <input type="hidden" name="SplrAuth" id="SplrAuth" value="1" /><!-- 수정모드에서는 사업자번호확인이 된상태 -->
    <h3>거래처정보</h3>
    <div class="fr" style="display:none;"><input type="checkbox" value="1" name="etc_SplrPrsn" id="etc_SplrPrsn_0" onclick="uf_tglSplrPrsn(this)" disabled="disabled"  /><label for="etc_SplrPrsn_0">개인거래</label></div>
    <div class="t05 b20 pop_wh cb">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="거래처정보 상세내용 표" class="tbl_type02">
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
            <th scope="row">회사명</th>
            <td><span id="d_SplrCoNm">(주) A 가맹점</span></td>
            <th scope="row">사업자등록번호</th>
            <td class="ll"><span id="d_SplrBzRegNo">222-22-222222</span>
            <input type="hidden" name="SplrBzRegNo" id="SplrBzRegNo" value="" />
            </td>
          </tr>
          <tr>
            <th scope="row">업태</th>
            <td><span id="d_SplrTpopNm">연구</span></td>
            <th scope="row">업종</th>
            <td class="ll"><span id="d_SplrTpbzNm">개발</span></td>
          </tr>
          <tr>
            <th scope="row">사업자주소</th>
            <td><span id="d_SplrAdr">서울특별시 중구 태평로1가 31</span></td>
            <th scope="row">대표자명</th>
            <td class="ll"><span id="d_SplrReprNm">가대표</span></td>
          </tr>
        </tbody>
      </table>
    </div>
    </div>

        <div id="SqbnSplrExctnRsn_tbl_0" style="display:none;">
            <input type="hidden" name="SqbnSplrExctnRsnYn" id="SqbnSplrExctnRsnYn_0" value="N"/>
            <input type="hidden" name="RcvNmChkDv" id="RcvNmChkDv_0" value="" />
            <h3>휴폐업 집행사유</h3>
            <div class="t05 b10">
            <table width="672" border="0" cellspacing="0" cellpadding="0" summary="휴폐업거래처 집행사유" class="tbl_type02">
            <caption>휴폐업 집행사유</caption>
              <colgroup>
                <col width="18%" />
                <col width="82%"/>
              <tbody>
                <tr>
                  <th scope="row"><label for="SqbnSplrExctnRsn_0">집행사유</label></th>
                  <td class="ll"><input type="text" name="SqbnSplrExctnRsn" id="SqbnSplrExctnRsn_0" value="" class="inputl" style="width:455px;ime-mode:inactive;" colname="휴폐업집행사유" maxlength="200"/></td>
                </tr>
              </tbody>
            </table>
          </div>
          </div>
          
    <div id="divTranInfoItem"  >     <!-- 계좌이체요청항목 Div 시작  -->
    <h3>계좌이체 요청항목</h3>
    <div class="ar">
      <a href="#" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="자계좌이체허용기준"/></a>
    </div>
    <div class="t05 b10 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="계좌이체 요청항목 상세내용 표" class="tbl_type02">
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
                <tr id="ExctnStgDv_tr" style="display:;">
                  <th scope="row"><span class="txt_orb">*</span> 집행구분</th>
                  <td colspan="3" class="ll">
                    <span id="idExctnStgDv_td1" style="display:block;">
                    <input type="radio" id="ExctnStgDv1_0" name="ExctnStgDv" value="1" onclick="exctn_ExctnStgDv_v2(this.value,'2', '020','A', '10000000000', '','','','Y');" checked="checked"><label for="ExctnStgDv1">타계좌이체(연구비계좌경유이체)</label> <span class="l10"></span>
                    <input type="radio" id="ExctnStgDv2_0" name="ExctnStgDv" value="2" onclick="exctn_ExctnStgDv_v2(this.value,'2','020','B', '888888888880','B','020','888888888880','Y');"><label for="ExctnStgDv2">자계좌이체(연구비계좌이체)</label> 
                    <select name='kind_TrnsRchAcc'  id='kind_TrnsRchAcc'  class='' id='kind_TrnsRchAcc' style='width:135px;'  ><option value='B03001' >허용비목</option><option value='B03002' >외자구매</option><option value='B03003' >지로직접납부</option><option value='B03004' >연구비잔액부족</option><option value='B03005' >지체보상금제외이체</option><option value='B03006' >협약전사용금액</option><option value='B03007' selected>자계좌이체승인기관</option><option value='B03009' >연구지원전문가 인건비(간접비)</option></select>
                    </span>
                    <span id="idExctnStgDv_td2" style="display:none;"></span>
                  </td>
                </tr>
                <tr>
                  <th scope="row"><span class="txt_orb">*</span> <label for="bank">입금계좌</label></th>
                  <td><select name='RcvBnkCd'  id='RcvBnkCd'  class='' onchange='uf_OwacNmRst();' style='width:65px;' ><option value=''>선택</option><option value='020' >A 은행</option><option value='003' >B 은행</option><option value='004' >C 은행</option></select>
                    <div id="idRcvBnkNm" style="float:left;padding-top:4px;display:none;">A은행&nbsp;10000000000</div>
                    <a id="idMyAcctNo" href="#dummy" onclick="uf_popup_my_acct();" style="float:right;display:none"><img src="/bt/bt_myacctno.gif" alt="자계좌이체용계좌"/></a>
                    
                    <input type="text" title="입금계좌" class="inputl" style="width:90px" onchange="uf_OwacNmRst();" id="RcvAcctNo" name="RcvAcctNo" value="10000000000" title="" notnull colname="입금계좌(계좌번호)" datatype="N" maxlength="20" enc="on" onfocus="chkEnc();" />
                    <a id="idFvrtAcct" href="javascript:uf_popup_fvrt_acct();"><img src="/bt/bt_acct01.gif" alt="자주쓰는계좌"/></a>
                    
                    
                  </td>
                  <th scope="row"><span class="txt_orb">*</span> <label for="account">예금주</label></th>
                  <td class="ll"><input type="text" name="OwacNm" id="OwacNm" title="예금주" class="inputl" style="width:100px;background-color:#d2d2d2;" readonly="readonly" />
                    <a href="#dummy" id="idowacBtn" onclick="uf_tran_owac();"><img src="/bt/bt_acct02.gif" alt="예금주조회"/></a>
                  </td>
                </tr>
                <tr>
                  <th scope="row"><span class="txt_orb DynReqStar">*</span> <label for="WdrwPsbkPrtCtt" style="font-size:8pt">연구비통장표시내용</label></th>
                  <td><input type="text" name="WdrwPsbkPrtCtt" id="WdrwPsbkPrtCtt" class="inputl" style="width:132px" value="RCMS 실습" title="연구비통장표시내용" notnull colname="연구비통장표시내용" maxlength="12" /></td>
                  <th scope="row"><span class="txt_orb DynReqStar">*</span> <label for="RcvPsbkPrtCtt" style="font-size:8pt">거래처통장표시내용</label></th>
                  <td class="ll"><input type="text" name="RcvPsbkPrtCtt" id="RcvPsbkPrtCtt" class="inputl" style="width:100px" value="RCMS 실습" title="거래처통장표시내용" notnull colname="거래처통장표시내용" maxlength="12"/></td>
                </tr>
                <tr>
                  <th scope="row"><label for="AchvInstIndv1Cd">기관용개별코드A</label></th>
                  <td><input type="text" name="AchvInstIndv1Cd" id="AchvInstIndv1Cd" class="inputl" style="width:132px;ime-mode:disabled;" value="TEST0004" title="기관용개별코드A" colname="기관용개별코드A" maxlength="20"//></td>
                  <th scope="row"><label for="codeb">기관용개별코드B</label></th>
                  <td class="ll"><input type="text" name="AchvInstIndv2Cd" id="AchvInstIndv2Cd" class="inputl" style="width:100px;ime-mode:disabled;" value="" title="기관용개별코드B" colname="기관용개별코드B" maxlength="20"//></td>
                </tr>
                <tr>
                  <th scope="row">이체금액</th>
                  <td><span id="txt_trnsAmt">22</span></td>
                  <th scope="row"><span class="txt_orb">*</span> <label for="tel">전화번호</label></th>
                  <td class="ll"><input type="text" name="TelNo" id="TelNo" value="222" title="전화번호" class="inputl" style="width:100px" notnull colname="전화번호" datatype="N" maxlength="15" mask="-" /></td>
                </tr>
                <tr>
                  <th scope="row">공급가액</th>
                  <td><span id="txt_splyAmt">11</span></td>
                  <th scope="row">부가가치세액</th>
                  <td class="ll"><span id="txt_vatAmt">11</span></td>
                </tr>
                <tr>
                  <th scope="row"><span class="txt_orb">*</span> <label for="memo">지급용도</label></th>
                  <td colspan="3" class="ll"><input type="text" name="PaymUsag" id="PaymUsag" value="222" class="inputl" style="width:455px;ime-mode:inactive;" notnull colname="지급용도" maxlength="100"/></td>
                </tr>
              </tbody>
            </table>
    </div>
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
        <p class="pop_point_title"  id="divMyAcctTransAlwn" style="display:none;">실시간통합연구비관리시스템(RCMS) 적용에 대한 유예 신청 기업이므로 자계좌이체(연구비계좌이체)만 가능함</p>
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
window.onload = function(){
    
    $('.currency').ForceNumericOnly();
    uf_crdSetlMeth('2');        //카드결제방식에따른 화면구성변경
    uf_onLoadPage();
        
};

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

</body>
</html> 
