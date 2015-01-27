<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_03_50.jsp 
 *   Description        : �Ϸ�������˾�â(���켱)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.14                     ������             
 *
 *  @author     ������
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
//  �������-������ ������ �޴� �Ķ����
//-------------------------------------------
String BzExpExctnEvdcDv             =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzExpExctnEvdcDv"));      // �����������뱸��
String ButrId                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ButrId"));                // ���ID 
String ExctnRegDt                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnRegDt"));            // �����������
String ExctnRegDrtm                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnRegDrtm"));          // �������ð�
String Evdc_SumAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzExpExctnAmt"));         // �������ݾ�            
String Evdc_SplyAmt                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"SplyAmt"));               // ���ޱݾ�               
String Evdc_VatAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"VatAmt"));                // �ΰ���ġ����             
String AgrmtSeqNo                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));            // �����Ϸù�ȣ                  
String AgrmtInstId                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstId"));           // ������ID
String PmsId                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"pmsId"));                 // PMS_ID
String BzExpExctnRegYn              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzExpExctnRegYn"));       // ����������Ͽ���
String CrdSetlMeth                  =   "";         // ������ı���(1:������/2:�ǽð���ü���)
String PsnlAcctUseYn                =   "";     //�ΰǺ񼺰��¿���
String UnfyMgntInstYn               =   "";     //��������������

String RchExpAcctBnkCd              =   "";     // ��������������ڵ�              
String RchExpAcctNo                 =   "";     // ��������¹�ȣ

String Cus_ReprNm                   =   "";                                                                     // �ŷ�ó��ǥ�ڸ�
String Cus_BizNo                    =   "";                                                                     // �ŷ�ó����ڹ�ȣ
String Cus_TpBzNm                   =   "";                                                                     //�ŷ�ó������
String Cus_TpOpNm                   =   "";                                                                     //�ŷ�ó���¸�
String Cus_Addr                     =   "";                                                                     //�ŷ�ó������ּ�
String Cus_SplrCoNm                 =   "";                                                                     //������ȸ���

String TaxOgnSumAmt                 =   "";             //�� �հ�ݾ�
String TaxOgnSplyAmt                =   "";             //�� ���ޱݾ�
String TaxOgnVatAmt                 =   "";             //�� �ΰ�����


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
String hmpwRoleDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"hmpwRoleDv"));            // �η¿��ұ���
String rcmsGrpCd                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"rcmsGrpCd"));             //RCMS�׷��ڵ� 
String WRTG_DT                      =   "";                                                                     //�������(���ڼ��ݰ�꼭)
String APV_DT                       =   "";                                                                     //�������(ī��)  

String ExclsVatAmtYn                =   ""; //�ΰ����ݾ� ���� ����

String ItemData[]   ;


        
    
JSONObject jData = new JSONObject();                //Json ���� ( ��ȸ����� ��� )
    
//if("G00000000000004".equals(AgrmtSeqNo) ){ // ��Ÿ����
     PsnlAcctUseYn        = "Y";
     UnfyMgntInstYn       = "Y";
     RchExpAcctBnkCd      = "020";
     RchExpAcctNo         = "555555555550";
     Cus_ReprNm           = "������";
     Cus_BizNo            = "1001010000";
     Cus_TpBzNm           = "����";
     Cus_TpOpNm           = "����";
     Cus_Addr             = "��õ������ ������ ������ 1138";
     Cus_SplrCoNm         = "(��) �� ��ü";
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
     jData.put("SPLR_CO_NM","��RCMS");
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
            alert('���������� �����ϼ���');
            $('#EvmaGb_'+_index).focus();
            return false;
        }
        if( $this.children().attr('alt') != '�ݱ�' ){
            $this.parent().parent().next().next().show();
            $this.children().attr('src','//bt/bt_grid_close1.gif').attr('alt','�ݱ�');
        }else{
            $this.parent().parent().next().next().hide();   
            $this.children().attr('src','//bt/bt_grid1.gif').attr('alt','�߰��Է�');
        }
        return false;
    });
    
    
});
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

function setDefaultKindTrnsRchAcc(idx){
    // ������� ����Ʈ�� ����
    document.getElementById('kind_TrnsRchAcc_'+idx).options[0].selected = true;
}
    
