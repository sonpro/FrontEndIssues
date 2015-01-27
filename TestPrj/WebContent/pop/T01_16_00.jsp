<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_16_00.jsp
 *   Description        : 카드매출전표 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ========================================================================================
 *   2013.12.16                     예기해             최초작성
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

<title>카드매출전표 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">카드매출전표</p>
        </div>
        <!-- //head title// --> 
    </div>
        <div id="body"> 
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <!-- 카드매출전표 start -->
                <div class="pop_cardbg">
                    <div class="pop_cardbox">
                        <table width="370" border="0" cellspacing="0" cellpadding="0" summary="카드매출전표" class="tbl_type07">
                        <caption>카드매출전표</caption>
                        <colgroup>
                            <col width="25%" />
                            <col width="35%" />
                            <col width="40%" />
                        </colgroup>
                        <thead>
                        <tr>
                            <th colspan="3" class="card_t"><img src="/pop/card_title.gif" alt="카드매출전표"/></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th colspan="2" scope="col">카드종류</th>
                            <th scope="col">거래유형</th>
                        </tr>
                        <tr>
                            <td colspan="2" scope="row">A 카드</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <th colspan="3" scope="row">회원번호</th>
                        </tr>
                        <tr>
                            <td colspan="3">1111-2222-3333-4444</td>
                        </tr>
                        <tr>
                            <th colspan="2" scope="row">거래 일시</th>
                            <th>취소시 원 거래일자</th>
                        </tr>
                        <tr>
                            <td colspan="2" scope="col">2014-02-20&nbsp;15:21:13</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <th scope="row">결재방법</th>
                            <td rowspan="2" class="ac">판매금액</td>
                            <td rowspan="2" class="ar">1,000</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <th scope="row">매입처</th>
                            <td rowspan="2" class="ac">부가가치세액</td>
                            <td rowspan="2" class="ar">100</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <th scope="row">전표매입사</th>
                            <td rowspan="2" class="ac">봉사료</td>
                            <td rowspan="2" class="ar">0</td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <th scope="row">품명</th>
                            <td rowspan="2" class="ac">합계</td>
                            <td rowspan="2" class="ar">1,100</td>
                        </tr>
                        <tr>
                            <td>연구</td>
                        </tr>
                        <tr>
                            <th colspan="2" scope="row">가맹점명</th>
                            <th>&nbsp;</th>
                        </tr>
                        <tr>
                            <td colspan="2">(주) A 가맹점</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <th colspan="2" scope="row">대표자</th>
                            <th scope="col">승인번호</th>
                        </tr>
                        <tr>
                            <td colspan="2">가대표</td>
                            <td>N00000001</td>
                        </tr>
                        <tr>
                            <th colspan="2" scope="row">사업자등록번호</th>
                            <th scope="col">전화번호</th>
                        </tr>
                        <tr>
                            <td colspan="2">222-22-22222</td>
                            <td>02-111-2222</td>
                        </tr>
                        <tr>
                            <th colspan="3" scope="row">가맹점주소</th>
                        </tr>
                        <tr>
                            <td colspan="3">서울특별시 중구 태평로1가 31</td>
                        </tr>
                        <tr>
                            <th colspan="2" scope="row">&nbsp;</th>
                            <th>서명</th>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        </tbody>
                        </table>    
                    </div>
                </div>
                <!-- //카드매출전표 end// -->
            </div>
            <!-- //content end// -->
        </div>



<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 
