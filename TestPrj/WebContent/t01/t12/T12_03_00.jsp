<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T12_03_00.jsp
 *   Description        : 사용결과조회
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

<title>사용결과조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep">사용등록</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_02_00.jsp'); return false;" class="menu_3dep">사용실행</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_03_00.jsp'); return false;" class="menu_3dep_on">사용결과내역 조회</a></li>
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


<script type="text/javascript">
var searchGubun;
/******************************************************************
 * uf_search            연구비집행결과조회
 * @param
 * @return
******************************************************************/
function uf_search(param){
    
    if(!param) param = _param;
    
    var frmRtr = document.rtr_str_form;
    var frm = document.frm;
    
    if(frmRtr.S_AGRMT_SEQ_NO.length > 1){
        for(var i=0;i<frmRtr.S_AGRMT_SEQ_NO.length;i++){    
            get2post(frm, "AGRMT_SEQ_NO="+frmRtr.S_AGRMT_SEQ_NO[i].value);
            get2post(frm, "AGRMT_INST_ID="+frmRtr.S_AGRMT_INST_ID[i].value);
            get2post(frm, "SBJT_ID="+frmRtr.S_SBJT_ID[i].value);
        }
    }else{
        get2post(frm, "AGRMT_SEQ_NO="+frmRtr.S_AGRMT_SEQ_NO.value);
        get2post(frm, "AGRMT_INST_ID="+frmRtr.S_AGRMT_INST_ID.value);
        get2post(frm, "SBJT_ID="+frmRtr.S_SBJT_ID.value);
    }
    
    get2post(frm, "EVDC_DV="            +  frm.EVDC_DV.value);
    get2post(frm, "EXCTN_ST="           +  frm.EXCTN_ST.value);
    get2post(frm, "InqStrDt="           +  frm.InqStrDt.value);
    get2post(frm, "InqEndDt="           +  frm.InqEndDt.value);
    get2post(frm, "search_AchvInstIndv1Cd=" +  frm.search_AchvInstIndv1Cd.value);
    get2post(frm, "search_AchvInstIndv2Cd="     +  frm.search_AchvInstIndv2Cd.value);
    get2post(frm, "SHR_SORC_SN="    +  frm.SHR_SORC_SN.value);  // 2013.10.29 추가 김찬영
    
    
    
    // 사용예정건수 초기화
    document.all["InqPrsTotlNcnt2"].innerHTML = "0";
    
    uf_proce_display_on();  //로딩바
    
    rMateGridLayoutInit_rMate();    //그리드 초기화
    setTimeout(
           function(){
               search(param);
           }
           , 1000);   // 1초후 실행 1000 = 1초
}

/******************************************************************
 * uf_chkSbjtSch            과제조회여부를 체크
 * @param
 * @return
******************************************************************/
function uf_chkSbjtSch(){
    var frm = document.rtr_str_form;
    
    if(frm.S_AGRMT_SEQ_NO == null){
        alert("과제를 선택하세요.");
        return false;
    }
    
    return true;
}

    
 


