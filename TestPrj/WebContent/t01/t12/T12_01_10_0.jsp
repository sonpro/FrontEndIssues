<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_01_10_0.jsp
 *   Description        : 사용등록 > 전자세금계산서 조회
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.19                     예기해             
 *
 *  @author     예기해
 *  @Since      2013.12.19
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
    String RegTyp               = SessionUtil.getRequestValue(request, "RegTyp");   //등록방식(1:비목우선,0 or empty:증빙우선)
    String RowIdx               = SessionUtil.getRequestValue(request, "pRowIdx");  //비목우선 > row index
%>


<title>전자세금계산서 내역 조회 &gt; RCMS 실시간통합연구비관리시스템 b-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">전자세금계산서 내역 조회</p>
        </div>
        <!-- //head title// --> 
    </div>




<script type="text/javascript">

/******************************************************************
 * uf_search    승인번호로 세금계산서조회
 * @param   
 * @return
******************************************************************/
var isSearch = false;
function uf_search(){
    var frm = document.frm;
    
    if(null==frm.TmpExecTxblApvNo.value || ""==frm.TmpExecTxblApvNo.value){
        alert("전자세금계산서 승인번호를 입력하세요.");
        return;
    }
    if( isSubmit() ) return;    // 이중처리

    ExecuteDetail();
}
/******************************************************************
 * uf_pop_elec_txbl_inq     세금계산서 발행목록조회 팝업창
 * @param   
 * @return
******************************************************************/
function uf_pop_elec_txbl_inq(){
	alert('실습환경에서는 지원하지 않는 기능입니다.');
	return;
    
}
/******************************************************************
 * uf_openerTrns    메인창에 전자세금계산서정보 전송
 * @param   
 * @return
******************************************************************/
function uf_openerTrns(){
	if(!isSearch){
		alert('조회된 내역이 없습니다.');
		return false;
	}
	
    var frm             = document.frm;
        
    <% if( "1".equals(RegTyp) ){%>
        uf_openerTrns1(frm, <%=RowIdx%>); //비목우선
    <% }else{ %>
        uf_openerTrns0(frm); //증빙우선
    <% } %>        
    
    
}
//증빙우선
function uf_openerTrns0(frm){

    var i, idx;
    var arr_T_UseDt     =   "";
    var arr_T_MitmNm    =   "";
    var arr_T_MitmUprc  =   "";
    var arr_T_MitmQnt   =   "";
    var arr_T_MitmNrm   =   "";
    var arr_T_SplyAmt   =   "";
    var arr_T_VatAmt    =   "";
    var arr_T_Rmk       =   ""; 

    

    opener.document.getElementById("Evdc_Dv"            ).value     = "T";                                                          //증빙구분
    opener.document.getElementById("T_SplpBzRegNo"      ).value     = "111-11-11111";      //공급받는자사업자등록번호  
    opener.document.getElementById("T_SplpSucoEnplcNo"  ).value     = "";      //공급받는자자회사사업장번호
    opener.document.getElementById("T_SplpCoNm"         ).value     = "(주) RCMS";      //공급받는자회사명          
    opener.document.getElementById("T_SplpTpbzNm"       ).value     = "개발";      //공급받는자업종명          
    opener.document.getElementById("T_SplpTpopNm"       ).value     = "연구";      //공급받는자업태명          
    opener.document.getElementById("T_SplpReprNm"       ).value     = "산기평";      //공급받는자대표자명     
    opener.document.getElementById("T_SplpAdr"          ).value     = "대전광역시 유성구 화암동 58-4";      //공급받는자주소            
    opener.document.getElementById("T_SplrBzRegNo"      ).value     = "100-10-10000";      //공급자사업자등록번호      
    opener.document.getElementById("T_SplrChidCoEnplcNo").value     = "";      //공급자자회사사업장번호    
    opener.document.getElementById("T_SplrCoNm"         ).value     = "(주) 가 업체";      //공급자회사명                
    opener.document.getElementById("T_SplrTpbzNm"       ).value     = "개발";      //공급자업종명                
    opener.document.getElementById("T_SplrTpopNm"       ).value     = "연구";      //공급자업태명              
    opener.document.getElementById("T_SplrReprNm"       ).value     = "가사장";      //공급자대표자명           
    opener.document.getElementById("T_SplrAdr"          ).value     = "인천광역시 남동구 구월동 1138";      //공급자주소
    opener.document.getElementById("Evdc_SplyAmt"       ).value     = "1000";;         //공급금액
    
    // 2012.01.25 태동현
    // 부가세를 제외한 공급가액으로도 등록 가능하도록 수정 Start
    opener.document.getElementById("T_SplyAmt"          ).value     = "1000";         //전자세금계산서수신원장 공급금액
    opener.document.getElementById("T_VatAmt"           ).value     = "100";         //전자세금계산서수신원장 부가가치세액
    opener.document.getElementById("T_SumAmt"           ).value     = "1100";      //전자세금계산서수신원장 합계금액
    opener.document.getElementById("T_ExclsVatAmtYn"    ).value     = frm.ExclsVatAmtYn.checked ? "Y" : "N";                        //부가가치세액 제외 플래그

    if(frm.ExclsVatAmtYn.checked == true){
        opener.document.getElementById("Evdc_VatAmt"    ).value     = "0";                                                          //부가가치세액
        opener.document.getElementById("Evdc_SumAmt"    ).value     = "1000";         //합계금액(공급가액만)
    }else{
        opener.document.getElementById("Evdc_VatAmt"    ).value     = "100";         //부가가치세액
        opener.document.getElementById("Evdc_SumAmt"    ).value     = "1100";      //합계금액
    }
    // 부가세를 제외한 공급가액으로도 등록 가능하도록 수정 End
    
    opener.document.getElementById("T_Rmk"              ).value     = "";      //비고
    opener.document.getElementById("T_CashAmt"          ).value     = "0";     //현금금액
    opener.document.getElementById("T_ChkAmt"           ).value     = "0";      //수표금액                  
    opener.document.getElementById("T_DrftAmt"          ).value     = "0";      //어음금액                  
    opener.document.getElementById("T_CredRcblAmt"      ).value     = "1100";      //외상미수금액                
    opener.document.getElementById("T_WrtgDt"           ).value     = "20140120";      //작성일자                  
    opener.document.getElementById("T_SplpEmalAdr1"     ).value     = "test@keit.re.kr";      //공급받는자이메일주소      
    opener.document.getElementById("T_SplpEmalAdr2"     ).value     = "";      //공급받는자이메일주소      
    opener.document.getElementById("T_SplrEmalAdr"      ).value     = "gaBusiness@business.net";      //공급자이메일                
    opener.document.getElementById("T_CorcRsn"          ).value     = "";      //수정사유                  
    opener.document.getElementById("T_ReptNcnt"         ).value     = 1;          //반복건수
    
    for(i = 0; i < 1; i++){
        arr_T_UseDt     += "20140120"+"|";       //사용일자
        arr_T_MitmNm    += "장비구입비"+"|";        //품목
        arr_T_MitmQnt   += ""+"|";         //수량
        arr_T_MitmUprc  += ""+"|";         //단가
        arr_T_SplyAmt   += "1000"+"|";         //공급금액
        arr_T_VatAmt    += "100"+"|";         //부가가치세액
        arr_T_MitmNrm   += ""+"|";         //규격
        arr_T_Rmk       += ""+"|";       //비고
    }
    
    opener.document.getElementById("T_strUseDt"         ).value     = arr_T_UseDt;      //사용일자     
    opener.document.getElementById("T_strMitmNm"            ).value     = arr_T_MitmNm;     //품목       
    opener.document.getElementById("T_strMitmUprc"          ).value     = arr_T_MitmUprc;       //단가       
    opener.document.getElementById("T_strMitmQnt"           ).value     = arr_T_MitmQnt;        //수량       
    opener.document.getElementById("T_strSplyAmt"       ).value     = arr_T_SplyAmt;    //공급금액       
    opener.document.getElementById("T_strVatAmt"        ).value     = arr_T_VatAmt;     //부가가치세액     
    opener.document.getElementById("T_strMitmNrm"           ).value     = arr_T_MitmNrm;        //규격   
    opener.document.getElementById("T_strRmk"           ).value     = arr_T_Rmk;        //비고       
    //--------------------------------
    //  거래처정보 텍스트세팅
    //--------------------------------
    
    //opener.document.getElementById("d_SplrReprNm"           ).innerHTML =   "(주) 가 업체"+"("+"가사장"+")";
    opener.document.getElementById("d_SplrReprNm"           ).innerHTML =   "(주) 가 업체";
    opener.document.getElementById("d_SplrBzRegNo"          ).innerHTML =   frmRegNoValue("1234567890");
    opener.document.getElementById("d_SplrTpopNm"           ).innerHTML =   "연구";
    opener.document.getElementById("d_SplrTpbzNm"           ).innerHTML =   "개발";
    opener.document.getElementById("d_SplrAdr"              ).innerHTML =   "인천광역시 남동구 구월동 1138";
    
    //--------------------------------
    //  계좌이체정보 데이터세팅
    //--------------------------------
    opener.document.getElementById("WdrwPsbkPrtCtt").value      =   "(주) 가 업체";        //공급자회사명(출금통장인쇄내용)
    opener.document.getElementById("RcvPsbkPrtCtt").value       =   "(주) RCMS";        //공급받는자회사명(입금통장인쇄내용)
    
    // 2012.01.25 태동현
    // 부가세를 제외한 공급가액으로도 등록 가능하도록 수정 Start
    if(frm.ExclsVatAmtYn.checked == true){
        opener.set_AmtInfo("T",document.getElementById("TmpExecTxblApvNo").value,"1000","0");
    }else{
        opener.set_AmtInfo("T",document.getElementById("TmpExecTxblApvNo").value,"1000","100");    
    }
    // 부가세를 제외한 공급가액으로도 등록 가능하도록 수정 End

    
    //Layer Display On
    opener.SplrInfoDisplay("Y","T");
    
    window.close();
}


