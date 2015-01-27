<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T12_01_20_0.jsp
 *   Description        : ����� > ī���볻����ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.26                     ������             
 *
 *  @author     ������ 
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
    
    
    String SearchOnly           = StringUtil.null2void(SessionUtil.getRequestValue(request, "pSearchOnly"),"N");      //��ȸ���ϵ�����
    String AgrmtSeqNo           = StringUtil.null2void(SessionUtil.getRequestValue(request, "AgrmtSeqNo")); //�����Ϸù�ȣ
    String RegTyp               = SessionUtil.getRequestValue(request, "RegTyp");                           //��Ϲ��(1:���켱,0 or empty:�����켱)
    String RowIdx               = SessionUtil.getRequestValue(request, "pRowIdx");                          //���켱 > row index
    String SbjtId               = SessionUtil.getRequestValue(request, "pSbjtId");                          //����ID
    String CpcgInstBzRegNo      = SessionUtil.getRequestValue(request, "pCpcgInstBzRegNo");                 //����������ڹ�ȣ
    String AgrmtInstCrpnRegNo   = SessionUtil.getRequestValue(request, "pAgrmtInstCrpnRegNo");              //����������ڹ�ȣ
    String InstCrdSetlMeth      =   "1"; //���ī��������(1:������/2:�ǽð���ü���)

    String sbjtParam            = SessionUtil.getRequestValue(request, "sbjtParam");              //���� ����
    
%>


<title>ī���볻�� ��ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">ī���볻�� ��ȸ</p>
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
    
    uf_proce_display_on();  //�ε���
    
    setTimeout(function(){
        setData1(sbjtParam);
        }, 1000);   // 1���� ���� 1000 = 1��s
        
}

//////////////////////////////////
//��ȸ ó��
//////////////////////////////////
function uf_search(pageno, SchGb){

    var frm = document.frm;

    
    //�׸��� ���� üũ
    selectorColumn = gridRoot1.getObjectById("selector");
    if(selectorColumn.getSelectedIndex() < 0){ 
        alert("���õ� ����ڸ����ȸ ������ �����ϴ�.");
        return; 
    }
    if( isSubmit() ) return;    // ����ó��
    
    //���õ� row�� �� üũ
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot1.getItemAt(rowIndex);
    
    if( "1"==dataRow.CRD_USE_YN || "2"==dataRow.CRD_USE_YN ){
        alert("��ȸ�� �Ұ����� ī���Դϴ�.\n\nī�����ó�����¸� Ȯ���Ͻñ� �ٶ��ϴ�.");
        return;
    } 
    if("5" == dataRow.CRD_USE_YN){
        if( Number(frm.InqStrDt.value.replace(/-/gi, "")) > Number(dataRow.SETL_DD.substring(0,10).replace(/-/gi,"")) ){
            alert("������ ī���Դϴ�.\n\n�������������� ��ȸ���ֽñ� �ٶ��ϴ�.");
            return; 
        }
    }
    get2post(frm, "CrdNo="+dataRow.CRD_NO.replace(/-/gi, ""));
    get2post(frm, "FncInstCd="+dataRow.FNC_INST_CD.replace(/-/gi, ""));
    
    if( typeof SchGb!="undefined" ){
        get2post(frm, "SchGb="+SchGb);
    } 
    
     
    var cdNo = dataRow.CRD_NO.replace(/-/gi,"");
    uf_proce_display_on();  //�ε���
    setTimeout(function(){
        setData2(SbjtId, cdNo); //Insert Grid
        }, 1000);   // 1���� ���� 1000 = 1��s
    
}


function lPadString(str, ch, len){
    var strlen = trim(str).length;
     var ret = "";
     var alen = len - strlen;
     var astr = ""; 
     
     //������ ���ڸ�ŭ  len ũ��� ch ���ڷ� ä���
     for (var i=0; i<alen; ++i)
     {
      astr = astr + ch;
     }
     
     ret = trim(str) + astr; //�ڿ��� ä���
     return ret;
}
//////////////////////////////////
// �����������
//////////////////////////////////
 function uf_insert(){
     if(!chkGridSelectedCount_rMate(gridRoot2, "ī�����(����)����")) return false;    // �׸��弱��üũ
     
 
     <% if( "1".equals(RegTyp) ){%>
         fnInsertItxp(<%=RowIdx%>);//���켱
     <% }else{ %>
         fnInsertEvdc();//�����켱
     <% } %>
     
 }

