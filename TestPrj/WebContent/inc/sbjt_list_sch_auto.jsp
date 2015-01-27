<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<script type="text/javascript">

var show_sbjt_detail_on = "N";            //���������� ���̺� on/off
var autocomplete;

$(function() {
    var dataList = [ 
                     "[1]�ű԰��� :: TEST0001(14��01��01~99��01��31) / ���Ѱ� / RCMS �ǽ��� �ű԰��� / ��RCMS"
                    ,"[2]������� :: TEST0002(14��01��01~99��01��31) / ��å�� / RCMS �ǽ��� ������� / ��RCMS"
                    ,"[3]�������(���� ������) :: TEST0003(13��03��01~14��02��28) / �̼��� / RCMS �ǽ��� ������� / ��RCMS"
                    ,"[4]�������(���� ���� �Ϸ�) :: TEST0004(13��02��01~14��01��31) / �̼��� / RCMS �ǽ��� ������� / ��RCMS"
                    ];
    
    autocomplete = jex.plugin.newInstance("AUTO_COMPLETE","#keykey");
    

    <%if(isSbjtAutoSchMulti){%>
    autocomplete.setCheckbox(true);
    <%}%>
    
    autocomplete.setDataFn (function(key) {
        var rslt = [];
        for (var i=0; i<dataList.length; i++) if (this.compareFn(dataList[i],key)){ rslt.push(dataList[i]); } 
        return rslt;
    });
    
    autocomplete.setDataAllFn (function(key) {
        var rslt = [];
        for (var i=0; i<dataList.length; i++) {
            rslt.push(dataList[i]); 
        }
        return rslt;
    });
    
    autocomplete.apply      ();
});
    
