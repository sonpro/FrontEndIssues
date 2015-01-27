<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Expires" content="-1" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="No-Cache" />
<meta http-equiv="Content-Script-Type" content="texts/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css" href="/style/master.css" />
<link rel="stylesheet" type="text/css" href="/style/rcms_pt.css" />
<link rel="StyleSheet" type="text/css" href="/js/dtree/dtree.css" />
<link rel="stylesheet" type="text/css" href="/js/calendar/calendar.css" />
<link rel="stylesheet" type="text/css" href="/js/fancybox/jquery.fancybox-1.3.2.css" media="screen" />
<script type="text/javascript" src="/js/dtree/dtree_menu.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/quick.js"></script>




<script type="text/javascript" src="/traning/js/common.js"></script>

<script type="text/javascript" src="/traning/js/pt_common.js"></script>
<script type="text/javascript" src="/js/tooltip.js"></script>
<script type="text/javascript" src="/js/pt_cpcg_common.js"></script>
<script type="text/javascript" src="/traning/js/common_pop.js"></script>
<script type="text/javascript" src="/js/dtr.js"></script>

<!-- xGrid ���� ��ũ��Ʈ 3�� -->
<!-- 
<script type="text/javascript" src="/xgrid/js/xgrid.js"></script>
<script type="text/javascript" src="/xgrid/js/sgrid2xgrid.js"></script>
<script type="text/javascript" src="/xgrid/js/xgridCommon.js"></script>
 --> 
<script type="text/javascript" src="/js/calendar/calendar.js"></script>
<script type="text/javascript" src="/js/calendar/tagCalendar.js"></script>
<!-- 
<script type="text/javascript" src="/js/arItxp.jsp"></script>
 -->
<script type="text/javascript" src="/js/gridAdtnRegBtnEvt.js"></script>

<script type="text/javascript" src="/js/autoComplete/lib/json2.js"></script>
<script type="text/javascript" src="/js/autoComplete/lib/jquery-1.5.2.js"></script>
<script type="text/javascript" src="/js/autoComplete/jex/jex.core.min.euckr.js"></script>
<script type="text/javascript" src="/js/autoComplete/jexPlugin/jex.autocomplete.euckr.js"></script>
<script type="text/javascript" src="/js/jquery.alerts-1.1/jquery.alerts.js"></script>
<script type="text/javascript" src="/js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript" src="/js/fancybox/jquery.fancybox-1.3.2.js"></script>

<script type="text/javascript" src="/traning/js/validate.js"></script>
<script type="text/javascript" src="/js/layer_pop.js"></script>

<script type="text/javascript" src="/js/xtree/xtree.js"></script>
<script type="text/javascript" src="/js/menu.js"></script>
<script type="text/javascript" src="/js/quick.js"></script>
<script type="text/javascript" src="/XecureObject/xecureweb.js"></script>
<script type="text/javascript" src="/traning/js/ib2_common.js"></script>

<script type="text/javascript" src="/traning/js/code.js"></script>



<script src="/rMateGrid/LicenseKey/rMateGridLicense.js" language="javascript"></script>

<script type="text/javaScript" src="/rMateGrid/Samples/JS/AC_OETags.js"></script>
<script type="text/javaScript" src="/rMateGrid/Samples/JS/rMateGrid.js"></script>
<script type="text/javaScript" src="/rMateGrid/Samples/JS/rMateGridLicense.js"></script>
<script type="text/javaScript" src="/rMateGrid/Samples/JS/rMateGrid_common.js"></script>
<script type="text/javascript" src="/traning/js/ib2.js"></script>




<%@ page import="kr.go.rcms.web.util.*" %>
<%@ page import="java.util.*" %>



<script type="text/javascript" src="/traning/js/traning.dataCtrl.js"></script>


<script type="text/javascript">

/**
 * ��Ű�� ����
 * @param cookieName ��Ű��
 */
