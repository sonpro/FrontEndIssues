<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_40.jsp
 *   Description        : �Ϸ�������˾�â
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.13                     ������             
 *
 *  @author     ������
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
//  �������-������ ������ �޴� �Ķ����
//-------------------------------------------
String TrscEvdcDv               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TrscEvdcDv"));                        // �����������뱸��
String ButrId                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ButrId"));                        // �����Ϸù�ȣ             
String RcvPsbkPrtCtt                =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvAcctRcvCtt"));             // ����������Ա������μ⳻��      
String WdrwPsbkPrtCtt               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RchExpAcctWdrwCtt"));                 // �����������������μ⳻��
String RcvBnkCd                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvBnkCd"));                      // �Ա������ڵ�             
String RcvAcctNo                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvAcctNo"));                     // �Աݰ��¹�ȣ
String Evdc_SumAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TrnsAmt"));                       // �������ݾ�            
String Evdc_SplyAmt                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UseSplyAmt"));                    // ���ޱݾ�               
String Evdc_VatAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UseVatAmt"));                     // �ΰ���ġ����             
String PaymUsag                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"PaymUsag"));                      // ��볻��               
String TelNo                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TelNo"));                         // ��ȭ��ȣ               
String ExctnStgDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnStgDv"));                    // ���ܰ豸��                        
String AgrmtSeqNo                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));                    // �����Ϸù�ȣ                  
String AgrmtInstId                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstId"));                   // ������ID      
String PmsId                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"pmsId"));                         // PMS_ID                 
String AgrmtInstBzRegNo             =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstBzRegNo"));              // ����������ڵ�Ϲ�ȣ
String AchvInstIndv1Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv1Cd"));               // ����밳���ڵ�1
String AchvInstIndv2Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv2Cd"));               // ����밳���ڵ�2
String VatPsvApcYn                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"VatPsvApcYn"));                   // �ΰ���������û����
String CrdSetlMeth                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnTypDv"));                    // ������ı���(1:������/2:�ǽð���ü���)
String PsnlAcctUseYn                =   "";     //�ΰǺ񼺰��¿���
String UnfyMgntInstYn               =   "";     //��������������

String RchExpAcctBnkCd              =   "";                 // ��������������ڵ�              
String RchExpAcctNo                 =   "";                 // ��������¹�ȣ

String Cus_ReprNm                   =   "";                                                                             // �ŷ�ó��ǥ�ڸ�
String Cus_BizNo                    =   "";                                                                             // �ŷ�ó����ڹ�ȣ
String Cus_TpBzNm                   =   "";                                                                             // �ŷ�ó������
String Cus_TpOpNm                   =   "";                                                                             // �ŷ�ó���¸�
String Cus_Addr                     =   "";                                                                             // �ŷ�ó������ּ�
String Cus_SplrCoNm                 =   "";                                                                             // ������ȸ���
String OwacNm                       =   "";                                                                             // �����ָ�
String RcvBnkNm                     =   "";                                                                             //�Աݰ��������
String ItemData[]   ;

String hmpwRoleDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"hmpwRoleDv"));                    // �η¿��ұ���
String rcmsGrpCd                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"rcmsGrpCd"));                     //RCMS�׷��ڵ� 
String WRTG_DT                      =   "";                                                                             //�������(���ڼ��ݰ�꼭)
String APV_DT                       =   "";                                                                             //�������(ī��)  

        
    
JSONObject jData = new JSONObject();                //Json ���� ( ��ȸ����� ��� )
    
  