//�����켱 ���
function fnInsertEvdc(){
    
    var idx = -1;
    var rows = 0;
    
    
    //�׸��� ���� üũ
    selectorColumn = gridRoot2.getObjectById("selector");
    
    //���õ� row�� �� üũ
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot2.getItemAt(rowIndex);
    
    
    var ApvNo = dataRow.APV_NO;
    
    
        
    if( Number(dataRow.ITXP_REG_NCNT)>0 ){
        alert("�����Ͻ� ������ ����� ��� �Ǿ� ����� �� �����ϴ�.\n\n���ι�ȣ : "+ApvNo+"");
        return;
    }
    
    if( "Y" == dataRow.BZ_EXP_EXCTN_YN ){
        alert("�����Ͻ� ������ ������ ��� �Ǿ� ����� �� �����ϴ�.\n\n���ι�ȣ : "+ApvNo+"");
        return;
    }

    if( "Y" == dataRow.EXCTN_EXEC_CAN_YN ){
        alert("�����Ͻ� ������ ������ ��� �Ǿ� ����� �� �����ϴ�.\n\n���ι�ȣ : "+ApvNo+"");
        return;
    }
            
    // 2011.1.27 ������(��ҳ��� ��ϺҰ�)
    if( "���" == dataRow.BUY_APV_CAN_YN ){
        alert("�����Ͻ� ������ ��� ������ ���ŵǾ ����� �� �����ϴ�.\n\n���ι�ȣ : "+ApvNo+"");
        return;
    }
    
    if( (Number(dataRow.APV_SUM) != Number(dataRow.SPLY_PRC_AMT)   + Number(dataRow.VAT_AMT)  ) &&
        (Number(dataRow.APV_SUM) != Number(dataRow.ORGNL_SPLY_AMT) + Number(dataRow.ORGNL_ADTN_TAX) ) )
    {
        
        /*//20140402 ������ ���Ӵ� alert �ȶ߰� ��û
        if( (Number(dataRow.ORGNL_SPLY_AMT) + Number(dataRow.ORGNL_ADTN_TAX)) == 0 ){
            alert("[���ޱݾ�+�ΰ�����]�� ���ݾװ� ��ġ���� �ʽ��ϴ�.\n�ΰ��������� Ŭ���Ͽ� �ݾ��� �����ϼ���.\n\n���ι�ȣ : "+ApvNo+"");
        }
        return;
        */
        
    }
    
    if( "1" == dataRow.SBJT_DV ){
        //if(!confirm("���ϰ����� ����[ī�����(����)����]���� ��ϵǾ��ֽ��ϴ�.\n�ش� ��ȹ�ǿ� ����[ī�����(����)����]�� �߰��Ͻðڽ��ϱ�?")){
        //  return;
        //}
        var msg = "���õ� ����[ī�����(����)����]���� ���ϰ����� ��ϵǾ��ֽ��ϴ�.\n\n"
                + "������ ����[ī�����(����)����]���� �ߺ� ��� �� �� �����ϴ�. \n"
                + "\n���ι�ȣ : "+ApvNo+"";
        //alert(msg);
        return;
    }else if( "2" == dataRow.SBJT_DV ){
        var msg = "���õ� ����[ī�����(����)����]���� Ÿ������ ��ϵǾ��ֽ��ϴ�.\n\n"
                + "# Ÿ���� : [������ȣ : "+dataRow.SBJT_ID+"] [������ : "+dataRow.SBJT_NM+"] \n"
                + "������ ����[ī�����(����)����]���� ���������� ����� �� �����ϴ�. \n"
                + "\n���ι�ȣ : "+ApvNo+"";
        alert(msg);
        return;
    }
    
    
    //--------------------------------------
    //  �θ�â ���� ī������ ����
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
            alert('���Ե����� ������ ������ �߻��Ͽ����ϴ�. ������(1661-5855)�� ���ǹٶ��ϴ�.');
        }
    }

    // 2011.10.10 ����� : ���� ����
    if( "Y" == dataRow.CRDCO_BY_TPBZ_LIMT_USE_YN ){
        alert("�����Ͻ� ������ ������ ["+opener.document.getElementById("C_CmBrTp").value+"] �Դϴ�.\n�ش� ������ ������ �Ǿ� ����� �� �����ϴ�.");
        return;
    }

    if((!((dataRow.SBJT_DV =="2") || (dataRow.SBJT_DV =="1"))) && 
            ("0" == Number(dataRow.ORGNL_SPLY_AMT)) && ("0" == Number(dataRow.ORGNL_ADTN_TAX))){

        if(confirm("�ΰ����� �����Ͻðڽ��ϱ�?")){
            rMateGridObjColumnButtonEvent(rowIndex, 0, dataRow, "");
            return;
        }else{
            notChgVat(rowIndex, dataRow);         //�����ݾ� ����
        }
        
        
    }
    
    if(!confirm("���õ� ����[ī�����(����)����]���� ����Ͻðڽ��ϱ�?")) return;

    //���ŵ� dataRow �� ��������
    //�׸��� ���� üũ
    selectorColumn = gridRoot2.getObjectById("selector");
    
    //���õ� row�� �� üũ
    rowIndex = selectorColumn.getSelectedIndex();
    dataRow = gridRoot2.getItemAt(rowIndex);
    

    opener.document.getElementById("Evdc_SumAmt").value         =   dataRow.APV_SUM;                              // ���ݾ�
    opener.document.getElementById("Evdc_SplyAmt").value        =   dataRow.ORGNL_SPLY_AMT;                                // �������ް���(�����, ��ȭȯ����, ����������)
    opener.document.getElementById("Evdc_VatAmt").value         =   dataRow.ORGNL_ADTN_TAX;                          // �����ΰ���ġ����
    
    //--------------------------------
    //  �ŷ�ó���� �ؽ�Ʈ����
    //--------------------------------
    opener.document.getElementById("d_SplrReprNm"           ).innerHTML =   opener.document.getElementById("C_MestReprNm").value;
    opener.document.getElementById("d_SplrBzRegNo"          ).innerHTML =   frmRegNoValue(opener.document.getElementById("C_MestBzNo").value);
    opener.document.getElementById("d_SplrTpbzNm"           ).innerHTML =   opener.document.getElementById("C_CmBrTp").value;
    opener.document.getElementById("d_SplrAdr"              ).innerHTML =   opener.document.getElementById("C_MestAdr1").value;
    
    // ����������(1)+ī���ȣ(16)+"-"+���Խ��α���(1)+"-"+��������(8)+"-"+���ι�ȣ(23)
    //ī�������Ϸù�ȣ ���ձ�Ģ���� 20110225 �̼��� / �������ڸ� ���ι�ȣ�ڷ� => ������� + "-" + ��������(6(yymmdd))(�α�ȣ)
    var strEvdcSeqNo    =   "C"+opener.document.getElementById("C_CrdNo").value+"-"+opener.document.getElementById("C_BuyApvDv").value
                        +"-"+lPadString(opener.document.getElementById("C_BuyClctNo").value,"0",32)+ "-" + opener.document.getElementById("C_BuyDt").value.substring(2, 8);
    
    opener.set_AmtInfo("C",strEvdcSeqNo,dataRow.ORGNL_SPLY_AMT,dataRow.ORGNL_ADTN_TAX);     //����
    
    // ī���������� �ǽð���ü���(2)�̸� �Աݰ��¹�ȣ�����Ѵ�.
    if("2" == "<%=InstCrdSetlMeth%>"){
        //�׸��� ���� üũ
        var selectorColumn_crd = gridRoot1.getObjectById("selector");
        
        //���õ� row�� �� üũ
        var rowIndex_crd = selectorColumn_crd.getSelectedIndex();
        var dataRow_crd = gridRoot1.getItemAt(rowIndex_crd);
        
        opener.document.getElementById("RcvBnkCd").value    = dataRow_crd.SETL_DSTN_BNK_CD;
        opener.document.getElementById("RcvAcctNo").value   = dataRow_crd.SETL_DSTN_ACCT_NO;   
            
        

        opener.document.getElementById("txt_trnsAmt"        ).innerHTML =   toMoney((Number(dataRow.ORGNL_SPLY_AMT)+Number(dataRow.ORGNL_ADTN_TAX))+"");//��ü�ݾ�
        opener.document.getElementById("txt_splyAmt"        ).innerHTML =   toMoney(dataRow.ORGNL_SPLY_AMT);   //���ޱݾ�
        opener.document.getElementById("txt_vatAmt"         ).innerHTML =   toMoney(dataRow.ORGNL_ADTN_TAX);//�ΰ���
        opener.document.getElementById("InstCrdSetlMeth").value = "<%=InstCrdSetlMeth%>";//ī��������
    }
        
    
    
    //Layer Display On
    opener.SplrInfoDisplay("Y","C","<%=InstCrdSetlMeth%>");
    
    window.close();
}