/******************************************************************
 * set_evdc_amt      ��� ù��° row�� �����ݾ� ����
 * @param
 * @return
 *  page���� customizing �Ǿ���
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
    jQuery("#FileNm").val("�̹��� 3.png\;");
    if( "" != $.trim($("#EdmsDocId").val()) ){
        jQuery("#ItxpFileEvdc").html('<img src="/bt/bt_regist2.gif" alt="�������ϵ��">');
    }
    


        $('#d_SplrReprNm_'  +'0').html("(��)�λ�����(������)");
        $('#d_SplrBzRegNo_' +'0').html("604-81-04753");
        $('#d_SplrTpopNm_'  +'0').html("����");
        $('#d_SplrTpbzNm_'  +'0').html("����");
        $('#d_SplrAdr_'     +'0').html("�λ걤���� ���� ���ϵ� 830-38���� ");
    
    
    $('#SplrBzRegSt_'       +'0').val("A04001");
    $('#SplrTaxtTypDv_'     +'0').val("A05001");
    
    
    
    fnItxpSetting(true,'0', 'T201303112250283','U201303113764290', 'B04101', 'T', 'B04101', '123', '2', '1', '1', '','B16000','','N'
            ,"11",'Y','N'
            ,'2','1', '1'
            ,'0','0', '0'
            ,'6048104753'
            );
    
    
    //��ü��������
    fnTrnsInfoSetting('0','T','2','B03004','003'
            ,'32303000000471','��RCMS','(��)�λ���','��RCMS','�ݰ������׽�Ʈ'
            ,'','11',"�ݰ������׽�Ʈ", '', '1');
    
    jQuery("#SplrAuth_"         +"0").val("1"); //�����Ȯ�� ���� ����
    jQuery("#rchrInfo_"         +'0').val("");
    jQuery("#SelShrSorcSn_"     +'0').val("");
    jQuery("#SqbnSplrExctnRsn_" +'0').val("");

    jQuery('#etc_ChkBzRegNo_'   +'0').hide();
    jQuery('#ChkBzRegNo_'       +'0').hide();

    
    
    if('3' != '0'){
        fnAddRow();
    }
    
    
    //��Ÿ��������
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
    
    fnItxpSetting(true,'1', 'E201303112250284','U201303113764291', 'B04101', 'E', 'B04101', 'ǰ', '2', '1', '1', '','B16000','','N'
            ,"",'Y','N'
            ,'2','1', '1'
            ,'0','0', '0'
            ,'2208162517'
            );
    
    //��ü��������
    fnTrnsInfoSetting('1','E','2','B03005','003'
            ,'32303000000471','��RCMS','12','12','�ݰ������׽�Ʈ'
            ,'','11',"�ݰ������׽�Ʈ", '', '1');
    
    jQuery("#SplrAuth_"         +"1").val("1"); //�����Ȯ�� ���� ����
    jQuery("#rchrInfo_"         +'1').val("");
    jQuery("#SelShrSorcSn_"     +'1').val("");
    jQuery("#SqbnSplrExctnRsn_" +'1').val("");

    jQuery('#etc_ChkBzRegNo_'   +'1').hide();
    jQuery('#ChkBzRegNo_'       +'1').hide();

    if('3' != '1'){
        fnAddRow();
    }
    
    //��Ÿ��������
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
    
    //��ü��������
    fnTrnsInfoSetting('2','E','2','B03004','003'
            ,'32303000000471','��RCMS','KEIT','�ڰ�����ü','�ݰ������׽�Ʈ'
            ,'','1234',"�ݰ������׽�Ʈ", '', '1');
    
    jQuery("#SplrAuth_"         +"2").val("1"); //�����Ȯ�� ���� ����
    jQuery("#rchrInfo_"         +'2').val("");
    jQuery("#SelShrSorcSn_"     +'2').val("");
    jQuery("#SqbnSplrExctnRsn_" +'2').val("");

    jQuery('#etc_ChkBzRegNo_'   +'2').hide();
    jQuery('#ChkBzRegNo_'       +'2').hide();

    if('3' != '2'){
        fnAddRow();
    }
    
    //��Ÿ��������
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
    
    //��ü��������
    fnTrnsInfoSetting('3','E','2','B03004','003'
            ,'32303000000471','��RCMS','KEIT','�ڰ�����ü','�ݰ������׽�Ʈ'
            ,'','1',"�ݰ������׽�Ʈ", '', '1');
    
    jQuery("#SplrAuth_"         +"3").val("1"); //�����Ȯ�� ���� ����
    jQuery("#rchrInfo_"         +'3').val("");
    jQuery("#SelShrSorcSn_"     +'3').val("");
    jQuery("#SqbnSplrExctnRsn_" +'3').val("");

    jQuery('#etc_ChkBzRegNo_'   +'3').hide();
    jQuery('#ChkBzRegNo_'       +'3').hide();

    if('3' != '3'){
        fnAddRow();
    }
    
    //��Ÿ��������
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
    
    //ī�� �ǽð�������ü ���
    if( evdcDv == 'C' ){
        $('#InstCrdSetlMeth').val(beforeCrdSetlMeth);
        $('#divTranInfo_'       +idx).show();
        if( beforeCrdSetlMeth == '2'){
            mode = "4";
            $('#divTranInfoItem_'   +idx).show();//������ü�׸�
        }else if( evdcDv == 'C' && beforeCrdSetlMeth == '1'){
            $('#divTranInfoItem_'   +idx).hide();//������ü�׸�
        }
    }else if( evdcDv == 'E' ){
        $('#divTranInfo_'       +idx).show();
        $('#divTranInfoItem_'   +idx).show();//������ü�׸�
    }else if( evdcDv == 'T' ){
        $("#divTranInfo_"       +idx).show();
        $('#divTranInfoItem_'   +idx).show();//������ü�׸�
    }
    
    exctn_ExctnStgDv_v2(mode, '2', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, bnkCd, acctNo,document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,idx);
    
    $('#ExctnStgDv_'        +idx).val(exctnStg      ).attr('disabled',true);    // 1:Ÿ����, 2:�ڰ���
    $('#kind_TrnsRchAcc_'   +idx).val(exctnKind     ).attr('disabled',true);    // ���౸��
    $('#RcvBnkCd_'          +idx).val(bnkCd         ).attr('disabled',true);    // �����ڵ�
    $('#RcvAcctNo_'         +idx).val(acctNo        ).attr('disabled',true);    // ���¹�ȣ
    $('#OwacNm_'            +idx).val(owacNm        ).attr('disabled',true);    // �����ָ�
    $('#WdrwPsbkPrtCtt_'    +idx).val(wdrwPsbkPrtCtt).attr('disabled',true);    // ����������ǥ�ó���
    $('#RcvPsbkPrtCtt_'     +idx).val(rcvPsbkPrtCtt ).attr('disabled',true);    // �ŷ�ó����ǥ�ó���
    $('#AchvInstIndv1Cd_'   +idx).val(achvInst1     ).attr('disabled',true);    // ����밳���ڵ�A
    $('#AchvInstIndv2Cd_'   +idx).val(achvInst2     ).attr('disabled',true);    // ����밳���ڵ�B
    $('#TelNo_'             +idx).val(telNo         ).attr('disabled',true);    // ��ȭ��ȣ
    $('#PaymUsag_'          +idx).val(paymUsag.replace(/&#34;/gi,'"')).attr('disabled',true);   // ���޿뵵
    

}


// ��� ���̺� �޺�
var SelDtlsItxpCd = new Array();
var SelDtlsItxpNm = new Array();
var SelSubDtlsItxpCd = new Array();
var SelSubDtlsItxpNm = new Array();


function mkDtlsItxpCd(tObjIdx){
    var tObj = document.all["SelDtlsItxpCd"];
    var opt_name = "����";

    tObj.options.length = 1;
    tObj.options[0] = new Option(opt_name,'',true,false);

    for(var i=0,j=SelDtlsItxpCd.length; i<j; i++){
        tObj.options[i+1] = new Option(SelDtlsItxpNm[i], SelDtlsItxpCd[i]);
    }
}
/******************************************************************
* SelDtlsItxpCdOnChange      ���񺯰�
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
    var opt_name = "����";
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

        uf_frmNewWinNs(frm, url, 'NEW_ITXP_GUIDE', 800, 700, 'no');
        removeTempAttribute(frm);
    }
    //�ΰǺ� ����ý� �ΰǺ����ް��� ����
    PsnlItxpAcctNoSet();
    
}

/******************************************************************
* PsnlItxpAcctNoSet      �ΰǺ����ް��¼���(��,�ܺ��ΰǺ�/��������)
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
                if((_DtlsItxpCd == "B0101001") ||   (_DtlsItxpCd == "B0102001") || (_DtlsItxpCd == "B0203001") || (_DtlsItxpCd == "B0204001") || (_DtlsItxpCd == "B0205001")){  //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
                        //ī�������� �ƴϰ� �ΰǺ����ް��¸� ����ϴ� ����� ��쿡�� �ΰǺ� ���ް��·� ����.
                    if(frm.S_PSNL_ACCT_USEYN.value == "Y"){
                        

                        var strVal  =   "003|20000000000|��RCMS";
                        
                        arrVal = strVal.split("|");
                        
                        document.getElementById("idFvrtAcct_"+ridx).style.display           = "none";
                        document.getElementById("idowacBtn_"+ridx).style.display            = "none";
                        document.getElementById("idExctnStgDv_td1_"+ridx).style.display     = "none";
                        document.getElementById("idExctnStgDv_td2_"+ridx).style.display     = "inline";
                        document.getElementById("idExctnStgDv_td2_"+ridx).innerHTML         = "�ΰǺ����ް��� �����";
                        document.getElementById("RcvBnkCd_"+ridx).value                     = arrVal[0];
                        document.getElementById("RcvAcctNo_"+ridx).value                    = arrVal[1];
                        document.getElementById("OwacNm_"+ridx).value                       = arrVal[2];
                        document.getElementById("RcvBnkCd_"+ridx).disabled                  = true;
                        document.getElementById("RcvAcctNo_"+ridx).disabled                 = true;
                        document.getElementById("OwacNm_"+ridx).disabled                    = true;
                        
                        if(document.getElementById('RcvBnkCd_'+ridx).options[document.getElementById('RcvBnkCd_'+ridx).options.selectedIndex].value == frm.S_RCH_ACC_BNK_CD.value
                        && jQuery('#RcvAcctCd_'+ridx).val() == frm.S_RCH_ACC_NO.value){
                            jQuery('#ExctnStgDv1_'+ridx).attr('checked',false); //Ÿ������ü
                            jQuery('#ExctnStgDv2_'+ridx).attr('checked',true);  //�ڰ�����ü
                        }else{
                            jQuery('#ExctnStgDv1_'+ridx).attr('checked',true); //Ÿ������ü
                            jQuery('#ExctnStgDv2_'+ridx).attr('checked',false);  //�ڰ�����ü
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
 * fnAddRow      ���̺� �ο� �߰�
 * @param
 * @return
******************************************************************/


