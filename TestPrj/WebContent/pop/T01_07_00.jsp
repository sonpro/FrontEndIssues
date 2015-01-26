<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_07_00.jsp
 *   Description        : 이체확인증 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ================================================================================
 *   2014.01.21                     예기해             최초작성
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
<%@ page import="jex.json.JSONArray" %>
<%@ page import="jex.json.JSONObject" %>
<!-- //head end -->

<%
    String RchExpAcctBnkCd      = "A 은행";               // 연구비계좌은행코드         
    String RchExpAcctNo         = "100-00-000000";               // 연구비계좌번호

    String BzexId               = SessionUtil.getRequestValue(request,"BzexId");                // 과제명
    String SbjtNm               = SessionUtil.getRequestValue(request,"SbjtNm");                // 과제명
    String ExctnSt              = SessionUtil.getRequestValue(request,"ExctnSt");               // 사용처리상태
    String RcvAcctNo            = SessionUtil.getRequestValue(request,"RcvAcctNo");             // 입금계좌번호
    String RcvBnkCd             = SessionUtil.getRequestValue(request,"RcvBnkCd");              // 입금은행코드               
    String ExctnExecDt          = SessionUtil.getRequestValue(request,"ExctnExecDt");           // 사용실행일자               
    String ExctnExecTm          = SessionUtil.getRequestValue(request,"ExctnExecTm");           // 사용실행시간               
    String WdrwPsbkPrtCtt       = SessionUtil.getRequestValue(request,"RchExpAcctWdrwCtt");     // 내통장표시내용
    String OwacNm               = SessionUtil.getRequestValue(request,"OwacNm");                // 수취인
    String TrnsAmt              = SessionUtil.getRequestValue(request,"TrnsAmt");               // 이체금액
    String RcvPsbkPrtCtt        = SessionUtil.getRequestValue(request,"RcvAcctRcvCtt");         // 수취인통장인쇄내용
    
    String strTrns = "";
                
%>

<title>이체확인증 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">이체확인증</p>
        </div>
        <!-- //head title// --> 
    </div>



<script type="text/javascript">
/******************************************************************
 * uf_print         이체결과확인증 출력
 * @param
 * @return
******************************************************************/
function uf_print(){
    window.onbeforeprint = beforePrintDivs;
    window.onafterprint = afterPrintDivs;
    window.print();
}
/******************************************************************
 * beforePrintDivs          인쇄전원본컨텐츠가림-인쇄영역만화면출력
 * @param
 * @return
******************************************************************/
function beforePrintDivs(){
    document.getElementById("non_print1").style.display = "none"; 
    document.getElementById("head").style.display = "inline";
    document.getElementById("foot").style.display = "none";
    $('iframe').hide();
}
/******************************************************************
 * afterPrintDivs           인쇄후원본컨텐츠표시
 * @param
 * @return
******************************************************************/
function afterPrintDivs(){
    document.getElementById("non_print1").style.display = "block";
    document.getElementById("head").style.display = "inline";
    document.getElementById("foot").style.display = "block";
}
</script>



        <div id="body" style="margin:-48px 0 -25px;"> 
            <!-- content start -->
            <div id="content">
                <div align="right">
                    <img src="/pop/ysj_img_add01.gif">
                </div>  
                <!-- 이체확인증 start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="이체확인증" class="tbl_type02">
                    <caption>이체확인증</caption>
                    <colgroup>
                        <col width="25%" />
                        <col width="75%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">처리일시</th>
                        <td colspan="2" class="ll"><%=FormatUtil.setDelim(ExctnExecDt,"9999-99-99")+" "+FormatUtil.setDelim(ExctnExecTm,"99:99:99") %></td>
                    </tr>
                    <tr>
                        <th scope="row">이체결과</th>
                        <td colspan="2" class="ll"><%=CodeUtil.getCode("RNDB04_2", ExctnSt) %></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //이체확인증 end// -->
                <h3>출금/입금내역</h3>
                <!-- 출금입금내역 start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="출금/입금내역" class="tbl_type02">
                    <caption>출금/입금내역</caption>
                    <colgroup>
                        <col width="25%" />
                        <col width="75%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">과제명</th>
                        <td colspan="2" class="ll"><%=SbjtNm %></td>
                    </tr>
                    <tr>
                        <th scope="row">출금은행</th>
                        <td colspan="2" class="ll"><%=RchExpAcctBnkCd %></td>
                    </tr>
                    <tr>
                        <th scope="row">출금계좌번호</th>
                        <td colspan="2" class="ll"><%=RchExpAcctNo %></td>
                    </tr>
                    <tr>
                        <th scope="row">내통장표시내용</th>
                        <td colspan="2" class="ll"><%=WdrwPsbkPrtCtt %></td>
                    </tr>
                    <tr>
                        <th scope="row">입금계좌번호</th>
                        <td colspan="2" class="ll"><%=AcctFormatUtil.getAcctForm( RcvAcctNo,RcvBnkCd,"01") %></td>
                    </tr>
                    <tr>
                        <th scope="row">입금은행</th>
                        <td colspan="2" class="ll"><%=CodeUtil.getCode("BNK_CD",RcvBnkCd) %></td>
                    </tr>
                    <tr>
                        <th scope="row">수취인</th>
                        <td colspan="2" class="ll"><%=OwacNm %></td>
                    </tr>
                    <tr>
                        <th scope="row">이체금액</th>
                        <td colspan="2" class="ll"><%=FormatUtil.getMoneyForm(TrnsAmt) %> <%=strTrns %></td>
                    </tr>
                    <tr>
                        <th scope="row">수취인통장표시내용</th>
                        <td colspan="2" class="ll"><%=RcvPsbkPrtCtt %></td>
                    </tr>
                    </tbody>
                    </table>
                    <div class="t10">
                        <p class="guide_bu t10">위의 내용이 정상적으로 처리되었음을 확인합니다.</p>
                        <p class="guide_bu t10">이체확인증은 고객 편의를 위하여 제공되는것으로 거래의 참고용으로만 사용될 수 있습니다.</p>
                    </div>      
                </div>
                <div class="t10 ar" id="non_print1">
                    <a href="#" onclick="uf_print();"><img src="/bt/bt_print.gif" alt="인쇄"/></a>
                </div>      
                <!-- //출금입금내역 end// --> 
            </div>
            <!-- //content end// -->
        </div>



<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 