//���켱 ���
function fnInsertItxp(rowIdx){
  var idx = -1;
  var rows = 0;
  var cnt = 0;
  
  try{
      
      /* 
      if(rowCheck.length < 0){ 
          alert("���õ� ����ڸ����ȸ ������ �����ϴ�.");
          return; 
      }
       */
      //if( isSubmit() ) return;    // ����ó��
      
      //�׸��� üũ����
      if(getSelectedCount_rMate(gridRoot2, "selector") > 0) {
          
          //�׸��� ���� üũ
          var selectorColumn2 = gridRoot2.getObjectById("selector");
          var rowCheck = selectorColumn2.getSelectedIndices();
          var falseCheck = [];  //üũ ���� ����
          
          
          for(var i=0;i<rowCheck.length;i++){
          
              //���õ� row�� �� üũ
              var dataRow = gridRoot2.getItemAt(rowCheck[i]);
              var rowIndex = rowCheck[i];
              var isCheck = true;
              
              var ApvNo = dataRow.APV_NO; //���ι�ȣ
              
              if( Number(dataRow.ITXP_REG_NCNT)>0 ){  //����ϰǼ�
                  alert("�����Ͻ� ������ ����� ��� �Ǿ� ����� �� �����ϴ�.\n\n���ι�ȣ : "+ApvNo+"");
                  //setUnSelected(obj,idx,"����");
                  //selectorColumn2.setAllItemSelected(false);   //��������
                  isCheck = false; //üũ����
                  continue;
                  
              }
              
              if( "Y" == dataRow.BZ_EXP_EXCTN_YN ){ //����Ͽ����ڵ�
                  alert("�����Ͻ� ������ ������ ��� �Ǿ� ����� �� �����ϴ�.\n\n���ι�ȣ : "+ApvNo+"");
                  isCheck = false; //üũ����
                  continue;
                  
              }
        
              if( "Y" == dataRow.EXCTN_EXEC_CAN_YN ){   //getCell(obj, idx, "��������ҿ����ڵ�")
                  alert("�����Ͻ� ������ ������ ��� �Ǿ� ����� �� �����ϴ�.\n\n���ι�ȣ : "+ApvNo+"");
                  isCheck = false; //üũ����
                  continue;
              }
                      
              // 2011.1.27 ������(��ҳ��� ��ϺҰ�)
              if( "���" == dataRow.BUY_APV_CAN_YN ){    //getCell(obj, idx, "��ҿ���")
                  alert("�����Ͻ� ������ ��� ������ ���ŵǾ ����� �� �����ϴ�.\n\n���ι�ȣ : "+ApvNo+"");
                  isCheck = false; //üũ����
                  continue;
              }
              
              if( (Number(dataRow.APV_SUM) != Number(dataRow.SPLY_PRC_AMT)   + Number(dataRow.VAT_AMT)  ) &&
                  (Number(dataRow.APV_SUM) != Number(dataRow.ORGNL_SPLY_AMT) + Number(dataRow.ORGNL_ADTN_TAX)) ){
                  
                  /* //20140402 ���������� alert �ȶ߰� �ٷ� �˾� �߰� ��û
                  if( (Number(dataRow.ORGNL_SPLY_AMT) + Number(dataRow.ORGNL_ADTN_TAX)) == 0 ){
                      alert("[���ޱݾ�+�ΰ�����]�� ���ݾװ� ��ġ���� �ʽ��ϴ�.\n�ΰ��������� Ŭ���Ͽ� �ݾ��� �����ϼ���.\n\n���ι�ȣ : "+ApvNo+"");
                  }
                  
                  isCheck = false; //üũ����
                  continue;
                   */
              }
        
              if( "1" == dataRow.SBJT_DV ){
                  //if(!confirm("���ϰ����� ����[ī�����(����)����]���� ��ϵǾ��ֽ��ϴ�.\n�ش� ��ȹ�ǿ� ����[ī�����(����)����]�� �߰��Ͻðڽ��ϱ�?")){
                  //  return;
                  //}
                  var msg = "���õ� ����[ī�����(����)����]���� ���ϰ����� ��ϵǾ��ֽ��ϴ�.\n\n"
                          + "������ ����[ī�����(����)����]���� �ߺ� ��� �� �� �����ϴ�. \n"
                          + "\n���ι�ȣ : "+ApvNo+"";
                  //alert(msg);
                  isCheck = false; //üũ����
                  continue;
              }else if( "2" == dataRow.SBJT_DV ){
                  var msg = "���õ� ����[ī�����(����)����]���� Ÿ������ ��ϵǾ��ֽ��ϴ�.\n\n"
                          + "# Ÿ���� : [������ȣ : "+dataRow.SBJT_ID+"] [������ : "+dataRow.SBJT_NM+"] \n"
                          + "������ ����[ī�����(����)����]���� ���������� ����� �� �����ϴ�. \n"
                          + "\n���ι�ȣ : "+ApvNo+"";
                  alert(msg);
                  isCheck = false; //üũ����
                  continue;
              }       
              
              
              //������ �ϳ��� ��� �ΰ��� ���� �˾� ����
              if( (selectorColumn2.getSelectedIndices().length == 1  ) && (!((dataRow.SBJT_DV =="2") || (dataRow.SBJT_DV =="1"))) && 
                      ("0" == Number(dataRow.ORGNL_SPLY_AMT)) && ("0" == Number(dataRow.ORGNL_ADTN_TAX))){
        
                  if(confirm("�ΰ����� �����Ͻðڽ��ϱ�?")){
                      
                      rMateGridObjColumnButtonEvent(rowIndex, 0, dataRow, "");
                      
                      return;
                  }else{
                      notChgVat(rowIndex, dataRow);         //�����ݾ� ����
                  }
                  
              }else{
                  notChgVat(rowIndex, dataRow);         //�����ݾ� ����
              }
              
              //���ó����� ���
              if(isCheck){
                  falseCheck[falseCheck.length] = rowCheck[i];
              }
              cnt++;
              
          
          }
          
          selectorColumn2.setAllItemSelected(false);    // ��ü���� ����
          selectorColumn2.setSelectedIndices(falseCheck);   //���ó����� ������
          
          
          
          //2013.01.19 ������, �������ÿ��� ������ ��ϵ� ī���������� �����Ѵ�.
          if( null != opener.document.getElementById("BeforeCrdSetlMeth") ){
              if( "" == opener.document.getElementById("BeforeCrdSetlMeth").value ){
                  opener.document.getElementById("InstCrdSetlMeth").value = "<%=InstCrdSetlMeth%>";//ī��������   
              }else{
                  opener.document.getElementById("InstCrdSetlMeth").value = opener.document.getElementById("BeforeCrdSetlMeth").value;
              }
          }else{
              opener.document.getElementById("InstCrdSetlMeth").value = "<%=InstCrdSetlMeth%>";//ī��������
          }
          
      }
                  
      
      if(!chkGridSelectedCount_rMate(gridRoot2,  "ī�����(����)����")) return false;  // �׸��弱��üũ
  
      if(!confirm("���õ� ����[ī�����(����)����]���� ����Ͻðڽ��ϱ�?")) return;
      
      uf_proce_display_on();
      opener.uf_proce_display_on();
  
      opener.document.body.setCapture(); // 'wait'
      opener.document.body.style.cursor = "wait";
      
      
      
      setTimeout(function(){
          
          idx = -1;
          nIdx = 0;
          

          //--------------------------------------
          //  �θ�â ���� ī������ ����
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
          
          
              
          //�׸��� ���� üũ
          var selectorColumn2 = gridRoot2.getObjectById("selector");
          var rowCheck = selectorColumn2.getSelectedIndices();
          var falseCheck = [];  //üũ ���� ����
          
          for(var i=0;i<rowCheck.length;i++){
              var dataRow = gridRoot2.getItemAt(rowCheck[i]);
              var isCheck = true;
              
              var row_idx = (rowIdx+rows+nIdx);
      
              var arr_param   =   dataRow.G_PARAM.split("&");
          
              var node = opener.document.getElementById('frmElmtArea_'+row_idx);
              for (; node.hasChildNodes();) node.removeChild(node.firstChild);
              
              var chkCrdLimBrTp = false; //�������� üũ
              
              for(var j=0; j<arr_param.length;j++){
                  var arr_param_val   =   arr_param[j].split("=");                
    
                  // 2011.10.10 ����� : ���� ����
                  if( arr_param_key[j] == 'C_CmBrTp' && "Y" == dataRow.CRDCO_BY_TPBZ_LIMT_USE_YN ){    //ī��纰�������ѻ�뿩��
                      alert("�����Ͻ� ���ι�ȣ [" + dataRow.APV_NO + "] �� ������ ["+arr_param_val[1]+"] �Դϴ�.\n�ش� ������ ������ �Ǿ� ����� �� �����ϴ�.");
                      isCheck = false;     // ��������
                      chkCrdLimBrTp = true;
                      break;
                  }
              }
              
              //���ó����� ���
              if(isCheck){
                  falseCheck[falseCheck.length] = rowCheck[i];
              }
              if( chkCrdLimBrTp == true ) continue;
              
              for(var j=0; j<arr_param.length;j++){
                  var arr_param_val   =   arr_param[j].split("=");
                  fnAppendChild(row_idx, arr_param_key[j], arr_param_val[1]);
              }
              
              fnAppendChild(row_idx, 'C_Evdc_SumAmt', dataRow.APV_SUM);    //���ݾ�
              fnAppendChild(row_idx, 'C_Evdc_SplyAmt', dataRow.ORGNL_SPLY_AMT);    //�������ް���
              fnAppendChild(row_idx, 'C_Evdc_VatAmt', dataRow.ORGNL_ADTN_TAX); //�����ΰ���ġ����
              
              //��������
              opener.document.getElementById('EvmaGb_'        + row_idx ).value = "C";
              //������ ī������������ ������ �ȵǵ��� disabled
              opener.document.getElementById('EvmaGb_'        + row_idx ).setAttribute('disabled',true);
      
              
              //�ݾ׼���
              opener.document.getElementById("ItxpUseAmt_"    + row_idx ).value       = dataRow.APV_SUM;            // ���ݾ�
              opener.document.getElementById("ItxpSplyAmt_"   + row_idx ).value       = dataRow.ORGNL_SPLY_AMT;      // �������ް���(�����, ��ȭȯ����, ����������)
              opener.document.getElementById("ItxpVatAmt_"    + row_idx ).value       = dataRow.ORGNL_ADTN_TAX;    // �����ΰ���ġ����
              
              //--------------------------------
              //  �ŷ�ó���� �ؽ�Ʈ����
              //--------------------------------
          
              opener.document.getElementById("d_SplrReprNm_"  + row_idx).innerHTML    =   opener.document.getElementById("C_MestReprNm_"+row_idx).value;
              opener.document.getElementById("d_SplrBzRegNo_" + row_idx).innerHTML    =   frmRegNoValue(opener.document.getElementById("C_MestBzNo_"+row_idx).value);
              opener.document.getElementById("d_SplrTpbzNm_"  + row_idx).innerHTML    =   opener.document.getElementById("C_CmBrTp_"+row_idx).value;
              opener.document.getElementById("d_SplrAdr_"     + row_idx).innerHTML    =   opener.document.getElementById("C_MestAdr1_"+row_idx).value;
              
              // ī���������� �ǽð���ü���(2)�̸� �Աݰ��¹�ȣ�����Ѵ�.
              if("2" == "<%=InstCrdSetlMeth%>"){
                  //�׸��� ���� üũ
                  var selectorColumn_crd = gridRoot1.getObjectById("selector");
                  
                  //���õ� row�� �� üũ
                  var rowIndex_crd = selectorColumn_crd.getSelectedIndex();
                  var dataRow_crd = gridRoot1.getItemAt(rowIndex_crd);
                  
                  opener.document.getElementById("RcvBnkCd_"+rowIndex_crd).value = dataRow_crd.SETL_DSTN_BNK_CD;   //������������
                  opener.document.getElementById("RcvAcctNo_"+rowIndex_crd).value = dataRow_crd.SETL_DSTN_ACCT_NO; //������������  
                             
              }
              
    
              opener.document.getElementById("txt_trnsAmt_"   + row_idx ).innerHTML   =   toMoney((Number(dataRow.ORGNL_SPLY_AMT)+Number(dataRow.ORGNL_ADTN_TAX))+"");//��ü�ݾ�  (�������ް���+�����ΰ���ġ����)
              opener.document.getElementById("txt_splyAmt_"   + row_idx ).innerHTML   =   toMoney(dataRow.ORGNL_SPLY_AMT); //���ޱݾ�(�������ް���)
              opener.document.getElementById("txt_vatAmt_"    + row_idx ).innerHTML   =   toMoney(dataRow.ORGNL_ADTN_TAX); //�ΰ���(�����ΰ���ġ����)
              
              //���� ���̺� ROW ����
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
              alert("���� : " + e.message);
          }
          
          
          opener.uf_proce_display_off();
          window.close();
      },1000);//setTimeout
      
  }catch(e){
      alert("���� : " + e.message);
  }
  
}




