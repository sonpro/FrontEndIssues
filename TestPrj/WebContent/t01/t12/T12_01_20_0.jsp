<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_01_20_0.jsp
 *   Description        : 사용등록 > 카드사용내역조회
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.26                     예기해             
 *
 *  @author     예기해 
 *  @Since      
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
    
    
    String SearchOnly           = StringUtil.null2void(SessionUtil.getRequestValue(request, "pSearchOnly"),"N");      //조회만하도록함
    String AgrmtSeqNo           = StringUtil.null2void(SessionUtil.getRequestValue(request, "AgrmtSeqNo")); //협약일련번호
    String RegTyp               = SessionUtil.getRequestValue(request, "RegTyp");                           //등록방식(1:비목우선,0 or empty:증빙우선)
    String RowIdx               = SessionUtil.getRequestValue(request, "pRowIdx");                          //비목우선 > row index
    String SbjtId               = SessionUtil.getRequestValue(request, "pSbjtId");                          //과제ID
    String CpcgInstBzRegNo      = SessionUtil.getRequestValue(request, "pCpcgInstBzRegNo");                 //전담기관사업자번호
    String AgrmtInstCrpnRegNo   = SessionUtil.getRequestValue(request, "pAgrmtInstCrpnRegNo");              //협약기관사업자번호
    String InstCrdSetlMeth      =   "1"; //기관카드결제방식(1:집계방식/2:실시간이체방식)

    String sbjtParam            = SessionUtil.getRequestValue(request, "sbjtParam");              //선택 선분
    
%>


<title>카드사용내역 조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">카드사용내역 조회</p>
        </div>
        <!-- //head title// --> 
    </div>


<style type="text/css">
#PageBrd li {display:inline;float:left;}
#PageBrd li a {padding:3px;display:block;}
</style>
<script type="text/javascript">
var SbjtId = "<%=SbjtId%>";
var sbjtParam = "<%=sbjtParam%>";
function uf_CrdSearch(){
    
    uf_proce_display_on();  //로딩바
    
    setTimeout(function(){
        setData1(sbjtParam);
        }, 1000);   // 1초후 실행 1000 = 1초s
        
}

//////////////////////////////////
//조회 처리
//////////////////////////////////
function uf_search(pageno, SchGb){

    var frm = document.frm;

    
    //그리드 선택 체크
    selectorColumn = gridRoot1.getObjectById("selector");
    if(selectorColumn.getSelectedIndex() < 0){ 
        alert("선택된 사용자목록조회 내역이 없습니다.");
        return; 
    }
    if( isSubmit() ) return;    // 이중처리
    
    //선택된 row의 값 체크
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot1.getItemAt(rowIndex);
    
    if( "1"==dataRow.CRD_USE_YN || "2"==dataRow.CRD_USE_YN ){
        alert("조회가 불가능한 카드입니다.\n\n카드사등록처리상태를 확인하시기 바랍니다.");
        return;
    } 
    if("5" == dataRow.CRD_USE_YN){
        if( Number(frm.InqStrDt.value.replace(/-/gi, "")) > Number(dataRow.SETL_DD.substring(0,10).replace(/-/gi,"")) ){
            alert("해지된 카드입니다.\n\n해지일자전으로 조회해주시기 바랍니다.");
            return; 
        }
    }
    get2post(frm, "CrdNo="+dataRow.CRD_NO.replace(/-/gi, ""));
    get2post(frm, "FncInstCd="+dataRow.FNC_INST_CD.replace(/-/gi, ""));
    
    if( typeof SchGb!="undefined" ){
        get2post(frm, "SchGb="+SchGb);
    } 
    
     
    var cdNo = dataRow.CRD_NO.replace(/-/gi,"");
    uf_proce_display_on();  //로딩바
    setTimeout(function(){
        setData2(SbjtId, cdNo); //Insert Grid
        }, 1000);   // 1초후 실행 1000 = 1초s
    
}


function lPadString(str, ch, len){
    var strlen = trim(str).length;
     var ret = "";
     var alen = len - strlen;
     var astr = ""; 
     
     //부족한 숫자만큼  len 크기로 ch 문자로 채우기
     for (var i=0; i<alen; ++i)
     {
      astr = astr + ch;
     }
     
     ret = trim(str) + astr; //뒤에서 채우기
     return ret;
}
//////////////////////////////////
// 증빙내역등록
//////////////////////////////////
 function uf_insert(){
     if(!chkGridSelectedCount_rMate(gridRoot2, "카드승인(매입)내역")) return false;    // 그리드선택체크
     
 
     <% if( "1".equals(RegTyp) ){%>
         fnInsertItxp(<%=RowIdx%>);//비목우선
     <% }else{ %>
         fnInsertEvdc();//증빙우선
     <% } %>
     
 }

