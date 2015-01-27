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
 * 쿠키값 추출
 * @param cookieName 쿠키명
 */
function getCookieTraning( cookieName )
{
    var search = cookieName + "=";
    var cookie = document.cookie;

    // 현재 쿠키가 존재할 경우
    if( cookie.length > 0 )
    {
        // 해당 쿠키명이 존재하는지 검색한 후 존재하면 위치를 리턴.
        startIndex = cookie.indexOf( cookieName );

        // 만약 존재한다면
        if( startIndex != -1 )
        {
            // 값을 얻어내기 위해 시작 인덱스 조절
            startIndex += cookieName.length;

            // 값을 얻어내기 위해 종료 인덱스 추출
            endIndex = cookie.indexOf( ";", startIndex );

            // 만약 종료 인덱스를 못찾게 되면 쿠키 전체길이로 설정
            if( endIndex == -1) endIndex = cookie.length;

            // 쿠키값을 추출하여 리턴
            return unescape( cookie.substring( startIndex + 1, endIndex ) );
        }
        else
        {
            // 쿠키 내에 해당 쿠키가 존재하지 않을 경우
            return false;
        }
    }
    else
    {
        // 쿠키 자체가 없을 경우
        return false;
    }
}

/**
 * 쿠키 설정
 * @param cookieName 쿠키명
 * @param cookieValue 쿠키값
 * @param expireDay 쿠키 유효날짜
 */
function setCookieTraning( cookieName, cookieValue, expireDate )
{
    var today = new Date();
    today.setDate( today.getDate() + parseInt( expireDate ) );
    document.cookie = cookieName + "=" + escape( cookieValue ) + "; path=/; expires=" + today.toGMTString() + ";";
}

/**
 * 쿠키 삭제
 * @param cookieName 삭제할 쿠키명
 */
function deleteCookieTraning( cookieName )
{
    var expireDate = new Date();
    
    //어제 날짜를 쿠키 소멸 날짜로 설정한다.
    expireDate.setDate( expireDate.getDate() - 1 );
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString() + "; path=/";
}


/**
 * 날짜의 월,일이 한자리일때 앞에 '0'을 삽입하여 두자리로 변경
 * @param parm 날자값
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
//오늘일자 가져오기 YYYYMMDD
var currentNowDate = currentNow.getFullYear() + "" + num2len(currentNow.getMonth()+1) + ""+ num2len(currentNow.getDay());
var currentNowDate2 = currentNow.getFullYear() + "-" + num2len(currentNow.getMonth()+1) + "-"+ num2len(currentNow.getDay());


</script>