//==================================================================
//  ������ȸ ���� method
//==================================================================
// ������������ȸ Ajax callBack
function uf_callBack(param) {
	
	if(!param){
		alert("�߸��� �����Դϴ�.");
		return;
	}

	var responseXML = "";
    if("1" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><div class=\"project\">  <div class=\"project_boxt1\">    <p class=\"txt_title1 fl\">���� ������ �����˻� �󼼳����Դϴ�.</p>  </div>  <div class=\"project_box\">    <table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" summary=\"���õ� ���� �����Դϴ�\" class=\"tbl_type01\">    <caption>�����˻�</caption>    <colgroup>        <col width=\"5%\" />        <col width=\"5%\" />        <col width=\"20%\" />        <col width=\"14%\" />        <col width=\"17%\" />        <col width=\"12%\" />        <col width=\"12%\" />    </colgroup>    <thead>    <tr>        <th scope=\"col\" colspan=\"2\">������ȣ</th>        <th scope=\"col\" colspan=\"2\">������</th>        <th scope=\"col\">�ְ����</th>        <th scope=\"col\" colspan=\"2\" class=\"ll\">���ذ��߱Ⱓ</th>    </tr>    </thead>    <tbody>    <tr>        <td class=\"ac\" colspan=\"2\">TEST0001</td>        <td class=\"ac\" colspan=\"2\">�ѱ��������򰡰�����</td>        <td class=\"ac\">��RCMS</td>        <td class=\"ac ll\" colspan=\"2\">2014.01.01~2099.01.31</td>    </tr>    <tr>        <th scope=\"col\">�ܰ�</th>        <th scope=\"col\">����</th>        <th scope=\"col\">�����</th>        <th scope=\"col\">����ڵ�Ϲ�ȣ</th>        <th scope=\"col\">��������</th>        <th scope=\"col\">�����ѻ����</th>        <th scope=\"col\" class=\"ll\">��밡�ɻ���</th>    </tr>    <tr>        <td class=\"ac\">0</td>        <td class=\"ac\">1</td>        <td class=\"ac\">��RCMS</td>        <td class=\"ac\">111-11-11111</td>        <td class=\"ac\">�����������</td>        <td class=\"ar\">130,000</td>        <td class=\"ac ll\">����</td>    </tr>    </tbody>    </table>  </div></div></result></results>";
    }else if("2" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><div class=\"project\">  <div class=\"project_boxt1\">    <p class=\"txt_title1 fl\">���� ������ �����˻� �󼼳����Դϴ�.</p>  </div>  <div class=\"project_box\">    <table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" summary=\"���õ� ���� �����Դϴ�\" class=\"tbl_type01\">    <caption>�����˻�</caption>    <colgroup>        <col width=\"5%\" />        <col width=\"5%\" />        <col width=\"20%\" />        <col width=\"14%\" />        <col width=\"17%\" />        <col width=\"12%\" />        <col width=\"12%\" />    </colgroup>    <thead>    <tr>        <th scope=\"col\" colspan=\"2\">������ȣ</th>        <th scope=\"col\" colspan=\"2\">������</th>        <th scope=\"col\">�ְ����</th>        <th scope=\"col\" colspan=\"2\" class=\"ll\">���ذ��߱Ⱓ</th>    </tr>    </thead>    <tbody>    <tr>        <td class=\"ac\" colspan=\"2\">TEST0002</td>        <td class=\"ac\" colspan=\"2\">�ѱ��������򰡰�����</td>        <td class=\"ac\">��RCMS</td>        <td class=\"ac ll\" colspan=\"2\">2014.01.01~2099.01.31</td>    </tr>    <tr>        <th scope=\"col\">�ܰ�</th>        <th scope=\"col\">����</th>        <th scope=\"col\">�����</th>        <th scope=\"col\">����ڵ�Ϲ�ȣ</th>        <th scope=\"col\">��������</th>        <th scope=\"col\">�����ѻ����</th>        <th scope=\"col\" class=\"ll\">��밡�ɻ���</th>    </tr>    <tr>        <td class=\"ac\">0</td>        <td class=\"ac\">1</td>        <td class=\"ac\">��RCMS</td>        <td class=\"ac\">111-11-11111</td>        <td class=\"ac\">�ְ����</td>        <td class=\"ar\">130,000</td>        <td class=\"ac ll\">����</td>    </tr>    </tbody>    </table>  </div></div></result></results>";
    }else if("3" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><div class=\"project\">  <div class=\"project_boxt1\">    <p class=\"txt_title1 fl\">���� ������ �����˻� �󼼳����Դϴ�.</p>  </div>  <div class=\"project_box\">    <table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" summary=\"���õ� ���� �����Դϴ�\" class=\"tbl_type01\">    <caption>�����˻�</caption>    <colgroup>        <col width=\"5%\" />        <col width=\"5%\" />        <col width=\"20%\" />        <col width=\"14%\" />        <col width=\"17%\" />        <col width=\"12%\" />        <col width=\"12%\" />    </colgroup>    <thead>    <tr>        <th scope=\"col\" colspan=\"2\">������ȣ</th>        <th scope=\"col\" colspan=\"2\">������</th>        <th scope=\"col\">�ְ����</th>        <th scope=\"col\" colspan=\"2\" class=\"ll\">���ذ��߱Ⱓ</th>    </tr>    </thead>    <tbody>    <tr>        <td class=\"ac\" colspan=\"2\">TEST0003</td>        <td class=\"ac\" colspan=\"2\">�ѱ��������򰡰�����</td>        <td class=\"ac\">��RCMS</td>        <td class=\"ac ll\" colspan=\"2\">2013.03.01~2014.02.28</td>    </tr>    <tr>        <th scope=\"col\">�ܰ�</th>        <th scope=\"col\">����</th>        <th scope=\"col\">�����</th>        <th scope=\"col\">����ڵ�Ϲ�ȣ</th>        <th scope=\"col\">��������</th>        <th scope=\"col\">�����ѻ����</th>        <th scope=\"col\" class=\"ll\">��밡�ɻ���</th>    </tr>    <tr>        <td class=\"ac\">0</td>        <td class=\"ac\">1</td>        <td class=\"ac\">��RCMS</td>        <td class=\"ac\">111-11-11111</td>        <td class=\"ac\">�ְ����</td>        <td class=\"ar\">130,000</td>        <td class=\"ac ll\">����</td>    </tr>    </tbody>    </table>  </div></div></result></results>";
    }else if("4" == param){
        responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><div class=\"project\">  <div class=\"project_boxt1\">    <p class=\"txt_title1 fl\">���� ������ �����˻� �󼼳����Դϴ�.</p>  </div>  <div class=\"project_box\">    <table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" summary=\"���õ� ���� �����Դϴ�\" class=\"tbl_type01\">    <caption>�����˻�</caption>    <colgroup>        <col width=\"5%\" />        <col width=\"5%\" />        <col width=\"20%\" />        <col width=\"14%\" />        <col width=\"17%\" />        <col width=\"12%\" />        <col width=\"12%\" />    </colgroup>    <thead>    <tr>        <th scope=\"col\" colspan=\"2\">������ȣ</th>        <th scope=\"col\" colspan=\"2\">������</th>        <th scope=\"col\">�ְ����</th>        <th scope=\"col\" colspan=\"2\" class=\"ll\">���ذ��߱Ⱓ</th>    </tr>    </thead>    <tbody>    <tr>        <td class=\"ac\" colspan=\"2\">TEST0004</td>        <td class=\"ac\" colspan=\"2\">�ѱ��������򰡰�����</td>        <td class=\"ac\">��RCMS</td>        <td class=\"ac ll\" colspan=\"2\">2013.02.01~2014.01.31</td>    </tr>    <tr>        <th scope=\"col\">�ܰ�</th>        <th scope=\"col\">����</th>        <th scope=\"col\">�����</th>        <th scope=\"col\">����ڵ�Ϲ�ȣ</th>        <th scope=\"col\">��������</th>        <th scope=\"col\">�����ѻ����</th>        <th scope=\"col\" class=\"ll\">��밡�ɻ���</th>    </tr>    <tr>        <td class=\"ac\">0</td>        <td class=\"ac\">1</td>        <td class=\"ac\">��RCMS</td>        <td class=\"ac\">111-11-11111</td>        <td class=\"ac\">�ְ����</td>        <td class=\"ar\">130,000</td>        <td class=\"ac ll\">����</td>    </tr>    </tbody>    </table>  </div></div></result></results>";
    }
    
    document.getElementById("dt_bz_nm").innerHTML = responseXML;
    autoSbjtFormGen();      // �����ڵ� ��ȸ
    
    
}