if("G00000000000004".equals(AgrmtSeqNo) && "E".equals(TrscEvdcDv)){ // ��Ÿ����
     PsnlAcctUseYn        = "Y";
     UnfyMgntInstYn       = "Y";
     RchExpAcctBnkCd      = "020";
     RchExpAcctNo         = "777777777770";
     Cus_ReprNm           = "�ٴ�ǥ";
     Cus_BizNo            = "6001010000";
     Cus_TpBzNm           = "����";
     Cus_TpOpNm           = "����";
     Cus_Addr             = "����Ư���� ���α� ����6�� 288";
     Cus_SplrCoNm         = "(��) �� ��ü";
     OwacNm               = "�ٴ�ǥ";
     RcvBnkNm             = "G ����";
     hmpwRoleDv           = "";
     rcmsGrpCd            = "";
     WRTG_DT              = "";
     APV_DT               = "";
     
     
     jData.put("AGRMT_SEQ_NO","G00000000000004");
     jData.put("AGRMT_INST_ID","10112249");
     jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
     jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
     jData.put("AGRMT_INST_NM","��RCMS");
     jData.put("CPCG_INST_BZ_REG_NO","1111111111");
     jData.put("EXCTN_STG_DV","1");
     jData.put("AGRMT_INST_ROLE_DV","C");
     jData.put("BZ_EXP_ACCT_BNK_CD","020");
     jData.put("BZ_EXP_ACCT_NO","40000000000");
     jData.put("RCH_EXP_ACCT_BNK_CD","020");
     jData.put("RCH_EXP_ACCT_NO","1005000000415");
     jData.put("OWAC_NM","��RCMS");
     jData.put("INST_SBJT_PRGR_ST","07");
     jData.put("EXCTN_LIMT_ST","0");
     jData.put("EXCTN_LIMT_RSN","������� ��ü ���� ó��");
     jData.put("MY_ACCT_TRNS_ALWN_YN","Y");
     jData.put("INST_TOTL_INST_AMT","20000");
     jData.put("AGRMT_CASH_LIM_AMT","20000");
     jData.put("PMS_ID","G01");
     jData.put("BZ_CLAS_CD","S1854");
     jData.put("BZ_CLAS_NM","RCMS �ǽ�");
     jData.put("CPCG_INST_ID","11000001");
     jData.put("CPCG_INST_NM","�ѱ��������򰡰�����");
     jData.put("SBJT_ID","TEST0004");
     jData.put("SBJT_NM","RCMS �ǽ��� �������");
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
     jData.put("SPLR_CO_NM","��RCMS");
     jData.put("TOTL_AMT","100");
     jData.put("USE_SPLY_AMT","100");
     jData.put("USE_VAT_AMT","0");
     jData.put("EXCTN_KIND_DV","B03000");
     jData.put("NPRF_INST_YN","N");
     jData.put("SQBN_SPLR_EXCTN_RSN",null);
     jData.put("EXCLS_VAT_AMT_YN","N");
     jData.put("EXCTN_DV","1");

}else if("G00000000000004".equals(AgrmtSeqNo) && "T".equals(TrscEvdcDv)){   //���ڼ���
    PsnlAcctUseYn        = "Y";
    UnfyMgntInstYn       = "Y";
    RchExpAcctBnkCd      = "020";
    RchExpAcctNo         = "222222222220";
    Cus_ReprNm           = "����ǥ";
    Cus_BizNo            = "5001010000";
    Cus_TpBzNm           = "����";
    Cus_TpOpNm           = "����";
    Cus_Addr             = "����Ư���� �߱� ���빮��4�� 29";
    Cus_SplrCoNm         = "(��) �� ��ü";
    OwacNm               = "����ǥ";
    RcvBnkNm             = "H ����";
    hmpwRoleDv           = "";
    rcmsGrpCd            = "";
    WRTG_DT              = "20131212";
    APV_DT               = "";
    
    jData.put("AGRMT_SEQ_NO","G00000000000004");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","��RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","2");
    jData.put("AGRMT_INST_ROLE_DV","C");
    jData.put("BZ_EXP_ACCT_BNK_CD","020");
    jData.put("BZ_EXP_ACCT_NO","40000000000");
    jData.put("RCH_EXP_ACCT_BNK_CD","020");
    jData.put("RCH_EXP_ACCT_NO","1005000000415");
    jData.put("OWAC_NM","��RCMS");
    jData.put("INST_SBJT_PRGR_ST","07");
    jData.put("EXCTN_LIMT_ST","0");
    jData.put("EXCTN_LIMT_RSN","������� ��ü ���� ó��");
    jData.put("MY_ACCT_TRNS_ALWN_YN","Y");
    jData.put("INST_TOTL_INST_AMT","20000");
    jData.put("AGRMT_CASH_LIM_AMT","20000");
    jData.put("PMS_ID","G01");
    jData.put("BZ_CLAS_CD","S1854");
    jData.put("BZ_CLAS_NM","RCMS �ǽ�");
    jData.put("CPCG_INST_ID","11000001");
    jData.put("CPCG_INST_NM","�ѱ��������򰡰�����");
    jData.put("SBJT_ID","TEST0004");
    jData.put("SBJT_NM","RCMS �ǽ��� �������");
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
    jData.put("SPLR_CO_NM","(��)RCMS");
    jData.put("TOTL_AMT","5720");
    jData.put("USE_SPLY_AMT","5200");
    jData.put("USE_VAT_AMT","520");
    jData.put("EXCTN_KIND_DV","B03007");
    jData.put("NPRF_INST_YN","N");
    jData.put("SQBN_SPLR_EXCTN_RSN",null);
    jData.put("EXCLS_VAT_AMT_YN","N");
    jData.put("EXCTN_DV","2");

}else if("G00000000000003".equals(AgrmtSeqNo) && "C".equals(TrscEvdcDv)){   //ī��
    PsnlAcctUseYn        = "Y";
    UnfyMgntInstYn       = "Y";
    RchExpAcctBnkCd      = "003";
    RchExpAcctNo         = "555555555550";
    Cus_ReprNm           = "������";
    Cus_BizNo            = "1001010000";
    Cus_TpBzNm           = "����";
    Cus_TpOpNm           = "����";
    Cus_Addr             = "��õ������ ������ ������ 1138";
    Cus_SplrCoNm         = "(��) �� ��ü";
    OwacNm               = "������";
    RcvBnkNm             = "E ����";
    hmpwRoleDv           = "";
    rcmsGrpCd            = "";
    WRTG_DT              = "";
    APV_DT               = "20120214";
    
    jData.put("AGRMT_SEQ_NO","G00000000000003");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","��RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","1");
    jData.put("AGRMT_INST_ROLE_DV","C");
    jData.put("BZ_EXP_ACCT_BNK_CD","003");
    jData.put("BZ_EXP_ACCT_NO","20000000000");
    jData.put("RCH_EXP_ACCT_BNK_CD","003");
    jData.put("RCH_EXP_ACCT_NO","08203000000220");
    jData.put("OWAC_NM","1111111111   ��RCMS");
    jData.put("INST_SBJT_PRGR_ST","10");
    jData.put("EXCTN_LIMT_ST","0");
    jData.put("EXCTN_LIMT_RSN","���������(�絵���)���� ���� ��������");
    jData.put("MY_ACCT_TRNS_ALWN_YN","Y");
    jData.put("INST_TOTL_INST_AMT","110000");
    jData.put("AGRMT_CASH_LIM_AMT","100000");
    jData.put("PMS_ID","G01");
    jData.put("BZ_CLAS_CD","S1598");
    jData.put("BZ_CLAS_NM","RCMS �ǽ�");
    jData.put("CPCG_INST_ID","11000001");
    jData.put("CPCG_INST_NM","�ѱ��������򰡰�����");
    jData.put("SBJT_ID","TEST0003");
    jData.put("SBJT_NM","RCMS �ǽ��� �������");
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
    jData.put("SPLR_CO_NM","(��)RCMS");
    jData.put("TOTL_AMT","13000");
    jData.put("USE_SPLY_AMT","8000");
    jData.put("USE_VAT_AMT","5000");
    jData.put("EXCTN_KIND_DV","B03000");
    jData.put("NPRF_INST_YN","N");
    jData.put("SQBN_SPLR_EXCTN_RSN",null);
    jData.put("EXCLS_VAT_AMT_YN","N");
    jData.put("EXCTN_DV","1");

}else if("G00000000000002".equals(AgrmtSeqNo) && "C".equals(TrscEvdcDv)){   //ī��
    PsnlAcctUseYn        = "Y";
    UnfyMgntInstYn       = "Y";
    RchExpAcctBnkCd      = "020";
    RchExpAcctNo         = "777777777770";
    Cus_ReprNm           = "�ٴ�ǥ";
    Cus_BizNo            = "6001010000";
    Cus_TpBzNm           = "����";
    Cus_TpOpNm           = "����";
    Cus_Addr             = "����Ư���� ���α� ����6�� 288";
    Cus_SplrCoNm         = "(��) �� ��ü";
    OwacNm               = "�ٴ�ǥ";
    RcvBnkNm             = "G ����";
    hmpwRoleDv           = "";
    rcmsGrpCd            = "";
    WRTG_DT              = "";
    APV_DT               = "";
    
    jData.put("AGRMT_SEQ_NO","G00000000000002");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","��RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","1");
    jData.put("AGRMT_INST_ROLE_DV","C");
    jData.put("BZ_EXP_ACCT_BNK_CD","003");
    jData.put("BZ_EXP_ACCT_NO","20000000000");
    jData.put("RCH_EXP_ACCT_BNK_CD","003");
    jData.put("RCH_EXP_ACCT_NO","08203000000220");
    jData.put("OWAC_NM","1111111111   ��RCMS");
    jData.put("INST_SBJT_PRGR_ST","07");
    jData.put("EXCTN_LIMT_ST","1");
    jData.put("EXCTN_LIMT_RSN","������� ��ü ���� ó��");
    jData.put("MY_ACCT_TRNS_ALWN_YN","N");
    jData.put("INST_TOTL_INST_AMT","110000000");
    jData.put("AGRMT_CASH_LIM_AMT","100000000");
    jData.put("PMS_ID","G01");
    jData.put("BZ_CLAS_CD","S1598");
    jData.put("BZ_CLAS_NM","RCMS �ǽ�");
    jData.put("CPCG_INST_ID","11000001");
    jData.put("CPCG_INST_NM","�ѱ��������򰡰�����");
    jData.put("SBJT_ID","TEST0002");
    jData.put("SBJT_NM","RCMS �ǽ��� �������");
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
    jData.put("SPLR_CO_NM","(��)RCMS");
    jData.put("TOTL_AMT","10");
    jData.put("USE_SPLY_AMT","10");
    jData.put("USE_VAT_AMT","0");
    jData.put("EXCTN_KIND_DV","B03000");
    jData.put("NPRF_INST_YN","N");
    jData.put("SQBN_SPLR_EXCTN_RSN",null);
    jData.put("EXCLS_VAT_AMT_YN","N");
    jData.put("EXCTN_DV","1");

}else if("G00000000000003".equals(AgrmtSeqNo) && "T".equals(TrscEvdcDv)){   //��������
    PsnlAcctUseYn        = "Y";
    UnfyMgntInstYn       = "Y";
    RchExpAcctBnkCd      = "020";
    RchExpAcctNo         = "888888888880";
    Cus_ReprNm           = "������";
    Cus_BizNo            = "2001010000";
    Cus_TpBzNm           = "����";
    Cus_TpOpNm           = "����";
    Cus_Addr             = "��걤���� ���� ������ 646-4";
    Cus_SplrCoNm         = "(��) �� ��ü";
    OwacNm               = "������";
    RcvBnkNm             = "B ����";
    hmpwRoleDv           = "";
    rcmsGrpCd            = "";
    WRTG_DT              = "20131125";
    APV_DT               = "";

    
    jData.put("AGRMT_SEQ_NO","G00000000000003");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","��RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","1");
    jData.put("AGRMT_INST_ROLE_DV","C");
    jData.put("BZ_EXP_ACCT_BNK_CD","003");
    jData.put("BZ_EXP_ACCT_NO","20000000000");
    jData.put("RCH_EXP_ACCT_BNK_CD","003");
    jData.put("RCH_EXP_ACCT_NO","08203000000220");
    jData.put("OWAC_NM","1111111111   ��RCMS");
    jData.put("INST_SBJT_PRGR_ST","07");
    jData.put("EXCTN_LIMT_ST","1");
    jData.put("EXCTN_LIMT_RSN","������� ��ü ���� ó��");
    jData.put("MY_ACCT_TRNS_ALWN_YN","N");
    jData.put("INST_TOTL_INST_AMT","110000000");
    jData.put("AGRMT_CASH_LIM_AMT","100000000");
    jData.put("PMS_ID","G01");
    jData.put("BZ_CLAS_CD","S1598");
    jData.put("BZ_CLAS_NM","RCMS �ǽ�");
    jData.put("CPCG_INST_ID","11000001");
    jData.put("CPCG_INST_NM","�ѱ��������򰡰�����");
    jData.put("SBJT_ID","TEST0002");
    jData.put("SBJT_NM","RCMS �ǽ��� �������");
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
    jData.put("SPLR_CO_NM","(��)RCMS");
    jData.put("TOTL_AMT","414502");
    jData.put("USE_SPLY_AMT","376820");
    jData.put("USE_VAT_AMT","37682");
    jData.put("EXCTN_KIND_DV","B03000");
    jData.put("NPRF_INST_YN","N");
    jData.put("SQBN_SPLR_EXCTN_RSN",null);
    jData.put("EXCLS_VAT_AMT_YN","N");
    jData.put("EXCTN_DV","1");
        
}else if(!"".equals(AgrmtSeqNo) && "E".equals(TrscEvdcDv)){ // ��Ÿ����
       PsnlAcctUseYn        = "Y";
       UnfyMgntInstYn       = "Y";
       RchExpAcctBnkCd      = "020";
       RchExpAcctNo         = "888888888880";
       Cus_ReprNm           = "������";
       Cus_BizNo            = "2001010000";
       Cus_TpBzNm           = "����";
       Cus_TpOpNm           = "����";
       Cus_Addr             = "��걤���� ���� ������ 646-4";
       Cus_SplrCoNm         = "(��) �� ��ü";
       OwacNm               = "������";
       RcvBnkNm             = "B ����";
       hmpwRoleDv           = "";
       rcmsGrpCd            = "";
       WRTG_DT              = "";
       APV_DT               = "";
    
    
    jData.put("AGRMT_SEQ_NO","G00000000000002");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","��RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","1");
    jData.put("AGRMT_INST_ROLE_DV","C");
    jData.put("BZ_EXP_ACCT_BNK_CD","020");
    jData.put("BZ_EXP_ACCT_NO","40000000000");
    jData.put("RCH_EXP_ACCT_BNK_CD","020");
    jData.put("RCH_EXP_ACCT_NO","1005000000415");
    jData.put("OWAC_NM","��RCMS");
    jData.put("INST_SBJT_PRGR_ST","07");
    jData.put("EXCTN_LIMT_ST","0");
    jData.put("EXCTN_LIMT_RSN","������� ��ü ���� ó��");
    jData.put("MY_ACCT_TRNS_ALWN_YN","Y");
    jData.put("INST_TOTL_INST_AMT","20000");
    jData.put("AGRMT_CASH_LIM_AMT","20000");
    jData.put("PMS_ID","G01");
    jData.put("BZ_CLAS_CD","S1854");
    jData.put("BZ_CLAS_NM","RCMS �ǽ�");
    jData.put("CPCG_INST_ID","11000001");
    jData.put("CPCG_INST_NM","�ѱ��������򰡰�����");
    jData.put("SBJT_ID","TEST0004");
    jData.put("SBJT_NM","RCMS �ǽ��� �������");
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
    jData.put("SPLR_CO_NM","��RCMS");
    jData.put("TOTL_AMT","100");
    jData.put("USE_SPLY_AMT","100");
    jData.put("USE_VAT_AMT","0");
    jData.put("EXCTN_KIND_DV","B03000");
    jData.put("NPRF_INST_YN","N");
    jData.put("SQBN_SPLR_EXCTN_RSN",null);
    jData.put("EXCLS_VAT_AMT_YN","N");
    jData.put("EXCTN_DV","1");

}else if(!"".equals(AgrmtSeqNo) && "T".equals(TrscEvdcDv)){   //���ڼ���
   PsnlAcctUseYn        = "Y";
   UnfyMgntInstYn       = "Y";
   RchExpAcctBnkCd      = "020";
   RchExpAcctNo         = "888888888880";
   Cus_ReprNm           = "�̻�Ȳ";
   Cus_BizNo            = "2001010000";
   Cus_TpBzNm           = "����";
   Cus_TpOpNm           = "����";
   Cus_Addr             = "��걤���� ���� ������ 646-4";
   Cus_SplrCoNm         = "(��) �� ��ü";
   OwacNm               = "������";
   RcvBnkNm             = "B ����";
   hmpwRoleDv           = "";
   rcmsGrpCd            = "";
   WRTG_DT              = "20130510";
   APV_DT               = "";
   
   jData.put("AGRMT_SEQ_NO","G00000000000002");
   jData.put("AGRMT_INST_ID","10112249");
   jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
   jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
   jData.put("AGRMT_INST_NM","��RCMS");
   jData.put("CPCG_INST_BZ_REG_NO","1111111111");
   jData.put("EXCTN_STG_DV","2");
   jData.put("AGRMT_INST_ROLE_DV","C");
   jData.put("BZ_EXP_ACCT_BNK_CD","020");
   jData.put("BZ_EXP_ACCT_NO","40000000000");
   jData.put("RCH_EXP_ACCT_BNK_CD","020");
   jData.put("RCH_EXP_ACCT_NO","1005000000415");
   jData.put("OWAC_NM","��RCMS");
   jData.put("INST_SBJT_PRGR_ST","07");
   jData.put("EXCTN_LIMT_ST","0");
   jData.put("EXCTN_LIMT_RSN","������� ��ü ���� ó��");
   jData.put("MY_ACCT_TRNS_ALWN_YN","Y");
   jData.put("INST_TOTL_INST_AMT","20000");
   jData.put("AGRMT_CASH_LIM_AMT","20000");
   jData.put("PMS_ID","G01");
   jData.put("BZ_CLAS_CD","S1854");
   jData.put("BZ_CLAS_NM","RCMS �ǽ�");
   jData.put("CPCG_INST_ID","11000001");
   jData.put("CPCG_INST_NM","�ѱ��������򰡰�����");
   jData.put("SBJT_ID","TEST0004");
   jData.put("SBJT_NM","RCMS �ǽ��� �������");
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
   jData.put("SPLR_CO_NM","(��)RCMS");
   jData.put("TOTL_AMT","5720");
   jData.put("USE_SPLY_AMT","5200");
   jData.put("USE_VAT_AMT","520");
   jData.put("EXCTN_KIND_DV","B03007");
   jData.put("NPRF_INST_YN","N");
   jData.put("SQBN_SPLR_EXCTN_RSN",null);
   jData.put("EXCLS_VAT_AMT_YN","N");
   jData.put("EXCTN_DV","2");

}else if(!"".equals(AgrmtSeqNo) && "C".equals(TrscEvdcDv)){   //ī��
    PsnlAcctUseYn        = "Y";
    UnfyMgntInstYn       = "Y";
    RchExpAcctBnkCd      = "020";
    RchExpAcctNo         = "30030300000";
    Cus_ReprNm           = "�ٴ�ǥ";
    Cus_BizNo            = "3001010000";
    Cus_TpBzNm           = "����";
    Cus_TpOpNm           = "����";
    Cus_Addr             = "����Ư����ġ�� ��ġ���� ���︮ 123";
    Cus_SplrCoNm         = "(��) �� ��ü";
    OwacNm               = "�ٴ�ǥ";
    RcvBnkNm             = "C ����";
    hmpwRoleDv           = "";
    rcmsGrpCd            = "";
    WRTG_DT              = "";
    
    jData.put("AGRMT_SEQ_NO","G00000000000002");
    jData.put("AGRMT_INST_ID","10112249");
    jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
    jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    jData.put("AGRMT_INST_NM","��RCMS");
    jData.put("CPCG_INST_BZ_REG_NO","1111111111");
    jData.put("EXCTN_STG_DV","1");
    jData.put("AGRMT_INST_ROLE_DV","C");
    jData.put("BZ_EXP_ACCT_BNK_CD","003");
    jData.put("BZ_EXP_ACCT_NO","20000000000");
    jData.put("RCH_EXP_ACCT_BNK_CD","003");
    jData.put("RCH_EXP_ACCT_NO","08203000000220");
    jData.put("OWAC_NM","1111111111   ��RCMS");
    jData.put("INST_SBJT_PRGR_ST","07");
    jData.put("EXCTN_LIMT_ST","1");
    jData.put("EXCTN_LIMT_RSN","������� ��ü ���� ó��");
    jData.put("MY_ACCT_TRNS_ALWN_YN","N");
    jData.put("INST_TOTL_INST_AMT","110000000");
    jData.put("AGRMT_CASH_LIM_AMT","100000000");
    jData.put("PMS_ID","G01");
    jData.put("BZ_CLAS_CD","S1598");
    jData.put("BZ_CLAS_NM","RCMS �ǽ�");
    jData.put("CPCG_INST_ID","11000001");
    jData.put("CPCG_INST_NM","�ѱ��������򰡰�����");
    jData.put("SBJT_ID","TEST0002");
    jData.put("SBJT_NM","RCMS �ǽ��� �������");
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
    jData.put("SPLR_CO_NM","(��)RCMS");
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


<title>���������� ����ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���������� ����ȸ</p>
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
 * uf_onLoadPage         ����޺��ڽ����� display on/off
 * @param
 * @return
******************************************************************/
function uf_onLoadPage(){
    if( isSubmit() ) return;    // ����ó��
    var frm =   document.frm;
    
    fnItxpInit();
    
    // 2011.12.12 �µ��� START
    // ī�̽�Ʈ �������� ���� ����밳���ڵ带 ������ �� ������ ����
    if("G01" == "<%=PmsId%>" && "00006277" == "<%=AgrmtInstId%>"){
        document.getElementById("AchvInstIndv1Cd").readOnly                 = true;
        document.getElementById("AchvInstIndv1Cd").style.backgroundColor    = "#d2d2d2";
    }
    // 2011.12.12 �µ��� END
    
    uf_proce_display_on();  //�ε���
    
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
                
                }, 1000);   // 1���� ���� 1000 = 1��s
                
                
    removeTempAttribute(frm);   //get2post ����
    
    
}
function DisplayDivMyAcctTransAlwn(){}
/******************************************************************
 * set_evdc_amt      ��� ù��° row�� �����ݾ� ����
 * @param
 * @return
******************************************************************/
function set_evdc_amt(){
<%
    if("G00000000000004".equals(AgrmtSeqNo) && "E".equals(TrscEvdcDv)){ // ��Ÿ����
%>
fnItxpSetting('0', 'E201005262907595','U201005264759789','B0202', 'B0202001', "�����", '100', '100'
        , '0', '', '','20100526','125701','1','B16000'
        ,'','0');
jQuery("#EvdcDcmtCmadId_0").val("D201301211195678");
jQuery("#ExtEdmsDocId_0").val("");
jQuery("#EdmsDocId_0").val("");
jQuery("#FileNm_0").val("");
jQuery("#rchrInfo_0").val("");
jQuery("#SelShrSorcSn_0").val("");
//��Ÿ�������� �ΰ�� ��� ���� �Ұ� �� ���� �Ұ�
if( '' != '' ){
    $("#ItxpChk_0" ).attr('disabled',true);
    $("#SelDtlsItxpCd_0" ).attr('disabled',true);
    $("#SelSubDtlsItxpCd_0" ).attr('disabled',true);
}
if('0' != '0'){
    fnAddRow();
}
//��Ÿ��������
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
    }else if("G00000000000004".equals(AgrmtSeqNo) && "T".equals(TrscEvdcDv)){   //���ڼ���
%>
fnItxpSetting('0', 'T201107052612956','U201107054298084','B0202', 'B0202005', "111", '5720', '5200'
        , '520', 'P20110705142755-G00000000000004-10112249', '','20110705','142325','1','B16000'
        ,'','0');
jQuery("#EvdcDcmtCmadId_0").val("D201301211195686");
jQuery("#ExtEdmsDocId_0").val("P20110705142755-G00000000000004-10112249");
jQuery("#EdmsDocId_0").val("P20110705142755-G00000000000004-10112249");
jQuery("#FileNm_0").val("ETAS ���� 3�� ������Ǽ�_130711.pdf\;INCA Software ���� ǰ��.pdf\;ǰ�Ǽ�-NI ����� ���� ���α׷�.pdf\;");
jQuery("#rchrInfo_0").val("");
jQuery("#SelShrSorcSn_0").val("");
//��Ÿ�������� �ΰ�� ��� ���� �Ұ� �� ���� �Ұ�
if( '' != '' ){
    $("#ItxpChk_0" ).attr('disabled',true);
    $("#SelDtlsItxpCd_0" ).attr('disabled',true);
    $("#SelSubDtlsItxpCd_0" ).attr('disabled',true);
}
if('0' != '0'){
    fnAddRow();
}
//��Ÿ��������
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
    }else if("G00000000000003".equals(AgrmtSeqNo) && "C".equals(TrscEvdcDv)){   //ī��
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
//��Ÿ�������� �ΰ�� ��� ���� �Ұ� �� ���� �Ұ�
if( '' != '' ){
    $("#ItxpChk_0" ).attr('disabled',true);
    $("#SelDtlsItxpCd_0" ).attr('disabled',true);
    $("#SelSubDtlsItxpCd_0" ).attr('disabled',true);
}
if('0' != '0'){
    fnAddRow();
}
//��Ÿ��������
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
    }else if("G00000000000003".equals(AgrmtSeqNo) && "C".equals(TrscEvdcDv)){   //ī��
%>
fnItxpSetting('0', 'D201312192251780','U201312193765961','B0201', 'B0201001', "ǰ��-B0201001", '10', '10'
        , '0', 'P20130129155912-00001-G00000000000002-10112249', '','20130129','155911','1','B16000'
        ,'','N');
jQuery("#EvdcDcmtCmadId_0").val("D201301293015470");
jQuery("#ExtEdmsDocId_0").val("P20130129155912-00001-G00000000000002-10112249");
jQuery("#EdmsDocId_0").val("P20130129155912-00001-G00000000000002-10112249");
jQuery("#FileNm_0").val("201301290000100001-00001.hwp\;");
jQuery("#rchrInfo_0").val("");
jQuery("#SelShrSorcSn_0").val("");
//��Ÿ�������� �ΰ�� ��� ���� �Ұ� �� ���� �Ұ�
if( '' != '' ){
    $("#ItxpChk_0" ).attr('disabled',true);
    $("#SelDtlsItxpCd_0" ).attr('disabled',true);
    $("#SelSubDtlsItxpCd_0" ).attr('disabled',true);
}
if('0' != '0'){
    fnAddRow();
}
//��Ÿ��������
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
    }else if("G00000000000003".equals(AgrmtSeqNo) && "T".equals(TrscEvdcDv)){   //��������
%>
fnItxpSetting('0', 'T201312242251924','U201312243766109','B0201', 'B0201001', "�׽�Ʈ", '414502', '376820'
        , '37682', '1387889455473005', '','20131224','220411','1','B16000'
        ,'','N');
jQuery("#EvdcDcmtCmadId_0").val("D201312243022617");
jQuery("#ExtEdmsDocId_0").val("1387889455473005");
jQuery("#EdmsDocId_0").val("1387889455473005");
jQuery("#FileNm_0").val("1��ȸ�ǳ���1.pptx\;");
jQuery("#rchrInfo_0").val("");
jQuery("#SelShrSorcSn_0").val("");
//��Ÿ�������� �ΰ�� ��� ���� �Ұ� �� ���� �Ұ�
if( '' != '' ){
    $("#ItxpChk_0" ).attr('disabled',true);
    $("#SelDtlsItxpCd_0" ).attr('disabled',true);
    $("#SelSubDtlsItxpCd_0" ).attr('disabled',true);
}
if('0' != '0'){
    fnAddRow();
}
//��Ÿ��������
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


// ��� ���̺� �޺�
var SelDtlsItxpCd = new Array();
var SelDtlsItxpNm = new Array();
var SelSubDtlsItxpCd = new Array();
var SelSubDtlsItxpNm = new Array();


var BzExpSprnExctnYn = "N"; //�����и����� ����
var SelShrSorcSn = new Array();
var SelShrSorcNm = new Array();


function mkShrSorcSn(tObjIdx){
    var tObj = document.all["SelShrSorcSn_"+tObjIdx];

    tObj.options.length = 1;
    if( BzExpSprnExctnYn == "Y" ){
        tObj.options[0] = new Option("�̻��",'',true,false);
    
        for(var i=0 ; i < SelShrSorcSn.length; i++){
            tObj.options[i+1] = new Option(SelShrSorcNm[i], SelShrSorcSn[i]);
        }
        //20140331 �������ó ��Ȱ��
        //$('.dycell').show();
    }else{
        tObj.options[0] = new Option("�̻��",'',true,false);
        $('.dycell').hide();
    }
}

function mkDtlsItxpCd(tObjIdx){
    var tObj = document.all["SelDtlsItxpCd_"+tObjIdx];
    var opt_name = "����";

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
    var opt_name = "����";
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
 * SelDtlsItxpCdOnChange         �����񺯰�� �����Լ�
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
 * fnAddRow      ���̺� �ο� �߰�
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
                jQuery(this).html('<img src="/bt/bt_nonregist.gif" alt="�̵��">');
            }
        }
    });
}
/******************************************************************
 * fnRemove      ���̺� �ο� ����
 * @param
 * @return
******************************************************************/
function fnRemove(){
    var tbody = jQuery("#ItxpList tbody");

    jQuery(jQuery(tbody).find("tr")).each(function(){
        if(jQuery(":input[type=checkbox]", this)[0].checked){
            // ��ü ���� ����
            if(document.frm.itxp_cnt.value==1){
                alert("1�� �̻��� ����������� �ʿ��մϴ�.");
                return;
            }
            
            //---------------------------------------------------------
            // ���⼺ 2011/12/02
            // EDMS ȭ�鿬��IF - ����ϻ���
            //alert( $("#EdmsDocId_" + $(this).index() ).val());
            
            $("#ItxpChk:checked").each(
                    <%-- 
                    //edmsDeleteItemRev("frm",  "delete", $("#EdmsDocId_" + $(this).index() ).val(), "SMTEST", "<%=hmpwRoleDv%>", "<%=edms_Inf_Gateway%>")
                    edmsDeleteItemRev("frm",  "delete", $("#EdmsDocId1_" + $(this).index() ).val(), "SMTEST", hmpwRoleDv, "http://61.41.119.163/rcmsConnect.do")
                     --%>
            );
            //---------------------------------------------------------
        
            jQuery(this).remove();
            
            // ���̺� �ʵ� id ����
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
// ������̺� �ʱ�ȭ
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

// ���ϰ� ���� or �Է�
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
    
    
    // 2012.06.15 : �̱⿵ - ������� ���� �߰�
    jQuery("#USEREGDT_"+idx).val(itxpdt);   
    jQuery("#USEREGTM_"+idx).val(itxptm);
    jQuery("#ITXPREGSEQ_"+idx).val(itxpseq);
    
    jQuery("#LSTISPTST_"+idx).val(lstIsptSt);           /* �������˻���[RNDB15] */
    jQuery("#LSTISPTRSLTSN_"+idx).val(lstIsptRslSn);      /* �������˰������ */
    jQuery("#LSTISPTAFTHUPDYN_"+idx).val(lstIsptAfthUpdYn);  /* �����������ĺ��濩�� */
    // 2012.06.15 : �̱⿵ - ������� ���� �߰�
    
    //2012.12.14 ������ - �ΰ���������û���̰� ī��� ��Ÿ�� ��� �ΰ��� ������ �����ϵ��� ����
    jQuery("#ItxpVatAmt_"+idx).attr('readonly','readonly');
    if( "N"==frm.VatPsvApcYn.value && "T"!=frm.Evdc_Dv.value){
        jQuery("#ItxpVatAmt_"+idx).attr('readonly','');
    }
    
    //���ڼ��ݰ�꼭�� ���� �Ұ�
    if( "T" == frm.Evdc_Dv.value ){
        jQuery("#ItxpUseAmt_"+idx).attr('disabled',true);
        jQuery("#ItxpSplyAmt_"+idx).attr('disabled',true);
        jQuery("#ItxpVatAmt_"+idx).attr('disabled',true);
    }

    if( null != edmsDocId && edmsDocId != "" ){
        jQuery("#ItxpFileEvdc_"+idx).html('<img src="/bt/bt_regist4.gif" alt="�������">');
    }
    
    // �����߽ɵ���Ÿ���� �ΰǺ񳻿��� ������(0��), ������(1��)�� ���� ������ �ΰǺ񳻿��� �ִ� ��쿡�� �̵������ ǥ�õ�.
    // ������(0��)�� �ƴ� �ֹε�Ϲ�ȣ(2��)���� ������ ����
    //if((null !=adtnInfo.split(',')[0])&&("null" !=adtnInfo.split(',')[0]) && (adtnInfo.split(',')[0]!="" )){
    if(adtnInfo.split(',').length > 3){
        if((null !=adtnInfo.split(',')[2])&&("null" !=adtnInfo.split(',')[2]) && (adtnInfo.split(',')[2]!="" )){
            jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_regist4.gif" alt="���">');
        }       
    }
}
/******************************************************************
 * fnFileEvdc        �������� ���
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
 * fnAdtnInfo        �ΰǺ񳻿� ���
 * @param
 * @return
******************************************************************/
function fnAdtnInfo(obj,idx){
    var frm     =   document.frm;
    var url, result,amt,param,arr_result;
    var tObjIdx = obj.id.split("_")[1];

    //������üũ
    if(!chk_frm_value("SelDtlsItxpCd",tObjIdx)) return;
    //��������üũ
    if(!chk_frm_value("SelSubDtlsItxpCd",tObjIdx))  return;
    //�ΰǺ�,���������ΰ�츸 ��ϰ���
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
            $("#ItxpAdtnInfo_"+tObjIdx).html('<img src="/bt/bt_regist4.gif" alt="���">');
            $("#rchrInfo_"+tObjIdx).val(result);            //�������������� ���ڿ�(������������ "|" ������ ������",")
        }else{
        }
    }
}
/******************************************************************
 * uf_edmsUploadFile        EDMS���Ͼ��ε� ����޼ҵ� ȣ��
 * @param
 * @return
******************************************************************/
function uf_edmsUploadFile(mode,idx, edmsDocId){
    var docKey;
    var usrId;          //�����ID
    var hmpwRoleDv;     //����ڱ��� 
    var rcmsGrpCd;      //RCMS�׷��ڵ�
    var evdcDv;         //��������
    var pmsId;          //PMSID
    var sbjtId;         //������ȣ
    var agrmtSeqNo;     //�����Ϸù�ȣ
    var agrmtInstId;    //������
    var useDt;          //�������
    var itxpCd;         //����ڵ�
    var DtlsItxpCd;     //�����ڵ�
    var SubDtlsItxpCd;  //�������ڵ�
    
    var frm     =   document.frm;
    frm.dockeyNo.value  =   idx;

    //������üũ
    if(!chk_frm_value("SelDtlsItxpCd",idx)) return;
    //��������üũ
    if(!chk_frm_value("SelSubDtlsItxpCd",idx))  return;
    //ǰ��üũ
    if(!chk_frm_value("ItxpItem",idx))  return;
    //�ݾ�üũ
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
        
        //2011 �ű� EDMS ����Ű ����
        //����Ű����( PMSID + ����ID + �����Ϸù�ȣ + ������ + ����� + �������� + ��� + ���� + ������)
        docKey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
        frm.docKey.value    =   docKey;

        // EDMS÷�����ϵ��ȣ��
        edmsUploadFileNew("frm", mode, docKey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
        
    }else{
        // EDMS÷�����ϵ��ȣ��
        
        //alert(mode);
        //alert(edmsDocId);
        //alert(usrId);
        //alert(hmpwRoleDv);
        edmsUploadFileNew("frm", mode, edmsDocId, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
    }

        
}
/******************************************************************
 * edmsReturnAction     EDMS ��ȯ�� ����
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
            $("#ItxpFileEvdc_"+docKeyNo).html('<img src="/bt/bt_regist4.gif" alt="���">');
        }
    }
}
/******************************************************************
 * chk_itxp_evdc_rst_amt    ����ϱݾװ� �����ݾ� ��ġ���� üũ
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
    //����ϱݾ� �հ�
    for(i=0;i<rows;i++){
        tot_useAmt  =   Number(tot_useAmt)+Number($("#ItxpUseAmt_"+i).val().replace(/,/gi,""));
        tot_splyAmt =   Number(tot_splyAmt)+Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        tot_vatAmt  =   Number(tot_vatAmt)+Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
    }
    
    
    if( "C" == frm.Evdc_Dv.value ){
        //2012.11.26 ���ޱݾ��� ��ġ�ϴ°�쿡 �ݾ� üũ(���ڼ��ݰ�꼭�� ��� ���ޱݾ� ������ ������ �� ����)
        if( frm.Evdc_SplyAmt.value == tot_splyAmt )
        {
            if(tot_useAmt != frm.Evdc_SumAmt.value ){   
                return_msg  = "���ݾ��� �հ�ݾ��� ��ϵ� ������ �հ�ݾ�("+toMoney(frm.Evdc_SumAmt.value)+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }else if(tot_splyAmt != Number(frm.Evdc_SplyAmt.value) ){
                return_msg  = "���ݾ��� ���ޱݾ��� ��ϵ� ������ ���ޱݾ�("+toMoney(frm.Evdc_SplyAmt.value)+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }else if(tot_vatAmt != Number(frm.Evdc_VatAmt.value) ){
                return_msg  = "���ݾ��� �ΰ����ݾ��� ��ϵ� ������ �ΰ����ݾ�("+toMoney(frm.Evdc_VatAmt.value)+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }
        }else{
            if( tot_useAmt != frm.Evdc_SumAmt.value ){  
                return_msg  ="���ݾ��� �հ�ݾ��� ��ϵ� ������ �հ�ݾ�("+toMoney(frm.Evdc_SumAmt.value)+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }           
        }
    }else if(("T"==frm.Evdc_Dv.value) ){
        
        if( tot_splyAmt == frm.Evdc_SplyAmt.value ){
            if(tot_useAmt != frm.Evdc_SumAmt.value){
                return_msg  ="���ݾ��� �հ�ݾ��� ��ϵ� ������ �հ�ݾ�("+toMoney(frm.Evdc_SumAmt.value)+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }else if(tot_vatAmt != frm.Evdc_VatAmt.value){
                return_msg  ="���ݾ��� �ΰ����ݾ��� ��ϵ� ������ �ΰ����ݾ�("+toMoney(frm.Evdc_VatAmt.value)+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }
        }else{
            if(tot_useAmt != Number(frm.Evdc_SumAmt.value) ){
                return_msg  ="���ݾ��� �հ�ݾ��� ��ϵ� ������ �հ�ݾ�("+toMoney(frm.Evdc_SumAmt.value)+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }else if( $('#ExclsVatAmtYn').val() == 'N' && tot_splyAmt != Number(frm.Evdc_SplyAmt.value) ){  
                return_msg  ="���ݾ��� ���ޱݾ��� ��ϵ� ������ ���ޱݾ�("+toMoney(frm.Evdc_SplyAmt.value)+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }
        }
    //��Ÿ, ī��� �ջ�ݾ׸� ��ġ�ϸ� ����� ������(���ޱݾ�,�ΰ����� ���� ����)
    }else if( "E"==frm.Evdc_Dv.value ){
        if(tot_useAmt != frm.Evdc_SumAmt.value){
            return_msg  ="���ݾ��� �հ�ݾ��� ��ϵ� ������ �հ�ݾװ� ��ġ���� �ʽ��ϴ�.";
            return return_msg;
        }
    }else{
        alert("���� �̵�� �����Դϴ�.");
    }
    return return_msg;
}

/******************************************************************
 * uf_Rsltitxp_update       ��ȹ/����/�������
 * @param
 * @return
******************************************************************/
function uf_Rsltitxp_update(){
    var frm     =   document.frm;
    var param,target_url;

    //-----------------------------------
    //  ��������� ��ȿ�� �˻�
    //-----------------------------------
    for(i=0; i<document.frm.itxp_cnt.value; i++){
        if(!chk_frm_value("SelDtlsItxpCd",i))       return;         // ����
        if(!chk_frm_value("SelSubDtlsItxpCd",i))    return;         // ������
        if(!chk_frm_value("ItxpItem",i))            return;         // ǰ��
        if(!chk_frm_value("ItxpUseAmt",i))          return;         // ���ݾ�
        if(!chk_frm_value("ItxpSplyAmt",i))         return;         // ���ޱݾ�
        if(!chk_frm_value("ItxpVatAmt",i))          return;         // �ΰ���
        
        // 2011.10.19 �µ��� : �ΰ����� ���ޱݾ��� �ʰ��ϴ� ��찡 �ֱ� ������ ���� ����
        // 2011.09.16 �µ��� : �ΰ����� �ִ� ���� �ݾ��� ���ޱݾ��� 50% ������ �� (������ ���� ��������)
        //var splyAmt   = Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        //var vatAmt    = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
        
        //if(splyAmt < vatAmt*2){
        //  alert("�ΰ����� �ִ� ���� �ݾ��� ���ޱݾ��� 50%���� �Դϴ�.");
        //  $("#ItxpVatAmt_"+i).focus();
        //  return false;
        //}
    }
    //-----------------------------------
    //  �񿵸������ ������ ����� �������� �ΰǺ񳻿� ��Ͼ���
    //  �űԺ���ڵ� �߰��� ���� ���������������� ��쿡�� �������� �ΰǺ񳻿� ��Ͼ���
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
        //  �������� üũ
        //-----------------------------------
        if(frm.EdmsDocId.length > 1){
            for(i=0;i<frm.EdmsDocId.length;i++){
                if((null==frm.EdmsDocId[i].value || ""==frm.EdmsDocId[i].value)){
                    alert("���������� ������ּ���.");
                    return;
                }
            }
        }else{
            if(null==frm.EdmsDocId.value || ""==frm.EdmsDocId.value){
                alert("���������� ������ּ���.");
                return;
            }       
        }
        //-----------------------------------
        //  �ΰǺ񳻿� üũ(�ΰǺ�,���������ΰ�츸 ����ʼ�)
        //-----------------------------------
        if(frm.rchrInfo.length > 1){
            for(i=0;i<frm.rchrInfo.length;i++){
                if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].value, false)){
                    if(null==frm.rchrInfo[i].value || ""==frm.rchrInfo[i].value){
                        alert("�ΰǺ񳻿��� ������ּ���.");
                        return;
                    }else{
                        if(frm.rchrAmt[i].value.replace(/,/gi,"") != frm.ItxpUseAmt[i].value.replace(/,/gi,"")){
                            alert("���ݾ��� �հ�� ��ϵ� �ΰǺ񳻿��� �ݾװ� ��ġ���� �ʽ��ϴ�.");
                            return;
                        }
                    }
                }
            }
        }else{
            if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                if(null==frm.rchrInfo.value || ""==frm.rchrInfo.value){
                    alert("�ΰǺ񳻿��� ������ּ���.");
                    return;
                }else{
                    if(frm.rchrAmt.value.replace(/,/gi,"") != frm.ItxpUseAmt.value.replace(/,/gi,"")){
                        alert("���ݾ��� �հ�� ��ϵ� �ΰǺ񳻿��� �ݾװ� ��ġ���� �ʽ��ϴ�.");
                        return;
                    }
                }
            }
        }
    }

    
    if("C"!=frm.Evdc_Dv.value){
        var exctnStgDv = (true==document.frm.ExctnStgDv[0].checked) ? "1" : "2";
        
        // Ÿ������ ���
        if("1"==exctnStgDv){
            //-----------------------------------
            //  �������� ���� ������ ��ȿ���˻�
            //-----------------------------------
            var msg = chk_Itxp_ExctnStgDv(frm, frm.Evdc_Dv.value);
            if(!(""==msg)){
                alert(msg);
                return false;
            }   
        }else{
            //-----------------------------------
            //  �����������п� ���� ������ ��ȿ���˻�
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
            alert("��������ȸ�� ���ֽʽÿ�.");
            return;
        }   
    }
    
    
    var msg = chk_itxp_evdc_rst_amt();
    if(!(""==msg)){  alert(msg);return; }       

    