function fnAppendChild(ridx, nm, val){
    
    var inputNode = opener.document.createElement('input');
    inputNode.setAttribute('type','hidden');
    inputNode.setAttribute('id',nm+'_'+ridx);
    inputNode.setAttribute('name',nm);
    inputNode.setAttribute('value',val);

    opener.document.getElementById('frmElmtArea_'+ridx).appendChild(inputNode);
}
//비목우선
function uf_openerTrns1(frm, row_idx){
    
    var i, idx;
    var arr_T_UseDt     =   "";
    var arr_T_MitmNm    =   "";
    var arr_T_MitmUprc  =   "";
    var arr_T_MitmQnt   =   "";
    var arr_T_MitmNrm   =   "";
    var arr_T_SplyAmt   =   "";
    var arr_T_VatAmt    =   "";
    var arr_T_Rmk       =   "";
        

    
    fnAppendChild(row_idx,"T_ExecTxblApvNo"     , document.getElementById("TmpExecTxblApvNo").value     );          //전자세금계산서승인번호
    fnAppendChild(row_idx,"T_SplpBzRegNo"       , "111-11-11111");     //공급받는자사업자등록번호  
    fnAppendChild(row_idx,"T_SplpSucoEnplcNo"   , "");     //공급받는자자회사사업장번호
    fnAppendChild(row_idx,"T_SplpCoNm"          , "(주) RCMS");     //공급받는자회사명          
    fnAppendChild(row_idx,"T_SplpTpbzNm"        , "개발");     //공급받는자업종명          
    fnAppendChild(row_idx,"T_SplpTpopNm"        , "연구");     //공급받는자업태명          
    fnAppendChild(row_idx,"T_SplpReprNm"        , "산기평");     //공급받는자대표자명     
    fnAppendChild(row_idx,"T_SplpAdr"           , "대전광역시 유성구 화암동 58-4");     //공급받는자주소            
    fnAppendChild(row_idx,"T_SplrBzRegNo"       , "100-10-10000");     //공급자사업자등록번호      
    fnAppendChild(row_idx,"T_SplrChidCoEnplcNo" , "");     //공급자자회사사업장번호    
    fnAppendChild(row_idx,"T_SplrCoNm"          , "(주) 가 업체");     //공급자회사명                
    fnAppendChild(row_idx,"T_SplrTpbzNm"        , "개발");     //공급자업종명                
    fnAppendChild(row_idx,"T_SplrTpopNm"        , "연구");     //공급자업태명              
    fnAppendChild(row_idx,"T_SplrReprNm"        , "가사장");     //공급자대표자명           
    fnAppendChild(row_idx,"T_SplrAdr"           , "인천광역시 남동구 구월동 1138");     //공급자주소
    
    // 2012.01.25 태동현
    // 부가세를 제외한 공급가액으로도 등록 가능하도록 수정 Start
    fnAppendChild(row_idx,"T_SplyAmt"           , "1000");          //전자세금계산서수신원장 공급금액
    fnAppendChild(row_idx,"T_VatAmt"            , "100");          //전자세금계산서수신원장 부가가치세액
    fnAppendChild(row_idx,"T_SumAmt"            , "1100");         //전자세금계산서수신원장 합계금액
    fnAppendChild(row_idx,"T_ExclsVatAmtYn"     , frm.ExclsVatAmtYn.checked ? "Y" : "N"                 );          //부가가치세액 제외 플래그

    fnAppendChild(row_idx,"T_Evdc_SplyAmt"      , "1000");          //공급금액
    if(frm.ExclsVatAmtYn.checked == true){
        fnAppendChild(row_idx,"T_Evdc_VatAmt"   , "0");                                                             //부가가치세액
        fnAppendChild(row_idx,"T_Evdc_SumAmt"   , "1000");          //합계금액(공급가액만)
    }else{
        fnAppendChild(row_idx,"T_Evdc_VatAmt"   , "100"  );          //부가가치세액
        fnAppendChild(row_idx,"T_Evdc_SumAmt"   , "1100");     //합계금액
    }
    // 부가세를 제외한 공급가액으로도 등록 가능하도록 수정 End
    
    fnAppendChild(row_idx,"T_Rmk"               , "");     //비고
    fnAppendChild(row_idx,"T_CashAmt"           , "0");     //현금금액
    fnAppendChild(row_idx,"T_ChkAmt"            , "0");     //수표금액                  
    fnAppendChild(row_idx,"T_DrftAmt"           , "0");     //어음금액                  
    fnAppendChild(row_idx,"T_CredRcblAmt"       , "1100");     //외상미수금액                
    fnAppendChild(row_idx,"T_WrtgDt"            , "20140120");     //작성일자                  
    fnAppendChild(row_idx,"T_SplpEmalAdr1"      , "test@keit.re.kr");     //공급받는자이메일주소      
    fnAppendChild(row_idx,"T_SplpEmalAdr2"      , "");     //공급받는자이메일주소      
    fnAppendChild(row_idx,"T_SplrEmalAdr"       , "gaBusiness@business.net");     //공급자이메일                
    fnAppendChild(row_idx,"T_CorcRsn"           , "");     //수정사유                  
    fnAppendChild(row_idx,"T_ReptNcnt"          , 1);         //반복건수
    
    for(i = 0; i < 1; i++){
        arr_T_UseDt     += rplc_emtpty2space("20140120")+"|";       //사용일자
        arr_T_MitmNm    += rplc_emtpty2space("장비구입비")+"|";        //품목
        arr_T_MitmQnt   += rplc_emtpty2zero("")+"|";         //수량
        arr_T_MitmUprc  += rplc_emtpty2zero("")+"|";         //단가
        arr_T_SplyAmt   += rplc_emtpty2zero("1000")+"|";         //공급금액
        arr_T_VatAmt    += rplc_emtpty2zero("100")+"|";         //부가가치세액
        arr_T_MitmNrm   += rplc_emtpty2space("")+"|";         //규격
        arr_T_Rmk       += rplc_emtpty2space("")+"|";       //비고
    }
    
    fnAppendChild(row_idx,"T_strUseDt"          , arr_T_UseDt   );      //사용일자     
    fnAppendChild(row_idx,"T_strMitmNm"         , arr_T_MitmNm  );      //품목       
    fnAppendChild(row_idx,"T_strMitmUprc"       , arr_T_MitmUprc    );      //단가       
    fnAppendChild(row_idx,"T_strMitmQnt"        , arr_T_MitmQnt     );      //수량       
    fnAppendChild(row_idx,"T_strSplyAmt"        , arr_T_SplyAmt );      //공급금액       
    fnAppendChild(row_idx,"T_strVatAmt"         , arr_T_VatAmt  );      //부가가치세액     
    fnAppendChild(row_idx,"T_strMitmNrm"        , arr_T_MitmNrm     );      //규격   
    fnAppendChild(row_idx,"T_strRmk"            , arr_T_Rmk     );      //비고       
    //--------------------------------
    //  거래처정보 텍스트세팅
    //--------------------------------
    
    //증빙세팅
    opener.document.getElementById('EvmaGb_'        + row_idx ).value = "T";
    //선택한 전자세금계산서정보는 변경이 안되도록 disabled
    opener.document.getElementById('EvmaGb_'        + row_idx ).setAttribute('disabled',true);

    //금액세팅
    opener.document.getElementById("ItxpSplyAmt_"   + row_idx ).value       = "1000";     // 공급가액(봉사료, 원화환가료, 수수료포함)
    if(frm.ExclsVatAmtYn.checked == true){
        opener.document.getElementById("ItxpUseAmt_"    + row_idx ).value       = "1000";     // 사용금액
        opener.document.getElementById("ItxpVatAmt_"    + row_idx ).value       = "0";  // 부가가치세액
    }else{
        opener.document.getElementById("ItxpUseAmt_"    + row_idx ).value       = parseInt("1000",10)+parseInt("100",10);          // 사용금액
        opener.document.getElementById("ItxpVatAmt_"    + row_idx ).value       = "100";     // 부가가치세액
    }
    
    
    opener.document.getElementById("d_SplrReprNm_"  + row_idx   ).innerHTML =   "(주) 가 업체"+"("+"가사장"+")";
    opener.document.getElementById("d_SplrBzRegNo_" + row_idx   ).innerHTML =   frmRegNoValue("1234567890");
    opener.document.getElementById("d_SplrTpopNm_"  + row_idx   ).innerHTML =   "연구";
    opener.document.getElementById("d_SplrTpbzNm_"  + row_idx   ).innerHTML =   "개발";
    opener.document.getElementById("d_SplrAdr_"     + row_idx   ).innerHTML =   "인천광역시 남동구 구월동 1138";
    
    //--------------------------------
    //  계좌이체정보 데이터세팅
    //--------------------------------
    opener.document.getElementById("WdrwPsbkPrtCtt_"+row_idx).value     =   "(주) 가 업체";        //공급자회사명(출금통장인쇄내용)
    opener.document.getElementById("RcvPsbkPrtCtt_" +row_idx).value     =   "(주) RCMS";        //공급받는자회사명(입금통장인쇄내용)
    
    opener.document.getElementById("txt_trnsAmt_"   + row_idx ).innerHTML   =   opener.document.getElementById("ItxpUseAmt_"    + row_idx ).value
    opener.document.getElementById("txt_splyAmt_"   + row_idx ).innerHTML   =   opener.document.getElementById("ItxpSplyAmt_"   + row_idx ).value
    opener.document.getElementById("txt_vatAmt_"    + row_idx ).innerHTML   =   opener.document.getElementById("ItxpVatAmt_"    + row_idx ).value
    
    opener.calc_amtSet2(this,true);
    //Layer Display On
    opener.SplrInfoDisplay("Y","T","",row_idx);
    
    var frm = opener.document.frm;
    var frm_key =   opener.document.rtr_str_form;
    if( typeof frm_key == 'undefined' ) frm_key = frm;
    
    opener.setSplrPrsn(frm, frm_key, row_idx);
    
    window.close();
}

