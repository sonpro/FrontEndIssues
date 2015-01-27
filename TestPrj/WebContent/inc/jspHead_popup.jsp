<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="texts/javascript" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" type="text/css" href="/style/pop.css" />
<link rel="stylesheet" type="text/css" href="/style/rcms_pt.css" />
<link rel="StyleSheet" type="text/css" href="/js/dtree/dtree.css" />
<link rel="stylesheet" type="text/css" href="/js/calendar/calendar.css" />
<link rel="stylesheet" type="text/css" href="/js/fancybox/jquery.fancybox-1.3.2.css" media="screen" />
<script type="text/javascript" src="http://dev.jquery.com/view/trunk/plugins/autocomplete/lib/jquery.bgiframe.min.js"></script>
<script type="text/javascript" src="http://dev.jquery.com/view/trunk/plugins/autocomplete/lib/jquery.dimensions.js"></script>
<script type="text/javascript" src="http://dev.jquery.com/view/trunk/plugins/autocomplete/jquery.autocomplete.js"></script>
<script type="text/javascript" src="/js/dtree/dtree_menu.js"></script>





<script type="text/javascript" src="/traning/js/common.js"></script>

<script type="text/javascript" src="/traning/js/pt_common.js"></script>
<script type="text/javascript" src="/js/tooltip.js"></script>
<script type="text/javascript" src="/js/pt_cpcg_common.js"></script>
<script type="text/javascript" src="/traning/js/common_pop.js"></script>
<script type="text/javascript" src="/js/dtr.js"></script>
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

var currentNow = new Date();
//�������� �������� YYYYMMDD
var currentNowDate = currentNow.getFullYear() + "" + num2len(currentNow.getMonth()+1) + ""+ num2len(currentNow.getDay());
var currentNowDate2 = currentNow.getFullYear() + "-" + num2len(currentNow.getMonth()+1) + "-"+ num2len(currentNow.getDay());


</script>