/******************************************************************
 * uf_Click         상세내역조회팝업창호출(그리드 사용일시클릭시 )
                        u01/u12/U12_03_10 : 카드결제상세조회
                        u01/u12/U12_03_20 : 기타증빙상세조회
                        u01/u12/U12_03_30 : 전자세금계산서상세조회                         
 * @param
 * @return
******************************************************************/
function uf_Click(rowIndex, columnIndex, dataRow, dataField) {

    editRowIndex = rowIndex; //라인idx
    editDataRow = dataRow; //라인data
    editDataField = dataField;

    
    
    var trg_fileNM = "";
    var width="800",height="720", scroll='yes';
    
    //if(!chk_sbjt_sch()) return false;                         //과제조회여부확인
    if(dataRow.TRSC_EVDC_DV == "T"){           //전자세금계산서
        trg_fileNM = "/t01/t12/T12_03_30.jsp";
    }else if(dataRow.TRSC_EVDC_DV == "C"){ //카드
        trg_fileNM = "/t01/t12/T12_03_10.jsp";
        scroll='no';
        height="520";
    }else if(dataRow.TRSC_EVDC_DV == "E"){         //기타증빙
        trg_fileNM = "/t01/t12/T12_03_20.jsp";
    }
    
    get2post(document.frm, dataRow.GridKey);
    get2post(document.frm, "&SplrCoNm="+dataRow.SPLR_CO_NM);
    uf_frmNewWinNs(document.frm, trg_fileNM, 'TAXVIEW1', width, height, scroll);
    removeTempAttribute(document.frm);  //get2post 삭제      
    

}


 
 /******************************************************************
  * uf_reExcute          사용재실행
  * @param
  * @return
 ******************************************************************/
 function uf_reExcute(){
     var frm_key = document.rtr_str_form;
     var frm = document.frm;
     var obj;
     var trg_fileNM = "";
     
     // 과제조회 유무 확인
     if(!bAutoSbjtSch()) return;
     
     var gridCnt = getGridRowCount_rMate();
     if(gridCnt<=0){
         alert("조회된 데이타가 없습니다.");
         return;
     }
     
     selectorColumn = gridRoot.getObjectById("selector");
     if(selectorColumn.getSelectedIndex() < 0){ 
         alert("재실행할 내역을 선택하여 주십시오.");
         return false;
     }

     
     
     //선택된 row의 값 체크
     var rowIndex = selectorColumn.getSelectedIndex();
     var dataRow = gridRoot.getItemAt(rowIndex);
     
     //B04108 분할이체 오류  , B04109 집행 오류완료
     if(dataRow.EXCTN_ST != "B04108" && dataRow.EXCTN_ST != "B04109"){            //사용상태코드
         alert("사용상태가 오류인건만 재실행이 가능합니다.");
         return false; 
     }else{
         //카드증빙이면서 집계방식인경우 재실행불가능(실시간이체방식인경우는 재실행가능함)
         //카드결제방식이 집계방식인 기관에게는 실시간이체방식으로 카드집행이 가능한것을 알리지않은 시기임(20110817 이세상)
         if((dataRow.TRSC_EVDC_DV == "C") && ("1" == dataRow.CRD_SETL_METH_DV)){         // 증빙구분코드, 이체방식코드
             alert("카드내역은 재실행할 수 없습니다.\n시스템관리자에게 문의바랍니다.(1661-5855)");
             return false;
         }
         
         get2post(frm, dataRow.GridKey);   //GridKey
         trg_fileNM = "/t01/t12/T12_03_01.jsp"; //재실행요청
     }
   
     //2011.11.30
     get2post(frm, "hmpwRoleDv="+frm_key.S_HMPW_ROLE_DV.value);
     get2post(frm, "pmsId="+frm_key.S_PMS_ID.value);
     get2post(frm, "rcmsGrpCd="+frm_key.S_RCMS_GRP_CD.value);
     
     if( isSubmit() ) return;    // 이중처리

     frm.target = "_self";
     frm.action = trg_fileNM;
     fn_submit_ns(frm);
 }
 
 
/********************************************************
* Function      : uf_rsltItxpUpdate()
* Parameter     : 
* Description   : 비목수정 팝업창 호출
********************************************************/
function uf_rsltItxpUpdate(){
    
    var frm_key = document.rtr_str_form;
    var frm = document.frm;
    var obj;
    var pop_width = "800",pop_height = "870",param,url,evdc_cd,crdSetlMthd;

    
    // 과제조회 유무 확인
    if(!bAutoSbjtSch()) return;
    
    if(!chkGridOneSelectedCount_rMate(gridRoot, "비목등록/수정")) return;  // 사용정보수정건 한건 선택확인

    
    
    
    //선택된 row의 값 체크
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot.getItemAt(rowIndex);
    
    grpYn       =   dataRow.GRP_YN;
    
        
    // 수정자 : 김봉민 부가세보전신청진행상태가 0:신청 1:승인 2:완료 인 경우 비목 수정 불가능
    if(dataRow.VAT_PSV_APC_PRGR_ST == '0' || dataRow.VAT_PSV_APC_PRGR_ST == '1' || dataRow.VAT_PSV_APC_PRGR_ST == '2'){   //
        alert("부가세 복원 진행중이거나 완료인 경우 비목수정이 불가능합니다.");
        return;
    }
        
    
    if(dataRow.EXCTN_ST != "B04110"){   //사용상태코드
        
        alert("사용상태가 [정상완료]인건만 비목수정이 가능합니다.");
        return;

    }else{
        param   =   dataRow.GridKey;   //GridKey
        evdc_cd =   dataRow.TRSC_EVDC_DV;    //증빙구분코드
        crdSetlMthd =   dataRow.CRD_SETL_METH_DV;    //이체방식코드
    }
    
    //카드면서 집계방식인경우 창크기줄임
    if("C"  ==  evdc_cd && "1"==crdSetlMthd){
        pop_height = "630";
    }
    
    //2011.11.30
    get2post(frm, "hmpwRoleDv="+frm_key.S_HMPW_ROLE_DV.value);
    get2post(frm, "pmsId="+frm_key.S_PMS_ID.value);
    get2post(frm, "rcmsGrpCd="+frm_key.S_RCMS_GRP_CD.value);
    
    get2post(frm, param);
    if( grpYn == 'Y' ){
        url = "/t01/t12/T12_03_50.jsp"; //비목우선
    }else{
        url = "/t01/t12/T12_03_40.jsp"; //증빙우선
    }
    
    uf_frmNewWinNs(frm, url, 'RCMS_MKE_POPUP', pop_width, pop_height);
    
    removeTempAttribute(frm);
}

 
 