//���̺� �ο� �߰�
/*
function fnAddRow(){
    
    var tbody = jQuery("#ItxpList > tbody");
    var rows = tbody.find(">tr").length/3;
    var newRow1 = tbody.find(">tr").eq(-3).clone(true);
    var newRow2 = tbody.find(">tr").eq(-2).clone(true);
    var newRow3 = tbody.find(">tr:last").clone(true);

    fnControlInit([newRow1,newRow2,newRow3], rows);
    
    //newRow1.addClass('blue_line').find('.btn-opendtl').css('visibility','visible');
    newRow1.addClass('blue_line').find('.btn-opendtl > img').attr('src','//bt/bt_grid1.gif').attr('alt','�߰��Է�');
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
                    jQuery(this).html('<img src="/bt/bt_nonregist.gif" alt="�̵��">');
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
// ������̺� �ʱ�ȭ
//������̺� �ʱ�ȭ
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
    newRow1.addClass('blue_line').find('.btn-opendtl > img').attr('src','//bt/bt_grid1.gif').attr('alt','�߰��Է�');
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
// ���ϰ� ���� or �Է�
function fnItxpSetting(update, idx, butrId, buitId, evdcDv, trscSt, item, useAmt, splyAmt, vatAmt, adtnInfo, isptst,isptsn,isptupdyn,splyAmtDfamRsn, ExclsVatAmtYn,TaxOgnSumAmt,TaxOgnSplyAmt,TaxOgnVatAmt){    
    
    var tbody = jQuery("#ItxpList > tbody");
    
    var tr_idx = (idx*3);
    
    var row1 = tbody.find(">tr").eq(tr_idx);
    var row2 = tbody.find(">tr").eq(tr_idx+1);
    var row3 = tbody.find(">tr").eq(tr_idx+2);
    
    //�����ΰǸ� ���� ���� �� �� ���°ǵ��� disable
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
        
        //���ݰ�꼭�� �ݾ� ������ �Ұ���
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
        
        //���ޱݾ� ���� �߻��� ���ޱݾ� ���׻��� �� ǥ��
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
        jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_regist4.gif" alt="������">');
    }
    totlTrnsAmt += parseInt(useAmt,10);
    $('#totlAmt').text(toMoney(totlTrnsAmt));
    
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
    
    if( typeof update_enabled != 'undefined' && false == update_enabled ){
        alert("���� ���������� ������ �� �����ϴ�. ���������� Ȯ�� �ϼ���");
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
 * uf_edmsUploadFile        EDMS���Ͼ��ε� ����޼ҵ� ȣ��
 * @param
 * @return
******************************************************************/

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
    if(!chk_frm_value("SelDtlsItxpCd")) return;
    //��������üũ
    if(!chk_frm_value("SelSubDtlsItxpCd"))  return;

    usrId               = "SMTEST";
    hmpwRoleDv          = "";
    rcmsGrpCd           = "";  
    evdcDv              = "E";//��Ƽ ������ �����Ͽ� ��Ÿ�� Fixed
    
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
        
        //2011 �ű� EDMS ����Ű ����
        //����Ű����( PMSID + ����ID + �����Ϸù�ȣ + ������ + ����� + �������� + ��� + ���� + ������)
        docKey = pmsId +";"+sbjtId+";"+agrmtSeqNo+";"+agrmtInstId+";"+useDt+";"+evdcDv+";"+itxpCd+";"+DtlsItxpCd+";"+SubDtlsItxpCd;
        frm.docKey.value    =   docKey;

        // EDMS÷�����ϵ��ȣ��
        edmsUploadFileNew("frm", mode, docKey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
        
    }else{
        // EDMS÷�����ϵ��ȣ��
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
            $("#EdmsDocId").val(docKey);
            $("#FileNm").val(docName);
            jQuery("#ItxpFileEvdc").html('<img src="/bt/bt_regist2.gif" alt="�������ϵ��">');
        }
    }
}