//증빙우선 등록
function fnInsertEvdc(){
    
    var idx = -1;
    var rows = 0;
    
    
    //그리드 선택 체크
    selectorColumn = gridRoot2.getObjectById("selector");
    
    //선택된 row의 값 체크
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot2.getItemAt(rowIndex);
    
    
    var ApvNo = dataRow.APV_NO;
    
    
        
    if( Number(dataRow.ITXP_REG_NCNT)>0 ){
        alert("선택하신 내역은 비목이 등록 되어 등록할 수 없습니다.\n\n승인번호 : "+ApvNo+"");
        return;
    }
    
    if( "Y" == dataRow.BZ_EXP_EXCTN_YN ){
        alert("선택하신 내역은 사용실행 등록 되어 등록할 수 없습니다.\n\n승인번호 : "+ApvNo+"");
        return;
    }

    if( "Y" == dataRow.EXCTN_EXEC_CAN_YN ){
        alert("선택하신 내역은 사용실행 취소 되어 등록할 수 없습니다.\n\n승인번호 : "+ApvNo+"");
        return;
    }
            
    // 2011.1.27 유대종(취소내역 등록불가)
    if( "취소" == dataRow.BUY_APV_CAN_YN ){
        alert("선택하신 내역은 취소 내역이 수신되어서 등록할 수 없습니다.\n\n승인번호 : "+ApvNo+"");
        return;
    }
    
    if( (Number(dataRow.APV_SUM) != Number(dataRow.SPLY_PRC_AMT)   + Number(dataRow.VAT_AMT)  ) &&
        (Number(dataRow.APV_SUM) != Number(dataRow.ORGNL_SPLY_AMT) + Number(dataRow.ORGNL_ADTN_TAX) ) )
    {
        
        /*//20140402 이현욱 전임님 alert 안뜨게 요청
        if( (Number(dataRow.ORGNL_SPLY_AMT) + Number(dataRow.ORGNL_ADTN_TAX)) == 0 ){
            alert("[공급금액+부가세액]이 사용금액과 일치하지 않습니다.\n부가세변경을 클릭하여 금액을 변경하세요.\n\n승인번호 : "+ApvNo+"");
        }
        return;
        */
        
    }
    
    if( "1" == dataRow.SBJT_DV ){
        //if(!confirm("동일과제에 증빙[카드승인(매입)내역]건이 등록되어있습니다.\n해당 계획건에 증빙[카드승인(매입)내역]을 추가하시겠습니까?")){
        //  return;
        //}
        var msg = "선택된 증빙[카드승인(매입)내역]건이 동일과제에 등록되어있습니다.\n\n"
                + "동일한 증빙[카드승인(매입)내역]건을 중복 사용 할 수 없습니다. \n"
                + "\n승인번호 : "+ApvNo+"";
        //alert(msg);
        return;
    }else if( "2" == dataRow.SBJT_DV ){
        var msg = "선택된 증빙[카드승인(매입)내역]건이 타과제에 등록되어있습니다.\n\n"
                + "# 타과제 : [과제번호 : "+dataRow.SBJT_ID+"] [과제명 : "+dataRow.SBJT_NM+"] \n"
                + "동일한 증빙[카드승인(매입)내역]건을 복수과제에 등록할 수 없습니다. \n"
                + "\n승인번호 : "+ApvNo+"";
        alert(msg);
        return;
    }
    
    
    //--------------------------------------
    //  부모창 폼에 카드정보 세팅
    //--------------------------------------
    var arr_param_key   =   [
                    "C_CrdNo"   
                    ,"C_FncInstCd"
                    ,"C_CrdKind"
                    ,"C_CrdTyp"
                    ,"C_BuyApvDv"
                    ,"C_BuyApvCanYn"
                    ,"C_ApvDt"
                    ,"C_ApvDrtm"
                    ,"C_ApvNo"
                    ,"C_PrdDv"
                    ,"C_BuyDt"
                    ,"C_OvrsUseYn"
                    ,"C_BuyClctNo"
                    ,"C_SlipAcqr"
                    ,"C_SplyPrcAmt"
                    ,"C_VatAmt"
                    ,"C_SrvFee"
                    ,"C_ApvSum"
                    ,"C_MestNm"
                    ,"C_MestTaxtTypInfo"
                    ,"C_MestTaxtTypInqDt"
                    ,"C_MestReprNm"
                    ,"C_MestBzNo"
                    ,"C_MestNo"
                    ,"C_MestTelNo"
                    ,"C_MestAdr1"
                    ,"C_MestAdr2"
                    ,"C_CrdDv"
                    ,"C_CmBrTp"
                    ,"C_TpbzCd"
                    ,"C_SetlScheDt"]; 

    var arr_param   =   dataRow.G_PARAM.split("&");
    for(var i=0; i<arr_param.length;i++){
        var arr_param_val   =   arr_param[i].split("=");
        try{
        opener.document.getElementById(arr_param_key[i]).value      =       arr_param_val[1];
        
        }catch(e){ 
            // alert(e.message + ' : ' + arr_param_key[i] + ' : ' + i );
            alert('매입데이터 전송중 에러가 발생하였습니다. 고객센터(1661-5855)에 문의바랍니다.');
        }
    }

    // 2011.10.10 김봉민 : 업종 제한
    if( "Y" == dataRow.CRDCO_BY_TPBZ_LIMT_USE_YN ){
        alert("선택하신 내역의 업종이 ["+opener.document.getElementById("C_CmBrTp").value+"] 입니다.\n해당 업종은 제한이 되어 등록할 수 없습니다.");
        return;
    }

    if((!((dataRow.SBJT_DV =="2") || (dataRow.SBJT_DV =="1"))) && 
            ("0" == Number(dataRow.ORGNL_SPLY_AMT)) && ("0" == Number(dataRow.ORGNL_ADTN_TAX))){

        if(confirm("부가세를 변경하시겠습니까?")){
            rMateGridObjColumnButtonEvent(rowIndex, 0, dataRow, "");
            return;
        }else{
            notChgVat(rowIndex, dataRow);         //수정금액 세팅
        }
        
        
    }
    
    if(!confirm("선택된 증빙[카드승인(매입)내역]건을 등록하시겠습니까?")) return;

    //갱신된 dataRow 값 가져오기
    //그리드 선택 체크
    selectorColumn = gridRoot2.getObjectById("selector");
    
    //선택된 row의 값 체크
    rowIndex = selectorColumn.getSelectedIndex();
    dataRow = gridRoot2.getItemAt(rowIndex);
    

    opener.document.getElementById("Evdc_SumAmt").value         =   dataRow.APV_SUM;                              // 사용금액
    opener.document.getElementById("Evdc_SplyAmt").value        =   dataRow.ORGNL_SPLY_AMT;                                // 수정공급가액(봉사료, 원화환가료, 수수료포함)
    opener.document.getElementById("Evdc_VatAmt").value         =   dataRow.ORGNL_ADTN_TAX;                          // 수정부가가치세액
    
    //--------------------------------
    //  거래처정보 텍스트세팅
    //--------------------------------
    opener.document.getElementById("d_SplrReprNm"           ).innerHTML =   opener.document.getElementById("C_MestReprNm").value;
    opener.document.getElementById("d_SplrBzRegNo"          ).innerHTML =   frmRegNoValue(opener.document.getElementById("C_MestBzNo").value);
    opener.document.getElementById("d_SplrTpbzNm"           ).innerHTML =   opener.document.getElementById("C_CmBrTp").value;
    opener.document.getElementById("d_SplrAdr"              ).innerHTML =   opener.document.getElementById("C_MestAdr1").value;
    
    // 증빙구분자(1)+카드번호(16)+"-"+매입승인구분(1)+"-"+매입일자(8)+"-"+승인번호(23)
    //카드증빙일련번호 조합규칙변경 20110225 이세상 / 매입일자를 승인번호뒤로 => 기존방식 + "-" + 매입일자(6(yymmdd))(민길호)
    var strEvdcSeqNo    =   "C"+opener.document.getElementById("C_CrdNo").value+"-"+opener.document.getElementById("C_BuyApvDv").value
                        +"-"+lPadString(opener.document.getElementById("C_BuyClctNo").value,"0",32)+ "-" + opener.document.getElementById("C_BuyDt").value.substring(2, 8);
    
    opener.set_AmtInfo("C",strEvdcSeqNo,dataRow.ORGNL_SPLY_AMT,dataRow.ORGNL_ADTN_TAX);     //세팅
    
    // 카드결제방식이 실시간이체방식(2)이면 입금계좌번호세팅한다.
    if("2" == "<%=InstCrdSetlMeth%>"){
        //그리드 선택 체크
        var selectorColumn_crd = gridRoot1.getObjectById("selector");
        
        //선택된 row의 값 체크
        var rowIndex_crd = selectorColumn_crd.getSelectedIndex();
        var dataRow_crd = gridRoot1.getItemAt(rowIndex_crd);
        
        opener.document.getElementById("RcvBnkCd").value    = dataRow_crd.SETL_DSTN_BNK_CD;
        opener.document.getElementById("RcvAcctNo").value   = dataRow_crd.SETL_DSTN_ACCT_NO;   
            
        

        opener.document.getElementById("txt_trnsAmt"        ).innerHTML =   toMoney((Number(dataRow.ORGNL_SPLY_AMT)+Number(dataRow.ORGNL_ADTN_TAX))+"");//이체금액
        opener.document.getElementById("txt_splyAmt"        ).innerHTML =   toMoney(dataRow.ORGNL_SPLY_AMT);   //공급금액
        opener.document.getElementById("txt_vatAmt"         ).innerHTML =   toMoney(dataRow.ORGNL_ADTN_TAX);//부가세
        opener.document.getElementById("InstCrdSetlMeth").value = "<%=InstCrdSetlMeth%>";//카드결제방식
    }
        
    
    
    //Layer Display On
    opener.SplrInfoDisplay("Y","C","<%=InstCrdSetlMeth%>");
    
    window.close();
}



