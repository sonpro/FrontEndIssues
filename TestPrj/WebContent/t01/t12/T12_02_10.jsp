<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_02_10.jsp
 *   Description        : �������������˾�â(�����켱)
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
    String ButrId                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ButrId"));                // �����Ϸù�ȣ
    String ExctnRegDt                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnRegDt"));            // �����������
    String ExctnRegDrtm                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnRegDrtm"));          // �������ð�
    String OwacNm                       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"OwacNm"));                // ������
    String RcvBnkCd                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvBnkCd"));              // �Ա������ڵ�             
    String RcvAcctNo                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvAcctNo"));             // �Աݰ��¹�ȣ
    String RcvPsbkPrtCtt                =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcvPsbkPrtCtt"));         // ����������Ա������μ⳻��      
    String WdrwPsbkPrtCtt               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"WdrwPsbkPrtCtt"));        // �����������������μ⳻��      
    String Evdc_SumAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzExpExctnAmt"));         // �������ݾ�            
    String Evdc_SplyAmt                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"SplyAmt"));               // ���ޱݾ�               
    String Evdc_VatAmt                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"VatAmt"));                // �ΰ���ġ����             
    String PaymUsag                     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"PaymUsag"));              // ��볻��               
    String TelNo                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"TelNo"));                 // ��ȭ��ȣ               
    String ExctnStgDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnStgDv"));            // ���ܰ豸��                        
    String AgrmtSeqNo                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));            // �����Ϸù�ȣ                  
    String AgrmtInstId                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstId"));           // ������ID
    String PmsId                        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"pmsId"));                 // PMS_ID                
    String RchExpAcctBnkCd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RchExpAcctBnkCd"));       // ��������������ڵ�              
    String RchExpAcctNo                 =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RchExpAcctNo"));          // ��������¹�ȣ                 
    String AgrmtInstBzRegNo             =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstBzRegNo"));      // ����������ڵ�Ϲ�ȣ
    String BzExpExctnRegYn              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzExpExctnRegYn"));       // ����������Ͽ���
    String AchvInstIndv1Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv1Cd"));               // ����밳���ڵ�1
    String AchvInstIndv2Cd              =   StringUtil.null2void(SessionUtil.getRequestValue(request,"AchvInstIndv2Cd"));           // ����밳���ڵ�2
    String CrdSetlMeth                  =   StringUtil.null2void(SessionUtil.getRequestValue(request,"CrdSetlMeth"));           // ������ı���(1:������/2:�ǽð���ü���)
    String TrscPfmcSt                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"ExctnSt"));           // �ŷ���������
    
    String PsnlAcctUseYn                =   "";     //�ΰǺ񼺰��¿���
    String UnfyMgntInstYn               =   "";     //��������������
    
    String Cus_ReprNm                   =   "";                                                                     // �ŷ�ó��ǥ�ڸ�
    String Cus_BizNo                    =   "";                                                                     // �ŷ�ó����ڹ�ȣ
    String Cus_TpBzNm                   =   "";                                                                     //�ŷ�ó������
    String Cus_TpOpNm                   =   "";                                                                     //�ŷ�ó���¸�
    String Cus_Addr                     =   "";                                                                     //�ŷ�ó������ּ�
    String Cus_SplrCoNm                 =   "";                                                                     //������ȸ���
    String RcvBnkNm                     =   "";                                                                     //�Աݰ��������
    
    //2011.11.30 
    String hmpwRoleDv                   =   StringUtil.null2void(SessionUtil.getRequestValue(request,"hmpwRoleDv"));            // �η¿��ұ���
    String rcmsGrpCd                    =   StringUtil.null2void(SessionUtil.getRequestValue(request,"rcmsGrpCd"));             //RCMS�׷��ڵ� 
    String WRTG_DT                      =   "";                                                                     //�������(���ڼ��ݰ�꼭)
    String APV_DT                       =   "";                                                                     //�������(ī��)  
    
    
    String OgnSumAmt                    =   ""; //�� �հ�ݾ�
    String OgnSplyAmt                   =   ""; //�� ���ޱݾ�
    String OgnVatAmt                    =   ""; //�� �ΰ����ݾ�
    
    String ItemData[]   ;
    
%>

