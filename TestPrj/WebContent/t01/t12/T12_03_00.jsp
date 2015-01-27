<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T12_03_00.jsp
 *   Description        : �������ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29                   ������             
 *
 *  @author ������
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

<title>�������ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
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


<script type="text/javascript">
var searchGubun;
/******************************************************************
 * uf_search            ��������������ȸ
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
    get2post(frm, "SHR_SORC_SN="    +  frm.SHR_SORC_SN.value);  // 2013.10.29 �߰� ������
    
    
    
    // ��뿹���Ǽ� �ʱ�ȭ
    document.all["InqPrsTotlNcnt2"].innerHTML = "0";
    
    uf_proce_display_on();  //�ε���
    
    rMateGridLayoutInit_rMate();    //�׸��� �ʱ�ȭ
    setTimeout(
           function(){
               search(param);
           }
           , 1000);   // 1���� ���� 1000 = 1��
}

/******************************************************************
 * uf_chkSbjtSch            ������ȸ���θ� üũ
 * @param
 * @return
******************************************************************/
function uf_chkSbjtSch(){
    var frm = document.rtr_str_form;
    
    if(frm.S_AGRMT_SEQ_NO == null){
        alert("������ �����ϼ���.");
        return false;
    }
    
    return true;
}

    
 


/******************************************************************
 * uf_Click         �󼼳�����ȸ�˾�âȣ��(�׸��� ����Ͻ�Ŭ���� )
                        u01/u12/U12_03_10 : ī���������ȸ
                        u01/u12/U12_03_20 : ��Ÿ��������ȸ
                        u01/u12/U12_03_30 : ���ڼ��ݰ�꼭����ȸ                         
 * @param
 * @return
******************************************************************/
function uf_Click(rowIndex, columnIndex, dataRow, dataField) {

    editRowIndex = rowIndex; //����idx
    editDataRow = dataRow; //����data
    editDataField = dataField;

    
    
    var trg_fileNM = "";
    var width="800",height="720", scroll='yes';
    
    //if(!chk_sbjt_sch()) return false;                         //������ȸ����Ȯ��
    if(dataRow.TRSC_EVDC_DV == "T"){           //���ڼ��ݰ�꼭
        trg_fileNM = "/t01/t12/T12_03_30.jsp";
    }else if(dataRow.TRSC_EVDC_DV == "C"){ //ī��
        trg_fileNM = "/t01/t12/T12_03_10.jsp";
        scroll='no';
        height="520";
    }else if(dataRow.TRSC_EVDC_DV == "E"){         //��Ÿ����
        trg_fileNM = "/t01/t12/T12_03_20.jsp";
    }
    
    get2post(document.frm, dataRow.GridKey);
    get2post(document.frm, "&SplrCoNm="+dataRow.SPLR_CO_NM);
    uf_frmNewWinNs(document.frm, trg_fileNM, 'TAXVIEW1', width, height, scroll);
    removeTempAttribute(document.frm);  //get2post ����      
    

}


 
 /******************************************************************
  * uf_reExcute          ��������
  * @param
  * @return
 ******************************************************************/
 function uf_reExcute(){
     var frm_key = document.rtr_str_form;
     var frm = document.frm;
     var obj;
     var trg_fileNM = "";
     
     // ������ȸ ���� Ȯ��
     if(!bAutoSbjtSch()) return;
     
     var gridCnt = getGridRowCount_rMate();
     if(gridCnt<=0){
         alert("��ȸ�� ����Ÿ�� �����ϴ�.");
         return;
     }
     
     selectorColumn = gridRoot.getObjectById("selector");
     if(selectorColumn.getSelectedIndex() < 0){ 
         alert("������� ������ �����Ͽ� �ֽʽÿ�.");
         return false;
     }

     
     
     //���õ� row�� �� üũ
     var rowIndex = selectorColumn.getSelectedIndex();
     var dataRow = gridRoot.getItemAt(rowIndex);
     
     //B04108 ������ü ����  , B04109 ���� �����Ϸ�
     if(dataRow.EXCTN_ST != "B04108" && dataRow.EXCTN_ST != "B04109"){            //�������ڵ�
         alert("�����°� �����ΰǸ� ������� �����մϴ�.");
         return false; 
     }else{
         //ī�������̸鼭 �������ΰ�� �����Ұ���(�ǽð���ü����ΰ��� ����డ����)
         //ī���������� �������� ������Դ� �ǽð���ü������� ī�������� �����Ѱ��� �˸������� �ñ���(20110817 �̼���)
         if((dataRow.TRSC_EVDC_DV == "C") && ("1" == dataRow.CRD_SETL_METH_DV)){         // ���������ڵ�, ��ü����ڵ�
             alert("ī�峻���� ������� �� �����ϴ�.\n�ý��۰����ڿ��� ���ǹٶ��ϴ�.(1661-5855)");
             return false;
         }
         
         get2post(frm, dataRow.GridKey);   //GridKey
         trg_fileNM = "/t01/t12/T12_03_01.jsp"; //������û
     }
   
     //2011.11.30
     get2post(frm, "hmpwRoleDv="+frm_key.S_HMPW_ROLE_DV.value);
     get2post(frm, "pmsId="+frm_key.S_PMS_ID.value);
     get2post(frm, "rcmsGrpCd="+frm_key.S_RCMS_GRP_CD.value);
     
     if( isSubmit() ) return;    // ����ó��

     frm.target = "_self";
     frm.action = trg_fileNM;
     fn_submit_ns(frm);
 }
 
 