/******************************************************************
 * chk_save     ������ ��ȿ�� üũ
 * @param
 * @return
******************************************************************/
function chk_save(){
    var frm = document.frm;
    var param,target_url;
    

    
    $('#Evdc_SumAmt'    ).val($('#tot_TrnsAmt'  ).text().replace(',',''));      //���ݾ�
    $('#Evdc_SplyAmt'   ).val($('#tot_SplyAmt'  ).text().replace(',',''));      //���ޱݾ�
    $('#Evdc_VatAmt'    ).val($('#tot_VatAmt'   ).text().replace(',',''));      //�ΰ����ݾ�

    //-----------------------------------
    //  ��������� ��ȿ�� �˻�
    //-----------------------------------
    
    if(!chk_frm_value("SelDtlsItxpCd"))     return false;           // ����
    if(!chk_frm_value("SelSubDtlsItxpCd"))  return false;           // ������  

    for(var i=0; i<document.frm.itxp_cnt.value; i++){

        if(!chk_frm_value("ItxpItem",i))            return false;           // ǰ��
        if(!chk_frm_value("ItxpUseAmt",i))          return false;           // ���ݾ�
        if(!chk_frm_value("ItxpSplyAmt",i))         return false;           // ���ޱݾ�
        if(!chk_frm_value("ItxpVatAmt",i))          return false;           // �ΰ���
        
        //-----------------------------------
        //  �񿵸������ ������ ����� �������� �ΰǺ񳻿���Ͼ���
        //  �űԺ���ڵ� �߰��� ���� ���������������� ��쿡�� �������� �ΰǺ񳻿���Ͼ���
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
            //  �������� üũ
            //-----------------------------------
            if(null==frm.EdmsDocId.value || ""==frm.EdmsDocId.value){
                    alert("���������� ������ּ���.");
                    return false;
            }
            //-----------------------------------
            //  �ΰǺ񳻿� üũ(�ΰǺ�,���������ΰ�츸 ����ʼ�)
            //-----------------------------------
            if(frm.rchrInfo.length > 1){
                for(var j=0;j<frm.rchrInfo.length;j++){
                    if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                        if(null==frm.rchrInfo[j].value || ""==frm.rchrInfo[j].value){
                            alert("�ΰǺ񳻿��� ������ּ���.");
                            return false;
                        }else{
                            if(frm.rchrAmt[j].value.replace(/,/gi,"") != frm.ItxpUseAmt[j].value.replace(/,/gi,"")){
                                alert("���ݾ��� �հ�� ��ϵ� �ΰǺ񳻿��� �ݾװ� ��ġ���� �ʽ��ϴ�..");
                                return false;
                            }
                        }
                    }
                }
            }else{
                if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                    if(null==frm.rchrInfo.value || ""==frm.rchrInfo.value){
                        alert("�ΰǺ񳻿��� ������ּ���.");
                        return false;
                    }else{
                        if(frm.rchrAmt.value.replace(/,/gi,"") != frm.ItxpUseAmt.value.replace(/,/gi,"")){
                            alert("���ݾ��� �հ�� ��ϵ� �ΰǺ񳻿��� �ݾװ� ��ġ���� �ʽ��ϴ�..");
                            return false;
                        }
                    }
                }
            }
        }
        
        //-----------------------------------
        //  ������ü ��û�׸� ��ȿ�� �˻�
        //-----------------------------------
            if( !("C"==$('#EvmaGb_'+i).val()) ){
                var exctnStgDv = (true == $('#ExctnStgDv1_'+i).attr('checked') ) ? "1" : "2";
                
                // Ÿ������ ���
                if("1"==exctnStgDv){
                    //-----------------------------------
                    //  �������� ���� ������ ��ȿ���˻�
                    //-----------------------------------
                    var msg = chk_Itxp_ExctnStgDv(frm, $('#EvmaGb_'+i).val(),'2');
                    if(!(""==msg)){
                        alert(msg);
                        return false;
                    }   
                }else{
                    //-----------------------------------
                    //  �����������п� ���� ������ ��ȿ���˻�
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
                    alert("��������ȸ�� ���ֽʽÿ�.");
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
 * chk_itxp_evdc_rst_amt    ����ϱݾװ� �����ݾ� ��ġ���� üũ
 * @param
 * @return
 * @author soneunjun
******************************************************************/
function chk_itxp_evdc_rst_amt(){
    var frm =   document.frm;

    var useAmt = 0, splyAmt = 0, vatAmt = 0;
    var msg =   "",return_msg   =   "";
    //����ϱݾ� �հ�
    for(var i=0; i<document.forms['frm'].elements['itxp_cnt'].value; i++){
        useAmt  = Number($("#ItxpUseAmt_"+i).val().replace(/,/gi,""));
        splyAmt = Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        vatAmt  = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
    
    
        if( "C" == $('#EvmaGb_'+i).val() ){
            if( useAmt != Number($('#C_Evdc_SumAmt_'+i).val()) ){   
                return_msg  ="���ݾ��� �հ�ݾ��� ��ϵ� ������ �հ�ݾ�("+toMoney($('#C_Evdc_SumAmt_'+i).val())+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;          
            }
        }else if( "T" == $('#EvmaGb_'+i).val() ){
            
            if(useAmt != Number($("#T_Evdc_SumAmt_"+i).val())){
                return_msg  = "���ݾ��� �հ�ݾ��� ��ϵ� ������ �հ�ݾ�("+toMoney($("#T_Evdc_SumAmt_"+i).val())+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }else if( splyAmt != Number($("#T_Evdc_SplyAmt_"+i).val()) ){   
                return_msg  ="���ݾ��� ���ޱݾ��� ��ϵ� ������ ���ޱݾ�("+toMoney($("#T_Evdc_SplyAmt_"+i).val())+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }else if( vatAmt != Number($("#T_Evdc_VatAmt_"+i).val())){
                return_msg  ="���ݾ��� �ΰ����ݾ��� ��ϵ� ������ �ΰ����ݾ�("+ toMoney($("#T_Evdc_VatAmt_"+i).val())+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }
    
        //��Ÿ, ī��� �ջ�ݾ׸� ��ġ�ϸ� ����� ������(���ޱݾ�,�ΰ����� ���� ����)
        }else if( "E" == $('#EvmaGb_'+i).val() ){
            if( useAmt != Number($("#E_Evdc_SumAmt_"+i).val()) ){
                return_msg  = "���ݾ��� �հ�ݾ��� ��ϵ� ������ �հ�ݾ�("+toMoney($("#E_Evdc_SumAmt_"+i).val())+")�� ��ġ���� �ʽ��ϴ�.";
                return return_msg;
            }
        }else{
            alert("���� �̵�� �����Դϴ�.");
        }
    }
    return return_msg;
}

/******************************************************************
 * uf_Rsltitxp_update       /����/������
 * @param
 * @return
******************************************************************/
function uf_Rsltitxp_update(){
    var frm = document.frm;
    var param,target_url;

    // ��ȿ�� �˻�
    if(!chk_save()) return;
    
    if(!confirm("�����Ͻðڽ��ϱ�?")){return;}
    
    param =     "AGRMT_SEQ_NO="+frm.S_AGRMT_SEQ_NO.value;
    param +=    "&AGRMT_INST_ID="+frm.S_AGRMT_INST_ID.value;
    param +=    "&PMS_ID="+frm.S_PMS_ID.value;
    param +=    "&BZ_CLAS_CD="+frm.S_BZ_CLAS_CD.value;
    param +=    "&CPCG_INST_BZPR_NO="+frm.S_CPCG_INST_BZPR_NO.value;
    param +=    "&AGRMT_INST_BZPR_NO="+frm.S_AGRMT_INST_BZPR_NO.value;
    
    //���񰪴��
    param   +=  "&DTLS_ITXP_CD="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value;
    param   +=  "&DTLS_ITXP_NM="+frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].text;
        
    //�����񰪴��
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
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                    reset_submit();
                    alert("�����Ǿ����ϴ�.");
                    window.close();
                    opener.uf_search();
                   
                }, 1000);   // 1���� ���� 1000 = 1��s
                
                
    removeTempAttribute(frm);   //get2post ����
    
    
}
//-------------------------------
//  ī�������Ŀ����� ȭ�鱸������
//-------------------------------
function uf_crdSetlMeth(){
    if("C"=='<%=BzExpExctnEvdcDv%>' && "1"=='<%=CrdSetlMeth%>'){
        document.getElementById("divTranInfoItem").style.display    = "none";
    }
}


