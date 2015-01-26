<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_40.jsp
 *   Description        : 완료비목수정팝업창
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.13                     예기해             
 *
 *  @author     예기해
 *  @Since      2014.01.13
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
String TrscEvdcDv               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TrscEvdcDv"));                        // 사업비증빙사용구분
String ButrId                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ButrId"));                        // 증빙일련번호             
String RcvPsbkPrtCtt                =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvAcctRcvCtt"));             // 연구비계좌입금통장인쇄내용      
String WdrwPsbkPrtCtt               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RchExpAcctWdrwCtt"));                 // 연구비계좌출금통장인쇄내용
String RcvBnkCd                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvBnkCd"));                      // 입금은행코드             
String RcvAcctNo                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvAcctNo"));                     // 입금계좌번호
String Evdc_SumAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TrnsAmt"));                       // 사업비사용금액            
String Evdc_SplyAmt                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UseSplyAmt"));                    // 공급금액               
String Evdc_VatAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UseVatAmt"));                     // 부가가치세액             
String PaymUsag                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"PaymUsag"));                      // 사용내역               
String TelNo                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TelNo"));                         // 전화번호               
String ExctnStgDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnStgDv"));                    // 사용단계구분                        
String AgrmtSeqNo                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));                    // 협약일련번호                  
String AgrmtInstId                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstId"));                   // 협약기관ID      
String PmsId                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"pmsId"));                         // PMS_ID                 
String AgrmtInstBzRegNo             =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstBzRegNo"));              // 협약기관사업자등록번호
String AchvInstIndv1Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv1Cd"));               // 기관용개별코드1
String AchvInstIndv2Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv2Cd"));               // 기관용개별코드2
String VatPsvApcYn                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"VatPsvApcYn"));                   // 부가세보전신청여부
String CrdSetlMeth                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnTypDv"));                    // 결제방식구분(1:집계방식/2:실시간이체방식)
String PsnlAcctUseYn                =   "";     //인건비성계좌여부
String UnfyMgntInstYn               =   "";     //협약관리기관여부

String RchExpAcctBnkCd              =   "";                 // 연구비계좌은행코드              
String RchExpAcctNo                 =   "";                 // 연구비계좌번호

String Cus_ReprNm                   =   "";                                                                             // 거래처대표자명
String Cus_BizNo                    =   "";                                                                             // 거래처사업자번호
String Cus_TpBzNm                   =   "";                                                                             // 거래처업종명
String Cus_TpOpNm                   =   "";                                                                             // 거래처업태명
String Cus_Addr                     =   "";                                                                             // 거래처사업장주소
String Cus_SplrCoNm                 =   "";                                                                             // 공급자회사명
String OwacNm                       =   "";                                                                             // 예금주명
String RcvBnkNm                     =   "";                                                                             //입금계좌은행명
String ItemData[]   ;

String hmpwRoleDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"hmpwRoleDv"));                    // 인력역할구분
String rcmsGrpCd                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"rcmsGrpCd"));                     //RCMS그룹코드 
String WRTG_DT                      =   "";                                                                             //사용일자(전자세금계산서)
String APV_DT                       =   "";                                                                             //사용일자(카드)  

        
    
JSONObject jData = new JSONObject();                //Json 생성 ( 조회결과값 담기 )
    
  