/********************************************************
* Function      : uf_rsltItxpUpdate()
* Parameter     : 
* Description   : ������ �˾�â ȣ��
********************************************************/
function uf_rsltItxpUpdate(){
    
    var frm_key = document.rtr_str_form;
    var frm = document.frm;
    var obj;
    var pop_width = "800",pop_height = "870",param,url,evdc_cd,crdSetlMthd;

    
    // ������ȸ ���� Ȯ��
    if(!bAutoSbjtSch()) return;
    
    if(!chkGridOneSelectedCount_rMate(gridRoot, "�����/����")) return;  // ������������� �Ѱ� ����Ȯ��

    
    
    
    //���õ� row�� �� üũ
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot.getItemAt(rowIndex);
    
    grpYn       =   dataRow.GRP_YN;
    
        
    // ������ : ����� �ΰ���������û������°� 0:��û 1:���� 2:�Ϸ� �� ��� ��� ���� �Ұ���
    if(dataRow.VAT_PSV_APC_PRGR_ST == '0' || dataRow.VAT_PSV_APC_PRGR_ST == '1' || dataRow.VAT_PSV_APC_PRGR_ST == '2'){   //
        alert("�ΰ��� ���� �������̰ų� �Ϸ��� ��� �������� �Ұ����մϴ�.");
        return;
    }
        
    
    if(dataRow.EXCTN_ST != "B04110"){   //�������ڵ�
        
        alert("�����°� [����Ϸ�]�ΰǸ� �������� �����մϴ�.");
        return;

    }else{
        param   =   dataRow.GridKey;   //GridKey
        evdc_cd =   dataRow.TRSC_EVDC_DV;    //���������ڵ�
        crdSetlMthd =   dataRow.CRD_SETL_METH_DV;    //��ü����ڵ�
    }
    
    //ī��鼭 �������ΰ�� âũ������
    if("C"  ==  evdc_cd && "1"==crdSetlMthd){
        pop_height = "630";
    }
    
    //2011.11.30
    get2post(frm, "hmpwRoleDv="+frm_key.S_HMPW_ROLE_DV.value);
    get2post(frm, "pmsId="+frm_key.S_PMS_ID.value);
    get2post(frm, "rcmsGrpCd="+frm_key.S_RCMS_GRP_CD.value);
    
    get2post(frm, param);
    if( grpYn == 'Y' ){
        url = "/t01/t12/T12_03_50.jsp"; //���켱
    }else{
        url = "/t01/t12/T12_03_40.jsp"; //�����켱
    }
    
    uf_frmNewWinNs(frm, url, 'RCMS_MKE_POPUP', pop_width, pop_height);
    
    removeTempAttribute(frm);
}

 
 
