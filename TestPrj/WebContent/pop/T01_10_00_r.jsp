<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_10_00.jsp
 *   Description        : 자주쓰는사업자 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ================================================================================
 *   2013.12.24                     예기해             최초작성
 * 
 *  @author 
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
<script type="text/javascript" src="/js/common.js"></script>

<script type="text/javascript" src="/js/pt_common.js"></script>
<script type="text/javascript" src="/js/tooltip.js"></script>
<script type="text/javascript" src="/js/pt_cpcg_common.js"></script>
<script type="text/javascript" src="/js/common_pop.js"></script>
<script type="text/javascript" src="/js/dtr.js"></script>

<script type="text/javascript" src="/xgrid/js/xgrid.js"></script>
<script type="text/javascript" src="/xgrid/js/sgrid2xgrid.js"></script>
<script type="text/javascript" src="/xgrid/js/xgridCommon.js"></script>

<script type="text/javascript" src="/js/calendar/calendar.js"></script>
<script type="text/javascript" src="/js/calendar/tagCalendar.js"></script>

<script type="text/javascript" src="/js/arItxp.jsp"></script>
<script type="text/javascript" src="/js/gridAdtnRegBtnEvt.js"></script>

<script type="text/javascript" src="/js/autoComplete/lib/json2.js"></script>
<script type="text/javascript" src="/js/autoComplete/lib/jquery-1.5.2.js"></script>
<script type="text/javascript" src="/js/autoComplete/jex/jex.core.min.euckr.js"></script>
<script type="text/javascript" src="/js/autoComplete/jexPlugin/jex.autocomplete.euckr.js"></script>
<script type="text/javascript" src="/js/jquery.alerts-1.1/jquery.alerts.js"></script>
<script type="text/javascript" src="/js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript" src="/js/fancybox/jquery.fancybox-1.3.2.js"></script>

<script type="text/javascript" src="/js/validate.js"></script>
<script type="text/javascript" src="/js/layer_pop.js"></script>

<script type="text/javascript" src="/js/xtree/xtree.js"></script>
<script type="text/javascript" src="/js/menu.js"></script>
<script type="text/javascript" src="/js/quick.js"></script>


<script type="text/javascript" src="/XecureObject/xecureweb.js"></script>
<script type="text/javascript" src="/js/ib2_common.js"></script>



<script src="/rMateGrid/LicenseKey/rMateGridLicense.js" language="javascript"></script>

<script type="text/javaScript" src="/rMateGrid/Samples/JS/AC_OETags.js"></script>
<script type="text/javaScript" src="/rMateGrid/Samples/JS/rMateGrid.js"></script>
<script type="text/javaScript" src="/rMateGrid/Samples/JS/rMateGridLicense.js"></script>
<script type="text/javaScript" src="/rMateGrid/Samples/JS/rMateGrid_common.js"></script>
<!-- //head end -->

<title> &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
<link type="text/css" rel="stylesheet" href="/js/xtree/xtree.css">
</head>


<body>
<noscript><p id="warning_script">자바스크립트가 동작하지 않을 시 디자인이 정상적으로 보이지 않을 수 있습니다.</p></noscript>

<script type="text/javascript">

    //////////////////////////////////
    //계좌 Radio 선택된값 셋팅
    //////////////////////////////////
    function uf_SetValue(BzaqBzRegNo,BzaqCoNm,BzaqTpopNm,BzaqTpbzNm,BzaqReprNm,BzaqEnplcAdr,RcvAcctNo1,FncInstCd1,RcvAcctNo2,FncInstCd2){
        var frm = parent.document.frm;

        
        parent.uf_Set(BzaqBzRegNo,BzaqCoNm,BzaqTpopNm,BzaqTpbzNm,BzaqReprNm,BzaqEnplcAdr,RcvAcctNo1,FncInstCd1,RcvAcctNo2,FncInstCd2);
    }
    
    var tree = new WebFXTree('사업자목록');
    tree.setBehavior('classic');
    
		    var a = new WebFXTreeItem("(주) RCMS","javascript:uf_SetValue('1111111111','(주) RCMS','연구','개발','산기평','대전광역시 유성구 화암동 58-4','','','','');");
		    tree.add(a);
		
		    var a = new WebFXTreeItem("(주) 가 업체","javascript:uf_SetValue('1001010000','(주) 가 업체','연구','개발','가사장','인천광역시 남동구 구월동 1138','','','','');");
            tree.add(a);
    
            var a = new WebFXTreeItem("(주) 나 업체","javascript:uf_SetValue('2001010000','(주) 나 업체','연구','개발','나사장','울산광역시 남구 신정동 646-4','','','','');");
            tree.add(a);
            
            var a = new WebFXTreeItem("(주) 다 업체","javascript:uf_SetValue('3001010000','(주) 다 업체','연구','개발','다대표','세종특별자치시 조치원읍 신흥리 123','','','','');");
            tree.add(a);
            
            var a = new WebFXTreeItem("(주) 마 업체","javascript:uf_SetValue('5001010000','(주) 마 업체','연구','개발','마대표','서울특별시 중구 남대문로4가 29','','','','');");
            tree.add(a);
            
            var a = new WebFXTreeItem("(주) 바 업체","javascript:uf_SetValue('6001010000','(주) 바 업체','연구','개발','바대표','서울특별시 종로구 종로6가 288','','','','');");
            tree.add(a);
            
    document.write(tree);
    tree.collapseChildren();
    
</script>


</body>
</html> 