//비목우선 등록
function fnInsertItxp(rowIdx){
  var idx = -1;
  var rows = 0;
  var cnt = 0;
  
  try{
      
      /* 
      if(rowCheck.length < 0){ 
          alert("선택된 사용자목록조회 내역이 없습니다.");
          return; 
      }
       */
      //if( isSubmit() ) return;    // 이중처리
      
      //그리드 체크여부
      if(getSelectedCount_rMate(gridRoot2, "selector") > 0) {
          
          //그리드 선택 체크
          var selectorColumn2 = gridRoot2.getObjectById("selector");
          var rowCheck = selectorColumn2.getSelectedIndices();
          var falseCheck = [];  //체크 해제 내역
          
          
          for(var i=0;i<rowCheck.length;i++){
          
              //선택된 row의 값 체크
              var dataRow = gridRoot2.getItemAt(rowCheck[i]);
              var rowIndex = rowCheck[i];
              var isCheck = true;
              
              var ApvNo = dataRow.APV_NO; //승인번호
              
              if( Number(dataRow.ITXP_REG_NCNT)>0 ){  //비목등록건수
                  alert("선택하신 내역은 비목이 등록 되어 등록할 수 없습니다.\n\n승인번호 : "+ApvNo+"");
                  //setUnSelected(obj,idx,"선택");
                  //selectorColumn2.setAllItemSelected(false);   //선택해제
                  isCheck = false; //체크여부
                  continue;
                  
              }
              
              if( "Y" == dataRow.BZ_EXP_EXCTN_YN ){ //사용등록여부코드
                  alert("선택하신 내역은 사용실행 등록 되어 등록할 수 없습니다.\n\n승인번호 : "+ApvNo+"");
                  isCheck = false; //체크여부
                  continue;
                  
              }
        
              if( "Y" == dataRow.EXCTN_EXEC_CAN_YN ){   //getCell(obj, idx, "사용실행취소여부코드")
                  alert("선택하신 내역은 사용실행 취소 되어 등록할 수 없습니다.\n\n승인번호 : "+ApvNo+"");
                  isCheck = false; //체크여부
                  continue;
              }
                      
              // 2011.1.27 유대종(취소내역 등록불가)
              if( "취소" == dataRow.BUY_APV_CAN_YN ){    //getCell(obj, idx, "취소여부")
                  alert("선택하신 내역은 취소 내역이 수신되어서 등록할 수 없습니다.\n\n승인번호 : "+ApvNo+"");
                  isCheck = false; //체크여부
                  continue;
              }
              
              if( (Number(dataRow.APV_SUM) != Number(dataRow.SPLY_PRC_AMT)   + Number(dataRow.VAT_AMT)  ) &&
                  (Number(dataRow.APV_SUM) != Number(dataRow.ORGNL_SPLY_AMT) + Number(dataRow.ORGNL_ADTN_TAX)) ){
                  
                  /* //20140402 이현욱전임 alert 안뜨고 바로 팝업 뜨게 요청
                  if( (Number(dataRow.ORGNL_SPLY_AMT) + Number(dataRow.ORGNL_ADTN_TAX)) == 0 ){
                      alert("[공급금액+부가세액]이 사용금액과 일치하지 않습니다.\n부가세변경을 클릭하여 금액을 변경하세요.\n\n승인번호 : "+ApvNo+"");
                  }
                  
                  isCheck = false; //체크여부
                  continue;
                   */
              }
        
              if( "1" == dataRow.SBJT_DV ){
                  //if(!confirm("동일과제에 증빙[카드승인(매입)내역]건이 등록되어있습니다.\n해당 계획건에 증빙[카드승인(매입)내역]을 추가하시겠습니까?")){
                  //  return;
                  //}
                  var msg = "선택된 증빙[카드승인(매입)내역]건이 동일과제에 등록되어있습니다.\n\n"
                          + "동일한 증빙[카드승인(매입)내역]건을 중복 사용 할 수 없습니다. \n"
                          + "\n승인번호 : "+ApvNo+"";
                  //alert(msg);
                  isCheck = false; //체크여부
                  continue;
              }else if( "2" == dataRow.SBJT_DV ){
                  var msg = "선택된 증빙[카드승인(매입)내역]건이 타과제에 등록되어있습니다.\n\n"
                          + "# 타과제 : [과제번호 : "+dataRow.SBJT_ID+"] [과제명 : "+dataRow.SBJT_NM+"] \n"
                          + "동일한 증빙[카드승인(매입)내역]건을 복수과제에 등록할 수 없습니다. \n"
                          + "\n승인번호 : "+ApvNo+"";
                  alert(msg);
                  isCheck = false; //체크여부
                  continue;
              }       
              
              
              //선택이 하나인 경우 부가세 변경 팝업 질의
              if( (selectorColumn2.getSelectedIndices().length == 1  ) && (!((dataRow.SBJT_DV =="2") || (dataRow.SBJT_DV =="1"))) && 
                      ("0" == Number(dataRow.ORGNL_SPLY_AMT)) && ("0" == Number(dataRow.ORGNL_ADTN_TAX))){
        
                  if(confirm("부가세를 변경하시겠습니까?")){
                      
                      rMateGridObjColumnButtonEvent(rowIndex, 0, dataRow, "");
                      
                      return;
                  }else{
                      notChgVat(rowIndex, dataRow);         //수정금액 세팅
                  }
                  
              }else{
                  notChgVat(rowIndex, dataRow);         //수정금액 세팅
              }
              
              //선택내역만 담기
              if(isCheck){
                  falseCheck[falseCheck.length] = rowCheck[i];
              }
              cnt++;
              
          
          }
          
          selectorColumn2.setAllItemSelected(false);    // 전체선택 해제
          selectorColumn2.setSelectedIndices(falseCheck);   //선택내역만 내선택
          
          
          
          //2013.01.19 김정수, 수정모드시에는 기존에 등록된 카드결제방식을 유지한다.
          if( null != opener.document.getElementById("BeforeCrdSetlMeth") ){
              if( "" == opener.document.getElementById("BeforeCrdSetlMeth").value ){
                  opener.document.getElementById("InstCrdSetlMeth").value = "<%=InstCrdSetlMeth%>";//카드결제방식   
              }else{
                  opener.document.getElementById("InstCrdSetlMeth").value = opener.document.getElementById("BeforeCrdSetlMeth").value;
              }
          }else{
              opener.document.getElementById("InstCrdSetlMeth").value = "<%=InstCrdSetlMeth%>";//카드결제방식
          }
          
      }
                  
      
      if(!chkGridSelectedCount_rMate(gridRoot2,  "카드승인(매입)내역")) return false;  // 그리드선택체크
  
      if(!confirm("선택된 증빙[카드승인(매입)내역]건을 등록하시겠습니까?")) return;
      
      uf_proce_display_on();
      opener.uf_proce_display_on();
  
      opener.document.body.setCapture(); // 'wait'
      opener.document.body.style.cursor = "wait";
      
      
      
      setTimeout(function(){
          
          idx = -1;
          nIdx = 0;
          

          //--------------------------------------
          //  부모창 폼에 카드정보 세팅
          //--------------------------------------
          var arr_param_key   =   [
                          "C_CrdNo"   
                          ,"C_FncInstCd"
                          ,"C_CrdKind"
                          ,"C_CrdTyp"
                          ,"C_BuyApvDv"
                          ,"C_BuyApvCanYn"
                          ,"C_ApvDt"
                          ,"C_ApvDrtm"
                          ,"C_ApvNo"
                          ,"C_PrdDv"
                          ,"C_BuyDt"
                          ,"C_OvrsUseYn"
                          ,"C_BuyClctNo"
                          ,"C_SlipAcqr"
                          ,"C_SplyPrcAmt"
                          ,"C_VatAmt"
                          ,"C_SrvFee"
                          ,"C_ApvSum"
                          ,"C_MestNm"
                          ,"C_MestTaxtTypInfo"
                          ,"C_MestTaxtTypInqDt"
                          ,"C_MestReprNm"
                          ,"C_MestBzNo"
                          ,"C_MestNo"
                          ,"C_MestTelNo"
                          ,"C_MestAdr1"
                          ,"C_MestAdr2"
                          ,"C_CrdDv"
                          ,"C_CmBrTp"
                          ,"C_TpbzCd"
                          ,"C_SetlScheDt"]; 
          
          
              
          //그리드 선택 체크
          var selectorColumn2 = gridRoot2.getObjectById("selector");
          var rowCheck = selectorColumn2.getSelectedIndices();
          var falseCheck = [];  //체크 해제 내역
          
          for(var i=0;i<rowCheck.length;i++){
              var dataRow = gridRoot2.getItemAt(rowCheck[i]);
              var isCheck = true;
              
              var row_idx = (rowIdx+rows+nIdx);
      
              var arr_param   =   dataRow.G_PARAM.split("&");
          
              var node = opener.document.getElementById('frmElmtArea_'+row_idx);
              for (; node.hasChildNodes();) node.removeChild(node.firstChild);
              
              var chkCrdLimBrTp = false; //업종제한 체크
              
              for(var j=0; j<arr_param.length;j++){
                  var arr_param_val   =   arr_param[j].split("=");                
    
                  // 2011.10.10 김봉민 : 업종 제한
                  if( arr_param_key[j] == 'C_CmBrTp' && "Y" == dataRow.CRDCO_BY_TPBZ_LIMT_USE_YN ){    //카드사별업종제한사용여부
                      alert("선택하신 승인번호 [" + dataRow.APV_NO + "] 는 업종이 ["+arr_param_val[1]+"] 입니다.\n해당 업종은 제한이 되어 등록할 수 없습니다.");
                      isCheck = false;     // 선택해제
                      chkCrdLimBrTp = true;
                      break;
                  }
              }
              
              //선택내역만 담기
              if(isCheck){
                  falseCheck[falseCheck.length] = rowCheck[i];
              }
              if( chkCrdLimBrTp == true ) continue;
              
              for(var j=0; j<arr_param.length;j++){
                  var arr_param_val   =   arr_param[j].split("=");
                  fnAppendChild(row_idx, arr_param_key[j], arr_param_val[1]);
              }
              
              fnAppendChild(row_idx, 'C_Evdc_SumAmt', dataRow.APV_SUM);    //사용금액
              fnAppendChild(row_idx, 'C_Evdc_SplyAmt', dataRow.ORGNL_SPLY_AMT);    //수정공급가액
              fnAppendChild(row_idx, 'C_Evdc_VatAmt', dataRow.ORGNL_ADTN_TAX); //수정부가가치세액
              
              //증빙세팅
              opener.document.getElementById('EvmaGb_'        + row_idx ).value = "C";
              //선택한 카드증빙정보는 변경이 안되도록 disabled
              opener.document.getElementById('EvmaGb_'        + row_idx ).setAttribute('disabled',true);
      
              
              //금액세팅
              opener.document.getElementById("ItxpUseAmt_"    + row_idx ).value       = dataRow.APV_SUM;            // 사용금액
              opener.document.getElementById("ItxpSplyAmt_"   + row_idx ).value       = dataRow.ORGNL_SPLY_AMT;      // 수정공급가액(봉사료, 원화환가료, 수수료포함)
              opener.document.getElementById("ItxpVatAmt_"    + row_idx ).value       = dataRow.ORGNL_ADTN_TAX;    // 수정부가가치세액
              
              //--------------------------------
              //  거래처정보 텍스트세팅
              //--------------------------------
          
              opener.document.getElementById("d_SplrReprNm_"  + row_idx).innerHTML    =   opener.document.getElementById("C_MestReprNm_"+row_idx).value;
              opener.document.getElementById("d_SplrBzRegNo_" + row_idx).innerHTML    =   frmRegNoValue(opener.document.getElementById("C_MestBzNo_"+row_idx).value);
              opener.document.getElementById("d_SplrTpbzNm_"  + row_idx).innerHTML    =   opener.document.getElementById("C_CmBrTp_"+row_idx).value;
              opener.document.getElementById("d_SplrAdr_"     + row_idx).innerHTML    =   opener.document.getElementById("C_MestAdr1_"+row_idx).value;
              
              // 카드결제방식이 실시간이체방식(2)이면 입금계좌번호세팅한다.
              if("2" == "<%=InstCrdSetlMeth%>"){
                  //그리드 선택 체크
                  var selectorColumn_crd = gridRoot1.getObjectById("selector");
                  
                  //선택된 row의 값 체크
                  var rowIndex_crd = selectorColumn_crd.getSelectedIndex();
                  var dataRow_crd = gridRoot1.getItemAt(rowIndex_crd);
                  
                  opener.document.getElementById("RcvBnkCd_"+rowIndex_crd).value = dataRow_crd.SETL_DSTN_BNK_CD;   //결제지정은행
                  opener.document.getElementById("RcvAcctNo_"+rowIndex_crd).value = dataRow_crd.SETL_DSTN_ACCT_NO; //결제지정계좌  
                             
              }
              
    
              opener.document.getElementById("txt_trnsAmt_"   + row_idx ).innerHTML   =   toMoney((Number(dataRow.ORGNL_SPLY_AMT)+Number(dataRow.ORGNL_ADTN_TAX))+"");//이체금액  (수정공급가액+수정부가가치세액)
              opener.document.getElementById("txt_splyAmt_"   + row_idx ).innerHTML   =   toMoney(dataRow.ORGNL_SPLY_AMT); //공급금액(수정공급가액)
              opener.document.getElementById("txt_vatAmt_"    + row_idx ).innerHTML   =   toMoney(dataRow.ORGNL_ADTN_TAX); //부가세(수정부가가치세액)
              
              //증빙 테이블 ROW 생성
              if( rows < (cnt-1) ){
                  try{
                      if( opener.document.getElementById('EvmaGb_' + (row_idx+1) ).value != "" ){
                          opener.fnAddRow(rowIdx);
                          nIdx++;
                      }
                  }catch(e){
                      //none object
                      opener.fnAddRow(rowIdx);
                  }
                  row_idx = row_idx + nIdx;
              }
              
              
              //Layer Display On 
              opener.SplrInfoDisplay("Y","C", opener.document.getElementById("InstCrdSetlMeth").value , row_idx , 'N');
              
              rows++;
              
          }//End of for
              
          
          try{
              opener.calc_amtSet2(this,true,'<%=RowIdx%>');
              
              opener.document.body.style.cursor = "auto";
              opener.document.body.releaseCapture(); //setCapture()_Next
              
              
          }catch(e){
              alert("오류 : " + e.message);
          }
          
          
          opener.uf_proce_display_off();
          window.close();
      },1000);//setTimeout
      
  }catch(e){
      alert("오류 : " + e.message);
  }
  
}