//  if("C"!=frm.Evdc_Dv.value){
//      //-----------------------------------
//      //  ������ü ��û�׸� ��ȿ�� �˻�
//      //-----------------------------------
//      if(""==frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value){
//          alert("�ʼ��׸��� �ݵ�� �����ϼž� �մϴ�.\r\n\r\n* �ʼ����� �׸� : �Աݰ���(����)");
//          frm.RcvBnkCd.focus();
//          return;
//      }
//      if(! validate_frm(frm) ) return; // ��ȿ��ó��       
//  } 

    if(!confirm("�����Ͻðڽ��ϱ�?")){return;}
    
    param =     "AGRMT_SEQ_NO="+frm.S_AGRMT_SEQ_NO.value;
    param +=    "&AGRMT_INST_ID="+frm.S_AGRMT_INST_ID.value;
    param +=    "&PMS_ID="+frm.S_PMS_ID.value;
    param +=    "&BZ_CLAS_CD="+frm.S_BZ_CLAS_CD.value;
    param +=    "&CPCG_INST_BZPR_NO="+frm.S_CPCG_INST_BZPR_NO.value;
    param +=    "&AGRMT_INST_BZPR_NO="+frm.S_AGRMT_INST_BZPR_NO.value;
    
    //���񰪴��
    if(document.frm.itxp_cnt.value == 1){
        param   +=  "&ITXP_CD="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
        param   +=  "&ITXP_NM="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].text;
    }else{
        for(i =0;i< frm.SelDtlsItxpCd.length;i++){
            param   +=  "&ITXP_CD="+frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].value;
            param   +=  "&ITXP_NM="+frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].text;
        }
    }
    //�����񰪴��
    if(document.frm.itxp_cnt.value == 1){
        param   +=  "&DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
        param   +=  "&DTLS_ITXP_NM="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].text;
    }else{
        for(i =0;i< frm.SelSubDtlsItxpCd.length;i++){
            param   +=  "&DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value;
            param   +=  "&DTLS_ITXP_NM="+frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].text;
        }       
    }
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                    try{   
                        
                        reset_submit();
                        alert("�����Ǿ����ϴ�.");
                        self.close();
                        
                    }finally{
                        opener.uf_search();
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
    
    removeTempAttribute(frm);
    
}
//-------------------------------
//ī�������Ŀ����� ȭ�鱸������
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
    <!--  ����ϳ��� �󼼳��� ǥ start -->
    <div class="t10 b20 pop_wh">
        <!-------------------------------------------------------------------------------->
        <!--    ������ǥ�ùڽ� ����� ���� -->
        <!-------------------------------------------------------------------------------->
        <%@ include file="/inc/sbjt_info_pop.jsp" %>                                                                                                                
        <!-------------------------------------------------------------------------------->
        <!--    ������ǥ�ùڽ� ����� �� -->
        <!-------------------------------------------------------------------------------->    
      
    </div>
    <!-- // ����ϳ��� �󼼳��� ǥ end// -->

        <form name="frm" id="frm" method="post">
            <!-- ��������  -->
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
            <input type="hidden" id="S_MY_ACCT_TRNS_ALWN_YN"    name="S_MY_ACCT_TRNS_ALWN_YN"       value="<%=StringUtil.null2void(jData.getString("MY_ACCT_TRNS_ALWN_YN")) %>"/>  <!-- ��������ü��뿩�� -->
            <input type="hidden" id="S_UNFY_MGNT_INST_YN"   name="S_UNFY_MGNT_INST_YN"      value="<%=StringUtil.null2void(UnfyMgntInstYn) %>"/>
            <input type="hidden" id ="ButrId"               name ="ButrId"                  value="<%=StringUtil.null2void(ButrId) %>"/>               <!-- �����ŷ�����ID                    -->
            <input type="hidden" id ="Evdc_Dv"              name ="Evdc_Dv"                 value="<%=StringUtil.null2void(TrscEvdcDv) %>"/>           <!-- ��������                    -->
            <input type="hidden" id ="Evdc_SumAmt"          name ="Evdc_SumAmt"             value="<%=StringUtil.null2void(Evdc_SumAmt) %>"/>          <!-- ����_��ü�ݾ�                    -->
            <input type="hidden" id ="Evdc_SplyAmt"         name ="Evdc_SplyAmt"            value="<%=StringUtil.null2void(Evdc_SplyAmt) %>"/>         <!-- ����_���ޱݾ�                    -->
            <input type="hidden" id ="Evdc_VatAmt"          name ="Evdc_VatAmt"             value="<%=StringUtil.null2void(Evdc_VatAmt) %>"/>          <!-- ����_�ΰ�����                    -->
            <input type="hidden" id ="Cus_SplrCoNm"         name ="Cus_SplrCoNm"            value="<%=StringUtil.null2void(Cus_SplrCoNm) %>"/>         <!-- ������ȸ���                    -->
            <input type="hidden" id ="VatPsvApcYn"          name="VatPsvApcYn"              value="<%=StringUtil.null2void(VatPsvApcYn) %>"/>          <!--  �ΰ���������û���� -->
            <input type="hidden" id="dockeyNo"              name="dockeyNo"                 value=""/>                  <!-- ���õ� �������̺�Ű -->
            <input type="hidden" id="doc_dv"                name="doc_dv"                   value=""/>                  <!-- ��������/�ΰǺ񳻿� -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""/>                  <!-- ������EDMS_dockey -->
            <input type="hidden" id="docName"               name="docName"                  value=""/>                  <!-- ���ϰ����(������ϸ�) -->
            <input type="hidden" id="methodName"            name="methodName"               value=""/>                  <!-- �޼ҵ�� -->    
            <input type="hidden" id="attr98"                name="attr98"                   value=""/>                  <!-- ���ϰ����(������ϸ�) -->
            <input type="hidden" id="attr99"                name="attr99"                   value=""/>                  <!-- ���ϰ����(������ϰ���) -->
            <input type="hidden" id="itxp_cnt"              name="itxp_cnt"                 value="1"/>                 <!-- ����ϰǼ� -->
            <input type="hidden" id="p_rchrInfo"            name="p_rchrInfo"               value=""/>
            
            <input type="hidden" id="ExclsVatAmtYn"         name="ExclsVatAmtYn"            value="<%=StringUtil.null2void(jData.getString("EXCLS_VAT_AMT_YN")) %>" /> <!--  �ΰ��� ���ܿ��� -->
                
    <!-- �������� �󼼳��� ǥ start -->
    <div class="pop_wh b20">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�������� �󼼳��� ǥ" class="tbl_type02">
        <caption>
        �������� �󼼳��� ǥ
        </caption>
        <colgroup>
        <col width="20%" />
        <col width="80%" />
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">��������</th>
            <td class="ll"><%=ComboUtil.getComboBox("RND134", "evma_gb", "", "disabled onchange='SplrInfoDisplay();'", TrscEvdcDv, ComboUtil.OPT_NONE) %></td>
          </tr>
          </tbody>          
      </table>
    </div>
    <!-- //�������� �󼼳��� ǥend// -->
    <h3>���������</h3>
    <div class="b05 ar">
    <div class="fl" style="color:red;font-weight:bold;margin-top:7px;">�����Ѿ� : <%=FormatUtil.getMoneyForm(Evdc_SumAmt)%></div>
      <a href="#dummy" onclick="uf_frmNewWinNs(document.frm, '/pop/T01_12_00.jsp', 'GUIDE_LINE', '800', '850');"><img src="/bt/bt_guide2.gif" alt="���� Guideline"/></a>
      <a href="#dummy" onclick="fnAddRow();"><img src="/bt/bt_plus.gif" alt="�߰��ϱ�"/></a>
      <a href="#dummy" onclick="fnRemove();calc_amtSet();"><img src="/bt/bt_minus.gif" alt="����"/></a>
    </div>
    <!-- �׸��� start -->
