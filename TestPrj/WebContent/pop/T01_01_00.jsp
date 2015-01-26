<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_01_00.jsp
 *   Description        : 가상계좌발급증명서 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================================
 *   2013.12.23                     예기해                 
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
<%@ page import="jex.json.JSONArray" %>
<%@ page import="jex.json.JSONObject" %>
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->

<%

String AgrmtSeqNo                   = StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtSeqNo"));            // 협약일련번호                  
String AgrmtInstId                  = StringUtil.null2void(SessionUtil.getRequestValue(request,"AgrmtInstId"));           // 협약기관ID
String RegDt                        = SessionUtil.getRequestValue(request,"RegDt");                       // 요청일자
String RegDrtm                      = SessionUtil.getRequestValue(request,"RegDrtm");                     // 요청시간
String IssuAcctNo                   = SessionUtil.getRequestValue(request,"IssuAcctNo");                  // 발급계좌번호
String IssuBnkCd                    = SessionUtil.getRequestValue(request,"IssuBnkCd");                   // 발급은행코드
String AvblDate                     = SessionUtil.getRequestValue(request,"AvblDate");                    // 유효기간
String RcvAmt                       = SessionUtil.getRequestValue(request,"RcvAmt");                      // 입금금액
String InqDv                        = SessionUtil.getRequestValue(request,"InqDv");                       // 요청구분
String Dv                           = SessionUtil.getRequestValue(request,"Dv");                          // 요청구분코드

String BzNm = "";
String SbjtNm = "";

JSONObject resultData = new JSONObject();
JSONObject accountData = new JSONObject();

//1. 신규과제
if("G00000000000001".equals(AgrmtSeqNo)){
	BzNm = "RCMS 실습";
	SbjtNm = "RCMS 실습용 신규과제";
	
	resultData.put("SbjtId"             , "TEST0002"                        );  //과제번호
	resultData.put("CpcgInstNm"         , "한국산업기술평가관리원"          );  //전담기관
	resultData.put("MainInstNm"         , "㈜RCMS"                          );  //주관기관
	resultData.put("PrsSbjtStg"         , "0"                               );  //단계
	resultData.put("Annl"               , "1"                               );  //년차
	resultData.put("AgrmtInstNm"        , "㈜RCMS"                          );  //기관명
	resultData.put("AgrmtInstBzRegNo"   , "111-11-11111"                    );  //사업자등록번호
	resultData.put("AgrmtInstRoleDv"    , "주관기관"                        );  //참여역할
	resultData.put("DevStrDt"           , "2014.01.01~2099.01.31(99개월)"   );  //당해개발기간
	resultData.put("InstTotlInstAmt"    , "130,000"                         );  //당해총사업비
	resultData.put("ExctnLimtSt"        , "정상"                            );  //사용가능상태


	accountData.put("IssuBnkCd"      , "A 은행"       );  //입금은행
	accountData.put("IssuAcctNo"     , "100-00-000000"       );  //입금계좌번호
	accountData.put("RcvAmt"         , RcvAmt       );  //입금금액
	accountData.put("AgrmtInstNm"    , "㈜RCMS"       );  //예금주명
	accountData.put("AvblDate"       , AvblDate       );  //입금기한
	accountData.put("InqDv"          , InqDv       );  //발급사유
  
//2. 진행과제
}else if("G00000000000002".equals(AgrmtSeqNo)){
	BzNm = "RCMS 실습";
    SbjtNm = "RCMS 실습용 진행과제";
    
    resultData.put("SbjtId"             , "TEST0002"                        );  //과제번호
    resultData.put("CpcgInstNm"         , "한국산업기술평가관리원"          );  //전담기관
    resultData.put("MainInstNm"         , "㈜RCMS"                          );  //주관기관
    resultData.put("PrsSbjtStg"         , "0"                               );  //단계
    resultData.put("Annl"               , "1"                               );  //년차
    resultData.put("AgrmtInstNm"        , "㈜RCMS"                          );  //기관명
    resultData.put("AgrmtInstBzRegNo"   , "111-11-11111"                    );  //사업자등록번호
    resultData.put("AgrmtInstRoleDv"    , "주관기관"                        );  //참여역할
    resultData.put("DevStrDt"           , "2014.01.01~2099.01.31(99개월)"   );  //당해개발기간
    resultData.put("InstTotlInstAmt"    , "130,000"                         );  //당해총사업비
    resultData.put("ExctnLimtSt"        , "정상"                            );  //사용가능상태


    accountData.put("IssuBnkCd"      , "A 은행"       );  //입금은행
    accountData.put("IssuAcctNo"     , "100-00-000000"       );  //입금계좌번호
    accountData.put("RcvAmt"         , RcvAmt       );  //입금금액
    accountData.put("AgrmtInstNm"    , "㈜RCMS"       );  //예금주명
    accountData.put("AvblDate"       , AvblDate       );  //입금기한
    accountData.put("InqDv"          , InqDv       );  //발급사유
  
//3. 정산과제(보고서 미제출)
}else if("G00000000000003".equals(AgrmtSeqNo)){
	BzNm = "RCMS 실습";
    SbjtNm = "RCMS 실습용 정산과제";
    
    resultData.put("SbjtId"             , "TEST0003"                        );  //과제번호
    resultData.put("CpcgInstNm"         , "한국산업기술평가관리원"          );  //전담기관
    resultData.put("MainInstNm"         , "㈜RCMS"                          );  //주관기관
    resultData.put("PrsSbjtStg"         , "0"                               );  //단계
    resultData.put("Annl"               , "1"                               );  //년차
    resultData.put("AgrmtInstNm"        , "㈜RCMS"                          );  //기관명
    resultData.put("AgrmtInstBzRegNo"   , "111-11-11111"                    );  //사업자등록번호
    resultData.put("AgrmtInstRoleDv"    , "주관기관"                        );  //참여역할
    resultData.put("DevStrDt"           , "2013.03.01~2014.02.28(12개월)"   );  //당해개발기간
    resultData.put("InstTotlInstAmt"    , "130,000"                         );  //당해총사업비
    resultData.put("ExctnLimtSt"        , "정지"                            );  //사용가능상태


    accountData.put("IssuBnkCd"      , "A 은행"       );  //입금은행
    accountData.put("IssuAcctNo"     , "100-00-000000"       );  //입금계좌번호
    accountData.put("RcvAmt"         , RcvAmt       );  //입금금액
    accountData.put("AgrmtInstNm"    , "㈜RCMS"       );  //예금주명
    accountData.put("AvblDate"       , AvblDate       );  //입금기한
    accountData.put("InqDv"          , InqDv       );  //발급사유
  
//4. 정산과제(보고서 제출 완료)
}else if("G00000000000004".equals(AgrmtSeqNo)){
	BzNm = "RCMS 실습";
    SbjtNm = "RCMS 실습용 정산과제";
    
    resultData.put("SbjtId"             , "TEST0004"                        );  //과제번호
    resultData.put("CpcgInstNm"         , "한국산업기술평가관리원"          );  //전담기관
    resultData.put("MainInstNm"         , "㈜RCMS"                          );  //주관기관
    resultData.put("PrsSbjtStg"         , "0"                               );  //단계
    resultData.put("Annl"               , "1"                               );  //년차
    resultData.put("AgrmtInstNm"        , "㈜RCMS"                          );  //기관명
    resultData.put("AgrmtInstBzRegNo"   , "111-11-11111"                    );  //사업자등록번호
    resultData.put("AgrmtInstRoleDv"    , "주관기관"                        );  //참여역할
    resultData.put("DevStrDt"           , "2013.02.01~2014.01.31(12개월)"   );  //당해개발기간
    resultData.put("InstTotlInstAmt"    , "130,000"                         );  //당해총사업비
    resultData.put("ExctnLimtSt"        , "정지"                            );  //사용가능상태


    accountData.put("IssuBnkCd"      , "A 은행"       );  //입금은행
    accountData.put("IssuAcctNo"     , "100-00-000000"       );  //입금계좌번호
    accountData.put("RcvAmt"         , RcvAmt       );  //입금금액
    accountData.put("AgrmtInstNm"    , "㈜RCMS"       );  //예금주명
    accountData.put("AvblDate"       , AvblDate       );  //입금기한
    accountData.put("InqDv"          , InqDv       );  //발급사유
  
}