/*
 * 부가세 변경안함 선택시
 * 국내 : 원값을 수정금액에 입력
 * 국외 : 사용금액을 공급가액으로 입력
 */
function notChgVat(rowIndex, dataRow){
    
    if( "0" == dataRow.ORGNL_SPLY_AMT && "0" == dataRow.ORGNL_ADTN_TAX ){
        if("A" == dataRow.OVRS_USE_YN){             // 국내사용
            gridRoot2.setItemFieldAt(dataRow.SPLY_PRC_AMT, rowIndex, "ORGNL_SPLY_AMT");    //수정공급가액
            gridRoot2.setItemFieldAt(dataRow.VAT_AMT, rowIndex, "ORGNL_ADTN_TAX");         //수정부가가치세액
            
        }else if("B" == dataRow.OVRS_USE_YN){       // 국외사용
            gridRoot2.setItemFieldAt(dataRow.APV_SUM, rowIndex, "ORGNL_SPLY_AMT");
            gridRoot2.setItemFieldAt("0", rowIndex, "ORGNL_ADTN_TAX");
            
        }
    }
}



function fnAppendChild(ridx, nm, val){
    var inputNode = opener.document.createElement('input');
    inputNode.setAttribute('type','hidden');
    inputNode.setAttribute('id',nm+'_'+ridx);
    inputNode.setAttribute('name',nm);
    inputNode.setAttribute('value',val);

    opener.document.getElementById('frmElmtArea_'+ridx).appendChild(inputNode);
}


 
</script>




<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//레이아웃 설정
    var layoutStr1 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"        headerText=\"선택\"               width=\"50\" textAlign=\"center\" sortable=\"false\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"CRD_DV\"             dataField=\"CRD_DV\"          headerText=\"구분\"               width=\"150\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FNC_INST_CD\"        dataField=\"FNC_INST_CD\"     headerText=\"카드사코드\"         width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_NM\"           dataField=\"CRDCO_NM\"        headerText=\"카드사명\"           width=\"150\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_NO\"             dataField=\"CRD_NO\"          headerText=\"카드번호\"           width=\"200\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_USE_YN\"         dataField=\"CRD_USE_YN\"      headerText=\"상태코드\"           width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_USE_YN_NM\"      dataField=\"CRD_USE_YN_NM\"   headerText=\"카드사등록처리상태\" width=\"170\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
    </DataGrid>\
    <Style>\
        .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                    fontFamily: 돋움; fontSize: 12; color: 0x000000; \
                    horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                    verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                    selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
        .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
        .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
    </Style>\
</rMateGrid>\
";


