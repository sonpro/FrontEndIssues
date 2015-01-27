<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_02_11.jsp
 *   Description        : �������������˾�â(���켱)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2014.01.07                     ������             
 *
 *  @author     ������
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
    String ExctnSt                      =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnSt"));       // ����������Ͽ���
    String BzExpExctnRegYn              =   "";     //����������
    String CrdSetlMeth                  =   "";         // ������ı���(1:������/2:�ǽð���ü���)
    String PsnlAcctUseYn                =   "";     //�ΰǺ񼺰��¿���
    String UnfyMgntInstYn               =   "";     //��������������
    
    String RchExpAcctBnkCd              =   "";     // ��������������ڵ�              
    String RchExpAcctNo                 =   "";     // ��������¹�ȣ
    
    String TaxOgnSumAmt                 =   "0";        // ���ڼ��ݰ�꼭 ���հ�ݾ�
    String TaxOgnSplyAmt                =   "0";        // ���ڼ��ݰ�꼭 �����ޱݾ�
    String TaxOgnVatAmt                 =   "0";        // ���ڼ��ݰ�꼭 ���ΰ�����
    
    String CrdOgnSumAmt                 =   "0";        // ī�� ���հ�ݾ�
    String CrdOgnSplyAmt                =   "0";        // ī�� �����ޱݾ�
    String CrdOgnVatAmt                 =   "0";        // ī�� ���ΰ�����
    
    String Cus_ReprNm                   =   "";         // �ŷ�ó��ǥ�ڸ�
    String Cus_BizNo                    =   "";         // �ŷ�ó����ڹ�ȣ
    String Cus_TpBzNm                   =   "";         //�ŷ�ó������
    String Cus_TpOpNm                   =   "";         //�ŷ�ó���¸�
    String Cus_Addr                     =   "";         //�ŷ�ó������ּ�
    String Cus_SplrCoNm                 =   "";         //������ȸ���
    String Cus_SplrBzRegSt              =   "";         //�����ڻ����ϻ���
    String Cus_SplrTaxtTypDv            =   "";         //�����ڰ�����������
    
    
    
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
    String hmpwRoleDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"hmpwRoleDv"));            // �η¿��ұ���
    String rcmsGrpCd                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"rcmsGrpCd"));             //RCMS�׷��ڵ� 
    String WRTG_DT                      =   "";                                                                     //�������(���ڼ��ݰ�꼭)
    String APV_DT                       =   "";                                                                     //�������(ī��)  
    
    String ExclsVatAmtYn                =   ""; //�ΰ��� ���ܿ���
    
    String ItemData[]   ;
    
    
%>

