<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_11_00.jsp 
 *   Description        : 전자세금계산서 조회
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ================================================================================
 *   2014.01.10                     예기해             최초작성
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


<title>전자세금계산서 조회 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">전자세금계산서 조회</p>
        </div>
        <!-- //head title// --> 
    </div>



    <div id="body"> 
        <!-- content start -->
        <form name="frm" method="post">
        <div id="content">
            <div class="t20"></div>
            <div><b>승인번호:</b> 201401010000000000001</div>
            <!-- 전자세금계산서 start -->
            <div class="t10 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="전자세금계산서 공급자 공급받는자">
                <caption>전자세금계산서 공급자 공급받는자</caption>
                <colgroup>
                    <col width="5%" />
                    <col width="9%" />
                    <col width="15%" />
                    <col width="10%" />
                    <col width="12%" />
                    <col width="5%" />
                    <col width="9%" />
                    <col width="15%" />
                    <col width="10%" />
                    <col width="12%" />
                </colgroup>
                <tbody>
                <tr>
                    <th rowspan="6" scope="row" class="bill_thred02">공<br />급<br />자</th>
                    <th scope="row" class="bill_thred">등록번호</th>
                    <td class="bill_tdred" id="PROV_REG_NUMBER">100-10-10000</td>
                    <th scope="row" class="bill_thred01">종사업장번호</th>
                    <td class="bill_tdred01" id="PROV_OTHER_REGNO"></td>
                    <td rowspan="6" class="bill_thblue02">공<br />급<br />받<br />는<br />자</td>
                    <td class="bill_thblue">등록번호</td>
                    <td class="bill_tdblue" id="RECE_REG_NUMBER">111-11-11111</td>
                    <td class="bill_thblue01">종사업장번호</td>
                    <td class="bill_tdblue" id="RECE_OTHER_REGNO"></td>
                </tr>
                <tr>
                    <th scope="row" class="bill_thred">상호</th>
                    <td class="bill_tdred" id="PROV_COMPANY_NM">(주) 가 업체</td>
                    <th scope="row" class="bill_thred01">성명</th>
                    <td class="bill_tdred01" id="PROV_CEO_NAME">가사장</td>
                    <td class="bill_thblue">상호</td>
                    <td class="bill_tdblue" id="RECE_COMPANY_NAME">(주) RCMS</td>
                    <td class="bill_thblue01">성명</td>
                    <td class="bill_tdblue" id="RECE_CEO_NAME">산기평</td>
                </tr>
                <tr>
                    <th scope="row" class="bill_thred">사업장</th>
                    <td colspan="3" class="bill_tdred01" id="PROV_BUSINESS_PLACE">인천광역시 남동구 구월동 1138</td>
                    <td class="bill_thblue">사업장</td>
                    <td colspan="3" class="bill_tdblue" id="RECE_BUSINESS_PLACE">대전광역시 유성구 화암동 58-4</td>
                </tr>
                <tr>
                    <th height="39" scope="row" class="bill_thred">업태</th>
                    <td class="bill_tdred" id="PROV_BUSINESS_CATEGORY">연구</td>
                    <th scope="row" class="bill_thred01">종목</th>
                    <td class="bill_tdred01" id="PROV_BUSINESS_TYPE">개발</td>
                    <td class="bill_thblue">업태</td>
                    <td class="bill_tdblue" id="RECE_BUSINESS_CATEGORY">연구</td>
                    <td class="bill_thblue01">종목</td>
                    <td class="bill_tdblue" id="RECE_BUSINESS_TYPE">개발</td>
                </tr>
                <tr>
                    <th rowspan="2"  scope="row" class="bill_thred02">이메일</th>
                    <td rowspan="2" colspan="3" class="bill_tdred02" id="PROV_EMAIL">gaBusiness@business.net</td>
                    <td class="bill_thblue">이메일</td>
                    <td colspan="3" class="bill_tdblue" id="RECE_EMAIL1">test@keit.re.kr</td>
                </tr>
                <tr>
                    <td class="bill_thblue02">이메일</td>
                    <td colspan="3" class="bill_tdblue02"  id="RECE_EMAIL2"></td>
                </tr>
                </tbody>
                </table>
            </div>  
            <!-- //전자세금계산서 end// --> 
            <!-- 전자세금계산서 상세내용1 start -->
            <div class="t20 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="전자세금계산서 상세내용" class="tbl_type03">
                <caption>전자세금계산서 상세내용</caption>
                <colgroup>
                    <col width="15%" />
                    <col width="15%" />
                    <col width="15%" />
                    <col width="30%" />
                    <col width="25%" />
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">작성일자</th>
                    <th scope="col">공급가액</th>
                    <th scope="col">부가가치세액</th>
                    <th scope="col">수정사유</th>
                    <th scope="col">비고</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="ac">2014-10-20</td>
                    <td class="ar">1,000</td>
                    <td class="ar">100</td>
                    <td class="ar"></td>
                    <td></td>
                </tr>
                </tbody>
                </table>
            </div>
            <!-- //전자세금계산서 상세내용1 end// -->
            <!-- 전자세금계산서 상세내용2 start -->
            <div class="t20 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="전자세금계산서 상세내용" class="tbl_type03">
                <caption>전자세금계산서 상세내용</caption>
                <colgroup>
                    <col width="8%" />
                    <col width="8%" />
                    <col width="20%" />
                    <col width="8%" />
                    <col width="8%" />
                    <col width="8%" />
                    <col width="10%" />
                    <col width="15%" />
                    <col width="15%" />
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">월</th>
                    <th scope="col">일</th>
                    <th scope="col">품목</th>
                    <th scope="col">규격</th>
                    <th scope="col">수량</th>
                    <th scope="col">단가</th>
                    <th scope="col">공급가액</th>
                    <th scope="col">부가가치세액</th>
                    <th scope="col">비고</th>
                </tr>
                </thead>
                <tbody>
                
                <tr>
                    <td class="ac">01</td>
                    <td class="ac">20</td>
                    <td>장비구입비</td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ar">1,000</td>
                    <td class="ar">100</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ar"></td>
                    <td class="ar"></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ar"></td>
                    <td class="ar"></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ac"></td>
                    <td class="ar"></td>
                    <td class="ar"></td>
                    <td></td>
                </tr>

                </tbody>
                </table>
            </div>
            <!-- //전자세금계산서 상세내용2 end// -->
            <!-- 전자세금계산서 상세내용3 start -->
            <div class="t20 pop_wh">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="전자세금계산서 상세내용" class="tbl_type03">
                <caption>전자세금계산서 상세내용</caption>
                <colgroup>
                    <col width="15%" />
                    <col width="15%" />
                    <col width="15%" />
                    <col width="15%" />
                    <col width="15%" />
                    <col width="*" />
                </colgroup>
                <tbody>
                <tr>
                    <th scope="col">합계금액</th>
                    <th scope="col">현금</th>
                    <th scope="col">수표</th>
                    <th scope="col">어음</th>
                    <th scope="col">외상미수금</th>
                    <td rowspan="2" class="ac">이 금액을 청구 함</td>
                </tr>
                <tr>
                    <td class="ar" id="TOTAL_AMT">1,100</td>
                    <td class="ar">0</td>
                    <td class="ar">0</td>
                    <td class="ar">0</td>
                    <td class="ar">1,100</td>
                </tr>
                </tbody>
                </table>
            </div>
            <!-- //전자세금계산서 상세내용3 end// -->
   
        </div>
        <!-- //content end// -->
        </form>
    </div>



<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 