function rplc_emtpty2space(str){
    return str==""?" ":str;
}
function rplc_emtpty2zero(str){
    return str==""?"0":str;
}

//새로고침(F5) 방지
function noEvent(){
   if(event.keyCode == 116) {
      event.keyCode = 2;
      return false;
   }else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82)) {
      return false;
   }
}
document.onkeydown = noEvent;

window.focus();
function ExecuteDetail(){
    var eSERO = document.eSERO;
    var frm = document.frm;
    var ExecTxblApvNo = frm.TmpExecTxblApvNo.value.replace(/-/gi,'');

    if(ExecTxblApvNo==""){
        alert("승인번호를 입력해주십시오.");
        return;
    }else{
        frm.ExecTxblApvNo.value = ExecTxblApvNo.substring(0,8)+"-"+ExecTxblApvNo.substring(8,16)+"-"+ExecTxblApvNo.substring(16);
    }
    
    uf_proce_display_on();  //로딩바
    setTimeout(function(){
        try{   
	            document.body.style.cursor = "wait";
	            GetDetailValue();
	            document.body.style.cursor = "auto";
	        }finally{
	            reset_submit();
	        }
        
        }, 1000);   // 1초후 실행 1000 = 1초s
    
}

function GetDetailValue(){  
	isSearch = true;
    ScreenClear();
    
    document.getElementById('PROV_REG_NUMBER'           ).firstChild.nodeValue = "100-10-10000";
    document.getElementById('PROV_OTHER_REGNO'          ).firstChild.nodeValue = "";
    document.getElementById('PROV_COMPANY_NM'           ).firstChild.nodeValue = "(주) 가 업체";
    document.getElementById('PROV_CEO_NAME'             ).firstChild.nodeValue = "가사장";
    document.getElementById('PROV_BUSINESS_PLACE'       ).firstChild.nodeValue = "인천광역시 남동구 구월동 1138";
    document.getElementById('PROV_BUSINESS_CATEGORY'    ).firstChild.nodeValue = "연구";
    document.getElementById('PROV_BUSINESS_TYPE'        ).firstChild.nodeValue = "개발";
    document.getElementById('PROV_EMAIL'                ).innerHTML = "gaBusiness@business.net";
    document.getElementById('RECE_REG_NUMBER'           ).firstChild.nodeValue = "111-11-11111";
    document.getElementById('RECE_OTHER_REGNO'          ).firstChild.nodeValue = "";
    document.getElementById('RECE_COMPANY_NAME'         ).firstChild.nodeValue = "(주) RCMS";
    document.getElementById('RECE_CEO_NAME'             ).firstChild.nodeValue = "산기평";
    document.getElementById('RECE_BUSINESS_PLACE'       ).firstChild.nodeValue = "대전광역시 유성구 화암동 58-4";
    document.getElementById('RECE_BUSINESS_CATEGORY'    ).firstChild.nodeValue = "연구";
    document.getElementById('RECE_BUSINESS_TYPE'        ).firstChild.nodeValue = "개발";
    document.getElementById('RECE_EMAIL1'               ).firstChild.nodeValue = "test@keit.re.kr";
    document.getElementById('RECE_EMAIL2'               ).firstChild.nodeValue = "";
    document.getElementById('DATE'                      ).firstChild.nodeValue = "2014-01-20";
    document.getElementById('PROV_AMT'                  ).firstChild.nodeValue = "1,000";
    document.getElementById('TAX_AMT'                   ).firstChild.nodeValue = "100";
    document.getElementById('EDIT_REASON'               ).firstChild.nodeValue = "";
    document.getElementById('ETC'                       ).firstChild.nodeValue = "";
    document.getElementById('TOTAL_AMT'                 ).firstChild.nodeValue = "1,100";
    document.getElementById('CASH'                      ).firstChild.nodeValue = "0";
    document.getElementById('CHECK'                     ).firstChild.nodeValue = "0";
    document.getElementById('BILL'                      ).firstChild.nodeValue = "0";
    document.getElementById('CREDIT'                    ).firstChild.nodeValue = "1,100";
    document.getElementById('RECEIPT_CLAIM_GUBUN'       ).firstChild.nodeValue = "청구";

    /* 
    document.getElementById('ITEM_TAXBILL_MONTH1'       ).innerHTML = "01";
    document.getElementById('ITEM_TAXBILL_DAY1'         ).innerHTML = "20";
    document.getElementById('ITEM_NAME1'                ).innerHTML = "장비구입비";
    document.getElementById('ITEM_STANDARD1'            ).innerHTML = "";
    document.getElementById('ITEM_QUANTITY1'            ).innerHTML = "";
    document.getElementById('ITEM_UNIT_COST1'           ).innerHTML = "";
    document.getElementById('ITEM_PROV_AMT1'            ).innerHTML = "1000";
    document.getElementById('ITEM_TAX_AMT1'             ).innerHTML = "100";
    document.getElementById('ITEM_ETC1'                 ).innerHTML = "";
     */
    var targetTable = document.all["ELEC_TXBL_ITEM"]; 
    for(var i=targetTable.rows.length-1; i>0; i--){
        targetTable.deleteRow(i);
    }
    
    for(var i=0; i<1; i++){
        var dTableTr =  new DynamicTableTr(document, document.all["ELEC_TXBL_ITEM"], 9);
        
        dTableTr.setText(0, "01");
        dTableTr.setStyle(0, ";text-align:center;");
        dTableTr.setText(1, "20");
        dTableTr.setStyle(1, "text-align:center;");
        dTableTr.setText(2, "장비구입비");
        dTableTr.setStyle(2, "text-align:center;");
        dTableTr.setText(3, "");
        dTableTr.setStyle(3, "text-align:center;");
        dTableTr.setText(4, "");
        dTableTr.setStyle(4, "padding-right:9px;text-align:right;");
        dTableTr.setText(5, "");
        dTableTr.setStyle(5, "padding-right:9px;text-align:right;");
        dTableTr.setText(6, "1,000");
        dTableTr.setStyle(6, "padding-right:9px;text-align:right;");
        dTableTr.setText(7, "100");
        dTableTr.setStyle(7, "padding-right:9px;text-align:right;");
        dTableTr.setText(8, "&nbsp;");
        
        dTableTr.addTableTr();
        
    }
    
    
}
//초기화
function ScreenClear(){
    var i, idx;
    
    document.getElementById('PROV_REG_NUMBER').innerHTML = '&nbsp;';    
    document.getElementById('PROV_OTHER_REGNO'      ).innerHTML = '&nbsp;'; 
    document.getElementById('PROV_COMPANY_NM'       ).innerHTML = '&nbsp;'; 
    document.getElementById('PROV_CEO_NAME'         ).innerHTML = '&nbsp;'; 
    document.getElementById('PROV_BUSINESS_PLACE'   ).innerHTML = '&nbsp;'; 
    document.getElementById('PROV_BUSINESS_CATEGORY').innerHTML = '&nbsp;'; 
    document.getElementById('PROV_BUSINESS_TYPE'    ).innerHTML = '&nbsp;'; 
    document.getElementById('PROV_EMAIL'            ).innerHTML = '&nbsp;'; 
    document.getElementById('RECE_REG_NUMBER'       ).innerHTML = '&nbsp;'; 
    document.getElementById('RECE_OTHER_REGNO'      ).innerHTML = '&nbsp;'; 
    document.getElementById('RECE_COMPANY_NAME'     ).innerHTML = '&nbsp;'; 
    document.getElementById('RECE_CEO_NAME'         ).innerHTML = '&nbsp;'; 
    document.getElementById('RECE_BUSINESS_PLACE'   ).innerHTML = '&nbsp;'; 
    document.getElementById('RECE_BUSINESS_CATEGORY').innerHTML = '&nbsp;'; 
    document.getElementById('RECE_BUSINESS_TYPE'    ).innerHTML = '&nbsp;'; 
    document.getElementById('RECE_EMAIL1'           ).innerHTML = '&nbsp;'; 
    document.getElementById('RECE_EMAIL2'           ).innerHTML = '&nbsp;'; 
    document.getElementById('DATE'                  ).innerHTML = '&nbsp;'; 
    document.getElementById('PROV_AMT'              ).innerHTML = '&nbsp;'; 
    document.getElementById('TAX_AMT'               ).innerHTML = '&nbsp;'; 
    document.getElementById('EDIT_REASON'           ).innerHTML = '&nbsp;'; 
    document.getElementById('ETC'                   ).innerHTML = '&nbsp;'; 
    document.getElementById('TOTAL_AMT'             ).innerHTML = '&nbsp;'; 
    document.getElementById('CASH'                  ).innerHTML = '&nbsp;'; 
    document.getElementById('CHECK'                 ).innerHTML = '&nbsp;'; 
    document.getElementById('BILL'                  ).innerHTML = '&nbsp;'; 
    document.getElementById('CREDIT'                ).innerHTML = '&nbsp;'; 
    document.getElementById('RECEIPT_CLAIM_GUBUN'   ).innerHTML = '&nbsp;';
    
    var targetTable = document.all["ELEC_TXBL_ITEM"]; 
    for(var i=targetTable.rows.length-1; i>0; i--){
        targetTable.deleteRow(i);
    }
    
    for(var i=0; i<4; i++){
        var dTableTr =  new DynamicTableTr(document, document.all["ELEC_TXBL_ITEM"], 9);
        
        dTableTr.setText(0, "");
        dTableTr.setStyle(0, ";text-align:center;");
        dTableTr.setText(1, "");
        dTableTr.setStyle(1, "text-align:center;");
        dTableTr.setText(2, "");
        dTableTr.setStyle(2, "text-align:center;");
        dTableTr.setText(3, "");
        dTableTr.setStyle(3, "text-align:center;");
        dTableTr.setText(4, "");
        dTableTr.setStyle(4, "padding-right:9px;text-align:right;");
        dTableTr.setText(5, "");
        dTableTr.setStyle(5, "padding-right:9px;text-align:right;");
        dTableTr.setText(6, "");
        dTableTr.setStyle(6, "padding-right:9px;text-align:right;");
        dTableTr.setText(7, "");
        dTableTr.setStyle(7, "padding-right:9px;text-align:right;");
        dTableTr.setText(8, "&nbsp;");
        
        dTableTr.addTableTr();
        
    }
    
}

