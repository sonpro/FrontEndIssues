<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_01_10_0.jsp
 *   Description        : ����� > ���ڼ��ݰ�꼭 ��ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.19                     ������             
 *
 *  @author     ������
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
    String RegTyp               = SessionUtil.getRequestValue(request, "RegTyp");   //��Ϲ��(1:���켱,0 or empty:�����켱)
    String RowIdx               = SessionUtil.getRequestValue(request, "pRowIdx");  //���켱 > row index
%>


<title>���ڼ��ݰ�꼭 ���� ��ȸ &gt; RCMS �ǽð����տ���������ý��� b-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���ڼ��ݰ�꼭 ���� ��ȸ</p>
        </div>
        <!-- //head title// --> 
    </div>




<script type="text/javascript">

/******************************************************************
 * uf_search    ���ι�ȣ�� ���ݰ�꼭��ȸ
 * @param   
 * @return
******************************************************************/
var isSearch = false;
function uf_search(){
    var frm = document.frm;
    
    if(null==frm.TmpExecTxblApvNo.value || ""==frm.TmpExecTxblApvNo.value){
        alert("���ڼ��ݰ�꼭 ���ι�ȣ�� �Է��ϼ���.");
        return;
    }
    if( isSubmit() ) return;    // ����ó��

    ExecuteDetail();
}
/******************************************************************
 * uf_pop_elec_txbl_inq     ���ݰ�꼭 ��������ȸ �˾�â
 * @param   
 * @return
******************************************************************/
function uf_pop_elec_txbl_inq(){
	alert('�ǽ�ȯ�濡���� �������� �ʴ� ����Դϴ�.');
	return;
    
}
/******************************************************************
 * uf_openerTrns    ����â�� ���ڼ��ݰ�꼭���� ����
 * @param   
 * @return
******************************************************************/
function uf_openerTrns(){
	if(!isSearch){
		alert('��ȸ�� ������ �����ϴ�.');
		return false;
	}
	
    var frm             = document.frm;
        
    <% if( "1".equals(RegTyp) ){%>
        uf_openerTrns1(frm, <%=RowIdx%>); //���켱
    <% }else{ %>
        uf_openerTrns0(frm); //�����켱
    <% } %>        
    
    
}
//�����켱
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

    

    opener.document.getElementById("Evdc_Dv"            ).value     = "T";                                                          //��������
    opener.document.getElementById("T_SplpBzRegNo"      ).value     = "111-11-11111";      //���޹޴��ڻ���ڵ�Ϲ�ȣ  
    opener.document.getElementById("T_SplpSucoEnplcNo"  ).value     = "";      //���޹޴�����ȸ�������ȣ
    opener.document.getElementById("T_SplpCoNm"         ).value     = "(��) RCMS";      //���޹޴���ȸ���          
    opener.document.getElementById("T_SplpTpbzNm"       ).value     = "����";      //���޹޴��ھ�����          
    opener.document.getElementById("T_SplpTpopNm"       ).value     = "����";      //���޹޴��ھ��¸�          
    opener.document.getElementById("T_SplpReprNm"       ).value     = "�����";      //���޹޴��ڴ�ǥ�ڸ�     
    opener.document.getElementById("T_SplpAdr"          ).value     = "���������� ������ ȭ�ϵ� 58-4";      //���޹޴����ּ�            
    opener.document.getElementById("T_SplrBzRegNo"      ).value     = "100-10-10000";      //�����ڻ���ڵ�Ϲ�ȣ      
    opener.document.getElementById("T_SplrChidCoEnplcNo").value     = "";      //��������ȸ�������ȣ    
    opener.document.getElementById("T_SplrCoNm"         ).value     = "(��) �� ��ü";      //������ȸ���                
    opener.document.getElementById("T_SplrTpbzNm"       ).value     = "����";      //�����ھ�����                
    opener.document.getElementById("T_SplrTpopNm"       ).value     = "����";      //�����ھ��¸�              
    opener.document.getElementById("T_SplrReprNm"       ).value     = "������";      //�����ڴ�ǥ�ڸ�           
    opener.document.getElementById("T_SplrAdr"          ).value     = "��õ������ ������ ������ 1138";      //�������ּ�
    opener.document.getElementById("Evdc_SplyAmt"       ).value     = "1000";;         //���ޱݾ�
    
    // 2012.01.25 �µ���
    // �ΰ����� ������ ���ް������ε� ��� �����ϵ��� ���� Start
    opener.document.getElementById("T_SplyAmt"          ).value     = "1000";         //���ڼ��ݰ�꼭���ſ��� ���ޱݾ�
    opener.document.getElementById("T_VatAmt"           ).value     = "100";         //���ڼ��ݰ�꼭���ſ��� �ΰ���ġ����
    opener.document.getElementById("T_SumAmt"           ).value     = "1100";      //���ڼ��ݰ�꼭���ſ��� �հ�ݾ�
    opener.document.getElementById("T_ExclsVatAmtYn"    ).value     = frm.ExclsVatAmtYn.checked ? "Y" : "N";                        //�ΰ���ġ���� ���� �÷���

    if(frm.ExclsVatAmtYn.checked == true){
        opener.document.getElementById("Evdc_VatAmt"    ).value     = "0";                                                          //�ΰ���ġ����
        opener.document.getElementById("Evdc_SumAmt"    ).value     = "1000";         //�հ�ݾ�(���ް��׸�)
    }else{
        opener.document.getElementById("Evdc_VatAmt"    ).value     = "100";         //�ΰ���ġ����
        opener.document.getElementById("Evdc_SumAmt"    ).value     = "1100";      //�հ�ݾ�
    }
    // �ΰ����� ������ ���ް������ε� ��� �����ϵ��� ���� End
    
    opener.document.getElementById("T_Rmk"              ).value     = "";      //���
    opener.document.getElementById("T_CashAmt"          ).value     = "0";     //���ݱݾ�
    opener.document.getElementById("T_ChkAmt"           ).value     = "0";      //��ǥ�ݾ�                  
    opener.document.getElementById("T_DrftAmt"          ).value     = "0";      //�����ݾ�                  
    opener.document.getElementById("T_CredRcblAmt"      ).value     = "1100";      //�ܻ�̼��ݾ�                
    opener.document.getElementById("T_WrtgDt"           ).value     = "20140120";      //�ۼ�����                  
    opener.document.getElementById("T_SplpEmalAdr1"     ).value     = "test@keit.re.kr";      //���޹޴����̸����ּ�      
    opener.document.getElementById("T_SplpEmalAdr2"     ).value     = "";      //���޹޴����̸����ּ�      
    opener.document.getElementById("T_SplrEmalAdr"      ).value     = "gaBusiness@business.net";      //�������̸���                
    opener.document.getElementById("T_CorcRsn"          ).value     = "";      //��������                  
    opener.document.getElementById("T_ReptNcnt"         ).value     = 1;          //�ݺ��Ǽ�
    
    for(i = 0; i < 1; i++){
        arr_T_UseDt     += "20140120"+"|";       //�������
        arr_T_MitmNm    += "����Ժ�"+"|";        //ǰ��
        arr_T_MitmQnt   += ""+"|";         //����
        arr_T_MitmUprc  += ""+"|";         //�ܰ�
        arr_T_SplyAmt   += "1000"+"|";         //���ޱݾ�
        arr_T_VatAmt    += "100"+"|";         //�ΰ���ġ����
        arr_T_MitmNrm   += ""+"|";         //�԰�
        arr_T_Rmk       += ""+"|";       //���
    }
    
    opener.document.getElementById("T_strUseDt"         ).value     = arr_T_UseDt;      //�������     
    opener.document.getElementById("T_strMitmNm"            ).value     = arr_T_MitmNm;     //ǰ��       
    opener.document.getElementById("T_strMitmUprc"          ).value     = arr_T_MitmUprc;       //�ܰ�       
    opener.document.getElementById("T_strMitmQnt"           ).value     = arr_T_MitmQnt;        //����       
    opener.document.getElementById("T_strSplyAmt"       ).value     = arr_T_SplyAmt;    //���ޱݾ�       
    opener.document.getElementById("T_strVatAmt"        ).value     = arr_T_VatAmt;     //�ΰ���ġ����     
    opener.document.getElementById("T_strMitmNrm"           ).value     = arr_T_MitmNrm;        //�԰�   
    opener.document.getElementById("T_strRmk"           ).value     = arr_T_Rmk;        //���       
    //--------------------------------
    //  �ŷ�ó���� �ؽ�Ʈ����
    //--------------------------------
    
    //opener.document.getElementById("d_SplrReprNm"           ).innerHTML =   "(��) �� ��ü"+"("+"������"+")";
    opener.document.getElementById("d_SplrReprNm"           ).innerHTML =   "(��) �� ��ü";
    opener.document.getElementById("d_SplrBzRegNo"          ).innerHTML =   frmRegNoValue("1234567890");
    opener.document.getElementById("d_SplrTpopNm"           ).innerHTML =   "����";
    opener.document.getElementById("d_SplrTpbzNm"           ).innerHTML =   "����";
    opener.document.getElementById("d_SplrAdr"              ).innerHTML =   "��õ������ ������ ������ 1138";
    
    //--------------------------------
    //  ������ü���� �����ͼ���
    //--------------------------------
    opener.document.getElementById("WdrwPsbkPrtCtt").value      =   "(��) �� ��ü";        //������ȸ���(��������μ⳻��)
    opener.document.getElementById("RcvPsbkPrtCtt").value       =   "(��) RCMS";        //���޹޴���ȸ���(�Ա������μ⳻��)
    
    // 2012.01.25 �µ���
    // �ΰ����� ������ ���ް������ε� ��� �����ϵ��� ���� Start
    if(frm.ExclsVatAmtYn.checked == true){
        opener.set_AmtInfo("T",document.getElementById("TmpExecTxblApvNo").value,"1000","0");
    }else{
        opener.set_AmtInfo("T",document.getElementById("TmpExecTxblApvNo").value,"1000","100");    
    }
    // �ΰ����� ������ ���ް������ε� ��� �����ϵ��� ���� End

    
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
//���켱
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
        

    
    fnAppendChild(row_idx,"T_ExecTxblApvNo"     , document.getElementById("TmpExecTxblApvNo").value     );          //���ڼ��ݰ�꼭���ι�ȣ
    fnAppendChild(row_idx,"T_SplpBzRegNo"       , "111-11-11111");     //���޹޴��ڻ���ڵ�Ϲ�ȣ  
    fnAppendChild(row_idx,"T_SplpSucoEnplcNo"   , "");     //���޹޴�����ȸ�������ȣ
    fnAppendChild(row_idx,"T_SplpCoNm"          , "(��) RCMS");     //���޹޴���ȸ���          
    fnAppendChild(row_idx,"T_SplpTpbzNm"        , "����");     //���޹޴��ھ�����          
    fnAppendChild(row_idx,"T_SplpTpopNm"        , "����");     //���޹޴��ھ��¸�          
    fnAppendChild(row_idx,"T_SplpReprNm"        , "�����");     //���޹޴��ڴ�ǥ�ڸ�     
    fnAppendChild(row_idx,"T_SplpAdr"           , "���������� ������ ȭ�ϵ� 58-4");     //���޹޴����ּ�            
    fnAppendChild(row_idx,"T_SplrBzRegNo"       , "100-10-10000");     //�����ڻ���ڵ�Ϲ�ȣ      
    fnAppendChild(row_idx,"T_SplrChidCoEnplcNo" , "");     //��������ȸ�������ȣ    
    fnAppendChild(row_idx,"T_SplrCoNm"          , "(��) �� ��ü");     //������ȸ���                
    fnAppendChild(row_idx,"T_SplrTpbzNm"        , "����");     //�����ھ�����                
    fnAppendChild(row_idx,"T_SplrTpopNm"        , "����");     //�����ھ��¸�              
    fnAppendChild(row_idx,"T_SplrReprNm"        , "������");     //�����ڴ�ǥ�ڸ�           
    fnAppendChild(row_idx,"T_SplrAdr"           , "��õ������ ������ ������ 1138");     //�������ּ�
    
    // 2012.01.25 �µ���
    // �ΰ����� ������ ���ް������ε� ��� �����ϵ��� ���� Start
    fnAppendChild(row_idx,"T_SplyAmt"           , "1000");          //���ڼ��ݰ�꼭���ſ��� ���ޱݾ�
    fnAppendChild(row_idx,"T_VatAmt"            , "100");          //���ڼ��ݰ�꼭���ſ��� �ΰ���ġ����
    fnAppendChild(row_idx,"T_SumAmt"            , "1100");         //���ڼ��ݰ�꼭���ſ��� �հ�ݾ�
    fnAppendChild(row_idx,"T_ExclsVatAmtYn"     , frm.ExclsVatAmtYn.checked ? "Y" : "N"                 );          //�ΰ���ġ���� ���� �÷���

    fnAppendChild(row_idx,"T_Evdc_SplyAmt"      , "1000");          //���ޱݾ�
    if(frm.ExclsVatAmtYn.checked == true){
        fnAppendChild(row_idx,"T_Evdc_VatAmt"   , "0");                                                             //�ΰ���ġ����
        fnAppendChild(row_idx,"T_Evdc_SumAmt"   , "1000");          //�հ�ݾ�(���ް��׸�)
    }else{
        fnAppendChild(row_idx,"T_Evdc_VatAmt"   , "100"  );          //�ΰ���ġ����
        fnAppendChild(row_idx,"T_Evdc_SumAmt"   , "1100");     //�հ�ݾ�
    }
    // �ΰ����� ������ ���ް������ε� ��� �����ϵ��� ���� End
    
    fnAppendChild(row_idx,"T_Rmk"               , "");     //���
    fnAppendChild(row_idx,"T_CashAmt"           , "0");     //���ݱݾ�
    fnAppendChild(row_idx,"T_ChkAmt"            , "0");     //��ǥ�ݾ�                  
    fnAppendChild(row_idx,"T_DrftAmt"           , "0");     //�����ݾ�                  
    fnAppendChild(row_idx,"T_CredRcblAmt"       , "1100");     //�ܻ�̼��ݾ�                
    fnAppendChild(row_idx,"T_WrtgDt"            , "20140120");     //�ۼ�����                  
    fnAppendChild(row_idx,"T_SplpEmalAdr1"      , "test@keit.re.kr");     //���޹޴����̸����ּ�      
    fnAppendChild(row_idx,"T_SplpEmalAdr2"      , "");     //���޹޴����̸����ּ�      
    fnAppendChild(row_idx,"T_SplrEmalAdr"       , "gaBusiness@business.net");     //�������̸���                
    fnAppendChild(row_idx,"T_CorcRsn"           , "");     //��������                  
    fnAppendChild(row_idx,"T_ReptNcnt"          , 1);         //�ݺ��Ǽ�
    
    for(i = 0; i < 1; i++){
        arr_T_UseDt     += rplc_emtpty2space("20140120")+"|";       //�������
        arr_T_MitmNm    += rplc_emtpty2space("����Ժ�")+"|";        //ǰ��
        arr_T_MitmQnt   += rplc_emtpty2zero("")+"|";         //����
        arr_T_MitmUprc  += rplc_emtpty2zero("")+"|";         //�ܰ�
        arr_T_SplyAmt   += rplc_emtpty2zero("1000")+"|";         //���ޱݾ�
        arr_T_VatAmt    += rplc_emtpty2zero("100")+"|";         //�ΰ���ġ����
        arr_T_MitmNrm   += rplc_emtpty2space("")+"|";         //�԰�
        arr_T_Rmk       += rplc_emtpty2space("")+"|";       //���
    }
    
    fnAppendChild(row_idx,"T_strUseDt"          , arr_T_UseDt   );      //�������     
    fnAppendChild(row_idx,"T_strMitmNm"         , arr_T_MitmNm  );      //ǰ��       
    fnAppendChild(row_idx,"T_strMitmUprc"       , arr_T_MitmUprc    );      //�ܰ�       
    fnAppendChild(row_idx,"T_strMitmQnt"        , arr_T_MitmQnt     );      //����       
    fnAppendChild(row_idx,"T_strSplyAmt"        , arr_T_SplyAmt );      //���ޱݾ�       
    fnAppendChild(row_idx,"T_strVatAmt"         , arr_T_VatAmt  );      //�ΰ���ġ����     
    fnAppendChild(row_idx,"T_strMitmNrm"        , arr_T_MitmNrm     );      //�԰�   
    fnAppendChild(row_idx,"T_strRmk"            , arr_T_Rmk     );      //���       
    //--------------------------------
    //  �ŷ�ó���� �ؽ�Ʈ����
    //--------------------------------
    
    //��������
    opener.document.getElementById('EvmaGb_'        + row_idx ).value = "T";
    //������ ���ڼ��ݰ�꼭������ ������ �ȵǵ��� disabled
    opener.document.getElementById('EvmaGb_'        + row_idx ).setAttribute('disabled',true);

    //�ݾ׼���
    opener.document.getElementById("ItxpSplyAmt_"   + row_idx ).value       = "1000";     // ���ް���(�����, ��ȭȯ����, ����������)
    if(frm.ExclsVatAmtYn.checked == true){
        opener.document.getElementById("ItxpUseAmt_"    + row_idx ).value       = "1000";     // ���ݾ�
        opener.document.getElementById("ItxpVatAmt_"    + row_idx ).value       = "0";  // �ΰ���ġ����
    }else{
        opener.document.getElementById("ItxpUseAmt_"    + row_idx ).value       = parseInt("1000",10)+parseInt("100",10);          // ���ݾ�
        opener.document.getElementById("ItxpVatAmt_"    + row_idx ).value       = "100";     // �ΰ���ġ����
    }
    
    
    opener.document.getElementById("d_SplrReprNm_"  + row_idx   ).innerHTML =   "(��) �� ��ü"+"("+"������"+")";
    opener.document.getElementById("d_SplrBzRegNo_" + row_idx   ).innerHTML =   frmRegNoValue("1234567890");
    opener.document.getElementById("d_SplrTpopNm_"  + row_idx   ).innerHTML =   "����";
    opener.document.getElementById("d_SplrTpbzNm_"  + row_idx   ).innerHTML =   "����";
    opener.document.getElementById("d_SplrAdr_"     + row_idx   ).innerHTML =   "��õ������ ������ ������ 1138";
    
    //--------------------------------
    //  ������ü���� �����ͼ���
    //--------------------------------
    opener.document.getElementById("WdrwPsbkPrtCtt_"+row_idx).value     =   "(��) �� ��ü";        //������ȸ���(��������μ⳻��)
    opener.document.getElementById("RcvPsbkPrtCtt_" +row_idx).value     =   "(��) RCMS";        //���޹޴���ȸ���(�Ա������μ⳻��)
    
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