//레이아웃 설정
var layoutStr_radio = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"2\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\"       dataField=\"selector\"            headerText=\"선택\"                   width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"NO\"                     dataField=\"NO\"                  headerText=\"NO\"                     width=\"30\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_APV_DV\"             dataField=\"BUY_APV_DV\"          headerText=\"매입승인구분\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_APV_CAN_YN\"         dataField=\"BUY_APV_CAN_YN\"      headerText=\"취소여부\"               width=\"70\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_NO\"                 dataField=\"APV_NO\"              headerText=\"승인번호\"               width=\"80\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_CLCT_NO\"            dataField=\"BUY_CLCT_NO\"         headerText=\"매입추심번호\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_NO\"                 dataField=\"CRD_NO\"              headerText=\"카드번호\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_DT\"                 dataField=\"APV_DT\"              headerText=\"사용일자\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_DT\"                 dataField=\"BUY_DT\"              headerText=\"매입일자\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MEST_NM\"                dataField=\"MEST_NM\"             headerText=\"가맹점명\"               width=\"140\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OVRS_USE_YN_NM\"         dataField=\"OVRS_USE_YN_NM\"      headerText=\"사용구분\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_SUM\"                dataField=\"APV_SUM\"             headerText=\"사용금액\"               width=\"90\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"SPLY_PRC_AMT\"           dataField=\"SPLY_PRC_AMT\"        headerText=\"원공급가액\"             width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"VAT_AMT\"                dataField=\"VAT_AMT\"             headerText=\"원부가가치세액\"         width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"SRV_FEE\"                dataField=\"SRV_FEE\"             headerText=\"원봉사료\"               width=\"90\" visible=\"false\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"ORGNL_SPLY_AMT\"         dataField=\"ORGNL_SPLY_AMT\"      headerText=\"수정공급가액\"           width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"ORGNL_ADTN_TAX\"         dataField=\"ORGNL_ADTN_TAX\"      headerText=\"수정부가가치세액\"       width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"TAX_UDT\"                dataField=\"TAX_UDT\"             headerText=\"부가세변경\"             width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_YN\"        dataField=\"BZ_EXP_EXCTN_YN\"     headerText=\"사용등록여부코드\"       width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_YN_NM\"     dataField=\"BZ_EXP_EXCTN_YN_NM\"  headerText=\"사용등록여부\"           width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_CAN_YN\"      dataField=\"EXCTN_EXEC_CAN_YN\"   headerText=\"사용실행취소여부코드\"   width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_CAN_YN_NM\"   dataField=\"EXCTN_EXEC_CAN_YN_NM\" headerText=\"사용실행취소여부\"      width=\"120\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_ID\"                dataField=\"SBJT_ID\"             headerText=\"과제번호\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_NM\"                dataField=\"SBJT_NM\"             headerText=\"과제명\"                 width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV\"                dataField=\"SBJT_DV\"             headerText=\"과제구분\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_BY_TPBZ_USE_YN\"   dataField=\"CRDCO_BY_TPBZ_USE_YN\" headerText=\"카드사별업종사용여부\"  width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_BY_TPBZ_LIMT_USE_YN\" dataField=\"CRDCO_BY_TPBZ_LIMT_USE_YN\" headerText=\"카드사별업종제한사용여부\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OVRS_USE_YN\"            dataField=\"OVRS_USE_YN\"         headerText=\"사용구분코드\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV_NM1\"            dataField=\"SBJT_DV_NM1\"         headerText=\"과제등록구분\"           width=\"110\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV_NM2\"            dataField=\"SBJT_DV_NM2\"         headerText=\"증빙등록여부\"           width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITXP_REG_NCNT\"          dataField=\"ITXP_REG_NCNT\"       headerText=\"비목등록건수\"           width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"G_PARAM\"          dataField=\"G_PARAM\"       headerText=\"G_PARAM\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
    </DataGrid>\
    <Style>\
        .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                    fontFamily: 돋움; fontSize: 12; color: 0x000000; \
                    horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                    verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                    selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
        .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
        .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
    </Style>\
</rMateGrid>\
";

//레이아웃 설정
var layoutStr_check = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"2\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\"       dataField=\"selector\"            headerText=\"선택\"                   width=\"55\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" />\
            <DataGridColumn id=\"NO\"                     dataField=\"NO\"                  headerText=\"NO\"                     width=\"30\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_APV_DV\"             dataField=\"BUY_APV_DV\"          headerText=\"매입승인구분\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_APV_CAN_YN\"         dataField=\"BUY_APV_CAN_YN\"      headerText=\"취소여부\"               width=\"70\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_NO\"                 dataField=\"APV_NO\"              headerText=\"승인번호\"               width=\"80\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_CLCT_NO\"            dataField=\"BUY_CLCT_NO\"         headerText=\"매입추심번호\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_NO\"                 dataField=\"CRD_NO\"              headerText=\"카드번호\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_DT\"                 dataField=\"APV_DT\"              headerText=\"사용일자\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_DT\"                 dataField=\"BUY_DT\"              headerText=\"매입일자\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MEST_NM\"                dataField=\"MEST_NM\"             headerText=\"가맹점명\"               width=\"140\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OVRS_USE_YN_NM\"         dataField=\"OVRS_USE_YN_NM\"      headerText=\"사용구분\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_SUM\"                dataField=\"APV_SUM\"             headerText=\"사용금액\"               width=\"90\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"SPLY_PRC_AMT\"           dataField=\"SPLY_PRC_AMT\"        headerText=\"원공급가액\"             width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"VAT_AMT\"                dataField=\"VAT_AMT\"             headerText=\"원부가가치세액\"         width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"SRV_FEE\"                dataField=\"SRV_FEE\"             headerText=\"원봉사료\"               width=\"90\" visible=\"false\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"ORGNL_SPLY_AMT\"         dataField=\"ORGNL_SPLY_AMT\"      headerText=\"수정공급가액\"           width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"ORGNL_ADTN_TAX\"         dataField=\"ORGNL_ADTN_TAX\"      headerText=\"수정부가가치세액\"       width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"TAX_UDT\"                dataField=\"TAX_UDT\"             headerText=\"부가세변경\"             width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_YN\"        dataField=\"BZ_EXP_EXCTN_YN\"     headerText=\"사용등록여부코드\"       width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_YN_NM\"     dataField=\"BZ_EXP_EXCTN_YN_NM\"  headerText=\"사용등록여부\"           width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_CAN_YN\"      dataField=\"EXCTN_EXEC_CAN_YN\"   headerText=\"사용실행취소여부코드\"   width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_CAN_YN_NM\"   dataField=\"EXCTN_EXEC_CAN_YN_NM\" headerText=\"사용실행취소여부\"      width=\"120\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_ID\"                dataField=\"SBJT_ID\"             headerText=\"과제번호\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_NM\"                dataField=\"SBJT_NM\"             headerText=\"과제명\"                 width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV\"                dataField=\"SBJT_DV\"             headerText=\"과제구분\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_BY_TPBZ_USE_YN\"   dataField=\"CRDCO_BY_TPBZ_USE_YN\" headerText=\"카드사별업종사용여부\"  width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_BY_TPBZ_LIMT_USE_YN\" dataField=\"CRDCO_BY_TPBZ_LIMT_USE_YN\" headerText=\"카드사별업종제한사용여부\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OVRS_USE_YN\"            dataField=\"OVRS_USE_YN\"         headerText=\"사용구분코드\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV_NM1\"            dataField=\"SBJT_DV_NM1\"         headerText=\"과제등록구분\"           width=\"110\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV_NM2\"            dataField=\"SBJT_DV_NM2\"         headerText=\"증빙등록여부\"           width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITXP_REG_NCNT\"          dataField=\"ITXP_REG_NCNT\"       headerText=\"비목등록건수\"           width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"G_PARAM\"          dataField=\"G_PARAM\"       headerText=\"G_PARAM\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
    </DataGrid>\
    <Style>\
        .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                    fontFamily: 돋움; fontSize: 12; color: 0x000000; \
                    horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                    verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                    selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
        .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
        .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
    </Style>\
</rMateGrid>\
";


var flashVars1 = "dataType=json&bridgeName=gridBridge1";
var flashVars2 = "dataType=json&bridgeName=gridBridge2";