/******************************************************************
 * uf_printTrnCnfm          ��ü���Ȯ���� �˾�â ȣ��
 * @param
 * @return
******************************************************************/
function uf_printTrnCer(){
    var frm      = document.frm;
    var frm_sbjt = document.rtr_str_form; 
    var obj;
    var idx = -1;
    
    if(!uf_chkSbjtSch())                                        return;     // ������ȸ����Ȯ��
    if(!chkGridSelectedCount_rMate(gridRoot, "��üȮ�������"))     return;     // �׸��弱�ó���Ȯ��

    
    //���õ� row�� �� üũ
    var rowIndex = selectorColumn.getSelectedIndex();
    var dataRow = gridRoot.getItemAt(rowIndex);
    
    if(dataRow.EXCTN_ST != "B04110"){
        alert("�����°� [����Ϸ�]�ΰǸ� ��°����մϴ�.");
        return;
    }else{
        get2post(frm, dataRow.GridKey);
        trg_fileNM = "/pop/T01_07_00.jsp";
    }
    
    uf_frmNewWinNs(document.frm, trg_fileNM, 'PRINTVIEW', '800', '620', 'no');
    removeTempAttribute(document.frm);  //get2post ����       
}

var _param;
function uf_autoSbjtSchCallBack(param) {
    
    if(!param){
        alert("������ �߻��Ͽ����ϴ�. ����� �ٽ� �õ����ּ���.");
        return;
    }
    _param = param;

    var responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result>";
    if(param.length > 0){
        var paramValue = "";
        for(var i=0;i<param.length;i++){
            
            if("1" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
            }else if("2" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
            }else if("3" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
            }else if("4" == param[i]){
                responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
            }
        }
    }
    
    
    responseXML += "</result></results>";
    
    document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
    //=============================
    //  �����ų �޼ҵ� �� ��ġ
    //=============================
    uf_search(param);
    //=============================
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
        





<!-- //auto search start -->
<%
    boolean isSbjtAutoSchMulti  =   true;  //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�
    boolean beSearchBtn         =   false;   //��ȸ��ư ��������
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end -->



      <div class="cb b10"></div>
      <h3>���������</h3>
      <!-- �˻��� start -->
      <form name="frm" method="post">
        <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="Y" />
        <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="N" />      
      <div class="search">
        <div class="search_boxt"></div>
        <div class="search_boxc">
          <fieldset>
          <legend>��Ȳ��ȸ�˻�</legend>
          <table width="680" summary="��Ȳ��ȸ" class="tbl_search">
            <caption>
            ��Ȳ��ȸ�˻�
            </caption>
            <colgroup>
            <col width="18%" />
            <col width="32%" />
            <col width="18%" />
            <col width="32%" />
            </colgroup>
            <tbody>
              <tr>
                <th scope="row">��������</th>
                <td><select name='EVDC_DV'  id='EVDC_DV'  class=''  ><option value=''>��ü</option><option value='E' >��Ÿ����</option><option value='T' >���ڼ��ݰ�꼭</option><option value='C' >ī�����</option></select></td>
                <th scope="row">������</th>
                <td><select name='EXCTN_ST'  id='EXCTN_ST'  class=''  ><option value=''>��ü</option><option value='B04199' >����</option><option value='B04109' >����</option><option value='B04110' >����</option><option value='B04102' >ó����</option></select></td>
              </tr>
              <tr>
                <th scope="row"><label for="search_AchvInstIndv1Cd">����밳���ڵ�A</label></th>
                <td><input type="text" name="search_AchvInstIndv1Cd" id="search_AchvInstIndv1Cd" title="����밳���ڵ�A" class="inputl" style="width:125px;ime-mode:disabled;" value="" maxlength="20" /></td>
                <th scope="row"><label for="search_AchvInstIndv2Cd">����밳���ڵ�B</label></th>
                <td><input type="text" name="search_AchvInstIndv2Cd" id="search_AchvInstIndv2Cd" title="����밳���ڵ�B" class="inputl" style="width:125px;ime-mode:disabled;" value="" maxlength="20" /></td>
              </tr>
              <!-- 2013.10.29 �߰�   ������ -->
              <tr>
                <th scope="row"><label for="shrsorcsn">�������ó���</label></th>
                <td colspan="3">
                    <select id="SHR_SORC_SN" name="SHR_SORC_SN">
                        <option value="ALL">��ü</option>
                        <option value="Y">���</option>
                        <option value="N">������</option>
                    </select>
                </td>
              </tr>
              <tr>
                <th scope="row"><label for="usedaystart">��¥����</label></th>
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
      <!-- //�˻��� end// -->
      <!-- ��ȸ ����ȸ ��ư start -->
      <div class="search_bt1 ar"><a href="#dummy" onclick="autoSbjtFormGen();" class="bt_search" title="��ȸ"></a></div>
      <!-- //��ȸ ����ȸ ��ư end// -->
      <div class="t10"></div>
      
      
      
      <!-- �ѰǼ�/�μ� ���� ��ư start -->
      <div class="total_box">
        <p class="fl t05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> ��]</p>
        <p class="ar b05">
          <a href="#dummy" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�"/></a>
          <a href="#dummy" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="����"/></a>
        </p>
        <p class="cb"></p>
      </div>
      <!-- //�ѰǼ�/�μ� ���� ��ư end// -->      
<!-- *************************  rMateGrid ************************* -->      
            <!-- �׸��� Start -->
            <div id="gridDiv" style="width:100%;">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "387", "#FFFFFF", "transparent");
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
      <div class="action_bt ar">
        <div class="fl"> 
        <a href="#dummy"   onclick="uf_reExcute();" class="bt_action5-1" title="��������"><span class="bt_sp">��������</span></a> 
        <a href="#dummy"   onclick="uf_rsltItxpUpdate();" class="bt_action4" title="������"><span class="bt_sp1">������</span></a></div>
        <a href="#dummy" onclick="uf_printTrnCer();" class="bt_action7" title="��üȮ�������"><span class="bt_sp1">��üȮ�������</span></a> </div>
      <!-- //action bt end// -->
      </form>
    <!-- �ȳ� ���̵� start -->
    <div class="guide_box1" id="guide">
        <div class="guide_boxt1">
            <p class="txt_title fl">��������� ��ȸ �ȳ�</p> 
            <p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="����" class="vc"/></a></p>
        </div>
        <div class="guide_boxc1">
            <ul>
                <li>�� ��������� ��ȸ������ <span class="txt_or">���� ���� �Ϸ� ���θ� Ȯ��</span>�� �� �ֽ��ϴ�. </li>
                <li>'����'�� ��� '��������'�� ���� ���� ���� �� ���û �Ͻð� �ٽ� �ѹ� '������' �Ͽ� �ֽñ� �ٶ��ϴ�.</li>
                <li>'����Ϸ�'�ǿ� ���ؼ� RCMS�� ��ü�� ������ ���� '��üȮ����' ����� �����մϴ�.</li>
            </ul>
        </div>
        <p class="guide_boxb1"></p>
    </div>
    <!-- //�ȳ� ���̵� end// -->
    </div>
    <!-- //content end// -->



    </div>
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