<div>


<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbl_type08" summary="ǰ�� ����" id="ItxpList">
                <caption>ǰ����</caption>
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
                  <th scope="col"><label for="chck">����</label></th>
                  <th scope="col">����</th>
                  <th scope="col">������</th>
                  <th scope="col"><label for="part">ǰ��</label></th>
                  <th scope="col"><label for="usemoney">���ݾ�</label></th>
                  <th scope="col"><label for="suppmoney">���ޱݾ�</label></th>
                  <th scope="col"><label for="vat">�ΰ���</label></th>
                  <th scope="col">����<br />����</th>
                  <th scope="col" style="white-space: nowrap;">�ΰǺ�<br />����</th>
                  <th scope="col" class="dycell" style="display:none;">�����<br />��ó</th>
                </tr>
              </thead>
                <tbody>
                <tr>
                    <td class="ac"><input type="checkbox" class="checkbox" name="ItxpChk" id="ItxpChk_0" value="0"  /></td>
                    <td class="ac">
                        <select name="SelDtlsItxpCd" id="SelDtlsItxpCd_0" onchange="SelDtlsItxpCdOnChange(this);" style="width:98%">
                            <option value="">����</option>
                        </select>
                    </td>
                    <td class="ac">
                        <select name="SelSubDtlsItxpCd" id="SelSubDtlsItxpCd_0"  onchange="SelDtlsItxpCdOnChange2(this);" style="width:98%" >
                            <option value="">����</option>
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
                        <span id="ItxpFileEvdcVal_0" style="display:none;"></span><a href="#dummy" class="itxpFileEvdcVal"><span id="ItxpFileEvdc_0" onclick="fnFileEvdc(this);">'<img src="/bt/bt_nonregist.gif" alt="�̵��">'</span></a>
                        <input type="hidden" name="EvdcDcmtCmadId"  id="EvdcDcmtCmadId_0"       value="" />
                        <input type="hidden" name="ExtEdmsDocId"        id="ExtEdmsDocId_0"     value="" />
                        
                        <input type="hidden" name="EdmsDocId"       id="EdmsDocId_0"        value="" /> <!-- ������EDMS_dockey -->
                        <input type="hidden" name="FileNm"          id="FileNm_0"           value="" /> <!-- ���ϰ����(������ϸ�) -->
                    </td>
                    <td class="ac">
                        <span id="ItxpAdtnInfoVal_0" style="display:none;"></span><a href="#dummy"  class="ItxpAdtnInfo"><span id="ItxpAdtnInfo_0" onclick="fnAdtnInfo(this);">'<img src="/bt/bt_nonregist.gif" alt="�̵��">'</span></a>
                        <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- �������������� -->
                        <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- �����������ѱݾ� -->
                        
                        <input type="hidden" id="ButrId_0"              name="BUTR_ID"          value=""/>
                        <input type="hidden" id="BuitId_0"              name="BUIT_ID"          value=""/>
                        
                        <!-- 2012.06.15 : �̱⿵ - ������� ���� �߰� -->
                        <input type="hidden" id="USEREGDT_0"                name="USE_REG_DT"                   value=""/>
                        <input type="hidden" id="USEREGTM_0"                name="USE_REG_TM"                   value=""/>
                        <input type="hidden" id="ITXPREGSEQ_0"              name="USE_REG_SN"                   value=""/>
                        <input type="hidden" id="LSTISPTST_0"               name="LST_ISPT_ST"                      value=""/>                      
                        <input type="hidden" id="LSTISPTRSLTSN_0"           name="LST_ISPT_RSLT_SN"                 value=""/>
                        <input type="hidden" id="LSTISPTAFTHUPDYN_0"        name="LST_ISPT_AFTH_UPD_YN"             value=""/>
                        <!-- 2012.06.15 : �̱⿵ - ������� ���� �߰� -->
                    </td>
                    <td class="ac dycell" style="display:none;">
                  <select title="����񱸺�" name="ShrSorcSn" id="SelShrSorcSn_0" style="width:60px;" disabled="disabled">
                    <option value="">�̻��</option>
                  </select>
                  </td>
                </tr>
                 </tbody>
               <tfoot>
                <tr>
                  <td colspan="2" class="sum1">���ޱݾ� <span id="evdc_splyAmtTxt"><%=FormatUtil.getMoneyForm(Evdc_SplyAmt) %></span></td>
                  <td class="sum1">�ΰ����� <span id="evdc_vatAmtTxt"><%=FormatUtil.getMoneyForm(Evdc_VatAmt) %></span></td>
                  <td class="sum1">����հ�</td>
                  <td class="sum2"><span id="tot_TrnsAmt">0</span></td>
                  <td class="sum2"><span id="tot_splyAmt">0</span></td>
                  <td class="sum2"><span id="tot_vatAmt">0</span></td>
                  <td class="sum1"></td>
                  <td class="sum1"></td>
                  <td class="sum1 dycell" style="display:none;"></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr" style="display:none;">
                  <td colspan="2" class="sum1">���ޱݾ����� ����</td>
                  <td colspan="8"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn" class="inputl" style="width:98%" value="<%=StringUtil.null2void(org.apache.commons.lang.StringEscapeUtils.escapeHtml(jData.getString("SPLY_AMT_DFAMT_RSN"))) %>" /></td>
                </tr>               
              </tfoot>
            </table>