/*
 * �ΰ��� ������� ���ý�
 * ���� : ������ �����ݾ׿� �Է�
 * ���� : ���ݾ��� ���ް������� �Է�
 */
function notChgVat(rowIndex, dataRow){
    
    if( "0" == dataRow.ORGNL_SPLY_AMT && "0" == dataRow.ORGNL_ADTN_TAX ){
        if("A" == dataRow.OVRS_USE_YN){             // �������
            gridRoot2.setItemFieldAt(dataRow.SPLY_PRC_AMT, rowIndex, "ORGNL_SPLY_AMT");    //�������ް���
            gridRoot2.setItemFieldAt(dataRow.VAT_AMT, rowIndex, "ORGNL_ADTN_TAX");         //�����ΰ���ġ����
            
        }else if("B" == dataRow.OVRS_USE_YN){       // ���ܻ��
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

//���̾ƿ� ����
    var layoutStr1 = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"        headerText=\"����\"               width=\"50\" textAlign=\"center\" sortable=\"false\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"CRD_DV\"             dataField=\"CRD_DV\"          headerText=\"����\"               width=\"150\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"FNC_INST_CD\"        dataField=\"FNC_INST_CD\"     headerText=\"ī����ڵ�\"         width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_NM\"           dataField=\"CRDCO_NM\"        headerText=\"ī����\"           width=\"150\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_NO\"             dataField=\"CRD_NO\"          headerText=\"ī���ȣ\"           width=\"200\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_USE_YN\"         dataField=\"CRD_USE_YN\"      headerText=\"�����ڵ�\"           width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_USE_YN_NM\"      dataField=\"CRD_USE_YN_NM\"   headerText=\"ī�����ó������\" width=\"170\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
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


//���̾ƿ� ����
var layoutStr_radio = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"2\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\"       dataField=\"selector\"            headerText=\"����\"                   width=\"50\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
            <DataGridColumn id=\"NO\"                     dataField=\"NO\"                  headerText=\"NO\"                     width=\"30\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_APV_DV\"             dataField=\"BUY_APV_DV\"          headerText=\"���Խ��α���\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_APV_CAN_YN\"         dataField=\"BUY_APV_CAN_YN\"      headerText=\"��ҿ���\"               width=\"70\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_NO\"                 dataField=\"APV_NO\"              headerText=\"���ι�ȣ\"               width=\"80\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_CLCT_NO\"            dataField=\"BUY_CLCT_NO\"         headerText=\"�����߽ɹ�ȣ\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_NO\"                 dataField=\"CRD_NO\"              headerText=\"ī���ȣ\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_DT\"                 dataField=\"APV_DT\"              headerText=\"�������\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_DT\"                 dataField=\"BUY_DT\"              headerText=\"��������\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MEST_NM\"                dataField=\"MEST_NM\"             headerText=\"��������\"               width=\"140\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OVRS_USE_YN_NM\"         dataField=\"OVRS_USE_YN_NM\"      headerText=\"��뱸��\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_SUM\"                dataField=\"APV_SUM\"             headerText=\"���ݾ�\"               width=\"90\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"SPLY_PRC_AMT\"           dataField=\"SPLY_PRC_AMT\"        headerText=\"�����ް���\"             width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"VAT_AMT\"                dataField=\"VAT_AMT\"             headerText=\"���ΰ���ġ����\"         width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"SRV_FEE\"                dataField=\"SRV_FEE\"             headerText=\"�������\"               width=\"90\" visible=\"false\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"ORGNL_SPLY_AMT\"         dataField=\"ORGNL_SPLY_AMT\"      headerText=\"�������ް���\"           width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"ORGNL_ADTN_TAX\"         dataField=\"ORGNL_ADTN_TAX\"      headerText=\"�����ΰ���ġ����\"       width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"TAX_UDT\"                dataField=\"TAX_UDT\"             headerText=\"�ΰ�������\"             width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_YN\"        dataField=\"BZ_EXP_EXCTN_YN\"     headerText=\"����Ͽ����ڵ�\"       width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_YN_NM\"     dataField=\"BZ_EXP_EXCTN_YN_NM\"  headerText=\"����Ͽ���\"           width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_CAN_YN\"      dataField=\"EXCTN_EXEC_CAN_YN\"   headerText=\"��������ҿ����ڵ�\"   width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_CAN_YN_NM\"   dataField=\"EXCTN_EXEC_CAN_YN_NM\" headerText=\"��������ҿ���\"      width=\"120\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_ID\"                dataField=\"SBJT_ID\"             headerText=\"������ȣ\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_NM\"                dataField=\"SBJT_NM\"             headerText=\"������\"                 width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV\"                dataField=\"SBJT_DV\"             headerText=\"��������\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_BY_TPBZ_USE_YN\"   dataField=\"CRDCO_BY_TPBZ_USE_YN\" headerText=\"ī��纰������뿩��\"  width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_BY_TPBZ_LIMT_USE_YN\" dataField=\"CRDCO_BY_TPBZ_LIMT_USE_YN\" headerText=\"ī��纰�������ѻ�뿩��\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OVRS_USE_YN\"            dataField=\"OVRS_USE_YN\"         headerText=\"��뱸���ڵ�\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV_NM1\"            dataField=\"SBJT_DV_NM1\"         headerText=\"������ϱ���\"           width=\"110\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV_NM2\"            dataField=\"SBJT_DV_NM2\"         headerText=\"������Ͽ���\"           width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITXP_REG_NCNT\"          dataField=\"ITXP_REG_NCNT\"       headerText=\"����ϰǼ�\"           width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"G_PARAM\"          dataField=\"G_PARAM\"       headerText=\"G_PARAM\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
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

//���̾ƿ� ����
var layoutStr_check = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\" />\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <SpanCellAttribute id=\"sumCellAttr\" colNo=\"0\" styleName=\"subTotalStyle\" backgroundColor=\"0xD3D9DB\" />\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"2\" draggableColumns=\"true\" selectionMode=\"singleCell\" headerHeight=\"24\" doubleClickEnabled=\"true\" displayItemsExpanded=\"false\">\
        <columns>\
            <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" textAlign=\"center\" width=\"40\" />\
            <DataGridSelectorColumn id=\"selector\"       dataField=\"selector\"            headerText=\"����\"                   width=\"55\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"true\" allowAllSelection=\"true\" />\
            <DataGridColumn id=\"NO\"                     dataField=\"NO\"                  headerText=\"NO\"                     width=\"30\"  visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_APV_DV\"             dataField=\"BUY_APV_DV\"          headerText=\"���Խ��α���\"           width=\"0\" visible=\"false\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_APV_CAN_YN\"         dataField=\"BUY_APV_CAN_YN\"      headerText=\"��ҿ���\"               width=\"70\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_NO\"                 dataField=\"APV_NO\"              headerText=\"���ι�ȣ\"               width=\"80\"  visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_CLCT_NO\"            dataField=\"BUY_CLCT_NO\"         headerText=\"�����߽ɹ�ȣ\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRD_NO\"                 dataField=\"CRD_NO\"              headerText=\"ī���ȣ\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_DT\"                 dataField=\"APV_DT\"              headerText=\"�������\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUY_DT\"                 dataField=\"BUY_DT\"              headerText=\"��������\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"MEST_NM\"                dataField=\"MEST_NM\"             headerText=\"��������\"               width=\"140\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OVRS_USE_YN_NM\"         dataField=\"OVRS_USE_YN_NM\"      headerText=\"��뱸��\"               width=\"80\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"APV_SUM\"                dataField=\"APV_SUM\"             headerText=\"���ݾ�\"               width=\"90\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"SPLY_PRC_AMT\"           dataField=\"SPLY_PRC_AMT\"        headerText=\"�����ް���\"             width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"VAT_AMT\"                dataField=\"VAT_AMT\"             headerText=\"���ΰ���ġ����\"         width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"SRV_FEE\"                dataField=\"SRV_FEE\"             headerText=\"�������\"               width=\"90\" visible=\"false\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"ORGNL_SPLY_AMT\"         dataField=\"ORGNL_SPLY_AMT\"      headerText=\"�������ް���\"           width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"ORGNL_ADTN_TAX\"         dataField=\"ORGNL_ADTN_TAX\"      headerText=\"�����ΰ���ġ����\"       width=\"130\" visible=\"true\" sortable=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"TAX_UDT\"                dataField=\"TAX_UDT\"             headerText=\"�ΰ�������\"             width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnButtonStyle\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_YN\"        dataField=\"BZ_EXP_EXCTN_YN\"     headerText=\"����Ͽ����ڵ�\"       width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BZ_EXP_EXCTN_YN_NM\"     dataField=\"BZ_EXP_EXCTN_YN_NM\"  headerText=\"����Ͽ���\"           width=\"120\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_CAN_YN\"      dataField=\"EXCTN_EXEC_CAN_YN\"   headerText=\"��������ҿ����ڵ�\"   width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_CAN_YN_NM\"   dataField=\"EXCTN_EXEC_CAN_YN_NM\" headerText=\"��������ҿ���\"      width=\"120\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_ID\"                dataField=\"SBJT_ID\"             headerText=\"������ȣ\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_NM\"                dataField=\"SBJT_NM\"             headerText=\"������\"                 width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV\"                dataField=\"SBJT_DV\"             headerText=\"��������\"               width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_BY_TPBZ_USE_YN\"   dataField=\"CRDCO_BY_TPBZ_USE_YN\" headerText=\"ī��纰������뿩��\"  width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"CRDCO_BY_TPBZ_LIMT_USE_YN\" dataField=\"CRDCO_BY_TPBZ_LIMT_USE_YN\" headerText=\"ī��纰�������ѻ�뿩��\"   width=\"110\" visible=\"true\" sortable=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"OVRS_USE_YN\"            dataField=\"OVRS_USE_YN\"         headerText=\"��뱸���ڵ�\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV_NM1\"            dataField=\"SBJT_DV_NM1\"         headerText=\"������ϱ���\"           width=\"110\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_DV_NM2\"            dataField=\"SBJT_DV_NM2\"         headerText=\"������Ͽ���\"           width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"ITXP_REG_NCNT\"          dataField=\"ITXP_REG_NCNT\"       headerText=\"����ϰǼ�\"           width=\"110\" visible=\"true\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"G_PARAM\"          dataField=\"G_PARAM\"       headerText=\"G_PARAM\"           width=\"0\" visible=\"false\" sortable=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
        <dataProvider>\
            <SpanArrayCollection source=\"{$gridData}\"/>\
        </dataProvider>\
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


var flashVars1 = "dataType=json&bridgeName=gridBridge1";
var flashVars2 = "dataType=json&bridgeName=gridBridge2";


//rMateGrid ���� ��ü
var gridApp1; // �÷��� �⺻ ��ü
var gridApp2; // �÷��� �⺻ ��ü
var gridData1; // �׸��� ������ ���
var gridData2; // �׸��� ������ ���
var gridRoot1; // ����Ÿ�� �׸��带 �����ϴ� ��ü
var gridRoot2; // ����Ÿ�� �׸��带 �����ϴ� ��ü
var dataGrid1; // �׸��� ���� ���
var dataGrid2; // �׸��� ���� ���


    //�׸��� ���̾ƿ� ȣ�� 
    var rMateGridInitLayout1 = function() {
        gridApp1 = FABridge.gridBridge1.root();
        gridRoot1 = gridApp1.getGridRoot();
        gridApp1.setLayout(layoutStr1);   //�׸��� ���̾ƿ� ����

        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
            selectorColumn = gridRoot1.getObjectById("selector");
            selectorColumn.setSelectedIndices([event.getRowIndex()]);
        };
        

        var layoutCompleteHandler = function(event) {
            dataGrid1 = gridApp1.getDataGrid();
            
            //�̺�Ʈ ���
            dataGrid1.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot1.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot1.addEventListener("layoutComplete", uf_CrdSearch);

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge1", rMateGridInitLayout1);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData1() {
        gridApp1 = FABridge.gridBridge1.root();
        gridApp1.setData(JSON.stringify(gridData1)); //������ ���
    };
    
    
    
    
    
    
    //�׸��� ���̾ƿ� ȣ�� 
    var rMateGridInitLayout2 = function() {
        gridApp2 = FABridge.gridBridge2.root();
        gridRoot2 = gridApp2.getGridRoot();

        //�׸��� ���̾ƿ� ����
        <% if( "1".equals(RegTyp) ){%>
        gridApp2.setLayout(layoutStr_check);//���켱
        <% }else{ %>
        gridApp2.setLayout(layoutStr_radio); //�����켱
        <% } %>


        //Ŭ�� �̺�Ʈ �߰�
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
            
            if (dataField == "TAX_UDT") { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
                rMateGridObjColumnButtonEvent(rowIndex, columnIndex, dataRow, dataField);
            };
            
            
        };

        var layoutCompleteHandler = function(event) {
            dataGrid2 = gridApp2.getDataGrid();
            
            //�̺�Ʈ ���
            dataGrid2.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot2.addEventListener("layoutComplete", layoutCompleteHandler);
        
        //data ��� �� ������ �̺�Ʈ ���
        gridRoot2.addEventListener("dataComplete", setTotCnt);
        
        //���󺯰�
        gridRoot2.addEventListener("dataComplete", uf_rowColor_rmate);   //���ǿ����� ����ó��
        gridRoot2.addEventListener("dataComplete", columnBackGroundStyle);   //�ΰ��� ���󺯰�

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge2", rMateGridInitLayout2);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData2() {
        gridApp2 = FABridge.gridBridge2.root();
        //�׸��� ���̾ƿ� ����
        <% if( "1".equals(RegTyp) ){%>
        gridApp2.setLayout(layoutStr_check);//���켱
        <% }else{ %>
        gridApp2.setLayout(layoutStr_radio); //�����켱
        <% } %>
        
        gridApp2.setData(JSON.stringify(gridData2)); //������ ���
    };
    
    
    //��Ż �� ���ϱ�
    function setTotCnt() {
        var cnt = getGridRowCount_rMate(gridRoot2);
        $("#InqPrsTotlNcnt").text(cnt);    //�׸��� �ڷ��
        
    }
  

    
    //�ΰ��� ���󺯰�
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
        // ��ϰ��ɿ���üũ : ���ó����,���Ȯ����,��ϿϷ�� ������ ����
        for(var i=0;i<gridCnt;i++){
            dataRow = gridRoot2.getItemAt(i);
            if(dataRow.SBJT_DV == "2"){                                 //Ÿ�������(����)
                imsiCollection.addRowAttributeDetailAt(i, null, 0xFF3E03);  
            }else if(dataRow.SBJT_DV == "1"){                           //���ϰ������(���)
                imsiCollection.addRowAttributeDetailAt(i, null, 0xFFFF66);
            }else{
            }
        }
        
    }
    
    
    
    /*
     * �ΰ������� �˾�â
     */
    function rMateGridObjColumnButtonEvent(rowIndex, columnIndex, dataRow, dataField) {
        editRowIndex = rowIndex;    //����idx
        editDataRow = dataRow;      //����data
        editDataField = dataField;  

        if(editDataRow.SBJT_DV == "2" || editDataRow.SBJT_DV == "1"){
            alert("���ϵ� ������ �����Ͻ� �� �����ϴ�.");
            return;
        }else{
            uf_popup_crdAmt_updt(frm, editDataRow.APV_SUM,
                    Number(editDataRow.SPLY_PRC_AMT)-Number(editDataRow.SRV_FEE),
                    editDataRow.VAT_AMT,
                    editDataRow.SRV_FEE,"grid2", editRowIndex);
            
            
            
        }
     }
    
    
    // ������ ���� ����
    function changeItem(rowIdx, editField, selectedValue) {
        if(typeof rowIdx!="undefined") editRowIndex = rowIdx;
        if(typeof editField!="undefined") editDataField = editField;
        
        gridRoot2.setItemFieldAt(selectedValue, editRowIndex, editDataField);
    }
    
    
    
 // ���� �۾� ��� �������� (�׸��忡�� �۾��� �Է�,����,���� ������ �����ɴϴ�)
 // ����Ÿ�� �迭 ���·�
 //  idx: ���ȣ
 //  job: ���� �۾� (I:�Է�, U:����, D:����)
 //  data: ���� �ڷ�
 // �� ������ ������ ������ ���� ������ ���ĵǾ� �ֽ��ϴ�.
 function getChangedData() {
     var changedData = gridRoot2.getChangedData();
     if (changedData.length == 0)
         alert("����� �ڷᰡ �����ϴ�");
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
        <input type="hidden" name="PrsPgno" value="0" /> <!--������������ȣ-->
        <input type="hidden" name="TrSupYn" value="Y" /> <!--�ŷ���ӿ���-->
        <input type="hidden" name="SbjtId"                  value="<%=SbjtId %>" /> <!--�����Ϸù�ȣ-->
        <input type="hidden" name="CpcgInstBzRegNo"         value="<%=CpcgInstBzRegNo %>" /> <!--����������ڹ�ȣ-->
        <input type="hidden" name="AgrmtInstCrpnRegNo"      value="<%=AgrmtInstCrpnRegNo %>" /> <!--����������ڹ�ȣ-->
        <input type="hidden" name="InstCrdSetlMeth"         value="<%=InstCrdSetlMeth %>" /> <!-- ������� -->

    <div class="t20"></div>
    <h3>�ſ�ī��</h3>
    <div class="t10"></div>
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div>
                <script>
                rMateGridCreate("grid_crd", "/rMateGrid/Component/rMateGridWeb", flashVars1, "100%", "120", "#FFFFFF");
                </script>
            </div>
            <!-- �׸��� End -->
<!-- *************************  rMateGrid ************************* -->    
    <div class="t10"></div>
    <div class="guide_bu">���ϱ��� ����� �Ϸ�ȰǸ� �������·� ��ü�˴ϴ�.</div>
    <div class="t10"></div>
    <h3>��� �����Ȳ �ϰ���ȸ</h3>
    <!-- �˻��� start -->
    <div class="pop_search">
      <p class="pop_search_boxt"></p>
      <div class="pop_search_boxc">
        <fieldset>
        <legend>��Ȳ��ȸ�˻�</legend>
        <table width="680" summary="��Ȳ��ȸ" class="tbl_search">
          <caption>
          ��Ȳ��ȸ�˻�
          </caption>
          <colgroup>
          <col width="12%" />
          <col width="88%" />
          </colgroup>
          <tbody>
            <tr>
              <th scope="row"><label for="usedaystart">�������</label></th>
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
    <!-- //�˻��� end// -->
    <!-- ��ȸ ��ư start -->
    <div class="pop_search_bt1"><a href="#dummy" onclick="uf_search(1);" class="bt_search" title="��ȸ"></a></div>
    <!-- //��ȸ ��ư end// -->
    <!-- �ѰǼ�/�μ� ���� ��ư start -->
    <div class="pop_total_box b05">
        <div class="fl">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt">0</span>��]</div>
        <div class="fr"><img src="/images/common/white_bu.gif" alt="���"/> <b>���:</b> �̵��, <img src="/images/common/yellow_bu.gif" alt="���"/> <b>�����:</b> ���ϰ������, <img src="/images/common/red_bu.gif" alt="���"/> <b>������:</b> Ÿ�������</div>
    </div>
    <!-- //�ѰǼ�/�μ� ���� ��ư end// -->
<!-- *************************  rMateGrid ************************* -->      
<div class="t10"></div>
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                rMateGridCreate("grid2", "/rMateGrid/Component/rMateGridWeb", flashVars2, "100%", "275", "#FFFFFF");
                </script>
            </div>
            <!-- �׸��� End -->
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
     <a href="#dummy" onclick="uf_insert();" class="bt_action2-01" title="����"><span class="bt_sp">����</span></a>
<%
    }
%>    
    </div>
    <!-- //action bt end// -->
    <div class="t10"></div>
    <!-- ���ǻ��� start -->
    <div class="pop_guide_box">
      <div class="pop_guide_boxtd">
        <ul>
          <li>���ޱݾ׿��� �����, ��ȭȯ����, �����ᰡ ���ԵǾ� �ֽ��ϴ�.</li>
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
$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    
    //rMateGrid�� �׸��� ���� �� gridInit() ȣ����.

});
</script>



