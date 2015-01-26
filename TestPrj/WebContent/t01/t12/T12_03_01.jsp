<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_01.jsp
 *   Description        : 재실행요청페이지
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014. 01. 03                   예기해             
 *
 *  @author 예기해
 *  @Since  2014. 01. 03
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

<%@page import="jex.json.JSONObject"%>

<%


    //2012.12.29 
    String hmpwRoleDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"hmpwRoleDv"));            // 인력역할구분
    String rcmsGrpCd                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"rcmsGrpCd"));             //RCMS그룹코드

    //-------------------------------------------
    //  실행실행-비목수정 업무시 받는 파라미터
    //-------------------------------------------
    String TrscEvdcDv               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TrscEvdcDv"));              // 사업비증빙사용구분
    String BzexId                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzexId"));                        // 집행id
    String ButrId                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ButrId"));                        // 사업비사용거래실적id             
    String RcvBnkCd                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvBnkCd"));                      // 입금은행코드             
    String RcvAcctNo                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvAcctNo"));                     // 입금계좌번호
    String RcvPsbkPrtCtt                =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvAcctRcvCtt"));         // 거래처입금통장인쇄내용      
    String WdrwPsbkPrtCtt               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RchExpAcctWdrwCtt"));      // 연구비계좌출금통장인쇄내용
    String TrnsAmt                      =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TrnsAmt"));                       // 사업비사용금액            
    String Evdc_SplyAmt                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UseSplyAmt"),"0");                   // 공급금액               
    String Evdc_VatAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UseVatAmt"),"0");                    // 부가가치세액             
    String PaymUsag                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"PaymUsag"));                      // 사용내역               
    String TelNo                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TelNo"));                         // 전화번호               
    String ExctnStgDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnStgDv"));                    // 사용단계구분                        
    String AgrmtSeqNo                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));                    // 협약일련번호                  
    String AgrmtInstId                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstId"));                   // 협약기관ID                                 
    String AgrmtInstBzRegNo             =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstBzRegNo"));              // 협약기관사업자등록번호
    String AchvInstIndv1Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv1Cd"));                       // 기관용개별코드1
    String AchvInstIndv2Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv2Cd"));                   // 기관용개별코드2
    String CrdSetlMeth                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnTypDv"));                    // 결제방식구분(1:집계방식/2:실시간이체방식)
    String ExctnSt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnSt"));                   // 결제방식구분(1:집계방식/2:실시간이체방식)
    
    
    
    
    String RchExpAcctBnkCd              =   "";             // 연구비계좌은행코드              
    String RchExpAcctNo                 =   "";                // 연구비계좌번호
    
    String Cus_ReprNm                   =   "";                                                                             // 거래처대표자명
    String Cus_BizNo                    =   "";                                                                             // 거래처사업자번호
    String Cus_TpBzNm                   =   "";                                                                             // 거래처업종명
    String Cus_TpOpNm                   =   "";                                                                             // 거래처업태명
    String Cus_Addr                     =   "";                                                                             // 거래처사업장주소
    String Cus_SplrCoNm                 =   "";                                                                             // 공급자회사명
    String ItemData[]   ;
 
    
    JSONObject jData = new JSONObject();                //Json 생성 ( 조회결과값 담기 )
    
    if("G00000000000002".equals(AgrmtSeqNo) && "E".equals(TrscEvdcDv)){
        RchExpAcctBnkCd    = "003";
        RchExpAcctNo       = "10000000000";
        Cus_ReprNm         = "산기평";
        Cus_BizNo          = "1111111111";
        Cus_TpBzNm         = "연구";
        Cus_TpOpNm         = "개발";
        Cus_Addr           = "대전광역시 유성구 화암동 58-4";
        Cus_SplrCoNm       = "㈜RCMS";
        

        jData.put("AGRMT_SEQ_NO",AgrmtSeqNo);
        jData.put("AGRMT_INST_ID","10112249");
        jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
        jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
        jData.put("AGRMT_INST_NM","㈜RCMS");
        jData.put("CPCG_INST_BZ_REG_NO","1111111111");
        jData.put("EXCTN_STG_DV","2");
        jData.put("AGRMT_INST_ROLE_DV","C");
        jData.put("BZ_EXP_ACCT_BNK_CD","003");
        jData.put("BZ_EXP_ACCT_NO","20000000000");
        jData.put("RCH_EXP_ACCT_BNK_CD","003");
        jData.put("RCH_EXP_ACCT_NO","111222333333");
        jData.put("OWAC_NM","㈜RCMS");
        jData.put("INST_SBJT_PRGR_ST","07");
        jData.put("EXCTN_LIMT_ST","1");
        jData.put("EXCTN_LIMT_RSN","연구기관 자체 정산 처리");
        jData.put("MY_ACCT_TRNS_ALWN_YN","N");
        jData.put("INST_TOTL_INST_AMT","110000000");
        jData.put("AGRMT_CASH_LIM_AMT","100000000");
        jData.put("PMS_ID","G01");
        jData.put("BZ_CLAS_CD","S1598");
        jData.put("BZ_CLAS_NM","RCMS 실습");
        jData.put("CPCG_INST_ID","11000001");
        jData.put("CPCG_INST_NM","한국산업기술평가관리원");
        jData.put("SBJT_ID","TEST0002");
        jData.put("SBJT_NM","RCMS 실습용 진행과제");
        jData.put("PRS_SBJT_STG","0");
        jData.put("ANNL","3");
        jData.put("DEV_STR_DT","20120401");
        jData.put("DEV_END_DT","20990131");
        jData.put("TOTL_INST_AMT","0");
        jData.put("BUTR_ID","E201312242251901");
        jData.put("TRSC_EVDC_DV","E");
        jData.put("TRSC_PFMC_REG_DT","20131224");
        jData.put("TRSC_PFMC_REG_TM","201323");
        jData.put("SPLY_AMT_DFAMT_RSN",null);
        jData.put("ITXP_REG_YN","Y");
        jData.put("BZ_EXP_EXCTN_REG_YN","Y");
        jData.put("EXCTN_ST","B04109");
        jData.put("SPLR_CO_NM","㈜RCMS");
        jData.put("TOTL_AMT","13");
        jData.put("USE_SPLY_AMT","12");
        jData.put("USE_VAT_AMT","1");
        jData.put("EXCTN_KIND_DV","B03001");
        jData.put("NPRF_INST_YN","N");
        jData.put("SQBN_SPLR_EXCTN_RSN",null);
        jData.put("EXCLS_VAT_AMT_YN","N");
        jData.put("EXCTN_DV","2");
        
    }else{
        RchExpAcctBnkCd    = "004";
        RchExpAcctNo       = "10000000000";
        Cus_ReprNm         = "산기평";
        Cus_BizNo          = "1111111111";
        Cus_TpBzNm         = "연구";
        Cus_TpOpNm         = "개발";
        Cus_Addr           = "대전광역시 유성구 화암동 58-4";
        Cus_SplrCoNm       = "㈜RCMS";
        
        
        jData.put("AGRMT_SEQ_NO",AgrmtSeqNo);
        jData.put("AGRMT_INST_ID","10112249");
        jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
        jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
        jData.put("AGRMT_INST_NM","㈜RCMS");
        jData.put("CPCG_INST_BZ_REG_NO","1111111111");
        jData.put("EXCTN_STG_DV","1");
        jData.put("AGRMT_INST_ROLE_DV","C");
        jData.put("BZ_EXP_ACCT_BNK_CD","004");
        jData.put("BZ_EXP_ACCT_NO","10000000000");
        jData.put("RCH_EXP_ACCT_BNK_CD","004");
        jData.put("RCH_EXP_ACCT_NO","111222333333");
        jData.put("OWAC_NM","㈜RCMS（Ａ）");
        jData.put("INST_SBJT_PRGR_ST","10");
        jData.put("EXCTN_LIMT_ST","0");
        jData.put("EXCTN_LIMT_RSN","개발종료일자 2개월 경과로 인한 정산 처리");
        jData.put("MY_ACCT_TRNS_ALWN_YN","Y");
        jData.put("INST_TOTL_INST_AMT","20000");
        jData.put("AGRMT_CASH_LIM_AMT","20000");
        jData.put("PMS_ID","G01");
        jData.put("BZ_CLAS_CD","S1856");
        jData.put("BZ_CLAS_NM","RCMS 실습용 정산과제");
        jData.put("CPCG_INST_ID","11000001");
        jData.put("CPCG_INST_NM","한국산업기술평가관리원");
        jData.put("SBJT_ID","10037268");
        jData.put("SBJT_NM","RCMS 실습용 정산과제");
        jData.put("PRS_SBJT_STG","0");
        jData.put("ANNL","1");
        jData.put("DEV_STR_DT","20130201");
        jData.put("DEV_END_DT","20140131");
        jData.put("TOTL_INST_AMT","20000");
        jData.put("BUTR_ID","E201005282907593");
        jData.put("TRSC_EVDC_DV","E");
        jData.put("TRSC_PFMC_REG_DT","20130528");
        jData.put("TRSC_PFMC_REG_TM","191755");
        jData.put("SPLY_AMT_DFAMT_RSN",null);
        jData.put("ITXP_REG_YN","Y");
        jData.put("BZ_EXP_EXCTN_REG_YN","Y");
        jData.put("EXCTN_ST","B04109");
        jData.put("SPLR_CO_NM","㈜RCMS");
        jData.put("TOTL_AMT","1000");
        jData.put("USE_SPLY_AMT","1000");
        jData.put("USE_VAT_AMT","0");
        jData.put("EXCTN_KIND_DV","B03000");
        jData.put("NPRF_INST_YN","N");
        jData.put("SQBN_SPLR_EXCTN_RSN",null);
        jData.put("EXCLS_VAT_AMT_YN","N");
        jData.put("EXCTN_DV","1");
    }
    