window.onload = function init(){    self.focus();      }; 
this.focus();   

    
</script>


<div id="body">
  <!-- content start -->
  <div id="content">
<form name="frm" method="post">
    <input type="hidden" name="ExecTxblApvNo" value="" />
    <div class="t20"></div>
    <div><b>
      <label for="TmpExecTxblApvNo">승인번호:</label>
      </b>
      <input type="text" name="TmpExecTxblApvNo" id="TmpExecTxblApvNo" title="승인번호" style="width:170px;" class="inputl"  value="" datatype="AN" mask="-" />
      <a href="#dummy" onclick="uf_search();"><img src="/bt/bt_search5.gif" alt="조회"/></a>
    </div>
    
    <!-- 전자세금계산서 start -->
    <div class="t10 pop_wh">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="전자세금계산서 공급자 공급받는자">
      <caption>
      전자세금계산서 공급자 공급받는자
      </caption>
      <colgroup>
      <col width="5%" />
      <col width="9%" />
      <col width="15%" />
      <col width="10%" />
      <col width="12%" />
      <col width="5%" />
      <col width="9%" />
      <col width="15%" />
      <col width="10%" />
      <col width="12%" />
      </colgroup>
      <tbody>
        <tr>
          <th rowspan="6" scope="row" class="bill_thred02">공<br />급<br />자</th>
          <th scope="row" class="bill_thred">등록번호</th>
          <td class="bill_tdred" id="PROV_REG_NUMBER">&nbsp;</td>
          <th scope="row" class="bill_thred01">종사업장번호</th>
          <td class="bill_tdred01" id="PROV_OTHER_REGNO">&nbsp;</td>
          <td rowspan="6" class="bill_thblue02">공<br />급<br />받<br />는<br />자</td>
          <td class="bill_thblue">등록번호</td>
          <td class="bill_tdblue" id="RECE_REG_NUMBER">&nbsp;</td>
          <td class="bill_thblue01">종사업장번호</td>
          <td class="bill_tdblue" id="RECE_OTHER_REGNO">&nbsp;</td>
        </tr>
        <tr>
          <th scope="row" class="bill_thred">상호</th>
          <td class="bill_tdred" id="PROV_COMPANY_NM">&nbsp;</td>
          <th scope="row" class="bill_thred01">성명</th>
          <td class="bill_tdred01" id="PROV_CEO_NAME">&nbsp;</td>
          <td class="bill_thblue">상호</td>
          <td class="bill_tdblue" id="RECE_COMPANY_NAME">&nbsp;</td>
          <td class="bill_thblue01">성명</td>
          <td class="bill_tdblue" id="RECE_CEO_NAME">&nbsp;</td>
        </tr>
        <tr>
          <th scope="row" class="bill_thred">사업장</th>
          <td colspan="3" class="bill_tdred01" id="PROV_BUSINESS_PLACE">&nbsp;</td>
          <td class="bill_thblue">사업장</td>
          <td colspan="3" class="bill_tdblue" id="RECE_BUSINESS_PLACE">&nbsp;</td>
          </tr>
        <tr>
          <th height="39" scope="row" class="bill_thred">업태</th>
          <td class="bill_tdred" id="PROV_BUSINESS_CATEGORY">&nbsp;</td>
          <th scope="row" class="bill_thred01">종목</th>
          <td class="bill_tdred01" id="PROV_BUSINESS_TYPE">&nbsp;</td>
          <td class="bill_thblue">업태</td>
          <td class="bill_tdblue" id="RECE_BUSINESS_CATEGORY">&nbsp;</td>
          <td class="bill_thblue01">종목</td>
          <td class="bill_tdblue" id="RECE_BUSINESS_TYPE">&nbsp;</td>
        </tr>
        <tr>
          <th rowspan="2"  scope="row" class="bill_thred02">이메일</th>
          <td rowspan="2" colspan="3" class="bill_tdred02" id="PROV_EMAIL">&nbsp;</td>
          <td class="bill_thblue">이메일</td>
          <td colspan="3" class="bill_tdblue" id="RECE_EMAIL1">&nbsp;</td>
          </tr>
        <tr>
          <td class="bill_thblue02">이메일</td>
          <td colspan="3" class="bill_tdblue02"  id="RECE_EMAIL2">&nbsp;</td>
          </tr>
      </tbody>
    </table>
  </div>  
  <!-- //전자세금계산서 end// -->    
    
    <!-- 전자세금계산서 상세내용1 start -->
    <div class="t20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="전자세금계산서 상세내용" class="tbl_type03">
        <caption>
        전자세금계산서 상세내용
        </caption>
        <colgroup>
        <col width="15%" />
        <col width="15%" />
        <col width="15%" />
        <col width="30%" />
        <col width="25%" />
        </colgroup>
        <thead>
          <tr>
            <th scope="col">작성일자</th>
            <th scope="col">공급가액</th>
            <th scope="col">부가가치세액</th>
            <th scope="col">수정사유</th>
            <th scope="col">비고</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="ac" id="DATE">&nbsp;</td>
            <td class="ar" id="PROV_AMT">&nbsp;</td>
            <td class="ar" id="TAX_AMT">&nbsp;</td>
            <td class="ar" id="EDIT_REASON">&nbsp;</td>
            <td id="ETC">&nbsp;</td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //전자세금계산서 상세내용1 end// -->
    <!-- 전자세금계산서 상세내용2 start -->
    <div class="t20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="전자세금계산서의 품목,규격,수량 등 내용을 제공한 표" class="tbl_type03" id="ELEC_TXBL_ITEM">
        <caption>전자세금계산서</caption>
        <colgroup>
        <col width="8%" />
        <col width="8%" />
        <col width="20%" />
        <col width="8%" />
        <col width="8%" />
        <col width="8%" />
        <col width="10%" />
        <col width="15%" />
        <col width="15%" />
        </colgroup>
        <thead>
          <tr>
            <th scope="col">월</th>
            <th scope="col">일</th>
            <th scope="col">품목</th>
            <th scope="col">규격</th>
            <th scope="col">수량</th>
            <th scope="col">단가</th>
            <th scope="col">공급가액</th>
            <th scope="col">부가가치세액</th>
            <th scope="col">비고</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="ac" id="ITEM_TAXBILL_MONTH1">&nbsp;</td>
            <td class="ac" id="ITEM_TAXBILL_DAY1">&nbsp;</td>
            <td id="ITEM_NAME1">&nbsp;</td>
            <td class="ac" id="ITEM_STANDARD1">&nbsp;</td>
            <td class="ac" id="ITEM_QUANTITY1">&nbsp;</td>
            <td class="ac" id="ITEM_UNIT_COST1">&nbsp;</td>
            <td class="ar" id="ITEM_PROV_AMT1">&nbsp;</td>
            <td class="ar" id="ITEM_TAX_AMT1">&nbsp;</td>
            <td id="ITEM_ETC1">&nbsp;</td>
          </tr>
          <tr>
            <td class="ac" id="ITEM_TAXBILL_MONTH2">&nbsp;</td>
            <td class="ac" id="ITEM_TAXBILL_DAY2">&nbsp;</td>
            <td id="ITEM_NAME2">&nbsp;</td>
            <td class="ac" id="ITEM_STANDARD2">&nbsp;</td>
            <td class="ac" id="ITEM_QUANTITY2">&nbsp;</td>
            <td class="ac" id="ITEM_UNIT_COST2">&nbsp;</td>
            <td class="ar" id="ITEM_PROV_AMT2">&nbsp;</td>
            <td class="ar" id="ITEM_TAX_AMT2">&nbsp;</td>
            <td id="ITEM_ETC2">&nbsp;</td>
          </tr>
          <tr>
            <td class="ac" id="ITEM_TAXBILL_MONTH3">&nbsp;</td>
            <td class="ac" id="ITEM_TAXBILL_DAY3">&nbsp;</td>
            <td id="ITEM_NAME3">&nbsp;</td>
            <td class="ac" id="ITEM_STANDARD3">&nbsp;</td>
            <td class="ac" id="ITEM_QUANTITY3">&nbsp;</td>
            <td class="ac" id="ITEM_UNIT_COST3">&nbsp;</td>
            <td class="ar" id="ITEM_PROV_AMT3">&nbsp;</td>
            <td class="ar" id="ITEM_TAX_AMT3">&nbsp;</td>
            <td id="ITEM_ETC3">&nbsp;</td>
          </tr>
          <tr>
            <td class="ac" id="ITEM_TAXBILL_MONTH4">&nbsp;</td>
            <td class="ac" id="ITEM_TAXBILL_DAY4">&nbsp;</td>
            <td id="ITEM_NAME4">&nbsp;</td>
            <td class="ac" id="ITEM_STANDARD4">&nbsp;</td>
            <td class="ac" id="ITEM_QUANTITY4">&nbsp;</td>
            <td class="ac" id="ITEM_UNIT_COST4">&nbsp;</td>   
            <td class="ar" id="ITEM_PROV_AMT4">&nbsp;</td>
            <td class="ar" id="ITEM_TAX_AMT4">&nbsp;</td>
            <td id="ITEM_ETC4">&nbsp;</td>
          </tr>                              
        </tbody>
      </table>
    </div>
    <!-- //전자세금계산서 상세내용2 end// -->
    <!-- 전자세금계산서 상세내용3 start -->
    <div class="t20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="전자세금계산서의 합계금액,현금,수표 등 내용을 제공한 표" class="tbl_type03">
        <caption>전자세금계산서</caption>
        <colgroup>
        <col width="15%" />
        <col width="15%" />
        <col width="15%" />
        <col width="15%" />
        <col width="15%" />
        <col width="*" />
        </colgroup>
        <tbody>
          <tr>
            <th scope="col">합계금액</th>
            <th scope="col">현금</th>
            <th scope="col">수표</th>
            <th scope="col">어음</th>
            <th scope="col">외상미수금</th>
            <td rowspan="2" class="ac">이 금액을 <span id="RECEIPT_CLAIM_GUBUN">&nbsp;</span> 함</td>
          </tr>
          <tr>
            <td class="ar" id="TOTAL_AMT">&nbsp;</td>
            <td class="ar" id="CASH">&nbsp;</td>
            <td class="ar" id="CHECK">&nbsp;</td>
            <td class="ar" id="BILL">&nbsp;</td>
            <td class="ar" id="CREDIT">&nbsp;</td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //전자세금계산서 상세내용3 end// -->
    <!-- action bt start -->
    <div class="pop_action_bt ar">
      <div class="fl">
        <input type="checkbox" name=ExclsVatAmtYn id="ExclsVatAmtYn" class="check"/>
        부가세를 제외한 공급가액만 등록합니다. </div>
      <a href="#dummy" onclick="uf_pop_elec_txbl_inq();" class="bt_action2-01" title="목록"><span class="bt_sp">목록</span></a> 
      <a href="#dummy" onclick="uf_openerTrns();" class="bt_action2-01" title="저장"><span class="bt_sp1">저장</span></a> 
      </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- 주의사항 start -->
    <div class="pop_guide_box">
      <div class="pop_guide_boxtd">
        <ul>
          <li>범용 범인공인인증서 및 전자세금계산서 전용인증서로만 조회가 가능합니다.</li>
          <li>해당인증서가 www.esero.go.kr에 등록되어 있어야 조회가 가능합니다.</li>
        </ul>
      </div>
    </div>
    <!-- //주의사항 end// -->
    </form>
  </div>
</div>
<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %> 



</body>
</html> 