<script type="text/javascript">
var cnt = 0;
function setGridData1(sbjtParam){
    try{
        
        var gridValue = [];
        cnt = 0;
        
        if("1" == sbjtParam){
            gridValue[cnt++] = {"CRD_DV":"����������","FNC_INST_CD":"IB","CRDCO_NM":"Aī��","CRD_NO":"1111-2222-3333-4444","CRD_USE_YN":"3","CRD_USE_YN_NM":"��ϿϷ�"};
            gridValue[cnt++] = {"CRD_DV":"����������","FNC_INST_CD":"IB","CRDCO_NM":"Aī��","CRD_NO":"1111-2222-3333-5555","CRD_USE_YN":"3","CRD_USE_YN_NM":"��ϿϷ�"};

        }else if("2" == sbjtParam){
            gridValue[cnt++] = {"CRD_DV":"����������","FNC_INST_CD":"IB","CRDCO_NM":"Aī��","CRD_NO":"1111-2222-3333-4444","CRD_USE_YN":"3","CRD_USE_YN_NM":"��ϿϷ�"};
            gridValue[cnt++] = {"CRD_DV":"����������","FNC_INST_CD":"IB","CRDCO_NM":"Aī��","CRD_NO":"1111-2222-3333-5555","CRD_USE_YN":"3","CRD_USE_YN_NM":"��ϿϷ�"};
            
        }else if("3" == sbjtParam){
            gridValue[cnt++] = {"CRD_DV":"����������","FNC_INST_CD":"IB","CRDCO_NM":"Aī��","CRD_NO":"1111-2222-3333-4444","CRD_USE_YN":"3","CRD_USE_YN_NM":"��ϿϷ�"};
            gridValue[cnt++] = {"CRD_DV":"����������","FNC_INST_CD":"IB","CRDCO_NM":"Aī��","CRD_NO":"1111-2222-3333-5555","CRD_USE_YN":"3","CRD_USE_YN_NM":"��ϿϷ�"};
            
        }else if("4" == sbjtParam){
            gridValue[cnt++] = {"CRD_DV":"����������","FNC_INST_CD":"IB","CRDCO_NM":"Aī��","CRD_NO":"1111-2222-3333-4444","CRD_USE_YN":"3","CRD_USE_YN_NM":"��ϿϷ�"};
            gridValue[cnt++] = {"CRD_DV":"����������","FNC_INST_CD":"IB","CRDCO_NM":"Aī��","CRD_NO":"1111-2222-3333-5555","CRD_USE_YN":"3","CRD_USE_YN_NM":"��ϿϷ�"};

        }
        
    }finally{
        
        gridData1 = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData1();  //rMateGrid ����
        
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
        
        
        //1. �ű԰���
        if("TEST0001" == sbjtId){
            
            if("1111222233334444" == crdNo){
                
            }else if("1111222233335555" == crdNo){
                
            }
            
        //2
        }else if("TEST0002" == sbjtId){
            
            if("1111222233334444" == crdNo){
                gridValue[cnt2++] = {"NO":"1","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111111","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2014-02-04","BUY_DT":"2014-02-06","MEST_NM":"��A ������","OVRS_USE_YN_NM":"����","APV_SUM":"220", "SPLY_PRC_AMT":"220", "VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"200", "ORGNL_ADTN_TAX":"20", "TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���",  "EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-04&ApvDrtm=000000&ApvNo=11111111&PrdDv=A&OvrsUseYn=A&BuyDt=2014-02-06&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=220&VatAmt=0&SrvFee=0&ApvSum=220&MestNm=��A ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=����ǥ&MestBzNo=2222222222&MestNo=739251231&MestTelNo=021112222&MestAdr1=����Ư���� �߱� �����1��&MestAdr2=31&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"2","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111112","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2014-02-12","BUY_DT":"2014-02-17","MEST_NM":"��B ������","OVRS_USE_YN_NM":"����","APV_SUM":"220", "SPLY_PRC_AMT":"220", "VAT_AMT":"20", "SRV_FEE":"0","ORGNL_SPLY_AMT":"0",   "ORGNL_ADTN_TAX":"0",  "TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"N","BZ_EXP_EXCTN_YN_NM":"�̵��","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"0","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-12&ApvDrtm=000000&ApvNo=11111112&PrdDv=A&OvrsUseYn=A&BuyDt=2014-02-17&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=200&VatAmt=20&SrvFee=0&ApvSum=220&MestNm=��B ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=����ǥ&MestBzNo=3333333333&MestNo=739251231&MestTelNo=0421112222&MestAdr1=���������� ���� �л굿&MestAdr2=1420&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"3","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111113","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2014-02-14","BUY_DT":"2014-02-18","MEST_NM":"��C ������","OVRS_USE_YN_NM":"����","APV_SUM":"1100","SPLY_PRC_AMT":"1100","VAT_AMT":"100","SRV_FEE":"0","ORGNL_SPLY_AMT":"1000","ORGNL_ADTN_TAX":"100","TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���",  "EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-14&ApvDrtm=000000&ApvNo=11111113&PrdDv=A&OvrsUseYn=A&BuyDt=2014-02-18&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=1000&VatAmt=100&SrvFee=0&ApvSum=1100&MestNm=��C ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=�ٴ�ǥ&MestBzNo=4444444444&MestNo=739251231&MestTelNo=0531112222&MestAdr1=�뱸������ �߱� ���ε�1��&MestAdr2=1&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};

            }else if("1111222233335555" == crdNo){
                
            }
            
        //3
        }else if("TEST0003" == sbjtId){
            
            if("1111222233334444" == crdNo){
                gridValue[cnt2++] = {"NO":"1","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111111","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-02-26","BUY_DT":"2013-03-04","MEST_NM":"��A ������","OVRS_USE_YN_NM":"����","APV_SUM":"220", "SPLY_PRC_AMT":"200", "VAT_AMT":"20", "SRV_FEE":"0","ORGNL_SPLY_AMT":"200", "ORGNL_ADTN_TAX":"20", "TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-04&ApvDrtm=000000&ApvNo=11111111&PrdDv=A&OvrsUseYn=A&BuyDt=2013-02-26&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=200&VatAmt=20&SrvFee=0&ApvSum=220&MestNm=��A ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=����ǥ&MestBzNo=2222222222&MestNo=739251231&MestTelNo=021112222&MestAdr1=����Ư���� �߱� �����1��&MestAdr2=31&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"2","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111112","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-03-19","BUY_DT":"2013-03-22","MEST_NM":"��B ������","OVRS_USE_YN_NM":"����","APV_SUM":"1100","SPLY_PRC_AMT":"1100","VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"1000","ORGNL_ADTN_TAX":"100","TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-12&ApvDrtm=000000&ApvNo=11111112&PrdDv=A&OvrsUseYn=A&BuyDt=2013-03-19&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=1100&VatAmt=0&SrvFee=0&ApvSum=220&MestNm=��B ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=����ǥ&MestBzNo=3333333333&MestNo=739251231&MestTelNo=0421112222&MestAdr1=���������� ���� �л굿&MestAdr2=1420&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"3","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111115","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-10-18","BUY_DT":"2013-10-23","MEST_NM":"��E ������","OVRS_USE_YN_NM":"����","APV_SUM":"500", "SPLY_PRC_AMT":"500", "VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"455", "ORGNL_ADTN_TAX":"45", "TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-14&ApvDrtm=000000&ApvNo=11111115&PrdDv=A&OvrsUseYn=A&BuyDt=2013-10-18&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=500&VatAmt=0&SrvFee=0&ApvSum=1100&MestNm=��E ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=����ǥ&MestBzNo=5555555555&MestNo=739251231&MestTelNo=0611112222&MestAdr1=���ֱ����� ���� ġ��&MestAdr2=1200&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};

            }else if("1111222233335555" == crdNo){
                gridValue[cnt2++] = {"NO":"1","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111113","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-5555","APV_DT":"2013-04-16","BUY_DT":"2013-04-19","MEST_NM":"��C ������","OVRS_USE_YN_NM":"����","APV_SUM":"220", "SPLY_PRC_AMT":"220", "VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"200", "ORGNL_ADTN_TAX":"20", "TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233335555&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-04&ApvDrtm=000000&ApvNo=11111113&PrdDv=A&OvrsUseYn=A&BuyDt=2013-04-16&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=220&VatAmt=0&SrvFee=0&ApvSum=220&MestNm=��C ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=�ٴ�ǥ&MestBzNo=4444444444&MestNo=739251231&MestTelNo=0531112222&MestAdr1=�뱸������ �߱� ���ε�1��&MestAdr2=1&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"2","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111114","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-5555","APV_DT":"2013-12-02","BUY_DT":"2013-12-04","MEST_NM":"��D ������","OVRS_USE_YN_NM":"����","APV_SUM":"9060","SPLY_PRC_AMT":"8237","VAT_AMT":"823","SRV_FEE":"0","ORGNL_SPLY_AMT":"8237","ORGNL_ADTN_TAX":"823","TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233335555&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-12&ApvDrtm=000000&ApvNo=11111114&PrdDv=A&OvrsUseYn=A&BuyDt=2013-12-02&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=8237&VatAmt=823&SrvFee=0&ApvSum=220&MestNm=��D ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=���ǥ&MestBzNo=6666666666&MestNo=739251231&MestTelNo=05111112222&MestAdr1=�λ걤���� ������ ����5��&MestAdr2=1000&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};

            }
            
        //4
        }else if("TEST0004" == sbjtId){
            
            if("1111222233334444" == crdNo){
                gridValue[cnt2++] = {"NO":"1","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111111","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-02-26","BUY_DT":"2013-03-04","MEST_NM":"��A ������","OVRS_USE_YN_NM":"����","APV_SUM":"220", "SPLY_PRC_AMT":"200", "VAT_AMT":"20", "SRV_FEE":"0","ORGNL_SPLY_AMT":"0",   "ORGNL_ADTN_TAX":"0",  "TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-04&ApvDrtm=000000&ApvNo=11111111&PrdDv=A&OvrsUseYn=A&BuyDt=2013-02-26&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=200&VatAmt=20&SrvFee=0&ApvSum=220&MestNm=��A ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=����ǥ&MestBzNo=2222222222&MestNo=739251231&MestTelNo=021112222&MestAdr1=����Ư���� �߱� �����1��&MestAdr2=31&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"2","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111112","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-03-19","BUY_DT":"2013-03-22","MEST_NM":"��B ������","OVRS_USE_YN_NM":"����","APV_SUM":"1100","SPLY_PRC_AMT":"1100","VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"1000","ORGNL_ADTN_TAX":"100","TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-12&ApvDrtm=000000&ApvNo=11111112&PrdDv=A&OvrsUseYn=A&BuyDt=2013-03-19&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=1100&VatAmt=0&SrvFee=0&ApvSum=220&MestNm=��B ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=����ǥ&MestBzNo=3333333333&MestNo=739251231&MestTelNo=042112222&MestAdr1=���������� ���� �л굿&MestAdr2=1420&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"3","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111115","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-4444","APV_DT":"2013-10-18","BUY_DT":"2013-10-23","MEST_NM":"��E ������","OVRS_USE_YN_NM":"����","APV_SUM":"500", "SPLY_PRC_AMT":"500", "VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"455", "ORGNL_ADTN_TAX":"45", "TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233334444&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-14&ApvDrtm=000000&ApvNo=11111115&PrdDv=A&OvrsUseYn=A&BuyDt=2013-10-18&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=500&VatAmt=0&SrvFee=0&ApvSum=1100&MestNm=��E ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=����ǥ&MestBzNo=5555555555&MestNo=739251231&MestTelNo=062112222&MestAdr1=���ֱ����� ���� ġ��&MestAdr2=1200&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};

            }else if("1111222233335555" == crdNo){
                gridValue[cnt2++] = {"NO":"1","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111113","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-5555","APV_DT":"2013-04-16","BUY_DT":"2013-04-19","MEST_NM":"��C ������","OVRS_USE_YN_NM":"����","APV_SUM":"220", "SPLY_PRC_AMT":"220", "VAT_AMT":"0",  "SRV_FEE":"0","ORGNL_SPLY_AMT":"200", "ORGNL_ADTN_TAX":"20", "TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233335555&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-04&ApvDrtm=000000&ApvNo=11111113&PrdDv=A&OvrsUseYn=A&BuyDt=2013-04-16&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=220&VatAmt=0&SrvFee=0&ApvSum=220&MestNm=��C ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=�ٴ�ǥ&MestBzNo=4444444444&MestNo=739251231&MestTelNo=0531112222&MestAdr1=�뱸������ �߱� ���ε�1��&MestAdr2=1&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};
                gridValue[cnt2++] = {"NO":"2","BUY_APV_DV":"����","BUY_APV_CAN_YN":"����","APV_NO":"11111114","BUY_CLCT_NO":"L000177724","CRD_NO":"1111-2222-3333-5555","APV_DT":"2013-12-02","BUY_DT":"2013-12-04","MEST_NM":"��D ������","OVRS_USE_YN_NM":"����","APV_SUM":"9060","SPLY_PRC_AMT":"8237","VAT_AMT":"823","SRV_FEE":"0","ORGNL_SPLY_AMT":"8237","ORGNL_ADTN_TAX":"823","TAX_UDT":"�ΰ�������","BZ_EXP_EXCTN_YN":"Y","BZ_EXP_EXCTN_YN_NM":"���","EXCTN_EXEC_CAN_YN":"N","EXCTN_EXEC_CAN_YN_NM":"�̿�������","SBJT_ID":"","SBJT_NM":"","SBJT_DV":"1","CRDCO_BY_TPBZ_USE_YN":"","CRDCO_BY_TPBZ_LIMT_USE_YN":"N","OVRS_USE_YN":"A","SBJT_DV_NM1":"�̵��","SBJT_DV_NM2":"�̵��","ITXP_REG_NCNT":"","G_PARAM":"CrdNo=1111222233335555&FncInstCd=IB&CrdKind=&CrdTyp=&BuyApvDv=����&BuyApvCanYn=����&ApvDt=2014-02-12&ApvDrtm=000000&ApvNo=11111114&PrdDv=A&OvrsUseYn=A&BuyDt=2013-12-02&BuyClctNo=L000000001&SlipAcqr=&SplyPrcAmt=8237&VatAmt=823&SrvFee=0&ApvSum=220&MestNm=��D ������&MestTaxtTypInfo=&MestTaxtTypInqDt=&MestReprNm=���ǥ&MestBzNo=6666666666&MestNo=739251231&MestTelNo=0511112222&MestAdr1=�λ걤���� ������ ����5��&MestAdr2=1000&CrdDv=V&CmBrTp=����&TpbzCd=3305&SetlScheDt=20110527"};

            }
        }
        
        
    }finally{
        gridData2 = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData2();  //rMateGrid ����
        
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
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">��ȸ������ ī����γ����� �����ϴ�. Ȯ���� �ٽ� �̿����ֽñ� �ٶ��ϴ�.[MBT00163]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}
</script>

</body>
</html> 