if("G00000000000004".equals(AgrmtSeqNo) && "E".equals(TrscEvdcDv)){ // 기타증빙
     PsnlAcctUseYn        = "Y";
     UnfyMgntInstYn       = "Y";
     RchExpAcctBnkCd      = "020";
     RchExpAcctNo         = "777777777770";
     Cus_ReprNm           = "바대표";
     Cus_BizNo            = "6001010000";
     Cus_TpBzNm           = "개발";
     Cus_TpOpNm           = "연구";
     Cus_Addr             = "서울특별시 종로구 종로6가 288";
     Cus_SplrCoNm         = "(주) 바 업체";
     OwacNm               = "바대표";
     RcvBnkNm             = "G 은행";
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
     jData.put("DEV_STR_DT","20130201");
     jData.put("DEV_END_DT","20140131");
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

}else if("G00000000000004".equals(AgrmtSeqNo) && "T".equals(TrscEvdcDv)){   //전자세금
    PsnlAcctUseYn        = "Y";
    UnfyMgntInstYn       = "Y";
    RchExpAcctBnkCd      = "020";
    RchExpAcctNo         = "222222222220";
    Cus_ReprNm           = "마대표";
    Cus_BizNo            = "5001010000";
    Cus_TpBzNm           = "개발";
    Cus_TpOpNm           = "연구";
    Cus_Addr             = "서울특별시 중구 남대문로4가 29";
    Cus_SplrCoNm         = "(주) 마 업체";
    OwacNm               = "마대표";
    RcvBnkNm             = "H 은행";
    hmpwRoleDv           = "";
    rcmsGrpCd            = "";
    WRTG_DT              = "20131212";
    APV_DT               = "";
    
    jData.put("AGRMT_SEQ_NO","G00000000000004");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","㈜RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","2");
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
    jData.put("DEV_STR_DT","20130201");
    jData.put("DEV_END_DT","20140131");
    jData.put("TOTL_INST_AMT","20000");
    jData.put("BUTR_ID","T201107052612956");
    jData.put("TRSC_EVDC_DV","T");
    jData.put("TRSC_PFMC_REG_DT","20110705");
    jData.put("TRSC_PFMC_REG_TM","142325");
    jData.put("SPLY_AMT_DFAMT_RSN",null);
    jData.put("ITXP_REG_YN","Y");
    jData.put("BZ_EXP_EXCTN_REG_YN","Y");
    jData.put("EXCTN_ST","B04110");
    jData.put("SPLR_CO_NM","(주)RCMS");
    jData.put("TOTL_AMT","5720");
    jData.put("USE_SPLY_AMT","5200");
    jData.put("USE_VAT_AMT","520");
    jData.put("EXCTN_KIND_DV","B03007");
    jData.put("NPRF_INST_YN","N");
    jData.put("SQBN_SPLR_EXCTN_RSN",null);
    jData.put("EXCLS_VAT_AMT_YN","N");
    jData.put("EXCTN_DV","2");

}else if("G00000000000003".equals(AgrmtSeqNo) && "C".equals(TrscEvdcDv)){   //카드
    PsnlAcctUseYn        = "Y";
    UnfyMgntInstYn       = "Y";
    RchExpAcctBnkCd      = "003";
    RchExpAcctNo         = "555555555550";
    Cus_ReprNm           = "가사장";
    Cus_BizNo            = "1001010000";
    Cus_TpBzNm           = "연구";
    Cus_TpOpNm           = "개발";
    Cus_Addr             = "인천광역시 남동구 구월동 1138";
    Cus_SplrCoNm         = "(주) 가 업체";
    OwacNm               = "가사장";
    RcvBnkNm             = "E 은행";
    hmpwRoleDv           = "";
    rcmsGrpCd            = "";
    WRTG_DT              = "";
    APV_DT               = "20120214";
    
    jData.put("AGRMT_SEQ_NO","G00000000000003");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","㈜RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","1");
    jData.put("AGRMT_INST_ROLE_DV","C");
    jData.put("BZ_EXP_ACCT_BNK_CD","003");
    jData.put("BZ_EXP_ACCT_NO","20000000000");
    jData.put("RCH_EXP_ACCT_BNK_CD","003");
    jData.put("RCH_EXP_ACCT_NO","08203000000220");
    jData.put("OWAC_NM","1111111111   ㈜RCMS");
    jData.put("INST_SBJT_PRGR_ST","10");
    jData.put("EXCTN_LIMT_ST","0");
    jData.put("EXCTN_LIMT_RSN","사업비이전(양도기관)으로 인한 집행정지");
    jData.put("MY_ACCT_TRNS_ALWN_YN","Y");
    jData.put("INST_TOTL_INST_AMT","110000");
    jData.put("AGRMT_CASH_LIM_AMT","100000");
    jData.put("PMS_ID","G01");
    jData.put("BZ_CLAS_CD","S1598");
    jData.put("BZ_CLAS_NM","RCMS 실습");
    jData.put("CPCG_INST_ID","11000001");
    jData.put("CPCG_INST_NM","한국산업기술평가관리원");
    jData.put("SBJT_ID","TEST0003");
    jData.put("SBJT_NM","RCMS 실습용 정산과제");
    jData.put("PRS_SBJT_STG","0");
    jData.put("ANNL","1");
    jData.put("DEV_STR_DT","20130301");
    jData.put("DEV_END_DT","20140228");
    jData.put("TOTL_INST_AMT","0");
    jData.put("BUTR_ID","C201203222413357");
    jData.put("TRSC_EVDC_DV","C");
    jData.put("TRSC_PFMC_REG_DT","20120322");
    jData.put("TRSC_PFMC_REG_TM","124535");
    jData.put("SPLY_AMT_DFAMT_RSN",null);
    jData.put("ITXP_REG_YN","Y");
    jData.put("BZ_EXP_EXCTN_REG_YN","Y");
    jData.put("EXCTN_ST","B04110");
    jData.put("SPLR_CO_NM","(주)RCMS");
    jData.put("TOTL_AMT","13000");
    jData.put("USE_SPLY_AMT","8000");
    jData.put("USE_VAT_AMT","5000");
    jData.put("EXCTN_KIND_DV","B03000");
    jData.put("NPRF_INST_YN","N");
    jData.put("SQBN_SPLR_EXCTN_RSN",null);
    jData.put("EXCLS_VAT_AMT_YN","N");
    jData.put("EXCTN_DV","1");

}else if("G00000000000002".equals(AgrmtSeqNo) && "C".equals(TrscEvdcDv)){   //카드
    PsnlAcctUseYn        = "Y";
    UnfyMgntInstYn       = "Y";
    RchExpAcctBnkCd      = "020";
    RchExpAcctNo         = "777777777770";
    Cus_ReprNm           = "바대표";
    Cus_BizNo            = "6001010000";
    Cus_TpBzNm           = "개발";
    Cus_TpOpNm           = "연구";
    Cus_Addr             = "서울특별시 종로구 종로6가 288";
    Cus_SplrCoNm         = "(주) 바 업체";
    OwacNm               = "바대표";
    RcvBnkNm             = "G 은행";
    hmpwRoleDv           = "";
    rcmsGrpCd            = "";
    WRTG_DT              = "";
    APV_DT               = "";
    
    jData.put("AGRMT_SEQ_NO","G00000000000002");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","㈜RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","1");
    jData.put("AGRMT_INST_ROLE_DV","C");
    jData.put("BZ_EXP_ACCT_BNK_CD","003");
    jData.put("BZ_EXP_ACCT_NO","20000000000");
    jData.put("RCH_EXP_ACCT_BNK_CD","003");
    jData.put("RCH_EXP_ACCT_NO","08203000000220");
    jData.put("OWAC_NM","1111111111   ㈜RCMS");
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
    jData.put("DEV_STR_DT","20140101");
    jData.put("DEV_END_DT","20990131");
    jData.put("TOTL_INST_AMT","0");
    jData.put("BUTR_ID","D201312192251780");
    jData.put("TRSC_EVDC_DV","E");
    jData.put("TRSC_PFMC_REG_DT","20131219");
    jData.put("TRSC_PFMC_REG_TM","155911");
    jData.put("SPLY_AMT_DFAMT_RSN",null);
    jData.put("ITXP_REG_YN","Y");
    jData.put("BZ_EXP_EXCTN_REG_YN","Y");
    jData.put("EXCTN_ST","B04110");
    jData.put("SPLR_CO_NM","(주)RCMS");
    jData.put("TOTL_AMT","10");
    jData.put("USE_SPLY_AMT","10");
    jData.put("USE_VAT_AMT","0");
    jData.put("EXCTN_KIND_DV","B03000");
    jData.put("NPRF_INST_YN","N");
    jData.put("SQBN_SPLR_EXCTN_RSN",null);
    jData.put("EXCLS_VAT_AMT_YN","N");
    jData.put("EXCTN_DV","1");

}else if("G00000000000003".equals(AgrmtSeqNo) && "T".equals(TrscEvdcDv)){   //전자증빙
    PsnlAcctUseYn        = "Y";
    UnfyMgntInstYn       = "Y";
    RchExpAcctBnkCd      = "020";
    RchExpAcctNo         = "888888888880";
    Cus_ReprNm           = "나사장";
    Cus_BizNo            = "2001010000";
    Cus_TpBzNm           = "연구";
    Cus_TpOpNm           = "개발";
    Cus_Addr             = "울산광역시 남구 신정동 646-4";
    Cus_SplrCoNm         = "(주) 나 업체";
    OwacNm               = "나사장";
    RcvBnkNm             = "B 은행";
    hmpwRoleDv           = "";
    rcmsGrpCd            = "";
    WRTG_DT              = "20131125";
    APV_DT               = "";

    
    jData.put("AGRMT_SEQ_NO","G00000000000003");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","㈜RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","1");
    jData.put("AGRMT_INST_ROLE_DV","C");
    jData.put("BZ_EXP_ACCT_BNK_CD","003");
    jData.put("BZ_EXP_ACCT_NO","20000000000");
    jData.put("RCH_EXP_ACCT_BNK_CD","003");
    jData.put("RCH_EXP_ACCT_NO","08203000000220");
    jData.put("OWAC_NM","1111111111   ㈜RCMS");
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
    jData.put("SBJT_NM","RCMS 실습용 정산과제");
    jData.put("PRS_SBJT_STG","0");
    jData.put("ANNL","3");
    jData.put("DEV_STR_DT","20130301");
    jData.put("DEV_END_DT","20140228");
    jData.put("TOTL_INST_AMT","0");
    jData.put("BUTR_ID","T201312242251924");
    jData.put("TRSC_EVDC_DV","T");
    jData.put("TRSC_PFMC_REG_DT","20131224");
    jData.put("TRSC_PFMC_REG_TM","220411");
    jData.put("SPLY_AMT_DFAMT_RSN",null);
    jData.put("ITXP_REG_YN","Y");
    jData.put("BZ_EXP_EXCTN_REG_YN","Y");
    jData.put("EXCTN_ST","B04110");
    jData.put("SPLR_CO_NM","(주)RCMS");
    jData.put("TOTL_AMT","414502");
    jData.put("USE_SPLY_AMT","376820");
    jData.put("USE_VAT_AMT","37682");
    jData.put("EXCTN_KIND_DV","B03000");
    jData.put("NPRF_INST_YN","N");
    jData.put("SQBN_SPLR_EXCTN_RSN",null);
    jData.put("EXCLS_VAT_AMT_YN","N");
    jData.put("EXCTN_DV","1");
        
}else if(!"".equals(AgrmtSeqNo) && "E".equals(TrscEvdcDv)){ // 기타증빙
       PsnlAcctUseYn        = "Y";
       UnfyMgntInstYn       = "Y";
       RchExpAcctBnkCd      = "020";
       RchExpAcctNo         = "888888888880";
       Cus_ReprNm           = "나사장";
       Cus_BizNo            = "2001010000";
       Cus_TpBzNm           = "연구";
       Cus_TpOpNm           = "개발";
       Cus_Addr             = "울산광역시 남구 신정동 646-4";
       Cus_SplrCoNm         = "(주) 나 업체";
       OwacNm               = "나사장";
       RcvBnkNm             = "B 은행";
       hmpwRoleDv           = "";
       rcmsGrpCd            = "";
       WRTG_DT              = "";
       APV_DT               = "";
    
    
    jData.put("AGRMT_SEQ_NO","G00000000000002");
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
    jData.put("DEV_STR_DT","20140101");
    jData.put("DEV_END_DT","20990131");
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

}else if(!"".equals(AgrmtSeqNo) && "T".equals(TrscEvdcDv)){   //전자세금
   PsnlAcctUseYn        = "Y";
   UnfyMgntInstYn       = "Y";
   RchExpAcctBnkCd      = "020";
   RchExpAcctNo         = "888888888880";
   Cus_ReprNm           = "이상황";
   Cus_BizNo            = "2001010000";
   Cus_TpBzNm           = "연구";
   Cus_TpOpNm           = "개발";
   Cus_Addr             = "울산광역시 남구 신정동 646-4";
   Cus_SplrCoNm         = "(주) 나 업체";
   OwacNm               = "나사장";
   RcvBnkNm             = "B 은행";
   hmpwRoleDv           = "";
   rcmsGrpCd            = "";
   WRTG_DT              = "20130510";
   APV_DT               = "";
   
   jData.put("AGRMT_SEQ_NO","G00000000000002");
   jData.put("AGRMT_INST_ID","10112249");
   jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
   jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
   jData.put("AGRMT_INST_NM","㈜RCMS");
   jData.put("CPCG_INST_BZ_REG_NO","1111111111");
   jData.put("EXCTN_STG_DV","2");
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
   jData.put("DEV_STR_DT","20140101");
   jData.put("DEV_END_DT","20990131");
   jData.put("TOTL_INST_AMT","20000");
   jData.put("BUTR_ID","T201107052612956");
   jData.put("TRSC_EVDC_DV","T");
   jData.put("TRSC_PFMC_REG_DT","20110705");
   jData.put("TRSC_PFMC_REG_TM","142325");
   jData.put("SPLY_AMT_DFAMT_RSN",null);
   jData.put("ITXP_REG_YN","Y");
   jData.put("BZ_EXP_EXCTN_REG_YN","Y");
   jData.put("EXCTN_ST","B04110");
   jData.put("SPLR_CO_NM","(주)RCMS");
   jData.put("TOTL_AMT","5720");
   jData.put("USE_SPLY_AMT","5200");
   jData.put("USE_VAT_AMT","520");
   jData.put("EXCTN_KIND_DV","B03007");
   jData.put("NPRF_INST_YN","N");
   jData.put("SQBN_SPLR_EXCTN_RSN",null);
   jData.put("EXCLS_VAT_AMT_YN","N");
   jData.put("EXCTN_DV","2");

}else if(!"".equals(AgrmtSeqNo) && "C".equals(TrscEvdcDv)){   //카드
    PsnlAcctUseYn        = "Y";
    UnfyMgntInstYn       = "Y";
    RchExpAcctBnkCd      = "020";
    RchExpAcctNo         = "30030300000";
    Cus_ReprNm           = "다대표";
    Cus_BizNo            = "3001010000";
    Cus_TpBzNm           = "연구";
    Cus_TpOpNm           = "개발";
    Cus_Addr             = "세종특별자치시 조치원읍 신흥리 123";
    Cus_SplrCoNm         = "(주) 다 업체";
    OwacNm               = "다대표";
    RcvBnkNm             = "C 은행";
    hmpwRoleDv           = "";
    rcmsGrpCd            = "";
    WRTG_DT              = "";
    
    jData.put("AGRMT_SEQ_NO","G00000000000002");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","㈜RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","1");
    jData.put("AGRMT_INST_ROLE_DV","C");
    jData.put("BZ_EXP_ACCT_BNK_CD","003");
    jData.put("BZ_EXP_ACCT_NO","20000000000");
    jData.put("RCH_EXP_ACCT_BNK_CD","003");
    jData.put("RCH_EXP_ACCT_NO","08203000000220");
    jData.put("OWAC_NM","1111111111   ㈜RCMS");
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
    jData.put("DEV_STR_DT","20140101");
    jData.put("DEV_END_DT","20990131");
    jData.put("TOTL_INST_AMT","0");
    jData.put("BUTR_ID","D201312192251780");
    jData.put("TRSC_EVDC_DV","E");
    jData.put("TRSC_PFMC_REG_DT","20131219");
    jData.put("TRSC_PFMC_REG_TM","155911");
    jData.put("SPLY_AMT_DFAMT_RSN",null);
    jData.put("ITXP_REG_YN","Y");
    jData.put("BZ_EXP_EXCTN_REG_YN","Y");
    jData.put("EXCTN_ST","B04110");
    jData.put("SPLR_CO_NM","(주)RCMS");
    jData.put("TOTL_AMT","10");
    jData.put("USE_SPLY_AMT","10");
    jData.put("USE_VAT_AMT","0");
    jData.put("EXCTN_KIND_DV","B03000");
    jData.put("NPRF_INST_YN","N");
    jData.put("SQBN_SPLR_EXCTN_RSN",null);
    jData.put("EXCLS_VAT_AMT_YN","N");
    jData.put("EXCTN_DV","1");

}


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
    .dycell {display:none;}
    .ItxpAdtnInfo {display:none;}
    .inputedit {background-color:#F0F4F9;}
</style>
<script type="text/javascript">

var argMtSeqNo = "<%=AgrmtSeqNo%>";
var trscEvdcDv = "<%=TrscEvdcDv%>";

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
function DisplayDivMyAcctTransAlwn(){}
/******************************************************************
 * set_evdc_amt      비목 첫번째 row에 증빙금액 세팅
 * @param
 * @return
******************************************************************/
function set_evdc_amt(){
<%
    if("G00000000000004".equals(AgrmtSeqNo) && "E".equals(TrscEvdcDv)){ // 기타증빙
%>
fnItxpSetting('0', 'E201005262907595','U201005264759789','B0202', 'B0202001', "출장비", '100', '100'
        , '0', '', '','20100526','125701','1','B16000'
        ,'','0');
jQuery("#EvdcDcmtCmadId_0").val("D201301211195678");
jQuery("#ExtEdmsDocId_0").val("");
jQuery("#EdmsDocId_0").val("");
jQuery("#FileNm_0").val("");
jQuery("#rchrInfo_0").val("");
jQuery("#SelShrSorcSn_0").val("");
//기타증빙예외 인경우 비목 수정 불가 및 삭제 불가
if( '' != '' ){
    $("#ItxpChk_0" ).attr('disabled',true);
    $("#SelDtlsItxpCd_0" ).attr('disabled',true);
    $("#SelSubDtlsItxpCd_0" ).attr('disabled',true);
}
if('0' != '0'){
    fnAddRow();
}
//기타증빙예외
$("#etcimpex_0").hide();
if( 'E' == frm.Evdc_Dv.value ){
    for(var i = 0 ; i < EtcImplItxpCd.length; i++){
        if( EtcImplItxpCd[i] == 'B0202001' ){
            $("#etcimpex_0").show();
            $("#EtcEvdcExcCd_0").val('');
            $("#EtcEvdcExcNo_0").val('');
            break;
        }
    }
}
<%
    }else if("G00000000000004".equals(AgrmtSeqNo) && "T".equals(TrscEvdcDv)){   //전자세금
%>
fnItxpSetting('0', 'T201107052612956','U201107054298084','B0202', 'B0202005', "111", '5720', '5200'
        , '520', 'P20110705142755-G00000000000004-10112249', '','20110705','142325','1','B16000'
        ,'','0');
jQuery("#EvdcDcmtCmadId_0").val("D201301211195686");
jQuery("#ExtEdmsDocId_0").val("P20110705142755-G00000000000004-10112249");
jQuery("#EdmsDocId_0").val("P20110705142755-G00000000000004-10112249");
jQuery("#FileNm_0").val("ETAS 장비류 3종 지출결의서_130711.pdf\;INCA Software 구입 품의.pdf\;품의서-NI 멤버십 교육 프로그램.pdf\;");
jQuery("#rchrInfo_0").val("");
jQuery("#SelShrSorcSn_0").val("");
//기타증빙예외 인경우 비목 수정 불가 및 삭제 불가
if( '' != '' ){
    $("#ItxpChk_0" ).attr('disabled',true);
    $("#SelDtlsItxpCd_0" ).attr('disabled',true);
    $("#SelSubDtlsItxpCd_0" ).attr('disabled',true);
}
if('0' != '0'){
    fnAddRow();
}
//기타증빙예외
$("#etcimpex_0").hide();
if( 'E' == frm.Evdc_Dv.value ){
    for(var i = 0 ; i < EtcImplItxpCd.length; i++){
        if( EtcImplItxpCd[i] == 'B0202005' ){
            $("#etcimpex_0").show();
            $("#EtcEvdcExcCd_0").val('');
            $("#EtcEvdcExcNo_0").val('');
            break;
        }
    }
}

<%
    }else if("G00000000000003".equals(AgrmtSeqNo) && "C".equals(TrscEvdcDv)){   //카드
%>
fnItxpSetting('0', 'C201203222413357','U201203224333611','B0202', 'B0202021', "1111112", '13000', '8000'
        , '5000', '1332382736702300', '','20120322','124535','1','B16000'
        ,'','0');
jQuery("#EvdcDcmtCmadId_0").val("D201301211195651");
jQuery("#ExtEdmsDocId_0").val("1332382736702300");
jQuery("#EdmsDocId_0").val("1332382736702300");
jQuery("#FileNm_0").val("20120312000391_1.jpg\;");
jQuery("#rchrInfo_0").val("");
jQuery("#SelShrSorcSn_0").val("");
//기타증빙예외 인경우 비목 수정 불가 및 삭제 불가
if( '' != '' ){
    $("#ItxpChk_0" ).attr('disabled',true);
    $("#SelDtlsItxpCd_0" ).attr('disabled',true);
    $("#SelSubDtlsItxpCd_0" ).attr('disabled',true);
}
if('0' != '0'){
    fnAddRow();
}
//기타증빙예외
$("#etcimpex_0").hide();
if( 'E' == frm.Evdc_Dv.value ){
    for(var i = 0 ; i < EtcImplItxpCd.length; i++){
        if( EtcImplItxpCd[i] == 'B0202021' ){
            $("#etcimpex_0").show();
            $("#EtcEvdcExcCd_0").val('');
            $("#EtcEvdcExcNo_0").val('');
            break;
        }
    }
}

<%
    }else if("G00000000000003".equals(AgrmtSeqNo) && "C".equals(TrscEvdcDv)){   //카드
%>
fnItxpSetting('0', 'D201312192251780','U201312193765961','B0201', 'B0201001', "품목-B0201001", '10', '10'
        , '0', 'P20130129155912-00001-G00000000000002-10112249', '','20130129','155911','1','B16000'
        ,'','N');
jQuery("#EvdcDcmtCmadId_0").val("D201301293015470");
jQuery("#ExtEdmsDocId_0").val("P20130129155912-00001-G00000000000002-10112249");
jQuery("#EdmsDocId_0").val("P20130129155912-00001-G00000000000002-10112249");
jQuery("#FileNm_0").val("201301290000100001-00001.hwp\;");
jQuery("#rchrInfo_0").val("");
jQuery("#SelShrSorcSn_0").val("");
//기타증빙예외 인경우 비목 수정 불가 및 삭제 불가
if( '' != '' ){
    $("#ItxpChk_0" ).attr('disabled',true);
    $("#SelDtlsItxpCd_0" ).attr('disabled',true);
    $("#SelSubDtlsItxpCd_0" ).attr('disabled',true);
}
if('0' != '0'){
    fnAddRow();
}
//기타증빙예외
$("#etcimpex_0").hide();
if( 'E' == frm.Evdc_Dv.value ){
    for(var i = 0 ; i < EtcImplItxpCd.length; i++){
        if( EtcImplItxpCd[i] == 'B0201001' ){
            $("#etcimpex_0").show();
            $("#EtcEvdcExcCd_0").val('');
            $("#EtcEvdcExcNo_0").val('');
            break;
        }
    }
}

<%
    }else if("G00000000000003".equals(AgrmtSeqNo) && "T".equals(TrscEvdcDv)){   //전자증빙
%>
fnItxpSetting('0', 'T201312242251924','U201312243766109','B0201', 'B0201001', "테스트", '414502', '376820'
        , '37682', '1387889455473005', '','20131224','220411','1','B16000'
        ,'','N');
jQuery("#EvdcDcmtCmadId_0").val("D201312243022617");
jQuery("#ExtEdmsDocId_0").val("1387889455473005");
jQuery("#EdmsDocId_0").val("1387889455473005");
jQuery("#FileNm_0").val("1차회의내용1.pptx\;");
jQuery("#rchrInfo_0").val("");
jQuery("#SelShrSorcSn_0").val("");
//기타증빙예외 인경우 비목 수정 불가 및 삭제 불가
if( '' != '' ){
    $("#ItxpChk_0" ).attr('disabled',true);
    $("#SelDtlsItxpCd_0" ).attr('disabled',true);
    $("#SelSubDtlsItxpCd_0" ).attr('disabled',true);
}
if('0' != '0'){
    fnAddRow();
}
//기타증빙예외
$("#etcimpex_0").hide();
if( 'E' == frm.Evdc_Dv.value ){
    for(var i = 0 ; i < EtcImplItxpCd.length; i++){
        if( EtcImplItxpCd[i] == 'B0201001' ){
            $("#etcimpex_0").show();
            $("#EtcEvdcExcCd_0").val('');
            $("#EtcEvdcExcNo_0").val('');
            break;
        }
    }
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
        //20140331 사업비출처 비활성
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
    if(document.frm.SelSubDtlsItxpCd.value == "B0206006"){
        var todate = new Date().getDate();
        var cookieValue = getCookie("cookie_P01_31_00.jsp");

        if(cookieValue==todate) return false;

        var frm = document.frm;
        var url = "/pop/T01_31_00.jsp";

        uf_frmNewWinNs(frm, url, 'NEW_ITXP_GUIDE', 800, 700);
        removeTempAttribute(frm);
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
                    <%-- 
                    //edmsDeleteItemRev("frm",  "delete", $("#EdmsDocId_" + $(this).index() ).val(), "SMTEST", "<%=hmpwRoleDv%>", "<%=edms_Inf_Gateway%>")
                    edmsDeleteItemRev("frm",  "delete", $("#EdmsDocId1_" + $(this).index() ).val(), "SMTEST", hmpwRoleDv, "http://61.41.119.163/rcmsConnect.do")
                     --%>
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
function fnItxpSetting(idx, butrId, buitId, dtlsIdxpCd, subDtlsItxpCd, item, useAmt, splyAmt, vatAmt, edmsDocId, adtnInfo, itxpdt, itxptm, itxpseq,lstIsptSt,lstIsptRslSn,lstIsptAfthUpdYn){
    jQuery("#SelDtlsItxpCd_"+idx).val(dtlsIdxpCd);

    SelDtlsItxpCdOnChange("",idx);
    
    jQuery("#ButrId_"           +idx).val(butrId);
    jQuery("#BuitId_"           +idx).val(buitId);

    jQuery("#SelSubDtlsItxpCd_"+idx).val(subDtlsItxpCd);
    jQuery("#ItxpItem_"+idx).val(item);
    jQuery("#ItxpUseAmt_"+idx).val(toMoney(useAmt));
    jQuery("#rchrAmt_"+idx).val(toMoney(useAmt));
    jQuery("#ItxpSplyAmt_"+idx).val(toMoney(splyAmt));
    jQuery("#ItxpVatAmt_"+idx).val(toMoney(vatAmt));
    jQuery("#ItxpFileEvdcVal_"+idx).text(edmsDocId);
    jQuery("#ItxpAdtnInfoVal_"+idx).text(adtnInfo);
    
    
    // 2012.06.15 : 이기영 - 상시점검 관련 추가
    jQuery("#USEREGDT_"+idx).val(itxpdt);   
    jQuery("#USEREGTM_"+idx).val(itxptm);
    jQuery("#ITXPREGSEQ_"+idx).val(itxpseq);
    
    jQuery("#LSTISPTST_"+idx).val(lstIsptSt);           /* 최종점검상태[RNDB15] */
    jQuery("#LSTISPTRSLTSN_"+idx).val(lstIsptRslSn);      /* 최종점검결과순번 */
    jQuery("#LSTISPTAFTHUPDYN_"+idx).val(lstIsptAfthUpdYn);  /* 최종점검이후변경여부 */
    // 2012.06.15 : 이기영 - 상시점검 관련 추가
    
    //2012.12.14 김정수 - 부가세보전신청전이고 카드와 기타의 경우 부가세 변경이 가능하도록 설정
    jQuery("#ItxpVatAmt_"+idx).attr('readonly','readonly');
    if( "N"==frm.VatPsvApcYn.value && "T"!=frm.Evdc_Dv.value){
        jQuery("#ItxpVatAmt_"+idx).attr('readonly','');
    }
    
    //전자세금계산서는 수정 불가
    if( "T" == frm.Evdc_Dv.value ){
        jQuery("#ItxpUseAmt_"+idx).attr('disabled',true);
        jQuery("#ItxpSplyAmt_"+idx).attr('disabled',true);
        jQuery("#ItxpVatAmt_"+idx).attr('disabled',true);
    }

    if( null != edmsDocId && edmsDocId != "" ){
        jQuery("#ItxpFileEvdc_"+idx).html('<img src="/bt/bt_regist4.gif" alt="증빙등록">');
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
    var edmsDocId = "";
    
    if(""!=$("#EdmsDocId_"+tObjIdx).val()){
        mode = "update";
        edmsDocId = $("#EdmsDocId_"+tObjIdx).val();
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
    result = openModalNs(url, frm, "dialogWidth:800px; dialogHeight:500px; scroll:no;");
    
    if(typeof result != "undefined"){
        if(result.length > 20){
            $("#ItxpAdtnInfo_"+tObjIdx).html('<img src="/bt/bt_regist4.gif" alt="등록">');
            $("#rchrInfo_"+tObjIdx).val(result);            //참여연구원정보 문자열(연구원구분자 "|" 상세정보 구분자",")
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
    hmpwRoleDv          = "<%=hmpwRoleDv%>";
    rcmsGrpCd           = "<%=rcmsGrpCd%>"; 

    if(rcmsGrpCd == "MR042" || rcmsGrpCd == "MR043" || rcmsGrpCd == "MR023" ){
        hmpwRoleDv = "03";
    } 
    
    evdcDv              = frm.Evdc_Dv.value;
    if(frm.Evdc_Dv.value == "T"){
        useDt           = "<%=WRTG_DT%>";
    }else if(frm.Evdc_Dv.value == "C"){
        useDt           = "<%=APV_DT%>";
    }else if(frm.Evdc_Dv.value == "E"){
        <%  Calendar today = Calendar.getInstance();
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
        
        //alert(mode);
        //alert(edmsDocId);
        //alert(usrId);
        //alert(hmpwRoleDv);
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
            $("#EdmsDocId_"+docKeyNo).val(docKey);
            $("#FileNm_"+docKeyNo).val(docName);
            $("#ItxpFileEvdc_"+docKeyNo).html('<img src="/bt/bt_regist4.gif" alt="등록">');
        }
    }
}
/******************************************************************
 * chk_itxp_evdc_rst_amt    비목등록금액과 증빙금액 일치여부 체크
 * @param
 * @return
 * @author soneunjun
******************************************************************/
function chk_itxp_evdc_rst_amt(){
    var frm =   document.frm;
    var tbody = jQuery("#ItxpList tbody");
    var rows = tbody.find("tr").length;
    var tot_useAmt = 0,tot_splyAmt = 0,tot_vatAmt = 0;
    var msg =   "",return_msg   =   "";
    //비목등록금액 합계
    for(i=0;i<rows;i++){
        tot_useAmt  =   Number(tot_useAmt)+Number($("#ItxpUseAmt_"+i).val().replace(/,/gi,""));
        tot_splyAmt =   Number(tot_splyAmt)+Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        tot_vatAmt  =   Number(tot_vatAmt)+Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
    }
    
    
    if( "C" == frm.Evdc_Dv.value ){
        //2012.11.26 공급금액이 일치하는경우에 금액 체크(전자세금계산서의 경우 공급금액 정보를 수정할 수 있음)
        if( frm.Evdc_SplyAmt.value == tot_splyAmt )
        {
            if(tot_useAmt != frm.Evdc_SumAmt.value ){   
                return_msg  = "비목금액의 합계금액이 등록된 증빙의 합계금액("+toMoney(frm.Evdc_SumAmt.value)+")과 일치하지 않습니다.";
                return return_msg;
            }else if(tot_splyAmt != Number(frm.Evdc_SplyAmt.value) ){
                return_msg  = "비목금액의 공급금액이 등록된 증빙의 공급금액("+toMoney(frm.Evdc_SplyAmt.value)+")과 일치하지 않습니다.";
                return return_msg;
            }else if(tot_vatAmt != Number(frm.Evdc_VatAmt.value) ){
                return_msg  = "비목금액의 부가세금액이 등록된 증빙의 부가세금액("+toMoney(frm.Evdc_VatAmt.value)+")과 일치하지 않습니다.";
                return return_msg;
            }
        }else{
            if( tot_useAmt != frm.Evdc_SumAmt.value ){  
                return_msg  ="비목금액의 합계금액이 등록된 증빙의 합계금액("+toMoney(frm.Evdc_SumAmt.value)+")과 일치하지 않습니다.";
                return return_msg;
            }           
        }
    }else if(("T"==frm.Evdc_Dv.value) ){
        
        if( tot_splyAmt == frm.Evdc_SplyAmt.value ){
            if(tot_useAmt != frm.Evdc_SumAmt.value){
                return_msg  ="비목금액의 합계금액이 등록된 증빙의 합계금액("+toMoney(frm.Evdc_SumAmt.value)+")과 일치하지 않습니다.";
                return return_msg;
            }else if(tot_vatAmt != frm.Evdc_VatAmt.value){
                return_msg  ="비목금액의 부가세금액이 등록된 증빙의 부가세금액("+toMoney(frm.Evdc_VatAmt.value)+")과 일치하지 않습니다.";
                return return_msg;
            }
        }else{
            if(tot_useAmt != Number(frm.Evdc_SumAmt.value) ){
                return_msg  ="비목금액의 합계금액이 등록된 증빙의 합계금액("+toMoney(frm.Evdc_SumAmt.value)+")과 일치하지 않습니다.";
                return return_msg;
            }else if( $('#ExclsVatAmtYn').val() == 'N' && tot_splyAmt != Number(frm.Evdc_SplyAmt.value) ){  
                return_msg  ="비목금액의 공급금액이 등록된 증빙의 공급금액("+toMoney(frm.Evdc_SplyAmt.value)+")과 일치하지 않습니다.";
                return return_msg;
            }
        }
    //기타, 카드는 합산금액만 일치하면 등록이 가능함(공급금액,부가세액 변경 가능)
    }else if( "E"==frm.Evdc_Dv.value ){
        if(tot_useAmt != frm.Evdc_SumAmt.value){
            return_msg  ="비목금액의 합계금액이 등록된 증빙의 합계금액과 일치하지 않습니다.";
            return return_msg;
        }
    }else{
        alert("증빙 미등록 상태입니다.");
    }
    return return_msg;
}

/******************************************************************
 * uf_Rsltitxp_update       계획/증빙/비목저장
 * @param
 * @return
******************************************************************/
function uf_Rsltitxp_update(){
    var frm     =   document.frm;
    var param,target_url;

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
        
        // 2011.10.19 태동현 : 부가세가 공급금액을 초과하는 경우가 있기 때문에 로직 삭제
        // 2011.09.16 태동현 : 부가세의 최대 설정 금액을 공급금액의 50% 까지로 함 (감리로 인한 수정사항)
        //var splyAmt   = Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        //var vatAmt    = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
        
        //if(splyAmt < vatAmt*2){
        //  alert("부가세의 최대 설정 금액은 공급금액의 50%까지 입니다.");
        //  $("#ItxpVatAmt_"+i).focus();
        //  return false;
        //}
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
                if((null==frm.EdmsDocId[i].value || ""==frm.EdmsDocId[i].value)){
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
                        alert("인건비내역을 등록해주세요.");
                        return;
                    }else{
                        if(frm.rchrAmt[i].value.replace(/,/gi,"") != frm.ItxpUseAmt[i].value.replace(/,/gi,"")){
                            alert("비목금액의 합계와 등록된 인건비내역의 금액과 일치하지 않습니다.");
                            return;
                        }
                    }
                }
            }
        }else{
            if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                if(null==frm.rchrInfo.value || ""==frm.rchrInfo.value){
                    alert("인건비내역을 등록해주세요.");
                    return;
                }else{
                    if(frm.rchrAmt.value.replace(/,/gi,"") != frm.ItxpUseAmt.value.replace(/,/gi,"")){
                        alert("비목금액의 합계와 등록된 인건비내역의 금액과 일치하지 않습니다.");
                        return;
                    }
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
    
    
    if("C"!=frm.Evdc_Dv.value){
        if( frm.OwacNm.value == "" ){
            alert("예금주조회를 해주십시요.");
            return;
        }   
    }
    
    
    var msg = chk_itxp_evdc_rst_amt();
    if(!(""==msg)){  alert(msg);return; }       

    
//  if("C"!=frm.Evdc_Dv.value){
//      //-----------------------------------
//      //  계좌이체 요청항목 유효성 검사
//      //-----------------------------------
//      if(""==frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value){
//          alert("필수항목은 반드시 선택하셔야 합니다.\r\n\r\n* 필수선택 항목 : 입금계좌(은행)");
//          frm.RcvBnkCd.focus();
//          return;
//      }
//      if(! validate_frm(frm) ) return; // 유효성처리       
//  } 

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
    
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                    try{   
                        
                        reset_submit();
                        alert("수정되었습니다.");
                        self.close();
                        
                    }finally{
                        opener.uf_search();
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
    
    removeTempAttribute(frm);
    
}
//-------------------------------
//카드결제방식에따른 화면구성변경
//-------------------------------
function uf_crdSetlMeth(){
    if("C"=='<%=TrscEvdcDv%>' && "1"=='<%=CrdSetlMeth%>'){
        document.getElementById("divTranInfoItem").style.display    = "none";
    }
}


</script>



<div id="body">
  <!-- content start -->
  <div id="content">
    <div class="t10"></div>
    <!--  비목등록내역 상세내용 표 start -->
    <div class="t10 b20 pop_wh">
        <!-------------------------------------------------------------------------------->
        <!--    과제상세표시박스 공통부 시작 -->
        <!-------------------------------------------------------------------------------->
        <%@ include file="/inc/sbjt_info_pop.jsp" %>                                                                                                                
        <!-------------------------------------------------------------------------------->
        <!--    과제상세표시박스 공통부 끝 -->
        <!-------------------------------------------------------------------------------->    
      
    </div>
    <!-- // 비목등록내역 상세내용 표 end// -->

        <form name="frm" id="frm" method="post">
            <!-- 공통정보  -->
            <input type="hidden" id="S_PMS_ID"              name="S_PMS_ID"                 value="<%=StringUtil.null2void(jData.getString("PMS_ID")) %>"/>
            <input type="hidden" id="S_BZ_CLAS_CD"          name="S_BZ_CLAS_CD"             value="<%=StringUtil.null2void(jData.getString("BZ_CLAS_CD")) %>"/>
            <input type="hidden" id="S_SBJT_ID"             name="S_SBJT_ID"                value="<%=StringUtil.null2void(jData.getString("SBJT_ID")) %>"/>
            <input type="hidden" id="S_PRS_SBJT_STG"        name="S_PRS_SBJT_STG"           value="<%=StringUtil.null2void(jData.getString("PRS_SBJT_STG")) %>"/>
            <input type="hidden" id="S_ANNL"                name="S_ANNL"                   value="<%=StringUtil.null2void(jData.getString("ANNL")) %>"/>
            <input type="hidden" id="S_AGRMT_SEQ_NO"        name="S_AGRMT_SEQ_NO"           value="<%=StringUtil.null2void(jData.getString("AGRMT_SEQ_NO")) %>"/>
            <input type="hidden" id="S_AGRMT_INST_ID"       name="S_AGRMT_INST_ID"          value="<%=StringUtil.null2void(jData.getString("AGRMT_INST_ID")) %>"/>
            <input type="hidden" id="S_CPCG_INST_BZPR_NO"   name="S_CPCG_INST_BZPR_NO"      value="<%=StringUtil.null2void(jData.getString("CPCG_INST_BZ_REG_NO")) %>"/>
            <input type="hidden" id="S_AGRMT_INST_BZPR_NO"  name="S_AGRMT_INST_BZPR_NO"     value="<%=StringUtil.null2void(jData.getString("AGRMT_INST_BZ_REG_NO")) %>"/>
            <input type="hidden" id="S_EXCTN_STG_DV"        name="S_EXCTN_STG_DV"           value="<%=StringUtil.null2void(jData.getString("EXCTN_STG_DV")) %>"/>
            <input type="hidden" id="S_RCH_ACC_BNK_CD"      name="S_RCH_ACC_BNK_CD"         value="<%=StringUtil.null2void(jData.getString("RCH_EXCTN_ACCT_BNK_CD")) %>"/>
            <input type="hidden" id="S_RCH_ACC_NO"          name="S_RCH_ACC_NO"             value="<%=StringUtil.null2void(jData.getString("RCH_EXP_ACCT_NO")) %>"/>
            <input type="hidden" id="S_SBJT_NM"             name="S_SBJT_NM"                value="<%=StringUtil.null2void(jData.getString("SBJT_NM")) %>"/>
            <input type="hidden" id="S_BZ_CLAS_NM"          name="S_BZ_CLAS_NM"             value="<%=StringUtil.null2void(jData.getString("BZ_CLAS_NM")) %>"/>
            <input type="hidden" id="S_NPRF_INST_YN"        name="S_NPRF_INST_YN"           value="<%=StringUtil.null2void(jData.getString("NPRF_INST_YN")) %>"/>
            <input type="hidden" id="S_MY_ACCT_TRNS_ALWN_YN"    name="S_MY_ACCT_TRNS_ALWN_YN"       value="<%=StringUtil.null2void(jData.getString("MY_ACCT_TRNS_ALWN_YN")) %>"/>  <!-- 내계좌이체허용여부 -->
            <input type="hidden" id="S_UNFY_MGNT_INST_YN"   name="S_UNFY_MGNT_INST_YN"      value="<%=StringUtil.null2void(UnfyMgntInstYn) %>"/>
            <input type="hidden" id ="ButrId"               name ="ButrId"                  value="<%=StringUtil.null2void(ButrId) %>"/>               <!-- 사업비거래실적ID                    -->
            <input type="hidden" id ="Evdc_Dv"              name ="Evdc_Dv"                 value="<%=StringUtil.null2void(TrscEvdcDv) %>"/>           <!-- 증빙구분                    -->
            <input type="hidden" id ="Evdc_SumAmt"          name ="Evdc_SumAmt"             value="<%=StringUtil.null2void(Evdc_SumAmt) %>"/>          <!-- 증빙_이체금액                    -->
            <input type="hidden" id ="Evdc_SplyAmt"         name ="Evdc_SplyAmt"            value="<%=StringUtil.null2void(Evdc_SplyAmt) %>"/>         <!-- 증빙_공급금액                    -->
            <input type="hidden" id ="Evdc_VatAmt"          name ="Evdc_VatAmt"             value="<%=StringUtil.null2void(Evdc_VatAmt) %>"/>          <!-- 증빙_부가세액                    -->
            <input type="hidden" id ="Cus_SplrCoNm"         name ="Cus_SplrCoNm"            value="<%=StringUtil.null2void(Cus_SplrCoNm) %>"/>         <!-- 공급자회사명                    -->
            <input type="hidden" id ="VatPsvApcYn"          name="VatPsvApcYn"              value="<%=StringUtil.null2void(VatPsvApcYn) %>"/>          <!--  부가세보전신청여부 -->
            <input type="hidden" id="dockeyNo"              name="dockeyNo"                 value=""/>                  <!-- 선택된 증빙테이블키 -->
            <input type="hidden" id="doc_dv"                name="doc_dv"                   value=""/>                  <!-- 증빙서류/인건비내역 -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""/>                  <!-- 생성된EDMS_dockey -->
            <input type="hidden" id="docName"               name="docName"                  value=""/>                  <!-- 리턴결과값(등록파일명) -->
            <input type="hidden" id="methodName"            name="methodName"               value=""/>                  <!-- 메소드명 -->    
            <input type="hidden" id="attr98"                name="attr98"                   value=""/>                  <!-- 리턴결과값(등록파일명) -->
            <input type="hidden" id="attr99"                name="attr99"                   value=""/>                  <!-- 리턴결과값(등록파일갯수) -->
            <input type="hidden" id="itxp_cnt"              name="itxp_cnt"                 value="1"/>                 <!-- 비목등록건수 -->
            <input type="hidden" id="p_rchrInfo"            name="p_rchrInfo"               value=""/>
            
            <input type="hidden" id="ExclsVatAmtYn"         name="ExclsVatAmtYn"            value="<%=StringUtil.null2void(jData.getString("EXCLS_VAT_AMT_YN")) %>" /> <!--  부가세 제외여부 -->
                
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
            <td class="ll"><%=ComboUtil.getComboBox("RND134", "evma_gb", "", "disabled onchange='SplrInfoDisplay();'", TrscEvdcDv, ComboUtil.OPT_NONE) %></td>
          </tr>
          </tbody>          
      </table>
    </div>
    <!-- //증빙구분 상세내용 표end// -->
    <h3>비목등록정보</h3>
    <div class="b05 ar">
    <div class="fl" style="color:red;font-weight:bold;margin-top:7px;">증빙총액 : <%=FormatUtil.getMoneyForm(Evdc_SumAmt)%></div>
      <a href="#dummy" onclick="uf_frmNewWinNs(document.frm, '/pop/T01_12_00.jsp', 'GUIDE_LINE', '800', '850');"><img src="/bt/bt_guide2.gif" alt="증빙 Guideline"/></a>
      <a href="#dummy" onclick="fnAddRow();"><img src="/bt/bt_plus.gif" alt="추가하기"/></a>
      <a href="#dummy" onclick="fnRemove();calc_amtSet();"><img src="/bt/bt_minus.gif" alt="빼기"/></a>
    </div>
    <!-- 그리드 start -->
<div>


<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbl_type08" summary="품목 설정" id="ItxpList">
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
                  <th scope="col"><label for="chck">선택</label></th>
                  <th scope="col">세목</th>
                  <th scope="col">세세목</th>
                  <th scope="col"><label for="part">품목</label></th>
                  <th scope="col"><label for="usemoney">사용금액</label></th>
                  <th scope="col"><label for="suppmoney">공급금액</label></th>
                  <th scope="col"><label for="vat">부가세</label></th>
                  <th scope="col">증빙<br />서류</th>
                  <th scope="col" style="white-space: nowrap;">인건비<br />내역</th>
                  <th scope="col" class="dycell" style="display:none;">사업비<br />출처</th>
                </tr>
              </thead>
                <tbody>
                <tr>
                    <td class="ac"><input type="checkbox" class="checkbox" name="ItxpChk" id="ItxpChk_0" value="0"  /></td>
                    <td class="ac">
                        <select name="SelDtlsItxpCd" id="SelDtlsItxpCd_0" onchange="SelDtlsItxpCdOnChange(this);" style="width:98%">
                            <option value="">선택</option>
                        </select>
                    </td>
                    <td class="ac">
                        <select name="SelSubDtlsItxpCd" id="SelSubDtlsItxpCd_0"  onchange="SelDtlsItxpCdOnChange2(this);" style="width:98%" >
                            <option value="">선택</option>
                        </select>
                    </td>
                    <td class="ac">
                    <input type="hidden" name="EtcEvdcExcCd" id="EtcEvdcExcCd_0" value="" />
                    <input type="hidden" name="EtcEvdcExcNo" id="EtcEvdcExcNo_0" value="" />
                    <div class="posabs etcimpex" id="etcimpex_0" onclick="uf_rsltEtcImplExc(this)"><a href="#dummy"><img src="/bt/bt_etcimpex.gif" /></a></div>
                    
                    <input type="text" name="ItxpItem" id="ItxpItem_0" value="" class="inputl inputedit" maxlength="100" size="20" style="width:98%;"/></td>
                    <td class="ac"><input type="text" name="ItxpUseAmt" id="ItxpUseAmt_0" value=""   size="17" readonly="readonly" class="inputl currency"  maxlength="15" style="width:75px;background-color:#d2d2d2;text-align:right"  /></td>
                    <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0" value=""   size="17" onKeyUp="calc_amtSet(this, true);" onblur="calc_amtSet(this, true);" class="inputl currency inputedit"  maxlength="15" style="width:75px;text-align:right;padding-right:1px"  /></td>
                    <td class="ac">
                        <input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0" value=""   size="17"  onKeyUp="calc_amtSet(this, true);" onblur="calc_amtSet(this, true);" class="inputl currency inputedit" maxlength="15" style="width:70px;text-align:right;padding-right:1px"  />
                    </td>
                    <td class="ac">
                        <span id="ItxpFileEvdcVal_0" style="display:none;"></span><a href="#dummy" class="itxpFileEvdcVal"><span id="ItxpFileEvdc_0" onclick="fnFileEvdc(this);">'<img src="/bt/bt_nonregist.gif" alt="미등록">'</span></a>
                        <input type="hidden" name="EvdcDcmtCmadId"  id="EvdcDcmtCmadId_0"       value="" />
                        <input type="hidden" name="ExtEdmsDocId"        id="ExtEdmsDocId_0"     value="" />
                        
                        <input type="hidden" name="EdmsDocId"       id="EdmsDocId_0"        value="" /> <!-- 생성된EDMS_dockey -->
                        <input type="hidden" name="FileNm"          id="FileNm_0"           value="" /> <!-- 리턴결과값(등록파일명) -->
                    </td>
                    <td class="ac">
                        <span id="ItxpAdtnInfoVal_0" style="display:none;"></span><a href="#dummy"  class="ItxpAdtnInfo"><span id="ItxpAdtnInfo_0" onclick="fnAdtnInfo(this);">'<img src="/bt/bt_nonregist.gif" alt="미등록">'</span></a>
                        <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- 참여연구원정보 -->
                        <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- 참여연구원총금액 -->
                        
                        <input type="hidden" id="ButrId_0"              name="BUTR_ID"          value=""/>
                        <input type="hidden" id="BuitId_0"              name="BUIT_ID"          value=""/>
                        
                        <!-- 2012.06.15 : 이기영 - 상시점검 관련 추가 -->
                        <input type="hidden" id="USEREGDT_0"                name="USE_REG_DT"                   value=""/>
                        <input type="hidden" id="USEREGTM_0"                name="USE_REG_TM"                   value=""/>
                        <input type="hidden" id="ITXPREGSEQ_0"              name="USE_REG_SN"                   value=""/>
                        <input type="hidden" id="LSTISPTST_0"               name="LST_ISPT_ST"                      value=""/>                      
                        <input type="hidden" id="LSTISPTRSLTSN_0"           name="LST_ISPT_RSLT_SN"                 value=""/>
                        <input type="hidden" id="LSTISPTAFTHUPDYN_0"        name="LST_ISPT_AFTH_UPD_YN"             value=""/>
                        <!-- 2012.06.15 : 이기영 - 상시점검 관련 추가 -->
                    </td>
                    <td class="ac dycell" style="display:none;">
                  <select title="지방비구분" name="ShrSorcSn" id="SelShrSorcSn_0" style="width:60px;" disabled="disabled">
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
                  <td class="sum1 dycell" style="display:none;"></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr" style="display:none;">
                  <td colspan="2" class="sum1">공급금액차액 사유</td>
                  <td colspan="8"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn" class="inputl" style="width:98%" value="<%=StringUtil.null2void(org.apache.commons.lang.StringEscapeUtils.escapeHtml(jData.getString("SPLY_AMT_DFAMT_RSN"))) %>" /></td>
                </tr>               
              </tfoot>
            </table>

</div>
    <!-- //그리드 end// -->
    <!-- 2013-09-13 서성진 수정/강지은 팀장 요청 해당 알림 제거 -->
    <!-- <div class="guide_bu">비영리기관의 경우 간접비 집행시 증빙서류없이 등록가능합니다.</div> -->
    <div class="t10"></div>
    <div id="divTranInfo">
    <h3>거래처정보</h3>
    <div class="t05 b20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="거래처정보 상세내용 표" class="tbl_type02">
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
    </div>
    <div id="divTranInfoItem"  >     <!-- 계좌이체요청항목 Div 시작  -->
    <h3>계좌이체 요청항목</h3>
    <div class="ar">
      <a href="#" id="trnsInfo_0" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="자계좌이체허용기준"/></a>
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
            <th scope="row" >집행구분</th>
            <td colspan="3" class="ll">
                <input type="radio" id="ExctnStgDv1" name="ExctnStgDv" value="1" onclick="" disabled class="radio2">
             <label for=""ExctnStgDv1"">타계좌이체(연구비계좌경유이체)</label> <span class="l10"></span>
              <input type="radio" id="ExctnStgDv2" name="ExctnStgDv" value="2" onclick="" disabled class="radio2">
             <label for="ExctnStgDv2"> 자계좌이체(연구비계좌이체)</label> 
              <%=ComboUtil.getComboBox("RNDB03_1", "kind_TrnsRchAcc", "", "id='kind_TrnsRchAcc' style='width:135px;' disabled ", StringUtil.null2void(jData.getString("EXCTN_KIND_DV"),"B03007"), ComboUtil.OPT_NONE,"key")  %>
            </td>
          </tr>
          <tr>
            <th scope="row"><label for="bank">입금계좌</label></th>
            <td><%=ComboUtil.getComboBox("BNK_CD", "RcvBnkCd", "", "onchange='' disabled", StringUtil.null2void(RcvBnkCd), ComboUtil.OPT_SEL, false) %>
            <span id="idRcvBnkNm" style="display:none;"><%=CodeUtil.getCode("BNK_CD", RcvBnkCd, false)%>&nbsp;<%=RcvAcctNo%></span>
            <input type="text" class="inputl" onchange="" disabled style="width:80px;" name="RcvAcctNo" value="<%=RcvAcctNo %>" title="" notnull colname="입금계좌(계좌번호)" datatype="N" maxlength="20" enc="on" onfocus="chkEnc();" />
            <span id="idFvrtAcct" style="display:none"></span>
            <span id="idMyAcctNo" style="display:none"></span>
            </td>
            <th scope="row"><label for="part1">예금주</label></th>
            <td class="ll">
            <input type="text"  name="OwacNm" id="OwacNm"  readonly="readonly" class="inputl" style="width:100px;background-color:#d2d2d2;" value="<%=OwacNm %>" title="" />
            </td>
          </tr>
          <tr>
            <th scope="row"><label for="bankbook1" style="font-size:8pt">연구비통장표시내용</label></th>
            <td><input type="text" name="WdrwPsbkPrtCtt" class="inputl" readonly style="width:132px;" value="<%=WdrwPsbkPrtCtt %>" title="연구비통장표시내용" notnull colname="연구비통장표시내용" maxlength="12" /> (6자)</td>
            <th scope="row"><label for="bankbook2" style="font-size:8pt">거래처통장표시내용</label></th>
            <td class="ll"><input type="text" name="RcvPsbkPrtCtt" class="inputl" readonly style="width:100px;" value="<%=RcvPsbkPrtCtt %>" title="거래처통장표시내용" notnull colname="거래처통장표시내용" maxlength="12"  /> (6자)</td>
          </tr>
          <tr>
            <th scope="row"><label for="codea">기관용개별코드A</label></th>
            <td><input type="text" id="AchvInstIndv1Cd" name="AchvInstIndv1Cd" class="inputl" readonly style="ime-mode:disabled; width:132px;" value="<%=AchvInstIndv1Cd %>" title="기관용개별코드A" colname="기관용개별코드A" maxlength="20" /></td>
            <th scope="row"><label for="codeb">기관용개별코드B</label></th>
            <td class="ll"><input type="text" id="AchvInstIndv2Cd" name="AchvInstIndv2Cd" class="inputl" readonly style="ime-mode:inactive; width:100px;" value="<%=AchvInstIndv2Cd %>" title="기관용개별코드A" colname="기관용개별코드B" maxlength="10"  /></td>
          </tr>
          <tr>
            <th scope="row">이체금액</th>
            <td><span id="txt_trnsAmt"><%=FormatUtil.getMoneyForm(Evdc_SumAmt) %></span></td>
            <th scope="row"><label for="tel">전화번호</label></th>
            <td class="ll"><input type="text" name="TelNo" readonly class="inputl" style="width:100px;" value="<%=TelNo %>" title="전화번호" notnull colname="전화번호" datatype="N" maxlength="15" mask="-" /></td>
          </tr>
          <tr>
            <th scope="row">공급가액</th>
            <td><span id="txt_splyAmt"><%=FormatUtil.getMoneyForm(Evdc_SplyAmt) %></span></td>
            <th scope="row">부가가치세액</th>
            <td class="ll"><span id="txt_vatAmt"><%=FormatUtil.getMoneyForm(Evdc_VatAmt) %></span></td>
          </tr>
          <tr>
            <th scope="row"><label for="memo">지급용도</label></th>
            <td colspan="3" class="ll"><input type="text" class="inputl"  readonly style="ime-mode:inactive; width:455px;" name="PaymUsag" value="<%=org.apache.commons.lang.StringEscapeUtils.escapeHtml(PaymUsag) %>" title="지급용도" notnull colname="지급용도" maxlength="100" /></td>
          </tr>
        </tbody>
      </table>
    </div>
    </div>
    <!-- action bt start -->
    <div class="ar"> <a href="#dummy" onclick="uf_Rsltitxp_update();" class="bt_action2-01" title="저장"><span class="bt_sp">저장</span></a> </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- 주의사항 start -->
    <div class="pop_guide_box1">
      <div class="pop_guide_boxtd1">
        <ul class="pop_comment b10">
          <li>집행완료내역은 비목수정만 가능합니다.</li>
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
    var ExctnStgDv = "<%=ExctnStgDv%>";
    $(function(){
        if( ExctnStgDv == '1' ){
            document.frm.ExctnStgDv[0].checked = true;
        }else{
            document.frm.ExctnStgDv[1].checked = true;
        }
        
        $('.currency').ForceNumericOnly();
        uf_crdSetlMeth('<%=CrdSetlMeth%>');     //카드결제방식에따른 화면구성변경
        uf_onLoadPage();
        var mode="";
        if("C"=='<%=TrscEvdcDv%>'){
            mode="4";
        }
        
        exctn_ExctnStgDv_v2(mode,'3', "<%=RchExpAcctBnkCd%>",'<%=CodeUtil.getCode("BNK_CD", RchExpAcctBnkCd, false)%>', "<%=RchExpAcctNo%>",'<%=CodeUtil.getCode("BNK_CD", RcvBnkCd, false)%>', "<%=RcvBnkCd%>", "<%=RcvAcctNo%>", "<%=StringUtil.null2void(jData.getString("MY_ACCT_TRNS_ALWN_YN"))%>");
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