String date = DateUtil.getDate("YYYYMMDD");
String year = date.substring(0, 4);
String month = date.substring(4, 6);
String day = date.substring(6);


%>

<title>가상계좌 발급 증명서 &gt; RCMS 실시간통합연구비관리시스템 C-1 </title>
</head>
<body>

	<div id="head"> 
	    <!-- head title -->
	    <div class="title">
	        <p class="pop_title">가상계좌 발급 증명서</p>
	    </div>
	    <!-- //head title// --> 
	</div>

        <div id="body">
            <!-- content start -->
            <div id="content">
                <div class="docu_title"><img src="/pop/docu_t1.gif" alt="RCMS 가상계좌 발급 증명서"/></div>
                <h3>발급과제정보</h3>
                <!-- 사업명/과제명 리스트 start -->
                <div class="t10 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사업명/과제명 리스트" class="tbl_type02">
                    <caption>사업명/과제명 리스트</caption>
					<colgroup>
						<col width="20%" />
						<col width="*" />
					</colgroup>
					<tbody>
					<tr>
						<th scope="row">사업명</th>
						<td colspan="3" class="ll"><nobr style="text-overflow:ellipsis;overflow:hidden;"><%=BzNm %></nobr></td>
					</tr>
					<tr>
						<th scope="row">과제명</th>
						<td colspan="3" class="ll"><nobr style="text-overflow:ellipsis;overflow:hidden;"><%=SbjtNm %></nobr></td>
					</tr>
					</tbody>
					</table>
                </div>
                <!-- //사업명/과제명 리스트 end// -->
                <!-- 발급과제정보 리스트 start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="발급과제정보" class="tbl_type03">
                    <caption>발급과제정보</caption>
					<colgroup>
						<col width="8%"/>
						<col width="11%" span="2"/>
						<col width="20%"/>
						<col width="10%"/>
						<col width="10%"/>
					</colgroup>
                    <thead>
					<tr>
						<th scope="col">과제번호</th>
						<th scope="col" colspan="2">전담기관</th>
						<th scope="col">주관기관</th>
						<th scope="col">단계</th>
						<th scope="col">년차</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="ac"><%=resultData.get("SbjtId") %></td>
						<td colspan="2"><%=resultData.get("CpcgInstNm") %></td>
						<td class="ac"><%=resultData.get("MainInstNm") %></td>
						<td class="ar"><%=resultData.get("PrsSbjtStg") %></td>
						<td class="ar"><%=resultData.get("Annl") %></td>
					</tr>
					<tr>
						<th scope="col">기관명</th>
						<th scope="col">사업자등록번호</th>
						<th scope="col">참여역할</th>
						<th scope="col">당해개발기간</th>
						<th scope="col">당해총사업비</th>
						<th scope="col">사용가능상태</th>
					</tr>
					<tr>
						<td class="ac"><%=resultData.get("AgrmtInstNm") %></td>
						<td><%=resultData.get("AgrmtInstBzRegNo") %></td>
						<td class="ac"><%=resultData.get("AgrmtInstRoleDv") %></td>
						<td class="ac"><%=resultData.get("DevStrDt") %></td>
						<td class="ac"><%=resultData.get("InstTotlInstAmt") %></td>
						<td class="ac"><%=resultData.get("ExctnLimtSt") %></td>
					</tr>
					</tbody>
					</table>
                </div>
                <!-- //발급과제정보 리스트 end// -->
                <h3>가상계좌 정보</h3>
                <!-- 가상계좌정보 리스트 start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="가상계좌 정보 리스트" class="tbl_type03">
                    <caption>가상계좌 정보</caption>
					<colgroup>
						<col width="10%"/>
						<col width="15%"/>
						<col width="15%"/>
						<col width="25%"/>
						<col width="20%"/>
						<col width="15%"/>
					</colgroup>
					<thead>
					<tr>
						<th scope="col">입금은행</th>
						<th scope="col">입금계좌번호</th>
						<th scope="col">입금금액</th>
						<th scope="col">예금주명</th>
						<th scope="col">입금기한</th>
						<th scope="col">발급사유</th>
					</tr>
					</thead>
					<tbody>
					<tr>
                        <td class="ac"><%=accountData.get("IssuBnkCd") %></td>
                        <td class="ac"><%=accountData.get("IssuAcctNo") %></td>
                        <td class="ar"><%=FormatUtil.getMoneyForm(accountData.getString("RcvAmt"))   %></td>
                        <td class="ac"><%=accountData.get("AgrmtInstNm")%></td>
                        <td class="ac"><%=accountData.get("AvblDate") %></td>
                        <td class="ac"><%=accountData.get("InqDv") %></td>
					</tr>
					</tbody>
					</table>
                </div>
                <!-- //가상계좌 리스트 end// -->
                <div class="docu_txt"><img src="/pop/docu_txt1.gif" alt="위의 기관에 가상계좌가 발급되었음을 증명합니다."/></div>
                <div class="docu_date">
                    <span id="yyyy"><%=year %></span> 년
                    <span id="mm"><%=month %></span> 월
                    <span id="dd"><%=day %></span> 일                
                </div>
                <div class="docu_stamp"><img src="/pop/docu_stamp.gif" alt="확 인 자: 한국산업기술평가관리원장"/></div>
                <div class="docu_logo"><img src="/pop/mke_logo.gif" alt="지식경제부 로고"/></div>
                <div class="ar" id="non_print2"><a href="#" onclick="uf_print(); return false;"><img src="/bt/bt_print.gif" alt="인쇄" /></a></div>
            </div>
            <!-- //content end// -->
        </div>



<!-- //content end// -->


<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 


<script type="text/javascript">
/******************************************************************
 * uf_print         이체결과확인증 출력
 * @param
 * @return
******************************************************************/
function uf_print(){
    //window.onbeforeprint = beforePrintDivs;
    //window.onafterprint = afterPrintDivs;
    window.print();
}
/******************************************************************
 * beforePrintDivs          인쇄전원본컨텐츠가림-인쇄영역만화면출력
 * @param
 * @return
******************************************************************/
function beforePrintDivs(){
    document.getElementById("non_print2").style.display = "none";
    document.getElementById("head").style.display = "none";
    document.getElementById("foot").style.display = "none";
}
/******************************************************************
 * afterPrintDivs           인쇄후원본컨텐츠표시
 * @param
 * @return
******************************************************************/
function afterPrintDivs(){
    document.getElementById("non_print2").style.display = "block";
    document.getElementById("head").style.display = "block";
    document.getElementById("foot").style.display = "block";
}
</script>

</body>
</html> 