%>    
<title>연구비사용 재실행 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
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


<style type="text/css">
    input.currency {text-align:right;padding-right:1px;}
    .ShrSorcSn {display:none;}
    .ItxpAdtnInfo {display:none;}
</style>
<script type="text/javascript">
var argMtSeqNo = "<%=AgrmtSeqNo%>";
var trscEvdcDv = "<%=TrscEvdcDv%>";
<%//=getSMExctnPossTrnAmt(request)%>
/********************************************************
* Function      : uf_save()
* Parameter     : 구분 (ExtcnGb[S:저장, R:재실행])
* Description   : 사용재실행
********************************************************/
function uf_save(ExtcnGb){
    var frm = document.frm;
    var param;
    
    //-----------------------------------
    //  비목등록정보 유효성 검사
    //-----------------------------------
    for(i=0; i<document.frm.itxp_cnt.value; i++){
        if(!chk_frm_value("SelDtlsItxpCd",i))       return;         // 세목
        if(!chk_frm_value("SelSubDtlsItxpCd",i))    return;         // 세세목
        if(!chk_frm_value("ItxpItem",i))            return;         // 품목
        if(!chk_frm_value("ItxpUseAmt",i))          return;         // 사용금액
        if(!chk_frm_value("ItxpSplyAmt",i))         return;         // 공급금액
        if(!chk_frm_value("ItxpVatAmt",i))          return;         // 부가세
        
    }
    //-----------------------------------
    //  비영리기관이 간접비 집행시 증빙서류 인건비내역 등록안함
    //  신규비목코드 추가로 인해 연구과제추진비인 경우에도 증빙서류 인건비내역 등록안함
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
                if(null==frm.EdmsDocId[i].value || ""==frm.EdmsDocId[i].value){
                    alert("증빙서류를 등록해주세요.");
                    return;
                }
            }
        }else{
            if(null==frm.EdmsDocId.value || ""==frm.EdmsDocId.value){
                alert("증빙서류를 등록해주세요.");
                return;
            }       
        }
        //-----------------------------------
        //  인건비내역 체크(인건비,연구수당인경우만 등록필수)
        //-----------------------------------
        if(frm.rchrInfo.length > 1){
            for(i=0;i<frm.rchrInfo.length;i++){
                if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].value, false)){
                    if(null==frm.rchrInfo[i].value || ""==frm.rchrInfo[i].value){
                        return;
                    }
                }
            }
        }else{
            if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                if(null==frm.rchrInfo.value || ""==frm.rchrInfo.value){
                    alert("인건비내역을 등록해주세요.");
                    return;
                }
            }
        }
    }
    
    
    if("C"!=frm.Evdc_Dv.value){
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

    
    if( frm.OwacNm.value == "" ){
        alert("예금주조회를 해주십시오.");
        return;
    }
    
    if("C"!=frm.Evdc_Dv.value){
        //-----------------------------------
        //  계좌이체 요청항목 유효성 검사
        //-----------------------------------
        if(""==frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value){
            alert("필수항목은 반드시 선택하셔야 합니다.\r\n\r\n* 필수선택 항목 : 입금계좌(은행)");
            frm.RcvBnkCd.focus();
            return;
        }
        
        //-----------------------------------
        //  타계좌이체시 입금계좌가 연구비계좌인지 검사
        //-----------------------------------
        if( true                                                    ==  document.frm.ExctnStgDv[0].checked      &&
            frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value  ==  "<%=RchExpAcctBnkCd%>"                  &&
            frm.RcvAcctNo.value                                     ==  "<%=RchExpAcctNo%>"){
            alert("입금계좌가 연구비계좌와 동일합니다.");
            return;
        }
        
        //if(! validate_frm(frm) ) return; // 유효성처리       
    } 
    
    var msg = chk_itxp_evdc_amt();
    if(!(""==msg)){  alert(msg);return; }
    
    if(!confirm("수정하시겠습니까?")){return;}
    
    if( isSubmit() ) return;    // 이중처리

    param =     "AGRMT_SEQ_NO="+frm.S_AGRMT_SEQ_NO.value;
    param +=    "&AGRMT_INST_ID="+frm.S_AGRMT_INST_ID.value;
    param +=    "&PMS_ID="+frm.S_PMS_ID.value;
    param +=    "&BZ_CLAS_CD="+frm.S_BZ_CLAS_CD.value;

    //2011.08.19 자계좌이체 파리미터 추가
    var exctnStgDv = (true==document.frm.ExctnStgDv[0].checked) ? "1" : "2";
    param += "&ExctnStgDv=" + exctnStgDv;
    
    
    //세목값담기
    if(document.frm.itxp_cnt.value == 1){
        param       +=  "&ITXP_CD="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
    }else{
        for(i =0;i< frm.SelDtlsItxpCd.length;i++){
            param   +=  "&ITXP_CD="+frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].value;
        }
    }
    //세세목값담기
    if(document.frm.itxp_cnt.value == 1){
        param       +=  "&DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
    }else{
        for(i =0;i< frm.SelSubDtlsItxpCd.length;i++){
            param   +=  "&DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value;
        }       
    }
    get2post(frm, param);
    get2post(frm, "ExtcnGb="+ExtcnGb );
    
    


    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                    try{   
                        document.body.style.cursor = "wait";
                        alert("재집행요청 되었습니다.");
                        document.body.style.cursor = "auto";
                        fn_url("/t01/t12/T12_03_00.jsp");
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
                
                
    removeTempAttribute(frm);   //get2post 삭제
    
}

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
    if("00006277" == "<%=AgrmtInstId%>"){
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
    
    
/******************************************************************
 * set_evdc_amt      비목 첫번째 row에 증빙금액 세팅
 * @param
 * @return
******************************************************************/
function set_evdc_amt(){
    <%
    
    if("G00000000000002".equals(AgrmtSeqNo) && "E".equals(TrscEvdcDv)){
    %>
        fnItxpSetting('0', 'U201312243766080', 'B0202', 'B0202010', "TEST", '<%=TrnsAmt%>', '<%=Evdc_SplyAmt%>', '<%=Evdc_VatAmt%>', 'D201312243022595', '','20131224');
        jQuery("#ExtEdmsDocId_0").val("1234567890123456");
        jQuery("#EdmsDocId_0").val("1234567890123456");
        jQuery("#FileNm_0").val("스포츠센터_1.jpg\;");
        jQuery("#rchrInfo_0").val("");
        jQuery("#SelShrSorcSn_0").val("null");
        if('0' != '0'){
            fnAddRow();
        }
    <%
    }else{
    %>
        fnItxpSetting('0', 'U201312243766084', 'B0202', 'B0202005', "복사비", '<%=TrnsAmt%>', '<%=Evdc_SplyAmt%>', '<%=Evdc_VatAmt%>', 'D201312243022599', '','20131224');
        jQuery("#ExtEdmsDocId_0").val("1234567890123456");
        jQuery("#EdmsDocId_0").val("1234567890123456");
        jQuery("#FileNm_0").val("test.hwp\;");
        jQuery("#rchrInfo_0").val("");
        jQuery("#SelShrSorcSn_0").val("null");
        if('0' != '0'){
            fnAddRow();
        }
    <%
    }
    %>
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
        
        //20140321 실습환경 사업비출처 비활성 처리
        //$('.ShrSorcSn').show();
        $('.ShrSorcSn').hide();
    }else{
        tObj.options[0] = new Option("미사용",'',true,false);
        $('.ShrSorcSn').hide();
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
 * fnAddRow      테이블 로우 추가
 * @param
 * @return
******************************************************************/
function fnAddRow(){
    var tbody = jQuery("#ItxpList tbody");
    var rows = tbody.find("tr").length;
    var newRow = tbody.find("tr:last").clone(true).appendTo(tbody);
    fnControlInit(newRow, rows);
    newRow.find("span[id^=rno]").html(rows+1);
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
// 비목테이블 초기화
function fnItxpInit(){
    var tbody = jQuery("#ItxpList tbody");

    jQuery(jQuery(tbody).find("tr")).each(function(idx){
        if(idx!=0){
            jQuery(this).remove();
        }
    });
    fnControlInit(tbody.find("tr:last"), 0);
    jQuery("#SelDtlsItxpCd_0").val("");
}

// 기등록건 선택 or 입력
function fnItxpSetting(idx, buitId, dtlsIdxpCd, subDtlsItxpCd, item, useAmt, splyAmt, vatAmt, fileEvdc, adtnInfo, useDt){
    jQuery("#SelDtlsItxpCd_"+idx).val(dtlsIdxpCd);

    SelDtlsItxpCdOnChange("",idx);
    jQuery("#BuitId_"+idx).val(buitId);
    jQuery("#UseDt_"+idx).val(useDt);
    
    jQuery("#SelSubDtlsItxpCd_"+idx).val(subDtlsItxpCd);
    jQuery("#ItxpItem_"+idx).val(item);
    jQuery("#ItxpUseAmt_"+idx).val(toMoney(useAmt));
    jQuery("#ItxpSplyAmt_"+idx).val(toMoney(splyAmt));
    jQuery("#ItxpVatAmt_"+idx).val(toMoney(vatAmt));
    jQuery("#ItxpFileEvdcVal_"+idx).text(fileEvdc);
    jQuery("#ItxpAdtnInfoVal_"+idx).text(adtnInfo);

    if( null!=fileEvdc && ""!=fileEvdc ){
        jQuery("#ItxpFileEvdc_"+idx).html('<img src="/bt/bt_regist4.gif" alt="등록">');
    }
    
    // 과제중심데이타에는 인건비내역의 시작일(0번), 종료일(1번)이 없기 때문에 인건비내역가 있는 경우에도 미등록으로 표시됨.
    // 시작일(0번)이 아닌 주민등록번호(2번)으로 조건을 수정
    //if((null !=adtnInfo.split(',')[0])&&("null" !=adtnInfo.split(',')[0]) && (adtnInfo.split(',')[0]!="" )){
    if(adtnInfo.split(',').length > 3){ 
        if((null !=adtnInfo.split(',')[2])&&("null" != adtnInfo.split(',')[2]) && (adtnInfo.split(',')[2]!="" )){
            $('.ItxpAdtnInfo').show();
            jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_regist4.gif" alt="등록">');
        }       
    }
}
//-------------------------------
//카드결제방식에따른 화면구성변경
//-------------------------------
function uf_crdSetlMeth(){
    if("C"=='<%=TrscEvdcDv%>' && "1"=='<%=CrdSetlMeth%>'){
        document.getElementById("divTranInfoItem").style.display    = "none";
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
    hmpwRoleDv          = "<%=hmpwRoleDv%>";
    rcmsGrpCd           = "<%=rcmsGrpCd%>"; 

    if(rcmsGrpCd == "MR042" || rcmsGrpCd == "MR043" || rcmsGrpCd == "MR023" ){
        hmpwRoleDv = "03";
    } 
    
    useDt               = document.getElementById('UseDt_'+idx).value;

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
    
    evdcDv = frm.Evdc_Dv.value;

    if("create"==mode){
        
        //2011 신규 EDMS 연계키 생성
        //연계키생성( PMSID + 과제ID + 협약일련번호 + 협약기관 + 사용일 + 증빙구분 + 비목 + 세목 + 세세목)
        docKey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
        frm.docKey.value    =   docKey;

        // EDMS첨부파일등록호출
        edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
        
    }else{
        // EDMS첨부파일등록호출
        edmsUploadFileNew("frm", mode, EdmsDocId, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
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
            $("#EdmsDocId_"+docKeyNo).val(docKey);
            $("#FileNm_"+docKeyNo).val(docName);
            $("#ItxpFileEvdc_"+docKeyNo).html('<img src="/bt/bt_regist4.gif" alt="등록">');
        }
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
        
        if( 'E' == _evdc_dv ){
            bzRegNo = frm.BzRegNo.value;
        }else if( 'C' == _evdc_dv ){
    
        }else if( 'T' == _evdc_dv ){
            bzRegNo = frm.BzRegNo.value;
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
        $('#RcvNmChkDv_0').val('B06006');           //[RNDB06] B06006 실명조회예외세목
        uf_tran_owac2( frm, frm );
    }else{
        
        if( bzRegNo == '0000000000' ){
            $('#RcvNmChkDv_0').val('B06008');       //[RNDB06] B06008 개인거래처
            uf_tran_owac2( frm, frm );
        }else if( bzRegNo == '8888888888' ){
            $('#RcvNmChkDv_0').val('B06009');       //[RNDB06] B06009 해외거래처
            uf_tran_owac2( frm, frm );          
        }else{
            uf_tran_owac_c( bzRegNo,'', frm, frm ); //bzRegNo 값이 없으면 예금주 조회만
        }
    }

    return false;
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
    <!--  연구비사용 재실행 표 start -->

    <div class="t10 b20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="연구비사용 재실행 표" class="tbl_type03">
        <caption>
        연구비사용 재실행 표
        </caption>
        <colgroup>
        <col width="8%"/>
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
            <td class="ac"><%=StringUtil.null2void(jData.getString("SBJT_ID")) %></td>
            <td colspan="2"><%=StringUtil.null2void(jData.getString("CPCG_INST_NM")) %></td>
            <td class="ac"><%=StringUtil.null2void(jData.getString("AGRMT_INST_NM")) %></td>
            <td class="ar"><%=StringUtil.null2void(jData.getString("PRS_SBJT_STG")) %></td>
            <td class="ar"><%=StringUtil.null2void(jData.getString("ANNL")) %></td>
          </tr>
          <tr>
            <th scope="col">기관명</th>
            <th scope="col">사업자등록번호</th>
            <th scope="col">참여역할</th>
            <th scope="col">당해개발기간</th>
            <th scope="col">당해총사업비</th>
            <th scope="col">사용가능상태</th>
          </tr>
          <tr>
            <td class="ac"><%=StringUtil.null2void(jData.getString("AGRMT_INST_NM")) %></td>
            <td><%=FormatUtil.setDelim(StringUtil.null2void(jData.getString("AGRMT_INST_BZ_REG_NO")), "999-99-99999") %></td>
            <td class="ac"><%=CodeUtil.getCode("RND035",StringUtil.null2void(jData.getString("AGRMT_INST_ROLE_DV"))) %></td>
            <td class="ac"><%=FormatUtil.setDelim(jData.getString("DEV_STR_DT"), "9999.99.99")+"~"+FormatUtil.setDelim(jData.getString("DEV_END_DT"), "9999.99.99")%>(<%=DateUtil.monthsBetween(jData.getString("DEV_STR_DT"),jData.getString("DEV_END_DT"))%>개월)</td>
            <td class="ac"><%=FormatUtil.getMoneyForm(jData.getString("INST_TOTL_INST_AMT")) %></td>
            <td class="ac"><%=CodeUtil.getCode("RND139", jData.getString("EXCTN_LIMT_ST"))%></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- // 연구비사용 재실행 표 end// -->

        <form name="frm" method="post">
            <!-- 공통정보  -->
            <input type="hidden" id="S_PMS_ID"              name="S_PMS_ID"                 value="<%=StringUtil.null2void(jData.getString("PMS_ID")) %>">
            <input type="hidden" id="S_BZ_CLAS_CD"          name="S_BZ_CLAS_CD"             value="<%=StringUtil.null2void(jData.getString("BZ_CLAS_CD")) %>">
            <input type="hidden" id="S_SBJT_ID"             name="S_SBJT_ID"                value="<%=StringUtil.null2void(jData.getString("SBJT_ID")) %>">
            <input type="hidden" id="S_PRS_SBJT_STG"        name="S_PRS_SBJT_STG"           value="<%=StringUtil.null2void(jData.getString("PRS_SBJT_STG")) %>">
            <input type="hidden" id="S_ANNL"                name="S_ANNL"                   value="<%=StringUtil.null2void(jData.getString("ANNL")) %>">
            <input type="hidden" id="S_AGRMT_SEQ_NO"        name="S_AGRMT_SEQ_NO"           value="<%=StringUtil.null2void(jData.getString("AGRMT_SEQ_NO")) %>">
            <input type="hidden" id="S_AGRMT_INST_ID"       name="S_AGRMT_INST_ID"          value="<%=StringUtil.null2void(jData.getString("AGRMT_INST_ID")) %>">
            <input type="hidden" id="S_CPCG_INST_BZPR_NO"   name="S_CPCG_INST_BZPR_NO"      value="<%=StringUtil.null2void(jData.getString("CPCG_INST_BZ_REG_NO")) %>">
            <input type="hidden" id="S_AGRMT_INST_BZPR_NO"  name="S_AGRMT_INST_BZPR_NO"     value="<%=StringUtil.null2void(jData.getString("AGRMT_INST_BZ_REG_NO")) %>">
            <input type="hidden" id="S_EXCTN_STG_DV"        name="S_EXCTN_STG_DV"           value="<%=StringUtil.null2void(jData.getString("EXCTN_STG_DV")) %>">
            <input type="hidden" id="S_RCH_ACC_BNK_CD"      name="S_RCH_ACC_BNK_CD"         value="<%=StringUtil.null2void(RchExpAcctBnkCd) %>">
            <input type="hidden" id="S_RCH_ACC_NO"          name="S_RCH_ACC_NO"             value="<%=StringUtil.null2void(RchExpAcctNo) %>">
            <input type="hidden" id="S_NPRF_INST_YN"        name="S_NPRF_INST_YN"           value="<%=StringUtil.null2void(jData.getString("NPRF_INST_YN")) %>">
            <input type="hidden" id="S_MY_ACCT_TRNS_ALWN_YN"    name="S_MY_ACCT_TRNS_ALWN_YN"       value="<%=StringUtil.null2void(jData.getString("MY_ACCT_TRNS_ALWN_YN")) %>">  <!-- 내계좌이체허용여부 -->
            <input type="hidden" id="S_SBJT_NM"             name="S_SBJT_NM"                value="<%=StringUtil.null2void(jData.getString("SBJT_NM")) %>">
            <input type="hidden" id="S_BZ_CLAS_NM"          name="S_BZ_CLAS_NM"             value="<%=StringUtil.null2void(jData.getString("BZ_CLAS_NM")) %>">
            <input type="hidden" id ="ButrId"               name ="ButrId"                  value="<%=StringUtil.null2void(ButrId) %>"/>           <!-- 증빙일련번호                    -->
            <input type="hidden" id ="Evdc_Dv"              name ="Evdc_Dv"                 value="<%=StringUtil.null2void(TrscEvdcDv) %>"/>   <!-- 증빙구분                    -->
            <input type="hidden" id ="TrnsAmt"              name ="TrnsAmt"                 value="<%=StringUtil.null2void(TrnsAmt) %>"/>          <!-- 증빙_이체금액                    -->
            <input type="hidden" id ="Evdc_SumAmt"          name ="Evdc_SumAmt"             value="<%=StringUtil.null2void(TrnsAmt) %>"/>          <!-- 증빙_이체금액                    -->
            <input type="hidden" id ="Evdc_SplyAmt"         name ="Evdc_SplyAmt"            value="<%=StringUtil.null2void(Evdc_SplyAmt) %>"/>         <!-- 증빙_공급금액                    -->
            <input type="hidden" id ="Evdc_VatAmt"          name ="Evdc_VatAmt"             value="<%=StringUtil.null2void(Evdc_VatAmt) %>"/>          <!-- 증빙_부가세액                    -->

            
            <input type="hidden" id ="BzRegNo"              name ="BzRegNo"                 value="<%=StringUtil.null2void(Cus_BizNo) %>"/>        <!-- 거래처사업자번호   -->
            <input type="hidden" id="dockeyNo"              name="dockeyNo"                 value=""/>                  <!-- 선택된 증빙테이블키 -->
            <input type="hidden" id="doc_dv"                name="doc_dv"                   value=""/>                  <!-- 증빙서류/인건비내역 -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""/>                  <!-- 생성된EDMS_dockey -->
            
            <input type="hidden" id="docName"               name="docName"                  value=""/>                  <!-- 파일명 -->
            <input type="hidden" id="methodName"            name="methodName"               value=""/>                  <!-- 증빙서류 메소드 -->
            
            <input type="hidden" id="attr98"                name="attr98"                   value=""/>                  <!-- 리턴결과값(등록파일명) -->
            <input type="hidden" id="attr99"                name="attr99"                   value=""/>                  <!-- 리턴결과값(등록파일갯수) -->
            <input type="hidden" id="itxp_cnt"              name="itxp_cnt"                 value="1"/>                 <!-- 비목등록건수 -->

            <input type="hidden" id="RcvNmChkDv_0"          name="RcvNmChkDv"               value="" />
            
    <!-- 증빙구분 상세내용 표 start -->
    <div class="pop_wh b05">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="증빙구분 상세내용 표" class="tbl_type02">
        <caption>증빙구분 상세내용 표</caption>
        <colgroup>
        <col width="20%" />
        <col width="80%" />
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">증빙구분</th>
            <td class="ll"><%=ComboUtil.getComboBox("RND134", "evma_gb", "", "disabled onchange='SplrInfoDisplay();'", TrscEvdcDv, ComboUtil.OPT_NONE) %></td>
          </tr>
          </tbody>
      </table>
    </div>
    <!-- //증빙구분 상세내용 표end// -->
    <div class="guide_bu">일괄구매, 지체보상금 제외이체, 연구비잔액 부족 사용의 경우 기타증빙으로만 가능합니다.</div>
    <div class="t10"></div>
    <h3>비목등록정보</h3>
    <!-- 비목등로록정보  start -->
    <div class="t05"> 
    
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
              <col width="10%" />
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
                  <th scope="col">인건비<br />내역</th>
                  <th scope="col" class="ShrSorcSn" style="display:none;">사업비<br />출처</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="ac"><input type="checkbox" name="ItxpChk" id="ItxpChk_0" value="0" disabled="disabled" /></td>
                  <td class="ac">
                    <select title="세목" name="SelDtlsItxpCd" id="SelDtlsItxpCd_0" onchange="SelDtlsItxpCdOnChange(this);" style="width:98%" disabled="disabled">
                    <option value="">선택</option>
                    </select>
                  </td>
                  <td class="ac">
                    <select title="세세목" name="SelSubDtlsItxpCd" id="SelSubDtlsItxpCd_0" style="width:98%" onchange="SelDtlsItxpCdOnChange2(this);" disabled="disabled" >                            
                    <option value="">선택</option>
                    </select>
                  </td>
                  <td class="ac"><input type="text" name="ItxpItem" id="ItxpItem_0" value="" maxlength="100" size="20" title="품목" class="inputl" style="width:85px" disabled="disabled"/></td>
                  <td class="ac"><input type="text" name="ItxpUseAmt"  id="ItxpUseAmt_0" value="0"   size="17" readonly maxlength="15" title="사용금액" class="inputl currency" style="width:75px;background-color:#d2d2d2;" disabled="disabled"/></td>
                  <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0"   value="0"   size="17" maxlength="15"  title="공급금액" class="inputl currency" style="width:75px" disabled="disabled"/></td>
                  <td class="ac"><input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0"  value="0"   size="17" maxlength="15" title="부가세" class="inputl currency" style="width:62px" disabled="disabled"/></td>
                  <td class="ac"><span id="ItxpFileEvdcVal_0" style="display:none;"></span><a href="#dummy" class="itxpFileEvdcVal" ><span id="ItxpFileEvdc_0" onclick="fnFileEvdc(this);"><img src="/bt/bt_nonregist.gif" alt="미등록"/></span></a>
                            <input type="hidden" name="ExtEdmsDocId"        id="ExtEdmsDocId_0"     value="" /> <!-- 기존 생성된EDMS_dockey -->
                            <input type="hidden" name="EdmsDocId"           id="EdmsDocId_0"        value="" /> <!-- 생성된EDMS_dockey -->
                            <input type="hidden" name="FileNm"              id="FileNm_0"           value="" /> <!-- 리턴결과값(등록파일명) -->
                            <input type="hidden" name="file_Cnt"            id="file_Cnt_0"         value="" /> <!-- 리턴결과값(등록파일갯수) -->
                  </td>
                  <td class="ac"><span id="ItxpAdtnInfoVal_0" style="display:none;"></span><span class="ItxpAdtnInfo" id="ItxpAdtnInfo_0"><img src="/bt/bt_nonregist.gif" alt="미등록"/></span></a>
                            <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- 참여연구원정보 -->
                            <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- 참여연구원총금액 -->
                            
                            <input type="hidden" name="BuitId" id="BuitId_0" value="" />
                            <input type="hidden" name="UseDt" id="UseDt_0" value="" />
                  </td>
                  <td class="ac ShrSorcSn" style="display:none;">
                  <select title="지방비구분" name="SelShrSorcSn" id="SelShrSorcSn_0" style="width:60px;">
                    <option value="">미사용</option>
                  </select>
                  </td>
                </tr>
                </tbody>
               <tfoot>
                <tr>
                  <td colspan="2" class="sum1">공급금액 <span id="evdc_splyAmtTxt"><%=FormatUtil.getMoneyForm(Evdc_SplyAmt)%></span></td>
                  <td class="sum1">부가세액 <span id="evdc_vatAmtTxt"><%=FormatUtil.getMoneyForm(Evdc_VatAmt)%></span></td>
                  <td class="sum1">비목합계</td>
                  <td class="sum2"><span id="tot_TrnsAmt">0</span></td>
                  <td class="sum2"><span id="tot_splyAmt">0</span></td>
                  <td class="sum2"><span id="tot_vatAmt">0</span></td>
                  <td class="sum1"></td>
                  <td class="sum1"></td>
                  <td class="sum1 ShrSorcSn"></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr" style="display:none;">
                  <td colspan="2" class="sum1">공급금액차액 사유</td>
                  <td colspan="8"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn" value="<%=StringUtil.null2void(jData.getString("SPLY_AMT_DFAMT_RSN")) %>" style="width:99%" /></td>
                </tr>               
              </tfoot>
            </table>
            <!------------------------------------------------------------>
            <!----------------- 비목등록정보  데이터 END     ------------------>
            <!------------------------------------------------------------>
                
    </div>
    <!-- //비목등록정보 end// -->
    <div class="t20"></div>
    <h3>거래처정보</h3>
    <div class="t05 b20 pop_wh">
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
            <td><span id="d_SplrCoNm"><%=Cus_SplrCoNm %></span></td>
            <th scope="row">사업자등록번호</th>
            <td class="ll"><span id="d_SplrBzRegNo"><%=FormatUtil.setDelim(Cus_BizNo,"999-99-999999")%></span></td>
          </tr>
          <tr>
            <th scope="row">업태</th>
            <td><span id="d_SplrTpopNm"><%=Cus_TpOpNm %></span></td>
            <th scope="row">업종</th>
            <td class="ll"><span id="d_SplrTpbzNm"><%=Cus_TpBzNm %></span></td>
          </tr>
          <tr>
            <th scope="row">사업자주소</th>
            <td><span id="d_SplrAdr"><%=Cus_Addr %></span></td>
            <th scope="row">대표자명</th>
            <td class="ll"><span id="d_SplrReprNm"><%=Cus_ReprNm %></span></td>
          </tr>
        </tbody>
      </table>
    </div>
    <h3>계좌이체 요청항목</h3>
    <div class="ar">
      <a href="#" id="trnsInfo_0" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="자계좌이체허용기준"/></a>
    </div>
            <!-------------------------------------------------------------->
            <!---------------       계좌이체정보 데이터 BEGIN    ---------------->
            <!-------------------------------------------------------------->
            <!-- 계좌이체요청항목 테이블  시작  -->    
    <div class="t05 b10 pop_wh" id="divTranInfoItem">
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
            <th scope="row">집행구분</th>
            <td colspan="3" class="ll">
            <input type="radio" id="ExctnStgDv1" name="ExctnStgDv" value="1" onclick="exctn_ExctnStgDv_v2(this.value, '3', '<%=RchExpAcctBnkCd%>','<%=CodeUtil.getCode("BNK_CD", RchExpAcctBnkCd, false)%>', '<%=RchExpAcctNo%>','','','','<%=StringUtil.null2void(jData.getString("MY_ACCT_TRNS_ALWN_YN"))%>');" class="radio2" />
             <label for="ExctnStgDv1">타계좌이체(연구비계좌경유이체)</label> <span class="l10"></span>
              <input type="radio" id="ExctnStgDv2" name="ExctnStgDv" value="2" onclick="exctn_ExctnStgDv_v2(this.value, '3', '<%=RchExpAcctBnkCd%>','<%=CodeUtil.getCode("BNK_CD", RchExpAcctBnkCd, false)%>', '<%=RchExpAcctNo%>','<%=CodeUtil.getCode("BNK_CD", RchExpAcctBnkCd, false)%>','<%=RchExpAcctBnkCd%>','<%=RchExpAcctNo%>','<%=StringUtil.null2void(jData.getString("MY_ACCT_TRNS_ALWN_YN"))%>');" class="radio2" />
             <label for="ExctnStgDv2"> 자계좌이체(연구비계좌이체)</label> 
              <%=ComboUtil.getComboBox("RNDB03_1", "kind_TrnsRchAcc", "", "id='kind_TrnsRchAcc' style='width:135px;' ", StringUtil.null2void(jData.getString("EXCTN_KIND_DV"),"B03007"), ComboUtil.OPT_NONE,"key")  %>
            </td>
          </tr>
          <tr>
            <th scope="row"><span class="txt_orb">*</span> <label for="bank">입금계좌</label></th>
            <td><%=ComboUtil.getComboBox("BNK_CD", "RcvBnkCd", "", "style='width:50px' onchange='uf_OwacNmRst();'", StringUtil.null2void(RcvBnkCd), ComboUtil.OPT_SEL, false) %>
            <input type="text" class="inputl" onchange="uf_OwacNmRst();" style="width:90px;" name="RcvAcctNo" id="RcvAcctNo" value="<%=RcvAcctNo %>" title="" notnull colname="입금계좌(계좌번호)" datatype="N" maxlength="20" enc="on" onfocus="chkEnc();" />
             <a id="idFvrtAcct" href="javascript:uf_popup_fvrt_acct();"><img src="/bt/bt_acct01.gif" alt="자주쓰는계좌"/></a>
             <div id="idRcvBnkNm"  style="float:left;padding-top:4px;display:none;"><%=CodeUtil.getCode("BNK_CD", RchExpAcctBnkCd, false)%>&nbsp;<%=RchExpAcctNo%></div>
             <a id="idMyAcctNo" href="#dummy" class="uf_popup_my_acct" onclick="uf_popup_my_acct();" style="float:right;display:none"><img src="/bt/bt_myacctno.gif" alt="자계좌이체용계좌"/></a>
            </td>
            <th scope="row"><span class="txt_orb">*</span> <label for="part1">예금주</label></th>
            <td class="ll">
            <!-- 테스트를 위해 입력가능 하도록 설정 -->
            <input type="text"  name="OwacNm" id="OwacNm"  readonly="readonly" class="inputl" style="width:100px;background-color:#d2d2d2;" value="" title="" />
              <a href="#dummy" onclick="uf_tran_owac();"><img src="/bt/bt_acct02.gif" alt="예금주조회"/></a>
            </td>
          </tr>
          <tr>
            <th scope="row"><span class="txt_orb DynReqStar">*</span> <label for="bankbook1" style="font-size:8pt">연구비통장표시내용</label></th>
            <td><input type="text" name="WdrwPsbkPrtCtt" class="inputl" style="width:100px;" value="<%=WdrwPsbkPrtCtt %>" title="연구비통장표시내용" notnull colname="연구비통장표시내용" maxlength="12" /> (6자)</td>
            <th scope="row"><span class="txt_orb DynReqStar">*</span> <label for="bankbook2" style="font-size:8pt">거래처통장표시내용</label></th>
            <td class="ll"><input type="text" name="RcvPsbkPrtCtt" class="inputl" style="width:100px;" value="<%=RcvPsbkPrtCtt %>" title="거래처통장표시내용" notnull colname="거래처통장표시내용" maxlength="12"  /> (6자)</td>
          </tr>
          <tr>
            <th scope="row"><label for="AchvInstIndv1Cd">기관용개별코드A</label></th>
            <td><input type="text" name="AchvInstIndv1Cd" id="AchvInstIndv1Cd" class="inputl" style="ime-mode:inactive; width:200px;" value="<%=AchvInstIndv1Cd %>" title="기관용개별코드A" colname="기관용개별코드A" maxlength="20" /></td>
            <th scope="row"><label for="AchvInstIndv2Cd">기관용개별코드B</label></th>
            <td class="ll"><input type="text" name="AchvInstIndv2Cd" id="AchvInstIndv2Cd" class="inputl" style="ime-mode:inactive; width:100px;" value="<%=AchvInstIndv2Cd %>" title="기관용개별코드B" colname="기관용개별코드B" maxlength="10"  /></td>
          </tr>
          <tr>
            <th scope="row">이체금액</th>
            <td><span id="txt_trnsAmt"><%=FormatUtil.getMoneyForm(TrnsAmt) %></span></td>
            <th scope="row"><span class="txt_orb">*</span> <label for="tel">전화번호</label></th>
            <td class="ll"><input type="text" name="TelNo" class="inputl" style="width:100px;" value="<%=TelNo %>" title="전화번호" notnull colname="전화번호" datatype="N" maxlength="15" mask="-" /></td>
          </tr>
          <tr>
            <th scope="row">공급가액</th>
            <td><span id="txt_splyAmt"><%=FormatUtil.getMoneyForm(Evdc_SplyAmt) %></span></td>
            <th scope="row">부가가치세액</th>
            <td class="ll"><span id="txt_vatAmt"><%=FormatUtil.getMoneyForm(Evdc_VatAmt) %></span></td>
          </tr>
          <tr>
            <th scope="row"><span class="txt_orb">*</span> <label for="memo">지급용도</label></th>
            <td colspan="3" class="ll"><input type="text" class="inputl"  style="ime-mode:inactive; width:455px;" name="PaymUsag" value="<%=PaymUsag %>" title="지급용도" notnull colname="지급용도" maxlength="100" /></td>
          </tr>
        </tbody>
      </table>
    </div>
    
<!-- *************************  rMateGrid ************************* -->      
            <!-- 그리드 Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "157", "#FFFFFF", "transparent");
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
    <div class="action_bt">
        <div class="ar"><a href="#dummy" onclick="uf_save('R');" class="bt_action3-1" title="재실행"><span class="bt_sp">재실행</span></a> </div>
    </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- 주의사항 start -->
      <div class="guide_box">
        <p class="guide_boxt"></p>
        <div class="guide_boxc">
        <ul class="comment">
          <li>연구비사용 재실행은 [계좌이체 요청항목, 증빙서류]만 수정가능합니다.</li>
        </ul>
        <ul class="comment" id="divMyAcctTransAlwn" style="display:none;">
            <li><span style='color:graytext;'> ※ 실시간통합연구비관리시스템(RCMS) 적용에 대한 유예 신청 기업이므로 자계좌이체(연구비계좌이체)만 가능합니다.</span></li>
        </ul>        
        <p class="point_title">기관용개별코드란?</p>
        <ul class="comment">
          <li>연구기관이 본 화면에서 입력한 값을 은행에서 전산적인 거래내역을 받을때 추가정보로 내려주는 값임</li>
        </ul>
        <ul class="comment_list">
          <li>- 현재 우리은행만 서비스가능합니다.</li>
          <li>- 영문/숫자만 입력 가능합니다.</li>
        </ul>
        
      </div>
      <p class="guide_boxt"></p>
    </div>
    <!-- //주의사항 end// -->
    </form>
  </div>
<!-- //content end// -->



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
     
        });
     
     

     
     
     var cnt = 0;
     
     function gridDataLoad(){
         
         var gridValue = [];
         try{
             
             cnt = 0;
     
             gridValue[cnt++] = {"TRNS_ST":"오류","TRNS_DT":"2014-03-20 14:12:49","TRNS_AMT":"<%=TrnsAmt%>","RPRCS_TCNT":"0","FNC_LNK_RSPS_CD":"","FNC_LNK_RSPS_CTT":"[00030199] 기타오류"};
             
         }finally{
             
             gridData = gridValue;    //조회결과 JSON 값 가져오기
             rMateGridSetData();  //rMateGrid 구현
         }
         
     }
     
</script>







<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//레이아웃 설정
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"TRNS_ST\"            dataField=\"TRNS_ST\"             headerText=\"이체상태\"   width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRNS_DT\"            dataField=\"TRNS_DT\"             headerText=\"이체일시\"   width=\"120\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"            headerText=\"이체금액\"   width=\"90\"  visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RPRCS_TCNT\"         dataField=\"RPRCS_TCNT\"          headerText=\"재처리횟수\" width=\"0\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FNC_LNK_RSPS_CD\"    dataField=\"FNC_LNK_RSPS_CD\"     headerText=\"결과코드\"   width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FNC_LNK_RSPS_CTT\"   dataField=\"FNC_LNK_RSPS_CTT\"    headerText=\"결과내용\"   width=\"200\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"합계\" textAlign=\"right\" />\
                <DataGridFooterColumn labelJsFunction=\"writeCount\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
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


    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
    };
    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    gridRoot.addEventListener("layoutComplete", gridDataLoad);

};



//rMateGrid가 로딩된 후 불려질 함수를 설정합니다.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//로딩 후 rMadeGrid 출력
function rMateGridSetData() {
    //rMageGrid 초기화
    //gridApp.setData(null);

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //데이터 출력
    
    
    // 마우스 휠 이벤트 리스너를 적용합니다.
    addGridMouseWheelEventListener();

    
};


function writeCount(column) {
    collection = gridRoot.getCollection();

    return collection.getLength()+" 건";
}


function getRowCount(){
    $("#InqPrsTotlNcnt2").html(getGridRowCount_rMate());
}

</script>
<!-- **********************  rMateGrid setting END ***********************  -->





<script type="text/javascript">
    $('.currency').ForceNumericOnly();  
    uf_onLoadPage();
    var mode="";
    if("C"=='E'){
        mode="4";
    }
    exctn_ExctnStgDv_v2(mode,'3', "004",'E 은행', "555555555550", 'A 은행', "003", "10000000000", "Y");
    uf_crdSetlMeth('');     //카드결제방식에따른 화면구성변경
    //set_ExctnKind();
    
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