function getCookieTraning( cookieName )
{
    var search = cookieName + "=";
    var cookie = document.cookie;

    // ���� ��Ű�� ������ ���
    if( cookie.length > 0 )
    {
        // �ش� ��Ű���� �����ϴ��� �˻��� �� �����ϸ� ��ġ�� ����.
        startIndex = cookie.indexOf( cookieName );

        // ���� �����Ѵٸ�
        if( startIndex != -1 )
        {
            // ���� ���� ���� ���� �ε��� ����
            startIndex += cookieName.length;

            // ���� ���� ���� ���� �ε��� ����
            endIndex = cookie.indexOf( ";", startIndex );

            // ���� ���� �ε����� ��ã�� �Ǹ� ��Ű ��ü���̷� ����
            if( endIndex == -1) endIndex = cookie.length;

            // ��Ű���� �����Ͽ� ����
            return unescape( cookie.substring( startIndex + 1, endIndex ) );
        }
        else
        {
            // ��Ű ���� �ش� ��Ű�� �������� ���� ���
            return false;
        }
    }
    else
    {
        // ��Ű ��ü�� ���� ���
        return false;
    }
}

/**
 * ��Ű ����
 * @param cookieName ��Ű��
 * @param cookieValue ��Ű��
 * @param expireDay ��Ű ��ȿ��¥
 */
function setCookieTraning( cookieName, cookieValue, expireDate )
{
    var today = new Date();
    today.setDate( today.getDate() + parseInt( expireDate ) );
    document.cookie = cookieName + "=" + escape( cookieValue ) + "; path=/; expires=" + today.toGMTString() + ";";
}

/**
 * ��Ű ����
 * @param cookieName ������ ��Ű��
 */
function deleteCookieTraning( cookieName )
{
    var expireDate = new Date();
    
    //���� ��¥�� ��Ű �Ҹ� ��¥�� �����Ѵ�.
    expireDate.setDate( expireDate.getDate() - 1 );
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString() + "; path=/";
}


/**
 * ��¥�� ��,���� ���ڸ��϶� �տ� '0'�� �����Ͽ� ���ڸ��� ����
 * @param parm ���ڰ�
 * @returns
 */
function num2len(parm){
    var rtnVal = "";

    if(isNaN(parm)){
        return parm;
    }
    if(Number(parm) < 10){
        rtnVal = "0"+String(parm);
    }
    
    return rtnVal;
}

//����� �α׾ƿ� or Ȩ
function thisClose()
{
	/* 
	// �ǽ�ȯ�� â �ݰ� ��â����
	top.window.opener = top;
	top.window.open('','_parent','');
	top.window.close();
	window.open("/","_blank");
    */
    
    //traningSessInit();  //���� ��ü����
    traningCookieInit();  //��Ű ��ü����
    //ó���������� �̵�
    location.href = "/";
}
</script>






<%
    String isTraning = SessionUtil.getRequestValue(request, "goTraning", "");       //������ID
%>

<script type="text/javascript">
var isTraning = "<%=isTraning%>";   //�ǽ�ȯ��ó�� ���ٿ���. init �϶��� �ʱ�ȭ
var currentNow = new Date();
//�������� �������� YYYYMMDD
var currentNowDate = currentNow.getFullYear() + "" + num2len(currentNow.getMonth()+1) + ""+ num2len(currentNow.getDay());
var currentNowDate2 = currentNow.getFullYear() + "-" + num2len(currentNow.getMonth()+1) + "-"+ num2len(currentNow.getDay());

//cookie�� traning�� ��¥�� ������ �ƴ϶�� ��Ű���� �����Ѵ�.
/* if(getCookieTraning("TRANING_DT") != currentNowDate){
    
    setCookieTraning("traning", currentNowDate, 1);
    traningSetCookieInit();
    
} */

//�ǽ�ȯ�� �ٷΰ��� ���� �� �ʱ�ȭ
if(isTraning == "init"){
	traningCookieInit();   //�ǽ�ȯ����Ű�� �ʱ�ȭ
	//traningSessInit();   //�����ʱ�ȭ
}


//�ǽ�ȯ����Ű�� �ʱ�ȭ
function traningCookieInit(){
	deleteCookieTraning("T41_04_00");   //�߹�ŷ �̿��û
	deleteCookieTraning("T41_08_00");   //��������Ȯ��
	deleteCookieTraning("T41_08_10");   //��������Ȯ�� ������
}