// ������������ȸ Ajax
function setDetailInfo_sbjt(sbjtAutoSrchYn){
    var frm = document.rtr_str_form;
    var arr;
    var temp = document.getElementById('keykey').value;
    
    if(null == frm.SBJT_MAP_KEYS.value || ''==frm.SBJT_MAP_KEYS.value ){
        alert("������ �����ϼ���.");
        return;
    }    
    
    show_sbjt_detail_on = "Y";
//    var param = "SBJT_MAP_KEYS="+frm.SBJT_MAP_KEYS.value;
    var param = frm.SBJT_MAP_KEYS.value;
    
    //sendAjax("/jsp/inc/sbjt_detail_set.jsp",param,uf_callBack);
    uf_callBack(param);
}

// ������ȸ�� OnFocus�� ���������� off
function sbjt_dt_info_off(){
    show_sbjt_detail_on = "N";
    document.getElementById("dt_bz_nm").innerHTML   = "";
}

function autoSbjtFormGen() {
    var frm = document.rtr_str_form;
    if(null == frm.SBJT_MAP_KEYS.value || ''==frm.SBJT_MAP_KEYS.value ){
        alert("������ �����ϼ���.");
        return;
    }
    document.getElementById("sbjt_auto_gen_div").innerHTML  = "";
    
//    var param = "SBJT_MAP_KEYS="+frm.SBJT_MAP_KEYS.value;
    var param = frm.SBJT_MAP_KEYS.value;
    //sendAjax("/jsp/inc/sbjt_auto_form_gen.jsp",param,uf_autoSbjtSchCallBack);
    sbjt_auto_form_gen(param);  //�ǽ������� �߰�
    
    
    uf_autoSbjtSchCallBack(param);
}

//==================================================================
// ������ȸ����
//==================================================================
function bAutoSbjtSch(){
    var frm = document.rtr_str_form;
    
    if(null == frm.SBJT_MAP_KEYS.value || ''==frm.SBJT_MAP_KEYS.value ){
        alert("������ �����ϼ���.");
        return false;
    }
    
    return true;
}

//==================================================================
    
// ����ڰ� ������ ��ȸ ������ ���ڿ��� ����� hidden field�� �����Ѵ�.
function uf_select_rt_grid_single(){
    var rtrStrFrm   = document.rtr_str_form;
    
    //���ð��� �������ͻ����޼ҵ� ȣ��
    //autoSbjtFormGen();
    //���� �۾� �ڵ�...
}

//���õ� �������� ���ڿ��� ����� hidden field�� �����Ѵ�.
function uf_select_rt_grid_multi(){
    var rtrStrFrm   = document.rtr_str_form;
    
    //���ð��� �������ͻ����޼ҵ� ȣ��
    //autoSbjtFormGen();
    //���� �۾� �ڵ�...
}