//rMateGrid 관련 객체
var gridApp1; // 플래시 기본 객체
var gridApp2; // 플래시 기본 객체
var gridData1; // 그리드 데이터 담기
var gridData2; // 그리드 데이터 담기
var gridRoot1; // 데이타와 그리드를 포함하는 객체
var gridRoot2; // 데이타와 그리드를 포함하는 객체
var dataGrid1; // 그리드 정보 담기
var dataGrid2; // 그리드 정보 담기


    //그리드 레이아웃 호출 
    var rMateGridInitLayout1 = function() {
        gridApp1 = FABridge.gridBridge1.root();
        gridRoot1 = gridApp1.getGridRoot();
        gridApp1.setLayout(layoutStr1);   //그리드 레이아웃 생성

        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
            selectorColumn = gridRoot1.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
        };
        

        var layoutCompleteHandler = function(event) {
            dataGrid1 = gridApp1.getDataGrid();
            
            //이벤트 등록
            dataGrid1.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot1.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot1.addEventListener("layoutComplete", uf_CrdSearch);

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge1", rMateGridInitLayout1);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData1() {
        gridApp1 = FABridge.gridBridge1.root();
        gridApp1.setData(JSON.stringify(gridData1)); //데이터 출력
    };
    
    
    
    
    
    
    //그리드 레이아웃 호출 
    var rMateGridInitLayout2 = function() {
        gridApp2 = FABridge.gridBridge2.root();
        gridRoot2 = gridApp2.getGridRoot();

        //그리드 레이아웃 생성
        <% if( "1".equals(RegTyp) ){%>
        gridApp2.setLayout(layoutStr_check);//비목우선
        <% }else{ %>
        gridApp2.setLayout(layoutStr_radio); //증빙우선
        <% } %>


        //클릭 이벤트 추가
        var itemClickHandler = function(event) {
            selectorColumn = gridRoot2.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
            
            
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot2.getItemAt(rowIndex);
            var columns = dataGrid2.getColumns();
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
            
            if (dataField == "TAX_UDT") { //그리드상의 더블클릭 컬럼번호. 0부터 시작.
                rMateGridObjColumnButtonEvent(rowIndex, columnIndex, dataRow, dataField);
            };
            
            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid2 = gridApp2.getDataGrid();
            
            //이벤트 등록
            dataGrid2.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
        };
        

        //layout 호출 완료 시 실행할 이벤트 등록
        gridRoot2.addEventListener("layoutComplete", layoutCompleteHandler);
        
        //data 출력 후 실행할 이벤트 등록
        gridRoot2.addEventListener("dataComplete", setTotCnt);
        
        //색상변경
        gridRoot2.addEventListener("dataComplete", uf_rowColor_rmate);   //조건에따른 색상처리
        gridRoot2.addEventListener("dataComplete", columnBackGroundStyle);   //부가세 색상변경

    };

    //rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
    FABridge.addInitializationCallback("gridBridge2", rMateGridInitLayout2);

    
    //로딩 후 rMadeGrid 출력
    function rMateGridSetData2() {
        gridApp2 = FABridge.gridBridge2.root();
        //그리드 레이아웃 생성
        <% if( "1".equals(RegTyp) ){%>
        gridApp2.setLayout(layoutStr_check);//비목우선
        <% }else{ %>
        gridApp2.setLayout(layoutStr_radio); //증빙우선
        <% } %>
        
        gridApp2.setData(JSON.stringify(gridData2)); //데이터 출력
    };
    
    
    //토탈 수 구하기
    function setTotCnt() {
        var cnt = getGridRowCount_rMate(gridRoot2);
        $("#InqPrsTotlNcnt").text(cnt);    //그리드 자료수
        
    }
  

    
    //부가세 색상변경
    function columnBackGroundStyle() {
        var imsiCollection;
        imsiCollection = gridRoot2.getCollection();
        
        for (var i = 0; i < imsiCollection.getLength(); i++) {
            imsiCollection.addCellAttributeDetailAt(i, 18, 1, 1, null, 0xEDF2FE);
        }
    }
            
    
    

    function uf_rowColor_rmate(){
        var imsiCollection;
        imsiCollection = gridRoot2.getCollection();
        
        var dataRow;
        var gridCnt = imsiCollection.getLength();
        // 등록가능여부체크 : 등록처리중,등록확인중,등록완료건 있으면 제한
        for(var i=0;i<gridCnt;i++){
            dataRow = gridRoot2.getItemAt(i);
            if(dataRow.SBJT_DV == "2"){                                 //타과제등록(빨강)
                imsiCollection.addRowAttributeDetailAt(i, null, 0xFF3E03);  
            }else if(dataRow.SBJT_DV == "1"){                           //동일과제등록(노랑)
                imsiCollection.addRowAttributeDetailAt(i, null, 0xFFFF66);
            }else{
            }
        }
        
    }
    
    
    
    /*
     * 부가세변경 팝업창
     */
    function rMateGridObjColumnButtonEvent(rowIndex, columnIndex, dataRow, dataField) {
        editRowIndex = rowIndex;    //라인idx
        editDataRow = dataRow;      //라인data
        editDataField = dataField;  

        if(editDataRow.SBJT_DV == "2" || editDataRow.SBJT_DV == "1"){
            alert("기등록된 내역은 수정하실 수 없습니다.");
            return;
        }else{
            uf_popup_crdAmt_updt(frm, editDataRow.APV_SUM,
                    Number(editDataRow.SPLY_PRC_AMT)-Number(editDataRow.SRV_FEE),
                    editDataRow.VAT_AMT,
                    editDataRow.SRV_FEE,"grid2", editRowIndex);
            
            
            
        }
     }
    
    
    // 아이템 내역 수정
    function changeItem(rowIdx, editField, selectedValue) {
        if(typeof rowIdx!="undefined") editRowIndex = rowIdx;
        if(typeof editField!="undefined") editDataField = editField;
        
        gridRoot2.setItemFieldAt(selectedValue, editRowIndex, editDataField);
    }
    
    
    
 // 수정 작업 결과 가져오기 (그리드에서 작업된 입력,수정,삭제 내용을 가져옵니다)
 // 데이타는 배열 형태로
 //  idx: 행번호
 //  job: 수행 작업 (I:입력, U:수정, D:삭제)
 //  data: 행의 자료
 // 를 가지고 있으며 삭제가 먼저 오도록 정렬되어 있습니다.
 function getChangedData() {
     var changedData = gridRoot2.getChangedData();
     if (changedData.length == 0)
         alert("변경된 자료가 없습니다");
     else {
         for (var i = 0; i < changedData.length; i++)
             alert("index:"+changedData[i].idx+"\n"+"job:"+changedData[i].job+"\n"+"data:"+JSON.stringify(changedData[i].data));
     }
 }

    
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->




<div id="body">
  <!-- content start -->
  <div id="content">
  <form name="frm" method="post">
        <input type="hidden" name="PrsPgno" value="0" /> <!--현재페이지번호-->
        <input type="hidden" name="TrSupYn" value="Y" /> <!--거래계속여부-->
        <input type="hidden" name="SbjtId"                  value="<%=SbjtId %>" /> <!--협약일련번호-->
        <input type="hidden" name="CpcgInstBzRegNo"         value="<%=CpcgInstBzRegNo %>" /> <!--전담기관사업자번호-->
        <input type="hidden" name="AgrmtInstCrpnRegNo"      value="<%=AgrmtInstCrpnRegNo %>" /> <!--협약기관사업자번호-->
        <input type="hidden" name="InstCrdSetlMeth"         value="<%=InstCrdSetlMeth %>" /> <!-- 결제방식 -->

    <div class="t20"></div>
    <h3>신용카드</h3>
    <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div>
                <script>
                rMateGridCreate("grid_crd", "/rMateGrid/Component/rMateGridWeb", flashVars1, "100%", "120", "#FFFFFF");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->    
    <div class="t10"></div>
    <div class="guide_bu">전일까지 비목등록 완료된건만 결제계좌로 이체됩니다.</div>
    <div class="t10"></div>
    <h3>비목별 사용현황 일괄조회</h3>
    <!-- 검색단 start -->
    <div class="pop_search">
      <p class="pop_search_boxt"></p>
      <div class="pop_search_boxc">
        <fieldset>
        <legend>현황조회검색</legend>
        <table width="680" summary="현황조회" class="tbl_search">
          <caption>
          현황조회검색
          </caption>
          <colgroup>
          <col width="12%" />
          <col width="88%" />
          </colgroup>
          <tbody>
            <tr>
              <th scope="row"><label for="usedaystart">사용일자</label></th>
              <td>
            <%@ include file="/inc/set_date_btn.jsp" %> 
            <%@ include file="/inc/set_date_today.jsp" %>
                </td>
            </tr>
          </tbody>
        </table>
        </fieldset>
      </div>
      <p><img src="/pop/search_box6.gif" alt=" "/></p>
    </div>
    <div class="cb"></div>
    <!-- //검색단 end// -->
    <!-- 조회 버튼 start -->
    <div class="pop_search_bt1"><a href="#dummy" onclick="uf_search(1);" class="bt_search" title="조회"></a></div>
    <!-- //조회 버튼 end// -->
    <!-- 총건수/인쇄 저장 버튼 start -->
    <div class="pop_total_box b05">
        <div class="fl">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt">0</span>건]</div>
        <div class="fr"><img src="/images/common/white_bu.gif" alt="흰색"/> <b>흰색:</b> 미등록, <img src="/images/common/yellow_bu.gif" alt="흰색"/> <b>노란색:</b> 동일과제등록, <img src="/images/common/red_bu.gif" alt="흰색"/> <b>빨간색:</b> 타과제등록</div>
    </div>
    <!-- //총건수/인쇄 저장 버튼 end// -->