<title>����ϳ��� ���� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">����ϳ��� ����</p>
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
    if("G01" == "G01" && "00006277" == "10112249"){
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

    
    
/******************************************************************
 * set_evdc_amt      ��� ù��° row�� �����ݾ� ����
 * @param
 * @return
 *  page���� customizing �Ǿ���
******************************************************************/
function set_evdc_amt(){
    
    var frm = document.frm;
    var s_SubDtlsItxpIdx = "0";
    
    // 2012.06.15 : �̱⿵ - ������� ���� �߰�

        fnItxpSetting('0', 'B0202', 'B0202022', "�Ʒú�", '1100', '1000', '100', '1000000000000001', '','U201401073766288','20140306','143313','1','B16000','','0');
        
        jQuery("#EvdcDcmtCmadId_"+'0').val("D201401011122337");
        jQuery("#ExtEdmsDocId_"+'0').val("1000000000000001");
        
        jQuery("#EdmsDocId_"+'0').val("1000000000000001");
        jQuery("#FileNm_"+'0').val("test_txt.gif\;");
        jQuery("#rchrInfo_"+'0').val("");
        
        jQuery("#SelShrSorcSn_"+'0').val("");
    
        if('0' != '0'){
            fnAddRow();
        }
        
        //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
        if( frm.S_PSNL_ACCT_USEYN.value == "Y" && 'Y' == itxpPsnlYn('B0202022') ){
            if( "C" == frm.Evdc_Dv.value ){//ī���ΰ�� �ΰǺ� ��� ��� �Ұ�.
                alert("ī��� �ΰǺ� ����� ��� �� �� �����ϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
                $('#SelSubDtlsItxpCd_'+'0').val(''); //������ �ʱ�ȭ
            }else{
                s_SubDtlsItxpIdx = 'B0202022';
            }
            
        }
        
        //��Ÿ��������
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
    document.frm.OwacNm.value = "��RCMS";

    PsnlItxpAcctNoSet();
    
    
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
        $('.dycell').show();
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
    
    //��Ÿ�������� ó��
    uf_etcImplExc(obj);
    
    //���ΰŷ� ����
    setSplrPrsn(frm,frm);
    
    if( false == chkEtcEvdcExc() ){
        return false;
    }
    
    //�ΰǺ����ް��¼���(��,�ܺ��ΰǺ�/��������)
    PsnlItxpAcctNoSet(obj);
}

/******************************************************************
 * PsnlItxpAcctNoSet         �ΰǺ����ް��¼���(��,�ܺ��ΰǺ�/��������)
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
    
     var RchExpAcctNo   = "10000000000";//���������
     var RcvAcctNo      = "10000000000";//�Աݰ���
     
    //ī��� �ΰǺ� ����� �ź�
    //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
    if( frm.S_PSNL_ACCT_USEYN.value == 'Y' && "C" == frm.Evdc_Dv.value ){       
        if('Y' == itxpPsnlYn(ItxpCd)){
            alert("ī��� �ΰǺ� ����� ��� �� �� �����ϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
            obj.selectedIndex = 0;
            return;
        }
    }
    
    var ItxpPsnl = chkItxpPsnl(frm.S_PSNL_ACCT_USEYN.value);

    if( ExctnStgDv == '1' && "C" != frm.Evdc_Dv.value){

        if( ( 0 != ItxpPsnl ) || 'Y' == itxpPsnlYn(ItxpCd)){    //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
            //ī�������� �ƴϰ� �ΰǺ����ް��¸� ����ϴ� ����� ��쿡�� �ΰǺ� ���ް��·� ����.
            if( document.frm.S_PSNL_ACCT_USEYN.value == "Y" ){
                      
                var strVal  =   "003|10000000000|(��) RCMS";
                
                arrVal = strVal.split("|");
                

                document.getElementById("RcvBnkCd").style.display       = "";
                document.getElementById("RcvAcctNo").style.display      = "";
                
                document.getElementById("idRcvBnkNm").style.display         = "none";
                document.getElementById("idFvrtAcct").style.display         = "none";
                document.getElementById("idowacBtn").style.display          = "none";
                document.getElementById("idExctnStgDv_td1").style.display   = "none";
                document.getElementById("idExctnStgDv_td2").style.display   = "inline";
                document.getElementById("idExctnStgDv_td2").innerHTML       = "�ΰǺ����ް��� �����";
                document.getElementById("RcvBnkCd").value                   = arrVal[0];
                document.getElementById("RcvAcctNo").value                  = (arrVal[1]=='null')?'':arrVal[1];
                document.getElementById("OwacNm").value                     = (arrVal[2]=='null')?'':arrVal[2];
                
                document.getElementById("RcvBnkCd").disabled                = true;
                document.getElementById("RcvAcctNo").disabled               = true;
                document.getElementById("OwacNm").disabled                  = true;
                
                if(frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value == frm.S_RCH_ACC_BNK_CD.value
                && frm.RcvAcctNo.value == frm.S_RCH_ACC_NO.value){
                    document.frm.ExctnStgDv[0].checked = false; //Ÿ������ü
                    document.frm.ExctnStgDv[1].checked = true;  //�ڰ�����ü
                }else{
                    document.frm.ExctnStgDv[0].checked = true;  //Ÿ������ü
                    document.frm.ExctnStgDv[1].checked = false; //�ڰ�����ü
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
 * fnAddRow      ���̺� �ο� �߰�
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
                    //edmsDeleteItemRev("frm",  "delete", $("#EdmsDocId_" + $(this).index() ).val(), "SMTEST", "02", "http://61.41.119.163/rcmsConnect.do")
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
    // 2012.06.15 : �̱⿵ - ������� ���� �߰�
    jQuery("#BUITID_"+idx).val(buitid); 
    jQuery("#USEREGDT_"+idx).val(itxpdt);   
    jQuery("#USEREGTM_"+idx).val(itxptm);
    jQuery("#USEREGSEQ_"+idx).val(itxpseq);
    jQuery("#REVIEWYN_"+idx).val(isptst);
    
    jQuery("#LSTISPTST_"+idx).val(isptst);
    jQuery("#LSTISPTRSLTSN_"+idx).val(isptsn);
    jQuery("#LSTISPTAFTHUPDYN_"+idx).val(isptupdyn);
            
    // 2012.06.15 : �̱⿵ - ������� ���� �߰�
    
    if( null == edmsDocId || edmsDocId != "" ){
        jQuery("#ItxpFileEvdc_"+idx).html('<img src="/bt/bt_regist4.gif" alt="���">');
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
    var EdmsDocId = "";
    
    if(""!=$("#EdmsDocId_"+tObjIdx).val()){
        mode = "update";
        EdmsDocId = $("#EdmsDocId_"+tObjIdx).val();
    }

    document.frm.doc_dv.value="1";
    uf_edmsUploadFile(mode,tObjIdx, EdmsDocId);
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
    
    result = openModalNs(url, frm, "dialogWidth:800px; dialogHeight:400px; scroll:no");
    
    if(typeof result != "undefined"){
        if(result.length > 20){
            $("#ItxpAdtnInfo_"+tObjIdx).html('<img src="/bt/bt_regist4.gif" alt="���">');
            $("#rchrInfo_"+tObjIdx).val(result);            //�������������� ���ڿ�(������������ "/" ������ ������",")
        }else{
        }
    }
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

    //alert(docName);
    
    if(docName.length>0){
        if("1"==document.frm.doc_dv.value){
            $("#EdmsDocId_"+docKeyNo).val(docKey);
            $("#FileNm_"+docKeyNo).val(docName);
            $("#ItxpFileEvdc_"+docKeyNo).html('<img src="/bt/bt_regist4.gif" alt="���">');
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

    
    if( -1 == chkItxpPsnl(frm.S_PSNL_ACCT_USEYN.value) ){
        return false;
    }
    
    //��Ÿ�������ܰ� üũ
    if( false == chkEtcEvdcExc() ){
        return false;
    }
    //-----------------------------------
    //  ��������� ��ȿ�� �˻�
    //-----------------------------------
    for(i=0; i<document.frm.itxp_cnt.value; i++){
        if(!chk_frm_value("SelDtlsItxpCd",i))       return false;           // ����
        if(!chk_frm_value("SelSubDtlsItxpCd",i))    return false;           // ������
        if(!chk_frm_value("ItxpItem",i))            return false;           // ǰ��
        if(!chk_frm_value("ItxpUseAmt",i))          return false;           // ���ݾ�
        if(!chk_frm_value("ItxpSplyAmt",i))         return false;           // ���ޱݾ�
        if(!chk_frm_value("ItxpVatAmt",i))          return false;           // �ΰ���
        
        
        //ī��� �ΰǺ� ����� �ź�
        //�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ� ���õǾ��� ���
        if( frm.S_PSNL_ACCT_USEYN.value == "Y" && "C" == frm.Evdc_Dv.value ){       
            if( 'Y' == itxpPsnlYn(document.getElementById("SelSubDtlsItxpCd_" + i).value) ){
                alert("ī��� �ΰǺ� ����� ��� �� �� �����ϴ�.\n\n[�����ΰǺ�, �ܺ��ΰǺ�, ��������, �ΰǺ�, �л��ΰǺ�]");
                return false;
            }
        }
        
        // 2011.10.19 �µ��� : �ΰ����� ���ޱݾ��� �ʰ��ϴ� ��찡 �ֱ� ������ ���� ����
        // 2011.09.16 �µ��� : �ΰ����� �ִ� ���� �ݾ��� ���ޱݾ��� 50% ������ �� (������ ���� ��������)
        var splyAmt = Number($("#ItxpSplyAmt_"+i).val().replace(/,/gi,""));
        var vatAmt  = Number($("#ItxpVatAmt_"+i).val().replace(/,/gi,""));
        if( splyAmt < 0 ){
            alert('���ޱݾ��� 0���� ���� �� �����ϴ�.');
            $("#ItxpSplyAmt_"+i).focus()
            return false;
        }
        if( vatAmt < 0 ){
            alert('�ΰ����ݾ��� 0���� ���� �� �����ϴ�.');
            $("#ItxpVatAmt_"+i).focus();
            return false;
        }
        //if(splyAmt < vatAmt*2){
        //  alert("�ΰ����� �ִ� ���� �ݾ��� ���ޱݾ��� 50%���� �Դϴ�.");
        //  $("#ItxpVatAmt_"+i).focus();
        //  return false;
        //}
    }
    
    //-----------------------------------
    //  �񿵸������ ������ ����� �������� �ΰǺ񳻿���Ͼ���
    //  �űԺ���ڵ� �߰��� ���� ���������������� ��쿡�� �������� �ΰǺ񳻿���Ͼ���
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
                //if("B0301001"!=$("#SelSubDtlsItxpCd_"+i).val() && (null==frm.EdmsDocId[i].value || ""==frm.EdmsDocId[i].value)){
                if( null==frm.EdmsDocId[i].value || ""==frm.EdmsDocId[i].value ){
                    alert("���������� ������ּ���.");
                    return false;
                }
            }
        }else{
            if(null==frm.EdmsDocId.value || ""==frm.EdmsDocId.value){
                alert("���������� ������ּ���.");
                return false;
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
                        return false;
                    }else{
                        if(frm.rchrAmt[i].value.replace(/,/gi,"") != frm.ItxpUseAmt[i].value.replace(/,/gi,"")){
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
    
    //-----------------------------------
    //  ������ü ��û�׸� ��ȿ�� �˻�
    //-----------------------------------
    if("1"==p_PlanPrgrSt){
        

        if( "Y" == frm.SqbnSplrExctnRsnYn.value && "" == $.trim(frm.SqbnSplrExctnRsn.value) ){
            alert('����� ��������� �Է����ּ���.');
            frm.SqbnSplrExctnRsn.focus();
            return false;
        }
        
        if( !("C"==frm.Evdc_Dv.value) ){
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
        
        if( !(("C"==frm.Evdc_Dv.value) &&  ("1"==frm.InstCrdSetlMeth.value))){
            if( frm.OwacNm.value == "" ){
                alert("��������ȸ�� ���ֽʽÿ�.");
                return false;
            }   
        }

        if( !(("C"==frm.Evdc_Dv.value) &&  ("1"==frm.InstCrdSetlMeth.value))){
            //-----------------------------------
            //  ������ü ��û�׸� ��ȿ�� �˻�
            //-----------------------------------
            if(""==frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value){
                alert("�ʼ��׸��� �ݵ�� �����ϼž� �մϴ�.\r\n\r\n* �ʼ����� �׸� : �Աݰ���(����)");
                frm.RcvBnkCd.focus();
                return false;
            }
            //if(! validate_frm(frm) ) return false; // ��ȿ��ó��
        }
        
        if( !("C"==frm.Evdc_Dv.value) ){    
            //-----------------------------------
            //  Ÿ������ü�� �Աݰ��°� ������������� �˻�
            //-----------------------------------
            if( true                                                    ==  document.frm.ExctnStgDv[0].checked      &&
                frm.RcvBnkCd.options[frm.RcvBnkCd.selectedIndex].value  ==  "020"                   &&
                frm.RcvAcctNo.value                                     ==  "1005000000415"){
                alert("�Աݰ��°� ��������¿� �����մϴ�.");
                return false;
            }

        } 

        
        
        //--------------------------------------------------
        //  ��Ÿ����&&�ڰ�����ü�� ��� �����ݾװ� ��ġ���� üũ����
        //--------------------------------------------------
        if(!( ("E"==frm.Evdc_Dv.value)&&(true==document.frm.ExctnStgDv[1].checked))){
            //-----------------------------------
            //  �ݾ� üũ
            //-----------------------------------
            var msg = chk_itxp_evdc_amt();
            if(!(""==msg)){  alert(msg);return false;   }
        }
    }
    

    
    return true;
}

/******************************************************************
 * uf_itxp_update       ��ȹ/����/�������
 * @param
 * @return
******************************************************************/
function uf_itxp_update(p_PlanPrgrSt){
    var frm = document.frm;
    var param,target_url;

    
    // ��ȿ�� �˻�
    if(!chk_save(p_PlanPrgrSt)) return;
    
    if( "0" == p_PlanPrgrSt && ( "" != frm.OwacNm.value || "" != frm.PaymUsag.value || "" != frm.TelNo.value ) ){
        alert('������ü ��û�׸��� ������� �ʽ��ϴ�.');
    }
    
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
                
    
    
    
}
//-------------------------------
//  ī�������Ŀ����� ȭ�鱸������
//-------------------------------
function uf_crdSetlMeth(){
    if("C"=='E' && "1"=='2'){
        document.getElementById("divTranInfoItem").style.display    = "none";
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
        if( 'C' != _evdc_dv ){
            bzRegNo = frm.SplrBzRegNo.value;
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
        $('#RcvNmChkDv_0').val('B06006'); //[RNDB06] B06006 �Ǹ���ȸ���ܼ���
        uf_tran_owac2(frm,frm);
    }else{
        if( bzRegNo == '0000000000' && frm.etc_SplrPrsn.checked == true ){
            $('#RcvNmChkDv_0').val('B06008'); //[RNDB06] B06008 ���ΰŷ�ó
            uf_tran_owac2(frm,frm);
        }else if( bzRegNo == '0000000000' && frm.etc_SplrPrsn.checked == false ){
            alert('�ŷ�ó ����ڵ�Ϲ�ȣ�� Ȯ���ϼ���.');
        }else if( bzRegNo == '8888888888' ){
            $('#RcvNmChkDv_0').val('B06009'); //[RNDB06] B06009 �ؿܰŷ�ó
            uf_tran_owac2(frm,frm);         
        }else{
            //bzRegNo ���� ������ ������ ��ȸ��
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
    <!--  ����ϳ��� �󼼳��� ǥ start -->
        <!-- ---------------------------------------------------------------------------- -->
        <!--    ������ǥ�ùڽ� ����� ���� -->
        <!-- ---------------------------------------------------------------------------- -->
        <div class="t10 b20 pop_wh">
        <%@ include file="/inc/sbjt_info_pop.jsp" %>
        </div>                                                                                                                
        <!-- ---------------------------------------------------------------------------- -->
        <!--    ������ǥ�ùڽ� ����� �� -->
        <!-- ---------------------------------------------------------------------------- -->

        <form name="frm" id="frm" method="post">
            <!-- ��������  -->
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
            <input type="hidden" id="S_SBJT_NM"             name="S_SBJT_NM"                value="RCMS �ǽ��� �������">
            <input type="hidden" id="S_BZ_CLAS_NM"          name="S_BZ_CLAS_NM"             value="RCMS �ǽ�">
            <input type="hidden" id="S_NPRF_INST_YN"        name="S_NPRF_INST_YN"           value="N">
            <input type="hidden" id="S_MY_ACCT_TRNS_ALWN_YN"    name="S_MY_ACCT_TRNS_ALWN_YN"   value="Y">
            <input type="hidden" id="S_PSNL_ACCT_USEYN"     name="S_PSNL_ACCT_USEYN"        value="<%=StringUtil.null2void(PsnlAcctUseYn) %>">
            <input type="hidden" id="S_UNFY_MGNT_INST_YN"   name="S_UNFY_MGNT_INST_YN"      value="<%=StringUtil.null2void(UnfyMgntInstYn) %>">
            <input type="hidden" id="ExctnRegDt"            name="ExctnRegDt"               value="<%=StringUtil.null2void(ExctnRegDt) %>">            <!-- �����������                 -->
            <input type="hidden" id="ExctnRegDrtm"          name="ExctnRegDrtm"             value="<%=StringUtil.null2void(ExctnRegDrtm) %>">          <!-- �������ð�                 -->
            <input type="hidden" id ="ButrId"               name ="ButrId"                  value="<%=StringUtil.null2void(ButrId) %>"/>               <!-- �����Ϸù�ȣ                 -->
            <input type="hidden" id ="TrscPfmcSt"           name ="TrscPfmcSt"              value="<%=StringUtil.null2void(TrscPfmcSt) %>"/>           <!-- �ŷ���������                 -->
            <input type="hidden" id ="Evdc_Dv"              name ="Evdc_Dv"                 value="<%=StringUtil.null2void(BzExpExctnEvdcDv) %>"/>     <!-- ��������                           -->
            <input type="hidden" id ="Evdc_SumAmt"          name ="Evdc_SumAmt"             value="<%=StringUtil.null2void(Evdc_SumAmt) %>"/>          <!-- ����_��ü�ݾ�                        -->
            <input type="hidden" id ="Evdc_SplyAmt"         name ="Evdc_SplyAmt"            value="<%=StringUtil.null2void(Evdc_SplyAmt) %>"/>         <!-- ����_���ޱݾ�                        -->
            <input type="hidden" id ="Evdc_VatAmt"          name ="Evdc_VatAmt"             value="<%=StringUtil.null2void(Evdc_VatAmt) %>"/>          <!-- ����_�ΰ�����                        -->
            <input type="hidden" id ="Cus_SplrCoNm"         name ="Cus_SplrCoNm"            value="<%=StringUtil.null2void(Cus_SplrCoNm) %>"/>         <!-- ������ȸ���                         -->
            <input type="hidden" id="BzExpExctnRegYn"       name="BzExpExctnRegYn"          value="<%=BzExpExctnRegYn%>"/>                  <!-- ����������Ͽ���                  -->
            <input type="hidden" id="dockeyNo"              name="dockeyNo"                 value=""/>                                      <!-- ���õ� �������̺�Ű         -->
            <input type="hidden" id="doc_dv"                name="doc_dv"                   value=""/>                                      <!-- ��������/�ΰǺ񳻿�             -->
            <input type="hidden" id="docName"               name="docName"                  value=""/>                                      <!-- ���ϰ����(������ϸ�)   -->
            <input type="hidden" id="docKey"                name="docKey"                   value=""/>                                      <!-- ������EDMS_dockey         -->
            <input type="hidden" id="methodName"            name="methodName"               value=""/>                                      <!-- �޼ҵ�� -->    
            <input type="hidden" id="attr98"                name="attr98"                   value=""/>                                      <!-- ���ϰ����(������ϸ�)   -->
            <input type="hidden" id="attr99"                name="attr99"                   value=""/>                                      <!-- ���ϰ����(������ϰ���)  -->
            <input type="hidden" id="itxp_cnt"              name="itxp_cnt"                 value="1"/>                                     <!-- ����ϰǼ�             -->
            <input type="hidden" id="p_rchrInfo"            name="p_rchrInfo"               value=""/>
            <input type="hidden" id="InstCrdSetlMeth"       name="InstCrdSetlMeth"          value="<%=CrdSetlMeth %>"/>                 <!--    ī��������                  -->
    
            <input type="hidden" id ="OgnSumAmt"            name ="OgnSumAmt"               value="<%=OgnSumAmt %>"/>
            <input type="hidden" id ="OgnSplyAmt"           name ="OgnSplyAmt"              value="<%=OgnSplyAmt %>"/>
            <input type="hidden" id ="OgnVatAmt"            name ="OgnVatAmt"               value="<%=OgnVatAmt %>"/>

            <input type="hidden" id="ExclsVatAmtYn"         name="ExclsVatAmtYn"            value="N" /> <!--  �ΰ��� ���ܿ��� -->
            
            
    <!-- // ����ϳ��� �󼼳��� ǥ end// -->
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
            <td class="ll"><%=ComboUtil.getComboBox("RND134", "evma_gb", "", "disabled onchange='SplrInfoDisplay();'", BzExpExctnEvdcDv, ComboUtil.OPT_NONE) %></td>
          </tr>
          </tbody>          
      </table>
    </div>
    <!-- //�������� �󼼳��� ǥend// -->
    <h3>���������</h3>
    <div class="b05 ar">
        
      <a href="#dummy" onclick="uf_frmNewWinNs(document.frm, '/pop/T01_12_00.jsp', 'GUIDE_LINE', '800', '850');"><img src="/bt/bt_guide2.gif" alt="���� Guideline"/></a>
      <a href="#dummy" onclick="fnAddRow();"><img src="/bt/bt_plus.gif" alt="�߰��ϱ�"/></a>
      <a href="#dummy" onclick="fnRemove();calc_amtSet();"><img src="/bt/bt_minus.gif" alt="����"/></a>
    </div>
    <!-- ǰ�����̺� -->
    <div>
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
              <col width="10%" class="dycell"/>
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
                  <th scope="col" class="dycell">�����<br />��ó</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="ac"><input type="checkbox" name="ItxpChk" id="ItxpChk_0" value="0" /></td>
                  <td class="ac">
                    <select title="����" name="SelDtlsItxpCd" id="SelDtlsItxpCd_0" onchange="SelDtlsItxpCdOnChange(this);" style="width:98%">
                    <option value="">����</option>
                    </select>
                  </td>
                  <td class="ac">
                    <select title="������" name="SelSubDtlsItxpCd" id="SelSubDtlsItxpCd_0" style="width:98%" onchange="SelDtlsItxpCdOnChange2(this);" >                            
                    <option value="">����</option>
                    </select>
                  </td>
                  <td class="ac">
                    <input type="hidden" name="EtcEvdcExcCd" id="EtcEvdcExcCd_0" value="" />
                    <input type="hidden" name="EtcEvdcExcNo" id="EtcEvdcExcNo_0" value="" />
                    <div class="posabs etcimpex" id="etcimpex_0" onclick="uf_etcImplExc(this)"><a href="#dummy"><img src="/bt/bt_etcimpex.gif" /></a></div>
                  <input type="text" name="ItxpItem" id="ItxpItem_0" value="" maxlength="100" size="20" title="ǰ��" class="inputl inputedit" style="width:90px"/></td>
                  <td class="ac"><input type="text" name="ItxpUseAmt"  id="ItxpUseAmt_0" value="0"   size="17" readonly maxlength="15" title="���ݾ�" class="inputl currency" style="width:72px;background-color:#d2d2d2;"  onfocus="fnNextFocus(this,'ItxpSplyAmt')" /></td>
                  <td class="ac"><input type="text" name="ItxpSplyAmt" id="ItxpSplyAmt_0"   onkeyup="calc_amtSet(this, false);" onblur="calc_amtSet(this, false);chk_amtSet(this);" value="0"   size="17" maxlength="15"  title="���ޱݾ�" class="inputl currency inputedit" style="width:72px"/></td>
                  <td class="ac"><input type="text" name="ItxpVatAmt" id="ItxpVatAmt_0" onkeyup="calc_amtSet(this, false);" onblur="calc_amtSet(this, false);chk_amtSet(this);" value="0"   size="17" maxlength="15" title="�ΰ���" class="inputl currency inputedit" style="width:65px"/></td>
                  <td class="ac"><span id="ItxpFileEvdcVal_0" style="display:none;"></span><a href="#dummy" class="itxpFileEvdcVal" ><span id="ItxpFileEvdc_0" onclick="fnFileEvdc(this);"><img src="/bt/bt_nonregist.gif" alt="�̵��"/></span></a>
                  
                            <input type="hidden" name="EvdcDcmtCmadId"      id="EvdcDcmtCmadId_0"       value="" />
                            <input type="hidden" name="ExtEdmsDocId"        id="ExtEdmsDocId_0"     value="" />
                  
                            <input type="hidden" name="EdmsDocId"       id="EdmsDocId_0"        value="" /> <!-- ������EDMS_dockey -->
                            <input type="hidden" name="FileNm"              id="FileNm_0"               value="" /> <!-- ���ϰ����(������ϸ�) -->
                            <input type="hidden" name="file_Cnt"            id="file_Cnt_0"         value="" /> <!-- ���ϰ����(������ϰ���) -->
                  </td>
                  <td class="ac"><div style="width:34px"><span id="ItxpAdtnInfoVal_0" style="display:none;"></span><a href="#dummy" class="ItxpAdtnInfo" ><span id="ItxpAdtnInfo_0" onclick="fnAdtnInfo(this);"><img src="/bt/bt_nonregist.gif" alt="�̵��"/></span></a>
                            <input type="hidden" name="rchrInfo"            id="rchrInfo_0"         value="" /> <!-- �������������� -->
                            <input type="hidden" name="rchrAmt"             id="rchrAmt_0"          value="" /> <!-- �����������ѱݾ� -->
                            <!-- 2012.06.15 : �̱⿵ - ������� ���� �߰� -->
                            <input type="hidden" id="BUITID_0"          name="BUIT_ID"          value=""/>
                            
                            <input type="hidden" id="USEREGDT_0"        name="USE_REG_DT"       value=""/>
                            <input type="hidden" id="USEREGTM_0"        name="USE_REG_TM"       value=""/>
                            <input type="hidden" id="USEREGSEQ_0"       name="USE_REG_SN"           value=""/>
                            <input type="hidden" id="LSTISPTST_0"       name="LST_ISPT_ST"              value=""/>
                            <input type="hidden" id="LSTISPTRSLTSN_0"       name="LST_ISPT_RSLT_SN"             value=""/>
                            <input type="hidden" id="LSTISPTAFTHUPDYN_0"    name="LST_ISPT_AFTH_UPD_YN"     value=""/>
                            <!-- 2012.06.15 : �̱⿵ - ������� ���� �߰� -->
                            </div>
                  </td>
                  <td class="ac dycell">
                  <select title="����񱸺�" name="ShrSorcSn" id="SelShrSorcSn_0" style="width:60px;">
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
                  <td class="sum1 dycell"></td>
                </tr>
                <tr id="SplyAmtDfamtRsn_tr" style="display:none;">
                  <td colspan="2" class="sum1">���ޱݾ����� ����</td>
                  <td colspan="8"><input type="text" name="SplyAmtDfamtRsn" id="SplyAmtDfamtRsn" class="inputl" style="width:98%" value="" /></td>
                </tr>               
              </tfoot>
            </table>
    </div>
    <!-- //ǰ�����̺� end// -->
    
    <!-- 2013-09-13 ������ ����/������ ���� ��û �ش� �˸� ���� -->
    <!-- <div class="guide_bu">�񿵸������ ��� ������ ����� ������������ ��ϰ����մϴ�.</div> -->
    
    <div class="t10"></div>
    <div id="divTranInfo">   <!-- �ŷ�ó ���� Div ����  -->
    <input type="hidden" name="SplrAuth" id="SplrAuth" value="1" /><!-- ������忡���� ����ڹ�ȣȮ���� �Ȼ��� -->
    <h3>�ŷ�ó����</h3>
    <div class="fr" style="display:none;"><input type="checkbox" value="1" name="etc_SplrPrsn" id="etc_SplrPrsn_0" onclick="uf_tglSplrPrsn(this)" disabled="disabled"  /><label for="etc_SplrPrsn_0">���ΰŷ�</label></div>
    <div class="t05 b20 pop_wh cb">
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
            <td><span id="d_SplrCoNm">(��) A ������</span></td>
            <th scope="row">����ڵ�Ϲ�ȣ</th>
            <td class="ll"><span id="d_SplrBzRegNo">222-22-222222</span>
            <input type="hidden" name="SplrBzRegNo" id="SplrBzRegNo" value="" />
            </td>
          </tr>
          <tr>
            <th scope="row">����</th>
            <td><span id="d_SplrTpopNm">����</span></td>
            <th scope="row">����</th>
            <td class="ll"><span id="d_SplrTpbzNm">����</span></td>
          </tr>
          <tr>
            <th scope="row">������ּ�</th>
            <td><span id="d_SplrAdr">����Ư���� �߱� �����1�� 31</span></td>
            <th scope="row">��ǥ�ڸ�</th>
            <td class="ll"><span id="d_SplrReprNm">����ǥ</span></td>
          </tr>
        </tbody>
      </table>
    </div>
    </div>

        <div id="SqbnSplrExctnRsn_tbl_0" style="display:none;">
            <input type="hidden" name="SqbnSplrExctnRsnYn" id="SqbnSplrExctnRsnYn_0" value="N"/>
            <input type="hidden" name="RcvNmChkDv" id="RcvNmChkDv_0" value="" />
            <h3>����� �������</h3>
            <div class="t05 b10">
            <table width="672" border="0" cellspacing="0" cellpadding="0" summary="������ŷ�ó �������" class="tbl_type02">
            <caption>����� �������</caption>
              <colgroup>
                <col width="18%" />
                <col width="82%"/>
              <tbody>
                <tr>
                  <th scope="row"><label for="SqbnSplrExctnRsn_0">�������</label></th>
                  <td class="ll"><input type="text" name="SqbnSplrExctnRsn" id="SqbnSplrExctnRsn_0" value="" class="inputl" style="width:455px;ime-mode:inactive;" colname="������������" maxlength="200"/></td>
                </tr>
              </tbody>
            </table>
          </div>
          </div>
          
    <div id="divTranInfoItem"  >     <!-- ������ü��û�׸� Div ����  -->
    <h3>������ü ��û�׸�</h3>
    <div class="ar">
      <a href="#" onclick="uf_popup_trns_stndrd_info();"><img src="/bt/bt_guide3.gif" alt="�ڰ�����ü������"/></a>
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
                  <th scope="row"><span class="txt_orb">*</span> ���౸��</th>
                  <td colspan="3" class="ll">
                    <span id="idExctnStgDv_td1" style="display:block;">
                    <input type="radio" id="ExctnStgDv1_0" name="ExctnStgDv" value="1" onclick="exctn_ExctnStgDv_v2(this.value,'2', '020','A', '10000000000', '','','','Y');" checked="checked"><label for="ExctnStgDv1">Ÿ������ü(��������°�����ü)</label> <span class="l10"></span>
                    <input type="radio" id="ExctnStgDv2_0" name="ExctnStgDv" value="2" onclick="exctn_ExctnStgDv_v2(this.value,'2','020','B', '888888888880','B','020','888888888880','Y');"><label for="ExctnStgDv2">�ڰ�����ü(�����������ü)</label> 
                    <select name='kind_TrnsRchAcc'  id='kind_TrnsRchAcc'  class='' id='kind_TrnsRchAcc' style='width:135px;'  ><option value='B03001' >�����</option><option value='B03002' >���ڱ���</option><option value='B03003' >������������</option><option value='B03004' >�������ܾ׺���</option><option value='B03005' >��ü�����������ü</option><option value='B03006' >���������ݾ�</option><option value='B03007' selected>�ڰ�����ü���α��</option><option value='B03009' >�������������� �ΰǺ�(������)</option></select>
                    </span>
                    <span id="idExctnStgDv_td2" style="display:none;"></span>
                  </td>
                </tr>
                <tr>
                  <th scope="row"><span class="txt_orb">*</span> <label for="bank">�Աݰ���</label></th>
                  <td><select name='RcvBnkCd'  id='RcvBnkCd'  class='' onchange='uf_OwacNmRst();' style='width:65px;' ><option value=''>����</option><option value='020' >A ����</option><option value='003' >B ����</option><option value='004' >C ����</option></select>
                    <div id="idRcvBnkNm" style="float:left;padding-top:4px;display:none;">A����&nbsp;10000000000</div>
                    <a id="idMyAcctNo" href="#dummy" onclick="uf_popup_my_acct();" style="float:right;display:none"><img src="/bt/bt_myacctno.gif" alt="�ڰ�����ü�����"/></a>
                    
                    <input type="text" title="�Աݰ���" class="inputl" style="width:90px" onchange="uf_OwacNmRst();" id="RcvAcctNo" name="RcvAcctNo" value="10000000000" title="" notnull colname="�Աݰ���(���¹�ȣ)" datatype="N" maxlength="20" enc="on" onfocus="chkEnc();" />
                    <a id="idFvrtAcct" href="javascript:uf_popup_fvrt_acct();"><img src="/bt/bt_acct01.gif" alt="���־��°���"/></a>
                    
                    
                  </td>
                  <th scope="row"><span class="txt_orb">*</span> <label for="account">������</label></th>
                  <td class="ll"><input type="text" name="OwacNm" id="OwacNm" title="������" class="inputl" style="width:100px;background-color:#d2d2d2;" readonly="readonly" />
                    <a href="#dummy" id="idowacBtn" onclick="uf_tran_owac();"><img src="/bt/bt_acct02.gif" alt="��������ȸ"/></a>
                  </td>
                </tr>
                <tr>
                  <th scope="row"><span class="txt_orb DynReqStar">*</span> <label for="WdrwPsbkPrtCtt" style="font-size:8pt">����������ǥ�ó���</label></th>
                  <td><input type="text" name="WdrwPsbkPrtCtt" id="WdrwPsbkPrtCtt" class="inputl" style="width:132px" value="RCMS �ǽ�" title="����������ǥ�ó���" notnull colname="����������ǥ�ó���" maxlength="12" /></td>
                  <th scope="row"><span class="txt_orb DynReqStar">*</span> <label for="RcvPsbkPrtCtt" style="font-size:8pt">�ŷ�ó����ǥ�ó���</label></th>
                  <td class="ll"><input type="text" name="RcvPsbkPrtCtt" id="RcvPsbkPrtCtt" class="inputl" style="width:100px" value="RCMS �ǽ�" title="�ŷ�ó����ǥ�ó���" notnull colname="�ŷ�ó����ǥ�ó���" maxlength="12"/></td>
                </tr>
                <tr>
                  <th scope="row"><label for="AchvInstIndv1Cd">����밳���ڵ�A</label></th>
                  <td><input type="text" name="AchvInstIndv1Cd" id="AchvInstIndv1Cd" class="inputl" style="width:132px;ime-mode:disabled;" value="TEST0004" title="����밳���ڵ�A" colname="����밳���ڵ�A" maxlength="20"//></td>
                  <th scope="row"><label for="codeb">����밳���ڵ�B</label></th>
                  <td class="ll"><input type="text" name="AchvInstIndv2Cd" id="AchvInstIndv2Cd" class="inputl" style="width:100px;ime-mode:disabled;" value="" title="����밳���ڵ�B" colname="����밳���ڵ�B" maxlength="20"//></td>
                </tr>
                <tr>
                  <th scope="row">��ü�ݾ�</th>
                  <td><span id="txt_trnsAmt">22</span></td>
                  <th scope="row"><span class="txt_orb">*</span> <label for="tel">��ȭ��ȣ</label></th>
                  <td class="ll"><input type="text" name="TelNo" id="TelNo" value="222" title="��ȭ��ȣ" class="inputl" style="width:100px" notnull colname="��ȭ��ȣ" datatype="N" maxlength="15" mask="-" /></td>
                </tr>
                <tr>
                  <th scope="row">���ް���</th>
                  <td><span id="txt_splyAmt">11</span></td>
                  <th scope="row">�ΰ���ġ����</th>
                  <td class="ll"><span id="txt_vatAmt">11</span></td>
                </tr>
                <tr>
                  <th scope="row"><span class="txt_orb">*</span> <label for="memo">���޿뵵</label></th>
                  <td colspan="3" class="ll"><input type="text" name="PaymUsag" id="PaymUsag" value="222" class="inputl" style="width:455px;ime-mode:inactive;" notnull colname="���޿뵵" maxlength="100"/></td>
                </tr>
              </tbody>
            </table>
    </div>
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
        <p class="pop_point_title"  id="divMyAcctTransAlwn" style="display:none;">�ǽð����տ���������ý���(RCMS) ���뿡 ���� ���� ��û ����̹Ƿ� �ڰ�����ü(�����������ü)�� ������</p>
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
window.onload = function(){
    
    $('.currency').ForceNumericOnly();
    uf_crdSetlMeth('2');        //ī�������Ŀ����� ȭ�鱸������
    uf_onLoadPage();
        
};

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

</body>
</html> 