//����Ȯ�� �׽�Ʈ�޼ҵ�
function test_son(){
    var frm = document.rtr_str_form;
    alert("frm.SBJT_MAP_KEYS : " + frm.SBJT_MAP_KEYS.value);
    alert("frm.S_SAC_SHP.value : " + frm.S_SAC_SHP.value);
    
    if(frm.S_AGRMT_SEQ_NO.length > 1){
        alert("frm.S_AGRMT_SEQ_NO[0].value : "+frm.S_AGRMT_SEQ_NO[0].value);
        alert("frm.S_AGRMT_SEQ_NO[1].value : "+frm.S_AGRMT_SEQ_NO[1].value);
    }else{
        alert("frm.S_AGRMT_SEQ_NO.value : "+document.getElementById("S_AGRMT_SEQ_NO").value
                +"\n frm.S_AGRMT_INST_ID.value : "+frm.S_AGRMT_INST_ID.value
                );
    }
}







var usr_data = new Array();
var pt_header = new Array();
var sbjt_data = new Array();
//sbjt_auto_form_gen.jsp �� �ϵ��ڵ�
function sbjt_auto_form_gen(param){
	if(!param) return;
	
	if("1" == param){
		usr_data["CrpnRegNo"]  = "1111111111111";
		usr_data["BzRegNo"]  = "1111111111";
		usr_data["InstId"]  = "10000001";
		usr_data["InstNm"]  = "��RCMS";
		
		pt_header["MenuGrpCd"]  = "MR010";
		pt_header["PmsId"]  = "G01";
		pt_header["BzClasCd"]  = "S1056";
		pt_header["SbjtId"]  = "TEST0001";
		pt_header["AgrmtId"]  = "1";
		pt_header["Annl"]  = "3";
		pt_header["CpcgInstId"]  = "11000001";
		pt_header["CpcgInstBzprNo"]  = "1111111111";
		pt_header["CpcgInstCrpnRegNo"]  = null;
		pt_header["FncInstContId"]  = "00012525";
		pt_header["AgrmtSeqNo"]  = "G00000000000001";
		pt_header["AchvInstBzprNo"]  = "1111111111";
		pt_header["AchvInstCrpnRegNo"]  = "1111111111111";
		pt_header["UsrInstId"]  = "10000001";
		pt_header["AchvInstId"]  = "10000001";
		
		sbjt_data["PmsId"]  = "G01";
		sbjt_data["BzClasCd"]  = "S1056";
		sbjt_data["BzClasNm"]  = "RCMS �ǽ�";
		sbjt_data["Annl"]  = "3";
		sbjt_data["SbjtId"]  = "TEST0001";
		sbjt_data["SbjtNm"]  = "RCMS �ǽ��� �ű԰���";
		sbjt_data["HmpwRoleDv"]  = "02";
		sbjt_data["HmpwRoleSbDv"]  = null;
		sbjt_data["SpvsInstID"]  = "10023093";
		sbjt_data["SpvsInstNm"]  = "(��)�Ǻ�";
		sbjt_data["CpcgInstID"]  = "11000001";
		sbjt_data["CpcgInstBzRegNo"]  = "1111111111";
		sbjt_data["CpcgInstCrpnRegNo"]  = null;
		sbjt_data["CpcgInstNm"]  = "�ѱ��������򰡰�����";
		sbjt_data["AgrmtInstId"]  = "10000001";
		sbjt_data["AgrmtInstCrpnRegNo"]  = "1111111111111";
		sbjt_data["AgrmtInstBzRegNo"]  = "1111111111";
		sbjt_data["AgrmtSeqNo"]  = "G00000000000001";
		sbjt_data["SbjtPrgrDv"]  = "07";
		sbjt_data["ExctnStgDv"]  = "1";
		sbjt_data["ExctnLimtSt"]  = "0";
		sbjt_data["TotlInstAmt"]  = null;
		sbjt_data["RchExpAcctBnkCd"]  = "020";
		sbjt_data["RchExpAcctNo"]  = "10000000000";
		sbjt_data["TotlDevTrmStrDt"]  = null;
		sbjt_data["TotlDevTrmEndDt"]  = null;
		sbjt_data["AgrmtCnclId"]  = "1";
		sbjt_data["InstRoleDv"]  = "E";
		sbjt_data["InstRoleSbDv"]  = "E1";
		sbjt_data["InstExctnLimtSt"]  = "0";
		sbjt_data["InstSbjtPrgrSt"]  = "10";
		sbjt_data["AgrmtInstNm"]  = "��RCMS";
		sbjt_data["RcmsGrpCd"]  = "MR010";
		sbjt_data["FncInstContId"]  = "00012525";
		sbjt_data["PrsSbjtStg"]  = "0";
		sbjt_data["DevStrDt"]  = "20140101";
		sbjt_data["DevEndDt"]  = "20990131";
		sbjt_data["SumupRsprExctnPossYn"]  = "Y";
		sbjt_data["NprfInstYn"]  = "Y";
		sbjt_data["SbjtDv"]  = "H";
		sbjt_data["SumupSbjtId"]  = null;
		sbjt_data["MyAcctTrnsAlwnYn"]  = "N";
		sbjt_data["MySbjtYn"]  = "Y";
		sbjt_data["InstLnkType"]  = "A";
		sbjt_data["SacShp"]  = "1";
		sbjt_data["AifwCnt"]  = "0";
		sbjt_data["AibsSeq"]  = null;
		sbjt_data["AgrmtTgtStrStg"]  = "0";
		sbjt_data["AgrmtTgtStrAnnl"]  = "3";
		sbjt_data["AgrmtTgtEndStg"]  = "0";
		sbjt_data["AgrmtTgtEndAnnl"]  = "3";
		sbjt_data["SacSn"]  = null;
		sbjt_data["AgrmtDv"]  = "1";
		sbjt_data["AgcfYn"]  = "N";
		sbjt_data["AgrmtStDt"]  = "20140101";
		
	}else if("2" == param){

		usr_data["CrpnRegNo"]  = "1101111731135";
		usr_data["BzRegNo"]  = "1111111111";
		usr_data["InstId"]  = "10112249";
		usr_data["InstNm"]  = "��RCMS";
		
		pt_header["MenuGrpCd"]  = "MR010";
		pt_header["PmsId"]  = "G01";
		pt_header["BzClasCd"]  = "S1598";
		pt_header["SbjtId"]  = "TEST0002";
		pt_header["AgrmtId"]  = "2";
		pt_header["Annl"]  = "3";
		pt_header["CpcgInstId"]  = "11000001";
		pt_header["CpcgInstBzprNo"]  = "1111111111";
		pt_header["CpcgInstCrpnRegNo"]  = null;
		pt_header["FncInstContId"]  = "00000341";
		pt_header["AgrmtSeqNo"]  = "G00000000000002";
		pt_header["AchvInstBzprNo"]  = "1111111111";
		pt_header["AchvInstCrpnRegNo"]  = "1101111731135";
		pt_header["UsrInstId"]  = "10112249";
		pt_header["AchvInstId"]  = "10112249";
		
		sbjt_data["PmsId"]  = "G01";
		sbjt_data["BzClasCd"]  = "S1598";
		sbjt_data["BzClasNm"]  = "RCMS �ǽ�";
		sbjt_data["Annl"]  = "3";
		sbjt_data["SbjtId"]  = "TEST0002";
		sbjt_data["SbjtNm"]  = "RCMS �ǽ��� �������";
		sbjt_data["HmpwRoleDv"]  = "02";
		sbjt_data["HmpwRoleSbDv"]  = null;
		sbjt_data["SpvsInstID"]  = "10112249";
		sbjt_data["SpvsInstNm"]  = "��RCMS";
		sbjt_data["CpcgInstID"]  = "11000001";
		sbjt_data["CpcgInstBzRegNo"]  = "1111111111";
		sbjt_data["CpcgInstCrpnRegNo"]  = null;
		sbjt_data["CpcgInstNm"]  = "�ѱ��������򰡰�����";
		sbjt_data["AgrmtInstId"]  = "10112249";
		sbjt_data["AgrmtInstCrpnRegNo"]  = "1101111731135";
		sbjt_data["AgrmtInstBzRegNo"]  = "1111111111";
		sbjt_data["AgrmtSeqNo"]  = "G00000000000002";
		sbjt_data["SbjtPrgrDv"]  = "09";
		sbjt_data["ExctnStgDv"]  = "2";
		sbjt_data["ExctnLimtSt"]  = "1";
		sbjt_data["TotlInstAmt"]  = null;
		sbjt_data["RchExpAcctBnkCd"]  = "003";
		sbjt_data["RchExpAcctNo"]  = "08203000000220";
		sbjt_data["TotlDevTrmStrDt"]  = null;
		sbjt_data["TotlDevTrmEndDt"]  = null;
		sbjt_data["AgrmtCnclId"]  = "2";
		sbjt_data["InstRoleDv"]  = "C";
		sbjt_data["InstRoleSbDv"]  = "C1";
		sbjt_data["InstExctnLimtSt"]  = "1";
		sbjt_data["InstSbjtPrgrSt"]  = "07";
		sbjt_data["AgrmtInstNm"]  = "��RCMS";
		sbjt_data["RcmsGrpCd"]  = "MR010";
		sbjt_data["FncInstContId"]  = "00000341";
		sbjt_data["PrsSbjtStg"]  = "0";
		sbjt_data["DevStrDt"]  = "20140101";
		sbjt_data["DevEndDt"]  = "20990131";
		sbjt_data["SumupRsprExctnPossYn"]  = "Y";
		sbjt_data["NprfInstYn"]  = "N";
		sbjt_data["SbjtDv"]  = "H";
		sbjt_data["SumupSbjtId"]  = null;
		sbjt_data["MyAcctTrnsAlwnYn"]  = "N";
		sbjt_data["MySbjtYn"]  = "Y";
		sbjt_data["InstLnkType"]  = "A";
		sbjt_data["SacShp"]  = "2";
		sbjt_data["AifwCnt"]  = "1";
		sbjt_data["AibsSeq"]  = null;
		sbjt_data["AgrmtTgtStrStg"]  = "0";
		sbjt_data["AgrmtTgtStrAnnl"]  = "3";
		sbjt_data["AgrmtTgtEndStg"]  = "0";
		sbjt_data["AgrmtTgtEndAnnl"]  = "3";
		sbjt_data["SacSn"]  = null;
		sbjt_data["AgrmtDv"]  = "1";
		sbjt_data["AgcfYn"]  = "Y";
		sbjt_data["AgrmtStDt"]  = "20140101";

    }else if("3" == param){

		usr_data["CrpnRegNo"]  = "1101111731135";
		usr_data["BzRegNo"]  = "1111111111";
		usr_data["InstId"]  = "10112249";
		usr_data["InstNm"]  = "��RCMS";
		
		pt_header["MenuGrpCd"]  = "MR010";
		pt_header["PmsId"]  = "G01";
		pt_header["BzClasCd"]  = "S1598";
		pt_header["SbjtId"]  = "TEST0003";
		pt_header["AgrmtId"]  = "2";
		pt_header["Annl"]  = "1";
		pt_header["CpcgInstId"]  = "11000001";
		pt_header["CpcgInstBzprNo"]  = "1111111111";
		pt_header["CpcgInstCrpnRegNo"]  = null;
		pt_header["FncInstContId"]  = "00000341";
		pt_header["AgrmtSeqNo"]  = "G00000000000003";
		pt_header["AchvInstBzprNo"]  = "1111111111";
		pt_header["AchvInstCrpnRegNo"]  = "1101111731135";
		pt_header["UsrInstId"]  = "10112249";
		pt_header["AchvInstId"]  = "10112249";
		
		sbjt_data["PmsId"]  = "G01";
		sbjt_data["BzClasCd"]  = "S1598";
		sbjt_data["BzClasNm"]  = "RCMS �ǽ�";
		sbjt_data["Annl"]  = "1";
		sbjt_data["SbjtId"]  = "TEST0003";
		sbjt_data["SbjtNm"]  = "RCMS �ǽ��� �������";
		sbjt_data["HmpwRoleDv"]  = "02";
		sbjt_data["HmpwRoleSbDv"]  = null;
		sbjt_data["SpvsInstID"]  = "10112249";
		sbjt_data["SpvsInstNm"]  = "��RCMS";
		sbjt_data["CpcgInstID"]  = "11000001";
		sbjt_data["CpcgInstBzRegNo"]  = "1111111111";
		sbjt_data["CpcgInstCrpnRegNo"]  = null;
		sbjt_data["CpcgInstNm"]  = "�ѱ��������򰡰�����";
		sbjt_data["AgrmtInstId"]  = "10112249";
		sbjt_data["AgrmtInstCrpnRegNo"]  = "1101111731135";
		sbjt_data["AgrmtInstBzRegNo"]  = "1111111111";
		sbjt_data["AgrmtSeqNo"]  = "G00000000000003";
		sbjt_data["SbjtPrgrDv"]  = "09";
		sbjt_data["ExctnStgDv"]  = "2";
		sbjt_data["ExctnLimtSt"]  = "0";
		sbjt_data["TotlInstAmt"]  = null;
		sbjt_data["RchExpAcctBnkCd"]  = "003";
		sbjt_data["RchExpAcctNo"]  = "08203000000220";
		sbjt_data["TotlDevTrmStrDt"]  = null;
		sbjt_data["TotlDevTrmEndDt"]  = null;
		sbjt_data["AgrmtCnclId"]  = "2";
		sbjt_data["InstRoleDv"]  = "C";
		sbjt_data["InstRoleSbDv"]  = "C1";
		sbjt_data["InstExctnLimtSt"]  = "0";
		sbjt_data["InstSbjtPrgrSt"]  = "10";
		sbjt_data["AgrmtInstNm"]  = "��RCMS";
		sbjt_data["RcmsGrpCd"]  = "MR010";
		sbjt_data["FncInstContId"]  = "00000341";
		sbjt_data["PrsSbjtStg"]  = "0";
		sbjt_data["DevStrDt"]  = "20130301";
		sbjt_data["DevEndDt"]  = "20140228";
		sbjt_data["SumupRsprExctnPossYn"]  = "Y";
		sbjt_data["NprfInstYn"]  = "N";
		sbjt_data["SbjtDv"]  = "H";
		sbjt_data["SumupSbjtId"]  = null;
		sbjt_data["MyAcctTrnsAlwnYn"]  = "Y";
		sbjt_data["MySbjtYn"]  = "Y";
		sbjt_data["InstLnkType"]  = "A";
		sbjt_data["SacShp"]  = "2";
		sbjt_data["AifwCnt"]  = "1";
		sbjt_data["AibsSeq"]  = "3";
		sbjt_data["AgrmtTgtStrStg"]  = "0";
		sbjt_data["AgrmtTgtStrAnnl"]  = "1";
		sbjt_data["AgrmtTgtEndStg"]  = "0";
		sbjt_data["AgrmtTgtEndAnnl"]  = "1";
		sbjt_data["SacSn"]  = "1";
		sbjt_data["AgrmtDv"]  = "1";
		sbjt_data["AgcfYn"]  = "Y";
		sbjt_data["AgrmtStDt"]  = "20130301";

    }else if("4" == param){

		usr_data["CrpnRegNo"]  = "1101111731135";
		usr_data["BzRegNo"]  = "1111111111";
		usr_data["InstId"]  = "10112249";
		usr_data["InstNm"]  = "��RCMS";
		
		pt_header["MenuGrpCd"]  = "MR010";
		pt_header["PmsId"]  = "G01";
		pt_header["BzClasCd"]  = "S1854";
		pt_header["SbjtId"]  = "TEST0004";
		pt_header["AgrmtId"]  = "1";
		pt_header["Annl"]  = "1";
		pt_header["CpcgInstId"]  = "11000001";
		pt_header["CpcgInstBzprNo"]  = "1111111111";
		pt_header["CpcgInstCrpnRegNo"]  = null;
		pt_header["FncInstContId"]  = "00012525";
		pt_header["AgrmtSeqNo"]  = "G00000000000004";
		pt_header["AchvInstBzprNo"]  = "1111111111";
		pt_header["AchvInstCrpnRegNo"]  = "1101111731135";
		pt_header["UsrInstId"]  = "10112249";
		pt_header["AchvInstId"]  = "10112249";
		
		sbjt_data["PmsId"]  = "G01";
		sbjt_data["BzClasCd"]  = "S1854";
		sbjt_data["BzClasNm"]  = "RCMS �ǽ�";
		sbjt_data["Annl"]  = "1";
		sbjt_data["SbjtId"]  = "TEST0004";
		sbjt_data["SbjtNm"]  = "RCMS �ǽ��� �������";
		sbjt_data["HmpwRoleDv"]  = "02";
		sbjt_data["HmpwRoleSbDv"]  = null;
		sbjt_data["SpvsInstID"]  = "10112249";
		sbjt_data["SpvsInstNm"]  = "��RCMS";
		sbjt_data["CpcgInstID"]  = "11000001";
		sbjt_data["CpcgInstBzRegNo"]  = "1111111111";
		sbjt_data["CpcgInstCrpnRegNo"]  = null;
		sbjt_data["CpcgInstNm"]  = "�ѱ��������򰡰�����";
		sbjt_data["AgrmtInstId"]  = "10112249";
		sbjt_data["AgrmtInstCrpnRegNo"]  = "1101111731135";
		sbjt_data["AgrmtInstBzRegNo"]  = "1111111111";
		sbjt_data["AgrmtSeqNo"]  = "G00000000000004";
		sbjt_data["SbjtPrgrDv"]  = "09";
		sbjt_data["ExctnStgDv"]  = "1";
		sbjt_data["ExctnLimtSt"]  = "0";
		sbjt_data["TotlInstAmt"]  = null;
		sbjt_data["RchExpAcctBnkCd"]  = "020";
		sbjt_data["RchExpAcctNo"]  = "1005000000415";
		sbjt_data["TotlDevTrmStrDt"]  = null;
		sbjt_data["TotlDevTrmEndDt"]  = null;
		sbjt_data["AgrmtCnclId"]  = "1";
		sbjt_data["InstRoleDv"]  = "C";
		sbjt_data["InstRoleSbDv"]  = "C1";
		sbjt_data["InstExctnLimtSt"]  = "0";
		sbjt_data["InstSbjtPrgrSt"]  = "07";
		sbjt_data["AgrmtInstNm"]  = "��RCMS";
		sbjt_data["RcmsGrpCd"]  = "MR010";
		sbjt_data["FncInstContId"]  = "00012525";
		sbjt_data["PrsSbjtStg"]  = "0";
		sbjt_data["DevStrDt"]  = "20130201";
		sbjt_data["DevEndDt"]  = "20140131";
		sbjt_data["SumupRsprExctnPossYn"]  = "Y";
		sbjt_data["NprfInstYn"]  = "N";
		sbjt_data["SbjtDv"]  = "H";
		sbjt_data["SumupSbjtId"]  = null;
		sbjt_data["MyAcctTrnsAlwnYn"]  = "Y";
		sbjt_data["MySbjtYn"]  = "Y";
		sbjt_data["InstLnkType"]  = "A";
		sbjt_data["SacShp"]  = "1";
		sbjt_data["AifwCnt"]  = "1";
		sbjt_data["AibsSeq"]  = "0";
		sbjt_data["AgrmtTgtStrStg"]  = "0";
		sbjt_data["AgrmtTgtStrAnnl"]  = "1";
		sbjt_data["AgrmtTgtEndStg"]  = "0";
		sbjt_data["AgrmtTgtEndAnnl"]  = "1";
		sbjt_data["SacSn"]  = "0";
		sbjt_data["AgrmtDv"]  = "1";
		sbjt_data["AgcfYn"]  = "Y";
		sbjt_data["AgrmtStDt"]  = "20130201";

    }
	
	
}
</script>
    
            <form name="rtr_str_form">
                <!-- ���ð������� �������� ���� dynamic -->
                <input type="hidden" name="SBJT_MAP_KEYS" id="SBJT_MAP_KEYS" value="" >      <!-- ���ð���key -->
                <div id="sbjt_auto_gen_div" style="display:none;">&nbsp;</div>  
                <!-- ���ð������� �������� ���� dynamic -->
            </form>
    
            <!-- find start -->
            <fieldset>
                <legend>�˻�</legend>
                <div class="find01">
                    <div class="findbox">
                        <div class="findlist">
                            <p class="projefind">
                                <a href="#" onclick="autocomplete.allview(); return false;"><img src="/images/bt/bt_list.gif" alt="������ü����" class="vb" /></a>
                                <input type="text" value="" id="keykey" name="akeykey" title="�˻��� �Է�" style="width:437px;" class="inputl" onkeypress="if(event.keyCode==13) {autoSbjtFormGen();}"/>
<% if (beSearchBtn) { %>                                
                                <a href="#" onclick="autoSbjtFormGen(); return false;"><img src="/images/bt/bt_search6.gif" alt="��ȸ" class="vb"/></a>
<% } %>
                            </p>
                            <p class="t10 l70">�� ������, ��ȣ, å���ڸ� �Է����ε� ���� �˻��� �����մϴ�. </p>
                        </div>
                    </div>
                </div>
            </fieldset>
            <!-- //find end// -->     
            <!-- project detail start -->
            <div id="dt_bz_nm"></div>
            <!-- //project detail end// -->    