//���ΰ�ħ(F5) ����
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
        alert("���ι�ȣ�� �Է����ֽʽÿ�.");
        return;
    }else{
        frm.ExecTxblApvNo.value = ExecTxblApvNo.substring(0,8)+"-"+ExecTxblApvNo.substring(8,16)+"-"+ExecTxblApvNo.substring(16);
    }
    
    uf_proce_display_on();  //�ε���
    setTimeout(function(){
        try{   
	            document.body.style.cursor = "wait";
	            GetDetailValue();
	            document.body.style.cursor = "auto";
	        }finally{
	            reset_submit();
	        }
        
        }, 1000);   // 1���� ���� 1000 = 1��s
    
}

function GetDetailValue(){  
	isSearch = true;
    ScreenClear();
    
    document.getElementById('PROV_REG_NUMBER'           ).firstChild.nodeValue = "100-10-10000";
    document.getElementById('PROV_OTHER_REGNO'          ).firstChild.nodeValue = "";
    document.getElementById('PROV_COMPANY_NM'           ).firstChild.nodeValue = "(��) �� ��ü";
    document.getElementById('PROV_CEO_NAME'             ).firstChild.nodeValue = "������";
    document.getElementById('PROV_BUSINESS_PLACE'       ).firstChild.nodeValue = "��õ������ ������ ������ 1138";
    document.getElementById('PROV_BUSINESS_CATEGORY'    ).firstChild.nodeValue = "����";
    document.getElementById('PROV_BUSINESS_TYPE'        ).firstChild.nodeValue = "����";
    document.getElementById('PROV_EMAIL'                ).innerHTML = "gaBusiness@business.net";
    document.getElementById('RECE_REG_NUMBER'           ).firstChild.nodeValue = "111-11-11111";
    document.getElementById('RECE_OTHER_REGNO'          ).firstChild.nodeValue = "";
    document.getElementById('RECE_COMPANY_NAME'         ).firstChild.nodeValue = "(��) RCMS";
    document.getElementById('RECE_CEO_NAME'             ).firstChild.nodeValue = "�����";
    document.getElementById('RECE_BUSINESS_PLACE'       ).firstChild.nodeValue = "���������� ������ ȭ�ϵ� 58-4";
    document.getElementById('RECE_BUSINESS_CATEGORY'    ).firstChild.nodeValue = "����";
    document.getElementById('RECE_BUSINESS_TYPE'        ).firstChild.nodeValue = "����";
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
    document.getElementById('RECEIPT_CLAIM_GUBUN'       ).firstChild.nodeValue = "û��";

    /* 
    document.getElementById('ITEM_TAXBILL_MONTH1'       ).innerHTML = "01";
    document.getElementById('ITEM_TAXBILL_DAY1'         ).innerHTML = "20";
    document.getElementById('ITEM_NAME1'                ).innerHTML = "����Ժ�";
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
        dTableTr.setText(2, "����Ժ�");
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
//�ʱ�ȭ
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
      <label for="TmpExecTxblApvNo">���ι�ȣ:</label>
      </b>
      <input type="text" name="TmpExecTxblApvNo" id="TmpExecTxblApvNo" title="���ι�ȣ" style="width:170px;" class="inputl"  value="" datatype="AN" mask="-" />
      <a href="#dummy" onclick="uf_search();"><img src="/bt/bt_search5.gif" alt="��ȸ"/></a>
    </div>
    
    <!-- ���ڼ��ݰ�꼭 start -->
    <div class="t10 pop_wh">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ڼ��ݰ�꼭 ������ ���޹޴���">
      <caption>
      ���ڼ��ݰ�꼭 ������ ���޹޴���
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
          <th rowspan="6" scope="row" class="bill_thred02">��<br />��<br />��</th>
          <th scope="row" class="bill_thred">��Ϲ�ȣ</th>
          <td class="bill_tdred" id="PROV_REG_NUMBER">&nbsp;</td>
          <th scope="row" class="bill_thred01">��������ȣ</th>
          <td class="bill_tdred01" id="PROV_OTHER_REGNO">&nbsp;</td>
          <td rowspan="6" class="bill_thblue02">��<br />��<br />��<br />��<br />��</td>
          <td class="bill_thblue">��Ϲ�ȣ</td>
          <td class="bill_tdblue" id="RECE_REG_NUMBER">&nbsp;</td>
          <td class="bill_thblue01">��������ȣ</td>
          <td class="bill_tdblue" id="RECE_OTHER_REGNO">&nbsp;</td>
        </tr>
        <tr>
          <th scope="row" class="bill_thred">��ȣ</th>
          <td class="bill_tdred" id="PROV_COMPANY_NM">&nbsp;</td>
          <th scope="row" class="bill_thred01">����</th>
          <td class="bill_tdred01" id="PROV_CEO_NAME">&nbsp;</td>
          <td class="bill_thblue">��ȣ</td>
          <td class="bill_tdblue" id="RECE_COMPANY_NAME">&nbsp;</td>
          <td class="bill_thblue01">����</td>
          <td class="bill_tdblue" id="RECE_CEO_NAME">&nbsp;</td>
        </tr>
        <tr>
          <th scope="row" class="bill_thred">�����</th>
          <td colspan="3" class="bill_tdred01" id="PROV_BUSINESS_PLACE">&nbsp;</td>
          <td class="bill_thblue">�����</td>
          <td colspan="3" class="bill_tdblue" id="RECE_BUSINESS_PLACE">&nbsp;</td>
          </tr>
        <tr>
          <th height="39" scope="row" class="bill_thred">����</th>
          <td class="bill_tdred" id="PROV_BUSINESS_CATEGORY">&nbsp;</td>
          <th scope="row" class="bill_thred01">����</th>
          <td class="bill_tdred01" id="PROV_BUSINESS_TYPE">&nbsp;</td>
          <td class="bill_thblue">����</td>
          <td class="bill_tdblue" id="RECE_BUSINESS_CATEGORY">&nbsp;</td>
          <td class="bill_thblue01">����</td>
          <td class="bill_tdblue" id="RECE_BUSINESS_TYPE">&nbsp;</td>
        </tr>
        <tr>
          <th rowspan="2"  scope="row" class="bill_thred02">�̸���</th>
          <td rowspan="2" colspan="3" class="bill_tdred02" id="PROV_EMAIL">&nbsp;</td>
          <td class="bill_thblue">�̸���</td>
          <td colspan="3" class="bill_tdblue" id="RECE_EMAIL1">&nbsp;</td>
          </tr>
        <tr>
          <td class="bill_thblue02">�̸���</td>
          <td colspan="3" class="bill_tdblue02"  id="RECE_EMAIL2">&nbsp;</td>
          </tr>
      </tbody>
    </table>
  </div>  
  <!-- //���ڼ��ݰ�꼭 end// -->    
    
    <!-- ���ڼ��ݰ�꼭 �󼼳���1 start -->
    <div class="t20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ڼ��ݰ�꼭 �󼼳���" class="tbl_type03">
        <caption>
        ���ڼ��ݰ�꼭 �󼼳���
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
            <th scope="col">�ۼ�����</th>
            <th scope="col">���ް���</th>
            <th scope="col">�ΰ���ġ����</th>
            <th scope="col">��������</th>
            <th scope="col">���</th>
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
    <!-- //���ڼ��ݰ�꼭 �󼼳���1 end// -->
    <!-- ���ڼ��ݰ�꼭 �󼼳���2 start -->
    <div class="t20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ڼ��ݰ�꼭�� ǰ��,�԰�,���� �� ������ ������ ǥ" class="tbl_type03" id="ELEC_TXBL_ITEM">
        <caption>���ڼ��ݰ�꼭</caption>
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
            <th scope="col">��</th>
            <th scope="col">��</th>
            <th scope="col">ǰ��</th>
            <th scope="col">�԰�</th>
            <th scope="col">����</th>
            <th scope="col">�ܰ�</th>
            <th scope="col">���ް���</th>
            <th scope="col">�ΰ���ġ����</th>
            <th scope="col">���</th>
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
    <!-- //���ڼ��ݰ�꼭 �󼼳���2 end// -->
    <!-- ���ڼ��ݰ�꼭 �󼼳���3 start -->
    <div class="t20 pop_wh">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���ڼ��ݰ�꼭�� �հ�ݾ�,����,��ǥ �� ������ ������ ǥ" class="tbl_type03">
        <caption>���ڼ��ݰ�꼭</caption>
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
            <th scope="col">�հ�ݾ�</th>
            <th scope="col">����</th>
            <th scope="col">��ǥ</th>
            <th scope="col">����</th>
            <th scope="col">�ܻ�̼���</th>
            <td rowspan="2" class="ac">�� �ݾ��� <span id="RECEIPT_CLAIM_GUBUN">&nbsp;</span> ��</td>
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
    <!-- //���ڼ��ݰ�꼭 �󼼳���3 end// -->
    <!-- action bt start -->
    <div class="pop_action_bt ar">
      <div class="fl">
        <input type="checkbox" name=ExclsVatAmtYn id="ExclsVatAmtYn" class="check"/>
        �ΰ����� ������ ���ް��׸� ����մϴ�. </div>
      <a href="#dummy" onclick="uf_pop_elec_txbl_inq();" class="bt_action2-01" title="���"><span class="bt_sp">���</span></a> 
      <a href="#dummy" onclick="uf_openerTrns();" class="bt_action2-01" title="����"><span class="bt_sp1">����</span></a> 
      </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- ���ǻ��� start -->
    <div class="pop_guide_box">
      <div class="pop_guide_boxtd">
        <ul>
          <li>���� ���ΰ��������� �� ���ڼ��ݰ�꼭 �����������θ� ��ȸ�� �����մϴ�.</li>
          <li>�ش��������� www.esero.go.kr�� ��ϵǾ� �־�� ��ȸ�� �����մϴ�.</li>
        </ul>
      </div>
    </div>
    <!-- //���ǻ��� end// -->
    </form>
  </div>
</div>
<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %> 



</body>
</html> 