<title>���켱 ���� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���켱 ����</p>
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
    if("G01" == "" && "00006277" == "10112249"){
        document.getElementById("AchvInstIndv1Cd").readOnly                 = true;
        document.getElementById("AchvInstIndv1Cd").style.backgroundColor    = "#d2d2d2";
    }
    // 2011.12.12 �µ��� END
    

    uf_proce_display_on();  //�ε���
        
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
            
            }, 1000);   // 1���� ���� 1000 = 1��s

            
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
    


        $('#d_SplrReprNm_'  +'0').html("(��) A ������(������)");
        $('#d_SplrBzRegNo_' +'0').html("100-10-10000");
        $('#d_SplrTpopNm_'  +'0').html("����");
        $('#d_SplrTpbzNm_'  +'0').html("����");
        $('#d_SplrAdr_'     +'0').html("����Ư���� �߱� �����1�� 31 ");
    
    
    $('#SplrBzRegSt_'       +'0').val("A04001");
    $('#SplrTaxtTypDv_'     +'0').val("A05001");
    
    
    
    fnItxpSetting(true,'0', 'T201303112250283','U201303113764290', 'B04101', 'T', 'B04101', '�����', '550', '500', '50', '','B16000','','N'
            ,"11",'Y','N'
            ,'550', '500', '50'
            ,'0','0', '0'
            ,'1111111111'
            );
    
    
    //��ü��������
    fnTrnsInfoSetting('0','T','2','B03004','003'
            ,'100000000000','��RCMS','A ������','����ǥ','RCMS �ǽ�'
            ,'','021112222',"���ǰ �����", '', '1');
    
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
        $('#etc_SplrBzRegNo_'   +'1').val("1001010000").attr('readonly',true);
        $('#etc_SplrTpopNm_'    +'1').val("1 ").attr('readonly',true);
        $('#etc_SplrTpbzNm_'    +'1').val("1 ").attr('readonly',true);
        $('#etc_SplrAdr_'       +'1').val("1 ").attr('readonly',true);
        $('#etc_SplrReprNm_'    +'1').val("1 ").attr('readonly',true);
        
        $('#d_SplrReprNm_'  +'1').html("(��) B ������(����ǥ)");
        $('#d_SplrBzRegNo_' +'1').html("333-3-333333");
        $('#d_SplrTpopNm_'  +'1').html("����");
        $('#d_SplrTpbzNm_'  +'1').html("����");
        $('#d_SplrAdr_'     +'1').html("���������� ���� �л굿 1420");
    
    
    $('#SplrBzRegSt_'       +'1').val("A04001");
    $('#SplrTaxtTypDv_'     +'1').val("A05001");
    
    fnItxpSetting(true,'1', 'E201303112250284','U201303113764291', 'B04101', 'E', 'B04101', '��������', '550', '500', '50', '','B16000','','N'
            ,"",'Y','N'
            ,'550', '500', '50'
            ,'0','0', '0'
            ,'1001010000'
            );
    
    //��ü��������
    fnTrnsInfoSetting('1','E','2','B03005','003'
            ,'555555555550','��RCMS','��������','��������','RCMS �ǽ�'
            ,'','0422223333',"��� ����", '', '1');
    
    jQuery("#SplrAuth_"         +"1").val("1"); //�����Ȯ�� ���� ����
    jQuery("#rchrInfo_"         +'1').val("");
    jQuery("#SelShrSorcSn_"     +'1').val("");
    jQuery("#SqbnSplrExctnRsn_" +'1').val("");

    jQuery('#etc_ChkBzRegNo_'   +'1').hide();
    jQuery('#ChkBzRegNo_'       +'1').hide();

        
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
        
        
    
    //ī����� ���� Ȯ��
    //��Ͻ� 1:�����Ŀ���, ������ ���� 2:�ǽð��ΰ�� �ȳ�â
    if( $('#BeforeCrdSetlMeth').val() != "" && $('#InstCrdSetlMeth').val() != $('#BeforeCrdSetlMeth').val() ){
        if( $('#BeforeCrdSetlMeth').val() == "1" ){
            alert('�������� ����� ��ü����� [����������]���� [�ǽð�����]��\n������ �˴ϴ�.');
        }else if( $('#BeforeCrdSetlMeth').val() == "2" ){
            alert('�������� ����� ��ü����� [�ǽð�����]���� [����������]��\n������ �˴ϴ�.');
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
    
    //ī�� �ǽð�������ü ���
    if( evdcDv == 'C'){
        
        $('#BeforeCrdSetlMeth').val(beforeCrdSetlMeth);//��������� ���������� ����
        
        if( crdSetlMeth == '2' ){
            mode = "4";
            $('#divTranInfoItem_'   +idx).show();//������ü�׸�
        }else if( crdSetlMeth == '1'){ //ī�� ������
            $('#divTranInfoItem_'   +idx).hide();//������ü�׸�
        }
    }else if( evdcDv == 'E' ){ //��Ÿ
        $('#divTranInfoItem_'   +idx).show();//������ü�׸�
    }else if( evdcDv == 'T' ){ //���ڼ��ݰ�꼭
        $('#divTranInfoItem_'   +idx).show();//������ü�׸�
    }
    
    exctn_ExctnStgDv_v2(mode, '2', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, bnkCd,acctNo,document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,idx);
    
    if( ""!=owacNm && ""!=bnkCd && ""!=acctNo ){
        $('#ExctnStgDv_'        +idx).val(exctnStg      );  // 1:Ÿ����, 2:�ڰ���
        $('#kind_TrnsRchAcc_'   +idx).val(exctnKind     );  // ���౸��
        $('#RcvBnkCd_'          +idx).val(bnkCd         );  // �����ڵ�
        $('#RcvAcctNo_'         +idx).val(acctNo        );  // ���¹�ȣ
        $('#OwacNm_'            +idx).val(owacNm        );  // �����ָ�
        $('#WdrwPsbkPrtCtt_'    +idx).val(wdrwPsbkPrtCtt);  // ����������ǥ�ó���
        $('#RcvPsbkPrtCtt_'     +idx).val(rcvPsbkPrtCtt );  // �ŷ�ó����ǥ�ó���
        $('#AchvInstIndv1Cd_'   +idx).val(achvInst1     );  // ����밳���ڵ�A
        $('#AchvInstIndv2Cd_'   +idx).val(achvInst2     );  // ����밳���ڵ�B
        $('#TelNo_'             +idx).val(telNo         );  // ��ȭ��ȣ
        $('#PaymUsag_'          +idx).val(paymUsag.replace(/&#34;/gi,'"')       );  // ���޿뵵
    }

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
    
    //���ΰŷ� ����
    setSplrPrsn(frm,frm);
    
    //�ΰǺ� ����ý� �ΰǺ����ް��� ����
    PsnlItxpAcctNoSet();
}


/******************************************************************
* PsnlItxpAcctNoSet      �ΰǺ����ް��¼���(��,�ܺ��ΰǺ�/��������)
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
        //ī��� �ΰǺ� ����� �ź�
        //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
        if( frm.S_PSNL_ACCT_USEYN.value == "Y" && "C" == $('#EvmaGb_'+ridx).val() ){        
            if('Y' == itxpPsnlYn(_SelDtlsItxpCd)){
                alert("ī��� �ΰǺ� ����� ��� �� �� �����ϴ�.\n\n(�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�)");
                frm.SelSubDtlsItxpCd.selectedIndex = 0;
                return;
            }
        }
        
        //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
        //ī�������� �ƴϰ� �ΰǺ����ް��¸� ����ϴ� ����� ��쿡�� �ΰǺ� ���ް��·� ����.
        if( frm.S_PSNL_ACCT_USEYN.value == "Y" ){ 
            if( "C" != $('#EvmaGb_'+ridx).val() && 'Y' == itxpPsnlYn(_SelDtlsItxpCd)){      
                
                      
                var strVal  =   "003|20000000000|��RCMS";
                
                arrVal = strVal.split("|");
                
                document.getElementById("RcvBnkCd_"     +ridx).style.display        = "";
                document.getElementById("RcvAcctNo_"    +ridx).style.display        = "";
                
                document.getElementById("idRcvBnkNm_"   +ridx).style.display        = "none";
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
            }else{
                
                if( typeof jQuery("#ButrId_"+idx) != "undefined" && jQuery("#ButrId_"+idx).val() == "" ){
                    if( init == false ) setEnabledBnkAcctInfo(ridx);
                }

            }
        }else{
            
        }

        
        if("C"==$('#EvmaGb_'+ridx).val()){
            // �ǽð� ��� ������ü �ʼ� �׸� notnull �Ӽ��߰�
            if( '2' == $('#InstCrdSetlMeth').val() ){//�ǽð����
                $('#RcvAcctNo_'         + ridx).attr('notnull','true');
                $('#WdrwPsbkPrtCtt_'    + ridx).attr('notnull','true');
                $('#RcvPsbkPrtCtt_'     + ridx).attr('notnull','true');
                $('#TelNo_'             + ridx).attr('notnull','true');
                $('#PaymUsag_'          + ridx).attr('notnull','true');
            }else if( '1' == $('#InstCrdSetlMeth').val() ){//������
                $('#RcvAcctNo_'         + ridx).removeAttr('notnull');
                $('#WdrwPsbkPrtCtt_'    + ridx).removeAttr('notnull');
                $('#RcvPsbkPrtCtt_'     + ridx).removeAttr('notnull');
                $('#TelNo_'             + ridx).removeAttr('notnull');
                $('#PaymUsag_'          + ridx).removeAttr('notnull');      
            }
        }
    }//END of For
}


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

// ���ϰ� ���� or �Է�
function fnItxpSetting(update, idx, butrId, buitId, TrscPfmcSt, evdcDv, trscSt, item, useAmt, splyAmt, vatAmt, adtnInfo, isptst,isptsn,isptupdyn,splyAmtDfamRsn,BzExpExctnRegYn,ExclsVatAmtYn
        ,TaxOgnSumAmt,TaxOgnSplyAmt,TaxOgnVatAmt
        ,CrdOgnSumAmt,CrdOgnSplyAmt,CrdOgnVatAmt
        ,BzRegNo){  
        
    var tbody = jQuery("#ItxpList > tbody");
    
    var tr_idx = (idx*3);
    
    var row1 = tbody.find(">tr").eq(tr_idx);
    var row2 = tbody.find(">tr").eq(tr_idx+1);
    var row3 = tbody.find(">tr").eq(tr_idx+2);
    
    // �ŷ����� ����� ��� �������� �ϵ��� ó��

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
        

    //�ŷ����� ��ϻ���, �����ϻ��� �� ���´� ���� �� ���� ����
    // 2013.4.18 KJS : ī��û�����, ī��û�����, ī��û����Ͽ��� ���� �߰�
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
    jQuery("#TrscPfmcSt_"           +idx).val(TrscPfmcSt);//2013.6.4 kjs ���°� �߰� TODO 
    
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
        
        
        fnAppendChild(idx, 'T_SplrBzRegNo'      ,BzRegNo);//����ڹ�ȣ
        fnAppendChild(idx, 'T_ExclsVatAmtYn'    ,ExclsVatAmtYn);
        fnAppendChild(idx, 'T_Evdc_SumAmt'      ,TaxOgnSumAmt);
        fnAppendChild(idx, 'T_Evdc_SplyAmt'     ,TaxOgnSplyAmt);
        fnAppendChild(idx, 'T_Evdc_VatAmt'      ,TaxOgnVatAmt);
        
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
                
        fnAppendChild(idx, 'C_Evdc_SumAmt'  , CrdOgnSumAmt);
        fnAppendChild(idx, 'C_Evdc_SplyAmt' , CrdOgnSplyAmt);
        fnAppendChild(idx, 'C_Evdc_VatAmt'  , CrdOgnVatAmt);
    }else if( evdcDv == "E" ){
        $('#etc_SplrBzRegNo_'+idx).val(BzRegNo);
    }

    //���ΰŷ�ó
    if( "0000000000" == BzRegNo ){
        $('#etc_SplrPrsn_'  +idx).attr('checked',true);
    }
    
    if(adtnInfo!=""){
        jQuery("#ItxpAdtnInfo_"+idx).html('<img src="/bt/bt_regist4.gif" alt="���">');
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
        edmsUploadFileNew("frm", mode, docKey, usrId , hmpwRoleDv , "/pop/file_popup.jsp?mode="+mode);
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
function chk_save(p_PlanPrgrSt){
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

    for(i=0; i<document.frm.itxp_cnt.value; i++){


        if(!chk_frm_value("ItxpItem",i))            return false;           // ǰ��
        if(!chk_frm_value("ItxpUseAmt",i))          return false;           // ���ݾ�
        if(!chk_frm_value("ItxpSplyAmt",i))         return false;           // ���ޱݾ�
        if(!chk_frm_value("ItxpVatAmt",i))          return false;           // �ΰ���
        
        //ī��� �ΰǺ� ����� �ź�
        //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
        if( frm.S_PSNL_ACCT_USEYN.value == "Y" && "C" == $('#EvmaGb_'+i).val() ){       
            if('Y' == itxpPsnlYn(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value)){
                alert("ī��� �ΰǺ� ����� ��� �� �� �����ϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
                return false;
            }
        }

        //-----------------------------------
        //  2013.03.11 ��Ÿ�������� ��� ���� �˻�
        //-----------------------------------
        if( "E" == $('#EvmaGb_'+i).val() ){
            for(var j = 0 ; j < EtcImplItxpCd.length; j++){
                if( EtcImplItxpCd[j] == $('#SelSubDtlsItxpCd').val() && $('#EtcEvdcExcCd_'+i).val() == "" ){
                    alert("[��Ÿ��������] ������ ����ϼ���!");
                    return false;
                    //break;
                } 
            }
        }
        
        //-----------------------------------
        //  �ŷ�ó���� ��ȿ�� �˻�
        //-----------------------------------
        if( "E" == $('#EvmaGb_'+i).val() ){
            if(null == $('#etc_SplrCoNm_'+i).val() || "" == $('#etc_SplrCoNm_'+i).val()){
                alert("ȸ����� �Է����ּ���.");
                $('#etc_SplrCoNm_'+i).attr('readonly',false);
                fnOpenTrFocus($('#etc_SplrCoNm_'+i),i);
                return false;
            }
            if(null == $('#etc_SplrAdr_'+i).val() || "" == $('#etc_SplrAdr_'+i).val()){
                alert("����� �ּҸ� �Է����ּ���.");
                $('#etc_SplrAdr_'+i).attr('readonly',false);
                fnOpenTrFocus($('#etc_SplrAdr_'+i),i);
                return false;
            }
            if(null == $('#etc_SplrReprNm_'+i).val() || "" == $('#etc_SplrReprNm_'+i).val()){
                alert("��ǥ�ڸ��� �Է����ּ���.");
                $('#etc_SplrReprNm_'+i).attr('readonly',false);
                fnOpenTrFocus($('#etc_SplrReprNm_'+i),i);
                return false;
            }
            
            if(null == $('#etc_SplrBzRegNo_'+i).val() || "" == $('#etc_SplrBzRegNo_'+i).val() ){
                alert("����ڵ�Ϲ�ȣ�� �Է����ּ���.");
                $('#etc_SplrBzRegNo_'+i).attr('readonly',false);
                fnOpenTrFocus($('#etc_SplrBzRegNo_'+i),i);
                return false;
            }
            
            //20140324 �ǽ�ȯ�� üũ ���� 
            /* 
            if( false == chk_bzregno($('#etc_SplrBzRegNo_'+i).val()) ){
                 alert("����ڵ�Ϲ�ȣ�� Ȯ���� �ֽñ� �ٶ��ϴ�.");
                 $('#etc_SplrBzRegNo_'+i).focus();
                 return false;
            }
             */
            
        }

        if( "Y" == $('#SqbnSplrExctnRsnYn_'+i).val() && "" == $.trim($('#SqbnSplrExctnRsn_'+i).val()) ){
             alert('����� ��������� �Է����ּ���.');
             $('#SplyAmtDfamtRsn_tr_'+i).next().show();
             $('#SqbnSplrExctnRsn_tbl_'+i).show();
             $('#SqbnSplrExctnRsn_'+i).focus();
            return false;
        }
        
        
        var splyAmt = Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        var vatAmt  = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
        
        if( splyAmt < 0 ){
            alert('���ޱݾ��� 0���� ���� �� �����ϴ�.');
            $("#ItxpSplyAmt_"+i).focus();
            return false;
        }
        if( vatAmt < 0 ){
            alert('�ΰ����ݾ��� 0���� ���� �� �����ϴ�.');
            $("#ItxpVatAmt_"+i).focus();
            return false;
        }
    
        
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
                    //return false;
            }
            //-----------------------------------
            //  �ΰǺ񳻿� üũ(�ΰǺ�,���������ΰ�츸 ����ʼ�)
            //-----------------------------------
            if(frm.rchrInfo.length > 1){
                for(j=0;j<frm.rchrInfo.length;j++){
                    if(uf_AdtnRegItxpChk(frm.SelDtlsItxpCd.options[frm.SelDtlsItxpCd.options.selectedIndex].value, false)){
                        if(null==frm.rchrInfo[j].value || ""==frm.rchrInfo[j].value){
                            alert("�ΰǺ񳻿��� ������ּ���.");
                            return false;
                        }else{
                            if(frm.rchrAmt[j].value.replace(/,/gi,"") != frm.ItxpUseAmt[j].value.replace(/,/gi,"")){
                                alert("���ݾ��� �հ�� ��ϵ� �ΰǺ񳻿��� �ݾװ� ��ġ���� �ʽ��ϴ�.");
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
                            alert("���ݾ��� �հ�� ��ϵ� �ΰǺ񳻿��� �ݾװ� ��ġ���� �ʽ��ϴ�.");
                            return false;
                        }
                    }
                }
            }
        }
        
        if( $('#SplrAuth_'+i).val() != '1' && 'C' != $('#EvmaGb_'+i).val() ){
            alert('����ڵ�Ϲ�ȣȮ���� �����Ͻñ� �ٶ��ϴ�.');
            $('#SplyAmtDfamtRsn_tr_' + i).next().show();
            
            return false;   
        }
        
        //-----------------------------------
        //  ������ü ��û�׸� ��ȿ�� �˻�
        //-----------------------------------
        if("1"==p_PlanPrgrSt){
            if( !( "C" == $('#EvmaGb_'+i).val()) ){
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


            //ī��鼭 �������ϰ�츸 üũ��������
            if( !(("C" == $('#EvmaGb_'+i).val() ) && ("1"==frm.InstCrdSetlMeth.value))){
                //-----------------------------------
                //  ������ü ��û�׸� ��ȿ�� �˻�
                //-----------------------------------
                if(""==document.getElementById('RcvBnkCd_'+i).options[document.getElementById('RcvBnkCd_'+i).options.selectedIndex].value){
                    alert("�ʼ��׸��� �ݵ�� �����ϼž� �մϴ�.\r\n\r\n* �ʼ����� �׸� : �Աݰ���(����)");
                    fnOpenTrFocus(document.getElementById('RcvBnkCd_'+i),i);
                    return false;
                }
            }   
                
            
            //ī��鼭 �������ϰ�츸 üũ��������
            if( !(("C"== $('#EvmaGb_'+i).val() ) && ("1" == frm.InstCrdSetlMeth.value))){
                if( $('#OwacNm_'+i).val() == "" ){
                    alert("��������ȸ�� ���ֽʽÿ�.");
                    fnOpenTrFocus(document.getElementById('OwacNm+'+i),i);
                    return false;
                }

                //-----------------------------------
                //  ������ü ��û�׸� ��ȿ�� �˻�
                //-----------------------------------
                if(""==document.getElementById('RcvBnkCd_'+i).options[document.getElementById('RcvBnkCd_'+i).options.selectedIndex].value){
                    alert("�ʼ��׸��� �ݵ�� �����ϼž� �մϴ�.\r\n\r\n* �ʼ����� �׸� : �Աݰ���(����)");
                    fnOpenTrFocus(document.getElementById('RcvBnkCd_'+i),i);
                    return false;
                }
                //if(! validate_frm(frm) ) return false; // ��ȿ��ó��
            }
            
            if( !("C"== $('#EvmaGb_'+i).val()) ){   
                //-----------------------------------
                //  Ÿ������ü�� �Աݰ��°� ������������� �˻�
                //-----------------------------------
                if( true                                                    ==  $('#ExctnStgDv1_'+i).attr('checked')        &&
                    document.getElementById('RcvBnkCd_'+i).options[document.getElementById('RcvBnkCd_'+i).options.selectedIndex].value  ==  "003"                   &&
                    document.getElementById('RcvAcctNo_'+i).value           ==  "08203000000220"){
                    alert("�Աݰ��°� ��������¿� �����մϴ�.");
                    return false;
                }
            
            } 

            
            //--------------------------------------------------
            //  ��Ÿ����&&�ڰ�����ü�� ��� �����ݾװ� ��ġ���� üũ����
            //--------------------------------------------------
            if(!( ("E"== $('#EvmaGb_'+i).val() )&&( true == $('#ExctnStgDv2_'+i).attr('checked')))){
                //-----------------------------------
                //  �ݾ� üũ
                //-----------------------------------
                var msg = chk_itxp_evdc_amt();
                if(!(""==msg)){  alert(msg);return false;   }
            }
            

            //2012.11.26 kjs ���ڼ��ݰ�꼭�� ��� ���ޱݾװ� ���ݾ��� �ٸ���� ���ޱݾ����� ���� ���� üũ
            if( "T" == $('#EvmaGb_'+i).val() ){
                if( parseInt($('#T_Evdc_SplyAmt_' + i).val(),10) > splyAmt && "" == document.forms['frm'].elements['SplyAmtDfamtRsn_'+i].value ){
                    alert("���ޱݾ� ���׻����� �ۼ����ּ���");
                    document.forms['frm'].elements['SplyAmtDfamtRsn_'+i].focus();
                    return false;
                }
            }   
        }
    }// End of for
    return true;
}