/******************************************************************
 * calc_amtSet2     ����հ�ݾװ��
 * pt_common.js override calc_amtSet2 function
 * @param
 * @return
******************************************************************/
calc_amtSet2 = function(obj, isFixed, dv){
    var useAmt      = 0;            // ���ݾ�
    var splyAmt     = 0;            // ���ޱݾ�
    var vatAmt      = 0;            // �ΰ���
    var tot_useAmt  = 0;            // �ѻ��ݾ�
    var tot_splyAmt = 0;            // �Ѱ��ޱݾ�
    var tot_vatAmt  = 0;            // �Ѻΰ���
    if( dv == null ) dv = "1";      // 1:�����켱, 2:���켱
    
    if(typeof isFixed == "undefined"){
        isFixed = false;
    }
    // ���ݾ� ����
    for(var i=0; i<document.forms['frm'].elements['itxp_cnt'].value; i++){
        
        useAmt      = Number($("#ItxpUseAmt_"+i).val().replace(/,/gi,""));
        vatAmt      = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
        splyAmt     = useAmt-vatAmt;
        if( splyAmt <= 0 ){
            alert("�ΰ����� ���ݾ��� �ʰ��� �� �����ϴ�.");
            vatAmt = 0;
            splyAmt = useAmt;
            $("#ItxpVatAmt_"+i).val('0');
        }
        $("#ItxpSplyAmt_"+i).val(toMoney(splyAmt));

        tot_splyAmt +=  splyAmt;
        tot_vatAmt  +=  vatAmt;
        tot_useAmt  +=  useAmt;
        
        // ��Ÿ���� && �����,�������� ��츸 ����
        if( ("E" == $('#EvmaGb_'+ i ).val() && false == isFixed) || dv == "2" ){
            // ��ü�ݾ�, ���ް���, �ΰ���ġ���� ����
            document.getElementById("txt_trnsAmt_"+i).innerHTML = toMoney(useAmt);
            document.getElementById("txt_splyAmt_"+i).innerHTML = toMoney(splyAmt);
            document.getElementById("txt_vatAmt_"+i).innerHTML  = toMoney(vatAmt);
        }else{

        }       
    }

    
    // ��Ÿ���� && �����,�������� ��츸 ����
    if( "E" == $('#EvmaGb_'+ i ).val() && false == isFixed ){

        
    }else{
        
    }   
    // ���ޱݾ�, �ΰ����� ����
    document.getElementById("evdc_splyAmtTxt").innerHTML    = toMoney(tot_splyAmt);
    document.getElementById("evdc_vatAmtTxt").innerHTML     = toMoney(tot_vatAmt);  
    
    // ����հ� ����
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
    <!--  ����ϳ��� �󼼳��� ǥ start -->
        <!-------------------------------------------------------------------------------->
        <!--    ������ǥ�ùڽ� ����� ���� -->
        <!-------------------------------------------------------------------------------->
        <div class="t10 b20 pop_wh">
        <%@ include file="/inc/sbjt_info_pop.jsp" %>
        </div>                                                                                                                
        <!-------------------------------------------------------------------------------->
        <!--    ������ǥ�ùڽ� ����� �� -->
        <!-------------------------------------------------------------------------------->

        <form name="frm" id="frm" method="post">
            <!-- ��������  -->
            
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
            <input type="hidden" id="S_RCH_ACC_BNK_NM"      name="S_RCH_ACC_BNK_NM"         value="���"/>
            <input type="hidden" id="S_RCH_ACC_NO"          name="S_RCH_ACC_NO"             value="08203000000220"/>
            <input type="hidden" id="S_SBJT_NM"             name="S_SBJT_NM"                value="RCMS �ǽ��� �������"/>
            <input type="hidden" id="S_BZ_CLAS_NM"          name="S_BZ_CLAS_NM"             value="RCMS �ǽ�"/>
            <input type="hidden" id="S_NPRF_INST_YN"        name="S_NPRF_INST_YN"           value="N"/>
            <input type="hidden" id="S_MY_ACCT_TRNS_ALWN_YN" name="S_MY_ACCT_TRNS_ALWN_YN"  value="N"/>
            <input type="hidden" id="S_PSNL_ACCT_USEYN"     name="S_PSNL_ACCT_USEYN"        value="Y"/>
            <input type="hidden" id="S_UNFY_MGNT_INST_YN"   name="S_UNFY_MGNT_INST_YN"      value="Y"/>
            <input type="hidden" id="ExctnRegDt"            name="ExctnRegDt"               value="20130311"/>           <!-- �����������                 -->
            <input type="hidden" id="ExctnRegDrtm"          name="ExctnRegDrtm"             value="204030"/>         <!-- �������ð�                 -->
            <input type="hidden" id="Evdc_Dv"               name ="Evdc_Dv"                 value="E"/>     <!-- ��������                           -->
            <input type="hidden" id="Evdc_SumAmt"           name ="Evdc_SumAmt"             value=""/>          <!-- ����_��ü�ݾ�                        -->
            <input type="hidden" id="Evdc_SplyAmt"          name ="Evdc_SplyAmt"            value=""/>          <!-- ����_���ޱݾ�                        -->
            <input type="hidden" id="Evdc_VatAmt"           name ="Evdc_VatAmt"             value=""/>          <!-- ����_�ΰ�����                        -->
            <input type="hidden" id="Cus_SplrCoNm"          name ="Cus_SplrCoNm"            value="1"/>         <!-- ������ȸ���                         -->
            <input type="hidden" id="dockeyNo"              name="dockeyNo"                 value=""/>                                      <!-- ���õ� �������̺�Ű         -->
            <input type="hidden" id="doc_dv"                name="doc_dv"                   value=""/>                                      <!-- ��������/�ΰǺ񳻿�             -->
            <input type="hidden" id="docName"               name="docName"                  value=""/>                                      <!-- ���ϰ����(������ϸ�)   -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""/>                                      <!-- ������EDMS_dockey         -->
            <input type="hidden" id="methodName"            name="methodName"               value=""/>                                      <!-- �޼ҵ�� -->    
            <input type="hidden" id="attr98"                name="attr98"                   value=""/>                                      <!-- ���ϰ����(������ϸ�)   -->
            <input type="hidden" id="attr99"                name="attr99"                   value=""/>                                      <!-- ���ϰ����(������ϰ���)  -->
            <input type="hidden" id="itxp_cnt"              name="itxp_cnt"                 value="1"/>                                     <!-- ����ϰǼ�             -->
            <input type="hidden" id="p_rchrInfo"            name="p_rchrInfo"               value=""/>
            <input type="hidden" id="BeforeCrdSetlMeth"     name="BeforeCrdSetlMeth"        value=""/>                                   <!--    ���ϵ� ī��������                 -->
            <input type="hidden" id="InstCrdSetlMeth"       name="InstCrdSetlMeth"          value="1"/>                   <!--    ī��������                  -->
            
            <!-- �������� -->
            <input type="hidden" name="EVDC_DCMT_CMAD_ID"   id="EvdcDcmtCmadId"     value="D201303113017071" /> <!-- ������EDMS_dockey -->
            <input type="hidden" name="ExtEdmsDocId"        id="ExtEdmsDocId"       value="" />
            <input type="hidden" name="EdmsDocId"       id="EdmsDocId"      value="" /> <!-- ������EDMS_dockey -->
            <input type="hidden" name="FileNm"          id="FileNm"         value="" /> <!-- ���ϰ����(������ϸ�) -->
            <input type="hidden" name="file_Cnt"        id="file_Cnt"       value="" /> <!-- ���ϰ����(������ϰ���) -->
            
    <!-- // ����ϳ��� �󼼳��� ǥ end// -->
    <!-- �������� �󼼳��� ǥ start -->
    <div class="pop_wh b20">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�������� �󼼳��� ǥ" class="tbl_type02">
       <caption>
              ���켱 ��� �˻�
              </caption>
              <colgroup>
              <col width="12%" />
              <col width="88%" />
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row">�����</th>
                  <td><select title="������" style="min-width:100px;" id="SelDtlsItxpCd" name="SelDtlsItxpCd"  onchange="SelDtlsItxpCdOnChange(this);" >
                      <option value="">���� ����</option>
                    </select>
                    <select title="������ ����" style="min-width:100px;" id="SelSubDtlsItxpCd" name="SelSubDtlsItxpCd" onchange="SelDtlsItxpCdOnChange2(this);">
                      <option value="">������ ����</option>
                    </select>
                    <select title="����񱸺� ����" style="width:130px;display:none;" id="SelShrSorcSn" name="SelShrSorcSn">
                      <option value="">����� �̻��</option>
                    </select>
                    <a href="#dummy" id="ItxpFileEvdc" class="itxpFileEvdcVal" onclick="fnFileEvdc(this);"><img src="/bt/bt_regist2off.gif" alt="�������ϵ��"/></a>
                  </td>
                </tr>
              </tbody>   
      </table>
      <!-- 2013-09-13 ������ ����/������ ���� ��û �ش� �˸� ���� -->
      <!-- <div class="guide_bu">�񿵸������ ��� ������ ����� ������������ ��ϰ����մϴ�.</div> -->
    </div>
    <!-- //�������� �󼼳��� ǥend// -->
    <h3>�����������</h3>
    <div class="b05 ar">
            <div class="fl" style="color:red;font-weight:bold;margin-top:7px;">�����Ѿ� : <span id="totlAmt">0</span></div>
            <a href="#dummy" onclick="uf_frmNewWin(document.frm, '/jsp/pop/P01_12_00.jsp', 'GUIDE_LINE', '800', '850');"><img src="/bt/bt_guide2.gif" alt="���� Guideline"/></a>
<!--            
�׷����� ��� ������� ���߰��� �� �� ���� - ���� ������ 1:1 ����
            <a href="#dummy" onclick="fnAddRow();"><img src="/bt/bt_plus.gif" alt="�����"/></a>
            <a href="#dummy" onclick="fnRemove();"><img src="/bt/bt_minus.gif" alt="���߰�"/></a>
 -->
    </div>
    
    <div class="t05 b10">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="����������� �󼼳��� ǥ" class="tbl_type08" id="ItxpList">
              <caption>����������� �󼼳��� ǥ</caption>
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
                  <th scope="col"><label for="chck">����</label></th>
                  <th scope="col">��������</th>
                  <th scope="col"><label for="part">ǰ��</label></th>
                  <th scope="col"><label for="usemoney">���ݾ�</label></th>
                  <th scope="col"><label for="suppmomey">���ޱݾ�</label></th>
                  <th scope="col"><label for="vat">�ΰ���</label></th>
                  <th scope="col" style="white-space: nowrap;"  class="cellItxpAdtnInfo">�ΰǺ�<br />����</th>
                  <th scope="col">&nbsp;</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                    <td class="ac"><input type="checkbox" name="ItxpChk" disabled="disabled" id="ItxpChk_0" value="0" /></td>                
                  <td class="ac"><%=ComboUtil.getComboBox2("RND134", "evma_gb", "EvmaGb_0", "","title='��������' onchange='SplrInfo(this);' style='width:98%'", "", ComboUtil.OPT_SEL) %>
                  </td>
                  <td class="ac">
                  <input type="hidden" name="EtcEvdcExcCd" id="EtcEvdcExcCd_0" value="" />
                    <input type="hidden" name="EtcEvdcExcNo" id="EtcEvdcExcNo_0" value="" />
                    <div class="posabs etcimpex" id="etcimpex_0" onclick="uf_rsltEtcImplExc(this)"><a href="#dummy"><img src="/bt/bt_etcimpex.gif" /></a></div>
                  <input type="text" name="ItxpItem" id="ItxpItem_0" readonly="readonly" title="ǰ��" class="inputl inputedit" style="width:94%"/></td>
                  <td class="ac"><input type="text" name="ItxpUseAmt" id="ItxpUseAmt_0" readonly="readonly" title="���ݾ�" class="inputl currency" style="width:90px;background-color:#d2d2d2;" value="0" onfocus="this.blur()"/></td>
                  <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0" readonly="readonly" title="���ޱݾ�" class="inputl currency" style="width:90px" maxlength="15" value="0"  onkeyup="calc_amtSet2(this, false, '2');" /></td>
                  <td class="ac"><input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0"  title="�ΰ���" class="inputl currency inputedit" style="width:70px" maxlength="15" onkeyup="calc_amtSet2(this, false, '2');"  onblur="calc_amtSet2(this, false, '2');" value="0"/></td>
                  <td class="ac cellItxpAdtnInfo"><span id="ItxpAdtnInfoVal_0" style="display:none;"></span><a href="#dummy"><span id="ItxpAdtnInfo_0" onclick="fnAdtnInfo(this);"><img src="/bt/bt_nonregist.gif" alt="�̵��"/></span></a>
                            <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- �������������� -->
                            <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- �����������ѱݾ� -->
                            
                            <input type="hidden" id="ButrId_0"              name="BUTR_ID"          value=""/>
                            <input type="hidden" id="BuitId_0"              name="BUIT_ID"          value=""/>
                            
                            <input type="hidden" id="LSTISPTDT_0"           name="LST_ISPT_DT"              value=""/>
                            <input type="hidden" id="LSTISPTST_0"           name="LST_ISPT_ST"              value=""/>
                            <input type="hidden" id="LSTISPTRSLTSN_0"       name="LST_ISPT_RSLT_SN"             value=""/>
                            <input type="hidden" id="LSTISPTAFTHUPDYN_0"    name="LST_ISPT_AFTH_UPD_YN"     value=""/>
                  </td>
                  <td class="ac"><a href="#" class="btn-opendtl" style="display:;"><img src="/bt/bt_grid1.gif" alt="�߰��Է�" /></a></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr_0" style="display:none;">
                  <td class="sum1" colspan="2">���ޱݾ����� ����</td>
                  <td colspan="6"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn_0" class="inputl" disabled='disabled' style="width:98%" /></td>
                </tr>                
                <tr style="display:none;">
                  <td colspan="8">

                     <!-- ���ݰ�꼭/ī�� �ŷ�ó ���� Div ����  -->
                  <div id="divTranInfo_0" style="display:none;">
          <h5 class="fl">�ŷ�ó����</h5>
          <div class="t05 b10">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�ŷ�ó������ ����ڹ�ȣ,��ȣ(���θ�),������ּ� �� ������ ������ ǥ" class="tbl_type09">
              <caption>�ŷ�ó������ ����ڹ�ȣ,��ȣ(���θ�),������ּ� �� ������ ������ ǥ</caption>
              <colgroup>
              <col width="15%" />
              <col width="35%"/>
              <col width="18%" />
              <col width="32%"/>
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row"><label for="company">��ǥ�ڸ�</label></th>
                  <td><span id="d_SplrReprNm_0"> </span></td>
                  <th scope="row"><label for="busmun">����ڵ�Ϲ�ȣ</label></th>
                  <td class="ll"><span id="d_SplrBzRegNo_0"></span></td>
                </tr>
                <tr>
                  <th scope="row"><label for="part">����</label></th>
                  <td><span id="d_SplrTpopNm_0"></span></td>
                  <th scope="row"><label for="part1">����</label></th>
                  <td class="ll"><span id="d_SplrTpbzNm_0"></span></td>
                </tr>
                <tr>
                  <th scope="row"><label for="add">������ּ�</label></th>
                  <td class="ll" colspan="3"><span id="d_SplrAdr_0"></span></td>
                </tr>
              </tbody>
            </table>
          </div>
          </div>
                    <!--------------------  ��Ÿ���� ��Ͻ� ǥ��     ------------------------->
                    <div id="divTranInfo_etc_0" style="display:none;">   <!-- �ŷ�ó ���� Div ����  -->
                    <h5 class="fl">�ŷ�ó���� </h5>
                    <div class="fr" ><a href="#"  onclick="uf_popup_etc_dvdc_avl_info();"><img src="/bt/bt_guide9.gif" alt="��Ÿ������ɺ��" class="vc"/></a></div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�ŷ�ó���� �󼼳��� ǥ" class="tbl_type09">
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
                          <th scope="row"><label for="etc_SplrCoNm_0">ȸ���</label></th>
                          <td><input type="text" name="etc_SplrCoNm" id="etc_SplrCoNm_0" readonly="readonly" title="ȸ���" class="inputl" style="width:100px"/>
                            <span id="idBzRegNo_0" style="display:none;"><a href="#dummy" id="aIndex_0" class="uf_popup_bzpr"><img src="/bt/bt_busin.gif" alt="���־��»����"/></a></span></td>
                          <th scope="row"><label for="etc_SplrBzRegNo_0">����ڵ�Ϲ�ȣ</label></th>
                          <td class="ll"><input type="text" name="etc_SplrBzRegNo" id="etc_SplrBzRegNo_0"  title="����ڵ�Ϲ�ȣ" class="inputl" style="width:100px"/></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="etc_SplrTpopNm_0">����</label></th>
                          <td><input type="text" name="etc_SplrTpopNm" id="etc_SplrTpopNm_0" readonly="readonly" title="����" class="inputl" style="width:100px"/></td>
                          <th scope="row"><label for="etc_SplrTpbzNm_0">����</label></th>
                          <td class="ll"><input type="text" name="etc_SplrTpbzNm" id="etc_SplrTpbzNm_0" readonly="readonly" title="����" class="inputl" style="width:100px"/></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="etc_SplrAdr_0">������ּ�</label></th>
                          <td><input type="text" name="etc_SplrAdr" id="etc_SplrAdr_0" readonly="readonly" title="������ּ�" class="inputl" style="width:195px"/></td>
                          <th scope="row"><label for="etc_SplrReprNm_0">��ǥ�ڸ�</label></th>
                          <td class="ll"><input type="text" name="etc_SplrReprNm" id="etc_SplrReprNm_0" readonly="readonly" title="��ǥ�ڸ�" class="inputl" style="width:100px"/></td>
                        </tr>
                      </tbody>
                    </table>    
                    </div>
                    </div>
                    
                    <div id="divTranInfoItem_0" style="display:none;">   <!-- ������ü��û�׸� Div ����  -->
                    <h5 class="fl">������ü ��û�׸� </h5>
                    <div class="fr" id="trnsInfo_0"><a href="#" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="�ڰ�����ü������"/></a></div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="������ü ��û�׸� �󼼳��� ǥ" class="tbl_type09">
                      <caption>
                      ������ü ��û�׸� �󼼳��� ǥ
                      </caption>
                      <colgroup>
                      <col width="18%" />
                      <col width="38%"/>
                      <col width="18%" />
                      <col width="26%"/>
                      </colgroup>
                      <tbody>
                        <tr id="ExctnStgDv_tr_0" style="display:;">
                          <th scope="row">���౸��</th>
                          <td colspan="3" class="ll">
                          <div id="idExctnStgDv_td1_0" style="display:block;">
                            <input type="hidden" name="ExctnStgDv" id="ExctnStgDv_0" value=""  />
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv1_0" value="1" class="radio2" disabled="disabled"  onclick="exctn_ExctnStgDv_v2(this.value,'1', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, '', '', document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);" checked="checked" /><label for="ra1">Ÿ������ü(��������°�����ü)</label> 
                            <span class="l10"></span>
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv2_0" value="2" class="radio2" disabled="disabled" onclick="exctn_ExctnStgDv_v2(this.value,'1', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_NO.value,document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);"/><label for="ra2">�ڰ�����ü(�����������ü)</label> 
                            <%=ComboUtil.getComboBox2("RNDB03_1", "kind_TrnsRchAcc", "kind_TrnsRchAcc_0", "", "disabled='disabled' style='width:135px;' ", "", ComboUtil.OPT_NONE,"key") %>
                            </div>
                            <span id="idExctnStgDv_td2_0" style="display:none;"></span>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="bank">�Աݰ���</label></th>
                          <td><%=ComboUtil.getComboBox2("BNK_CD", "RcvBnkCd", "RcvBnkCd_0","", "disabled='disabled' onchange='uf_OwacNmRst2(this);' style='width:50px'", "", ComboUtil.OPT_SEL, false) %>
                            <input type="text" name="RcvAcctNo" id="RcvAcctNo_0" readonly="readonly"  title="�Աݰ���" class="inputl" style="width:80px" onchange="uf_OwacNmRst2(this);" value="" title="" notnull colname="�Աݰ���(���¹�ȣ)" maxlength="20" />
                            <a id="idFvrtAcct_0" href="#dummy" style="display:none"></a>
                            <span id="idRcvBnkNm_0" style="display:none;"></span>
                            <span id="idMyAcctNo_0" style="display:none;"></span>
                          </td>
                          <th scope="row"><label for="account">������</label></th>
                          <td class="ll"><input type="text" name="OwacNm" id="OwacNm_0" readonly="readonly" title="������" class="inputl" style="width:80px;background-color:#d2d2d2;" readonly="readonly"/>
                            <a href="#dummy" id="idowacBtn_0" class="uf_tran_owac2"></a>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="WdrwPsbkPrtCtt_0" style="font-size:8pt">����������ǥ�ó���</label></th>
                          <td><input type="text" name="WdrwPsbkPrtCtt" id="WdrwPsbkPrtCtt_0" readonly="readonly" title="����������ǥ�ó���" class="inputl" style="width:132px" colname="����������ǥ�ó���" notnull maxlength="12"/></td>
                          <th scope="row"><label for="RcvPsbkPrtCtt_0" style="font-size:8pt">�ŷ�ó����ǥ�ó���</label></th>
                          <td class="ll"><input type="text" name="RcvPsbkPrtCtt" id="RcvPsbkPrtCtt_0" readonly="readonly" title="�ŷ�ó����ǥ�ó���" class="inputl" style="width:80px"  colname="�ŷ�ó����ǥ�ó���"  notnull maxlength="12" /></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="AchvInstIndv1Cd_0">����밳���ڵ�A</label></th>
                          <td><input type="text" name="AchvInstIndv1Cd" id="AchvInstIndv1Cd_0" readonly="readonly"  title="����밳���ڵ�A" class="inputl" style="width:132px;ime-mode:disabled;" colname="����밳���ڵ�A" maxlength="20" value="" /></td>
                          <th scope="row"><label for="AchvInstIndv2Cd_0">����밳���ڵ�B</label></th>
                          <td class="ll"><input type="text" name="AchvInstIndv2Cd" id="AchvInstIndv2Cd_0" readonly="readonly" title="����밳���ڵ�B" class="inputl" style="width:80px;ime-mode:disabled;" colname="����밳���ڵ�B" maxlength="20" value=""/></td>
                        </tr>
                        <tr>
                          <th scope="row">��ü�ݾ�</th>
                          <td><span id="txt_trnsAmt_0"></span></td>
                          <th scope="row"><label for="TelNo">��ȭ��ȣ</label></th>
                          <td class="ll"><input type="text" name="TelNo" id="TelNo_0" readonly="readonly" title="��ȭ��ȣ" class="inputl" style="width:80px"  notnull colname="��ȭ��ȣ" datatype="N" maxlength="15" mask="-" /></td>
                        </tr>
                        <tr>
                          <th scope="row">���ް���</th>
                          <td><span id="txt_splyAmt_0"></span></td>
                          <th scope="row">�ΰ���ġ����</th>
                          <td class="ll"><span id="txt_vatAmt_0"></span></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="PaymUsag_0">���޿뵵</label></th>
                          <td colspan="3" class="ll"><input type="text" name="PaymUsag" id="PaymUsag_0" readonly="readonly" title="���޿뵵" class="inputl" style="width:99%;ime-mode:inactive;" notnull colname="���޿뵵" maxlength="100"/></td>
                        </tr>
                      </tbody>
                    </table>
                    
                    </div>
                    </div>
                    <p class="ar b05">&nbsp;</p>
                    <div id="frmElmtArea_0" class="frmElmtArea">
                    <!-- ������ �߰� ���� -->
                    </div>
                  </td>
                </tr>

              </tbody>
              <tfoot>
                <tr class="blue_line">
                <th colspan="3">�հ�</th>
                <td class="ar"><span id="tot_TrnsAmt">0</span></td>
                <td class="ar"><span id="evdc_splyAmtTxt">0</span></td>
                <td class="ar"><span id="evdc_vatAmtTxt">0</span></td>
                <th class="cellItxpAdtnInfo"></th>
                <th></th>
              </tfoot>
            </table>
          </div>
          <h3>�հ�</h3>
          <div class="t05 b10">

            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�հ� �󼼳��� ǥ" class="tbl_type02">
              <caption>�հ� �󼼳��� ǥ</caption>
              <colgroup>
              <col width="15%" />
              <col width="35%"/>
              <col width="18%" />
              <col width="32%"/>
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row">���ޱݾ�</th>
                  <td><span id="tot_splyAmt">0</span></td>
                  <th scope="row">�ΰ�����</th>
                  <td class="ll"><span id="tot_vatAmt">0</span></td>
                </tr>
              </tbody>
            </table>
          </div>
    
    <!-- action bt start -->
    <div class="ar"> 
    <a href="#dummy" onclick="uf_Rsltitxp_update();" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a> </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- ���ǻ��� start -->
    <div class="pop_guide_box1">
      <div class="pop_guide_boxtd1">
        <ul class="pop_comment b10">
          <li>����Ϸ᳻���� �������� �����մϴ�.</li>
        </ul>
        <ul class="pop_comment b10"  id="divMyAcctTransAlwn" style="display:none;">
          <li>�ǽð����տ���������ý���(RCMS) ���뿡 ���� ���� ��û ����̹Ƿ� �ڰ�����ü(�����������ü)�� ������</li>
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
    jQuery('.currency').ForceNumericOnly();
    jQuery(document).ready(function(){

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