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
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->

<%
    String RowIdx               = kr.go.rcms.web.util.SessionUtil.getRequestValue(request, "pRowIdx");  //비목우선 > row index
%>

<title>자주쓰는 사업자 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">자주쓰는 사업자</p>
        </div>
        <!-- //head title// --> 
    </div>



<script type="text/javascript">
function uf_sbmtSplr(){
    var frm = document.frm;
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                    try{   
                        uf_proce_display_on(true);
                        //fn_url("/pop/T01_10_00_r.jsp","sendIfrmTree");
                        frm.action = "/pop/T01_10_00_r.jsp";
                        frm.target = "sendIfrmTree";
                        frm.submit();
                        
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
    return false;
}

function uf_cnclSplr(){
    var frm = document.frm;
    $('#SrchWd').val('');
    uf_proce_display_on();  //로딩바
    
    setTimeout(
            function(){
                    try{   
                        uf_proce_display_on(true);
                        //fn_url("/pop/T01_10_00_r.jsp","sendIfrmTree");
                        frm.action = "/pop/T01_10_00_r.jsp";
                        frm.target = "sendIfrmTree";
                        frm.submit();
                        
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
    return false;
}
</script>

<script type="text/javascript">

    //////////////////////////////////
    //은행코드 계좌번호 return
    //////////////////////////////////
    function uf_Set(BzaqBzRegNo,BzaqCoNm,BzaqTpopNm,BzaqTpbzNm,BzaqReprNm,BzaqEnplcAdr,RcvAcctNo1,FncInstCd1,RcvAcctNo2,FncInstCd2){
        try{
            var frm = opener.document.frm;
            var ridx = "<%=RowIdx%>";
            if( ridx == "" || typeof frm.etc_SplrCoNm.length == 'undefined'){
                frm.etc_SplrCoNm.value = BzaqCoNm;          // 상호(법인명)
                frm.etc_SplrBzRegNo.value = BzaqBzRegNo.replace(/-/g,"");   // 사업자번호
                frm.etc_SplrAdr.value = BzaqEnplcAdr;       // 사업장주소   
                frm.etc_SplrTpopNm.value = BzaqTpopNm;      // 업태
                frm.etc_SplrTpbzNm.value = BzaqTpbzNm;      // 업종
                frm.etc_SplrReprNm.value = BzaqReprNm ;     // 성명(대표자)
            }else{
                frm.etc_SplrCoNm[ridx].value = BzaqCoNm;            // 상호(법인명)
                frm.etc_SplrBzRegNo[ridx].value = BzaqBzRegNo.replace(/-/g,"");     // 사업자번호
                frm.etc_SplrAdr[ridx].value = BzaqEnplcAdr;         // 사업장주소   
                frm.etc_SplrTpopNm[ridx].value = BzaqTpopNm;        // 업태
                frm.etc_SplrTpbzNm[ridx].value = BzaqTpbzNm;        // 업종
                frm.etc_SplrReprNm[ridx].value = BzaqReprNm ;       // 성명(대표자)              
                
            }

            window.close();
        }catch(e){
        }
    }

    //////////////////////////////////
    //조회
    //////////////////////////////////
    function uf_search(){
        var frm = document.frm;
        
        uf_proce_display_on();  //로딩바
        
        setTimeout(
                function(){
                        try{   
                        	uf_proce_display_on(true);
                            //fn_url("/pop/T01_10_00_r.jsp","sendIfrmTree");
                            frm.action = "/pop/T01_10_00_r.jsp";
                            frm.target = "sendIfrmTree";
                            frm.submit();
                            
                        }finally{
                            reset_submit();
                        }
                    
                    }, 1000);   // 1초후 실행 1000 = 1초s
                    
                    
    }

    //////////////////////////////////
    //입금계좌관리 바로가기
    //////////////////////////////////
    function uf_create(){
    	alert("실습환경에서는 지원하지않는 기능입니다.");
        return;
        
    }

</script>
<div id="body">
<!-- content start -->
  <div id="content">
    <div class="t20"></div>
    <div class="pop_line_gbox01">
      <div class="pop_line_gboxc01">
        <ul>
          <li>사업자를 클릭하시면 해당 사업자의 정보가 항목에 자동입력됩니다.</li>
          <li>자주쓰는 사업자는 과제별로 관리하지 않고, 기관별(수행기관)로 임의 관리합니다.</li>
        </ul>
      </div>
    </div>
    <div class="pop_action_bt ar"><a href="#" onclick="uf_create();" class="bt_action11-02" title="자주쓰는 입금계좌관리"><span class="bt_sp">자주쓰는 사업자 관리</span></a> </div>
    <!-- 입금계좌관리 start -->
    <div class="t20"></div>
    <!-- 트리메뉴 시작입니다 -->
    <form name="frm" method="post">
    <div class="tree_box">
      <div class="tree_boxc">
        <div style="width:320px;height:260px; overflow:hidden;">
          <!-- 메뉴트리 -->
          <div class="nav_tree">
            <!-- 1차 -->
            <div class="folder_box">
                <iframe name="sendIfrmTree" style="display:block;" frameborder="0" width="320" height="260" marginwidth="0" marginheight="0"></iframe>
            </div>
            <!-- //1차 -->
          </div>
          <!-- //메뉴트리 -->
        </div>
      </div>

    </div>
        <div style="padding:5px 0;text-align:right;width:365px;">
<input type="SrchWd" name="SrchWd" id="SrchWd" value="" class="inputl" size="25"/>
<a href="#dummy" onclick="uf_sbmtSplr(); return false;"><img src="/bt/bt_search_s.gif" alt="검색"/></a>
<a href="#dummy" onclick="uf_cnclSplr(); return false;"><img src="/bt/bt_cancel_s.gif" alt="취소"/></a>
</div>
    </form>
    <!-- //입금계좌관리 end// -->
  </div>
  <!-- //content end// -->
</div>

<script type="text/javascript">
window.onload = function(){
    uf_search();
}   
</script>



<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 