/******************************************************************
 * uf_itxp_update       ��ȹ/����/�������
 * @param
 * @return
******************************************************************/
var p_PlanPrgrSt = "0";
function uf_itxp_update(PlanPrgrSt){
    var frm = document.frm;
    var param,target_url;
    p_PlanPrgrSt = PlanPrgrSt;
    if( typeof update_enabled != 'undefined' && false == update_enabled && false == update_state ){
        alert("���� ���������� ������ �� �����ϴ�. ���������� Ȯ�� �ϼ���");
        return;
    }
    // ��ȿ�� �˻�
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
        alert('������ü ��û�׸��� ������� �ʽ��ϴ�.');
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
        
        if( bzRegNo == "0000000000" || bzRegNo == "8888888888" ){ //���ΰŷ� �Ǵ� �ؿܰŷ�ó �ΰ�� �������ȸ ����
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

        uf_proce_display_on();  //�ε���
            
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
                
                }, 1000);   // 1���� ���� 1000 = 1��s
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
            confirmMessage = '�������� ����� ��ü����� [����������]���� [�ǽð�����]��\n������ �˴ϴ�.\n\n';
        }else if( $('#BeforeCrdSetlMeth').val() == "2" ){
            confirmMessage = '�������� ����� ��ü����� [�ǽð�����]���� [����������]��\n������ �˴ϴ�.\n\n';
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
        
        if( 'A04009' == $('#SplrBzRegSt_'+i).val() ){ //�޾�
            confirmMessage += splrCoNm + "��(��) ����û���� �޾����� �Ű�� �ŷ�ó �Դϴ�.\n\n";
        }else if( 'A04010' == $('#SplrBzRegSt_'+i).val() ){ //���
            confirmMessage += splrCoNm + "��(��) ����û���� ������� �Ű�� �ŷ�ó �Դϴ�.\n\n";
        }

    }

    confirmMessage += "�����Ͻðڽ��ϱ�?";
    
    if(!confirm(confirmMessage)){return;}
    
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
    
    param += "&PLAN_PRGR_ST="+p_PlanPrgrSt;
    
    uf_proce_display_on();  //�ε���

    setTimeout(
            function(){
                    try{   
                        reset_submit();
                        alert("�����Ǿ����ϴ�.");
                        opener.uf_search();
                        window.close();
                        
                    }finally{
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
    removeTempAttribute(frm);
}
//-------------------------------
//  ī�������Ŀ����� ȭ�鱸������
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
    <!--  ����ϳ��� �󼼳��� ǥ start -->
        <!-------------------------------------------------------------------------------->
        <!--    ������ǥ�ùڽ� ����� ���� -->
        <!-------------------------------------------------------------------------------->
        <div class="t10 b20 pop_wh">
        





        <h3>������Ȳ</h3>
        <!-- ������Ȳ ����Ʈ start -->
        <div class="t10 pop_wh">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="������Ȳ ����Ʈ" class="tbl_type02">
            <caption>������Ȳ ����Ʈ</caption>
            <colgroup>
                <col width="20%" />
                <col width="80%" />
            </colgroup>
            <tbody>
            <tr>
                <th scope="col">�����</th>
                <td class="ll">RCMS �ǽ�</td>
            </tr>
            <tr>
                <th scope="row">������</th>
                <td class="ll">RCMS �ǽ��� �������</td>
            </tr>
            </tbody>
            </table>
        </div>
        <!-- //������Ȳ ����Ʈ end// -->
        <!-- ������Ȳ �󼼳��� start -->
        <div class="t20 b15 pop_wh">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="������Ȳ �󼼳���" class="tbl_type03">
            <caption>������Ȳ</caption>
            <colgroup>
                <col width="10%"/>
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
                <td class="ac"><a href="#dummy" style="text-decoration:underline; color:blue;" onclick="uf_SbjtDtlReq('BzClasCd=S1598&SbjtId=TEST0002&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249')">TEST0002</a></td>
                <td colspan="2">�ѱ��������򰡰�����</td>
                <td class="ac">��RCMS</td>
                <td class="ar">0</td>
                <td class="ar">3</td>
            </tr>
            <tr>
                <th scope="col">�����</th>
                <th scope="col">����ڵ�Ϲ�ȣ</th>
                <th scope="col">��������</th>
                <th scope="col">���ذ��߱Ⱓ</th>
                <th scope="col">�����ѻ����</th>
                <th scope="col">���డ�ɻ���</th>
            </tr>
            <tr>
                <td class="ac">��RCMS</td>
                <td class="ac">1111111111</td>
                <td class="ac">�ְ����</td>
                <td class="ac">2012.04.01~2013.07.31(16����)</td>
                <td class="ar">110,000,000</td>
                <td class="ac">����</td>
            </tr>
            </tbody>
            </table>
        </div>
        <!-- //������Ȳ �󼼳��� end// -->

        </div>                                                                                                                
        <!-------------------------------------------------------------------------------->
        <!--    ������ǥ�ùڽ� ����� �� -->
        <!-------------------------------------------------------------------------------->

        <form name="frm" method="post" id="frm">
            <!-- ��������  -->
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
            <input type="hidden" id="S_SBJT_NM"             name="S_SBJT_NM"                value="RCMS �ǽ��� �������">
            <input type="hidden" id="S_BZ_CLAS_NM"          name="S_BZ_CLAS_NM"             value="RCMS �ǽ�">
            <input type="hidden" id="S_NPRF_INST_YN"        name="S_NPRF_INST_YN"           value="N">
            <input type="hidden" id="S_MY_ACCT_TRNS_ALWN_YN" name="S_MY_ACCT_TRNS_ALWN_YN"  value="N">
            <input type="hidden" id="S_PSNL_ACCT_USEYN"     name="S_PSNL_ACCT_USEYN"        value="Y">
            <input type="hidden" id="S_UNFY_MGNT_INST_YN"   name="S_UNFY_MGNT_INST_YN"      value="Y">
            <input type="hidden" id="ExctnRegDt"            name="ExctnRegDt"               value="20130311">           <!-- �����������                 -->
            <input type="hidden" id="ExctnRegDrtm"          name="ExctnRegDrtm"             value="204030">         <!-- �������ð�                 -->
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
            <input type="hidden" id="BeforeCrdSetlMeth"     name="BeforeCrdSetlMeth"        value="" />                                   <!--    ���ϵ� ī��������                 -->
            <input type="hidden" id="InstCrdSetlMeth"       name="InstCrdSetlMeth"          value="1" />                   <!--    ī��������                  -->
            
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
                    <select title="����񱸺� ����" style="width:130px;display:none;" id="SelShrSorcSn" name="ShrSorcSn">
                      <option value="">����� �̻��</option>
                    </select>
                    <a href="#dummy" id="ItxpFileEvdc" class="itxpFileEvdcVal" onclick="fnFileEvdc(this);"><img src="/bt/bt_regist2off.gif" alt="�������Ϲ̵��"/></a>
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
            <a href="#dummy" onclick="uf_frmNewWinNs(document.frm, '/pop/T01_12_00.jsp', 'GUIDE_LINE', '800', '850');"><img src="/bt/bt_guide2.gif" alt="���� Guideline"/></a>
            <a href="#dummy" onclick="fnAddRow(true);"><img src="/bt/bt_plus.gif" alt="���߰�"/></a>
            <a href="#dummy" onclick="fnRemove();"><img src="/bt/bt_minus.gif" alt="�����"/></a>
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
              <col width="5%" class="cellItxpAdtnInfo" />
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
                  <th scope="col" class="cellItxpAdtnInfo" style="white-space: nowrap;">�ΰǺ�<br />����</th>
                  <th scope="col">&nbsp;</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                    <td class="ac"><input type="checkbox" name="ItxpChk" id="ItxpChk_0" value="0" /></td>                
                  <td class="ac"><select name='evma_gb'  id='EvmaGb_0'  class='' title='��������' onchange='SplrInfo(this);' style='width:98%' ><option value=''>����</option><option value='E' >��Ÿ</option><option value='T' >���ڼ��ݰ�꼭</option><option value='C' >ī��</option></select></td>
                  <td class="ac">
                    <input type="hidden" name="EtcEvdcExcCd" id="EtcEvdcExcCd_0" value="" />
                    <input type="hidden" name="EtcEvdcExcNo" id="EtcEvdcExcNo_0" value="" />
                    <div class="posabs etcimpex" id="etcimpex_0" onclick="uf_etcImplExc(this)"><a href="#dummy"><img src="/bt/bt_etcimpex.gif" /></a></div>
                  <input type="text" name="ItxpItem" id="ItxpItem_0"  title="ǰ��" class="inputl inputedit" style="width:98%"/></td>
                  <td class="ac"><input type="text" name="ItxpUseAmt" id="ItxpUseAmt_0"  title="���ݾ�" readonly="readonly" class="inputl currency" style="width:90px;background-color:#d2d2d2;" value="0" onfocus="fnNextFocus(this,'ItxpSplyAmt')" /></td>
                  <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0"  title="���ޱݾ�" class="inputl currency inputedit" style="width:90px" maxlength="15" onkeyup="calc_amtSet2(this, false,'1');" onblur="calc_amtSet2(this, false,'1');chk_amtSet(this,1);" value="0"/></td>
                  <td class="ac"><input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0"  title="�ΰ���" class="inputl currency inputedit" style="width:60px" maxlength="15" onkeyup="calc_amtSet2(this, false, '1');" onblur="calc_amtSet2(this, false,'1');chk_amtSet(this,1);" value="0"/></td>
                  <td class="ac cellItxpAdtnInfo"><span id="ItxpAdtnInfoVal_0" style="display:none;"></span><a href="#dummy"><span id="ItxpAdtnInfo_0" onclick="fnAdtnInfo(this);"><img src="/bt/bt_nonregist.gif" alt="�̵��"/></span></a>
                            <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- �������������� -->
                            <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- �����������ѱݾ� -->
                            
                            <input type="hidden" id="BzExpExctnRegYn_0"     name="BzExpExctnRegYn"          value=""/>
                            <input type="hidden" id="ButrId_0"              name="BUTR_ID"          value=""/>
                            <input type="hidden" id="BuitId_0"              name="BUIT_ID"          value=""/>
                            <input type="hidden" id="TrscPfmcSt_0"          name="TRSC_PFMC_ST"         value=""/>
                            
                            
                            <input type="hidden" id="LSTISPTDT_0"           name="LST_ISPT_DT"              value=""/>
                            <input type="hidden" id="LSTISPTST_0"           name="LST_ISPT_ST"              value=""/>
                            <input type="hidden" id="LSTISPTRSLTSN_0"       name="LST_ISPT_RSLT_SN"             value=""/>
                            <input type="hidden" id="LSTISPTAFTHUPDYN_0"    name="LST_ISPT_AFTH_UPD_YN"     value=""/>
                  </td>
                  <td class="ac"><a href="#" class="btn-opendtl" style="display:;"><img src="/bt/bt_grid1.gif" alt="�߰��Է�" /></a></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr_0" style="display:none;">
                  <td class="sum1" colspan="2"><span class="txt_orb">*</span>���ޱݾ����� ����</td>
                  <td colspan="6"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn_0" class="inputl" style="width:98%" /></td>
                </tr>                
                <tr style="display:none;">
                  <td colspan="8">

                     <!-- ���ݰ�꼭/ī�� �ŷ�ó ���� Div ����  -->
                     <input type="hidden" name="SplrAuth" id="SplrAuth_0" value="0" />
                     
                    <input type="hidden" id="SplrBzRegSt_0" name="SplrBzRegSt" value="" />      <!-- ����ڵ�ϻ��� -->
                    <input type="hidden" id="SplrTaxtTypDv_0" name="SplrTaxtTypDv" value="" />  <!-- ����ھ������� -->
                    <input type="hidden" id="SplrCoNm_0" name="SplrCoNm" value="" />
                    
                  <div id="divTranInfo_0" style="display:none;">
          <h5 class="fl">�ŷ�ó����</h5>
          <div class="t05 b10">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�ŷ�ó������ ����ڹ�ȣ,��ȣ(���θ�),������ּ� �� ������ ������ ǥ" class="tbl_type09">
              <caption>�ŷ�ó������ ����ڹ�ȣ,��ȣ(���θ�),������ּ� �� ������ ������ ǥ</caption>
              <colgroup>
              <col width="18%" />
              <col width="35%"/>
              <col width="18%" />
              <col width="29%"/>
              </colgroup>
              <tbody>
                <tr>
                  <th scope="row"><label for="company">��ǥ�ڸ�</label></th>
                  <td><span id="d_SplrReprNm_0"> </span></td>
                  <th scope="row"><label for="busmun">����ڵ�Ϲ�ȣ</label></th>
                  <td class="ll"><span id="d_SplrBzRegNo_0"></span>  <a href="#dummy" id="ChkBzRegNo_0" class="uf_chkbzregno"><img src="/bt/bt_bzregno.gif" alt="����ڹ�ȣȮ��"/></a></td>
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
                    <div class="fr" >
                    <label style="padding-top:5px;display:inline-block;"><input type="checkbox" value="1" name="etc_SplrPrsn" id="etc_SplrPrsn_0" onclick="uf_tglSplrPrsn(this)" />���ΰŷ�</label>
                    <a href="#"  onclick="uf_popup_etc_dvdc_avl_info();"><img src="/bt/bt_guide9.gif" alt="��Ÿ������ɺ��" class="vc"/></a>
                    </div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="�ŷ�ó���� �󼼳��� ǥ" class="tbl_type09">
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
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrCoNm_0">ȸ���</label></th>
                          <td><input type="text" name="etc_SplrCoNm" id="etc_SplrCoNm_0"  title="ȸ���" class="inputl" style="width:100px"/>
                            <span id="idBzRegNo_0" style="display:none;"><a href="#dummy" id="aIndex_0" class="uf_popup_bzpr"><img src="/bt/bt_busin.gif" alt="���־��»����"/></a></span></td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrBzRegNo_0">����ڵ�Ϲ�ȣ</label></th>
                          <td class="ll"><input type="text" name="etc_SplrBzRegNo" id="etc_SplrBzRegNo_0"  title="����ڵ�Ϲ�ȣ" class="inputl" style="width:100px"/>
                          <a href="#" id="etc_ChkBzRegNo_0" class="uf_chkbzregno"><img src="/bt/bt_bzregno.gif" alt="����ڹ�ȣȮ��"/></a>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="etc_SplrTpopNm_0">����</label></th>
                          <td><input type="text" name="etc_SplrTpopNm" id="etc_SplrTpopNm_0"  title="����" class="inputl" style="width:100px"/></td>
                          <th scope="row"><label for="etc_SplrTpbzNm_0">����</label></th>
                          <td class="ll"><input type="text" name="etc_SplrTpbzNm" id="etc_SplrTpbzNm_0"  title="����" class="inputl" style="width:100px"/></td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrAdr_0">������ּ�</label></th>
                          <td><input type="text" name="etc_SplrAdr" id="etc_SplrAdr_0"  title="������ּ�" class="inputl" style="width:195px"/></td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="etc_SplrReprNm_0">��ǥ�ڸ�</label></th>
                          <td class="ll"><input type="text" name="etc_SplrReprNm" id="etc_SplrReprNm_0"  title="��ǥ�ڸ�" class="inputl" style="width:100px"/></td>
                        </tr>
                      </tbody>
                    </table>    
                    </div>
                    </div>
                    
                
                <div id="SqbnSplrExctnRsn_tbl_0" style="display:none;">
                    <input type="hidden" name="SqbnSplrExctnRsnYn" id="SqbnSplrExctnRsnYn_0" value="N"/>
                    <input type="hidden" name="RcvNmChkDv" id="RcvNmChkDv_0" value="" />
                    <h5 class="fl">����� �������</h5>
                    <div class="t05 b10">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="������ŷ�ó �������" class="tbl_type09">
                    <caption>����� �������</caption>
                      <colgroup>
                        <col width="15%" />
                        <col width="85%"/>
                      <tbody>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="SqbnSplrExctnRsn_0">�������</label></th>
                          <td class="ll"><input type="text" name="SqbnSplrExctnRsn" id="SqbnSplrExctnRsn_0" class="inputl" style="width:455px;ime-mode:inactive;" colname="������������" maxlength="200"/></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  </div>
          
                    <div id="divTranInfoItem_0" style="display:none;">   <!-- ������ü��û�׸� Div ����  -->
                    <h5 class="fl">������ü ��û�׸� </h5>
                    <div class="fr"  id="trnsInfo_0"><a href="#" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="�ڰ�����ü������"/></a></div>
                    <div class="b10 cb">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="������ü ��û�׸� �󼼳��� ǥ" class="tbl_type09">
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
                        <tr id="ExctnStgDv_tr_0" style="display:;">
                          <th scope="row"><span class="txt_orb">*</span> ���౸��</th>
                          <td colspan="3" class="ll">
                          <div id="idExctnStgDv_td1_0" style="display:block;">
                            <input type="hidden" name="ExctnStgDv" id="ExctnStgDv_0" value=""  />
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv1_0" value="1" class="radio2"  onclick="exctn_ExctnStgDv_v2(this.value,'1', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, '', '', document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);" checked="checked" /><label for="ra1">Ÿ������ü(��������°�����ü)</label> 
                            <span class="l10"></span>
                            <input type="radio" name="ExctnStgDv_0" id="ExctnStgDv2_0" value="2" class="radio2" onclick="exctn_ExctnStgDv_v2(this.value,'1', document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_BNK_NM.value, document.frm.S_RCH_ACC_NO.value, document.frm.S_RCH_ACC_BNK_CD.value, document.frm.S_RCH_ACC_NO.value,document.frm.S_MY_ACCT_TRNS_ALWN_YN.value,jQuery(this).attr('id').split('_')[1]);setDefaultKindTrnsRchAcc(jQuery(this).attr('id').split('_')[1]);"/><label for="ra2">�ڰ�����ü(�����������ü)</label> 
                            <select name='kind_TrnsRchAcc'  id='kind_TrnsRchAcc_0'  class=''  style='width:135px;'  ><option value='B03001' >�����</option><option value='B03002' >���ڱ���</option><option value='B03003' >������������</option><option value='B03004' >�������ܾ׺���</option><option value='B03005' >��ü�����������ü</option><option value='B03006' >���������ݾ�</option><option value='B03007' >�ڰ�����ü���α��</option><option value='B03009' >�������������� �ΰǺ�(������)</option></select>
                            </div>
                            <span id="idExctnStgDv_td2_0" style="display:none;"></span>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="bank">�Աݰ���</label></th>
                          <td><select name='RcvBnkCd'  id='RcvBnkCd_0'  class='' onchange='uf_OwacNmRst2(this);' style='width:50px' ><option value=''>����</option><option value='024' ></option><option value='056' >AB</option><option value='054' >HSBC</option><option value='02' >PRIVT_CTBT_SFBX_ACCT</option><option value='057' >UF</option><option value='039' >�泲</option><option value='034' >����</option><option value='004' >����</option><option value='003' >���</option><option value='011' >����</option><option value='031' >�뱸</option><option value='055' >����</option><option value='032' >�λ�</option><option value='002' >���</option><option value='050' >��ȣ</option><option value='045' >������</option><option value='008' >����</option><option value='007' >����</option><option value='088' >����</option><option value='048' >����</option><option value='027' >��Ƽ</option><option value='005' >��ȯ</option><option value='020' >�츮</option><option value='071' >��ü��</option><option value='037' >����</option><option value='023' >����</option><option value='035' >����</option><option value='081' >�ϳ�</option></select>
                            <input type="text" name="RcvAcctNo_0" id="RcvAcctNo_0"  title="�Աݰ���" class="RcvAcctNo inputl" style="width:100px" onchange="uf_OwacNmRst2(this);" value="" title="" notnull colname="�Աݰ���(���¹�ȣ)" maxlength="20" onfocus="chkEncOn(this);" />
                            <a id="idFvrtAcct_0" href="#dummy" class="uf_popup_fvrt_acct"><img src="/bt/bt_acct01.gif" alt="���־��°���"/></a>
                            <div id="idRcvBnkNm_0" style="float:left;padding-top:4px;display:none;"></div>
                            <a id="idMyAcctNo_0" href="#dummy" class="uf_popup_my_acct" style="float:right;display:none"><img src="/bt/bt_myacctno.gif" alt="�ڰ�����ü�����"/></a>
                          </td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="account">������</label></th>
                          <td class="ll"><input type="text" name="OwacNm" id="OwacNm_0" title="������" class="inputl" style="width:100px;background-color:#d2d2d2;" readonly="readonly" onfocus="this.blur()"/>
                             <a href="#dummy" id="idowacBtn_0" class="uf_tran_owac2"><img src="/bt/bt_acct02.gif" alt="��������ȸ"/></a>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row"><div class="txt_orb" id="DynReqStar1_0" style="display:inline;">*</div> <label for="WdrwPsbkPrtCtt_0" style="font-size:8pt">����������ǥ�ó���</label></th>
                          <td><input type="text" name="WdrwPsbkPrtCtt" id="WdrwPsbkPrtCtt_0" title="����������ǥ�ó���" class="inputl" style="width:132px" colname="����������ǥ�ó���" notnull maxlength="12"/></td>
                          <th scope="row"><div class="txt_orb" id="DynReqStar2_0" style="display:inline;">*</div> <label for="RcvPsbkPrtCtt_0" style="font-size:8pt">�ŷ�ó����ǥ�ó���</label></th>
                          <td class="ll"><input type="text" name="RcvPsbkPrtCtt" id="RcvPsbkPrtCtt_0" title="�ŷ�ó����ǥ�ó���" class="inputl" style="width:100px" colname="�ŷ�ó����ǥ�ó���"  notnull maxlength="12"/></td>
                        </tr>
                        <tr>
                          <th scope="row"><label for="AchvInstIndv1Cd_0">����밳���ڵ�A</label></th>
                          <td><input type="text" name="AchvInstIndv1Cd" id="AchvInstIndv1Cd_0"  title="����밳���ڵ�A" class="inputl" style="width:132px;ime-mode:disabled;"  colname="����밳���ڵ�A" maxlength="20" value="" /></td>
                          <th scope="row"><label for="AchvInstIndv2Cd_0">����밳���ڵ�B</label></th>
                          <td class="ll"><input type="text" name="AchvInstIndv2Cd" id="AchvInstIndv2Cd_0" title="����밳���ڵ�B" class="inputl" style="width:100px;ime-mode:disabled;" colname="����밳���ڵ�B" maxlength="20" value=""/></td>
                        </tr>
                        <tr>
                          <th scope="row">��ü�ݾ�</th>
                          <td><span id="txt_trnsAmt_0"></span></td>
                          <th scope="row"><span class="txt_orb">*</span> <label for="TelNo">��ȭ��ȣ</label></th>
                          <td class="ll"><input type="text" name="TelNo" id="TelNo_0" title="��ȭ��ȣ" class="inputl" style="width:100px"  notnull colname="��ȭ��ȣ" datatype="N" maxlength="15" mask="-" /></td>
                        </tr>
                        <tr>
                          <th scope="row">���ް���</th>
                          <td><span id="txt_splyAmt_0"></span></td>
                          <th scope="row">�ΰ���ġ����</th>
                          <td class="ll"><span id="txt_vatAmt_0"></span></td>
                        </tr>
                        <tr>
                          <th scope="row"><span class="txt_orb">*</span> <label for="PaymUsag_0">���޿뵵</label></th>
                          <td colspan="3" class="ll"><input type="text" name="PaymUsag" id="PaymUsag_0" title="���޿뵵" class="inputl" style="width:99%;ime-mode:inactive;" notnull colname="���޿뵵" maxlength="100"/></td>
                        </tr>
                      </tbody>
                    </table>
                    
                    </div>
                    </div>
                    <p class="ar b05"><!-- <a href="#" class="btn-closedtl"><img src="/bt/bt_grid_close.gif" alt="�ݱ�"></a> --></p>
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
    <% if( "N".equals(BzExpExctnRegYn)){ %>
    <a href="#dummy" onclick="uf_itxp_update('0');" class="bt_action4-01" title="�����"><span class="bt_sp">�����</span></a>
    <% } %> 
    <a href="#dummy" onclick="uf_itxp_update('1');" class="bt_action4-01" title="����û"><span class="bt_sp">����û</span></a> </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- ���ǻ��� start -->
    <div class="pop_guide_box1">
      <div class="pop_guide_boxtd1">
        <p class="pop_point_title" id="divMyAcctTransAlwn" style="display:none;">�ǽð����տ���������ý���(RCMS) ���뿡 ���� ���� ��û ����̹Ƿ� �ڰ�����ü(�����������ü)�� ������</p>
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
        //���־��»���� ��ư �̺�Ʈ
        $('.uf_popup_bzpr').live('click',function(){
            var ridx = "";
            ridx = $(this).attr('id').split('_')[1];
            uf_popup_bzpr(ridx);
            return false;
        });
        //���־��°��� ��ư �̺�Ʈ
        $('.uf_popup_fvrt_acct').live('click',function(){
            ridx = $(this).attr('id').split('_')[1];
            uf_popup_fvrt_acct(ridx);
            return false;
        });
        
        //�ڰ�����ü�� ���� ��ư �̺�Ʈ
        $('.uf_popup_my_acct').live('click',function(){
            var ridx = "0";
            ridx = $(this).attr('id').split('_')[1];
            uf_popup_my_acct(ridx);
        });
        
        
        //�����Ȯ�� ��ư �̺�Ʈ
        $('.uf_chkbzregno').live('click',function(){
            var ridx = "0";
            var _id = $(this).attr('id').split('_');
            ridx = _id[_id.length-1];
            
            uf_chkbzregno('1',ridx);
            return false;
        });
        
        //��������ȸ ��ư �̺�Ʈ
        $('.uf_tran_owac2').live('click',function(){

            var bzRegNo = "";
            var ridx = "0";
            
            var _id = $(this).attr('id').split('_');
            ridx = _id[_id.length-1];
            
            var _evdc_dv = $('#EvmaGb_'+ridx).val();
            
            if( $('#SplrAuth_'+ridx).val() != '1' && 'C' != _evdc_dv){
                alert('����ڵ�Ϲ�ȣȮ���� �����Ͻñ� �ٶ��ϴ�.');
                return false;   
            }
            //Ÿ���¼���
            //alert($('#ExctnStgDv1_'+ridx).attr('checked') + ' ' +  $('#SplrAuth_'+ridx).val() + ' ' + _evdc_dv)
            if( $('#ExctnStgDv1_'+ridx).attr('checked') == true  ){ 
                
                if( 'E' == _evdc_dv ){
                    bzRegNo = $('#etc_SplrBzRegNo_'+ridx).val();
                }else if( 'C' == _evdc_dv ){
            
                }else if( 'T' == _evdc_dv ){
                    bzRegNo = $('#T_SplrBzRegNo_'+ridx).val();
                }else{
                    alert('������ �����ϼ���')
                    return false;
                }
            }

            $('#RcvNmChkDv_'+ridx).val('');
            if( true == chkAcnmAuthPass($('#SelSubDtlsItxpCd').val()) ){
                $('#RcvNmChkDv_'+ridx).val('B06006'); //[RNDB06] B06006 �Ǹ���ȸ���ܼ���
                uf_tran_owac2(document.frm, document.frm, ridx);    
            }else{
                
                if( bzRegNo == '0000000000' && $('#etc_SplrPrsn_'+ridx).attr('checked') == true ){
                    $('#RcvNmChkDv_'+ridx).val('B06008'); //[RNDB06] B06008 ���ΰŷ�ó
                    uf_tran_owac2(document.frm, document.frm, ridx);    //�����ָ� ��ȸ
                }else if( bzRegNo == '0000000000' && $('#etc_SplrPrsn_'+ridx).attr('checked') == false ){
                    alert('�ŷ�ó ����ڵ�Ϲ�ȣ�� Ȯ���ϼ���.');
                }else if( bzRegNo == '8888888888' ){
                    $('#RcvNmChkDv_'+ridx).val('B06009'); //[RNDB06] B06009 �ؿܰŷ�ó
                    uf_tran_owac2(document.frm, document.frm, ridx);    //�����ָ� ��ȸ
                }else{
                    uf_tran_owac_c(bzRegNo, ridx, document.frm ,document.frm);
                }
            }
            
            return false;
        });
    });
    
    
    
    
    function setData(){
        var seqNo = "<%=AgrmtSeqNo%>";
        
        //1. �ű԰���
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
    }
</script>

<div style="display:none" id="log">
</div>


</body>
</html> 