//���̾ƿ� ����
var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" lockedColumnCount=\"2\" sortableColumns=\"true\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
    <columns>\
        <DataGridColumn id=\"\" dataField=\"\" itemRenderer=\"IndexNoItem\" width=\"40\" sortable=\"false\" textAlign=\"center\" />\
        <DataGridSelectorColumn id=\"selector\"   dataField=\"selector\"                headerText=\"����\"               width=\"40\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" allowMultipleSelection=\"false\" allowAllSelection=\"false\" />\
        <DataGridColumn id=\"BZEX_ID\"            dataField=\"BZEX_ID\"                 headerText=\"���������ID\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"SBJT_ID\"            dataField=\"SBJT_ID\"                 headerText=\"������ȣ\"           width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"SBJT_NM\"            dataField=\"SBJT_NM\"                 headerText=\"������\"             width=\"130\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"TRSC_DT\"            dataField=\"TRSC_DT\"                 headerText=\"�������\"           width=\"90\"  visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"EXCTN_EXEC_DT\"      dataField=\"EXCTN_EXEC_DT\"           headerText=\"��ü�Ͻ�\"           width=\"120\" visible=\"true\"  textAlign=\"center\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"TRSC_EVDC_DV_NM\"    dataField=\"TRSC_EVDC_DV_NM\"         headerText=\"��������\"           width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"              headerText=\"�ŷ�ó(������)\"     width=\"120\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"EXCTN_ST_NM\"        dataField=\"EXCTN_ST_NM\"             headerText=\"������\"           width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"EXCTN_ST\"           dataField=\"EXCTN_ST\"                headerText=\"�������ڵ�\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"TRSC_EVDC_DV\"       dataField=\"TRSC_EVDC_DV\"            headerText=\"���������ڵ�\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"VAT_PSV_APC_YN\"     dataField=\"VAT_PSV_APC_YN\"          headerText=\"�ΰ���������û����\" width=\"140\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"VAT_PSV_APC_PRGR_ST\" dataField=\"VAT_PSV_APC_PRGR_ST\"    headerText=\"�ΰ���������û�������\" width=\"180\" visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"RCV_BNK_NM\"         dataField=\"RCV_BNK_NM\"              headerText=\"�Ա�����\"           width=\"80\"  visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"ACCT_NO\"            dataField=\"ACCT_NO\"                 headerText=\"�Աݰ��¹�ȣ\"       width=\"130\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"OWAC_NM\"            dataField=\"OWAC_NM\"                 headerText=\"������\"             width=\"100\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"TRNS_AMT\"           dataField=\"TRNS_AMT\"                headerText=\"��ü�ݾ�\"           width=\"100\" visible=\"true\"  textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"CAN_TRNS_AMT\"       dataField=\"CAN_TRNS_AMT\"            headerText=\"�κ���ұݾ�\"       width=\"100\" visible=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"  dataField=\"VAT_PROC_RTRT_AMT\"       headerText=\"�ΰ��������ݾ�\"     width=\"100\" visible=\"true\" textAlign=\"right\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"CTT\"                dataField=\"CTT\"                     headerText=\"�������\"           width=\"200\" visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"ACHV_INST_INDV_1_CD\" dataField=\"ACHV_INST_INDV_1_CD\"    headerText=\"����밳���ڵ�A\"    width=\"120\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"ACHV_INST_INDV_2_CD\" dataField=\"ACHV_INST_INDV_2_CD\"    headerText=\"����밳���ڵ�B\"    width=\"120\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"CRD_SETL_METH_DV\"   dataField=\"CRD_SETL_METH_DV\"        headerText=\"��ü����ڵ�\"       width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"PAYM_USAG\"          dataField=\"PAYM_USAG\"               headerText=\"���޿뵵\"           width=\"180\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"SHR_SORC_NM\"        dataField=\"SHR_SORC_NM\"             headerText=\"�д���ó��\"         width=\"180\" visible=\"true\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"GRP_YN\"             dataField=\"GRP_YN\"                  headerText=\"�׷�YN\"             width=\"0\"   visible=\"false\"  textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        <DataGridColumn id=\"GridKey\"            dataField=\"GridKey\"                 headerText=\"GridKey\"            width=\"0\"   visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
    </columns>\
    <footers>\
        <DataGridFooter backgroundColor=\"0xE7E7E7\" color=\"0x000000\" useDataSource=\"true\" fontWeight=\"bold\" >\
            <DataGridFooterColumn />\
            <DataGridFooterColumn label=\"�հ�\" textAlign=\"center\" />\
            <DataGridFooterColumn />\
            <DataGridFooterColumn summaryOperation=\"COUNT\" dataColumn=\"{SBJT_ID}\" formatter=\"{numfmt}\" textAlign=\"right\" />\
            <DataGridFooterColumn label=\"��\" textAlign=\"left\" />\
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

    //Ŭ�� �̺�Ʈ �߰�
    var itemClickHandler = function(event) {
        //row ���ý� ���� check
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
        
        if (dataField == "EXCTN_EXEC_DT") { //�׸������ ����Ŭ�� �÷���ȣ. 0���� ����.
            uf_Click(rowIndex, columnIndex, dataRow, dataField);
        };
    };
    
    //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
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
        
        //�̺�Ʈ ���
        //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
        dataGrid.addEventListener("itemClick", itemClickHandler); //��Ŭ�� �̺�Ʈ 
    };

    
    
    gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
    //gridRoot.addEventListener("layoutComplete", gridInit);
    gridRoot.addEventListener("dataComplete", getRowCount);

};



//rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

//�ε� �� rMadeGrid ���
function rMateGridSetData() {

    gridApp = FABridge.gridBridge.root();  
    gridApp.setData(JSON.stringify(gridData)); //������ ���
    
    
    // ���콺 �� �̺�Ʈ �����ʸ� �����մϴ�.
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

                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1�б� ��������������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-13 15:44:36","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2250","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-01-30","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=1�б� ��������������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"888-88-888888-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-13 15:46:58","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"100","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"B ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-01-07","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=B ����&OwacNm=�� �� ��ü&RcvAcctNo=888888888880&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=100&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-10 13:07:20","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-02-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=1�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"���̳����ֺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-24 14:51:38","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"220","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-02-04","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=220&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=���̳����ֺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"����Ժ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"555-55-555555-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-03-07 12:27:13","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"1100","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"E ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-02-27","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=E ����&OwacNm=�� �� ��ü&RcvAcctNo=55555555550&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=1100&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=����Ժ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"����Ժ�","EXCTN_REG_DRTM":"090000","CTT":"[00030199] ��Ÿ����","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"555-55-555555-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-03-20 14:12:49","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"32303000000471","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"5500","VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0002","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","REGR_IP":"0.0.0.0.","SBJT_ID":"TEST0002","RCH_EXP_ACCT_RCV_CTT":"TEST0002","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":null,"EXCTN_ST":"B04109","RCV_BNK_CD":"003","RCV_BNK_NM":"E ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-03-11","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131224&ExctnSt=B04109&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=E ����&OwacNm=�� �� ��ü&RcvAcctNo=555555555550&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=5500&BzExpExctnErrCtt=[00030199] ��Ÿ����&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0002&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=����Ժ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};

  
                }else if(paramValue == "3"){

                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"����Ժ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"555-55-555555-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-06 10:31:01","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"1100",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"E ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-03-04","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130304&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=E ����&OwacNm=�� �� ��ü&RcvAcctNo=555555555550&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=1100&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=����Ժ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1/4 ��������������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-21 10:44:38","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-03-21","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130321&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=1/4 ��������������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"���̳� ���ֺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-25 14:52:47","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"220",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-02-26","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130226&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=220&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=���̳� ���ֺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"3�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-10 13:07:20","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-04-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130410&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=3�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"888-88-888888-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-10 13:41:58","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"100",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"B ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-03-28","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130328&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=B ����&OwacNm=�� �� ��ü&RcvAcctNo=888888888880&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=100&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"����Ժ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-23 15:54:12","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"1000",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-03-19","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130319&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=1000&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=����Ժ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"4�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-05-10 11:01:45","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-05-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130510&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=4�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"���̳� ���ֺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-05-23 16:32:11","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"220",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-04-16","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130416&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=220&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=���̳� ���ֺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"2/4 ��������������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-06-04 10:22:30","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-06-04","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130604&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=2/4 ��������������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"5�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-06-10 12:12:56","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-06-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130610&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=5�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"777--77-77777-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-08 16:02:09","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"100",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"G ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-07-08","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130708&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=G ����&OwacNm=�� �� ��ü&RcvAcctNo=777777777770&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=100&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"6�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-10 10:54:37","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-07-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130710&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=6�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"��ᱸ�Ժ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"300-30-300000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-22 17:26:25","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"20000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"C ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-07-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130710&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=C ����&OwacNm=�� �� ��&RcvAcctNo=30030300000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=20000&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=��ᱸ�Ժ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"7�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-08-09 09:58:01","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-08-09","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130809&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=7�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"3/4 ��������������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-03 09:45:27","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-09-03","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130903&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=3/4 ��������������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"8�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-10 10:15:21","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-09-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130910&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=8�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������Ȱ���","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-30 17:52:50","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"10000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-09-30","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130930&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=10000&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������Ȱ���&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"9�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-10-10 14:51:08","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-10-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131010&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=9�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"���ۺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"999-99-999999-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-10-29 13:12:08","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"15000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"F ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-10-14","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131014&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=F ����&OwacNm=�� �� ��ü&RcvAcctNo=999999999990&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=15000&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=���ۺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"10�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-11-08 12:01:28","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-11-08","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131108&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=10�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-11-25 09:21:09","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"500",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-10-18","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131018&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"4/4 ��������������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-02 11:50:19","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2150",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-12-02","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131202&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2150&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=4/4 ��������������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"11�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-10 11:10:12","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-12-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131210&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=11�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"�Ʒú�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-23 15:47:26","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"9060",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-12-02","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131202&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=9060&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=�Ʒú�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"12�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-10 10:46:32","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-01-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140110&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=12�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"222-22-222222-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-13 15:46:58","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"300",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"H ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-01-04","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140104&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=H ����&OwacNm=�� �� ��ü&RcvAcctNo=222222222220&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=300&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-10 15:36:41","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-02-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140210&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=1�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"2�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-28 11:49:19","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0003","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0003","RCH_EXP_ACCT_RCV_CTT":"TEST0003","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-02-28","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140228&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0003&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=2�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};

                }else if(paramValue == "4"){

                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1/4 ��������������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-21 10:44:38","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-03-21","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130321&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=1/4 ��������������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"���̳� ���ֺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-25 14:52:47","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"220",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-02-26","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130226&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=220&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=���̳� ���ֺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"3�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-10 13:07:20","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-04-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130410&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=3�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"888-88-888888-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-10 13:41:58","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"100",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"B ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-03-28","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130328&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=B ����&OwacNm=�� �� ��ü&RcvAcctNo=888888888880&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=100&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"����Ժ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-04-23 15:54:12","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"1000",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-03-19","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130319&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=1000&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=����Ժ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"4�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-05-10 11:01:45","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-05-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130510&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=4�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"���̳� ���ֺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-05-23 16:32:11","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"220",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-04-16","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130416&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=220&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=���̳� ���ֺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"2/4 ��������������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-06-04 10:22:30","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-06-04","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130604&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=2/4 ��������������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"5�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-06-10 12:12:56","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-06-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130610&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=5�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"777--77-77777-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-08 16:02:09","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"100",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"G ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-07-08","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130708&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=G ����&OwacNm=�� �� ��ü&RcvAcctNo=777777777770&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=100&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"6�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-10 10:54:37","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-07-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130710&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=6�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"��ᱸ�Ժ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"300-30-300000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-07-22 17:26:25","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"20000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"C ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-07-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130710&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=C ����&OwacNm=�� �� ��&RcvAcctNo=30030300000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=20000&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=��ᱸ�Ժ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"7�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-08-09 09:58:01","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-08-09","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130809&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=7�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"3/4 ��������������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-03 09:45:27","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2250",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-09-03","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130903&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2250&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=3/4 ��������������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"8�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-10 10:15:21","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-09-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130910&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=8�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������Ȱ���","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-09-30 17:52:50","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"10000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-09-30","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130930&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=10000&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������Ȱ���&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"9�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-10-10 14:51:08","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-10-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131010&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=9�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"���ۺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"999-99-999999-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-10-29 13:12:08","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"15000",  "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"F ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-10-14","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131014&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=F ����&OwacNm=�� �� ��ü&RcvAcctNo=999999999990&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=15000&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=���ۺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"10�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-11-08 12:01:28","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-11-08","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131108&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=10�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-11-25 09:21:09","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"500",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-10-18","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131018&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"4/4 ��������������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-02 11:50:19","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2150",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-12-02","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131202&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2150&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=4/4 ��������������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"11�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-10 11:10:12","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-12-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131210&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=11�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"�Ʒú�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-12-23 15:47:26","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"ī�����","GRP_YN":"N","TRNS_AMT":"9060",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"C","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-12-02","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20131202&ExctnSt=B04110&TrscEvdcDv=C&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=9060&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=�Ʒú�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"12�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-10 10:46:32","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-01-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140110&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=12�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"������","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"222-22-222222-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-01-13 15:46:58","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"300",    "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"H ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-01-04","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140104&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=H ����&OwacNm=�� �� ��ü&RcvAcctNo=222222222220&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=300&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=������&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"1�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-10 15:36:41","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-02-10","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140210&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=1�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"2�� �ΰǺ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"��û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"100-00-000000","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2014-02-28 11:49:19","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"��Ÿ����","GRP_YN":"N","TRNS_AMT":"2500",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� RCMS","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"E","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"A ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2014-02-28","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20140228&ExctnSt=B04110&TrscEvdcDv=E&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=A ����&OwacNm=�� RCMS&RcvAcctNo=10000000000&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=2500&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=2�� �ΰǺ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=Y"};
                    gridValue[cnt++] = {"EXCTN_KIND_DV":"B03000","AGRMT_INST_ID":"10112249","USE_VAT_AMT":"0","PAYM_USAG":"����Ժ�","EXCTN_REG_DRTM":"090000","CTT":"[00030000] ����ó��","BZEX_ID":"X201312192260399","VAT_PSV_APC_YN":"�̽�û","ITXP_REG_NCNT":"0","AGRMT_SEQ_NO":"G00000000000002","VAT_PROC_RTRT_AMT":"0","CAN_TRNS_AMT":"0","ACCT_NO":"555-55-555555-0","BUTR_ID":"D201312192251780","EXCTN_TIME":"20131219090000","EXCTN_EXEC_TM":"205909","EXCTN_EXEC_DT":"2013-03-06 10:31:01","CRD_SETL_METH_DV":null,"RCV_ACCT_NO":"30003000000001","TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","GRP_YN":"N","TRNS_AMT":"1100",   "VAT_PSV_APC_PRGR_ST":"","RCH_EXP_ACCT_WDRW_CTT":"TEST0004","ACHV_INST_INDV_1_CD":"","REGR_NM":"ADMIN","CNTC_POSS_TEL_NO":"02-123-1234","REGR_ID":"ADMIN","OWAC_NM":"�� �� ��ü","SBJT_ID":"TEST0004","RCH_EXP_ACCT_RCV_CTT":"TEST0004","SBJT_NM":"RCMS �ǽ��� �������","TRSC_EVDC_DV":"T","SPLR_CO_NM":"�����ڸ�","ACHV_INST_INDV_2_CD":"","TRSC_EVDC_NO":null,"EXCTN_ST_NM":"����Ϸ�","BZ_EXP_ACCT_WDRW_CTT":"R25419","SHR_SORC_NM":"","EXCTN_ST":"B04110","RCV_BNK_CD":"003","RCV_BNK_NM":"E ����","EXCTN_STG_DV":"1","USE_SPLY_AMT":"10","EXCTN_REG_DT":"20131219","RCV_ACCT_RCV_CTT":"�ŷ�ó�Ա�","TRSC_DT":"2013-03-04","GridKey":"&SbjtNm=RCMS �ǽ��� �������&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&TrscDt=20130304&ExctnSt=B04110&TrscEvdcDv=T&TrscEvdcNo=&BzexId=X201312192260399&ButrId=D201312192251780&RcvBnkCd=003&RcvBnkNm=E ����&OwacNm=�� �� ��ü&RcvAcctNo=555555555550&UseSplyAmt=10&UseVatAmt=0&ExctnExecDt=20131224&ExctnExecTm=205909&ExctnRegDt=20131219&ExctnRegDrtm=090000&RegrNm=ADMIN&TrnsAmt=1100&BzExpExctnErrCtt=[00030000] ����ó��&AgrmtSeqNo=G00000000000002&AgrmtInstId=10112249&RchExpAcctWdrwCtt=TEST0004&RcvAcctRcvCtt=�ŷ�ó�Ա�&TelNo=02-123-1234&PaymUsag=����Ժ�&ExctnStgDv=1&AchvInstIndv1Cd=&AchvInstIndv2Cd=&ExctnTypDv=&ShrSorcNm=&VatPsvApcYn=N"};

                }
                
                paramValue = "";
                
            }
        }


    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
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
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}
</script>

</body>
</html>