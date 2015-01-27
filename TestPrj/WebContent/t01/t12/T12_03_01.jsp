<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_01.jsp
 *   Description        : ������û������
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014. 01. 03                   ������             
 *
 *  @author ������
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
    String hmpwRoleDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"hmpwRoleDv"));            // �η¿��ұ���
    String rcmsGrpCd                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"rcmsGrpCd"));             //RCMS�׷��ڵ�

    //-------------------------------------------
    //  �������-������ ������ �޴� �Ķ����
    //-------------------------------------------
    String TrscEvdcDv               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TrscEvdcDv"));              // �����������뱸��
    String BzexId                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzexId"));                        // ����id
    String ButrId                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ButrId"));                        // �������ŷ�����id             
    String RcvBnkCd                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvBnkCd"));                      // �Ա������ڵ�             
    String RcvAcctNo                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvAcctNo"));                     // �Աݰ��¹�ȣ
    String RcvPsbkPrtCtt                =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvAcctRcvCtt"));         // �ŷ�ó�Ա������μ⳻��      
    String WdrwPsbkPrtCtt               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RchExpAcctWdrwCtt"));      // �����������������μ⳻��
    String TrnsAmt                      =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TrnsAmt"));                       // �������ݾ�            
    String Evdc_SplyAmt                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UseSplyAmt"),"0");                   // ���ޱݾ�               
    String Evdc_VatAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UseVatAmt"),"0");                    // �ΰ���ġ����             
    String PaymUsag                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"PaymUsag"));                      // ��볻��               
    String TelNo                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TelNo"));                         // ��ȭ��ȣ               
    String ExctnStgDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnStgDv"));                    // ���ܰ豸��                        
    String AgrmtSeqNo                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));                    // �����Ϸù�ȣ                  
    String AgrmtInstId                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstId"));                   // ������ID                                 
    String AgrmtInstBzRegNo             =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstBzRegNo"));              // ����������ڵ�Ϲ�ȣ
    String AchvInstIndv1Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv1Cd"));                       // ����밳���ڵ�1
    String AchvInstIndv2Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv2Cd"));                   // ����밳���ڵ�2
    String CrdSetlMeth                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnTypDv"));                    // ������ı���(1:������/2:�ǽð���ü���)
    String ExctnSt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnSt"));                   // ������ı���(1:������/2:�ǽð���ü���)
    
    
    
    
    String RchExpAcctBnkCd              =   "";             // ��������������ڵ�              
    String RchExpAcctNo                 =   "";                // ��������¹�ȣ
    
    String Cus_ReprNm                   =   "";                                                                             // �ŷ�ó��ǥ�ڸ�
    String Cus_BizNo                    =   "";                                                                             // �ŷ�ó����ڹ�ȣ
    String Cus_TpBzNm                   =   "";                                                                             // �ŷ�ó������
    String Cus_TpOpNm                   =   "";                                                                             // �ŷ�ó���¸�
    String Cus_Addr                     =   "";                                                                             // �ŷ�ó������ּ�
    String Cus_SplrCoNm                 =   "";                                                                             // ������ȸ���
    String ItemData[]   ;
 
    
    JSONObject jData = new JSONObject();                //Json ���� ( ��ȸ����� ��� )
    
    if("G00000000000002".equals(AgrmtSeqNo) && "E".equals(TrscEvdcDv)){
        RchExpAcctBnkCd    = "003";
        RchExpAcctNo       = "10000000000";
        Cus_ReprNm         = "�����";
        Cus_BizNo          = "1111111111";
        Cus_TpBzNm         = "����";
        Cus_TpOpNm         = "����";
        Cus_Addr           = "���������� ������ ȭ�ϵ� 58-4";
        Cus_SplrCoNm       = "��RCMS";
        

        jData.put("AGRMT_SEQ_NO",AgrmtSeqNo);
        jData.put("AGRMT_INST_ID","10112249");
        jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
        jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
        jData.put("AGRMT_INST_NM","��RCMS");
        jData.put("CPCG_INST_BZ_REG_NO","1111111111");
        jData.put("EXCTN_STG_DV","2");
        jData.put("AGRMT_INST_ROLE_DV","C");
        jData.put("BZ_EXP_ACCT_BNK_CD","003");
        jData.put("BZ_EXP_ACCT_NO","20000000000");
        jData.put("RCH_EXP_ACCT_BNK_CD","003");
        jData.put("RCH_EXP_ACCT_NO","111222333333");
        jData.put("OWAC_NM","��RCMS");
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
        jData.put("SPLR_CO_NM","��RCMS");
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
        Cus_ReprNm         = "�����";
        Cus_BizNo          = "1111111111";
        Cus_TpBzNm         = "����";
        Cus_TpOpNm         = "����";
        Cus_Addr           = "���������� ������ ȭ�ϵ� 58-4";
        Cus_SplrCoNm       = "��RCMS";
        
        
        jData.put("AGRMT_SEQ_NO",AgrmtSeqNo);
        jData.put("AGRMT_INST_ID","10112249");
        jData.put("AGRMT_INST_BZ_REG_NO","1111111111");
        jData.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
        jData.put("AGRMT_INST_NM","��RCMS");
        jData.put("CPCG_INST_BZ_REG_NO","1111111111");
        jData.put("EXCTN_STG_DV","1");
        jData.put("AGRMT_INST_ROLE_DV","C");
        jData.put("BZ_EXP_ACCT_BNK_CD","004");
        jData.put("BZ_EXP_ACCT_NO","10000000000");
        jData.put("RCH_EXP_ACCT_BNK_CD","004");
        jData.put("RCH_EXP_ACCT_NO","111222333333");
        jData.put("OWAC_NM","��RCMS������");
        jData.put("INST_SBJT_PRGR_ST","10");
        jData.put("EXCTN_LIMT_ST","0");
        jData.put("EXCTN_LIMT_RSN","������������ 2���� ����� ���� ���� ó��");
        jData.put("MY_ACCT_TRNS_ALWN_YN","Y");
        jData.put("INST_TOTL_INST_AMT","20000");
        jData.put("AGRMT_CASH_LIM_AMT","20000");
        jData.put("PMS_ID","G01");
        jData.put("BZ_CLAS_CD","S1856");
        jData.put("BZ_CLAS_NM","RCMS �ǽ��� �������");
        jData.put("CPCG_INST_ID","11000001");
        jData.put("CPCG_INST_NM","�ѱ��������򰡰�����");
        jData.put("SBJT_ID","10037268");
        jData.put("SBJT_NM","RCMS �ǽ��� �������");
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
        jData.put("SPLR_CO_NM","��RCMS");
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
<title>�������� ����� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body class="line">
<ul id="accessibility">
    <li><a href="#header">�ָ޴��ٷΰ���</a></li>
    <li><a href="#contaniner">�������ٷΰ���</a></li>
    <li><a href="#footer">�ϴܹٷΰ���</a></li>
</ul>
<hr/>
<noscript><p id="warning_script">�ڹٽ�ũ��Ʈ�� �������� ���� �� �������� ���������� ������ ���� �� �ֽ��ϴ�.</p></noscript>
<div id="wrapper">

    <!-- //header topMenu start// -->
    <%@ include file="/inc/topMenu.jsp" %>
    <!-- //header topMenu end// -->
    
    <!-- contaniner start -->
    <div id="contaniner">
        <!-- left start -->
        <div class="snb">
            <!-- left menu start -->
            




                    <div><img src="/images/pefo/sub_navt1.gif" alt="���������" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_txt">��Ȳ��ȸ</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t11/T11_01_00.jsp'); return false;" class="menu_3dep">�������� ��Ȳ��ȸ</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>
                            <div class="sub_bg">
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_txt_on">�����������</a></div>
                                <ul>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_01_00_0.jsp'); return false;" class="menu_3dep">�����</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_02_00.jsp'); return false;" class="menu_3dep">������</a></li>
                                    <li><a href="#" onclick="fn_url('/t01/t12/T12_03_00.jsp'); return false;" class="menu_3dep_on">��������� ��ȸ</a></li>
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_txt">������ϰ���</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_01_00.jsp'); return false;" class="menu_3dep">������ϳ��� ��ȸ</a></li>

                                    <li><a href="#" onclick="fn_url('/t01/t14/T14_02_00.jsp'); return false;" class="menu_3dep">������볻�� ���</a></li>
                        
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
* Parameter     : ���� (ExtcnGb[S:����, R:�����])
* Description   : ��������
********************************************************/
function uf_save(ExtcnGb){
    var frm = document.frm;
    var param;
    
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
                if(null==frm.EdmsDocId[i].value || ""==frm.EdmsDocId[i].value){
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
                        return;
                    }
                }
            }
        }else{
            if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                if(null==frm.rchrInfo.value || ""==frm.rchrInfo.value){
                    alert("�ΰǺ񳻿��� ������ּ���.");
                    return;
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

    
    if( frm.OwacNm.value == "" ){
        alert("��������ȸ�� ���ֽʽÿ�.");
        return;
    }
    
    if("C"!=frm.Evdc_Dv.value){
        //-----------------------------------
        //  ������ü ��û�׸� ��ȿ�� �˻�
        //-----------------------------------
        if(""==frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value){
            alert("�ʼ��׸��� �ݵ�� �����ϼž� �մϴ�.\r\n\r\n* �ʼ����� �׸� : �Աݰ���(����)");
            frm.RcvBnkCd.focus();
            return;
        }
        
        //-----------------------------------
        //  Ÿ������ü�� �Աݰ��°� ������������� �˻�
        //-----------------------------------
        if( true                                                    ==  document.frm.ExctnStgDv[0].checked      &&
            frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value  ==  "<%=RchExpAcctBnkCd%>"                  &&
            frm.RcvAcctNo.value                                     ==  "<%=RchExpAcctNo%>"){
            alert("�Աݰ��°� ��������¿� �����մϴ�.");
            return;
        }
        
        //if(! validate_frm(frm) ) return; // ��ȿ��ó��       
    } 
    
    var msg = chk_itxp_evdc_amt();
    if(!(""==msg)){  alert(msg);return; }
    
    if(!confirm("�����Ͻðڽ��ϱ�?")){return;}
    
    if( isSubmit() ) return;    // ����ó��

    param =     "AGRMT_SEQ_NO="+frm.S_AGRMT_SEQ_NO.value;
    param +=    "&AGRMT_INST_ID="+frm.S_AGRMT_INST_ID.value;
    param +=    "&PMS_ID="+frm.S_PMS_ID.value;
    param +=    "&BZ_CLAS_CD="+frm.S_BZ_CLAS_CD.value;

    //2011.08.19 �ڰ�����ü �ĸ����� �߰�
    var exctnStgDv = (true==document.frm.ExctnStgDv[0].checked) ? "1" : "2";
    param += "&ExctnStgDv=" + exctnStgDv;
    
    
    //���񰪴��
    if(document.frm.itxp_cnt.value == 1){
        param       +=  "&ITXP_CD="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
    }else{
        for(i =0;i< frm.SelDtlsItxpCd.length;i++){
            param   +=  "&ITXP_CD="+frm.SelDtlsItxpCd[i].options[frm.SelDtlsItxpCd[i].options.selectedIndex].value;
        }
    }
    //�����񰪴��
    if(document.frm.itxp_cnt.value == 1){
        param       +=  "&DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd.options[frm.SelSubDtlsItxpCd.options.selectedIndex].value;
    }else{
        for(i =0;i< frm.SelSubDtlsItxpCd.length;i++){
            param   +=  "&DTLS_ITXP_CD="+frm.SelSubDtlsItxpCd[i].options[frm.SelSubDtlsItxpCd[i].options.selectedIndex].value;
        }       
    }
    get2post(frm, param);
    get2post(frm, "ExtcnGb="+ExtcnGb );
    
    


    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                    try{   
                        document.body.style.cursor = "wait";
                        alert("�������û �Ǿ����ϴ�.");
                        document.body.style.cursor = "auto";
                        fn_url("/t01/t12/T12_03_00.jsp");
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
                
                
    removeTempAttribute(frm);   //get2post ����
    
}

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
    if("00006277" == "<%=AgrmtInstId%>"){
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



function DisplayDivMyAcctTransAlwn(){
    var frm = document.frm;
    
    get2post(frm, "AGRMT_SEQ_NO="+"<%=AgrmtSeqNo%>");
    get2post(frm, "AGRMT_INST_ID="+"<%=AgrmtInstId%>");
    
    
    uf_proce_display_on();  //�ε���
    
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
                
                }, 1000);   // 1���� ���� 1000 = 1��s
                
                
    removeTempAttribute(frm);   //get2post ����
    
}
    
    
/******************************************************************
 * set_evdc_amt      ��� ù��° row�� �����ݾ� ����
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
        jQuery("#FileNm_0").val("����������_1.jpg\;");
        jQuery("#rchrInfo_0").val("");
        jQuery("#SelShrSorcSn_0").val("null");
        if('0' != '0'){
            fnAddRow();
        }
    <%
    }else{
    %>
        fnItxpSetting('0', 'U201312243766084', 'B0202', 'B0202005', "�����", '<%=TrnsAmt%>', '<%=Evdc_SplyAmt%>', '<%=Evdc_VatAmt%>', 'D201312243022599', '','20131224');
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
        
        //20140321 �ǽ�ȯ�� �������ó ��Ȱ�� ó��
        //$('.ShrSorcSn').show();
        $('.ShrSorcSn').hide();
    }else{
        tObj.options[0] = new Option("�̻��",'',true,false);
        $('.ShrSorcSn').hide();
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
// ������̺� �ʱ�ȭ
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

// ���ϰ� ���� or �Է�
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
        jQuery("#ItxpFileEvdc_"+idx).html('<img src="/bt/bt_regist4.gif" alt="���">');
    }
    
    // �����߽ɵ���Ÿ���� �ΰǺ񳻿��� ������(0��), ������(1��)�� ���� ������ �ΰǺ񳻿��� �ִ� ��쿡�� �̵������ ǥ�õ�.
    // ������(0��)�� �ƴ� �ֹε�Ϲ�ȣ(2��)���� ������ ����
    //if((null !=adtnInfo.split(',')[0])&&("null" !=adtnInfo.split(',')[0]) && (adtnInfo.split(',')[0]!="" )){
    if(adtnInfo.split(',').length > 3){ 
        if((null !=adtnInfo.split(',')[2])&&("null" != adtnInfo.split(',')[2]) && (adtnInfo.split(',')[2]!="" )){
            $('.ItxpAdtnInfo').show();
            jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_regist4.gif" alt="���">');
        }       
    }
}
//-------------------------------
//ī�������Ŀ����� ȭ�鱸������
//-------------------------------
function uf_crdSetlMeth(){
    if("C"=='<%=TrscEvdcDv%>' && "1"=='<%=CrdSetlMeth%>'){
        document.getElementById("divTranInfoItem").style.display    = "none";
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
    var EdmsDocId = "";
    
    if(""!=$("#EdmsDocId_"+tObjIdx).val()){
        mode = "update";
        EdmsDocId = $("#EdmsDocId_"+tObjIdx).val();
    }

    document.frm.doc_dv.value="1";
    uf_edmsUploadFile(mode,tObjIdx, EdmsDocId);
}

/******************************************************************
 * uf_edmsUploadFile        EDMS���Ͼ��ε� ����޼ҵ� ȣ��
 * @param
 * @return
******************************************************************/
function uf_edmsUploadFile(mode,idx, EdmsDocId){
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
    
    var frm_key =   document.rtr_str_form;
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
        
        //2011 �ű� EDMS ����Ű ����
        //����Ű����( PMSID + ����ID + �����Ϸù�ȣ + ������ + ����� + �������� + ��� + ���� + ������)
        docKey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
        frm.docKey.value    =   docKey;

        // EDMS÷�����ϵ��ȣ��
        edmsUploadFileNew("frm", mode, dockey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
        
    }else{
        // EDMS÷�����ϵ��ȣ��
        edmsUploadFileNew("frm", mode, EdmsDocId, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
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



/*********************************************
 * uf_tran_owac  ������(�Ǹ�) ��ȸ
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
            chk_cnt++; //�Ǹ������ʿ� ������ ����
        }
    }//end of for

    $('#RcvNmChkDv_0').val('');
    if( chk_cnt == 0 ){
        $('#RcvNmChkDv_0').val('B06006');           //[RNDB06] B06006 �Ǹ���ȸ���ܼ���
        uf_tran_owac2( frm, frm );
    }else{
        
        if( bzRegNo == '0000000000' ){
            $('#RcvNmChkDv_0').val('B06008');       //[RNDB06] B06008 ���ΰŷ�ó
            uf_tran_owac2( frm, frm );
        }else if( bzRegNo == '8888888888' ){
            $('#RcvNmChkDv_0').val('B06009');       //[RNDB06] B06009 �ؿܰŷ�ó
            uf_tran_owac2( frm, frm );          
        }else{
            uf_tran_owac_c( bzRegNo,'', frm, frm ); //bzRegNo ���� ������ ������ ��ȸ��
        }
    }

    return false;
}

</script>










<!-- content start -->
<div id="content">
      <!-- pagenav start -->
      



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u12_03_00_t.gif" alt="��������� ��ȸ"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>���������</li>
                       <li><img src="/images/common/arr.gif" alt=" " />�����������</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">��������� ��ȸ</span></li>
                        
                    </ul>
                </div>
            </div>                
      <!-- //pagenav end// -->
      <div class="t30"></div>
    <!--  �������� ����� ǥ start -->

    <div class="t10 b20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�������� ����� ǥ" class="tbl_type03">
        <caption>
        �������� ����� ǥ
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
            <th scope="col">������ȣ</th>
            <th scope="col" colspan="2">������</th>
            <th scope="col">�ְ����</th>
            <th scope="col">�ܰ�</th>
            <th scope="col">����</th>
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
            <th scope="col">�����</th>
            <th scope="col">����ڵ�Ϲ�ȣ</th>
            <th scope="col">��������</th>
            <th scope="col">���ذ��߱Ⱓ</th>
            <th scope="col">�����ѻ����</th>
            <th scope="col">��밡�ɻ���</th>
          </tr>
          <tr>
            <td class="ac"><%=StringUtil.null2void(jData.getString("AGRMT_INST_NM")) %></td>
            <td><%=FormatUtil.setDelim(StringUtil.null2void(jData.getString("AGRMT_INST_BZ_REG_NO")), "999-99-99999") %></td>
            <td class="ac"><%=CodeUtil.getCode("RND035",StringUtil.null2void(jData.getString("AGRMT_INST_ROLE_DV"))) %></td>
            <td class="ac"><%=FormatUtil.setDelim(jData.getString("DEV_STR_DT"), "9999.99.99")+"~"+FormatUtil.setDelim(jData.getString("DEV_END_DT"), "9999.99.99")%>(<%=DateUtil.monthsBetween(jData.getString("DEV_STR_DT"),jData.getString("DEV_END_DT"))%>����)</td>
            <td class="ac"><%=FormatUtil.getMoneyForm(jData.getString("INST_TOTL_INST_AMT")) %></td>
            <td class="ac"><%=CodeUtil.getCode("RND139", jData.getString("EXCTN_LIMT_ST"))%></td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- // �������� ����� ǥ end// -->

        <form name="frm" method="post">
            <!-- ��������  -->
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
            <input type="hidden" id="S_MY_ACCT_TRNS_ALWN_YN"    name="S_MY_ACCT_TRNS_ALWN_YN"       value="<%=StringUtil.null2void(jData.getString("MY_ACCT_TRNS_ALWN_YN")) %>">  <!-- ��������ü��뿩�� -->
            <input type="hidden" id="S_SBJT_NM"             name="S_SBJT_NM"                value="<%=StringUtil.null2void(jData.getString("SBJT_NM")) %>">
            <input type="hidden" id="S_BZ_CLAS_NM"          name="S_BZ_CLAS_NM"             value="<%=StringUtil.null2void(jData.getString("BZ_CLAS_NM")) %>">
            <input type="hidden" id ="ButrId"               name ="ButrId"                  value="<%=StringUtil.null2void(ButrId) %>"/>           <!-- �����Ϸù�ȣ                    -->
            <input type="hidden" id ="Evdc_Dv"              name ="Evdc_Dv"                 value="<%=StringUtil.null2void(TrscEvdcDv) %>"/>   <!-- ��������                    -->
            <input type="hidden" id ="TrnsAmt"              name ="TrnsAmt"                 value="<%=StringUtil.null2void(TrnsAmt) %>"/>          <!-- ����_��ü�ݾ�                    -->
            <input type="hidden" id ="Evdc_SumAmt"          name ="Evdc_SumAmt"             value="<%=StringUtil.null2void(TrnsAmt) %>"/>          <!-- ����_��ü�ݾ�                    -->
            <input type="hidden" id ="Evdc_SplyAmt"         name ="Evdc_SplyAmt"            value="<%=StringUtil.null2void(Evdc_SplyAmt) %>"/>         <!-- ����_���ޱݾ�                    -->
            <input type="hidden" id ="Evdc_VatAmt"          name ="Evdc_VatAmt"             value="<%=StringUtil.null2void(Evdc_VatAmt) %>"/>          <!-- ����_�ΰ�����                    -->

            
            <input type="hidden" id ="BzRegNo"              name ="BzRegNo"                 value="<%=StringUtil.null2void(Cus_BizNo) %>"/>        <!-- �ŷ�ó����ڹ�ȣ   -->
            <input type="hidden" id="dockeyNo"              name="dockeyNo"                 value=""/>                  <!-- ���õ� �������̺�Ű -->
            <input type="hidden" id="doc_dv"                name="doc_dv"                   value=""/>                  <!-- ��������/�ΰǺ񳻿� -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""/>                  <!-- ������EDMS_dockey -->
            
            <input type="hidden" id="docName"               name="docName"                  value=""/>                  <!-- ���ϸ� -->
            <input type="hidden" id="methodName"            name="methodName"               value=""/>                  <!-- �������� �޼ҵ� -->
            
            <input type="hidden" id="attr98"                name="attr98"                   value=""/>                  <!-- ���ϰ����(������ϸ�) -->
            <input type="hidden" id="attr99"                name="attr99"                   value=""/>                  <!-- ���ϰ����(������ϰ���) -->
            <input type="hidden" id="itxp_cnt"              name="itxp_cnt"                 value="1"/>                 <!-- ����ϰǼ� -->

            <input type="hidden" id="RcvNmChkDv_0"          name="RcvNmChkDv"               value="" />
            
    <!-- �������� �󼼳��� ǥ start -->
    <div class="pop_wh b05">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�������� �󼼳��� ǥ" class="tbl_type02">
        <caption>�������� �󼼳��� ǥ</caption>
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
    <div class="guide_bu">�ϰ�����, ��ü����� ������ü, �������ܾ� ���� ����� ��� ��Ÿ�������θ� �����մϴ�.</div>
    <div class="t10"></div>
    <h3>���������</h3>
    <!-- ����η�����  start -->
    <div class="t05"> 
    
        <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="ǰ�� ����" class="tbl_type08" id="ItxpList">
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
              <col width="10%" />
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
                  <th scope="col">�ΰǺ�<br />����</th>
                  <th scope="col" class="ShrSorcSn" style="display:none;">�����<br />��ó</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="ac"><input type="checkbox" name="ItxpChk" id="ItxpChk_0" value="0" disabled="disabled" /></td>
                  <td class="ac">
                    <select title="����" name="SelDtlsItxpCd" id="SelDtlsItxpCd_0" onchange="SelDtlsItxpCdOnChange(this);" style="width:98%" disabled="disabled">
                    <option value="">����</option>
                    </select>
                  </td>
                  <td class="ac">
                    <select title="������" name="SelSubDtlsItxpCd" id="SelSubDtlsItxpCd_0" style="width:98%" onchange="SelDtlsItxpCdOnChange2(this);" disabled="disabled" >                            
                    <option value="">����</option>
                    </select>
                  </td>
                  <td class="ac"><input type="text" name="ItxpItem" id="ItxpItem_0" value="" maxlength="100" size="20" title="ǰ��" class="inputl" style="width:85px" disabled="disabled"/></td>
                  <td class="ac"><input type="text" name="ItxpUseAmt"  id="ItxpUseAmt_0" value="0"   size="17" readonly maxlength="15" title="���ݾ�" class="inputl currency" style="width:75px;background-color:#d2d2d2;" disabled="disabled"/></td>
                  <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0"   value="0"   size="17" maxlength="15"  title="���ޱݾ�" class="inputl currency" style="width:75px" disabled="disabled"/></td>
                  <td class="ac"><input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0"  value="0"   size="17" maxlength="15" title="�ΰ���" class="inputl currency" style="width:62px" disabled="disabled"/></td>
                  <td class="ac"><span id="ItxpFileEvdcVal_0" style="display:none;"></span><a href="#dummy" class="itxpFileEvdcVal" ><span id="ItxpFileEvdc_0" onclick="fnFileEvdc(this);"><img src="/bt/bt_nonregist.gif" alt="�̵��"/></span></a>
                            <input type="hidden" name="ExtEdmsDocId"        id="ExtEdmsDocId_0"     value="" /> <!-- ���� ������EDMS_dockey -->
                            <input type="hidden" name="EdmsDocId"           id="EdmsDocId_0"        value="" /> <!-- ������EDMS_dockey -->
                            <input type="hidden" name="FileNm"              id="FileNm_0"           value="" /> <!-- ���ϰ����(������ϸ�) -->
                            <input type="hidden" name="file_Cnt"            id="file_Cnt_0"         value="" /> <!-- ���ϰ����(������ϰ���) -->
                  </td>
                  <td class="ac"><span id="ItxpAdtnInfoVal_0" style="display:none;"></span><span class="ItxpAdtnInfo" id="ItxpAdtnInfo_0"><img src="/bt/bt_nonregist.gif" alt="�̵��"/></span></a>
                            <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- �������������� -->
                            <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- �����������ѱݾ� -->
                            
                            <input type="hidden" name="BuitId" id="BuitId_0" value="" />
                            <input type="hidden" name="UseDt" id="UseDt_0" value="" />
                  </td>
                  <td class="ac ShrSorcSn" style="display:none;">
                  <select title="����񱸺�" name="SelShrSorcSn" id="SelShrSorcSn_0" style="width:60px;">
                    <option value="">�̻��</option>
                  </select>
                  </td>
                </tr>
                </tbody>
               <tfoot>
                <tr>
                  <td colspan="2" class="sum1">���ޱݾ� <span id="evdc_splyAmtTxt"><%=FormatUtil.getMoneyForm(Evdc_SplyAmt)%></span></td>
                  <td class="sum1">�ΰ����� <span id="evdc_vatAmtTxt"><%=FormatUtil.getMoneyForm(Evdc_VatAmt)%></span></td>
                  <td class="sum1">����հ�</td>
                  <td class="sum2"><span id="tot_TrnsAmt">0</span></td>
                  <td class="sum2"><span id="tot_splyAmt">0</span></td>
                  <td class="sum2"><span id="tot_vatAmt">0</span></td>
                  <td class="sum1"></td>
                  <td class="sum1"></td>
                  <td class="sum1 ShrSorcSn"></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr" style="display:none;">
                  <td colspan="2" class="sum1">���ޱݾ����� ����</td>
                  <td colspan="8"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn" value="<%=StringUtil.null2void(jData.getString("SPLY_AMT_DFAMT_RSN")) %>" style="width:99%" /></td>
                </tr>               
              </tfoot>
            </table>
            <!------------------------------------------------------------>
            <!----------------- ���������  ������ END     ------------------>
            <!------------------------------------------------------------>
                
    </div>
    <!-- //��������� end// -->
    <div class="t20"></div>
    <h3>�ŷ�ó����</h3>
    <div class="t05 b20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�ŷ�ó���� �󼼳��� ǥ" class="tbl_type02">
        <caption>
        �ŷ�ó���� �󼼳��� ǥ
        </caption>
        <colgroup>
        <col width="18%" />
        <col width="35%"/>
        <col width="18%" />
        <col width="29%"/>
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
    <h3>������ü ��û�׸�</h3>
    <div class="ar">
      <a href="#" id="trnsInfo_0" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="�ڰ�����ü������"/></a>
    </div>
            <!-------------------------------------------------------------->
            <!---------------       ������ü���� ������ BEGIN    ---------------->
            <!-------------------------------------------------------------->
            <!-- ������ü��û�׸� ���̺�  ����  -->    
    <div class="t05 b10 pop_wh" id="divTranInfoItem">
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
            <th scope="row">���౸��</th>
            <td colspan="3" class="ll">
            <input type="radio" id="ExctnStgDv1" name="ExctnStgDv" value="1" onclick="exctn_ExctnStgDv_v2(this.value, '3', '<%=RchExpAcctBnkCd%>','<%=CodeUtil.getCode("BNK_CD", RchExpAcctBnkCd, false)%>', '<%=RchExpAcctNo%>','','','','<%=StringUtil.null2void(jData.getString("MY_ACCT_TRNS_ALWN_YN"))%>');" class="radio2" />
             <label for="ExctnStgDv1">Ÿ������ü(��������°�����ü)</label> <span class="l10"></span>
              <input type="radio" id="ExctnStgDv2" name="ExctnStgDv" value="2" onclick="exctn_ExctnStgDv_v2(this.value, '3', '<%=RchExpAcctBnkCd%>','<%=CodeUtil.getCode("BNK_CD", RchExpAcctBnkCd, false)%>', '<%=RchExpAcctNo%>','<%=CodeUtil.getCode("BNK_CD", RchExpAcctBnkCd, false)%>','<%=RchExpAcctBnkCd%>','<%=RchExpAcctNo%>','<%=StringUtil.null2void(jData.getString("MY_ACCT_TRNS_ALWN_YN"))%>');" class="radio2" />
             <label for="ExctnStgDv2"> �ڰ�����ü(�����������ü)</label> 
              <%=ComboUtil.getComboBox("RNDB03_1", "kind_TrnsRchAcc", "", "id='kind_TrnsRchAcc' style='width:135px;' ", StringUtil.null2void(jData.getString("EXCTN_KIND_DV"),"B03007"), ComboUtil.OPT_NONE,"key")  %>
            </td>
          </tr>
          <tr>
            <th scope="row"><span class="txt_orb">*</span> <label for="bank">�Աݰ���</label></th>
            <td><%=ComboUtil.getComboBox("BNK_CD", "RcvBnkCd", "", "style='width:50px' onchange='uf_OwacNmRst();'", StringUtil.null2void(RcvBnkCd), ComboUtil.OPT_SEL, false) %>
            <input type="text" class="inputl" onchange="uf_OwacNmRst();" style="width:90px;" name="RcvAcctNo" id="RcvAcctNo" value="<%=RcvAcctNo %>" title="" notnull colname="�Աݰ���(���¹�ȣ)" datatype="N" maxlength="20" enc="on" onfocus="chkEnc();" />
             <a id="idFvrtAcct" href="javascript:uf_popup_fvrt_acct();"><img src="/bt/bt_acct01.gif" alt="���־��°���"/></a>
             <div id="idRcvBnkNm"  style="float:left;padding-top:4px;display:none;"><%=CodeUtil.getCode("BNK_CD", RchExpAcctBnkCd, false)%>&nbsp;<%=RchExpAcctNo%></div>
             <a id="idMyAcctNo" href="#dummy" class="uf_popup_my_acct" onclick="uf_popup_my_acct();" style="float:right;display:none"><img src="/bt/bt_myacctno.gif" alt="�ڰ�����ü�����"/></a>
            </td>
            <th scope="row"><span class="txt_orb">*</span> <label for="part1">������</label></th>
            <td class="ll">
            <!-- �׽�Ʈ�� ���� �Է°��� �ϵ��� ���� -->
            <input type="text"  name="OwacNm" id="OwacNm"  readonly="readonly" class="inputl" style="width:100px;background-color:#d2d2d2;" value="" title="" />
              <a href="#dummy" onclick="uf_tran_owac();"><img src="/bt/bt_acct02.gif" alt="��������ȸ"/></a>
            </td>
          </tr>
          <tr>
            <th scope="row"><span class="txt_orb DynReqStar">*</span> <label for="bankbook1" style="font-size:8pt">����������ǥ�ó���</label></th>
            <td><input type="text" name="WdrwPsbkPrtCtt" class="inputl" style="width:100px;" value="<%=WdrwPsbkPrtCtt %>" title="����������ǥ�ó���" notnull colname="����������ǥ�ó���" maxlength="12" /> (6��)</td>
            <th scope="row"><span class="txt_orb DynReqStar">*</span> <label for="bankbook2" style="font-size:8pt">�ŷ�ó����ǥ�ó���</label></th>
            <td class="ll"><input type="text" name="RcvPsbkPrtCtt" class="inputl" style="width:100px;" value="<%=RcvPsbkPrtCtt %>" title="�ŷ�ó����ǥ�ó���" notnull colname="�ŷ�ó����ǥ�ó���" maxlength="12"  /> (6��)</td>
          </tr>
          <tr>
            <th scope="row"><label for="AchvInstIndv1Cd">����밳���ڵ�A</label></th>
            <td><input type="text" name="AchvInstIndv1Cd" id="AchvInstIndv1Cd" class="inputl" style="ime-mode:inactive; width:200px;" value="<%=AchvInstIndv1Cd %>" title="����밳���ڵ�A" colname="����밳���ڵ�A" maxlength="20" /></td>
            <th scope="row"><label for="AchvInstIndv2Cd">����밳���ڵ�B</label></th>
            <td class="ll"><input type="text" name="AchvInstIndv2Cd" id="AchvInstIndv2Cd" class="inputl" style="ime-mode:inactive; width:100px;" value="<%=AchvInstIndv2Cd %>" title="����밳���ڵ�B" colname="����밳���ڵ�B" maxlength="10"  /></td>
          </tr>
          <tr>
            <th scope="row">��ü�ݾ�</th>
            <td><span id="txt_trnsAmt"><%=FormatUtil.getMoneyForm(TrnsAmt) %></span></td>
            <th scope="row"><span class="txt_orb">*</span> <label for="tel">��ȭ��ȣ</label></th>
            <td class="ll"><input type="text" name="TelNo" class="inputl" style="width:100px;" value="<%=TelNo %>" title="��ȭ��ȣ" notnull colname="��ȭ��ȣ" datatype="N" maxlength="15" mask="-" /></td>
          </tr>
          <tr>
            <th scope="row">���ް���</th>
            <td><span id="txt_splyAmt"><%=FormatUtil.getMoneyForm(Evdc_SplyAmt) %></span></td>
            <th scope="row">�ΰ���ġ����</th>
            <td class="ll"><span id="txt_vatAmt"><%=FormatUtil.getMoneyForm(Evdc_VatAmt) %></span></td>
          </tr>
          <tr>
            <th scope="row"><span class="txt_orb">*</span> <label for="memo">���޿뵵</label></th>
            <td colspan="3" class="ll"><input type="text" class="inputl"  style="ime-mode:inactive; width:455px;" name="PaymUsag" value="<%=PaymUsag %>" title="���޿뵵" notnull colname="���޿뵵" maxlength="100" /></td>
          </tr>
        </tbody>
      </table>
    </div>
    
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "157", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- �׸��� End -->
            <!-- �󼼺��� ���̾� �˾� -->
            <div id="layerPopup" style="display:none;z-index:999999;">
                <div id="layerPopupTitle" style="width:355px;height:30px;">
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="�ݱ�"></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
<!-- *************************  rMateGrid ************************* -->    
    
    <!-- action bt start -->
    <div class="action_bt">
        <div class="ar"><a href="#dummy" onclick="uf_save('R');" class="bt_action3-1" title="�����"><span class="bt_sp">�����</span></a> </div>
    </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- ���ǻ��� start -->
      <div class="guide_box">
        <p class="guide_boxt"></p>
        <div class="guide_boxc">
        <ul class="comment">
          <li>�������� ������� [������ü ��û�׸�, ��������]�� ���������մϴ�.</li>
        </ul>
        <ul class="comment" id="divMyAcctTransAlwn" style="display:none;">
            <li><span style='color:graytext;'> �� �ǽð����տ���������ý���(RCMS) ���뿡 ���� ���� ��û ����̹Ƿ� �ڰ�����ü(�����������ü)�� �����մϴ�.</span></li>
        </ul>        
        <p class="point_title">����밳���ڵ��?</p>
        <ul class="comment">
          <li>��������� �� ȭ�鿡�� �Է��� ���� ���࿡�� �������� �ŷ������� ������ �߰������� �����ִ� ����</li>
        </ul>
        <ul class="comment_list">
          <li>- ���� �츮���ุ ���񽺰����մϴ�.</li>
          <li>- ����/���ڸ� �Է� �����մϴ�.</li>
        </ul>
        
      </div>
      <p class="guide_boxt"></p>
    </div>
    <!-- //���ǻ��� end// -->
    </form>
  </div>
<!-- //content end// -->



    <!-- //contaniner end//-->
    <div class="cb"></div>

    <!-- footer start -->
    <%@ include file="/inc/jspFooter.jsp" %>
    <!-- //footer end// -->
    
    <!-- ���޴� start -->
    <%@ include file="/inc/quickMenu.jsp" %>
    <!-- //���޴� end// -->

</div><!-- wrapper end -->
<script type="text/javascript">
        
     $(document).ready(function() {
         
          // rMateGrid �ʱ�ȭ
          rMateGridInit();
     
        });
     
     

     
     
     var cnt = 0;
     
     function gridDataLoad(){
         
         var gridValue = [];
         try{
             
             cnt = 0;
     
             gridValue[cnt++] = {"TRNS_ST":"����","TRNS_DT":"2014-03-20 14:12:49","TRNS_AMT":"<%=TrnsAmt%>","RPRCS_TCNT":"0","FNC_LNK_RSPS_CD":"","FNC_LNK_RSPS_CTT":"[00030199] ��Ÿ����"};
             
         }finally{
             
             gridData = gridValue;    //��ȸ��� JSON �� ��������
             rMateGridSetData();  //rMateGrid ����
         }
         
     }
     
</script>







<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

//���̾ƿ� ����
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"TRNS_ST\"            dataField=\"TRNS_ST\"             headerText=\"��ü����\"   width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRNS_DT\"            dataField=\"TRNS_DT\"             headerText=\"��ü�Ͻ�\"   width=\"120\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"            headerText=\"��ü�ݾ�\"   width=\"90\"  visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RPRCS_TCNT\"         dataField=\"RPRCS_TCNT\"          headerText=\"��ó��Ƚ��\" width=\"0\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FNC_LNK_RSPS_CD\"    dataField=\"FNC_LNK_RSPS_CD\"     headerText=\"����ڵ�\"   width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FNC_LNK_RSPS_CTT\"   dataField=\"FNC_LNK_RSPS_CTT\"    headerText=\"�������\"   width=\"200\" visible=\"true\"  textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
        <footers>\
            <DataGridFooter id=\"footer\" backgroundColor=\"0xE7E7E7\" useDataSource=\"true\" color=\"0x000000\" fontWeight=\"bold\" >\
                <DataGridFooterColumn />\
                <DataGridFooterColumn label=\"�հ�\" textAlign=\"right\" />\
                <DataGridFooterColumn labelJsFunction=\"writeCount\" textAlign=\"right\" />\
                <DataGridFooterColumn summaryOperation=\"SUM\" dataColumn=\"{TRNS_AMT}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            </DataGridFooter>\
        </footers>\
    </DataGrid>\
    <Style>\
        .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                    fontFamily: ����; fontSize: 12; color: 0x000000; \
                    horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                    verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                    selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
        .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
        .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
    </Style>\
</rMateGrid>\
";


//�׸��� ���̾ƿ� ȣ�� 
var rMateGridInitLayout = function() {
    gridApp = FABridge.gridBridge.root();
    gridRoot = gridApp.getGridRoot();
    gridApp.setLayout(layoutStr); //�׸��� ���̾ƿ� ����


    var layoutCompleteHandler = function(event) {
        dataGrid = gridApp.getDataGrid();
        
    };
    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    gridRoot.addEventListener("layoutComplete", gridDataLoad);

};



//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//�ε� �� rMadeGrid ���
function rMateGridSetData() {
    //rMageGrid �ʱ�ȭ
    //gridApp.setData(null);

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //������ ���
    
    
    // ���콺 �� �̺�Ʈ �����ʸ� �����մϴ�.
    addGridMouseWheelEventListener();

    
};


function writeCount(column) {
    collection = gridRoot.getCollection();

    return collection.getLength()+" ��";
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
    exctn_ExctnStgDv_v2(mode,'3', "004",'E ����', "555555555550", 'A ����', "003", "10000000000", "Y");
    uf_crdSetlMeth('');     //ī�������Ŀ����� ȭ�鱸������
    //set_ExctnKind();
    
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