/******************************************************************
 * uf_printTrnCnfm          이체결과확인증 팝업창 호출
 * @param
 * @return
******************************************************************/
function uf_printTrnCer(){
    var frm      = document.frm;
    var frm_sbjt = document.rtr_str_form; 
    var obj;
    var idx = -1;
    
    if(!uf_chkSbjtSch())                                        return;     // 과제조회여부확인
    if(!chkGridSelectedCount_rMate(gridRoot, "이체확인증출력"))     return;     // 그리드선택내역확인

    
    //선택된 row의 값 체크
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot.getItemAt(rowIndex);
    
    if(dataRow.EXCTN_ST != "B04110"){
        alert("사용상태가 [정상완료]인건만 출력가능합니다.");
        return;
    }else{
        get2post(frm, dataRow.GridKey);
        trg_fileNM = "/pop/T01_07_00.jsp";
    }
    
    uf_frmNewWinNs(document.frm, trg_fileNM, 'PRINTVIEW', '800', '620', 'no');
    removeTempAttribute(document.frm);  //get2post 삭제       
}

var _param;
function uf_autoSbjtSchCallBack(param) {
    
    if(!param){
        alert("에러가 발생하였습니다. 잠시후 다시 시도해주세요.");
        return;
    }
    _param = param;

    var responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result>";
    if(param.length > 0){
        var paramValue = "";
        for(var i=0;i<param.length;i++){
            
            if("1" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 신규과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
            }else if("2" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 진행과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
            }else if("3" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
            }else if("4" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A 은행' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS 실습용 정산과제' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS 실습' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
            }
        }
    }
    
    
    responseXML += "</result></results>";
    
    document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
    //=============================
    //  실행시킬 메소드 들어갈 위치
    //=============================
    uf_search(param);
    //=============================
}

</script>






    <!-- content start -->
    <div id="content">
      <!-- pagenav start -->
      



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u12_03_00_t.gif" alt="사용결과내역 조회"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>연구비관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />연구비사용관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">사용결과내역 조회</span></li>
                        
                    </ul>
                </div>
            </div>                
      <!-- //pagenav end// -->
      <div class="t30"></div>
        