</div>
    <!-- //�׸��� end// -->
    <!-- 2013-09-13 ������ ����/������ ���� ��û �ش� �˸� ���� -->
    <!-- <div class="guide_bu">�񿵸������ ��� ������ ����� ������������ ��ϰ����մϴ�.</div> -->
    <div class="t10"></div>
    <div id="divTranInfo">
    <h3>�ŷ�ó����</h3>
    <div class="t05 b20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�ŷ�ó���� �󼼳��� ǥ" class="tbl_type02">
        <caption>
        �ŷ�ó���� �󼼳��� ǥ
        </caption>
        <colgroup>
        <col width="15%" />
        <col width="35%"/>
        <col width="18%" />
        <col width="32%"/>
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">ȸ���</th>
            <td><span id="d_SplrCoNm"><%=Cus_SplrCoNm %></span></td>
            <th scope="row">����ڵ�Ϲ�ȣ</th>
            <td class="ll"><span id="d_SplrBzRegNo"><%=FormatUtil.setDelim(Cus_BizNo,"999-99-999999")%></span></td>
          </tr>
          <tr>
            <th scope="row">����</th>
            <td><span id="d_SplrTpopNm"><%=Cus_TpOpNm %></span></td>
            <th scope="row">����</th>
            <td class="ll"><span id="d_SplrTpbzNm"><%=Cus_TpBzNm %></span></td>
          </tr>
          <tr>
            <th scope="row">������ּ�</th>
            <td><span id="d_SplrAdr"><%=Cus_Addr %></span></td>
            <th scope="row">��ǥ�ڸ�</th>
            <td class="ll"><span id="d_SplrReprNm"><%=Cus_ReprNm %></span></td>
          </tr>
        </tbody>
      </table>
    </div>
    </div>
    <div id="divTranInfoItem"  >     <!-- ������ü��û�׸� Div ����  -->
    <h3>������ü ��û�׸�</h3>
    <div class="ar">
      <a href="#" id="trnsInfo_0" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="�ڰ�����ü������"/></a>
    </div>
    <div class="t05 b10 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="������ü ��û�׸� �󼼳��� ǥ" class="tbl_type02">
        <caption>
        ������ü ��û�׸� �󼼳��� ǥ
        </caption>
        <colgroup>
        <col width="18%" />
        <col width="35%"/>
        <col width="18%" />
        <col width="29%"/>
        </colgroup>
        <tbody>
          <tr id="ExctnStgDv_tr" style="display:;">
            <th scope="row" >���౸��</th>
            <td colspan="3" class="ll">
                <input type="radio" id="ExctnStgDv1" name="ExctnStgDv" value="1" onclick="" disabled class="radio2">
             <label for=""ExctnStgDv1"">Ÿ������ü(��������°�����ü)</label> <span class="l10"></span>
              <input type="radio" id="ExctnStgDv2" name="ExctnStgDv" value="2" onclick="" disabled class="radio2">
             <label for="ExctnStgDv2"> �ڰ�����ü(�����������ü)</label> 
              <%=ComboUtil.getComboBox("RNDB03_1", "kind_TrnsRchAcc", "", "id='kind_TrnsRchAcc' style='width:135px;' disabled ", StringUtil.null2void(jData.getString("EXCTN_KIND_DV"),"B03007"), ComboUtil.OPT_NONE,"key")  %>
            </td>
          </tr>
          <tr>
            <th scope="row"><label for="bank">�Աݰ���</label></th>
            <td><%=ComboUtil.getComboBox("BNK_CD", "RcvBnkCd", "", "onchange='' disabled", StringUtil.null2void(RcvBnkCd), ComboUtil.OPT_SEL, false) %>
            <span id="idRcvBnkNm" style="display:none;"><%=CodeUtil.getCode("BNK_CD", RcvBnkCd, false)%>&nbsp;<%=RcvAcctNo%></span>
            <input type="text" class="inputl" onchange="" disabled style="width:80px;" name="RcvAcctNo" value="<%=RcvAcctNo %>" title="" notnull colname="�Աݰ���(���¹�ȣ)" datatype="N" maxlength="20" enc="on" onfocus="chkEnc();" />
            <span id="idFvrtAcct" style="display:none"></span>
            <span id="idMyAcctNo" style="display:none"></span>
            </td>
            <th scope="row"><label for="part1">������</label></th>
            <td class="ll">
            <input type="text"  name="OwacNm" id="OwacNm"  readonly="readonly" class="inputl" style="width:100px;background-color:#d2d2d2;" value="<%=OwacNm %>" title="" />
            </td>
          </tr>
          <tr>
            <th scope="row"><label for="bankbook1" style="font-size:8pt">����������ǥ�ó���</label></th>
            <td><input type="text" name="WdrwPsbkPrtCtt" class="inputl" readonly style="width:132px;" value="<%=WdrwPsbkPrtCtt %>" title="����������ǥ�ó���" notnull colname="����������ǥ�ó���" maxlength="12" /> (6��)</td>
            <th scope="row"><label for="bankbook2" style="font-size:8pt">�ŷ�ó����ǥ�ó���</label></th>
            <td class="ll"><input type="text" name="RcvPsbkPrtCtt" class="inputl" readonly style="width:100px;" value="<%=RcvPsbkPrtCtt %>" title="�ŷ�ó����ǥ�ó���" notnull colname="�ŷ�ó����ǥ�ó���" maxlength="12"  /> (6��)</td>
          </tr>
          <tr>
            <th scope="row"><label for="codea">����밳���ڵ�A</label></th>
            <td><input type="text" id="AchvInstIndv1Cd" name="AchvInstIndv1Cd" class="inputl" readonly style="ime-mode:disabled; width:132px;" value="<%=AchvInstIndv1Cd %>" title="����밳���ڵ�A" colname="����밳���ڵ�A" maxlength="20" /></td>
            <th scope="row"><label for="codeb">����밳���ڵ�B</label></th>
            <td class="ll"><input type="text" id="AchvInstIndv2Cd" name="AchvInstIndv2Cd" class="inputl" readonly style="ime-mode:inactive; width:100px;" value="<%=AchvInstIndv2Cd %>" title="����밳���ڵ�A" colname="����밳���ڵ�B" maxlength="10"  /></td>
          </tr>
          <tr>
            <th scope="row">��ü�ݾ�</th>
            <td><span id="txt_trnsAmt"><%=FormatUtil.getMoneyForm(Evdc_SumAmt) %></span></td>
            <th scope="row"><label for="tel">��ȭ��ȣ</label></th>
            <td class="ll"><input type="text" name="TelNo" readonly class="inputl" style="width:100px;" value="<%=TelNo %>" title="��ȭ��ȣ" notnull colname="��ȭ��ȣ" datatype="N" maxlength="15" mask="-" /></td>
          </tr>
          <tr>
            <th scope="row">���ް���</th>
            <td><span id="txt_splyAmt"><%=FormatUtil.getMoneyForm(Evdc_SplyAmt) %></span></td>
            <th scope="row">�ΰ���ġ����</th>
            <td class="ll"><span id="txt_vatAmt"><%=FormatUtil.getMoneyForm(Evdc_VatAmt) %></span></td>
          </tr>
          <tr>
            <th scope="row"><label for="memo">���޿뵵</label></th>
            <td colspan="3" class="ll"><input type="text" class="inputl"  readonly style="ime-mode:inactive; width:455px;" name="PaymUsag" value="<%=org.apache.commons.lang.StringEscapeUtils.escapeHtml(PaymUsag) %>" title="���޿뵵" notnull colname="���޿뵵" maxlength="100" /></td>
          </tr>
        </tbody>
      </table>
    </div>
    </div>
    <!-- action bt start -->
    <div class="ar"> <a href="#dummy" onclick="uf_Rsltitxp_update();" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a> </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- ���ǻ��� start -->
    <div class="pop_guide_box1">
      <div class="pop_guide_boxtd1">
        <ul class="pop_comment b10">
          <li>����Ϸ᳻���� �������� �����մϴ�.</li>
        </ul>
        <p class="pop_point_title">����밳���ڵ��?</p>
        <ul class="pop_comment">
          <li>��������� �� ȭ�鿡�� �Է��� ���� ���࿡�� �������� �ŷ������� ������ �߰������� �����ִ� ����</li>
        </ul>
        <ul class="pop_comment_list">
          <li>- ���� �츮���ุ ���񽺰����մϴ�.</li>
          <li>- ����/���ڸ� �Է� �����մϴ�.</li>
        </ul>
      </div>
    </div>

    <!-- //���ǻ��� end// -->
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
        uf_crdSetlMeth('<%=CrdSetlMeth%>');     //ī�������Ŀ����� ȭ�鱸������
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

    //1. �ű԰���
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
        
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //�ΰǺ�
      //��������������
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[15] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //�繫��ǰ��
        arrSubDtlsItxpOptInfo[16] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //�߱ٽĴ�
        arrSubDtlsItxpOptInfo[17] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //��������������
        arrSubDtlsItxpOptInfo[18] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //����ȯ��������
        arrSubDtlsItxpOptInfo[19] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //ȸ�Ǻ�
        
        
    //2. �������
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
        
        arrSubDtlsItxpOptInfo[11] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //�ΰǺ�
      //��������������
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //�繫��ǰ��
        arrSubDtlsItxpOptInfo[15] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //�߱ٽĴ�
        arrSubDtlsItxpOptInfo[16] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //��������������
        arrSubDtlsItxpOptInfo[17] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //����ȯ��������
        arrSubDtlsItxpOptInfo[18] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //ȸ�Ǻ�
        
        
    //3. �������(���� ������)
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
        
        arrSubDtlsItxpOptInfo[9] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[10] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //�ΰǺ�
      //��������������
        arrSubDtlsItxpOptInfo[11] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //�繫��ǰ��
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //�߱ٽĴ�
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //��������������
        arrSubDtlsItxpOptInfo[15] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //����ȯ��������
        arrSubDtlsItxpOptInfo[16] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //ȸ�Ǻ�
        
        
    //4. �������(���� ���� �Ϸ�)
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
        
        arrSubDtlsItxpOptInfo[7] = new SubDtlsItxpOptInfo('B0203001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[8] = new SubDtlsItxpOptInfo('B0204001','Y','Y'); //�ΰǺ�
      //��������������
        arrSubDtlsItxpOptInfo[9] = new SubDtlsItxpOptInfo('B0206001','Y','Y'); //��������
        arrSubDtlsItxpOptInfo[10] = new SubDtlsItxpOptInfo('B0206002','Y','Y'); //�繫��ǰ��
        arrSubDtlsItxpOptInfo[11] = new SubDtlsItxpOptInfo('B0206005','Y','Y'); //�߱ٽĴ�
        arrSubDtlsItxpOptInfo[12] = new SubDtlsItxpOptInfo('B0206006','Y','Y'); //��������������
        arrSubDtlsItxpOptInfo[13] = new SubDtlsItxpOptInfo('B0206003','Y','Y'); //����ȯ��������
        arrSubDtlsItxpOptInfo[14] = new SubDtlsItxpOptInfo('B0206004','Y','Y'); //ȸ�Ǻ�
        
            
    }
    
    
    SelDtlsItxpCd[0] = "B0201";
    SelDtlsItxpNm[0] = "�����ü������ �� ����";
    SelSubDtlsItxpCd[0] = new Array();
    SelSubDtlsItxpNm[0] = new Array();
    SelSubDtlsItxpCd[0][0]  = "B0201009";    SelSubDtlsItxpNm[0][0]  = "�ǹ����Ժ�";
    SelSubDtlsItxpCd[0][1]  = "B0201010";    SelSubDtlsItxpNm[0][1]  = "�ǹ�������";
    SelSubDtlsItxpCd[0][2]  = "B0201005";    SelSubDtlsItxpNm[0][2]  = "�����";
    SelSubDtlsItxpCd[0][3]  = "B0201006";    SelSubDtlsItxpNm[0][3]  = "�������Ժ�";
    SelSubDtlsItxpCd[0][4]  = "B0201008";    SelSubDtlsItxpNm[0][4]  = "����������";
    SelSubDtlsItxpCd[0][5]  = "B0201007";    SelSubDtlsItxpNm[0][5]  = "����������";
    SelSubDtlsItxpCd[0][6]  = "B0201015";    SelSubDtlsItxpNm[0][6]  = "�þࡤ��ᱸ�Ժ�";
    SelSubDtlsItxpCd[0][7]  = "B0201018";    SelSubDtlsItxpNm[0][7]  = "����ǰ���ۺ�";
    SelSubDtlsItxpCd[0][8]  = "B0201019";    SelSubDtlsItxpNm[0][8]  = "����ǰ���ۺ�";
    SelSubDtlsItxpCd[0][9]  = "B0201016";    SelSubDtlsItxpNm[0][9]  = "����м���";
    SelSubDtlsItxpCd[0][10] = "B0201020";    SelSubDtlsItxpNm[0][10] = "���輳�����ۺ�";
    SelSubDtlsItxpCd[0][11] = "B0201001";    SelSubDtlsItxpNm[0][11] = "�����ü�������Ժ�";
    SelSubDtlsItxpCd[0][12] = "B0201021";    SelSubDtlsItxpNm[0][12] = "�����ü���������";
    SelSubDtlsItxpCd[0][13] = "B0201002";    SelSubDtlsItxpNm[0][13] = "�����ü������ġ��";
    SelSubDtlsItxpCd[0][14] = "B0201004";    SelSubDtlsItxpNm[0][14] = "�����ü��������";
    SelSubDtlsItxpCd[0][15] = "B0201003";    SelSubDtlsItxpNm[0][15] = "�����ü������������";
    SelSubDtlsItxpCd[0][16] = "B0201017";    SelSubDtlsItxpNm[0][16] = "����ó����������";

    SelDtlsItxpCd[1] = "B0202";
    SelDtlsItxpNm[1] = "����Ȱ����";
    SelSubDtlsItxpCd[1] = new Array();
    SelSubDtlsItxpNm[1] = new Array();
    SelSubDtlsItxpCd[1][0]  = "B0202010";   SelSubDtlsItxpNm[1][0]  = "������ݡ�����";
    SelSubDtlsItxpCd[1][1]  = "B0202022";   SelSubDtlsItxpNm[1][1]  = "�����Ʒú�";
    SelSubDtlsItxpCd[1][2]  = "B0202001";   SelSubDtlsItxpNm[1][2]  = "��������";
    SelSubDtlsItxpCd[1][3]  = "B0202002";   SelSubDtlsItxpNm[1][3]  = "���ܿ���";
    SelSubDtlsItxpCd[1][4]  = "B0202032";   SelSubDtlsItxpNm[1][4]  = "������Ժ�";
    SelSubDtlsItxpCd[1][5]  = "B0202019";   SelSubDtlsItxpNm[1][5]  = "�������������";
    SelSubDtlsItxpCd[1][6]  = "B0202041";   SelSubDtlsItxpNm[1][6]  = "���������";
    SelSubDtlsItxpCd[1][7]  = "B0202043";   SelSubDtlsItxpNm[1][7]  = "��Ʈ��ũ ���";
    SelSubDtlsItxpCd[1][8]  = "B0202020";   SelSubDtlsItxpNm[1][8]  = "���������屸�Ժ�";
    SelSubDtlsItxpCd[1][9]  = "B0202042";   SelSubDtlsItxpNm[1][9]  = "������ȫ����";
    SelSubDtlsItxpCd[1][10] = "B0202005";   SelSubDtlsItxpNm[1][10] = "�����";
    SelSubDtlsItxpCd[1][11] = "B0202013";   SelSubDtlsItxpNm[1][11] = "��ǰ���Ժ�";
    SelSubDtlsItxpCd[1][12] = "B0202012";   SelSubDtlsItxpNm[1][12] = "�繫��ǰ��";
    SelSubDtlsItxpCd[1][13] = "B0202023";   SelSubDtlsItxpNm[1][13] = "���̳����ֺ�";
    SelSubDtlsItxpCd[1][14] = "B0202036";   SelSubDtlsItxpNm[1][14] = "���ΰ���������";
    SelSubDtlsItxpCd[1][15] = "B0202030";   SelSubDtlsItxpNm[1][15] = "�ӱ��";
    SelSubDtlsItxpCd[1][16] = "B0202011";   SelSubDtlsItxpNm[1][16] = "������";
    SelSubDtlsItxpCd[1][17] = "B0202037";   SelSubDtlsItxpNm[1][17] = "�߱ٽĴ�";
    SelSubDtlsItxpCd[1][18] = "B0202038";   SelSubDtlsItxpNm[1][18] = "�����η�Ȱ���";
    SelSubDtlsItxpCd[1][19] = "B0202040";   SelSubDtlsItxpNm[1][19] = "����Ȱ����";
    SelSubDtlsItxpCd[1][20] = "B0202028";   SelSubDtlsItxpNm[1][20] = "�����";
    SelSubDtlsItxpCd[1][21] = "B0202004";   SelSubDtlsItxpNm[1][21] = "�μ��";
    SelSubDtlsItxpCd[1][22] = "B0202014";   SelSubDtlsItxpNm[1][22] = "������Ȱ���";
    SelSubDtlsItxpCd[1][23] = "B0202039";   SelSubDtlsItxpNm[1][23] = "�����η¾缺��";
    SelSubDtlsItxpCd[1][24] = "B0202035";   SelSubDtlsItxpNm[1][24] = "����DB �� ��Ʈ��ũ ����";
    SelSubDtlsItxpCd[1][25] = "B0202034";   SelSubDtlsItxpNm[1][25] = "�����ú�";
    SelSubDtlsItxpCd[1][26] = "B0202029";   SelSubDtlsItxpNm[1][26] = "�뿪��";
    SelSubDtlsItxpCd[1][27] = "B0202033";   SelSubDtlsItxpNm[1][27] = "Ư�����������";
    SelSubDtlsItxpCd[1][28] = "B0202024";   SelSubDtlsItxpNm[1][28] = "��ȸ�����̳�������";
    SelSubDtlsItxpCd[1][29] = "B0202044";   SelSubDtlsItxpNm[0][29] = "����ȸ ���";
    SelSubDtlsItxpCd[1][30] = "B0202021";   SelSubDtlsItxpNm[1][30] = "ȸ�Ǻ�";

    SelDtlsItxpCd[2] = "B0203";
    SelDtlsItxpNm[2] = "��������";
    SelSubDtlsItxpCd[2] = new Array();
    SelSubDtlsItxpNm[2] = new Array();
    SelSubDtlsItxpCd[2][0]  = "B0203001";    SelSubDtlsItxpNm[2][0]  = "��������";

    SelDtlsItxpCd[3] = "B0204";
    SelDtlsItxpNm[3] = "�ΰǺ�";
    SelSubDtlsItxpCd[3] = new Array();
    SelSubDtlsItxpNm[3] = new Array();
    SelSubDtlsItxpCd[3][0]  = "B0204001";    SelSubDtlsItxpNm[3][0]  = "�ΰǺ�";

    SelDtlsItxpCd[4] = "B0206";
    SelDtlsItxpNm[4] = "��������������";
    SelSubDtlsItxpCd[4] = new Array();
    SelSubDtlsItxpNm[4] = new Array();
    SelSubDtlsItxpCd[4][0]  = "B0206001";    SelSubDtlsItxpNm[4][0]  = "��������";
    SelSubDtlsItxpCd[4][1]  = "B0206002";    SelSubDtlsItxpNm[4][1]  = "�繫��ǰ��";
    SelSubDtlsItxpCd[4][2]  = "B0206005";    SelSubDtlsItxpNm[4][2]  = "�߱ٽĴ�";
    SelSubDtlsItxpCd[4][3]  = "B0206006";    SelSubDtlsItxpNm[4][3]  = "��������������";
    SelSubDtlsItxpCd[4][4]  = "B0206003";    SelSubDtlsItxpNm[4][4]  = "����ȯ��������";
    SelSubDtlsItxpCd[4][5]  = "B0206004";    SelSubDtlsItxpNm[4][5]  = "ȸ�Ǻ�";

    SelDtlsItxpCd[5] = "B0301";
    SelDtlsItxpNm[5] = "������";
    SelSubDtlsItxpCd[5] = new Array();
    SelSubDtlsItxpNm[5] = new Array();
    SelSubDtlsItxpCd[5][0] = "B0301001";    SelSubDtlsItxpNm[5][0] = "������";
    
    
    mkDtlsItxpCd("0");
    mkShrSorcSn("0");
    set_evdc_amt();
    calc_amtSet(this, true);
    DisplayDivMyAcctTransAlwn();
    
}


function setT12_01_00_0_r2(argMtSeqNo){
    if(!argMtSeqNo) return;
    
    if("G00000000000001" == argMtSeqNo){  //1. �ű԰���
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }else if("G00000000000002" == argMtSeqNo){  //2. �������
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }else if("G00000000000003" == argMtSeqNo){  //3. �������(���� ������)
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }else if("G00000000000004" == argMtSeqNo){    //4. �������(���� ���� �Ϸ�)
        document.getElementById("divMyAcctTransAlwn").style.display = "none";
    }
}    
</script>


</body>
</html>