<!-- *************************  rMateGrid ************************* -->      
<div class="t10"></div>
            <!-- 그리드 Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars2, "100%", "275", "#FFFFFF");
                </script>
            </div>
            <!-- 그리드 End -->
<!-- *************************  rMateGrid ************************* -->
    <!-- action bt start -->
    <div class="pop_action_bt ar">
        <div class="fl">
        <ul id="PageBrd">
        <li><a href="#">&nbsp;</a></li>
        </ul>
        </div>
<% 
    if("N".equals(SearchOnly)){
%>      
     <a href="#dummy" onclick="uf_insert();" class="bt_action2-01" title="저장"><span class="bt_sp">저장</span></a>
<%
    }
%>    
    </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- 주의사항 start -->
    <div class="pop_guide_box">
      <div class="pop_guide_boxtd">
        <ul>
          <li>공급금액에는 봉사료, 원화환가료, 수수료가 포함되어 있습니다.</li>
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
$(document).ready(function() {
    // rMateGrid 초기화
    rMateGridInit();
    
    //rMateGrid의 그리드 세팅 시 gridInit() 호출함.

});
</script>



<script type="text/javascript">
var cnt = 0;
function setGridData1(sbjtParam){
    try{
        
        var gridValue = [];
        cnt = 0;
        
        if("1" == sbjtParam){
            gridValue[cnt++] = {"CRD_DV":"연구비전용","FNC_INST_CD":"IB","CRDCO_NM":"A카드","CRD_NO":"1111-2222-3333-4444","CRD_USE_YN":"3","CRD_USE_YN_NM":"등록완료"};
            gridValue[cnt++] = {"CRD_DV":"연구비전용","FNC_INST_CD":"IB","CRDCO_NM":"A카드","CRD_NO":"1111-2222-3333-5555","CRD_USE_YN":"3","CRD_USE_YN_NM":"등록완료"};

        }else if("2" == sbjtParam){
            gridValue[cnt++] = {"CRD_DV":"연구비전용","FNC_INST_CD":"IB","CRDCO_NM":"A카드","CRD_NO":"1111-2222-3333-4444","CRD_USE_YN":"3","CRD_USE_YN_NM":"등록완료"};
            gridValue[cnt++] = {"CRD_DV":"연구비전용","FNC_INST_CD":"IB","CRDCO_NM":"A카드","CRD_NO":"1111-2222-3333-5555","CRD_USE_YN":"3","CRD_USE_YN_NM":"등록완료"};
            
        }else if("3" == sbjtParam){
            gridValue[cnt++] = {"CRD_DV":"연구비전용","FNC_INST_CD":"IB","CRDCO_NM":"A카드","CRD_NO":"1111-2222-3333-4444","CRD_USE_YN":"3","CRD_USE_YN_NM":"등록완료"};
            gridValue[cnt++] = {"CRD_DV":"연구비전용","FNC_INST_CD":"IB","CRDCO_NM":"A카드","CRD_NO":"1111-2222-3333-5555","CRD_USE_YN":"3","CRD_USE_YN_NM":"등록완료"};
            
        }else if("4" == sbjtParam){
            gridValue[cnt++] = {"CRD_DV":"연구비전용","FNC_INST_CD":"IB","CRDCO_NM":"A카드","CRD_NO":"1111-2222-3333-4444","CRD_USE_YN":"3","CRD_USE_YN_NM":"등록완료"};
            gridValue[cnt++] = {"CRD_DV":"연구비전용","FNC_INST_CD":"IB","CRDCO_NM":"A카드","CRD_NO":"1111-2222-3333-5555","CRD_USE_YN":"3","CRD_USE_YN_NM":"등록완료"};

        }
        
    }finally{
        
        gridData1 = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData1();  //rMateGrid 구현
        
    }
}

function setData1(sbjtParam){
    if(!sbjtParam) return false;
    
    
    try{
        document.body.style.cursor =    "wait";
        //SetData(); //Insert   Grid
        setGridData1(sbjtParam); //Insert    Grid
        document.body.style.cursor =    "auto";
        
    }finally{
        reset_submit();
        //searchAlert();
    }
    
}