<!-- //auto search start -->
<%
    boolean isSbjtAutoSchMulti  =   true;  //과제조회 자동완성 멀티체크기능 true:멀티 false:싱글
    boolean beSearchBtn         =   false;   //조회버튼 생성구분
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->



      <div class="cb b10"></div>
      <h3>사용결과내역</h3>
      <!-- 검색단 start -->
      <form name="frm" method="post">
        <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />
        <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="N" />      
      <div class="search">
        <div class="search_boxt"></div>
        <div class="search_boxc">
          <fieldset>
          <legend>현황조회검색</legend>
          <table width="680" summary="현황조회" class="tbl_search">
            <caption>
            현황조회검색
            </caption>
            <colgroup>
            <col width="18%" />
            <col width="32%" />
            <col width="18%" />
            <col width="32%" />
            </colgroup>
            <tbody>
              <tr>
                <th scope="row">증빙구분</th>
                <td><select name='EVDC_DV'  id='EVDC_DV'  class=''  ><option value=''>전체</option><option value='E' >기타증빙</option><option value='T' >전자세금계산서</option><option value='C' >카드결제</option></select></td>
                <th scope="row">사용상태</th>
                <td><select name='EXCTN_ST'  id='EXCTN_ST'  class=''  ><option value=''>전체</option><option value='B04199' >복원</option><option value='B04109' >오류</option><option value='B04110' >정상</option><option value='B04102' >처리중</option></select></td>
              </tr>
              <tr>
                <th scope="row"><label for="search_AchvInstIndv1Cd">기관용개별코드A</label></th>
                <td><input type="text" name="search_AchvInstIndv1Cd" id="search_AchvInstIndv1Cd" title="기관용개별코드A" class="inputl" style="width:125px;ime-mode:disabled;" value="" maxlength="20" /></td>
                <th scope="row"><label for="search_AchvInstIndv2Cd">기관용개별코드B</label></th>
                <td><input type="text" name="search_AchvInstIndv2Cd" id="search_AchvInstIndv2Cd" title="기관용개별코드B" class="inputl" style="width:125px;ime-mode:disabled;" value="" maxlength="20" /></td>
              </tr>
              <!-- 2013.10.29 추가   김찬영 -->
              <tr>
                <th scope="row"><label for="shrsorcsn">지방비출처사용</label></th>
                <td colspan="3">
                    <select id="SHR_SORC_SN" name="SHR_SORC_SN">
                        <option value="ALL">전체</option>
                        <option value="Y">사용</option>
                        <option value="N">사용안함</option>
                    </select>
                </td>
              </tr>
              <tr>
                <th scope="row"><label for="usedaystart">날짜구분</label></th>
                <td colspan="3">
                <%=ComboUtil.getComboBox("RNDB31", "DATE_DV", "", "", "B31001", ComboUtil.OPT_NONE) %>
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
      <!-- //검색단 end// -->
      <!-- 조회 상세조회 버튼 start -->
      <div class="search_bt1 ar"><a href="#dummy" onclick="autoSbjtFormGen();" class="bt_search" title="조회"></a></div>
      <!-- //조회 상세조회 버튼 end// -->
      <div class="t10"></div>
      
      
      
      <!-- 총건수/인쇄 저장 버튼 start -->
      <div class="total_box">
        <p class="fl t05">[조회건수 <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> 건]</p>
        <p class="ar b05">
          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="인쇄"/></a>
          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="저장"/></a>
        </p>
        <p class="cb"></p>
      </div>
      <!-- //총건수/인쇄 저장 버튼 end// -->      
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "387", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- 그리드 End -->
            <!-- 상세보기 레이어 팝업 -->
            <div id="layerPopup" style="display:none;z-index:999999;">
                <div id="layerPopupTitle" style="width:355px;height:30px;">
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="닫기"></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
<!-- *************************  rMateGrid ************************* -->
      
      <!-- action bt start -->
      <div class="action_bt ar">
        <div class="fl"> 
        <a href="#dummy"   onclick="uf_reExcute();" class="bt_action5-1" title="사용재실행"><span class="bt_sp">사용재실행</span></a> 
        <a href="#dummy"   onclick="uf_rsltItxpUpdate();" class="bt_action4" title="비목수정"><span class="bt_sp1">비목수정</span></a></div>
        <a href="#dummy" onclick="uf_printTrnCer();" class="bt_action7" title="이체확인증출력"><span class="bt_sp1">이체확인증출력</span></a> </div>
      <!-- //action bt end// -->
      </form>
    <!-- 안내 가이드 start -->
    <div class="guide_box1" id="guide">
        <div class="guide_boxt1">
            <p class="txt_title fl">사용결과내역 조회 안내</p> 
            <p class="ar txt_s">* 안내를 꼭 확인하세요. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="숨김" class="vc"/></a></p>
        </div>
        <div class="guide_boxc1">
            <ul>
                <li>본 사용결과내역 조회에서는 <span class="txt_or">집행 이후 완료 여부를 확인</span>할 수 있습니다. </li>
                <li>'오류'인 경우 '사용재실행'을 통해 정보 수정 및 재요청 하시고 다시 한번 '사용실행' 하여 주시기 바랍니다.</li>
                <li>'정상완료'건에 대해서 RCMS로 이체한 증빙을 위해 '이체확인증' 출력이 가능합니다.</li>
            </ul>
        </div>
        <p class="guide_boxb1"></p>
    </div>
    <!-- //안내 가이드 end// -->
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
        
     $(document).ready(function() {
         
          // rMateGrid 초기화
          rMateGridInit();   
     
          $("a#example1").fancybox();
          $("a#example2").fancybox();
          
          $('#btn-guide').click(function(){
            if( $('#guide').css('height') == '17px' ){
              $('#guide').css({overflow:'hidden'}).animate({height:110},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
            }else{
              $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
            }
            return false;
          });
        });
     
</script>





<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//레이아웃 설정
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" lockedColumnCount=\"2\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
    <columns>\
        <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
        <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"                headerText=\"선택\"               width=\"40\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
        <DataGridColumn id=\"BZEX_ID\"            dataField=\"BZEX_ID\"                 headerText=\"사업비집행ID\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"SBJT_ID\"            dataField=\"SBJT_ID\"                 headerText=\"과제번호\"           width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"SBJT_NM\"            dataField=\"SBJT_NM\"                 headerText=\"과제명\"             width=\"130\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"TRSC_DT\"            dataField=\"TRSC_DT\"                 headerText=\"사용일자\"           width=\"90\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"EXCTN_EXEC_DT\"      dataField=\"EXCTN_EXEC_DT\"           headerText=\"이체일시\"           width=\"120\" visible=\"true\"  textAlign=\"center\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"TRSC_EVDC_DV_NM\"    dataField=\"TRSC_EVDC_DV_NM\"         headerText=\"증빙구분\"           width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"              headerText=\"거래처(가맹점)\"     width=\"120\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"EXCTN_ST_NM\"        dataField=\"EXCTN_ST_NM\"             headerText=\"사용상태\"           width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"EXCTN_ST\"           dataField=\"EXCTN_ST\"                headerText=\"사용상태코드\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"TRSC_EVDC_DV\"       dataField=\"TRSC_EVDC_DV\"            headerText=\"증빙구분코드\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"VAT_PSV_APC_YN\"     dataField=\"VAT_PSV_APC_YN\"          headerText=\"부가세보전신청여부\" width=\"140\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"VAT_PSV_APC_PRGR_ST\" dataField=\"VAT_PSV_APC_PRGR_ST\"    headerText=\"부가세보전신청진행상태\" width=\"180\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"RCV_BNK_NM\"         dataField=\"RCV_BNK_NM\"              headerText=\"입금은행\"           width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"ACCT_NO\"            dataField=\"ACCT_NO\"                 headerText=\"입금계좌번호\"       width=\"130\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"OWAC_NM\"            dataField=\"OWAC_NM\"                 headerText=\"예금주\"             width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"                headerText=\"이체금액\"           width=\"100\" visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"CAN_TRNS_AMT\"       dataField=\"CAN_TRNS_AMT\"            headerText=\"부분취소금액\"       width=\"100\" visible=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"  dataField=\"VAT_PROC_RTRT_AMT\"       headerText=\"부가세복원금액\"     width=\"100\" visible=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"CTT\"                dataField=\"CTT\"                     headerText=\"결과내용\"           width=\"200\" visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"ACHV_INST_INDV_1_CD\" dataField=\"ACHV_INST_INDV_1_CD\"    headerText=\"기관용개별코드A\"    width=\"120\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"ACHV_INST_INDV_2_CD\" dataField=\"ACHV_INST_INDV_2_CD\"    headerText=\"기관용개별코드B\"    width=\"120\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"CRD_SETL_METH_DV\"   dataField=\"CRD_SETL_METH_DV\"        headerText=\"이체방식코드\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"PAYM_USAG\"          dataField=\"PAYM_USAG\"               headerText=\"지급용도\"           width=\"180\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"SHR_SORC_NM\"        dataField=\"SHR_SORC_NM\"             headerText=\"분담출처명\"         width=\"180\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"GRP_YN\"             dataField=\"GRP_YN\"                  headerText=\"그룹YN\"             width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"GridKey\"            dataField=\"GridKey\"                 headerText=\"GridKey\"            width=\"0\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    </columns>\
    <footers>\
        <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\" useDataSource=\"true\" fontWeight=\"bold\" >\
            <DataGridFooterColumn />\
            <DataGridFooterColumn label=\"합계\" textAlign=\"center\" />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{SBJT_ID}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn label=\"건\" textAlign=\"left\" />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{CAN_TRNS_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{VAT_PROC_RTRT_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
        </DataGridFooter>\
    </footers>\
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


//그리드 레이아웃 호출 
var rMateGridInitLayout = function() {
    gridApp = FABridge.gridBridge.root();
    gridRoot = gridApp.getGridRoot();
    gridApp.setLayout(layoutStr); //그리드 레이아웃 생성

    //클릭 이벤트 추가
    var itemClickHandler = function(event) {
        //row 선택시 라디오 check
        selectorColumn = gridRoot.getObjectById("selector");
        selectorColumn.setSelectedIndices([event.getRowIndex()]);
                
        
        
        var rowIndex = event.getRowIndex();
        var columnIndex = event.getColumnIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
         
        var columns = dataGrid.getColumns();
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
        
        if (dataField == "EXCTN_EXEC_DT") { //그리드상의 더블클릭 컬럼번호. 0부터 시작.
            uf_Click(rowIndex, columnIndex, dataRow, dataField);
        };
    };
    
    //더블클릭 상세보기 이벤트 추가
    var itemDoubleClickHandler = function(event) {
        
        var rowIndex = event.getRowIndex();
        var columnIndex = event.getColumnIndex();
        var dataRow = gridRoot.getItemAt(rowIndex);
        var column = dataGrid.getColumns()[columnIndex];
        var dataField = column.getDataField();

        
        //popupDetail(rowIndex, dataRow);
        layerDetail(dataGrid, dataRow);
        
    };

    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
        //이벤트 등록
        //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //더블클릭 이벤트
        dataGrid.addEventListener("itemClick", itemClickHandler); //원클릭 이벤트 
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    //gridRoot.addEventListener("layoutComplete", gridInit);
    gridRoot.addEventListener("dataComplete", getRowCount);

};



//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//로딩 후 rMadeGrid 출력
function rMateGridSetData() {

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    
    
    // 마우스 휠 이벤트 리스너를 적용합니다.
    addGridMouseWheelEventListener();

    
};







function getRowCount(){
    $("#InqPrsTotlNcnt2").html(getGridRowCount_rMate());
}


</script>
<!-- **********************  rMateGrid setting END ***********************  -->




<script type="text/javascript">
var cnt = 0;
function SetData(paramVal){    

    try{
        
        var param = paramVal.split(",");
        var gridValue = [];
        cnt = 0;
        
        if(param.length > 0){
            var paramValue = "";
            for(var i=0;i<param.length;i++){
                
                paramValue = param[i];
                if(paramValue == "1"){

                    
                }else if(paramValue == "2"){

                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1분기 연구과제추진비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-13 15:44:36","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2250","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-01-30","GridKey":"&SbjtNm=RCMS 실습용 진행과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=1분기 연구과제추진비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"간접비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"888-88-888888-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-13 15:46:58","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"100","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 나 업체","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"B 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-01-07","GridKey":"&SbjtNm=RCMS 실습용 진행과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=B 은행&OwacNm=㈜ 나 업체&RcvAcctNo=888888888880&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=100&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=간접비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-10 13:07:20","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-02-10","GridKey":"&SbjtNm=RCMS 실습용 진행과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=1월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"세미나개최비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-24 14:51:38","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"220","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-02-04","GridKey":"&SbjtNm=RCMS 실습용 진행과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=220&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=세미나개최비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"장비구입비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"555-55-555555-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-03-07 12:27:13","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"1100","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 가 업체","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"E 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-02-27","GridKey":"&SbjtNm=RCMS 실습용 진행과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=E 은행&OwacNm=㈜ 가 업체&RcvAcctNo=55555555550&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=1100&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=장비구입비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"장비구입비","EXCTN_REG_DRTM":"090000","CTT":"[00030199] 기타오류","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"555-55-555555-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-03-20 14:12:49","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"5500","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 가 업체","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS 실습용 진행과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"오류","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04109","RCV_BNK_CD":"003","RCV_BNK_NM":"E 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-03-11","GridKey":"&SbjtNm=RCMS 실습용 진행과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04109&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=E 은행&OwacNm=㈜ 가 업체&RcvAcctNo=555555555550&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=5500&BzExpExctnErrCtt=[00030199] 기타오류&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=장비구입비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};

  
                }else if(paramValue == "3"){

                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"장비구입비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"555-55-555555-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-06 10:31:01","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"1100",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 가 업체","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"E 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-03-04","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130304&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=E 은행&OwacNm=㈜ 가 업체&RcvAcctNo=555555555550&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=1100&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=장비구입비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1/4 연구과제추진비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-21 10:44:38","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-03-21","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130321&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=1/4 연구과제추진비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"세미나 개최비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-25 14:52:47","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"220",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-02-26","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130226&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=220&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=세미나 개최비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"3월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-10 13:07:20","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-04-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130410&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=3월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"간접비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"888-88-888888-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-10 13:41:58","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"100",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 나 업체","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"B 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-03-28","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130328&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=B 은행&OwacNm=㈜ 나 업체&RcvAcctNo=888888888880&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=100&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=간접비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"장비구입비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-23 15:54:12","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"1000",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-03-19","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130319&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=1000&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=장비구입비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"4월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-05-10 11:01:45","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-05-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130510&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=4월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"세미나 개최비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-05-23 16:32:11","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"220",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-04-16","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130416&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=220&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=세미나 개최비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"2/4 연구과제추진비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-06-04 10:22:30","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-06-04","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130604&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=2/4 연구과제추진비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"5월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-06-10 12:12:56","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-06-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130610&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=5월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"간접비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"777--77-77777-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-08 16:02:09","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"100",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 바 업체","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"G 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-07-08","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130708&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=G 은행&OwacNm=㈜ 바 업체&RcvAcctNo=777777777770&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=100&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=간접비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"6월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-10 10:54:37","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-07-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130710&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=6월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"재료구입비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"300-30-300000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-22 17:26:25","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"20000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 다 업체","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"C 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-07-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130710&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=C 은행&OwacNm=㈜ 다 업&RcvAcctNo=30030300000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=20000&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=재료구입비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"7월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-08-09 09:58:01","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-08-09","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130809&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=7월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"3/4 연구과제추진비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-03 09:45:27","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-09-03","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130903&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=3/4 연구과제추진비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"8월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-10 10:15:21","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-09-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130910&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=8월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"전문가활용비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-30 17:52:50","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"10000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-09-30","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130930&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=10000&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=전문가활용비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"9월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-10-10 14:51:08","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-10-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131010&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=9월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"제작비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"999-99-999999-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-10-29 13:12:08","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"15000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 라 업체","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"F 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-10-14","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131014&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=F 은행&OwacNm=㈜ 라 업체&RcvAcctNo=999999999990&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=15000&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=제작비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"10월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-11-08 12:01:28","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-11-08","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131108&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=10월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"간접비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-11-25 09:21:09","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"500",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-10-18","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131018&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=간접비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"4/4 연구과제추진비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-02 11:50:19","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2150",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-12-02","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131202&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2150&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=4/4 연구과제추진비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"11월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-10 11:10:12","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-12-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131210&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=11월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"훈련비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-23 15:47:26","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"9060",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-12-02","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131202&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=9060&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=훈련비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"12월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-10 10:46:32","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-01-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140110&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=12월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"간접비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"222-22-222222-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-13 15:46:58","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"300",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 마 업체","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"H 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-01-04","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140104&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=H 은행&OwacNm=㈜ 마 업체&RcvAcctNo=222222222220&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=300&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=간접비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-10 15:36:41","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-02-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140210&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=1월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"2월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-28 11:49:19","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-02-28","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140228&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=2월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};

                }else if(paramValue == "4"){

                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1/4 연구과제추진비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-21 10:44:38","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-03-21","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130321&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=1/4 연구과제추진비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"세미나 개최비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-25 14:52:47","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"220",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-02-26","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130226&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=220&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=세미나 개최비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"3월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-10 13:07:20","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-04-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130410&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=3월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"간접비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"888-88-888888-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-10 13:41:58","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"100",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 나 업체","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"B 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-03-28","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130328&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=B 은행&OwacNm=㈜ 나 업체&RcvAcctNo=888888888880&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=100&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=간접비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"장비구입비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-23 15:54:12","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"1000",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-03-19","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130319&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=1000&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=장비구입비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"4월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-05-10 11:01:45","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-05-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130510&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=4월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"세미나 개최비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-05-23 16:32:11","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"220",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-04-16","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130416&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=220&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=세미나 개최비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"2/4 연구과제추진비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-06-04 10:22:30","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-06-04","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130604&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=2/4 연구과제추진비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"5월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-06-10 12:12:56","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-06-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130610&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=5월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"간접비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"777--77-77777-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-08 16:02:09","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"100",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 바 업체","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"G 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-07-08","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130708&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=G 은행&OwacNm=㈜ 바 업체&RcvAcctNo=777777777770&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=100&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=간접비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"6월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-10 10:54:37","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-07-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130710&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=6월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"재료구입비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"300-30-300000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-22 17:26:25","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"20000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 다 업체","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"C 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-07-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130710&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=C 은행&OwacNm=㈜ 다 업&RcvAcctNo=30030300000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=20000&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=재료구입비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"7월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-08-09 09:58:01","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-08-09","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130809&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=7월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"3/4 연구과제추진비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-03 09:45:27","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-09-03","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130903&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=3/4 연구과제추진비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"8월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-10 10:15:21","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-09-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130910&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=8월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"전문가활용비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-30 17:52:50","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"10000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-09-30","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130930&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=10000&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=전문가활용비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"9월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-10-10 14:51:08","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-10-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131010&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=9월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"제작비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"999-99-999999-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-10-29 13:12:08","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"15000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 라 업체","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"F 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-10-14","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131014&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=F 은행&OwacNm=㈜ 라 업체&RcvAcctNo=999999999990&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=15000&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=제작비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"10월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-11-08 12:01:28","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-11-08","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131108&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=10월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"간접비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-11-25 09:21:09","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"500",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-10-18","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131018&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=간접비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"4/4 연구과제추진비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-02 11:50:19","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2150",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-12-02","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131202&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2150&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=4/4 연구과제추진비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"11월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-10 11:10:12","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-12-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131210&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=11월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"훈련비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-23 15:47:26","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"카드결제","GRP_YN":"N","TRNS_AMT":"9060",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"C","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-12-02","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131202&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=9060&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=훈련비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"12월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-10 10:46:32","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-01-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140110&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=12월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"간접비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"222-22-222222-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-13 15:46:58","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"300",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 마 업체","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"H 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-01-04","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140104&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=H 은행&OwacNm=㈜ 마 업체&RcvAcctNo=222222222220&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=300&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=간접비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-10 15:36:41","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-02-10","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140210&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=1월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"2월 인건비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-28 11:49:19","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"기타증빙","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"E","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2014-02-28","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140228&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A 은행&OwacNm=㈜ RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=2월 인건비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"장비구입비","EXCTN_REG_DRTM":"090000","CTT":"[00030000] 정상처리","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"미신청","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"555-55-555555-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-06 10:31:01","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"전자세금계산서","GRP_YN":"N","TRNS_AMT":"1100",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"㈜ 가 업체","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS 실습용 정산과제","TRSC_EVDC_DV":"T","SPLR_CO_NM":"공급자명","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"정상완료","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"E 은행","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"거래처입금","TRSC_DT":"2013-03-04","GridKey":"&SbjtNm=RCMS 실습용 정산과제&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130304&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=E 은행&OwacNm=㈜ 가 업체&RcvAcctNo=555555555550&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=1100&BzExpExctnErrCtt=[00030000] 정상처리&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=거래처입금&TelNo=02-123-1234&PaymUsag=장비구입비&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};

                }
                
                paramValue = "";
                
            }
        }


    }finally{
        gridData = gridValue;    //조회결과 JSON 값 가져오기
        rMateGridSetData();  //rMateGrid 구현
    }
}

function search(param){
    if(!param) return false;
    
    try{
        document.body.setCapture(); // 'wait'
        document.body.style.cursor =    "wait";
        //SetData(); //Insert   Grid
        SetData(param); //Insert    Grid
        document.body.style.cursor =    "auto";
        document.body.releaseCapture(); //setCapture()_Next
    }finally{
        reset_submit();
        searchAlert();
    }
}

function searchAlert(){
    
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- 오류 start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">자료가 존재하지 않습니다. 정보확인 후 다시 이용해 주시기 바랍니다.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="확인"></p></div></div><!-- 오류 end -->', '알림');
    }
}
</script>

</body>
</html>