//�ǽ�ȯ�� ��Ű�� �ʱ�ȭ
function traningSessInit(){
    
	dataCtrl.delAllData();
	/* 
    dataCtrl.delObjData("T11_01_00");
    dataCtrl.delObjData("T11_01_10");
    dataCtrl.delObjData("T11_01_20");
    dataCtrl.delObjData("T11_01_30");
    dataCtrl.delObjData("T12_01_00_0");
    dataCtrl.delObjData("T12_01_00_1");
    dataCtrl.delObjData("T12_01_10_0");
    dataCtrl.delObjData("T12_01_20_0");
    dataCtrl.delObjData("T12_01_30_0");
    dataCtrl.delObjData("T12_01_30_1");
    dataCtrl.delObjData("T12_01_30_2");
    dataCtrl.delObjData("T12_02_00");
    dataCtrl.delObjData("T12_02_10");
    dataCtrl.delObjData("T12_02_11");
    dataCtrl.delObjData("T12_02_20");
    dataCtrl.delObjData("T12_03_00");
    dataCtrl.delObjData("T12_03_01");
    dataCtrl.delObjData("T12_03_10");
    dataCtrl.delObjData("T12_03_20");
    dataCtrl.delObjData("T12_03_30");
    dataCtrl.delObjData("T12_03_40");
    dataCtrl.delObjData("T12_03_50");
    dataCtrl.delObjData("T14_01_00");
    dataCtrl.delObjData("T14_02_00");
    dataCtrl.delObjData("T21_01_00");
    dataCtrl.delObjData("T21_01_10");
    dataCtrl.delObjData("T22_01_00");
    dataCtrl.delObjData("T22_01_10");
    dataCtrl.delObjData("T22_01_20");
    dataCtrl.delObjData("T22_01_30");
    dataCtrl.delObjData("T23_01_00");
    dataCtrl.delObjData("T23_01_10");
    dataCtrl.delObjData("T23_01_20");
    dataCtrl.delObjData("T24_01_00");
    dataCtrl.delObjData("T24_01_10");
    dataCtrl.delObjData("T24_01_20");
    dataCtrl.delObjData("T24_01_30");
    dataCtrl.delObjData("T31_01_00");
    dataCtrl.delObjData("T31_01_10");
    dataCtrl.delObjData("T31_02_00");
    dataCtrl.delObjData("T33_01_00");
    dataCtrl.delObjData("T33_01_10");
    dataCtrl.delObjData("T33_01_20");
    dataCtrl.delObjData("T33_01_30");
    dataCtrl.delObjData("T34_01_00");
    dataCtrl.delObjData("T34_01_10");
    dataCtrl.delObjData("T35_01_00");
    dataCtrl.delObjData("T41_01_00");
    dataCtrl.delObjData("T41_02_00");
    dataCtrl.delObjData("T41_03_00");
    dataCtrl.delObjData("T41_03_10");
    dataCtrl.delObjData("T41_04_00");   //�߹�ŷ �̿��û
    dataCtrl.delObjData("T41_05_00");
    dataCtrl.delObjData("T41_06_00");
    dataCtrl.delObjData("T41_07_00");   //������ī��������
    dataCtrl.delObjData("T41_07_10");   //������ī�������� - �űԵ��
    dataCtrl.delObjData("T41_07_20");   //������ī�������� - ���������û
    dataCtrl.delObjData("T41_08_00");   //��������Ȯ��
    dataCtrl.delObjData("T41_08_10");   //��������Ȯ�� ������
    
    
    dataCtrl.delObjData("T41_07_10_KJ");
    dataCtrl.delObjData("T41_07_10_IB");
    dataCtrl.delObjData("T41_07_10_NH");
    dataCtrl.delObjData("T41_07_10_LT");
    dataCtrl.delObjData("T41_07_10_SS");
    dataCtrl.delObjData("T41_07_10_SH");
    dataCtrl.delObjData("T41_07_10_KE");
    dataCtrl.delObjData("T41_07_10_JB");
    dataCtrl.delObjData("T41_07_10_HD");
    dataCtrl.delObjData("T41_07_10_WRB");
    dataCtrl.delObjData("T41_07_10_BSB");
    dataCtrl.delObjData("T41_07_10_CTB");
    dataCtrl.delObjData("T41_07_10_DGB");
    dataCtrl.delObjData("T41_07_10_HNB");
    dataCtrl.delObjData("T41_07_10_KNB");
    dataCtrl.delObjData("T41_07_10_NHB");
    dataCtrl.delObjData("T41_07_10_SCB");
     */
}
</script>