var cnt2 = 0;
function setGridData2(sbjtId,crdNo){
    try{
        
        var gridValue = [];
        cnt2 = 0;
        
        
        //1. 신규과제
        if("TEST0001" == sbjtId){
            
            if("1111222233334444" == crdNo){
                
            }else if("1111222233335555" == crdNo){
                
            }
            
        //2
        }else if("TEST0002" == sbjtId){
            
            if("1111222233334444" == crdNo){
                gridValue[cnt2++] = {"NO":"1","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111111","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2014-02-04","BUY_DT":"2014-02-06","MEST_NM":"㈜A 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"220", "SPLY_PRC_AMT":"220", "VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"200", "ORGNL_ADTN_TAX":"20", "TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록",  "EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-04&ApvDrtm=000000&ApvNo=11111111&PrdDv=A&OvrsUseYn=A&BuyDt=2014-02-06&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=220&VatAmt=0&SrvFee=0&ApvSum=220&MestNm=㈜A 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=가대표&MestBzNo=2222222222&MestNo=739251231&MestTelNo=021112222&MestAdr1=서울특별시 중구 태평로1가&MestAdr2=31&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"2","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111112","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2014-02-12","BUY_DT":"2014-02-17","MEST_NM":"㈜B 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"220", "SPLY_PRC_AMT":"220", "VAT_AMT":"20", "SRV_FEE":"0","ORGNL_SPLY_AMT":"0",   "ORGNL_ADTN_TAX":"0",  "TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"N","BZ_EXP_EXCTN_YN_NM":"미등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"0","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-12&ApvDrtm=000000&ApvNo=11111112&PrdDv=A&OvrsUseYn=A&BuyDt=2014-02-17&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=200&VatAmt=20&SrvFee=0&ApvSum=220&MestNm=㈜B 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=나대표&MestBzNo=3333333333&MestNo=739251231&MestTelNo=0421112222&MestAdr1=대전광역시 서구 둔산동&MestAdr2=1420&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"3","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111113","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2014-02-14","BUY_DT":"2014-02-18","MEST_NM":"㈜C 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"1100","SPLY_PRC_AMT":"1100","VAT_AMT":"100","SRV_FEE":"0","ORGNL_SPLY_AMT":"1000","ORGNL_ADTN_TAX":"100","TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록",  "EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-14&ApvDrtm=000000&ApvNo=11111113&PrdDv=A&OvrsUseYn=A&BuyDt=2014-02-18&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=1000&VatAmt=100&SrvFee=0&ApvSum=1100&MestNm=㈜C 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=다대표&MestBzNo=4444444444&MestNo=739251231&MestTelNo=0531112222&MestAdr1=대구광역시 중구 동인동1가&MestAdr2=1&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};

            }else if("1111222233335555" == crdNo){
                
            }
            
        //3
        }else if("TEST0003" == sbjtId){
            
            if("1111222233334444" == crdNo){
                gridValue[cnt2++] = {"NO":"1","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111111","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-02-26","BUY_DT":"2013-03-04","MEST_NM":"㈜A 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"220", "SPLY_PRC_AMT":"200", "VAT_AMT":"20", "SRV_FEE":"0","ORGNL_SPLY_AMT":"200", "ORGNL_ADTN_TAX":"20", "TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-04&ApvDrtm=000000&ApvNo=11111111&PrdDv=A&OvrsUseYn=A&BuyDt=2013-02-26&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=200&VatAmt=20&SrvFee=0&ApvSum=220&MestNm=㈜A 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=가대표&MestBzNo=2222222222&MestNo=739251231&MestTelNo=021112222&MestAdr1=서울특별시 중구 태평로1가&MestAdr2=31&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"2","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111112","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-03-19","BUY_DT":"2013-03-22","MEST_NM":"㈜B 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"1100","SPLY_PRC_AMT":"1100","VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"1000","ORGNL_ADTN_TAX":"100","TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-12&ApvDrtm=000000&ApvNo=11111112&PrdDv=A&OvrsUseYn=A&BuyDt=2013-03-19&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=1100&VatAmt=0&SrvFee=0&ApvSum=220&MestNm=㈜B 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=나대표&MestBzNo=3333333333&MestNo=739251231&MestTelNo=0421112222&MestAdr1=대전광역시 서구 둔산동&MestAdr2=1420&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"3","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111115","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-10-18","BUY_DT":"2013-10-23","MEST_NM":"㈜E 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"500", "SPLY_PRC_AMT":"500", "VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"455", "ORGNL_ADTN_TAX":"45", "TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-14&ApvDrtm=000000&ApvNo=11111115&PrdDv=A&OvrsUseYn=A&BuyDt=2013-10-18&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=500&VatAmt=0&SrvFee=0&ApvSum=1100&MestNm=㈜E 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=마대표&MestBzNo=5555555555&MestNo=739251231&MestTelNo=0611112222&MestAdr1=광주광역시 서구 치평동&MestAdr2=1200&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};

            }else if("1111222233335555" == crdNo){
                gridValue[cnt2++] = {"NO":"1","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111113","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-5555","APV_DT":"2013-04-16","BUY_DT":"2013-04-19","MEST_NM":"㈜C 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"220", "SPLY_PRC_AMT":"220", "VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"200", "ORGNL_ADTN_TAX":"20", "TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233335555&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-04&ApvDrtm=000000&ApvNo=11111113&PrdDv=A&OvrsUseYn=A&BuyDt=2013-04-16&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=220&VatAmt=0&SrvFee=0&ApvSum=220&MestNm=㈜C 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=다대표&MestBzNo=4444444444&MestNo=739251231&MestTelNo=0531112222&MestAdr1=대구광역시 중구 동인동1가&MestAdr2=1&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"2","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111114","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-5555","APV_DT":"2013-12-02","BUY_DT":"2013-12-04","MEST_NM":"㈜D 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"9060","SPLY_PRC_AMT":"8237","VAT_AMT":"823","SRV_FEE":"0","ORGNL_SPLY_AMT":"8237","ORGNL_ADTN_TAX":"823","TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233335555&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-12&ApvDrtm=000000&ApvNo=11111114&PrdDv=A&OvrsUseYn=A&BuyDt=2013-12-02&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=8237&VatAmt=823&SrvFee=0&ApvSum=220&MestNm=㈜D 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=라대표&MestBzNo=6666666666&MestNo=739251231&MestTelNo=05111112222&MestAdr1=부산광역시 연제구 연산5동&MestAdr2=1000&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};

            }
            
        //4
        }else if("TEST0004" == sbjtId){
            
            if("1111222233334444" == crdNo){
                gridValue[cnt2++] = {"NO":"1","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111111","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-02-26","BUY_DT":"2013-03-04","MEST_NM":"㈜A 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"220", "SPLY_PRC_AMT":"200", "VAT_AMT":"20", "SRV_FEE":"0","ORGNL_SPLY_AMT":"0",   "ORGNL_ADTN_TAX":"0",  "TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-04&ApvDrtm=000000&ApvNo=11111111&PrdDv=A&OvrsUseYn=A&BuyDt=2013-02-26&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=200&VatAmt=20&SrvFee=0&ApvSum=220&MestNm=㈜A 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=가대표&MestBzNo=2222222222&MestNo=739251231&MestTelNo=021112222&MestAdr1=서울특별시 중구 태평로1가&MestAdr2=31&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"2","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111112","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-03-19","BUY_DT":"2013-03-22","MEST_NM":"㈜B 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"1100","SPLY_PRC_AMT":"1100","VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"1000","ORGNL_ADTN_TAX":"100","TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-12&ApvDrtm=000000&ApvNo=11111112&PrdDv=A&OvrsUseYn=A&BuyDt=2013-03-19&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=1100&VatAmt=0&SrvFee=0&ApvSum=220&MestNm=㈜B 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=나대표&MestBzNo=3333333333&MestNo=739251231&MestTelNo=042112222&MestAdr1=대전광역시 서구 둔산동&MestAdr2=1420&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"3","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111115","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-10-18","BUY_DT":"2013-10-23","MEST_NM":"㈜E 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"500", "SPLY_PRC_AMT":"500", "VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"455", "ORGNL_ADTN_TAX":"45", "TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-14&ApvDrtm=000000&ApvNo=11111115&PrdDv=A&OvrsUseYn=A&BuyDt=2013-10-18&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=500&VatAmt=0&SrvFee=0&ApvSum=1100&MestNm=㈜E 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=마대표&MestBzNo=5555555555&MestNo=739251231&MestTelNo=062112222&MestAdr1=광주광역시 서구 치평동&MestAdr2=1200&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};

            }else if("1111222233335555" == crdNo){
                gridValue[cnt2++] = {"NO":"1","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111113","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-5555","APV_DT":"2013-04-16","BUY_DT":"2013-04-19","MEST_NM":"㈜C 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"220", "SPLY_PRC_AMT":"220", "VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"200", "ORGNL_ADTN_TAX":"20", "TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233335555&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-04&ApvDrtm=000000&ApvNo=11111113&PrdDv=A&OvrsUseYn=A&BuyDt=2013-04-16&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=220&VatAmt=0&SrvFee=0&ApvSum=220&MestNm=㈜C 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=다대표&MestBzNo=4444444444&MestNo=739251231&MestTelNo=0531112222&MestAdr1=대구광역시 중구 동인동1가&MestAdr2=1&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"2","BUY_APV_DV":"승인","BUY_APV_CAN_YN":"정상","APV_NO":"11111114","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-5555","APV_DT":"2013-12-02","BUY_DT":"2013-12-04","MEST_NM":"㈜D 가맹점","OVRS_USE_YN_NM":"국내","APV_SUM":"9060","SPLY_PRC_AMT":"8237","VAT_AMT":"823","SRV_FEE":"0","ORGNL_SPLY_AMT":"8237","ORGNL_ADTN_TAX":"823","TAX_UDT":"부가세변경","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"등록","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"미연구비사용","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"미등록","SBJT_DV_NM2":"미등록","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233335555&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=승인&BuyApvCanYn=정상&ApvDt=2014-02-12&ApvDrtm=000000&ApvNo=11111114&PrdDv=A&OvrsUseYn=A&BuyDt=2013-12-02&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=8237&VatAmt=823&SrvFee=0&ApvSum=220&MestNm=㈜D 가맹점&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=라대표&MestBzNo=6666666666&MestNo=739251231&MestTelNo=0511112222&MestAdr1=부산광역시 연제구 연산5동&MestAdr2=1000&CrdDv=V&CmBrTp=개발&TpbzCd=3305&SetlScheDt=20110527"};

            }
        }
        
        
    }finally{
        gridData2 = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData2();  //rMateGrid 구현
        
    }
}

function setData2(sbjtId,crdNo){
    if(!crdNo) return false;
    
    try{
        document.body.style.cursor =    "wait";
        //SetData(); //Insert   Grid
        setGridData2(sbjtId,crdNo); //Insert    Grid
        document.body.style.cursor =    "auto";
    }finally{
        reset_submit();
        searchAlert();
    }
    
}


function searchAlert(){
    if(!cnt2>0){
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">조회일자의 카드승인내역이 없습니다. 확인후 다시 이용해주시길 바랍니다.[MBT00163]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}
</script>

</body>
</html> 
